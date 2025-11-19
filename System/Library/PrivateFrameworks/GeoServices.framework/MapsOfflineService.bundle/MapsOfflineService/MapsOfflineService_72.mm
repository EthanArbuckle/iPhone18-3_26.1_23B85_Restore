BOOL sub_4AC2AC(__n128 *a1, __n128 *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v11 = a2 - 1;
        v12 = sub_120D158(&a1[1].n128_f64[1], a1->n128_f64[1]);
        v13 = &a2[-1].n128_f64[1];
        v14 = sub_120D158(v13, a1[1].n128_f64[1]);
        if (v12)
        {
          if (v14)
          {
            v15 = *a1;
            *a1 = *v11;
            *v11 = v15;
          }

          else
          {
            v24 = *a1;
            *a1 = a1[1];
            a1[1] = v24;
            if (sub_120D158(v13, a1[1].n128_f64[1]))
            {
              v25 = a1[1];
              a1[1] = *v11;
              *v11 = v25;
            }
          }

          return 1;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *v11;
        *v11 = v20;
        v9 = a1->n128_f64[1];
        v10 = &a1[1].n128_f64[1];
        break;
      case 4:
        sub_4ABF0C(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_4ABF0C(a1, a1 + 1, a1 + 2, a1 + 3);
        if (!sub_120D158(&a2[-1].n128_f64[1], a1[3].n128_f64[1]))
        {
          return 1;
        }

        v6 = a1[3];
        a1[3] = a2[-1];
        a2[-1] = v6;
        if (!sub_120D158(&a1[3].n128_f64[1], a1[2].n128_f64[1]))
        {
          return 1;
        }

        v7 = a1[2];
        a1[2] = a1[3];
        a1[3] = v7;
        if (!sub_120D158(&a1[2].n128_f64[1], a1[1].n128_f64[1]))
        {
          return 1;
        }

        v8 = a1[1];
        a1[1] = a1[2];
        a1[2] = v8;
        v9 = a1->n128_f64[1];
        v10 = &a1[1].n128_f64[1];
        break;
      default:
        goto LABEL_16;
    }

    if (sub_120D158(v10, v9))
    {
      v21 = *a1;
      *a1 = a1[1];
      a1[1] = v21;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (sub_120D158(&a2[-1].n128_f64[1], a1->n128_f64[1]))
    {
      v5 = *a1;
      *a1 = a2[-1];
      a2[-1] = v5;
    }

    return 1;
  }

LABEL_16:
  v16 = a1 + 2;
  v17 = sub_120D158(&a1[1].n128_f64[1], a1->n128_f64[1]);
  v18 = sub_120D158(&a1[2].n128_f64[1], a1[1].n128_f64[1]);
  if (v17)
  {
    if (v18)
    {
      v19 = *a1;
      *a1 = *v16;
    }

    else
    {
      v26 = *a1;
      *a1 = a1[1];
      a1[1] = v26;
      if (!sub_120D158(&a1[2].n128_f64[1], a1[1].n128_f64[1]))
      {
        goto LABEL_32;
      }

      v19 = a1[1];
      a1[1] = *v16;
    }

    *v16 = v19;
  }

  else if (v18)
  {
    v22 = a1[1];
    a1[1] = *v16;
    *v16 = v22;
    if (sub_120D158(&a1[1].n128_f64[1], a1->n128_f64[1]))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }
  }

LABEL_32:
  v27 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (!sub_120D158(&v27->n128_f64[1], v16->n128_f64[1]))
  {
LABEL_41:
    v16 = v27;
    v28 += 16;
    if (++v27 == a2)
    {
      return 1;
    }
  }

  v33 = *v27;
  v30 = v28;
  do
  {
    v31 = (a1->n128_f64 + v30);
    *(a1 + v30 + 48) = *(a1 + v30 + 32);
    if (v30 == -32)
    {
      *a1 = v33;
      if (++v29 != 8)
      {
        goto LABEL_41;
      }

      return &v27[1] == a2;
    }

    v30 -= 16;
  }

  while (sub_120D158(&v33.n128_f64[1], v31[3]));
  *(a1 + v30 + 48) = v33;
  if (++v29 != 8)
  {
    goto LABEL_41;
  }

  return &v27[1] == a2;
}

double *sub_4AC5C8(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = a1 + 16 * v9;
      do
      {
        sub_4AC7F8(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (sub_120D158(v12 + 1, *(a1 + 8)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_4AC7F8(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v16 = 0;
        v30 = *a1;
        v17 = (v8 - 2) >> 1;
        v18 = a1;
        do
        {
          while (1)
          {
            v20 = &v18[v16];
            v19 = v20 + 2;
            v21 = (2 * v16) | 1;
            v22 = 2 * v16 + 2;
            if (v22 < v8)
            {
              break;
            }

            v16 = (2 * v16) | 1;
            *v18 = *v19;
            v18 = v20 + 2;
            if (v21 > v17)
            {
              goto LABEL_22;
            }
          }

          if (sub_120D158(v20 + 3, v20[5]))
          {
            v19 = v20 + 4;
            v16 = v22;
          }

          else
          {
            v16 = v21;
          }

          *v18 = *v19;
          v18 = v19;
        }

        while (v16 <= v17);
LABEL_22:
        v6 -= 2;
        if (v19 == v6)
        {
          *v19 = v30;
        }

        else
        {
          *v19 = *v6;
          *v6 = v30;
          v23 = (v19 - a1 + 16) >> 4;
          v15 = v23 < 2;
          v24 = v23 - 2;
          if (!v15)
          {
            v25 = v24 >> 1;
            v26 = a1 + 16 * (v24 >> 1);
            if (sub_120D158((v26 + 8), v19[1]))
            {
              v27 = *v19;
              v28 = v19[1];
              do
              {
                v29 = v19;
                v19 = v26;
                *v29 = *v26;
                if (!v25)
                {
                  break;
                }

                v25 = (v25 - 1) >> 1;
                v26 = a1 + 16 * v25;
              }

              while (sub_120D158((v26 + 8), v28));
              *v19 = v27;
              v19[1] = v28;
            }
          }
        }

        v15 = v8-- <= 2;
      }

      while (!v15);
    }

    return v12;
  }

  return a3;
}

BOOL sub_4AC7F8(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = result + 16 * (v9 + 1);
      v12 = v9 + 2;
      if (v9 + 2 < a3)
      {
        v13 = sub_120D158((v11 + 8), *(v11 + 24));
        v14 = 16;
        if (!v13)
        {
          v14 = 0;
        }

        v11 += v14;
        if (v13)
        {
          v10 = v12;
        }
      }

      result = sub_120D158((v11 + 8), *(v5 + 8));
      if (!result)
      {
        v15 = *v5;
        v16 = *(v5 + 8);
        do
        {
          v17 = v5;
          v5 = v11;
          *v17 = *v11;
          if (v7 < v10)
          {
            break;
          }

          v18 = (2 * v10) | 1;
          v11 = v6 + 16 * v18;
          v19 = 2 * v10 + 2;
          if (v19 < a3)
          {
            v20 = sub_120D158((v11 + 8), *(v11 + 24));
            if (v20)
            {
              v21 = 16;
            }

            else
            {
              v21 = 0;
            }

            v11 += v21;
            if (v20)
            {
              v18 = v19;
            }
          }

          result = sub_120D158((v11 + 8), v16);
          v10 = v18;
        }

        while (!result);
        *v5 = v15;
        *(v5 + 8) = v16;
      }
    }
  }

  return result;
}

void sub_4AC92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, double a6)
{
  v31 = a2;
  *(a1 + 136) = a2;
  *(a1 + 139) = *(&v31 + 3);
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 152);
  *(a1 + 144) = v10;
  *(a1 + 152) = v9;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = a6;
    v13 = a3;
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    a3 = v13;
    a6 = v12;
  }

  *(a1 + 160) = *(a3 + 4);
  *(a1 + 168) = *(a3 + 3);
  sub_120D148((a1 + 128), a6);
  sub_4ACBE0((a1 + 32), v31, a4, *(a1 + 320));
  sub_30D080((a1 + 272), &v31);
  if ((v14 & 1) == 0)
  {
    ++*(a1 + 312);
  }

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_1209E80(&v28);
  v15 = 0uLL;
  v30 = 0;
  v29 = 0u;
  *(a1 + 184) = v28;
  *(a1 + 192) = DWORD2(v28);
  v16 = *(a1 + 200);
  if (v16)
  {
    *(a1 + 208) = v16;
    operator delete(v16);
    v15 = v29;
    v17 = v30;
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 200) = v15;
  *(a1 + 216) = v17;
  (*(*a5 + 16))(a5, *(a1 + 136), a1 + 184);
  v18 = *(a1 + 224);
  v19 = (*(a1 + 208) - *(a1 + 200)) >> 3;
  v20 = *(a1 + 232);
  v21 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v18) >> 3);
  v22 = v19 - v21;
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      for (i = v18 + 40 * v19; v20 != i; v20 -= 40)
      {
        v24 = *(v20 - 32);
        if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24, v22);
          std::__shared_weak_count::__release_weak(v24);
        }
      }

      *(a1 + 232) = i;
    }
  }

  else
  {
    sub_4ACF94((a1 + 224), v22);
  }

  v25 = *(a1 + 200);
  if (*(a1 + 208) != v25)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      (*(*a5 + 8))(a5, *(v25 + 8 * v27++), *(a1 + 224) + v26);
      v25 = *(a1 + 200);
      v26 += 40;
    }

    while (v27 < (*(a1 + 208) - v25) >> 3);
  }
}

uint64_t sub_4ACBE0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v7 = (a1 + 3);
  sub_120CEBC(&v16, 0, a4);
  v16 = off_266AE28;
  v11 = *a3;
  v10 = a3[1];
  v18 = a2;
  *&v19 = v11;
  *(&v19 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a3 + 4);
  v21 = 0;
  v12 = a1[4];
  if (v12 >= a1[5])
  {
    v13 = sub_4ACD9C(v7, &v16);
    v14 = *(&v19 + 1);
    a1[4] = v13;
    v16 = off_266AE28;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    *v12 = off_266AE50;
    *(v12 + 8) = v17;
    *v12 = off_266AE28;
    *(v12 + 24) = v18;
    *(v12 + 32) = v19;
    v19 = 0uLL;
    *(v12 + 48) = v20;
    *(v12 + 56) = v21;
    a1[4] = v12 + 64;
  }

  LODWORD(v16) = 0;
  *&v17 = (v9 - v8) >> 6;
  sub_40E3F4((a1 + 9), &v16);
  return a1[4] - 64;
}

void (***sub_4ACD9C(void (****a1)(void), uint64_t a2))(void)
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
  v8 = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v2 << 6) - (v10 - *a1);
  *(v7 + 8) = *(a2 + 8);
  *v7 = off_266AE28;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 56) = *(a2 + 56);
  v12 = (v7 + 64);
  if (v10 != v9)
  {
    v13 = 0;
    do
    {
      v14 = v11 + v13 * 8;
      *v14 = off_266AE50;
      v15 = &v9[v13];
      *(v14 + 8) = *&v9[v13 + 1];
      *v14 = off_266AE28;
      *(v14 + 24) = v9[v13 + 3];
      *(v14 + 32) = *&v9[v13 + 4];
      v15[4] = 0;
      v15[5] = 0;
      *(v14 + 48) = v9[v13 + 6];
      *(v14 + 56) = v9[v13 + 7];
      v13 += 8;
    }

    while (&v9[v13] != v10);
    v16 = v9;
    v17 = v9;
    do
    {
      v18 = *v17;
      v17 += 8;
      (*v18)();
      v16 += 8;
    }

    while (v17 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v12;
}

void sub_4ACF94(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 40 * a2;
      v10 = v3 + 24;
      v11 = 40 * a2;
      do
      {
        sub_120ADE8(v10 - 24);
        sub_B6D0(v10, 0);
        sub_B6D0((v10 + 4), 9);
        *(v10 + 8) = -1;
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }

    else
    {
      v9 = a1[1];
    }

    a1[1] = v9;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x666666666666666)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v21 = 40 * v5;
    v12 = 40 * a2;
    v13 = 40 * v5 + 40 * a2;
    v14 = 40 * v5 + 24;
    do
    {
      sub_120ADE8(v14 - 24);
      sub_B6D0(v14, 0);
      sub_B6D0((v14 + 4), 9);
      *(v14 + 8) = -1;
      v14 += 40;
      v12 -= 40;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = v21 + *a1 - v16;
    if (*a1 != v16)
    {
      v18 = *a1;
      v19 = v21 + *a1 - v16;
      do
      {
        *v19 = *v18;
        *v18 = 0;
        v18[1] = 0;
        *(v19 + 16) = *(v18 + 4);
        *(v19 + 24) = *(v18 + 3);
        v18 += 5;
        v19 += 40;
      }

      while (v18 != v16);
      do
      {
        v20 = v15[1];
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v15 += 5;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = v13;
    a1[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_4AD21C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4AD26C(va);
  _Unwind_Resume(a1);
}

void sub_4AD234(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

void sub_4AD24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  sub_1F1A8(v12);
  a12 = v12;
  sub_4AD26C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_4AD26C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v4 = *(i - 32);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4AD314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, double a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_4AD4B0(a1 + 32, (a2 + 32));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 140) = 0;
  *(a1 + 142) = 1;
  sub_120ADE8(a1 + 144);
  sub_B6D0((a1 + 168), 0);
  sub_B6D0((a1 + 172), 9);
  *(a1 + 176) = -1;
  sub_1209E80((a1 + 184));
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 216) = 0u;
  sub_4AD65C(a1 + 272, a2 + 272);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  sub_4AC92C(a1, a3, a4, a5, a6, a7);
  return a1;
}

void sub_4AD428(_Unwind_Exception *a1)
{
  sub_11BD8((v2 + 9));
  v4 = v1[31];
  if (v4)
  {
    v1[32] = v4;
    operator delete(v4);
  }

  sub_4AA180(v2 + 3);
  v5 = *v2;
  if (*v2)
  {
    v1[26] = v5;
    operator delete(v5);
  }

  sub_1F1A8((v1 + 18));
  sub_4A45B8(v1 + 4);
  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4AD4B0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  sub_4AD7A0((a1 + 24), a2 + 3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v5 = *(a2 + 6);
  v6 = *(a2 + 7);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4AD5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 56) = v10;
  sub_4ADB08(&a9);
  sub_4A7F58((v9 + 24));
  _Unwind_Resume(a1);
}

void sub_4AD614(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 80) = v5;
    operator delete(v5);
  }

  sub_4A7EBC(v2);
  sub_4A7F58((v1 + 24));
  _Unwind_Resume(a1);
}

void sub_4AD640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_4ADB08(&a9);
  sub_4A7F58((v9 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_4AD65C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_30D080(a1, i + 2);
  }

  return a1;
}

void *sub_4AD7A0(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void ***sub_4AD8B4(void ***result)
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
        v6 = v4 - 8;
        v7 = v4 - 8;
        v8 = v4 - 8;
        do
        {
          v9 = *v8;
          v8 -= 8;
          (*v9)(v7);
          v6 -= 8;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_4AD964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v5 = 0;
    do
    {
      v6 = a4 + v5;
      *v6 = off_266AE50;
      *(v6 + 8) = *(a2 + v5 + 8);
      *(a4 + v5 + 24) = 0;
      *v6 = off_2677BF0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v8 = *(a2 + v5 + 24);
      v7 = *(a2 + v5 + 32);
      if (v7 != v8)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 48;
    }

    while (a2 + v5 != a3);
    return a4 + v5;
  }

  return v4;
}

void sub_4ADA9C(_Unwind_Exception *exception_object)
{
  v4 = v1 + v2;
  v5 = *(v4 + 24);
  if (v5)
  {
    *(v4 + 32) = v5;
    operator delete(v5);
  }

  if (v2)
  {
    v6 = (v4 - 48);
    v7 = -v2;
    v8 = v6;
    v9 = v6;
    do
    {
      v10 = *v9;
      v9 -= 6;
      (*v10)(v8);
      v6 -= 6;
      v8 = v9;
      v7 += 48;
    }

    while (v7);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_4ADB08(void ***result)
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
        v6 = v4 - 6;
        v7 = v4 - 6;
        v8 = v4 - 6;
        do
        {
          v9 = *v8;
          v8 -= 6;
          (*v9)(v7);
          v6 -= 6;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

BOOL sub_4ADBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 200);
  v10 = (*(a1 + 208) - v9) >> 3;
  if (v10 == 1)
  {
    return 1;
  }

  v48 = v8;
  v49 = v7;
  v50 = v5;
  v51 = v6;
  v15 = BYTE6(a2);
  if (v10 != 2 || (v16 = v9 + 8 * (1 - a5), v18 = (*(*a4 + 24))(a4, *(a1 + 136)), __PAIR64__(*(v16 + 4), *v16) != __PAIR64__(WORD2(v18), v18)) || *(v16 + 6) != BYTE6(v18))
  {
    sub_B6D0(&v47, 9);
    if (sub_1209DC0((a1 + 172), v47))
    {
      sub_B6D0(&v47, 9);
      if (sub_1209DC0((a3 + 28), v47))
      {
        v22 = sub_3F80((a1 + 172));
        v23 = v22 - sub_3F80((a3 + 28));
        if (v23 < 0)
        {
          v23 = -v23;
        }

        if (v23 > 1)
        {
          return 0;
        }
      }
    }

    sub_B6D0(&v47, 0);
    if (sub_1209DC0((a1 + 168), v47))
    {
      sub_B6D0(&v47, 0);
      if (sub_1209DC0((a3 + 24), v47) && sub_1209DC0((a1 + 168), *(a3 + 24)))
      {
        return 0;
      }
    }

    sub_B6D0(&v47, 1);
    if (sub_1209DB0((a1 + 168), v47))
    {
      sub_B6D0(&v47, 1);
      if (sub_1209DB0((a3 + 24), v47))
      {
        v24 = *(a1 + 200);
        if (*(a1 + 208) == v24)
        {
          return 1;
        }

        v25 = 0;
        v26 = 0;
        v27 = 24;
        do
        {
          if (__PAIR64__(*(v24 + v25 + 4), *(v24 + v25)) != __PAIR64__(WORD2(a2), a2) || *(v24 + v25 + 6) != v15)
          {
            v29 = (*(*a4 + 24))(a4, *(a1 + 136));
            if (__PAIR64__(*(v24 + v25 + 4), *(v24 + v25)) != __PAIR64__(WORD2(v29), v29) || *(v24 + v25 + 6) != BYTE6(v29))
            {
              v28 = *(a1 + 224);
              sub_B6D0(&v47, 10);
              if (sub_1209DC0((v28 + v27), v47))
              {
                break;
              }
            }
          }

          ++v26;
          v24 = *(a1 + 200);
          v25 += 8;
          v27 += 40;
        }

        while (v26 < (*(a1 + 208) - v24) >> 3);
      }
    }

    sub_B6D0(&v47, 4);
    if (sub_1209DB0((a1 + 168), v47))
    {
      sub_B6D0(&v47, 4);
      if (sub_1209DB0((a3 + 24), v47))
      {
        v31 = *(a1 + 200);
        v30 = *(a1 + 208);
        if (v30 != v31)
        {
          v32 = 0;
          v33 = 0;
          for (i = 24; ; i += 40)
          {
            if (__PAIR64__(*(v31 + v32 + 4), *(v31 + v32)) != __PAIR64__(WORD2(a2), a2) || *(v31 + v32 + 6) != v15)
            {
              v35 = *(a1 + 224);
              sub_B6D0(&v47, 4);
              if (sub_1209DB0((v35 + i), v47))
              {
                goto LABEL_41;
              }

              v31 = *(a1 + 200);
              v30 = *(a1 + 208);
            }

            ++v33;
            v32 += 8;
            if (v33 >= (v30 - v31) >> 3)
            {
              return 1;
            }
          }
        }

        return 1;
      }
    }

LABEL_41:
    v36 = sub_120B0B4((a1 + 144));
    LOWORD(v47) = sub_120B084(a3);
    if (sub_1209A0C(&v47, v36, v37) > 20.0)
    {
      return 0;
    }

    v39 = *(a1 + 200);
    v38 = *(a1 + 208);
    if (v38 != v39)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 360.0;
      do
      {
        if (__PAIR64__(*(v39 + v41 + 4), *(v39 + v41)) != __PAIR64__(WORD2(a2), a2) || *(v39 + v41 + 6) != v15)
        {
          v46 = sub_120B084(*(a1 + 224) + v40);
          v45 = sub_1209A0C(&v46, v36, v44);
          if (v45 < v43)
          {
            v43 = v45;
          }

          v39 = *(a1 + 200);
          v38 = *(a1 + 208);
        }

        ++v42;
        v41 += 8;
        v40 += 40;
      }

      while (v42 < (v38 - v39) >> 3);
      if (v43 < 25.0)
      {
        return 0;
      }
    }

    return 1;
  }

  v19 = (*(*a4 + 24))(a4, *(a1 + 136));
  if ((a2 & 0xFFFFFFFFFFFFLL) != (v19 & 0xFFFFFFFFFFFFLL))
  {
    return 1;
  }

  if (a5)
  {
    v20 = v15 == BYTE6(v19);
  }

  else
  {
    v20 = 0;
  }

  return !v20;
}

void sub_4AE05C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_4AE094(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_4AE0F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000002298171)
  {
    if (((v2 & 0x8000000002298171 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000002298171))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000002298171 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_4AE168(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_4AE1C0(uint64_t a1, _DWORD *a2)
{
  if (sub_570C5C(a2))
  {
    v4 = *(a1 + 16) + 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (*(a1 + 104) == *(a1 + 112))
  {
    return 1;
  }

  v13 = 0;
  v12 = 0;
  v5 = sub_B718(a2);
  sub_120AE9C((a1 + 144), v5, &v13, &v12);
  v6 = v12;
  v7 = sub_120A42C(a1 + 144);
  v8 = sub_B718(a2);
  v9 = sub_120A090((a1 + 184), v8);
  if (!sub_570C5C(a2) && v9 < v4)
  {
    return 1;
  }

  if (v6 >= v7 - 1 || v13 >= v4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4AE2B4(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  if (a1 != a2)
  {
    sub_4AE340((a1 + 24), *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 6);
    sub_4AE770((a1 + 48), *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
    sub_4AEA34((a1 + 72), *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 4);
  }

  return a1;
}

void sub_4AE340(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 6)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = v10 - 64;
        v13 = v10 - 64;
        v14 = v10 - 64;
        do
        {
          v15 = *v14;
          v14 -= 64;
          (*v15)(v13);
          v12 -= 64;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 58))
    {
      v17 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v17 = a4;
      }

      v18 = v7 >= 0x7FFFFFFFFFFFFFC0;
      v19 = 0x3FFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v17;
      }

      if (!(v19 >> 58))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v20 = a1[1];
  v21 = v20 - v8;
  if (a4 <= (v20 - v8) >> 6)
  {
    if (a2 != a3)
    {
      do
      {
        *(v8 + 8) = *(v5 + 8);
        v29 = *(v5 + 24);
        *(v8 + 27) = *(v5 + 27);
        *(v8 + 6) = v29;
        v31 = *(v5 + 32);
        v30 = *(v5 + 40);
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = *(v8 + 5);
        *(v8 + 4) = v31;
        *(v8 + 5) = v30;
        if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        *(v8 + 12) = *(v5 + 48);
        *(v8 + 14) = *(v5 + 56);
        v5 += 64;
        v8 += 64;
      }

      while (v5 != a3);
      v20 = a1[1];
    }

    if (v20 != v8)
    {
      v38 = v20 - 64;
      v39 = v20 - 64;
      v40 = v20 - 64;
      do
      {
        v41 = *v40;
        v40 -= 64;
        (*v41)(v39);
        v38 -= 64;
        v16 = v39 == v8;
        v39 = v40;
      }

      while (!v16);
    }

    a1[1] = v8;
  }

  else
  {
    v22 = a2 + v21;
    if (v20 != v8)
    {
      v23 = v8 + 32;
      v24 = (a2 + 32);
      do
      {
        *(v23 - 24) = *(v24 - 3);
        v25 = *(v24 - 2);
        *(v23 - 5) = *(v24 - 5);
        *(v23 - 2) = v25;
        v27 = *v24;
        v26 = v24[1];
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v28 = *(v23 + 1);
        *v23 = v27;
        *(v23 + 1) = v26;
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        *(v23 + 4) = *(v24 + 4);
        *(v23 + 6) = *(v24 + 6);
        v23 += 64;
        v24 += 8;
        v21 -= 64;
      }

      while (v21);
      v20 = a1[1];
    }

    v33 = v20;
    if (v22 != a3)
    {
      v34 = 0;
      do
      {
        v35 = &v20[v34];
        *v35 = off_266AE50;
        v36 = v22 + v34;
        *(v35 + 8) = *(v22 + v34 + 8);
        *v35 = off_266AE28;
        *(v35 + 3) = *(v22 + v34 + 24);
        v37 = *(v22 + v34 + 40);
        *(v35 + 4) = *(v22 + v34 + 32);
        *(v35 + 5) = v37;
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
        }

        *(v35 + 12) = *(v36 + 48);
        *(v35 + 14) = *(v36 + 56);
        v34 += 64;
      }

      while (v22 + v34 != a3);
      v33 = &v20[v34];
    }

    a1[1] = v33;
  }
}

void **sub_4AE770(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        v12 = v10 - 48;
        v13 = v10 - 48;
        v14 = v10 - 48;
        do
        {
          v15 = *v14;
          v14 -= 48;
          (*v15)(v13);
          v12 -= 48;
          v16 = v13 == v8;
          v13 = v14;
        }

        while (!v16);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= a4)
      {
        v18 = a4;
      }

      if (v17 >= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = 0x555555555555555;
      }

      else
      {
        v19 = v18;
      }

      if (v19 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v20 = result[1];
  v21 = v20 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v20 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *(v8 + 8) = *(v5 + 8);
        if (v5 != v8)
        {
          result = sub_35354C(v8 + 3, *(v5 + 24), *(v5 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 32) - *(v5 + 24)) >> 2));
        }

        v5 += 48;
        v8 += 48;
      }

      while (v5 != a3);
      v20 = v6[1];
    }

    if (v20 != v8)
    {
      v24 = v20 - 48;
      v25 = (v20 - 48);
      v26 = (v20 - 48);
      do
      {
        v27 = *v26;
        v26 -= 48;
        result = (*v27)(v25);
        v24 -= 48;
        v16 = v25 == v8;
        v25 = v26;
      }

      while (!v16);
    }

    v6[1] = v8;
  }

  else
  {
    if (v20 != v8)
    {
      v22 = v20 - v8;
      v23 = a2;
      do
      {
        *(v8 + 8) = *(v23 + 8);
        if (v23 != v8)
        {
          sub_35354C(v8 + 3, *(v23 + 24), *(v23 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 32) - *(v23 + 24)) >> 2));
        }

        v23 += 48;
        v8 += 48;
        v22 -= 48;
      }

      while (v22);
      v20 = v6[1];
    }

    result = sub_4AD964(v6, v5 + v21, a3, v20);
    v6[1] = result;
  }

  return result;
}

char *sub_4AEA34(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_4AEB90(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_4AD4B0(a1 + 32, (a2 + 32));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  v5 = *(a2 + 184);
  v6 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v6;
  *(a1 + 184) = v5;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v8 = *(a2 + 200);
  v7 = *(a2 + 208);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v9 = *(a2 + 224);
  v10 = *(a2 + 232);
  if (v10 != v9)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v9) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v12 = *(a2 + 248);
  v11 = *(a2 + 256);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_4AD65C(a1 + 272, a2 + 272);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  return a1;
}

void sub_4AEDCC(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    v1[32] = v7;
    operator delete(v7);
  }

  sub_4AA180(v3);
  v8 = *v4;
  if (*v4)
  {
    v1[26] = v8;
    operator delete(v8);
  }

  sub_1F1A8(v2);
  sub_4A45B8(v1 + 4);
  v9 = v1[1];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void ***sub_4AEE40(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 4);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 40;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_4AEF04()
{
  byte_27900AF = 3;
  LODWORD(qword_2790098) = 5136193;
  byte_27900C7 = 3;
  LODWORD(qword_27900B0) = 5136194;
  byte_27900DF = 3;
  LODWORD(qword_27900C8) = 5136195;
  byte_27900F7 = 15;
  strcpy(&qword_27900E0, "vehicle_mass_kg");
  byte_279010F = 21;
  strcpy(&xmmword_27900F8, "vehicle_cargo_mass_kg");
  byte_2790127 = 19;
  strcpy(&qword_2790110, "vehicle_aux_power_w");
  byte_279013F = 15;
  strcpy(&qword_2790128, "dcdc_efficiency");
  strcpy(&qword_2790140, "drive_train_efficiency");
  HIBYTE(word_2790156) = 22;
  operator new();
}

void sub_4AF0E0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_2790156) < 0)
  {
    sub_21E210C();
  }

  sub_21E2118();
  _Unwind_Resume(a1);
}

void *sub_4AF100(void *result, uint64_t a2)
{
  *result = off_266AEC8;
  result[1] = a2;
  return result;
}

void sub_4AF120(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v34) = sub_5AAC4(a2);
  v8 = sub_120B2B8(&v34, v7);
  v36 = sub_3F80(a2);
  v10 = sub_120B3F8(&v36, v9);
  v11 = -1;
  if (v10 <= 180.0 && fabs(v8) <= 85.0511288 && v10 >= -180.0)
  {
    v12 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
    LODWORD(v13) = ((log((v12 + 1.0) / (1.0 - v12)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v13 >= 0xFFFFFFFE)
    {
      v13 = 4294967294;
    }

    else
    {
      v13 = v13;
    }

    v11 = ((v10 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
  }

  v37 = v11;
  v38 = 0x7FFFFFFF;
  sub_2B3C60(*(a1 + 8), &v37, 10, &v34);
  v14 = v34;
  v15 = v35;
  if (v34 != v35)
  {
    v16 = *(a4 + 8);
    do
    {
      v17 = v14[1] & 0xFFFFFFFFFFFFLL;
      v18 = *(a4 + 16);
      if (v16 >= v18)
      {
        v20 = *a4;
        v21 = v16 - *a4;
        v22 = v21 >> 3;
        v23 = (v21 >> 3) + 1;
        if (v23 >> 61)
        {
          sub_1794();
        }

        v24 = v18 - v20;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v22) = v17;
        v19 = (8 * v22 + 8);
        memcpy(0, v20, v21);
        *a4 = 0;
        *(a4 + 8) = v19;
        *(a4 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v16 = v17;
        v19 = v16 + 1;
      }

      *(a4 + 8) = v19;
      v26 = v14[1] & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      v27 = *(a4 + 16);
      if (v19 < v27)
      {
        *v19 = v26;
        v16 = v19 + 1;
      }

      else
      {
        v28 = *a4;
        v29 = v19 - *a4;
        v30 = v29 >> 3;
        v31 = (v29 >> 3) + 1;
        if (v31 >> 61)
        {
          sub_1794();
        }

        v32 = v27 - v28;
        if (v32 >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (!(v33 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v30) = v26;
        v16 = (8 * v30 + 8);
        memcpy(0, v28, v29);
        *a4 = 0;
        *(a4 + 8) = v16;
        *(a4 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      *(a4 + 8) = v16;
      v14 += 6;
    }

    while (v14 != v15);
    v14 = v34;
  }

  if (v14)
  {
    v35 = v14;
    operator delete(v14);
  }
}

void sub_4AF484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4AF4AC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_2B51D8(*(a1 + 8), a2 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  if (*v7 >= 0x1Bu && (v8 = v7[13]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  sub_B6D0(v19, v9);
  a3[7] = v19[0];
  v10 = sub_2B51D8(*(a1 + 8), a2 & 0xFFFFFFFFFFFFLL);
  v11 = (v10 - *v10);
  if (*v11 >= 0x13u && (v12 = v11[9]) != 0)
  {
    v13 = *(v10 + v12);
    if ((v13 - 51) < 3)
    {
      v14 = 10;
      goto LABEL_11;
    }

    v14 = 0;
    if (v13 == 54 || v13 == 255)
    {
LABEL_11:
      sub_B6D0(v19, v14);
      a3[6] = v19[0];
      v15 = sub_2B51D8(*(a1 + 8), a2 & 0xFFFFFFFFFFFFLL);
      v16 = (v15 - *v15);
      if (*v16 < 9u)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        v17 = v16[4];
        if (v17)
        {
          LODWORD(v17) = *(v15 + v17);
        }
      }

      if (v17 % 0x64 <= 0x31)
      {
        v18 = v17 / 0x64;
      }

      else
      {
        v18 = v17 / 0x64 + 1;
      }

      a3[9] = v18;
      operator new();
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v14 = v13;
  goto LABEL_11;
}

void sub_4AF8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1F1A8(v22 - 64);
  _Unwind_Resume(a1);
}

void sub_4AF94C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_2B7A20(*(a1 + 8), a2 & 0xFFFFFFFFFFFFFFLL, v16);
  v6 = sub_2B4EDC(*(a1 + 8), a2 & 0xFFFFFFFFFFFFLL, (a2 & 0xFF000000000000) == 0);
  v7 = sub_31AA0C(v16);
  v8 = HIDWORD(v7);
  v9 = sub_120B378(v7 * 360.0 / 4294967300.0 + -180.0);
  v10 = exp(v8 * -6.28318531 / 4294967300.0 + 3.14159265);
  v11 = atan((v10 + -1.0 / v10) * 0.5);
  v12 = sub_120B220(v11 * 57.2957795);
  sub_B6C0(a3, v9, v12);
  v13 = *(a1 + 8);
  sub_2B365C(v13, v6, 0, (v13 + 7800));
  v14 = *(v13 + 7800);
  v15 = *(v13 + 7808);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_4AFBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4AFC4C(void *result, uint64_t a2)
{
  *result = off_266AF08;
  result[1] = a2;
  return result;
}

void sub_4AFC6C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v34) = sub_5AAC4(a2);
  v8 = sub_120B2B8(&v34, v7);
  v36 = sub_3F80(a2);
  v10 = sub_120B3F8(&v36, v9);
  v11 = -1;
  if (v10 <= 180.0 && fabs(v8) <= 85.0511288 && v10 >= -180.0)
  {
    v12 = sin(fmin(fmax(v8, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
    LODWORD(v13) = ((log((v12 + 1.0) / (1.0 - v12)) / -12.5663706 + 0.5) * 4294967300.0);
    if (v13 >= 0xFFFFFFFE)
    {
      v13 = 4294967294;
    }

    else
    {
      v13 = v13;
    }

    v11 = ((v10 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
  }

  v37 = v11;
  v38 = 0x7FFFFFFF;
  sub_2B3C60(*(a1 + 8), &v37, 10, &v34);
  v14 = v34;
  v15 = v35;
  if (v34 != v35)
  {
    v16 = *(a4 + 8);
    do
    {
      v17 = v14[1] & 0x1FFFFFFFFFFFFFFFLL | 0xA000000000000000;
      v18 = *(a4 + 16);
      if (v16 >= v18)
      {
        v20 = *a4;
        v21 = v16 - *a4;
        v22 = v21 >> 3;
        v23 = (v21 >> 3) + 1;
        if (v23 >> 61)
        {
          sub_1794();
        }

        v24 = v18 - v20;
        if (v24 >> 2 > v23)
        {
          v23 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          if (!(v25 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v22) = v17;
        v19 = (8 * v22 + 8);
        memcpy(0, v20, v21);
        *a4 = 0;
        *(a4 + 8) = v19;
        *(a4 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v16 = v17;
        v19 = v16 + 1;
      }

      *(a4 + 8) = v19;
      v26 = v14[1] & 0x1FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v27 = *(a4 + 16);
      if (v19 < v27)
      {
        *v19 = v26;
        v16 = v19 + 1;
      }

      else
      {
        v28 = *a4;
        v29 = v19 - *a4;
        v30 = v29 >> 3;
        v31 = (v29 >> 3) + 1;
        if (v31 >> 61)
        {
          sub_1794();
        }

        v32 = v27 - v28;
        if (v32 >> 2 > v31)
        {
          v31 = v32 >> 2;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF8)
        {
          v33 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (!(v33 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v30) = v26;
        v16 = (8 * v30 + 8);
        memcpy(0, v28, v29);
        *a4 = 0;
        *(a4 + 8) = v16;
        *(a4 + 16) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      *(a4 + 8) = v16;
      v14 += 6;
    }

    while (v14 != v15);
    v14 = v34;
  }

  if (v14)
  {
    v35 = v14;
    operator delete(v14);
  }
}

void sub_4AFFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4AFFFC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_2B51D8(*(a1 + 8), a2 & 0x1FFFFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  if (*v7 >= 0x1Bu && (v8 = v7[13]) != 0)
  {
    v9 = *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  sub_B6D0(v19, v9);
  a3[7] = v19[0];
  v10 = sub_2B51D8(*(a1 + 8), a2 & 0x1FFFFFFFFFFFFFFFLL);
  v11 = (v10 - *v10);
  if (*v11 >= 0x13u && (v12 = v11[9]) != 0)
  {
    v13 = *(v10 + v12);
    if ((v13 - 51) < 3)
    {
      v14 = 10;
      goto LABEL_11;
    }

    v14 = 0;
    if (v13 == 54 || v13 == 255)
    {
LABEL_11:
      sub_B6D0(v19, v14);
      a3[6] = v19[0];
      v15 = sub_2B51D8(*(a1 + 8), a2 & 0x1FFFFFFFFFFFFFFFLL);
      v16 = (v15 - *v15);
      if (*v16 < 9u)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        v17 = v16[4];
        if (v17)
        {
          LODWORD(v17) = *(v15 + v17);
        }
      }

      if (v17 % 0x64 <= 0x31)
      {
        v18 = v17 / 0x64;
      }

      else
      {
        v18 = v17 / 0x64 + 1;
      }

      a3[9] = v18;
      operator new();
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v14 = v13;
  goto LABEL_11;
}

void sub_4B0440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1F1A8(v22 - 64);
  _Unwind_Resume(a1);
}

void sub_4B04A8(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = a2 >> 13;
  sub_2B7A20(*(a1 + 8), ((a2 >> 13) & 0x1000000000000 | a2 & 0xFFFFFFFFFFFFLL) ^ 0x1000000000000, v17);
  v7 = sub_2B4EDC(*(a1 + 8), a2 & 0xFFFFFFFFFFFFLL, HIWORD(v6) & 1);
  v8 = sub_31AA0C(v17);
  v9 = HIDWORD(v8);
  v10 = sub_120B378(v8 * 360.0 / 4294967300.0 + -180.0);
  v11 = exp(v9 * -6.28318531 / 4294967300.0 + 3.14159265);
  v12 = atan((v11 + -1.0 / v11) * 0.5);
  v13 = sub_120B220(v12 * 57.2957795);
  sub_B6C0(a3, v10, v13);
  v14 = *(a1 + 8);
  sub_2B365C(v14, v7, 0, (v14 + 7800));
  v15 = *(v14 + 7800);
  v16 = *(v14 + 7808);
  if (v16 != v15)
  {
    if (((v16 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_4B0778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_4B0800(uint64_t a1, int *a2, int *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2) + 1;
  if (v3 > 0x1555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v5 = 0x1555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = sub_1209EB8((4 * ((*(a1 + 8) - *a1) >> 2)), *a2, *a3);
  v7 = v6 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v6 - v9;
  memcpy(v6 - v9, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_4B091C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B0954(std::__shared_weak_count *a1)
{
  a1->__vftable = off_266AF98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_4B09A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_4B09C4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= 19)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        a2[23] = 17;
        strcpy(a2, "STATUS_INCOMPLETE");
        return result;
      }

      if (result == 5)
      {
        a2[23] = 15;
        strcpy(a2, "INVALID_REQUEST");
        return result;
      }
    }

    else
    {
      if (!result)
      {
        a2[23] = 14;
        strcpy(a2, "STATUS_SUCCESS");
        return result;
      }

      if (result == 1)
      {
        a2[23] = 13;
        strcpy(a2, "STATUS_FAILED");
        return result;
      }
    }
  }

  else if (result <= 39)
  {
    if (result == 20)
    {
      a2[23] = 16;
      strcpy(a2, "FAILED_NO_RESULT");
      return result;
    }

    if (result == 30)
    {
      a2[23] = 16;
      strcpy(a2, "NEEDS_REFINEMENT");
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case '(':
        a2[23] = 21;
        strcpy(a2, "FAILED_NOT_AUTHORIZED");
        return result;
      case '2':
        a2[23] = 14;
        strcpy(a2, "STATUS_DEDUPED");
        return result;
      case '<':
        a2[23] = 16;
        strcpy(a2, "VERSION_MISMATCH");
        return result;
    }
  }

  a2[23] = 7;
  strcpy(a2, "UNKNOWN");
  return result;
}

void sub_4B0D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4B0DC0(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v5 = sub_588E0(a3);
  v6 = sub_5FC5C();
  if (v5 != v6)
  {
    v8 = v6;
    do
    {
      if (*(v5 + 48) != 5)
      {
        goto LABEL_28;
      }

      v9 = *(v5 + 40);
      v22 = 21;
      strcpy(__p, "excluded_country_list");
      v10 = sub_5F680(v9, __p);
      if (v22 < 0)
      {
        v13 = v10;
        operator delete(*__p);
        v14 = v13;
        v11 = *v13;
        v12 = v14[1];
        if (v11 != v12)
        {
LABEL_11:
          v15 = *(a4 + 23);
          if (v15 >= 0)
          {
            v16 = *(a4 + 23);
          }

          else
          {
            v16 = a4[1];
          }

          if (v15 >= 0)
          {
            v17 = a4;
          }

          else
          {
            v17 = *a4;
          }

          while (v11[2] == 1)
          {
            v18 = *(*v11 + 23);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(*v11 + 8);
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? *v11 : **v11;
              if (!memcmp(v20, v17, v16))
              {
                goto LABEL_4;
              }
            }

            v11 += 4;
            if (v11 == v12)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          sub_5AF20();
        }
      }

      else
      {
        v11 = *v10;
        v12 = v10[1];
        if (*v10 != v12)
        {
          goto LABEL_11;
        }
      }

LABEL_4:
      if (v11 == v12)
      {
LABEL_27:
        operator new();
      }

      v5 = *v5;
    }

    while (v5 != v8);
  }

  return 0;
}

uint64_t sub_4B12E0(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v6 = sub_588E0(a3);
  v7 = sub_5FC5C();
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  while (1)
  {
    if (*(v6 + 48) != 5)
    {
      goto LABEL_68;
    }

    v11 = *(v6 + 40);
    v51 = 21;
    strcpy(__p, "excluded_country_list");
    v12 = sub_5F680(v11, __p);
    if (v51 < 0)
    {
      v15 = v12;
      operator delete(*__p);
      v13 = *v15;
      v14 = v15[1];
      if (*v15 != v14)
      {
LABEL_13:
        v16 = *(a4 + 23);
        if (v16 >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = a4[1];
        }

        if (v16 >= 0)
        {
          v18 = a4;
        }

        else
        {
          v18 = *a4;
        }

        while (v13[2] == 1)
        {
          v19 = *(*v13 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(*v13 + 8);
          }

          if (v19 == v17)
          {
            v21 = v20 >= 0 ? *v13 : **v13;
            if (!memcmp(v21, v18, v17))
            {
              goto LABEL_28;
            }
          }

          v13 += 4;
          if (v13 == v14)
          {
            goto LABEL_29;
          }
        }

LABEL_68:
        sub_5AF20();
      }
    }

    else
    {
      v13 = *v12;
      v14 = v12[1];
      if (*v12 != v14)
      {
        goto LABEL_13;
      }
    }

LABEL_28:
    if (v13 == v14)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (v6 == v9)
    {
      return 0;
    }
  }

LABEL_29:
  strcpy(v49, "disputed_area_geometry");
  HIBYTE(v49[2]) = 22;
  v22 = sub_5F8FC(v11, v49);
  sub_50FCC(v22, __p);
  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
  }

  sub_32318(v49, __p);
  if (*(a2 + 32) == -1 && *(a2 + 36) == -1)
  {
    v23 = 1;
    v24 = *__p;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v25 = sub_32A18(v49, (a2 + 32));
  v24 = *__p;
  if (!v25 || *__p == *&__p[8])
  {
LABEL_53:
    v23 = 1;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v29 = *(a2 + 36);
  LODWORD(v26) = *(a2 + 32);
  v30 = v26;
  v31 = *__p;
  while (1)
  {
    v32 = *v31;
    v33 = *(v31 + 8);
    if (*v31 != v33)
    {
      v34 = 0;
      do
      {
        v35 = v32[1];
        v36 = (*v32 + 12);
        if (*v32 != v35 && v36 != v35)
        {
          do
          {
            v38 = *(v36 - 2);
            v39 = v36[1];
            if (v38 < v29 != v39 < v29)
            {
              LODWORD(v27) = *v36;
              LODWORD(v28) = *(v36 - 3);
              v28 = *&v28;
              v27 = (v29 - v38) / (v39 - v38) * (*&v27 - v28) + v28;
              if (v27 < v30)
              {
                v34 ^= 1u;
              }
            }

            v36 += 3;
          }

          while (v36 != v35);
        }

        v32 += 3;
      }

      while (v32 != v33);
      if (v34)
      {
        break;
      }
    }

    v31 += 24;
    if (v31 == *&__p[8])
    {
      goto LABEL_53;
    }
  }

  v23 = 0;
  if (*__p)
  {
LABEL_54:
    v40 = *&__p[8];
    v10 = v24;
    if (*&__p[8] != v24)
    {
      v41 = *&__p[8];
      do
      {
        v44 = *(v41 - 3);
        v41 -= 3;
        v43 = v44;
        if (v44)
        {
          v45 = *(v40 - 2);
          v42 = v43;
          if (v45 != v43)
          {
            v46 = *(v40 - 2);
            do
            {
              v48 = *(v46 - 3);
              v46 -= 24;
              v47 = v48;
              if (v48)
              {
                *(v45 - 2) = v47;
                operator delete(v47);
              }

              v45 = v46;
            }

            while (v46 != v43);
            v42 = *v41;
          }

          *(v40 - 2) = v43;
          operator delete(v42);
        }

        v40 = v41;
      }

      while (v41 != v24);
      v10 = *__p;
    }

    *&__p[8] = v24;
    operator delete(v10);
  }

LABEL_6:
  if (v23)
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_4B1654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_4B1668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B18A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4B18C8(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v5 = sub_588E0(a3);
  v6 = sub_5FC5C();
  if (v5 != v6)
  {
    v8 = v6;
    do
    {
      if (*(v5 + 48) != 5)
      {
        goto LABEL_28;
      }

      v9 = *(v5 + 40);
      v22 = 21;
      strcpy(__p, "excluded_country_list");
      v10 = sub_5F680(v9, __p);
      if (v22 < 0)
      {
        v13 = v10;
        operator delete(*__p);
        v14 = v13;
        v11 = *v13;
        v12 = v14[1];
        if (v11 != v12)
        {
LABEL_11:
          v15 = *(a4 + 23);
          if (v15 >= 0)
          {
            v16 = *(a4 + 23);
          }

          else
          {
            v16 = a4[1];
          }

          if (v15 >= 0)
          {
            v17 = a4;
          }

          else
          {
            v17 = *a4;
          }

          while (v11[2] == 1)
          {
            v18 = *(*v11 + 23);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(*v11 + 8);
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? *v11 : **v11;
              if (!memcmp(v20, v17, v16))
              {
                goto LABEL_4;
              }
            }

            v11 += 4;
            if (v11 == v12)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          sub_5AF20();
        }
      }

      else
      {
        v11 = *v10;
        v12 = v10[1];
        if (*v10 != v12)
        {
          goto LABEL_11;
        }
      }

LABEL_4:
      if (v11 == v12)
      {
LABEL_27:
        operator new();
      }

      v5 = *v5;
    }

    while (v5 != v8);
  }

  return 0;
}

uint64_t sub_4B1DE8(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v6 = sub_588E0(a3);
  v7 = sub_5FC5C();
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  while (1)
  {
    if (*(v6 + 48) != 5)
    {
      goto LABEL_68;
    }

    v11 = *(v6 + 40);
    v51 = 21;
    strcpy(__p, "excluded_country_list");
    v12 = sub_5F680(v11, __p);
    if (v51 < 0)
    {
      v15 = v12;
      operator delete(*__p);
      v13 = *v15;
      v14 = v15[1];
      if (*v15 != v14)
      {
LABEL_13:
        v16 = *(a4 + 23);
        if (v16 >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = a4[1];
        }

        if (v16 >= 0)
        {
          v18 = a4;
        }

        else
        {
          v18 = *a4;
        }

        while (v13[2] == 1)
        {
          v19 = *(*v13 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(*v13 + 8);
          }

          if (v19 == v17)
          {
            v21 = v20 >= 0 ? *v13 : **v13;
            if (!memcmp(v21, v18, v17))
            {
              goto LABEL_28;
            }
          }

          v13 += 4;
          if (v13 == v14)
          {
            goto LABEL_29;
          }
        }

LABEL_68:
        sub_5AF20();
      }
    }

    else
    {
      v13 = *v12;
      v14 = v12[1];
      if (*v12 != v14)
      {
        goto LABEL_13;
      }
    }

LABEL_28:
    if (v13 == v14)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (v6 == v9)
    {
      return 0;
    }
  }

LABEL_29:
  strcpy(v49, "disputed_area_geometry");
  HIBYTE(v49[2]) = 22;
  v22 = sub_5F8FC(v11, v49);
  sub_50FCC(v22, __p);
  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
  }

  sub_32318(v49, __p);
  if (*(a2 + 32) == -1 && *(a2 + 36) == -1)
  {
    v23 = 1;
    v24 = *__p;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v25 = sub_32A18(v49, (a2 + 32));
  v24 = *__p;
  if (!v25 || *__p == *&__p[8])
  {
LABEL_53:
    v23 = 1;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v29 = *(a2 + 36);
  LODWORD(v26) = *(a2 + 32);
  v30 = v26;
  v31 = *__p;
  while (1)
  {
    v32 = *v31;
    v33 = *(v31 + 8);
    if (*v31 != v33)
    {
      v34 = 0;
      do
      {
        v35 = v32[1];
        v36 = (*v32 + 12);
        if (*v32 != v35 && v36 != v35)
        {
          do
          {
            v38 = *(v36 - 2);
            v39 = v36[1];
            if (v38 < v29 != v39 < v29)
            {
              LODWORD(v27) = *v36;
              LODWORD(v28) = *(v36 - 3);
              v28 = *&v28;
              v27 = (v29 - v38) / (v39 - v38) * (*&v27 - v28) + v28;
              if (v27 < v30)
              {
                v34 ^= 1u;
              }
            }

            v36 += 3;
          }

          while (v36 != v35);
        }

        v32 += 3;
      }

      while (v32 != v33);
      if (v34)
      {
        break;
      }
    }

    v31 += 24;
    if (v31 == *&__p[8])
    {
      goto LABEL_53;
    }
  }

  v23 = 0;
  if (*__p)
  {
LABEL_54:
    v40 = *&__p[8];
    v10 = v24;
    if (*&__p[8] != v24)
    {
      v41 = *&__p[8];
      do
      {
        v44 = *(v41 - 3);
        v41 -= 3;
        v43 = v44;
        if (v44)
        {
          v45 = *(v40 - 2);
          v42 = v43;
          if (v45 != v43)
          {
            v46 = *(v40 - 2);
            do
            {
              v48 = *(v46 - 3);
              v46 -= 24;
              v47 = v48;
              if (v48)
              {
                *(v45 - 2) = v47;
                operator delete(v47);
              }

              v45 = v46;
            }

            while (v46 != v43);
            v42 = *v41;
          }

          *(v40 - 2) = v43;
          operator delete(v42);
        }

        v40 = v41;
      }

      while (v41 != v24);
      v10 = *__p;
    }

    *&__p[8] = v24;
    operator delete(v10);
  }

LABEL_6:
  if (v23)
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_4B215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_4B2170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B23A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4B23D0(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v5 = sub_588E0(a3);
  v6 = sub_5FC5C();
  if (v5 != v6)
  {
    v8 = v6;
    do
    {
      if (*(v5 + 48) != 5)
      {
        goto LABEL_28;
      }

      v9 = *(v5 + 40);
      v22 = 21;
      strcpy(__p, "excluded_country_list");
      v10 = sub_5F680(v9, __p);
      if (v22 < 0)
      {
        v13 = v10;
        operator delete(*__p);
        v14 = v13;
        v11 = *v13;
        v12 = v14[1];
        if (v11 != v12)
        {
LABEL_11:
          v15 = *(a4 + 23);
          if (v15 >= 0)
          {
            v16 = *(a4 + 23);
          }

          else
          {
            v16 = a4[1];
          }

          if (v15 >= 0)
          {
            v17 = a4;
          }

          else
          {
            v17 = *a4;
          }

          while (v11[2] == 1)
          {
            v18 = *(*v11 + 23);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(*v11 + 8);
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? *v11 : **v11;
              if (!memcmp(v20, v17, v16))
              {
                goto LABEL_4;
              }
            }

            v11 += 4;
            if (v11 == v12)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          sub_5AF20();
        }
      }

      else
      {
        v11 = *v10;
        v12 = v10[1];
        if (*v10 != v12)
        {
          goto LABEL_11;
        }
      }

LABEL_4:
      if (v11 == v12)
      {
LABEL_27:
        operator new();
      }

      v5 = *v5;
    }

    while (v5 != v8);
  }

  return 0;
}

uint64_t sub_4B28F0(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v6 = sub_588E0(a3);
  v7 = sub_5FC5C();
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  while (1)
  {
    if (*(v6 + 48) != 5)
    {
      goto LABEL_68;
    }

    v11 = *(v6 + 40);
    v51 = 21;
    strcpy(__p, "excluded_country_list");
    v12 = sub_5F680(v11, __p);
    if (v51 < 0)
    {
      v15 = v12;
      operator delete(*__p);
      v13 = *v15;
      v14 = v15[1];
      if (*v15 != v14)
      {
LABEL_13:
        v16 = *(a4 + 23);
        if (v16 >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = a4[1];
        }

        if (v16 >= 0)
        {
          v18 = a4;
        }

        else
        {
          v18 = *a4;
        }

        while (v13[2] == 1)
        {
          v19 = *(*v13 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(*v13 + 8);
          }

          if (v19 == v17)
          {
            v21 = v20 >= 0 ? *v13 : **v13;
            if (!memcmp(v21, v18, v17))
            {
              goto LABEL_28;
            }
          }

          v13 += 4;
          if (v13 == v14)
          {
            goto LABEL_29;
          }
        }

LABEL_68:
        sub_5AF20();
      }
    }

    else
    {
      v13 = *v12;
      v14 = v12[1];
      if (*v12 != v14)
      {
        goto LABEL_13;
      }
    }

LABEL_28:
    if (v13 == v14)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (v6 == v9)
    {
      return 0;
    }
  }

LABEL_29:
  strcpy(v49, "disputed_area_geometry");
  HIBYTE(v49[2]) = 22;
  v22 = sub_5F8FC(v11, v49);
  sub_50FCC(v22, __p);
  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
  }

  sub_32318(v49, __p);
  if (*(a2 + 32) == -1 && *(a2 + 36) == -1)
  {
    v23 = 1;
    v24 = *__p;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v25 = sub_32A18(v49, (a2 + 32));
  v24 = *__p;
  if (!v25 || *__p == *&__p[8])
  {
LABEL_53:
    v23 = 1;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v29 = *(a2 + 36);
  LODWORD(v26) = *(a2 + 32);
  v30 = v26;
  v31 = *__p;
  while (1)
  {
    v32 = *v31;
    v33 = *(v31 + 8);
    if (*v31 != v33)
    {
      v34 = 0;
      do
      {
        v35 = v32[1];
        v36 = (*v32 + 12);
        if (*v32 != v35 && v36 != v35)
        {
          do
          {
            v38 = *(v36 - 2);
            v39 = v36[1];
            if (v38 < v29 != v39 < v29)
            {
              LODWORD(v27) = *v36;
              LODWORD(v28) = *(v36 - 3);
              v28 = *&v28;
              v27 = (v29 - v38) / (v39 - v38) * (*&v27 - v28) + v28;
              if (v27 < v30)
              {
                v34 ^= 1u;
              }
            }

            v36 += 3;
          }

          while (v36 != v35);
        }

        v32 += 3;
      }

      while (v32 != v33);
      if (v34)
      {
        break;
      }
    }

    v31 += 24;
    if (v31 == *&__p[8])
    {
      goto LABEL_53;
    }
  }

  v23 = 0;
  if (*__p)
  {
LABEL_54:
    v40 = *&__p[8];
    v10 = v24;
    if (*&__p[8] != v24)
    {
      v41 = *&__p[8];
      do
      {
        v44 = *(v41 - 3);
        v41 -= 3;
        v43 = v44;
        if (v44)
        {
          v45 = *(v40 - 2);
          v42 = v43;
          if (v45 != v43)
          {
            v46 = *(v40 - 2);
            do
            {
              v48 = *(v46 - 3);
              v46 -= 24;
              v47 = v48;
              if (v48)
              {
                *(v45 - 2) = v47;
                operator delete(v47);
              }

              v45 = v46;
            }

            while (v46 != v43);
            v42 = *v41;
          }

          *(v40 - 2) = v43;
          operator delete(v42);
        }

        v40 = v41;
      }

      while (v41 != v24);
      v10 = *__p;
    }

    *&__p[8] = v24;
    operator delete(v10);
  }

LABEL_6:
  if (v23)
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_4B2C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_4B2C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B2EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4B2ED8(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v5 = sub_588E0(a3);
  v6 = sub_5FC5C();
  if (v5 != v6)
  {
    v8 = v6;
    do
    {
      if (*(v5 + 48) != 5)
      {
        goto LABEL_28;
      }

      v9 = *(v5 + 40);
      v22 = 21;
      strcpy(__p, "excluded_country_list");
      v10 = sub_5F680(v9, __p);
      if (v22 < 0)
      {
        v13 = v10;
        operator delete(*__p);
        v14 = v13;
        v11 = *v13;
        v12 = v14[1];
        if (v11 != v12)
        {
LABEL_11:
          v15 = *(a4 + 23);
          if (v15 >= 0)
          {
            v16 = *(a4 + 23);
          }

          else
          {
            v16 = a4[1];
          }

          if (v15 >= 0)
          {
            v17 = a4;
          }

          else
          {
            v17 = *a4;
          }

          while (v11[2] == 1)
          {
            v18 = *(*v11 + 23);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(*v11 + 8);
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? *v11 : **v11;
              if (!memcmp(v20, v17, v16))
              {
                goto LABEL_4;
              }
            }

            v11 += 4;
            if (v11 == v12)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          sub_5AF20();
        }
      }

      else
      {
        v11 = *v10;
        v12 = v10[1];
        if (*v10 != v12)
        {
          goto LABEL_11;
        }
      }

LABEL_4:
      if (v11 == v12)
      {
LABEL_27:
        operator new();
      }

      v5 = *v5;
    }

    while (v5 != v8);
  }

  return 0;
}

uint64_t sub_4B33F8(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v6 = sub_588E0(a3);
  v7 = sub_5FC5C();
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v7;
  while (1)
  {
    if (*(v6 + 48) != 5)
    {
      goto LABEL_68;
    }

    v11 = *(v6 + 40);
    v51 = 21;
    strcpy(__p, "excluded_country_list");
    v12 = sub_5F680(v11, __p);
    if (v51 < 0)
    {
      v15 = v12;
      operator delete(*__p);
      v13 = *v15;
      v14 = v15[1];
      if (*v15 != v14)
      {
LABEL_13:
        v16 = *(a4 + 23);
        if (v16 >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = a4[1];
        }

        if (v16 >= 0)
        {
          v18 = a4;
        }

        else
        {
          v18 = *a4;
        }

        while (v13[2] == 1)
        {
          v19 = *(*v13 + 23);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(*v13 + 8);
          }

          if (v19 == v17)
          {
            v21 = v20 >= 0 ? *v13 : **v13;
            if (!memcmp(v21, v18, v17))
            {
              goto LABEL_28;
            }
          }

          v13 += 4;
          if (v13 == v14)
          {
            goto LABEL_29;
          }
        }

LABEL_68:
        sub_5AF20();
      }
    }

    else
    {
      v13 = *v12;
      v14 = v12[1];
      if (*v12 != v14)
      {
        goto LABEL_13;
      }
    }

LABEL_28:
    if (v13 == v14)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (v6 == v9)
    {
      return 0;
    }
  }

LABEL_29:
  strcpy(v49, "disputed_area_geometry");
  HIBYTE(v49[2]) = 22;
  v22 = sub_5F8FC(v11, v49);
  sub_50FCC(v22, __p);
  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
  }

  sub_32318(v49, __p);
  if (*(a2 + 32) == -1 && *(a2 + 36) == -1)
  {
    v23 = 1;
    v24 = *__p;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v25 = sub_32A18(v49, (a2 + 32));
  v24 = *__p;
  if (!v25 || *__p == *&__p[8])
  {
LABEL_53:
    v23 = 1;
    if (!*__p)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

  v29 = *(a2 + 36);
  LODWORD(v26) = *(a2 + 32);
  v30 = v26;
  v31 = *__p;
  while (1)
  {
    v32 = *v31;
    v33 = *(v31 + 8);
    if (*v31 != v33)
    {
      v34 = 0;
      do
      {
        v35 = v32[1];
        v36 = (*v32 + 12);
        if (*v32 != v35 && v36 != v35)
        {
          do
          {
            v38 = *(v36 - 2);
            v39 = v36[1];
            if (v38 < v29 != v39 < v29)
            {
              LODWORD(v27) = *v36;
              LODWORD(v28) = *(v36 - 3);
              v28 = *&v28;
              v27 = (v29 - v38) / (v39 - v38) * (*&v27 - v28) + v28;
              if (v27 < v30)
              {
                v34 ^= 1u;
              }
            }

            v36 += 3;
          }

          while (v36 != v35);
        }

        v32 += 3;
      }

      while (v32 != v33);
      if (v34)
      {
        break;
      }
    }

    v31 += 24;
    if (v31 == *&__p[8])
    {
      goto LABEL_53;
    }
  }

  v23 = 0;
  if (*__p)
  {
LABEL_54:
    v40 = *&__p[8];
    v10 = v24;
    if (*&__p[8] != v24)
    {
      v41 = *&__p[8];
      do
      {
        v44 = *(v41 - 3);
        v41 -= 3;
        v43 = v44;
        if (v44)
        {
          v45 = *(v40 - 2);
          v42 = v43;
          if (v45 != v43)
          {
            v46 = *(v40 - 2);
            do
            {
              v48 = *(v46 - 3);
              v46 -= 24;
              v47 = v48;
              if (v48)
              {
                *(v45 - 2) = v47;
                operator delete(v47);
              }

              v45 = v46;
            }

            while (v46 != v43);
            v42 = *v41;
          }

          *(v40 - 2) = v43;
          operator delete(v42);
        }

        v40 = v41;
      }

      while (v41 != v24);
      v10 = *__p;
    }

    *&__p[8] = v24;
    operator delete(v10);
  }

LABEL_6:
  if (v23)
  {
    goto LABEL_7;
  }

  return 1;
}

void sub_4B376C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_4B3780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B37B8(uint64_t a1, uint64_t a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    if (sub_4B12E0(a1, a2, v9, a3))
    {
      return 1;
    }
  }

  v11 = sub_4B391C(v7, "world");
  if (v11 == sub_5FC5C())
  {
    return 0;
  }

  v14 = 5;
  strcpy(__p, "world");
  v12 = sub_5F5AC(v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_4B12E0(a1, a2, v12, a3);
}

void sub_4B3900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_4B391C(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  result = sub_62A70(a1, &__dst);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__dst);
    return v7;
  }

  return result;
}

void sub_4B3A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B3A34(uint64_t a1, uint64_t a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    if (sub_4B1DE8(a1, a2, v9, a3))
    {
      return 1;
    }
  }

  v11 = sub_4B391C(v7, "world");
  if (v11 == sub_5FC5C())
  {
    return 0;
  }

  v14 = 5;
  strcpy(__p, "world");
  v12 = sub_5F5AC(v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_4B1DE8(a1, a2, v12, a3);
}

void sub_4B3B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B3B98(uint64_t a1, uint64_t a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    if (sub_4B28F0(a1, a2, v9, a3))
    {
      return 1;
    }
  }

  v11 = sub_4B391C(v7, "world");
  if (v11 == sub_5FC5C())
  {
    return 0;
  }

  v14 = 5;
  strcpy(__p, "world");
  v12 = sub_5F5AC(v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_4B28F0(a1, a2, v12, a3);
}

void sub_4B3CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B3CFC(uint64_t a1, uint64_t a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    if (sub_4B33F8(a1, a2, v9, a3))
    {
      return 1;
    }
  }

  v11 = sub_4B391C(v7, "world");
  if (v11 == sub_5FC5C())
  {
    return 0;
  }

  v14 = 5;
  strcpy(__p, "world");
  v12 = sub_5F5AC(v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_4B33F8(a1, a2, v12, a3);
}

void sub_4B3E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B3E60(uint64_t a1, uint64_t *a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    v10 = a2[1];
    v29 = *a2;
    __p = 0;
    v31 = 0;
    v32 = 0;
    v11 = a2[2];
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_23;
    }

    v33 = a2[4];
    v12 = sub_4B0DC0(a1, &v29, v9, a3);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      return 1;
    }
  }

  v14 = sub_4B391C(v7, "world");
  if (v14 == sub_5FC5C())
  {
    return 0;
  }

  v28 = 5;
  strcpy(v27, "world");
  v15 = sub_5F5AC(v7, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v19 = a2[1];
    v22 = *a2;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = a2[2];
    v18 = v20 - v19;
    if (v20 == v19)
    {
      goto LABEL_20;
    }

LABEL_18:
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_23:
    sub_1794();
  }

  v16 = a2[1];
  v22 = *a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v17 = a2[2];
  v18 = v17 - v16;
  if (v17 != v16)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = a2[4];
  result = sub_4B0DC0(a1, &v22, v15, a3);
  if (v23)
  {
    v24 = v23;
    v21 = result;
    operator delete(v23);
    return v21;
  }

  return result;
}

void sub_4B408C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B40D0(uint64_t a1, uint64_t *a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    v10 = a2[1];
    v29 = *a2;
    __p = 0;
    v31 = 0;
    v32 = 0;
    v11 = a2[2];
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_23;
    }

    v33 = a2[4];
    v12 = sub_4B18C8(a1, &v29, v9, a3);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      return 1;
    }
  }

  v14 = sub_4B391C(v7, "world");
  if (v14 == sub_5FC5C())
  {
    return 0;
  }

  v28 = 5;
  strcpy(v27, "world");
  v15 = sub_5F5AC(v7, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v19 = a2[1];
    v22 = *a2;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = a2[2];
    v18 = v20 - v19;
    if (v20 == v19)
    {
      goto LABEL_20;
    }

LABEL_18:
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_23:
    sub_1794();
  }

  v16 = a2[1];
  v22 = *a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v17 = a2[2];
  v18 = v17 - v16;
  if (v17 != v16)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = a2[4];
  result = sub_4B18C8(a1, &v22, v15, a3);
  if (v23)
  {
    v24 = v23;
    v21 = result;
    operator delete(v23);
    return v21;
  }

  return result;
}

void sub_4B42FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B4340(uint64_t a1, uint64_t *a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    v10 = a2[1];
    v29 = *a2;
    __p = 0;
    v31 = 0;
    v32 = 0;
    v11 = a2[2];
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_23;
    }

    v33 = a2[4];
    v12 = sub_4B23D0(a1, &v29, v9, a3);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      return 1;
    }
  }

  v14 = sub_4B391C(v7, "world");
  if (v14 == sub_5FC5C())
  {
    return 0;
  }

  v28 = 5;
  strcpy(v27, "world");
  v15 = sub_5F5AC(v7, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v19 = a2[1];
    v22 = *a2;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = a2[2];
    v18 = v20 - v19;
    if (v20 == v19)
    {
      goto LABEL_20;
    }

LABEL_18:
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_23:
    sub_1794();
  }

  v16 = a2[1];
  v22 = *a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v17 = a2[2];
  v18 = v17 - v16;
  if (v17 != v16)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = a2[4];
  result = sub_4B23D0(a1, &v22, v15, a3);
  if (v23)
  {
    v24 = v23;
    v21 = result;
    operator delete(v23);
    return v21;
  }

  return result;
}

void sub_4B456C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B45B0(uint64_t a1, uint64_t *a2, const void **a3, _DWORD *a4)
{
  if (*a4)
  {
    v7 = (a1 + 40);
  }

  else
  {
    v7 = a1;
  }

  v8 = sub_62A70(v7, a3);
  if (v8 != sub_5FC5C())
  {
    v9 = sub_5F5AC(v7, a3);
    v10 = a2[1];
    v29 = *a2;
    __p = 0;
    v31 = 0;
    v32 = 0;
    v11 = a2[2];
    if (v11 != v10)
    {
      if (((v11 - v10) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_23;
    }

    v33 = a2[4];
    v12 = sub_4B2ED8(a1, &v29, v9, a3);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v12)
    {
      return 1;
    }
  }

  v14 = sub_4B391C(v7, "world");
  if (v14 == sub_5FC5C())
  {
    return 0;
  }

  v28 = 5;
  strcpy(v27, "world");
  v15 = sub_5F5AC(v7, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
    v19 = a2[1];
    v22 = *a2;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v20 = a2[2];
    v18 = v20 - v19;
    if (v20 == v19)
    {
      goto LABEL_20;
    }

LABEL_18:
    if ((v18 & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_23:
    sub_1794();
  }

  v16 = a2[1];
  v22 = *a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v17 = a2[2];
  v18 = v17 - v16;
  if (v17 != v16)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = a2[4];
  result = sub_4B2ED8(a1, &v22, v15, a3);
  if (v23)
  {
    v24 = v23;
    v21 = result;
    operator delete(v23);
    return v21;
  }

  return result;
}

void sub_4B47DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B4820()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27901A0 = 0u;
  *algn_27901B0 = 0u;
  dword_27901C0 = 1065353216;
  sub_3A9A34(&xmmword_27901A0, v0);
  sub_3A9A34(&xmmword_27901A0, v3);
  sub_3A9A34(&xmmword_27901A0, __p);
  sub_3A9A34(&xmmword_27901A0, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2790178 = 0;
    qword_2790180 = 0;
    qword_2790170 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_4B4A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2790188)
  {
    qword_2790190 = qword_2790188;
    operator delete(qword_2790188);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B4B14(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*a2 == a2[1] || !sub_4C49E0(*a2))
  {
    return;
  }

  v6 = sub_4C4AE4(*a2);
  v7 = (*v6 - **v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = 4 * *(*v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_4C4AEC(*a2);
  v11 = (*v10 - **v10);
  if (*v11 >= 0xDu && (v12 = v11[6]) != 0)
  {
    v13 = 4 * *(*v10 + v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_2AF704((a1 + 502), 1u, 0);
  v15 = &v14[-*v14];
  if (*v15 < 0xBu)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 5);
    if (v16)
    {
      v16 += &v14[*&v14[v16]];
    }
  }

  v17 = (v16 + v9 + 4 + *(v16 + v9 + 4));
  v18 = (v17 - *v17);
  if (*v18 >= 5u && (v19 = v18[2]) != 0)
  {
    v20 = (v17 + v19);
    v21 = *v20;
    v22 = *(v20 + v21);
    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v41) = *(v20 + v21);
    if (v22)
    {
      memcpy(&__dst, v20 + v21 + 4, v22);
    }

    p_dst = (&__dst + v22);
  }

  else
  {
    HIBYTE(v41) = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v24 = sub_2AF704((a1 + 502), 1u, 0);
  v25 = &v24[-*v24];
  if (*v25 < 0xBu)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 + 5);
    if (v26)
    {
      v26 += &v24[*&v24[v26]];
    }
  }

  v27 = (v26 + v13 + 4 + *(v26 + v13 + 4));
  v28 = (v27 - *v27);
  if (*v28 >= 5u && (v29 = v28[2]) != 0)
  {
    v30 = (v27 + v29);
    v31 = *v30;
    v32 = *(v30 + v31);
    if (v32 >= 0x17)
    {
      operator new();
    }

    v39 = *(v30 + v31);
    if (v32)
    {
      memcpy(&__p, v30 + v31 + 4, v32);
    }

    *(&__p + v32) = 0;
    v33 = a3[1];
    if (v33 >= a3[2])
    {
      goto LABEL_41;
    }
  }

  else
  {
    v39 = 0;
    LOBYTE(__p) = 0;
    v33 = a3[1];
    if (v33 >= a3[2])
    {
LABEL_41:
      v35 = sub_1CEE8(a3, &__dst);
      goto LABEL_42;
    }
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_325C(v33, __dst, *(&__dst + 1));
  }

  else
  {
    v34 = __dst;
    *(v33 + 16) = v41;
    *v33 = v34;
  }

  v35 = v33 + 24;
LABEL_42:
  a3[1] = v35;
  if (sub_138B0(a1, &__dst))
  {
    v36 = 0;
    if (sub_138B0(a1, &__p))
    {
      goto LABEL_44;
    }

LABEL_53:
    if (sub_138B0(a1 + 5, &__p))
    {
      if (v36 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v36;
      }

      if (v37 == 4)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (sub_138B0(a1 + 10, &__p))
      {
        v37 = 2;
      }

      else
      {
        v37 = 4;
      }

      if (v36 > v37)
      {
        v37 = v36;
      }

      if (v37 == 4)
      {
        goto LABEL_48;
      }
    }

LABEL_70:
    if (v37 <= 1)
    {
      if (!v37)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (sub_138B0(a1 + 5, &__dst))
  {
    v36 = 1;
    if (!sub_138B0(a1, &__p))
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (sub_138B0(a1 + 10, &__dst))
    {
      v36 = 2;
    }

    else
    {
      v36 = 4;
    }

    if (!sub_138B0(a1, &__p))
    {
      goto LABEL_53;
    }
  }

LABEL_44:
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37 != 4)
  {
    goto LABEL_70;
  }

LABEL_48:
  if ((v39 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v41) & 0x80000000) == 0)
    {
      return;
    }

LABEL_76:
    operator delete(__dst);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v41) < 0)
  {
    goto LABEL_76;
  }
}

void sub_4B5104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  *(v22 + 8) = v23;
  if (a16 < 0)
  {
    operator delete(a11);
    if (a22 < 0)
    {
LABEL_3:
      operator delete(__p);
      sub_1A104(v22);
      _Unwind_Resume(a1);
    }
  }

  else if (a22 < 0)
  {
    goto LABEL_3;
  }

  sub_1A104(v22);
  _Unwind_Resume(a1);
}

void sub_4B51F8(uint64_t a1, void *a2)
{
  sub_4B5DEC(a1);
  v4 = sub_3AF6B4(a2);
  sub_4B5520(a1 + 120, v4);
  operator new();
}

void sub_4B5490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_360B9C((v18 + 120));
  sub_4B5CAC(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_4B5520(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 16), (a2 + 16), 0xF10uLL);
  *(a1 + 3872) = *(a2 + 3872);
  *(a1 + 3880) = *(a2 + 3880);
  v5 = *(a2 + 3888);
  *(a1 + 3888) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3896) = *(a2 + 3896);
  v6 = *(a2 + 3904);
  *(a1 + 3904) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 3912), (a2 + 3912), 0xF10uLL);
  v7 = *(a2 + 7771);
  *(a1 + 7768) = *(a2 + 7768);
  *(a1 + 7771) = v7;
  *(a1 + 7776) = 0;
  *(a1 + 7792) = 0;
  *(a1 + 7784) = 0;
  sub_4B56D0(a1 + 7776, *(a2 + 7776), *(a2 + 7784), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7784) - *(a2 + 7776)) >> 4));
  *(a1 + 7816) = 0;
  *(a1 + 7800) = 0u;
  v8 = *(a2 + 7800);
  v9 = *(a2 + 7808);
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4B568C(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 3896);
  sub_1F1A8(v1 + 3880);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_4B56D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_4B584C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4B5B3C(va);
  _Unwind_Resume(a1);
}

void sub_4B5860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_4B5A18(va2);
  sub_4B5A9C(va1);
  *(v3 + 8) = a3;
  sub_4B5B3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4B589C(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 8) = 0;
      *a4 = v6;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v8 = *(v5 + 1);
      v7 = *(v5 + 2);
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_4B598C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 16) = v12;
    operator delete(v12);
  }

  sub_4B59B4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4B59B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 32;
    }
  }

  return a1;
}

void ***sub_4B5A18(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v4 -= 32;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_4B5A9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 32);
      if (v6)
      {
        v7 = *(v3 - 24);
        v5 = *(v3 - 32);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 - 24);
            if (v8)
            {
              *(v7 - 16) = v8;
              operator delete(v8);
            }

            v7 -= 32;
          }

          while (v7 != v6);
          v5 = *(v3 - 32);
        }

        *(v3 - 24) = v6;
        operator delete(v5);
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_4B5B3C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v7 = *(v4 - 4);
          if (v7)
          {
            v8 = *(v4 - 3);
            v6 = *(v4 - 4);
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
              v6 = *(v4 - 4);
            }

            *(v4 - 3) = v7;
            operator delete(v6);
          }

          v4 -= 48;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void **sub_4B5BFC(void **a1)
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
        v6 = *(v3 - 4);
        if (v6)
        {
          v7 = *(v3 - 3);
          v5 = *(v3 - 4);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 24);
              if (v8)
              {
                *(v7 - 16) = v8;
                operator delete(v8);
              }

              v7 -= 32;
            }

            while (v7 != v6);
            v5 = *(v3 - 4);
          }

          *(v3 - 3) = v6;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_4B5CAC(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    do
    {
      v9 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v9;
    }

    while (v9);
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    do
    {
      v10 = *v4;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v10;
    }

    while (v10);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v11 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v11;
    }

    while (v11);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void sub_4B5D98(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_4B5DEC(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  v2 = (a1 + 40);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  v3 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *__p = 0u;
  *v9 = 0u;
  v10 = 1065353216;
  if (__p == a1)
  {
    v4 = 0;
    if (v2 == __p)
    {
LABEL_3:
      if (v3 == __p)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    *(a1 + 32) = 1065353216;
    sub_4B5F48(a1, 0, 0);
    v4 = v9[0];
    if (v2 == __p)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 72) = v10;
  sub_4B5F48(v2, v4, 0);
  v4 = v9[0];
  if (v3 == __p)
  {
LABEL_4:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_8:
  *(a1 + 112) = v10;
  sub_4B5F48(v3, v4, 0);
  v4 = v9[0];
  if (!v9[0])
  {
    goto LABEL_9;
  }

  do
  {
LABEL_13:
    v7 = *v4;
    if (v4[39] < 0)
    {
      operator delete(*(v4 + 2));
    }

    operator delete(v4);
    v4 = v7;
  }

  while (v7);
LABEL_9:
  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_4B5F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23D9C(&a9);
  sub_4B5CAC(v9);
  _Unwind_Resume(a1);
}

void sub_4B5F48(uint64_t a1, char *a2, char *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 != a2)
        {
          v8 = a2[39];
          if (v7[39] < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 16;
            }

            else
            {
              v10 = *(a2 + 2);
            }

            if (v8 >= 0)
            {
              v11 = a2[39];
            }

            else
            {
              v11 = *(a2 + 3);
            }

            sub_13B38((v7 + 16), v10, v11);
          }

          else if (a2[39] < 0)
          {
            sub_13A68(v7 + 16, *(a2 + 2), *(a2 + 3));
          }

          else
          {
            v9 = *(a2 + 1);
            *(v7 + 4) = *(a2 + 4);
            *(v7 + 1) = v9;
          }
        }

        v12 = *v7;
        sub_4B60C0(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      do
      {
        v13 = *v7;
        if (v7[39] < 0)
        {
          operator delete(*(v7 + 2));
        }

        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_22:
  if (a2 != a3)
  {
    sub_4B6224();
  }
}

void sub_4B607C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_4B5D98(v1, v2);
  __cxa_rethrow();
}

void sub_4B60AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4B60C0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void sub_4B62F4()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27901F8 = 0u;
  unk_2790208 = 0u;
  dword_2790218 = 1065353216;
  sub_3A9A34(&xmmword_27901F8, v0);
  sub_3A9A34(&xmmword_27901F8, v3);
  sub_3A9A34(&xmmword_27901F8, __p);
  sub_3A9A34(&xmmword_27901F8, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27901D0 = 0;
    qword_27901D8 = 0;
    qword_27901C8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_4B653C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27901E0)
  {
    qword_27901E8 = qword_27901E0;
    operator delete(qword_27901E0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B65E8(uint64_t a1, uint64_t a2)
{
  v4 = -1;
  *a1 = -1;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 64);
  if (v5 <= 180.0)
  {
    v6 = *(a2 + 56);
    if (fabs(v6) <= 85.0511288 && v5 >= -180.0)
    {
      v7 = sin(fmin(fmax(v6, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v8) = ((log((v7 + 1.0) / (1.0 - v7)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v8 >= 0xFFFFFFFE)
      {
        v8 = 4294967294;
      }

      else
      {
        v8 = v8;
      }

      v4 = ((v5 + 180.0) / 360.0 * 4294967300.0) | (v8 << 32);
    }
  }

  v21 = v4;
  v22 = 0x7FFFFFFF;
  v9 = *(a2 + 80);
  v10 = -1;
  if (v9 <= 180.0)
  {
    v11 = *(a2 + 72);
    if (fabs(v11) <= 85.0511288 && v9 >= -180.0)
    {
      v12 = sin(fmin(fmax(v11, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v13) = ((log((v12 + 1.0) / (1.0 - v12)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v13 >= 0xFFFFFFFE)
      {
        v13 = 4294967294;
      }

      else
      {
        v13 = v13;
      }

      v10 = ((v9 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
    }
  }

  v19 = v10;
  v20 = 0x7FFFFFFF;
  sub_320C0(&v18, &v21, &v19);
  *a1 = v18;
  v14 = *(a2 + 92);
  v15 = v14 - 2;
  v16 = v14 - 1;
  if (v15 >= 0xC)
  {
    v16 = 0;
  }

  *(a1 + 40) = v16;
  return a1;
}

uint64_t sub_4B6858(uint64_t result, char ***a2, int a3)
{
  *result = -1;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  if ((result + 16) != a2)
  {
    v4 = result;
    sub_3532D0((result + 16), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    result = v4;
  }

  *(result + 40) = a3;
  return result;
}

uint64_t sub_4B68E4(uint64_t result, char ***a2, int a3)
{
  *result = -1;
  *(result + 8) = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  if ((result + 16) != a2)
  {
    v4 = result;
    sub_3532D0((result + 16), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
    result = v4;
  }

  *(result + 40) = a3;
  return result;
}

__n128 sub_4B6970(uint64_t a1, __n128 *a2, int a3)
{
  *a1 = -1;
  *(a1 + 8) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  result = *a2;
  *a1 = *a2;
  *(a1 + 40) = a3;
  return result;
}

unint64_t sub_4B6994(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  v4 = a1 + 16;
  v5 = v6;
  v7 = *(v4 + 24);
  if ((v7 - 1) < 0xC)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 1;
  }

  *(a2 + 16) |= 0x40u;
  *(a2 + 92) = v8;
  if (*(v4 + 8) - v5 == 24 && *v5 != v5[1])
  {
    v9 = sub_4B6C54(v4, 0);
    v11 = *v9;
    v12 = v9[1];
    if (*v9 != v12)
    {
      do
      {
        v19 = *(a2 + 40);
        if (v19 && (v20 = *(a2 + 32), v20 < *v19))
        {
          *(a2 + 32) = v20 + 1;
          v14 = *&v19[2 * v20 + 2];
        }

        else
        {
          v13 = sub_16F5828(*(a2 + 24));
          v14 = sub_19593CC(a2 + 24, v13);
        }

        LODWORD(v10) = v11[1];
        v15 = exp(*&v10 * -6.28318531 / 4294967300.0 + 3.14159265);
        v10 = atan((v15 + -1.0 / v15) * 0.5) * 57.2957795;
        v16 = *(v14 + 40);
        *(v14 + 40) = v16 | 1;
        v17 = *v11;
        v11 += 3;
        LODWORD(v18) = v17;
        *(v14 + 40) = v16 | 3;
        *(v14 + 48) = v10;
        *(v14 + 56) = v18 * 360.0 / 4294967300.0 + -180.0;
      }

      while (v11 != v12);
    }
  }

  result = sub_329BC(a1);
  if (result)
  {
    v22 = sub_32DBC(a1);
    v23 = exp(3.14159265 - HIDWORD(v22) * 6.28318531 / 4294967300.0);
    v24 = atan((v23 - 1.0 / v23) * 0.5);
    *(a2 + 16) |= 2u;
    *(a2 + 56) = v24 * 57.2957795;
    v25 = sub_32DBC(a1);
    *(a2 + 16) |= 4u;
    *(a2 + 64) = v25 * 360.0 / 4294967300.0 + -180.0;
    v26 = sub_32DA0(a1);
    v27 = exp(3.14159265 - HIDWORD(v26) * 6.28318531 / 4294967300.0);
    v28 = atan((v27 - 1.0 / v27) * 0.5);
    *(a2 + 16) |= 8u;
    *(a2 + 72) = v28 * 57.2957795;
    result = sub_32DA0(a1);
    *(a2 + 16) |= 0x10u;
    *(a2 + 80) = result * 360.0 / 4294967300.0 + -180.0;
  }

  return result;
}

uint64_t sub_4B6C54(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 24 * a2;
}

void sub_4B6DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_4B6E88(uint64_t a1, int **a2, char **a3)
{
  v5 = (*a2 - **a2);
  if (*v5 >= 0xDu && (v6 = v5[6]) != 0)
  {
    v7 = *(*a2 + v6);
    v8 = *a3;
    v9 = &(*a3)[-**a3];
    if (*v9 < 0xDu)
    {
LABEL_73:
      if (!v7)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    v8 = *a3;
    v9 = &(*a3)[-**a3];
    if (*v9 < 0xDu)
    {
      goto LABEL_73;
    }
  }

  v10 = *(v9 + 6);
  if (!v10)
  {
    goto LABEL_73;
  }

  if (*&v8[v10] == v7)
  {
    return 0;
  }

LABEL_8:
  sub_4B7288(a1, *(a2 + 8) | (*(a2 + 18) << 32), &__s2);
  sub_4B7288(a1, *(a3 + 8) | (*(a3 + 18) << 32), &__p);
  if ((v48 & 0x80u) == 0)
  {
    v11 = v48;
  }

  else
  {
    v11 = v47;
  }

  v12 = v45;
  v13 = v45;
  v14 = v44;
  if ((v45 & 0x80u) == 0)
  {
    v15 = v45;
  }

  else
  {
    v15 = v44;
  }

  if (v11 == v15)
  {
    v16 = (v48 & 0x80u) == 0 ? &__s2 : __s2;
    v17 = (v45 & 0x80u) == 0 ? &__p : __p;
    result = memcmp(v16, v17, v11);
    if (!result)
    {
LABEL_81:
      if (v45 < 0)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    }
  }

  if (v11)
  {
    v50 = *(a1 + 7904);
    v49 = *(a1 + 7912);
    v19 = sub_4BDD90(&v50, &v49, &__s2);
    if (*(a1 + 7912) == v19)
    {
      goto LABEL_37;
    }

    v20 = *(v19 + 23);
    if (v20 >= 0)
    {
      v21 = *(v19 + 23);
    }

    else
    {
      v21 = v19[1];
    }

    v22 = v48;
    if ((v48 & 0x80u) != 0)
    {
      v22 = v47;
    }

    if (v21 == v22 && (v20 >= 0 ? (v23 = v19) : (v23 = *v19), (v48 & 0x80u) == 0 ? (p_s2 = &__s2) : (p_s2 = __s2), v25 = v19, !memcmp(v23, p_s2, v21)))
    {
      if (!*(v25 + 6))
      {
        goto LABEL_87;
      }
    }

    else
    {
LABEL_37:
      if ((*(a1 + 8000) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

  if (!v15)
  {
    goto LABEL_56;
  }

  v50 = *(a1 + 7904);
  v49 = *(a1 + 7912);
  v26 = sub_4BDD90(&v50, &v49, &__p);
  if (*(a1 + 7912) == v26 || ((v27 = *(v26 + 23), v27 >= 0) ? (v28 = *(v26 + 23)) : (v28 = v26[1]), (v12 = v45, v13 = v45, v14 = v44, (v45 & 0x80u) == 0) ? (v29 = v45) : (v29 = v44), v28 != v29 || (v27 >= 0 ? (v30 = v26) : (v30 = *v26), (v45 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), v32 = v26, memcmp(v30, p_p, v28))))
  {
    if (*(a1 + 8000) == 1)
    {
      v12 = v45;
      v14 = v44;
      v13 = v45;
      goto LABEL_56;
    }

LABEL_87:
    result = 4;
    if (v45 < 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

  if (!*(v32 + 6))
  {
    goto LABEL_87;
  }

LABEL_56:
  if ((v48 & 0x80u) == 0)
  {
    v33 = &__s2;
  }

  else
  {
    v33 = __s2;
  }

  if ((v48 & 0x80u) == 0)
  {
    v34 = v48;
  }

  else
  {
    v34 = v47;
  }

  if ((v13 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v13 & 0x80u) != 0)
  {
    v12 = v14;
  }

  if (v12 >= v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v12;
  }

  v37 = memcmp(v33, v35, v36);
  if (v37)
  {
    if ((v37 & 0x80000000) == 0)
    {
LABEL_72:
      v38 = &__s2;
      v39 = &__p;
      goto LABEL_77;
    }
  }

  else if (v34 >= v12)
  {
    goto LABEL_72;
  }

  v38 = &__p;
  v39 = &__s2;
LABEL_77:
  v40 = sub_4BE454(*(a1 + 8008), *(a1 + 8016), v39, v38);
  if (*(a1 + 8016) == v40)
  {
    result = 1;
    goto LABEL_81;
  }

  result = *(v40 + 48);
  if (v45 < 0)
  {
LABEL_88:
    v41 = result;
    operator delete(__p);
    result = v41;
    if (v48 < 0)
    {
      goto LABEL_89;
    }

    return result;
  }

LABEL_82:
  if (v48 < 0)
  {
LABEL_89:
    v42 = result;
    operator delete(__s2);
    return v42;
  }

  return result;
}

void sub_4B7238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_4B7288(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  std::mutex::lock((a1 + 7840));
  v6 = sub_2B51D8(a1 + 16, a2);
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = 4 * *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2AF704(a1 + 3912, 1u, 0);
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 5);
    if (v12)
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + v9 + 4 + *(v12 + v9 + 4));
  v14 = (v13 - *v13);
  if (*v14 >= 5u && (v15 = v14[2]) != 0)
  {
    v16 = (v13 + v15);
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

    a3 += v18;
  }

  else
  {
    a3[23] = 0;
  }

  *a3 = 0;

  std::mutex::unlock((a1 + 7840));
}

uint64_t sub_4B7410(uint64_t a1, int **a2, int **a3)
{
  v5 = (*a2 - **a2);
  if (*v5 >= 0xDu && (v6 = v5[6]) != 0)
  {
    v7 = *(*a2 + v6);
    v8 = *a3;
    v9 = (*a3 - **a3);
    if (*v9 < 0xDu)
    {
LABEL_73:
      if (!v7)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    v8 = *a3;
    v9 = (*a3 - **a3);
    if (*v9 < 0xDu)
    {
      goto LABEL_73;
    }
  }

  v10 = v9[6];
  if (!v10)
  {
    goto LABEL_73;
  }

  if (*&v8[v10] == v7)
  {
    return 0;
  }

LABEL_8:
  sub_4B7288(a1, *(a2 + 8) | ((*(a2 + 9) & 0x1FFFFFFF) << 32), &__s2);
  sub_4B7288(a1, *(a3 + 8) | ((*(a3 + 9) & 0x1FFFFFFF) << 32), &__p);
  if ((v48 & 0x80u) == 0)
  {
    v11 = v48;
  }

  else
  {
    v11 = v47;
  }

  v12 = v45;
  v13 = v45;
  v14 = v44;
  if ((v45 & 0x80u) == 0)
  {
    v15 = v45;
  }

  else
  {
    v15 = v44;
  }

  if (v11 == v15)
  {
    v16 = (v48 & 0x80u) == 0 ? &__s2 : __s2;
    v17 = (v45 & 0x80u) == 0 ? &__p : __p;
    result = memcmp(v16, v17, v11);
    if (!result)
    {
LABEL_81:
      if (v45 < 0)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    }
  }

  if (v11)
  {
    v50 = *(a1 + 7904);
    v49 = *(a1 + 7912);
    v19 = sub_4BDD90(&v50, &v49, &__s2);
    if (*(a1 + 7912) == v19)
    {
      goto LABEL_37;
    }

    v20 = *(v19 + 23);
    if (v20 >= 0)
    {
      v21 = *(v19 + 23);
    }

    else
    {
      v21 = v19[1];
    }

    v22 = v48;
    if ((v48 & 0x80u) != 0)
    {
      v22 = v47;
    }

    if (v21 == v22 && (v20 >= 0 ? (v23 = v19) : (v23 = *v19), (v48 & 0x80u) == 0 ? (p_s2 = &__s2) : (p_s2 = __s2), v25 = v19, !memcmp(v23, p_s2, v21)))
    {
      if (!*(v25 + 6))
      {
        goto LABEL_87;
      }
    }

    else
    {
LABEL_37:
      if ((*(a1 + 8000) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

  if (!v15)
  {
    goto LABEL_56;
  }

  v50 = *(a1 + 7904);
  v49 = *(a1 + 7912);
  v26 = sub_4BDD90(&v50, &v49, &__p);
  if (*(a1 + 7912) == v26 || ((v27 = *(v26 + 23), v27 >= 0) ? (v28 = *(v26 + 23)) : (v28 = v26[1]), (v12 = v45, v13 = v45, v14 = v44, (v45 & 0x80u) == 0) ? (v29 = v45) : (v29 = v44), v28 != v29 || (v27 >= 0 ? (v30 = v26) : (v30 = *v26), (v45 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), v32 = v26, memcmp(v30, p_p, v28))))
  {
    if (*(a1 + 8000) == 1)
    {
      v12 = v45;
      v14 = v44;
      v13 = v45;
      goto LABEL_56;
    }

LABEL_87:
    result = 4;
    if (v45 < 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

  if (!*(v32 + 6))
  {
    goto LABEL_87;
  }

LABEL_56:
  if ((v48 & 0x80u) == 0)
  {
    v33 = &__s2;
  }

  else
  {
    v33 = __s2;
  }

  if ((v48 & 0x80u) == 0)
  {
    v34 = v48;
  }

  else
  {
    v34 = v47;
  }

  if ((v13 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v13 & 0x80u) != 0)
  {
    v12 = v14;
  }

  if (v12 >= v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = v12;
  }

  v37 = memcmp(v33, v35, v36);
  if (v37)
  {
    if ((v37 & 0x80000000) == 0)
    {
LABEL_72:
      v38 = &__s2;
      v39 = &__p;
      goto LABEL_77;
    }
  }

  else if (v34 >= v12)
  {
    goto LABEL_72;
  }

  v38 = &__p;
  v39 = &__s2;
LABEL_77:
  v40 = sub_4BE454(*(a1 + 8008), *(a1 + 8016), v39, v38);
  if (*(a1 + 8016) == v40)
  {
    result = 1;
    goto LABEL_81;
  }

  result = *(v40 + 48);
  if (v45 < 0)
  {
LABEL_88:
    v41 = result;
    operator delete(__p);
    result = v41;
    if (v48 < 0)
    {
      goto LABEL_89;
    }

    return result;
  }

LABEL_82:
  if (v48 < 0)
  {
LABEL_89:
    v42 = result;
    operator delete(__s2);
    return v42;
  }

  return result;
}

void sub_4B77C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4B7810(void *a1, uint64_t a2, int a3)
{
  v22 = a3;
  sub_4D0560();
  v6 = v5;
  v8 = v7;
  sub_4D0568();
  v11 = v9;
  v12 = v10;
  if (!v6)
  {
    if (!v9 || v10 >= sub_4D1DC0(v9))
    {
      return 2;
    }

    goto LABEL_11;
  }

  v13 = sub_4D1DC0(v6);
  v14 = v13;
  if (!v11)
  {
    if (v8 < v13)
    {
      goto LABEL_11;
    }

    return 2;
  }

  v15 = sub_4D1DC0(v11);
  if (v8 >= v14 || v12 >= v15)
  {
    if (v8 < v14 != v12 < v15)
    {
      goto LABEL_11;
    }

    return 2;
  }

  v16 = sub_4D1F50(v6, v8);
  if (v16 == sub_4D1F50(v11, v12))
  {
    return 2;
  }

LABEL_11:
  v18 = sub_4D1F50(v6, v8);
  sub_4B7288(a1, *(v18 + 32) | (*(v18 + 36) << 32), __p);
  v19 = sub_4BABF8(a1, __p, a3);
  if (SHIBYTE(v24) < 0)
  {
    v20 = v19;
    operator delete(__p[0]);
    v19 = v20;
  }

  v21 = v19;
  __p[0] = a1;
  __p[1] = &v21;
  v24 = &v22;
  sub_4B7A3C(v6, v8, v11, v12, __p);
  return v21;
}

void sub_4B7990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B79AC(uint64_t a1, unint64_t *a2, int a3)
{
  sub_4B7288(a1, *a2, __p);
  result = sub_4BABF8(a1, __p, a3);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_4B7A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4B7A3C(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_4BE60C(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_4BE60C(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_4BE60C(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

uint64_t sub_4B7C5C(void *a1, uint64_t a2, int a3)
{
  v22 = a3;
  sub_4D0560();
  v6 = v5;
  v8 = v7;
  sub_4D0568();
  v11 = v9;
  v12 = v10;
  if (!v6)
  {
    if (!v9 || v10 >= sub_4D1DC0(v9))
    {
      return 2;
    }

    goto LABEL_11;
  }

  v13 = sub_4D1DC0(v6);
  v14 = v13;
  if (!v11)
  {
    if (v8 < v13)
    {
      goto LABEL_11;
    }

    return 2;
  }

  v15 = sub_4D1DC0(v11);
  if (v8 >= v14 || v12 >= v15)
  {
    if (v8 < v14 != v12 < v15)
    {
      goto LABEL_11;
    }

    return 2;
  }

  v16 = sub_4D1F50(v6, v8);
  if (v16 == sub_4D1F50(v11, v12))
  {
    return 2;
  }

LABEL_11:
  v18 = sub_4D1F50(v6, v8);
  sub_4B7288(a1, *(v18 + 32) | (*(v18 + 36) << 32), __p);
  v19 = sub_4BABF8(a1, __p, a3);
  if (SHIBYTE(v24) < 0)
  {
    v20 = v19;
    operator delete(__p[0]);
    v19 = v20;
  }

  v21 = v19;
  __p[0] = a1;
  __p[1] = &v21;
  v24 = &v22;
  sub_4B7DF8(v6, v8, v11, v12, __p);
  return v21;
}

void sub_4B7DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4B7DF8(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_4BE7D4(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_4BE7D4(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_4BE7D4(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

uint64_t sub_4B8018(void *a1, uint64_t a2, int a3)
{
  v22 = a3;
  sub_4D0560();
  v6 = v5;
  v8 = v7;
  sub_4D0568();
  v11 = v9;
  v12 = v10;
  if (!v6)
  {
    if (!v9 || v10 >= sub_4D1DC0(v9))
    {
      return 2;
    }

    goto LABEL_11;
  }

  v13 = sub_4D1DC0(v6);
  v14 = v13;
  if (!v11)
  {
    if (v8 < v13)
    {
      goto LABEL_11;
    }

    return 2;
  }

  v15 = sub_4D1DC0(v11);
  if (v8 >= v14 || v12 >= v15)
  {
    if (v8 < v14 != v12 < v15)
    {
      goto LABEL_11;
    }

    return 2;
  }

  v16 = sub_4D1F50(v6, v8);
  if (v16 == sub_4D1F50(v11, v12))
  {
    return 2;
  }

LABEL_11:
  v18 = sub_4D1F50(v6, v8);
  sub_4B7288(a1, *(v18 + 32) | ((*(v18 + 36) & 0x1FFFFFFF) << 32), __p);
  v19 = sub_4BABF8(a1, __p, a3);
  if (SHIBYTE(v24) < 0)
  {
    v20 = v19;
    operator delete(__p[0]);
    v19 = v20;
  }

  v21 = v19;
  __p[0] = a1;
  __p[1] = &v21;
  v24 = &v22;
  sub_4B81B4(v6, v8, v11, v12, __p);
  return v21;
}

void sub_4B8198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4B81B4(void *result, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = result;
  if (result)
  {
    result = sub_4D1DC0(result);
    v10 = result;
    if (a3)
    {
      result = sub_4D1DC0(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 != a4 < result)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 != result)
        {
          while (1)
          {
LABEL_20:
            v20 = a2 + 1;
            v21 = sub_4D1DC0(v9);
            result = sub_4D1DC0(a3);
            if (a2 + 1 >= v21 || a4 >= result)
            {
              if (v20 < v21 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v22 = sub_4D1F50(v9, a2 + 1);
              result = sub_4D1F50(a3, a4);
              if (v22 == result)
              {
                return result;
              }
            }

            v18 = sub_4D1F50(v9, a2);
            v19 = sub_4D1F50(v9, v20);
            sub_4BE99C(a5, v18, v19);
            a2 = v20;
          }
        }
      }
    }

    else if (a2 < result)
    {
      result = sub_4D1DC0(v9);
      if (a2 + 1 < result)
      {
        do
        {
          v15 = sub_4D1F50(v9, a2);
          v16 = sub_4D1F50(v9, a2 + 1);
          sub_4BE99C(a5, v15, v16);
          result = sub_4D1DC0(v9);
          v17 = a2 + 2;
          ++a2;
        }

        while (v17 < result);
      }
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
      for (result = sub_4D1DC0(a3); a4 < result; a2 = v12)
      {
        v12 = a2 + 1;
        v13 = sub_4D1F50(0, a2);
        v14 = sub_4D1F50(0, v12);
        sub_4BE99C(a5, v13, v14);
        result = sub_4D1DC0(a3);
      }
    }
  }

  return result;
}

uint64_t sub_4B83D4(void *a1, uint64_t a2, int a3)
{
  v50 = a3;
  sub_4C35F8(a2, &v44);
  sub_4C36F8(a2, &v38);
  if (v48 == v49 || v42 == v43)
  {
    if ((v48 == v49) != (v42 == v43))
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  if (v45 != v39)
  {
    goto LABEL_23;
  }

  if (!v44)
  {
    v12 = v38;
    if (!v38)
    {
      goto LABEL_7;
    }

    v11 = 0;
    goto LABEL_16;
  }

  v9 = *(&v44 + 1);
  v10 = sub_4D1DC0(v44);
  v11 = v9 < v10;
  v12 = v38;
  if (v38)
  {
LABEL_16:
    v13 = *(&v38 + 1);
    v14 = sub_4D1DC0(v12);
    if (v13 < v14 && v11)
    {
      v16 = sub_4D1F50(v44, *(&v44 + 1));
      if (v16 != sub_4D1F50(v38, *(&v38 + 1)))
      {
        goto LABEL_23;
      }
    }

    else if ((v11 ^ (v13 < v14)))
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  if (v9 < v10)
  {
LABEL_23:
    v17 = sub_4D1F50(v44, *(&v44 + 1));
    sub_4B7288(a1, *(v17 + 32) | (*(v17 + 36) << 32), v51);
    v18 = sub_4BABF8(a1, v51, a3);
    if (SHIBYTE(v52) < 0)
    {
      v19 = v18;
      operator delete(v51[0]);
      v18 = v19;
    }

    v37 = v18;
    v29 = v44;
    v30 = v45;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (v47 != v46)
    {
      if (((v47 - v46) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    if (v49 != v48)
    {
      if (((v49 - v48) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v21 = v38;
    v22 = v39;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v27 = 0;
    v28 = 0;
    if (v43 != v42)
    {
      if (((v43 - v42) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v51[0] = a1;
    v51[1] = &v37;
    v52 = &v50;
    sub_4B8858(&v29, &v21, v51);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    v7 = v37;
    v8 = v42;
    if (v42)
    {
      goto LABEL_46;
    }

    goto LABEL_47;
  }

LABEL_7:
  v7 = 2;
  v8 = v42;
  if (v42)
  {
LABEL_46:
    v43 = v8;
    operator delete(v8);
  }

LABEL_47:
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v7;
}

void sub_4B8780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  sub_3DB674(&a29);
  sub_3DB674((v29 - 152));
  _Unwind_Resume(a1);
}

void sub_4B8858(void **a1, uint64_t a2, uint64_t a3)
{
  if (!sub_3E6794(a1, a2))
  {
    v12 = *a1;
    v6 = a1[3];
    v13 = a1[2];
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = a1[4];
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    __p = 0;
    v18 = 0;
    v19 = 0;
    v9 = a1[6];
    v8 = a1[7];
    if (v8 != v9)
    {
      if (((v8 - v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    sub_3E3AF4(a1);
    while (!sub_3E6794(a1, a2))
    {
      v10 = sub_4D1F50(v12, *(&v12 + 1));
      v11 = sub_4D1F50(*a1, a1[1]);
      sub_4BEB64(a3, v10, v11);
      sub_3E3AF4(a1);
      sub_3E3AF4(&v12);
    }

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }
  }
}

void sub_4B89FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B8A28(uint64_t a1, void *a2, int a3)
{
  if (sub_F69D6C(a2))
  {
    return 2;
  }

  v8 = sub_F69654(a2);
  sub_4B7288(a1, *(v8 + 32) | (*(v8 + 36) << 32), __p);
  v6 = sub_4BABF8(a1, __p, a3);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  sub_4C35D4(a2, v14);
  v9 = v14[0];
  v10 = v14[1];
  while (v9 != v10)
  {
    v11 = v9 + 40;
    if (sub_4B6E88(a1, v9, (v9 + 40)))
    {
      sub_4B7288(a1, *(v9 + 72) | (*(v9 + 76) << 32), __p);
      v12 = sub_4BABF8(a1, __p, a3);
      if (v16 < 0)
      {
        v13 = v12;
        operator delete(__p[0]);
        v12 = v13;
      }

      if (v6 >= v12)
      {
        v6 = v12;
      }

      else
      {
        v6 = v6;
      }
    }

    v9 = v11 + 56;
  }

  return v6;
}

void sub_4B8B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4B8B68(uint64_t a1, uint64_t *a2, int a3)
{
  if (sub_F64B34(a2))
  {
    return 2;
  }

  v7 = sub_F64C70(a2);
  sub_4B7288(a1, *(v7 + 32) | ((*(v7 + 36) & 0x1FFFFFFF) << 32), __p);
  v6 = sub_4BABF8(a1, __p, a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_F647F8(a2, __p);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v17 != v16)
  {
    if (((v17 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v6;
}

void sub_4B8F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4B8FA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_4B8FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  sub_334D18(&a11);
  sub_334D18(&a19);
  sub_3355FC(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_4B902C(void *a1, void *a2)
{
  v4 = sub_4D1DC0(a2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = sub_4D1F50(a2, 0);
  sub_4B7288(a1, *(v6 + 32) | (*(v6 + 36) << 32), &__p);
  v7 = a1[996];
  v54 = a1[997];
  v55 = v7;
  v8 = sub_4BDEE8(&v55, &v54, &__p);
  if (a1[997] == v8)
  {
    goto LABEL_15;
  }

  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = *(v8 + 23);
  }

  else
  {
    v10 = v8[1];
  }

  v11 = v53;
  v12 = v53;
  if ((v53 & 0x80u) != 0)
  {
    v11 = v52;
  }

  if (v10 != v11)
  {
    goto LABEL_15;
  }

  if (v9 < 0)
  {
    v8 = *v8;
  }

  v13 = (v53 & 0x80u) == 0 ? &__p : __p;
  if (!memcmp(v8, v13, v10))
  {
    v22 = 0;
    v23 = 3;
    if (v12 < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_15:
    v14 = a1[992];
    v54 = a1[993];
    v55 = v14;
    v15 = sub_4BDEE8(&v55, &v54, &__p);
    v16 = v53;
    v17 = v53;
    if (a1[993] == v15)
    {
      goto LABEL_30;
    }

    v18 = *(v15 + 23);
    if (v18 >= 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = v15[1];
    }

    if ((v53 & 0x80u) != 0)
    {
      v16 = v52;
    }

    if (v19 != v16)
    {
LABEL_30:
      v22 = 0;
      v23 = 1;
      if (v53 < 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v18 < 0)
      {
        v15 = *v15;
      }

      if ((v53 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v21 = memcmp(v15, p_p, v19);
      v22 = v21 == 0;
      v23 = v21 != 0;
      if (v17 < 0)
      {
LABEL_28:
        operator delete(__p);
        if (!v22)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v5 == 1)
        {
          return 1;
        }

        v25 = 1;
        while (1)
        {
          v26 = sub_4D1F50(a2, v25);
          v27 = (*v26 - **v26);
          if (*v27 >= 0xDu && (v28 = v27[6]) != 0)
          {
            v29 = *(*v26 + v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = v25 - 1;
          v31 = sub_4D1F50(a2, v30);
          v32 = (*v31 - **v31);
          if (*v32 >= 0xDu && (v33 = v32[6]) != 0)
          {
            if (*(*v31 + v33) == v29)
            {
              goto LABEL_37;
            }
          }

          else if (!v29)
          {
            goto LABEL_37;
          }

          sub_4B7288(a1, *(v26 + 8) | (*(v26 + 18) << 32), &__p);
          v34 = a1[996];
          v54 = a1[997];
          v55 = v34;
          v35 = sub_4BDEE8(&v55, &v54, &__p);
          if (a1[997] != v35)
          {
            v36 = *(v35 + 23);
            if (v36 >= 0)
            {
              v37 = *(v35 + 23);
            }

            else
            {
              v37 = v35[1];
            }

            v38 = v53;
            v39 = v53;
            if ((v53 & 0x80u) != 0)
            {
              v38 = v52;
            }

            if (v37 == v38)
            {
              if (v36 < 0)
              {
                v35 = *v35;
              }

              v40 = (v53 & 0x80u) == 0 ? &__p : __p;
              if (!memcmp(v35, v40, v37))
              {
                break;
              }
            }
          }

          v41 = a1[992];
          v54 = a1[993];
          v55 = v41;
          v42 = sub_4BDEE8(&v55, &v54, &__p);
          v43 = v53;
          v44 = v53;
          if (a1[993] == v42)
          {
            goto LABEL_74;
          }

          v45 = *(v42 + 23);
          if (v45 >= 0)
          {
            v46 = *(v42 + 23);
          }

          else
          {
            v46 = v42[1];
          }

          if ((v53 & 0x80u) != 0)
          {
            v43 = v52;
          }

          if (v46 != v43)
          {
LABEL_74:
            v49 = 0;
            v50 = 1;
            if (v53 < 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v45 < 0)
            {
              v42 = *v42;
            }

            if ((v53 & 0x80u) == 0)
            {
              v47 = &__p;
            }

            else
            {
              v47 = __p;
            }

            v48 = memcmp(v42, v47, v46);
            v49 = v48 == 0;
            v50 = v48 != 0;
            if (v44 < 0)
            {
              goto LABEL_75;
            }
          }

LABEL_76:
          if (!v49 && v50 != 3 && v50)
          {
            return 0;
          }

LABEL_37:
          v25 = v30 + 2;
          if (v25 == v5)
          {
            return 1;
          }
        }

        v49 = 0;
        v50 = 3;
        if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

LABEL_75:
        operator delete(__p);
        goto LABEL_76;
      }
    }
  }

  if (v22)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (v23 == 3 || !v23)
  {
    goto LABEL_34;
  }

  return 0;
}

void sub_4B93F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4B9418(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 7968);
  v12 = *(a1 + 7976);
  v13 = v4;
  v5 = sub_4BDEE8(&v13, &v12, a2);
  if (*(a1 + 7976) == v5)
  {
    return 0;
  }

  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = *(v5 + 23);
  }

  else
  {
    v7 = v5[1];
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  if (v6 < 0)
  {
    v5 = *v5;
  }

  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  return memcmp(v5, v10, v7) == 0;
}

uint64_t sub_4B94D8(void *a1, void *a2)
{
  v4 = sub_4D1DC0(a2);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = sub_4D1F50(a2, 0);
  sub_4B7288(a1, *(v6 + 32) | (*(v6 + 36) << 32), &__p);
  v7 = a1[996];
  v54 = a1[997];
  v55 = v7;
  v8 = sub_4BDEE8(&v55, &v54, &__p);
  if (a1[997] == v8)
  {
    goto LABEL_15;
  }

  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = *(v8 + 23);
  }

  else
  {
    v10 = v8[1];
  }

  v11 = v53;
  v12 = v53;
  if ((v53 & 0x80u) != 0)
  {
    v11 = v52;
  }

  if (v10 != v11)
  {
    goto LABEL_15;
  }

  if (v9 < 0)
  {
    v8 = *v8;
  }

  v13 = (v53 & 0x80u) == 0 ? &__p : __p;
  if (!memcmp(v8, v13, v10))
  {
    v22 = 0;
    v23 = 3;
    if (v12 < 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_15:
    v14 = a1[992];
    v54 = a1[993];
    v55 = v14;
    v15 = sub_4BDEE8(&v55, &v54, &__p);
    v16 = v53;
    v17 = v53;
    if (a1[993] == v15)
    {
      goto LABEL_30;
    }

    v18 = *(v15 + 23);
    if (v18 >= 0)
    {
      v19 = *(v15 + 23);
    }

    else
    {
      v19 = v15[1];
    }

    if ((v53 & 0x80u) != 0)
    {
      v16 = v52;
    }

    if (v19 != v16)
    {
LABEL_30:
      v22 = 0;
      v23 = 1;
      if (v53 < 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v18 < 0)
      {
        v15 = *v15;
      }

      if ((v53 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v21 = memcmp(v15, p_p, v19);
      v22 = v21 == 0;
      v23 = v21 != 0;
      if (v17 < 0)
      {
LABEL_28:
        operator delete(__p);
        if (!v22)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v5 == 1)
        {
          return 1;
        }

        v25 = 1;
        while (1)
        {
          v26 = sub_4D1F50(a2, v25);
          v27 = (*v26 - **v26);
          if (*v27 >= 0xDu && (v28 = v27[6]) != 0)
          {
            v29 = *(*v26 + v28);
          }

          else
          {
            v29 = 0;
          }

          v30 = v25 - 1;
          v31 = sub_4D1F50(a2, v30);
          v32 = (*v31 - **v31);
          if (*v32 >= 0xDu && (v33 = v32[6]) != 0)
          {
            if (*(*v31 + v33) == v29)
            {
              goto LABEL_37;
            }
          }

          else if (!v29)
          {
            goto LABEL_37;
          }

          sub_4B7288(a1, *(v26 + 8) | (*(v26 + 18) << 32), &__p);
          v34 = a1[996];
          v54 = a1[997];
          v55 = v34;
          v35 = sub_4BDEE8(&v55, &v54, &__p);
          if (a1[997] != v35)
          {
            v36 = *(v35 + 23);
            if (v36 >= 0)
            {
              v37 = *(v35 + 23);
            }

            else
            {
              v37 = v35[1];
            }

            v38 = v53;
            v39 = v53;
            if ((v53 & 0x80u) != 0)
            {
              v38 = v52;
            }

            if (v37 == v38)
            {
              if (v36 < 0)
              {
                v35 = *v35;
              }

              v40 = (v53 & 0x80u) == 0 ? &__p : __p;
              if (!memcmp(v35, v40, v37))
              {
                break;
              }
            }
          }

          v41 = a1[992];
          v54 = a1[993];
          v55 = v41;
          v42 = sub_4BDEE8(&v55, &v54, &__p);
          v43 = v53;
          v44 = v53;
          if (a1[993] == v42)
          {
            goto LABEL_74;
          }

          v45 = *(v42 + 23);
          if (v45 >= 0)
          {
            v46 = *(v42 + 23);
          }

          else
          {
            v46 = v42[1];
          }

          if ((v53 & 0x80u) != 0)
          {
            v43 = v52;
          }

          if (v46 != v43)
          {
LABEL_74:
            v49 = 0;
            v50 = 1;
            if (v53 < 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v45 < 0)
            {
              v42 = *v42;
            }

            if ((v53 & 0x80u) == 0)
            {
              v47 = &__p;
            }

            else
            {
              v47 = __p;
            }

            v48 = memcmp(v42, v47, v46);
            v49 = v48 == 0;
            v50 = v48 != 0;
            if (v44 < 0)
            {
              goto LABEL_75;
            }
          }

LABEL_76:
          if (!v49 && v50 != 3 && v50)
          {
            return 0;
          }

LABEL_37:
          v25 = v30 + 2;
          if (v25 == v5)
          {
            return 1;
          }
        }

        v49 = 0;
        v50 = 3;
        if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

LABEL_75:
        operator delete(__p);
        goto LABEL_76;
      }
    }
  }

  if (v22)
  {
    goto LABEL_34;
  }

LABEL_32:
  if (v23 == 3 || !v23)
  {
    goto LABEL_34;
  }

  return 0;
}

void sub_4B98A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_4B98C4(void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_4B9938(uint64_t *a1, uint64_t a2, void *a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = a1[1];
  v86 = *a1;
  v87 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_3603F0((a1 + 2), &v86);
  v6 = v87;
  if (v87 && !atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  a1[980] = 850045863;
  a1[992] = 0;
  v7 = (a1 + 988);
  a1[994] = 0;
  a1[993] = 0;
  *(a1 + 7960) = 0;
  a1[996] = 0;
  a1[998] = 0;
  a1[997] = 0;
  *(a1 + 7992) = 0;
  *(a1 + 8000) = 0;
  a1[1001] = 0;
  a1[1003] = 0;
  a1[1002] = 0;
  *(a1 + 981) = 0u;
  *(a1 + 983) = 0u;
  *(a1 + 985) = 0u;
  *(a1 + 987) = 0u;
  *(a1 + 989) = 0u;
  *(a1 + 7928) = 0;
  __p[23] = 16;
  strcpy(__p, "standard_regions");
  v70 = (a1 + 992);
  v8 = sub_5F680(a3, __p);
  v9 = v8;
  v71 = a3;
  v69 = (a1 + 996);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v10 = v9[1] - *v9;
    if (!v10)
    {
LABEL_12:
      v11 = *v9;
      v12 = v9[1];
      if (*v9 != v12)
      {
        while (1)
        {
          if (*(v11 + 8) != 5)
          {
            sub_5AF20();
          }

          v13 = *v11;
          v82 = 7;
          strcpy(v81, "country");
          v80 = 0;
          LOBYTE(v79) = 0;
          sub_5FB24(v13, v81, &v79, __p);
          if (v80 < 0)
          {
            operator delete(v79);
            if (v82 < 0)
            {
              goto LABEL_24;
            }

LABEL_19:
            v14 = __p[23];
            v15 = __p[23];
            if (__p[23] < 0)
            {
              v14 = *&__p[8];
            }

            if (!v14)
            {
              goto LABEL_14;
            }

LABEL_27:
            v82 = 8;
            strcpy(v81, "coverage");
            v17 = sub_5F8FC(v13, v81);
            v18 = sub_4BA79C(v17, v17);
            if (v82 < 0)
            {
              v21 = v18;
              operator delete(v81[0]);
              v18 = v21;
              LODWORD(v79) = v21;
              v19 = v84;
              if (v84 >= v85)
              {
LABEL_33:
                v84 = sub_4BB120(&v83, __p, &v79);
                if ((__p[23] & 0x80) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_34;
              }
            }

            else
            {
              LODWORD(v79) = v18;
              v19 = v84;
              if (v84 >= v85)
              {
                goto LABEL_33;
              }
            }

            if ((__p[23] & 0x80000000) != 0)
            {
              sub_325C(v19, *__p, *&__p[8]);
              *(v19 + 24) = v79;
              v84 = v19 + 32;
              if ((__p[23] & 0x80) == 0)
              {
                goto LABEL_15;
              }
            }

            else
            {
              v20 = *__p;
              *(v19 + 16) = *&__p[16];
              *v19 = v20;
              *(v19 + 24) = v18;
              v84 = v19 + 32;
              if ((__p[23] & 0x80) == 0)
              {
                goto LABEL_15;
              }
            }

LABEL_34:
            operator delete(*__p);
            v11 += 16;
            if (v11 == v12)
            {
              break;
            }
          }

          else
          {
            if ((v82 & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_24:
            operator delete(v81[0]);
            v16 = __p[23];
            v15 = __p[23];
            if (__p[23] < 0)
            {
              v16 = *&__p[8];
            }

            if (v16)
            {
              goto LABEL_27;
            }

LABEL_14:
            if (v15 < 0)
            {
              goto LABEL_34;
            }

LABEL_15:
            v11 += 16;
            if (v11 == v12)
            {
              break;
            }
          }
        }
      }

      sub_4BA984(&v83);
      sub_4BAF88(__p, &v83);
      v78 = 0;
      sub_4BDB84(__p);
      v22 = 1;
      v78 = 1;
      v23 = *v7;
      if (*v7)
      {
        v24 = a1[989];
        v25 = *v7;
        if (v24 != v23)
        {
          do
          {
            v26 = *(v24 - 9);
            v24 -= 4;
            if (v26 < 0)
            {
              operator delete(*v24);
            }
          }

          while (v24 != v23);
          v25 = *v7;
        }

        a1[989] = v23;
        operator delete(v25);
        *v7 = 0;
        a1[989] = 0;
        a1[990] = 0;
        v22 = v78;
      }

      *(a1 + 494) = *__p;
      a1[990] = *&__p[16];
      *(a1 + 7928) = v22;
      __p[23] = 17;
      strcpy(__p, "traffic_countries");
      v27 = sub_5F680(v71, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_4BAAA8(v81, v27);
      sub_93524(v81);
      sub_99A14(__p, v81);
      v78 = 0;
      sub_4BDC7C(__p);
      v28 = 1;
      v78 = 1;
      v29 = *v70;
      if (*v70)
      {
        v30 = a1[993];
        v31 = *v70;
        if (v30 != v29)
        {
          do
          {
            v32 = *(v30 - 1);
            v30 -= 3;
            if (v32 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v29);
          v31 = *v70;
        }

        a1[993] = v29;
        operator delete(v31);
        *v70 = 0;
        a1[993] = 0;
        a1[994] = 0;
        v28 = v78;
      }

      *(a1 + 496) = *__p;
      a1[994] = *&__p[16];
      *(a1 + 7960) = v28;
      __p[23] = 14;
      strcpy(__p, "fake_countries");
      v33 = sub_5F680(v71, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_4BAAA8(&v79, v33);
      sub_93524(&v79);
      sub_99A14(__p, &v79);
      v78 = 0;
      sub_4BDC7C(__p);
      v34 = 1;
      v78 = 1;
      v35 = *v69;
      if (*v69)
      {
        v36 = a1[997];
        v37 = *v69;
        if (v36 != v35)
        {
          do
          {
            v38 = *(v36 - 1);
            v36 -= 3;
            if (v38 < 0)
            {
              operator delete(*v36);
            }
          }

          while (v36 != v35);
          v37 = *v69;
        }

        a1[997] = v35;
        operator delete(v37);
        *v69 = 0;
        a1[997] = 0;
        a1[998] = 0;
        v34 = v78;
      }

      *(a1 + 498) = *__p;
      a1[998] = *&__p[16];
      *(a1 + 7992) = v34;
      __p[23] = 12;
      strcpy(__p, "border_types");
      v39 = sub_5F680(v71, __p);
      if ((__p[23] & 0x80000000) == 0)
      {
        v40 = *v39;
        v41 = v39[1];
        if (*v39 != v41)
        {
          goto LABEL_73;
        }

LABEL_140:
        operator new();
      }

      v42 = v39;
      operator delete(*__p);
      v40 = *v42;
      v41 = v42[1];
      if (*v42 == v41)
      {
        goto LABEL_140;
      }

      while (1)
      {
LABEL_73:
        if (*(v40 + 8) != 6)
        {
          sub_5AF20();
        }

        v43 = *v40;
        v44 = sub_35225C(*v40, 2uLL);
        if (v44[2] != 1)
        {
          sub_5AF20();
        }

        v45 = *v44;
        if (*(*v44 + 23) < 0)
        {
          sub_325C(v75, *v45, *(v45 + 1));
        }

        else
        {
          v46 = *v45;
          v76 = *(v45 + 2);
          *v75 = v46;
        }

        if (SHIBYTE(v76) < 0)
        {
          sub_325C(__p, v75[0], v75[1]);
          if (SHIBYTE(v76) < 0)
          {
            operator delete(v75[0]);
            LODWORD(v47) = __p[23];
            if ((__p[23] & 0x80) != 0)
            {
LABEL_80:
              if (*&__p[8] != 11 || (**__p == 0x616E65705F776F6CLL ? (v48 = *(*__p + 3) == 0x79746C616E65705FLL) : (v48 = 0), !v48))
              {
                if (*&__p[8] != 12 || (**__p == 0x6E65705F68676968 ? (v49 = *(*__p + 8) == 2037673057) : (v49 = 0), !v49))
                {
LABEL_141:
                  exception = __cxa_allocate_exception(0x40uLL);
                  std::operator+<char>();
                  if (v76 >= 0)
                  {
                    v66 = v75;
                  }

                  else
                  {
                    v66 = v75[0];
                  }

                  if (v76 >= 0)
                  {
                    v67 = HIBYTE(v76);
                  }

                  else
                  {
                    v67 = v75[1];
                  }

                  v68 = sub_2D390(exception, v66, v67);
                }
              }

              goto LABEL_100;
            }
          }

          else
          {
            LODWORD(v47) = __p[23];
            if ((__p[23] & 0x80) != 0)
            {
              goto LABEL_80;
            }
          }
        }

        else
        {
          *__p = *v75;
          *&__p[16] = v76;
          v47 = HIBYTE(v76);
          if (v76 < 0)
          {
            goto LABEL_80;
          }
        }

        if (v47 == 11)
        {
          if (*__p != 0x616E65705F776F6CLL || *&__p[3] != 0x79746C616E65705FLL)
          {
            goto LABEL_141;
          }

          goto LABEL_113;
        }

        if (v47 != 12)
        {
          goto LABEL_141;
        }

        if (*__p != 0x6E65705F68676968 || *&__p[8] != 2037673057)
        {
          goto LABEL_141;
        }

LABEL_100:
        if ((v47 & 0x80) != 0)
        {
          if (*&__p[8] == 12)
          {
            v51 = *__p;
            v52 = bswap64(**__p);
            v53 = 0x686967685F70656ELL;
            if (v52 == 0x686967685F70656ELL)
            {
LABEL_111:
              v52 = bswap32(*(v51 + 2));
              v53 = 1634497657;
              if (v52 == 1634497657)
              {
                v55 = 0;
LABEL_117:
                if (v55)
                {
                  v56 = 2;
                }

                else
                {
                  v56 = 3;
                }

                goto LABEL_120;
              }
            }

LABEL_114:
            if (v52 < v53)
            {
              v55 = -1;
            }

            else
            {
              v55 = 1;
            }

            goto LABEL_117;
          }
        }

        else if (v47 == 12)
        {
          v51 = __p;
          v52 = bswap64(*__p);
          v53 = 0x686967685F70656ELL;
          if (v52 == 0x686967685F70656ELL)
          {
            goto LABEL_111;
          }

          goto LABEL_114;
        }

LABEL_113:
        v56 = 2;
LABEL_120:
        v74 = v56;
        v57 = sub_35225C(v43, 0);
        if (v57[2] != 1)
        {
          sub_5AF20();
        }

        v58 = *v57;
        if (*(*v57 + 23) < 0)
        {
          sub_325C(v75, *v58, *(v58 + 1));
        }

        else
        {
          v59 = *v58;
          v76 = *(v58 + 2);
          *v75 = v59;
        }

        v60 = sub_35225C(v43, 1uLL);
        if (v60[2] != 1)
        {
          sub_5AF20();
        }

        v61 = *v60;
        if (*(*v60 + 23) < 0)
        {
          sub_325C(v72, *v61, *(v61 + 1));
        }

        else
        {
          v62 = *v61;
          v73 = *(v61 + 2);
          *v72 = v62;
        }

        v63 = a1[1002];
        if (v63 >= a1[1003])
        {
          v64 = sub_4BB27C(a1 + 1001, v75, v72, &v74);
        }

        else
        {
          sub_4BB474(a1[1002], v75, v72, v74);
          v64 = v63 + 56;
          a1[1002] = v63 + 56;
        }

        a1[1002] = v64;
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72[0]);
          if (SHIBYTE(v76) < 0)
          {
            goto LABEL_71;
          }

LABEL_135:
          if ((__p[23] & 0x80000000) == 0)
          {
            goto LABEL_72;
          }

LABEL_136:
          operator delete(*__p);
          v40 += 16;
          if (v40 == v41)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if ((SHIBYTE(v76) & 0x80000000) == 0)
          {
            goto LABEL_135;
          }

LABEL_71:
          operator delete(v75[0]);
          if ((__p[23] & 0x80000000) != 0)
          {
            goto LABEL_136;
          }

LABEL_72:
          v40 += 16;
          if (v40 == v41)
          {
            goto LABEL_140;
          }
        }
      }
    }
  }

  else
  {
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v10 = v8[1] - *v8;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (!((v10 >> 4) >> 59))
  {
    operator new();
  }

  sub_1794();
}

void sub_4BA4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, void ***a11, void ***a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a36);
  sub_1A104((v42 - 152));
  sub_4B98C4((v42 - 128));
  sub_310494((v41 + 8008));
  sub_1A104(a11);
  sub_1A104(a12);
  sub_4B98C4(a10);
  std::mutex::~mutex((v41 + 7840));
  sub_360B9C((v41 + 16));
  sub_1F1A8(v41);
  _Unwind_Resume(a1);
}