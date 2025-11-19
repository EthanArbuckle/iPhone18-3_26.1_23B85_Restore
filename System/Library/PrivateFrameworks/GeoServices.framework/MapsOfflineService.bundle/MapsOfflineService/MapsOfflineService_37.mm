uint64_t *sub_2BDBAC(void *a1, unsigned int a2)
{
  v4 = nullsub_1(*a1);
  v5 = v4[1];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2;
    if (v5 <= a2)
    {
      v7 = a2 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & a2;
  }

  v8 = *(*v4 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_21:
    nullsub_1(*a1);
    return a1 + 1;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = v5 - 1;
    while (1)
    {
      v11 = v9[1];
      if (v11 == a2)
      {
        if (*(v9 + 4) == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v11 & v10) != v7)
      {
        goto LABEL_21;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 == a2)
    {
      break;
    }

    if (v12 >= v5)
    {
      v12 %= v5;
    }

    if (v12 != v7)
    {
      goto LABEL_21;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (*(v9 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  nullsub_1(*a1);
  return v9 + 9;
}

uint64_t sub_2BDCE4(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 248);
    v5 = *(v3 + 256);
    v6 = v5 - v4;
    if (v5 - v4 >= 12)
    {
      v7 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v8 = a2 & 0xFF000000000000;
      if (v6 != 12)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
        if (v8)
        {
          v10 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v10 = v7 + 1;
        }

        do
        {
          v11 = 3 * (v9 >> 2);
          _X17 = &v4[v11];
          __asm { PRFM            #0, [X17] }

          v18 = &v4[3 * (v9 >> 1)];
          _X16 = &v18[v11];
          __asm { PRFM            #0, [X16] }

          v21 = (*v18 << 32) | (*(v18 + 2) << 16);
          if (!*(v18 + 6))
          {
            ++v21;
          }

          if (v21 >= v10)
          {
            v22 = 0;
          }

          else
          {
            v22 = v9 >> 1;
          }

          v4 += 3 * v22;
          v9 -= v9 >> 1;
        }

        while (v9 > 1);
      }

      v23 = (*v4 << 32) | (*(v4 + 2) << 16);
      if (!*(v4 + 6))
      {
        ++v23;
      }

      if (!v8)
      {
        ++v7;
      }

      v4 += 3 * (v23 < v7);
    }

    if (v4 != v5)
    {
      while (*v4 == a2 && *(v4 + 2) == WORD2(a2) && *(v4 + 6) == BYTE6(a2))
      {
        if ((v4[2] & (1 << a3)) != 0)
        {
          return 1;
        }

        v4 += 3;
        if (v4 == v5)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2BDE28(_BYTE *a1)
{
  if (!*a1 || a1[37])
  {
    return 0;
  }

  if (a1[34])
  {
    return (*(*a1 + 4) >> a1[34]) & 1;
  }

  return 1;
}

__n128 sub_2BDE60@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_13;
  }

  v5 = *(v3 + 336);
  v4 = *(v3 + 344);
  v6 = (v4 - v5) >> 6;
  if (v6 >= 1)
  {
    if (v4 - v5 != 64)
    {
      do
      {
        v7 = (16 * v6) & 0xFFFFFFFFFFFFFFC0;
        _X13 = v5 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v5[4 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*(v14 + 4) >= a2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v5 += 4 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
    }

    v5 += 4 * (*(v5 + 4) < a2);
  }

  if (v5 == v4)
  {
LABEL_13:
    result.n128_u64[0] = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
  }

  else
  {
    while (1)
    {
      if (*(v5 + 4) != a2)
      {
        goto LABEL_13;
      }

      if ((*(v5 + 6) >> *(a1 + 37)))
      {
        break;
      }

      v5 += 4;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    if (*(v5 + 23) < 0)
    {
      v20 = a3;
      sub_325C(a3, *v5, *(v5 + 1));
      a3 = v20;
      *(v20 + 24) = *(v5 + 24);
      if ((*(v5 + 63) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v19;
      *(a3 + 24) = *(v5 + 24);
      if ((*(v5 + 63) & 0x80000000) == 0)
      {
LABEL_16:
        result = *(v5 + 40);
        *(a3 + 56) = *(v5 + 7);
        *(a3 + 40) = result;
        return result;
      }
    }

    sub_325C((a3 + 40), *(v5 + 5), *(v5 + 6));
  }

  return result;
}

void sub_2BDFAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BDFC8(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  if (*a1 && sub_329BC(a2))
  {
    v6 = *a1;
    if (*(*a1 + 608) == *(*a1 + 616) && v6[19] != v6[20] && *(a1 + 32) == 1)
    {
      sub_2BE214(a1);
      v6 = *a1;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v7 = v6[76];
    v8 = v6[77];
    while (v7 != v8)
    {
      v10 = *(v7 + 104);
      if (*(a1 + 34) == v10 && (*(v7 + 144) & 7) != 0 || *(a1 + 35) == v10 && (*(v7 + 144) & 0x20) != 0 || *(a1 + 36) == v10 && (*(v7 + 144) & 0x10) != 0 || *(a1 + 37) == v10 && (*(v7 + 144) & 8) != 0 || (v11 = *(v7 + 112), *(v7 + 120) - v11 == 16) && *v11 == sub_32410() && *(v11 + 8) == v12 && *(v11 + 12) == v13)
      {
        v14 = *(v7 + 112);
        v15 = *(v7 + 120);
        if (v14 != v15)
        {
          while (!sub_32ACC(v14, a2))
          {
            v14 += 4;
            if (v14 == v15)
            {
              goto LABEL_7;
            }
          }

          v16 = a3[1];
          if (v16 >= a3[2])
          {
            v9 = sub_1CEE8(a3, v7 + 56);
          }

          else
          {
            if (*(v7 + 79) < 0)
            {
              sub_325C(a3[1], *(v7 + 56), *(v7 + 64));
            }

            else
            {
              v17 = *(v7 + 56);
              *(v16 + 16) = *(v7 + 72);
              *v16 = v17;
            }

            v9 = v16 + 24;
          }

          a3[1] = v9;
        }
      }

LABEL_7:
      v7 += 152;
    }

    sub_93524(a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_2BE1C0(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1A104(v1);
  _Unwind_Resume(a1);
}

void sub_2BE214(uint64_t **a1)
{
  v2 = sub_2D52A4(a1[2], 11, 1u, 1);
  if (v3)
  {
    v4 = (v2 + *v2);
    v5 = (v4 - *v4);
    if (*v5 >= 5u)
    {
      v6 = v5[2];
      if (v6)
      {
        v7 = (v4 + v6 + *(v4 + v6));
        v8 = (v7 - *v7);
        if (*v8 >= 5u)
        {
          v9 = v8[2];
          if (v9)
          {
            v10 = (v7 + v9 + *(v7 + v9));
            v11 = *v10;
            if (v11)
            {
              v12 = *a1;
              v46 = vdupq_n_s64(8uLL);
              v13 = &v10[v11];
              v44 = v13;
              v45 = v12;
              while (1)
              {
                v14 = v10[1];
                v15 = (++v10 + v14);
                v16 = (v15 - *v15);
                v17 = *v16;
                if (v17 < 5)
                {
                  goto LABEL_8;
                }

                v18 = v16[2];
                v19 = v17 < 7 || v18 == 0;
                if (v19 || !v16[3])
                {
                  goto LABEL_8;
                }

                memset(v48, 0, sizeof(v48));
                *v47 = 0u;
                v49 = 0x8000000080000000;
                v50 = 0u;
                memset(v51, 0, sizeof(v51));
                v52 = -1;
                *__p = 0u;
                memset(v54, 0, sizeof(v54));
                v20 = (v15 + v18);
                v21 = *v20;
                v22 = *(v20 + v21);
                if (v22 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v56) = *(v20 + v21);
                if (v22)
                {
                  memcpy(&__dst, v20 + v21 + 4, v22);
                }

                *(&__dst + v22) = 0;
                v50 = __dst;
                v51[0] = v56;
                v52 = 0;
                *&v54[1] = v46;
                v23 = (v15 - *v15);
                if (*v23 < 7u)
                {
                  break;
                }

                v24 = v23[3];
                if (v24)
                {
                  v24 = (v24 + v15 + *(v24 + v15));
                }

                v25 = *v24;
                if (v25)
                {
                  goto LABEL_26;
                }

LABEL_47:
                v37 = v45[77];
                if (v37 >= v45[78])
                {
                  v42 = sub_2C7084(v45 + 76, v47);
                  v43 = __p[0];
                  v45[77] = v42;
                  if (v43)
                  {
                    __p[1] = v43;
                    operator delete(v43);
                  }
                }

                else
                {
                  v38 = *v47;
                  *(v37 + 16) = v48[0];
                  *v37 = v38;
                  v47[1] = 0;
                  v48[0] = 0;
                  v47[0] = 0;
                  v39 = v48[3];
                  *(v37 + 24) = *&v48[1];
                  *(v37 + 40) = v39;
                  memset(&v48[1], 0, 24);
                  *(v37 + 48) = v49;
                  v40 = v50;
                  *(v37 + 72) = v51[0];
                  *(v37 + 56) = v40;
                  v50 = 0uLL;
                  v41 = *&v51[1];
                  *(v37 + 96) = v51[3];
                  *(v37 + 80) = v41;
                  memset(v51, 0, sizeof(v51));
                  *(v37 + 104) = v52;
                  *(v37 + 112) = 0;
                  *(v37 + 120) = 0;
                  *(v37 + 128) = 0;
                  *(v37 + 112) = *__p;
                  *(v37 + 128) = v54[0];
                  __p[0] = 0;
                  __p[1] = 0;
                  v54[0] = 0;
                  *(v37 + 136) = *&v54[1];
                  v45[77] = v37 + 152;
                }

                v13 = v44;
                if (SHIBYTE(v51[3]) < 0)
                {
                  operator delete(v51[1]);
                  if ((SHIBYTE(v51[0]) & 0x80000000) == 0)
                  {
LABEL_53:
                    if ((SHIBYTE(v48[3]) & 0x80000000) == 0)
                    {
                      goto LABEL_54;
                    }

                    goto LABEL_58;
                  }
                }

                else if ((SHIBYTE(v51[0]) & 0x80000000) == 0)
                {
                  goto LABEL_53;
                }

                operator delete(v50);
                if ((SHIBYTE(v48[3]) & 0x80000000) == 0)
                {
LABEL_54:
                  if (SHIBYTE(v48[0]) < 0)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_8;
                }

LABEL_58:
                operator delete(v48[1]);
                if (SHIBYTE(v48[0]) < 0)
                {
LABEL_59:
                  operator delete(v47[0]);
                }

LABEL_8:
                if (v10 == v13)
                {
                  return;
                }
              }

              v24 = 0;
              v25 = 4277009103;
LABEL_26:
              v26 = &v24[4 * v25 + 1];
              v27 = v24 + 1;
              do
              {
                LODWORD(v29) = v27[1];
                if (v29 >= 0xFFFFFFFE)
                {
                  v29 = 4294967294;
                }

                else
                {
                  v29 = v29;
                }

                v59 = *v27 | (v29 << 32);
                v60 = 0x7FFFFFFF;
                LODWORD(v29) = v27[3];
                if (v29 >= 0xFFFFFFFE)
                {
                  v29 = 4294967294;
                }

                else
                {
                  v29 = v29;
                }

                v57 = v27[2] | (v29 << 32);
                v58 = 0x7FFFFFFF;
                sub_320C0(&__dst, &v59, &v57);
                v30 = __p[1];
                if (__p[1] < v54[0])
                {
                  *__p[1] = __dst;
                  v28 = v30 + 16;
                }

                else
                {
                  v31 = __p[0];
                  v32 = __p[1] - __p[0];
                  v33 = (__p[1] - __p[0]) >> 4;
                  v34 = v33 + 1;
                  if ((v33 + 1) >> 60)
                  {
                    sub_1794();
                  }

                  v35 = v54[0] - __p[0];
                  if ((v54[0] - __p[0]) >> 3 > v34)
                  {
                    v34 = v35 >> 3;
                  }

                  if (v35 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v36 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v36 = v34;
                  }

                  if (v36)
                  {
                    if (!(v36 >> 60))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  *(16 * v33) = __dst;
                  v28 = (16 * v33 + 16);
                  memcpy(0, v31, v32);
                  __p[0] = 0;
                  __p[1] = v28;
                  v54[0] = 0;
                  if (v31)
                  {
                    operator delete(v31);
                  }
                }

                __p[1] = v28;
                v27 += 4;
              }

              while (v27 != v26);
              goto LABEL_47;
            }
          }
        }
      }
    }
  }
}

void sub_2BE6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_2BE6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_2BE6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_2BE6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2C6FE8(va);
  _Unwind_Resume(a1);
}

void sub_2BE700(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a1;
  if (*a1)
  {
    v8 = *(v4 + 520);
    v9 = *(v4 + 528);
    v10 = (v9 - v8) >> 5;
    if (v10 >= 1)
    {
      if (v9 - v8 != 32)
      {
        do
        {
          v11 = (8 * v10) & 0xFFFFFFFFFFFFFFE0;
          _X12 = v8 + v11;
          __asm { PRFM            #0, [X12] }

          v18 = (v8 + 32 * (v10 >> 1));
          _X11 = v18 + v11;
          __asm { PRFM            #0, [X11] }

          if (*v18 >= a2)
          {
            v21 = 0;
          }

          else
          {
            v21 = v10 >> 1;
          }

          v8 += 32 * v21;
          v10 -= v10 >> 1;
        }

        while (v10 > 1);
      }

      v8 += 32 * (*v8 < a2);
    }

    if (v9 != v8 && *v8 == a2)
    {
      v22 = 0;
      v29 = a3;
      do
      {
        if (*v8 != a2)
        {
          break;
        }

        if ((*(v8 + 8) >> *(a1 + 37)))
        {
          if (a3)
          {
            if (*(v8 + 28) != -1)
            {
              goto LABEL_21;
            }
          }

          else if (*(v8 + 24) != -1)
          {
LABEL_21:
            v23 = a4[2];
            if (v22 < v23)
            {
              *v22 = v8;
              v22 += 8;
            }

            else
            {
              v24 = v22;
              v25 = v22 >> 3;
              v26 = v25 + 1;
              if ((v25 + 1) >> 61)
              {
                *a4 = 0;
                sub_1794();
              }

              if (v23 >> 2 > v26)
              {
                v26 = v23 >> 2;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF8)
              {
                v27 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v27 = v26;
              }

              if (v27)
              {
                if (!(v27 >> 61))
                {
                  operator new();
                }

                *a4 = 0;
                sub_1808();
              }

              v28 = (8 * v25);
              *v28 = v8;
              v22 = (v28 + 1);
              memcpy(0, 0, v24);
              a4[1] = v22;
              a4[2] = 0;
              a3 = v29;
            }

            a4[1] = v22;
            v9 = *(v4 + 528);
          }
        }

        v8 += 32;
      }

      while (v8 != v9);
    }

    *a4 = 0;
  }
}

void sub_2BE90C(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2BE938(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2 + 496;
    v3 = *(v2 + 496);
    if (0x6F96F96F96F96F97 * ((*(v4 + 8) - v3) >> 3) > a2)
    {
      return (v3 + 312 * a2);
    }
  }

  result = &unk_278F088;
  if ((atomic_load_explicit(&qword_278F080, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_278F080))
    {
      sub_2C094C(&unk_278F088);
      __cxa_guard_release(&qword_278F080);
    }

    return &unk_278F088;
  }

  return result;
}

unsigned int *sub_2BEA04(unsigned __int8 *a1, unint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = (v5 - v4) >> 6;
  if (v6 >= 1)
  {
    v7 = (a2 >> 30) & 0xFFFFFFFC | (a2 << 32) | (a2 >> 63) | (a2 >> 61) & 2;
    if (v5 - v4 != 64)
    {
      do
      {
        v8 = (16 * v6) & 0xFFFFFFFFFFFFFFC0;
        _X16 = v4 + v8;
        __asm { PRFM            #0, [X16] }

        v15 = &v4[16 * (v6 >> 1)];
        _X15 = v15 + v8;
        __asm { PRFM            #0, [X15] }

        if (((4 * v15[1]) | (*v15 << 32) | (v15[1] >> 31) | (v15[1] >> 29) & 2) >= v7)
        {
          v18 = 0;
        }

        else
        {
          v18 = v6 >> 1;
        }

        v4 += 16 * v18;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
    }

    v4 += 16 * (((4 * v4[1]) | (*v4 << 32) | (v4[1] >> 31) | (v4[1] >> 29) & 2) < v7);
  }

  if (v4 != v5)
  {
    v19 = v4;
    while (((4 * v4[1]) | (*v4 << 32) | (v4[1] >> 31) | (v4[1] >> 29) & 2) == ((a2 >> 30) & 0xFFFFFFFC | (a2 << 32) | (a2 >> 63) | (a2 >> 61) & 2))
    {
      if (a1[34] == *(v4 + 16))
      {
        if (a4)
        {
          v23 = a1;
          v24 = sub_2BEBF0(a1, v19, a2, a3, a4);
          a1 = v23;
          if (v5 != v24)
          {
            return v24;
          }
        }

        return sub_2BEBF0(a1, v19, a2, a3, 0);
      }

      v4 += 16;
      v19 += 16;
      if (v4 == v5)
      {
        return *(*a1 + 40);
      }
    }
  }

  return *(*a1 + 40);
}

unsigned int *sub_2BEBF0(unsigned __int8 *a1, unsigned int *a2, unint64_t a3, uint64_t a4, int a5)
{
  v5 = *(*a1 + 40);
  if (v5 != a2)
  {
    v6 = a1[34];
    v7 = (a3 >> 30) & 0xFFFFFFFC | (a3 << 32) | (a3 >> 63) | (a3 >> 61) & 2;
    result = a2;
    while (((4 * result[1]) | (*result << 32) | (result[1] >> 31) | (result[1] >> 29) & 2) == v7)
    {
      if (v6 != *(result + 16) || *(result + 17) == a5)
      {
        if (v6 != *(result + 16))
        {
          return v5;
        }

        if (result[2])
        {
          v9 = *a4;
          v10 = *(a4 + 8);
          if (*a4 == v10)
          {
            return v5;
          }

          v11 = v5;
          if (result != v5)
          {
LABEL_16:
            while (((4 * result[1]) | (*result << 32) | (result[1] >> 31) | (result[1] >> 29) & 2) == v7 && *(result + 16) == v6 && *(result + 17) == a5)
            {
              result += 16;
              if (result == v5)
              {
                goto LABEL_22;
              }
            }

            v5 = result;
          }
        }

        else
        {
          v9 = *a4;
          v10 = *(a4 + 8);
          if (*a4 == v10)
          {
            return result;
          }

          a2 += 16;
          v11 = result;
          if (result != v5)
          {
            goto LABEL_16;
          }
        }

LABEL_22:
        if (v5 == a2 || v9 == v10)
        {
          return v11;
        }

        result = a2;
        if (a2 != v5)
        {
          while (1)
          {
            result = a2;
            while (((4 * result[3]) | (result[2] << 32) | (result[3] >> 31) | (result[3] >> 29) & 2) != ((*v9 >> 30) & 0xFFFFFFFCLL | (*v9 << 32) | (*v9 >> 63) | (*v9 >> 61) & 2))
            {
              result += 16;
              if (result == v5)
              {
                result = v5;
                break;
              }
            }

            if (v5 != result)
            {
              break;
            }

            if (++v9 == v10)
            {
              return v11;
            }
          }
        }

        return result;
      }

      result += 16;
      a2 += 16;
      if (result == v5)
      {
        return v5;
      }
    }
  }

  return v5;
}

void sub_2BEDA8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v8 = sub_2D52A4(a1[2], 11, a2, 1);
  if (!v9)
  {
    return;
  }

  v10 = (v8 + *v8);
  v11 = (v10 - *v10);
  if (*v11 < 7u)
  {
    return;
  }

  v12 = v11[3];
  if (!v12)
  {
    return;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  LODWORD(__key) = WORD2(v6);
  v14 = bsearch(&__key, v13 + 1, *v13, 4uLL, sub_2C4D48);
  if (!v14)
  {
    return;
  }

  v15 = (v14 + *v14);
  v16 = (v15 - *v15);
  if (*v16 < 7u)
  {
    return;
  }

  if (!v16[3])
  {
    return;
  }

  v17 = (v15 + v16[3] + *(v15 + v16[3]));
  v18 = *v17;
  if (!v18)
  {
    return;
  }

  v96 = 0;
  v104 = 1 << ((v6 & 0xFF000000000000) != 0);
  v103 = &v17[2 * v18 + 1];
  v19 = v17 + 1;
  v102 = v6;
  v95 = a4;
  v97 = a3;
  do
  {
    v20 = v19[1];
    if ((v20 & v104) == 0)
    {
      goto LABEL_10;
    }

    v21 = sub_2D52A4(a1[2], 11, *v19, 1);
    v105 = v19;
    if (!v22 || (v23 = (v21 + *v21), v24 = (v23 - *v23), *v24 < 9u) || !v24[4] || (v25 = (v23 + v24[4] + *(v23 + v24[4])), *v25 <= (v20 >> 4)))
    {
      if (!sub_7E7E4(3u))
      {
        goto LABEL_10;
      }

      sub_19594F8(&__key);
      sub_4A5C(&__key, "Encountered invalid incident reference (", 40);
      v47 = std::ostream::operator<<();
      sub_4A5C(v47, ", ", 2);
      v48 = std::ostream::operator<<();
      v49 = sub_4A5C(v48, ") for road segment ", 20);
      sub_30E900(v49, v6);
      if ((v115 & 0x10) != 0)
      {
        v64 = v114;
        v65 = &v110;
        if (v114 < *(&v110 + 1))
        {
          v114 = *(&v110 + 1);
          v64 = *(&v110 + 1);
          v65 = &v110;
        }
      }

      else
      {
        if ((v115 & 8) == 0)
        {
          v50 = 0;
          v145 = 0;
LABEL_75:
          *(&__dst + v50) = 0;
          sub_7E854(&__dst, 3u);
          if (v145 < 0)
          {
            operator delete(__dst);
          }

          *&__key = v99;
          *(&__key + *(v99 - 24)) = v98;
          if (SHIBYTE(v113) < 0)
          {
            operator delete(__p[0]);
          }

          std::locale::~locale(&v107);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_10;
        }

        v64 = v109;
        v65 = &v108;
      }

      v66 = *v65;
      v50 = v64 - *v65;
      if (v50 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      v145 = v64 - *v65;
      if (v50)
      {
        memmove(&__dst, v66, v50);
      }

      goto LABEL_75;
    }

    v26 = (&v25[(v20 >> 4) + 1] + v25[(v20 >> 4) + 1]);
    v27 = a3;
    v28 = *a3;
    v100 = v27[1];
    while (v28 != v100)
    {
      v29 = v28[1];
      v30 = **v28;
      v31 = (v26 + *(v26 - *v26 + 4));
      v32 = *v31;
      v33 = *(v31 + v32);
      if (v33 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v107.__locale_) = *(v31 + v32);
      if (v33)
      {
        memcpy(&__key, v31 + v32 + 4, v33);
      }

      v34 = 0;
      *(&__key + v33) = 0;
      v35 = (v30 + 464 * v29 + 48);
      v36 = *(v30 + 464 * v29 + 71);
      if (v36 >= 0)
      {
        v37 = *(v30 + 464 * v29 + 71);
      }

      else
      {
        v37 = *(v30 + 464 * v29 + 56);
      }

      locale_high = HIBYTE(v107.__locale_);
      v39 = SHIBYTE(v107.__locale_);
      if (SHIBYTE(v107.__locale_) < 0)
      {
        locale_high = *(&__key + 1);
      }

      if (v37 == locale_high)
      {
        if (v36 >= 0)
        {
          v40 = v35;
        }

        else
        {
          v40 = *v35;
        }

        if (SHIBYTE(v107.__locale_) >= 0)
        {
          p_key = &__key;
        }

        else
        {
          p_key = __key;
        }

        v34 = memcmp(v40, p_key, v37) == 0;
        v19 = v105;
        if ((v39 & 0x80000000) == 0)
        {
LABEL_29:
          if (v34)
          {
            goto LABEL_79;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v19 = v105;
        if ((SHIBYTE(v107.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      operator delete(__key);
      if (v34)
      {
LABEL_79:
        a3 = v97;
        v6 = v102;
        goto LABEL_10;
      }

LABEL_39:
      v28 += 2;
      v6 = v102;
    }

    sub_338AF4(v26, &__key);
    v42 = *(v95 + 24);
    if (!v42)
    {
      sub_2B7420();
    }

    a3 = v97;
    if ((*(*v42 + 48))(v42, &__key))
    {
      v43 = *a1;
      v44 = *(*a1 + 160);
      v45 = 0x34F72C234F72C235 * ((v44 - *(*a1 + 152)) >> 4);
      v101 = *(&__key + 1);
      v46 = __key;
      if (__key != *(&__key + 1))
      {
        do
        {
          v51 = *v46;
          v52 = v46[1];
          while (v51 != v52)
          {
            v54 = *v51;
            v55 = *a1;
            v56 = *(*a1 + 184);
            v57 = *(*a1 + 192);
            if (v56 < v57)
            {
              *v56 = v54;
              *(v56 + 8) = 1;
              v53 = v56 + 24;
              *(v56 + 16) = v45;
            }

            else
            {
              v58 = v55[22];
              v59 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v58) >> 3) + 1;
              if (v59 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1794();
              }

              v60 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v58) >> 3);
              if (2 * v60 > v59)
              {
                v59 = 2 * v60;
              }

              if (v60 >= 0x555555555555555)
              {
                v61 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v61 = v59;
              }

              if (v61)
              {
                if (v61 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_1808();
              }

              v62 = 8 * ((v56 - v58) >> 3);
              *v62 = v54;
              *(v62 + 8) = 1;
              *(v62 + 16) = v45;
              v53 = v62 + 24;
              v63 = (v62 - (v56 - v58));
              memcpy(v63, v58, v56 - v58);
              v55[22] = v63;
              v55[23] = v53;
              v55[24] = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            v55[23] = v53;
            ++v51;
          }

          v46 += 3;
        }

        while (v46 != v101);
        v43 = *a1;
        v44 = *(*a1 + 160);
        a3 = v97;
      }

      if (v44 >= *(v43 + 168))
      {
        v79 = sub_2C0B08((v43 + 152), &__key);
      }

      else
      {
        *v44 = 0;
        *(v44 + 8) = 0;
        *(v44 + 16) = 0;
        *v44 = __key;
        *(v44 + 16) = v107;
        __key = 0uLL;
        v107.__locale_ = 0;
        v67 = v109;
        *(v44 + 24) = v108;
        *(v44 + 40) = v67;
        v68 = v111;
        *(v44 + 48) = v110;
        *(v44 + 64) = v68;
        *(v44 + 72) = 0;
        v111 = 0;
        v110 = 0uLL;
        *(v44 + 80) = 0;
        *(v44 + 88) = 0;
        *(v44 + 72) = *__p;
        *(v44 + 88) = v113;
        __p[0] = 0;
        __p[1] = 0;
        v113 = 0;
        *(v44 + 96) = v114;
        v69 = v115;
        *(v44 + 120) = v116;
        *(v44 + 104) = v69;
        v115 = 0uLL;
        v70 = v117;
        *(v44 + 144) = v118;
        *(v44 + 128) = v70;
        v118 = 0;
        v116 = 0;
        v117 = 0uLL;
        v71 = v119;
        *(v44 + 168) = v120;
        *(v44 + 152) = v71;
        v72 = v121;
        *(v44 + 192) = v122;
        *(v44 + 200) = 0;
        *(v44 + 176) = v72;
        v121 = 0uLL;
        *(v44 + 208) = 0;
        *(v44 + 216) = 0;
        *(v44 + 200) = v123;
        *(v44 + 216) = v124;
        v122 = 0;
        v123 = 0uLL;
        v124 = 0;
        *(v44 + 224) = v125;
        *(v44 + 240) = 0;
        *(v44 + 248) = 0;
        *(v44 + 256) = 0;
        *(v44 + 264) = 0;
        *(v44 + 240) = v126;
        *(v44 + 256) = v127;
        v126 = 0uLL;
        *(v44 + 272) = 0;
        *(v44 + 280) = 0;
        *(v44 + 264) = v128;
        *(v44 + 272) = v129;
        v127 = 0;
        v128 = 0;
        v129 = 0uLL;
        v73 = v130;
        *(v44 + 304) = v131;
        *(v44 + 288) = v73;
        v131 = 0;
        v130 = 0uLL;
        *(v44 + 312) = v132;
        v74 = v134;
        v75 = v135;
        *(v44 + 320) = v133;
        *(v44 + 336) = v74;
        *(v44 + 352) = v75;
        *(v44 + 360) = 0;
        *(v44 + 368) = 0;
        *(v44 + 376) = 0;
        *(v44 + 360) = v136;
        *(v44 + 368) = v137;
        v136 = 0;
        v137 = 0uLL;
        *(v44 + 384) = v138;
        v76 = v139;
        v77 = v140;
        v78 = v141;
        *(v44 + 448) = v142;
        *(v44 + 416) = v77;
        *(v44 + 432) = v78;
        *(v44 + 400) = v76;
        *(v44 + 456) = v143;
        v79 = v44 + 464;
        *(v43 + 160) = v44 + 464;
      }

      *(v43 + 160) = v79;
      v80 = *a1 + 152;
      v82 = a3[1];
      v81 = a3[2];
      if (v82 >= v81)
      {
        v84 = *a3;
        v85 = v82 - *a3;
        v86 = v85 >> 4;
        v87 = (v85 >> 4) + 1;
        if (v87 >> 60)
        {
          sub_1794();
        }

        v88 = v81 - v84;
        if (v88 >> 3 > v87)
        {
          v87 = v88 >> 3;
        }

        if (v88 >= 0x7FFFFFFFFFFFFFF0)
        {
          v89 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v89 = v87;
        }

        if (v89)
        {
          if (!(v89 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v90 = (16 * v86);
        *v90 = v80;
        v90[1] = v45;
        v83 = 16 * v86 + 16;
        memcpy(0, v84, v85);
        *v97 = 0;
        v97[1] = v83;
        v97[2] = 0;
        a3 = v97;
        if (v84)
        {
          operator delete(v84);
        }
      }

      else
      {
        *v82 = v80;
        v82[1] = v45;
        v83 = (v82 + 2);
      }

      v6 = v102;
      v19 = v105;
      a3[1] = v83;
      v96 = 1;
    }

    sub_2C0F28(&__key);
LABEL_10:
    v19 += 2;
  }

  while (v19 != v103);
  if (v96)
  {
    v91 = *(*a1 + 176);
    v92 = *(*a1 + 184);
    v93 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 3));
    if (v92 == v91)
    {
      v94 = 0;
    }

    else
    {
      v94 = v93;
    }

    sub_2C4DAC(v91, v92, &__key, v94, 1);
  }
}

void sub_2BF808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void sub_2BF81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void sub_2BF830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void sub_2BF844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void sub_2BF858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void sub_2BF86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_2BF880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_2BF894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (*(v15 - 89) < 0)
  {
    operator delete(*(v15 - 112));
    sub_1959728(va);
    _Unwind_Resume(a1);
  }

  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_2BF8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void sub_2BF8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2C0F28(va);
  _Unwind_Resume(a1);
}

void *sub_2BF8F4(uint64_t a1, unsigned int a2, unsigned __int16 a3)
{
  if (!*a1)
  {
    return &unk_2290368;
  }

  if (sub_57A90(a2) < 0x14)
  {
    return &unk_2290368;
  }

  v7 = a2 >> ((sub_57A90(a2) & 0xFE) - 20);
  v8 = *(*a1 + 128);
  v9 = *(*a1 + 136);
  v10 = (v9 - v8) >> 3;
  if (v10 >= 1)
  {
    if (v9 - v8 != 8)
    {
      do
      {
        v13 = (2 * v10) & 0xFFFFFFFFFFFFFFF8;
        _X14 = v8 + v13;
        __asm { PRFM            #0, [X14] }

        v20 = v8 + 8 * (v10 >> 1);
        _X13 = v20 + v13;
        __asm { PRFM            #0, [X13] }

        v23 = *v20 < v7;
        if (*v20 == v7)
        {
          v23 = *(v20 + 4) < a3;
        }

        if (v23)
        {
          v12 = v10 >> 1;
        }

        else
        {
          v12 = 0;
        }

        v8 += 8 * v12;
        v10 -= v10 >> 1;
      }

      while (v10 > 1);
    }

    v11 = *v8 < v7;
    if (*v8 == v7)
    {
      v11 = *(v8 + 4) < a3;
    }

    v8 += 8 * v11;
  }

  if (v8 == v9)
  {
    return &unk_2290368;
  }

  result = &unk_2290368;
  if (*v8 == v7 && *(v8 + 4) == a3)
  {
    return v8;
  }

  return result;
}

void sub_2BFA5C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0xFFFE000000000000;
  *(a1 + 8) = 0;
  v8 = 17;
  strcpy(__p, "traffic_substream");
  v4 = sub_5F8FC(a3, __p);
  v5 = v4[1];
  if (*(v4 + 23) >= 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v4 = *v4;
    v6 = v5;
  }

  *(a1 + 4) = sub_2C7664(v4, v6);
  if (v8 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_2C05C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_1959728(&a53);
  sub_1959728(&a13);
  sub_1A104(&a46);
  _Unwind_Resume(a1);
}

uint64_t sub_2C0714(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 20);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_2C0850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2C0888(void *a1)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_2C1200(a1, &__p);
  v2 = __p;
  if (__p)
  {
    v3 = v8;
    v4 = __p;
    if (v8 == __p)
    {
LABEL_11:
      v8 = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = __p;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

void sub_2C0938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AA90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2C094C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_2C09CC(a1 + 24, 0);
  sub_2C09CC(a1 + 144, 0);
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 264) = 0u;
  return a1;
}

void sub_2C09A0(_Unwind_Exception *a1)
{
  sub_54774(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2C09CC(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 104) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  return result;
}

void sub_2C0AA8(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      v6 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v5;
  operator delete(v5);
  v6 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_2C0AF8()
{
  if (!*v0)
  {
    JUMPOUT(0x2C0ACCLL);
  }

  JUMPOUT(0x2C0AC4);
}

uint64_t sub_2C0B08(void **a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x8D3DCB08D3DCB0)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 4)) >= 0x469EE58469EE58)
  {
    v4 = 0x8D3DCB08D3DCB0;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x8D3DCB08D3DCB0)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v5 + 96) = *(a2 + 96);
  v6 = *(a2 + 104);
  *(v5 + 120) = *(a2 + 120);
  *(v5 + 104) = v6;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v7 = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  *(v5 + 128) = v7;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v8 = *(a2 + 152);
  *(v5 + 168) = *(a2 + 168);
  *(v5 + 152) = v8;
  v9 = *(a2 + 176);
  *(v5 + 192) = *(a2 + 192);
  *(v5 + 176) = v9;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(v5 + 200) = *(a2 + 200);
  *(v5 + 216) = *(a2 + 216);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v10 = *(a2 + 240);
  *(v5 + 224) = *(a2 + 224);
  *(v5 + 240) = v10;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v11 = *(a2 + 264);
  *(v5 + 256) = *(a2 + 256);
  *(v5 + 264) = v11;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v12 = *(a2 + 272);
  v13 = *(a2 + 288);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(v5 + 304) = *(a2 + 304);
  *(v5 + 272) = v12;
  *(v5 + 288) = v13;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(v5 + 312) = *(a2 + 312);
  v14 = *(a2 + 336);
  *(v5 + 320) = *(a2 + 320);
  *(v5 + 336) = v14;
  v15 = *(a2 + 360);
  *(v5 + 352) = *(a2 + 352);
  *(v5 + 360) = v15;
  v16 = *(a2 + 368);
  v17 = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 360) = 0;
  *(v5 + 368) = v16;
  *(v5 + 384) = v17;
  v18 = *(a2 + 400);
  v19 = *(a2 + 416);
  v20 = *(a2 + 432);
  *(v5 + 448) = *(a2 + 448);
  *(v5 + 416) = v19;
  *(v5 + 432) = v20;
  *(v5 + 400) = v18;
  *(v5 + 456) = *(a2 + 456);
  v21 = v5 + 464;
  v22 = *a1;
  v23 = a1[1];
  v24 = v5 + *a1 - v23;
  if (*a1 != v23)
  {
    v25 = *a1;
    v26 = v24;
    do
    {
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *v26 = *v25;
      *(v26 + 16) = *(v25 + 2);
      *v25 = 0;
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
      v27 = *(v25 + 24);
      *(v26 + 40) = *(v25 + 10);
      *(v26 + 24) = v27;
      v28 = *(v25 + 3);
      *(v26 + 64) = *(v25 + 8);
      *(v26 + 48) = v28;
      *(v25 + 7) = 0;
      *(v25 + 8) = 0;
      *(v25 + 6) = 0;
      *(v26 + 72) = 0;
      *(v26 + 80) = 0;
      *(v26 + 88) = 0;
      *(v26 + 72) = *(v25 + 72);
      *(v26 + 88) = *(v25 + 11);
      *(v25 + 9) = 0;
      *(v25 + 10) = 0;
      *(v25 + 11) = 0;
      *(v26 + 96) = *(v25 + 24);
      v29 = *(v25 + 104);
      *(v26 + 120) = *(v25 + 15);
      *(v26 + 104) = v29;
      *(v25 + 14) = 0;
      *(v25 + 15) = 0;
      *(v25 + 13) = 0;
      v30 = *(v25 + 8);
      *(v26 + 144) = *(v25 + 18);
      *(v26 + 128) = v30;
      *(v25 + 17) = 0;
      *(v25 + 18) = 0;
      *(v25 + 16) = 0;
      v31 = *(v25 + 152);
      *(v26 + 168) = *(v25 + 42);
      *(v26 + 152) = v31;
      v32 = *(v25 + 11);
      *(v26 + 192) = *(v25 + 24);
      *(v26 + 176) = v32;
      *(v25 + 22) = 0;
      *(v25 + 23) = 0;
      *(v25 + 24) = 0;
      *(v26 + 200) = 0;
      *(v26 + 208) = 0;
      *(v26 + 216) = 0;
      *(v26 + 200) = *(v25 + 200);
      *(v26 + 216) = *(v25 + 27);
      *(v25 + 26) = 0;
      *(v25 + 27) = 0;
      *(v25 + 25) = 0;
      *(v26 + 224) = *(v25 + 14);
      *(v26 + 248) = 0;
      *(v26 + 256) = 0;
      *(v26 + 240) = 0;
      *(v26 + 240) = *(v25 + 15);
      *(v26 + 256) = *(v25 + 32);
      *(v25 + 30) = 0;
      *(v25 + 31) = 0;
      *(v25 + 32) = 0;
      *(v26 + 264) = 0;
      *(v26 + 272) = 0;
      *(v26 + 280) = 0;
      *(v26 + 264) = *(v25 + 33);
      *(v26 + 272) = *(v25 + 17);
      *(v25 + 33) = 0;
      *(v25 + 34) = 0;
      *(v25 + 35) = 0;
      v33 = *(v25 + 18);
      *(v26 + 304) = *(v25 + 38);
      *(v26 + 288) = v33;
      *(v25 + 37) = 0;
      *(v25 + 38) = 0;
      *(v25 + 36) = 0;
      *(v26 + 312) = v25[312];
      v34 = *(v25 + 21);
      v35 = *(v25 + 44);
      *(v26 + 320) = *(v25 + 20);
      *(v26 + 336) = v34;
      *(v26 + 352) = v35;
      *(v26 + 360) = 0;
      *(v26 + 368) = 0;
      *(v26 + 376) = 0;
      *(v26 + 360) = *(v25 + 45);
      *(v26 + 368) = *(v25 + 23);
      *(v25 + 46) = 0;
      *(v25 + 47) = 0;
      *(v25 + 45) = 0;
      v37 = *(v25 + 26);
      v36 = *(v25 + 27);
      v38 = *(v25 + 25);
      *(v26 + 448) = *(v25 + 56);
      *(v26 + 416) = v37;
      *(v26 + 432) = v36;
      *(v26 + 400) = v38;
      *(v26 + 384) = *(v25 + 24);
      *(v26 + 456) = v25[456];
      v25 += 464;
      v26 += 464;
    }

    while (v25 != v23);
    do
    {
      v22 = (sub_2C0F28(v22) + 464);
    }

    while (v22 != v23);
    v22 = *a1;
  }

  *a1 = v24;
  a1[1] = v21;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  return v21;
}

uint64_t sub_2C0F28(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {
    v3 = *(a1 + 368);
    v4 = *(a1 + 360);
    if (v3 == v2)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v6 = *(v3 - 4);
      if (v6)
      {
        *(v3 - 3) = v6;
        operator delete(v6);
      }

      v7 = v3 - 7;
      v8 = *(v3 - 7);
      if (!v8)
      {
        goto LABEL_6;
      }

      v9 = *(v3 - 6);
      v5 = *(v3 - 7);
      if (v9 != v8)
      {
        break;
      }

LABEL_5:
      *(v3 - 6) = v8;
      operator delete(v5);
LABEL_6:
      v3 -= 7;
      if (v7 == v2)
      {
        v4 = *(a1 + 360);
LABEL_19:
        *(a1 + 368) = v2;
        operator delete(v4);
        goto LABEL_20;
      }
    }

    while (*(v9 - 17) < 0)
    {
      operator delete(*(v9 - 5));
      v10 = *(v9 - 8);
      if (v10)
      {
        goto LABEL_17;
      }

LABEL_12:
      v9 -= 9;
      if (v9 == v8)
      {
        v5 = *v7;
        goto LABEL_5;
      }
    }

    v10 = *(v9 - 8);
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_17:
    *(v9 - 7) = v10;
    operator delete(v10);
    goto LABEL_12;
  }

LABEL_20:
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v11 = *(a1 + 264);
  if (v11)
  {
    v12 = *(a1 + 272);
    v13 = *(a1 + 264);
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *(a1 + 264);
    }

    *(a1 + 272) = v11;
    operator delete(v13);
  }

  v15 = *(a1 + 240);
  if (v15)
  {
    *(a1 + 248) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 200);
  if (v16)
  {
    v17 = *(a1 + 208);
    v18 = *(a1 + 200);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(a1 + 200);
    }

    *(a1 + 208) = v16;
    operator delete(v18);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
    if ((*(a1 + 151) & 0x80000000) == 0)
    {
LABEL_42:
      if ((*(a1 + 127) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_49:
      operator delete(*(a1 + 104));
      v20 = *(a1 + 72);
      if (!v20)
      {
LABEL_44:
        if (*(a1 + 71) < 0)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 127) < 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  v20 = *(a1 + 72);
  if (!v20)
  {
    goto LABEL_44;
  }

LABEL_50:
  v23 = *(a1 + 80);
  if (v23 == v20)
  {
    *(a1 + 80) = v20;
    operator delete(v20);
    if (*(a1 + 71) < 0)
    {
      goto LABEL_52;
    }

LABEL_45:
    v21 = *a1;
    if (*a1)
    {
      goto LABEL_53;
    }

    return a1;
  }

  do
  {
    if (*(v23 - 1) < 0)
    {
      operator delete(*(v23 - 3));
      v27 = v23 - 6;
      if ((*(v23 - 25) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v27 = v23 - 6;
      if ((*(v23 - 25) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    operator delete(*v27);
LABEL_55:
    v23 = v27;
  }

  while (v27 != v20);
  v30 = *(a1 + 72);
  *(a1 + 80) = v20;
  operator delete(v30);
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_52:
  operator delete(*(a1 + 48));
  v21 = *a1;
  if (!*a1)
  {
    return a1;
  }

LABEL_53:
  v24 = *(a1 + 8);
  v25 = v21;
  if (v24 != v21)
  {
    v26 = *(a1 + 8);
    do
    {
      v29 = *(v26 - 3);
      v26 -= 24;
      v28 = v29;
      if (v29)
      {
        *(v24 - 2) = v28;
        operator delete(v28);
      }

      v24 = v26;
    }

    while (v26 != v21);
    v25 = *a1;
  }

  *(a1 + 8) = v21;
  operator delete(v25);
  return a1;
}

void *sub_2C1200(void *a1, uint64_t *a2)
{
  v21 = 0;
  v19 = 0u;
  *v20 = 0u;
  *v17 = 0u;
  *v18 = 0u;
  __p = 0;
  v15 = 0;
  v16 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  sub_2C1440(a1, a2, v17, &__p, &v12, 0, &v10, 1);
  v3 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = __p;
  if (__p)
  {
    v6 = v15;
    v7 = __p;
    if (v15 != __p)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p;
    }

    v15 = v5;
    operator delete(v7);
  }

  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v18[1]);
    if ((SHIBYTE(v18[0]) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_21;
  }

  operator delete(v20[0]);
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if ((SHIBYTE(v18[0]) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_21:
  operator delete(v17[0]);
  return a1;
}

void sub_2C13A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void **);
  v11 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  sub_1F1A8(va);
  sub_1F1A8(va1);
  sub_1A104(va2);
  sub_2C13CC(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_2C13CC(uint64_t a1)
{
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*a1);
  return a1;
}

void *sub_2C1440(void *a1, uint64_t *a2, __int128 *a3, void *a4, void *a5, char a6, uint64_t a7, char a8)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = *a2;
  v14 = a2[1];
  v34 = a1;
  LOBYTE(v35) = 0;
  if (v14 != v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2C1B08((a1 + 3), a3);
  sub_2C1C04(a1 + 12, a4);
  *(a1 + 120) = a6;
  v15 = *a5;
  if ((a6 & 1) == 0)
  {
    if (!v15)
    {
      v16 = 1;
      goto LABEL_38;
    }

    (*(*v15 + 120))(&v34, *a5);
    v17 = v34;
    if (v34 == v35)
    {
      v16 = 1;
      if (v34)
      {
LABEL_29:
        v26 = v16;
        v27 = v35;
        v28 = v17;
        if (v35 != v17)
        {
          do
          {
            v29 = *(v27 - 1);
            if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v29->__on_zero_shared)(v29);
              std::__shared_weak_count::__release_weak(v29);
            }

            v27 -= 16;
          }

          while (v27 != v17);
          v28 = v34;
        }

        v35 = v17;
        operator delete(v28);
        v16 = v26;
      }

LABEL_37:
      v15 = *a5;
      goto LABEL_38;
    }

    (*(**a5 + 120))(&__p);
    v19 = __p;
    v18 = v33;
    if (__p == v33)
    {
      v16 = 1;
      if (!__p)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v20 = __p + 16;
      do
      {
        v16 = (*(**(v20 - 2) + 40))(*(v20 - 2));
        if (v20 == v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v16;
        }

        v20 += 16;
      }

      while ((v21 & 1) != 0);
      v19 = __p;
      if (!__p)
      {
        goto LABEL_28;
      }
    }

    v22 = v16;
    v23 = v33;
    v24 = v19;
    if (v33 != v19)
    {
      do
      {
        v25 = *(v23 - 1);
        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v23 -= 16;
      }

      while (v23 != v19);
      v24 = __p;
    }

    v33 = v19;
    operator delete(v24);
    v16 = v22;
LABEL_28:
    v17 = v34;
    if (v34)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  v16 = 0;
LABEL_38:
  *(a1 + 121) = v16;
  a1[16] = v15;
  a1[17] = a5[1];
  *a5 = 0;
  a5[1] = 0;
  *(a1 + 9) = *a7;
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a1 + 160) = a8;
  *(a1 + 21) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 50) = 1065353216;
  return a1;
}

void sub_2C1778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2C1818(va);
  sub_1A104(v6 + 12);
  sub_2C13CC((v6 + 3));
  sub_1AA90(v6);
  _Unwind_Resume(a1);
}

void **sub_2C1818(void **a1)
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
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2C18CC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_2C19A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2C19CC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v7 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
LABEL_9:
            operator delete(*v7);
          }
        }

        else
        {
          v7 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
            goto LABEL_9;
          }
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

void ****sub_2C1A58(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_12:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          v6 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
LABEL_10:
            operator delete(*v6);
          }
        }

        else
        {
          v6 = v4 - 6;
          if (*(v4 - 25) < 0)
          {
            goto LABEL_10;
          }
        }

        v4 = v6;
        if (v6 == v3)
        {
          v5 = **a1;
          goto LABEL_12;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_2C1B08(uint64_t a1, __int128 *a2)
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
  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  return a1;
}

void sub_2C1BB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void *sub_2C1C04(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_2C1D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_746A0(&a11);
  *(v11 + 8) = v12;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2C1D4C(uint64_t a1)
{
  sub_2C1F20(a1 + 168);
  v2 = *(a1 + 152);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = *(a1 + 104);
    v6 = *(a1 + 96);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(a1 + 96);
    }

    *(a1 + 104) = v4;
    operator delete(v6);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_17:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      operator delete(*(a1 + 24));
      v8 = *a1;
      if (!*a1)
      {
        return a1;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v8 = *a1;
  if (!*a1)
  {
    return a1;
  }

LABEL_23:
  v10 = *(a1 + 8);
  v11 = v8;
  if (v10 != v8)
  {
    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_30:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_30;
        }
      }

      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        break;
      }
    }
  }

  *(a1 + 8) = v8;
  operator delete(v11);
  return a1;
}

uint64_t sub_2C1F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        v7 = *(v2 + 6);
        v8 = *(v2 + 5);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 9);
            v7 -= 4;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v2 + 5);
        }

        *(v2 + 6) = v6;
        operator delete(v8);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_2C1FDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          sub_2C2620(a1, (a1 + 24), (a2 - 24));
          return;
        case 4uLL:

          sub_2C2874(a1, a1 + 24, a1 + 48, a2 - 24);
          return;
        case 5uLL:

          sub_2C2A18(a1, (a1 + 24), a1 + 48, a1 + 72, a2 - 24);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v23 = (a2 - 24);
        v24 = *(a2 - 24);
        if (v24 < *a1 || v24 == *a1 && *(a2 - 16) < *(a1 + 8) || *a1 >= v24 && *(a1 + 8) >= *(a2 - 16) && *(a2 - 8) < *(a1 + 16))
        {
          v53 = *a1;
          *a1 = *v23;
          *v23 = v53;
          v25 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v25;
        }

        return;
      }
    }

    if (v12 <= 575)
    {
      break;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v39 = (v13 - 2) >> 1;
        v40 = v39 + 1;
        v41 = (a1 + 24 * v39);
        do
        {
          sub_2C3330(a1, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3), v41);
          v41 -= 3;
          --v40;
        }

        while (v40);
        v42 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_2C3528(a1, a2, a3, v42);
          a2 -= 24;
        }

        while (v42-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = a1 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      sub_2C2620(v15, a1, (a2 - 24));
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_2C2620(a1, v15, (a2 - 24));
      v16 = 24 * v14;
      v17 = (24 * v14 + a1 - 24);
      sub_2C2620((a1 + 24), v17, (a2 - 48));
      sub_2C2620((a1 + 48), (a1 + 24 + v16), (a2 - 72));
      sub_2C2620(v17, v15, (a1 + 24 + v16));
      v52 = *a1;
      *a1 = *v15;
      *v15 = v52;
      v18 = *(a1 + 16);
      *(a1 + 16) = *(v15 + 16);
      *(v15 + 16) = v18;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v19 = *(a1 - 24);
    if (v19 >= *a1 && (v19 != *a1 || *(a1 - 16) >= *(a1 + 8)) && (*a1 < v19 || *(a1 + 8) < *(a1 - 16) || *(a1 - 8) >= *(a1 + 16)))
    {
      v9 = sub_2C2C3C(a1, a2);
      goto LABEL_27;
    }

LABEL_22:
    v20 = sub_2C2E50(a1, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    v22 = sub_2C304C(a1, v20);
    v9 = (v20 + 24);
    if (sub_2C304C(v20 + 24, a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_25:
      sub_2C1FDC(a1, v20, a3, -v11, a5 & 1);
      v9 = (v20 + 24);
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v26 = a1 + 24;
  v28 = a1 == a2 || v26 == a2;
  if (a5)
  {
    if (v28)
    {
      return;
    }

    v29 = 0;
    v30 = a1;
LABEL_53:
    v32 = v30;
    v30 = v26;
    v33 = *(v32 + 24);
    if (v33 >= *v32)
    {
      if (v33 != *v32 || (v34 = *(v32 + 32), v34 >= *(v32 + 8)))
      {
        if (*v32 < v33)
        {
          goto LABEL_52;
        }

        v34 = *(v32 + 32);
        if (*(v32 + 8) < v34 || *(v32 + 40) >= *(v32 + 16))
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v34 = *(v32 + 32);
    }

    v35 = *(v32 + 40);
    *v30 = *v32;
    *(v30 + 16) = *(v32 + 16);
    v31 = a1;
    if (v32 == a1)
    {
      goto LABEL_51;
    }

    v36 = v29;
    while (1)
    {
      v37 = a1 + v36;
      v38 = *(a1 + v36 - 24);
      if (v33 >= v38 && (v33 != v38 || v34 >= *(a1 + v36 - 16)))
      {
        if (v38 < v33)
        {
          v31 = a1 + v36;
LABEL_51:
          *v31 = v33;
          *(v31 + 8) = v34;
          *(v31 + 16) = v35;
LABEL_52:
          v26 = v30 + 24;
          v29 += 24;
          if (v30 + 24 == a2)
          {
            return;
          }

          goto LABEL_53;
        }

        if (*(a1 + v36 - 16) < v34 || v35 >= *(a1 + v36 - 8))
        {
          v31 = v32;
          goto LABEL_51;
        }
      }

      v32 -= 24;
      *v37 = *(a1 + v36 - 24);
      *(v37 + 16) = *(v37 - 8);
      v36 -= 24;
      if (!v36)
      {
        v31 = a1;
        goto LABEL_51;
      }
    }
  }

  if (!v28)
  {
    while (1)
    {
      v44 = a1;
      a1 = v26;
      v45 = *(v44 + 24);
      if (v45 < *v44)
      {
        break;
      }

      if (v45 == *v44)
      {
        v46 = *(v44 + 32);
        if (v46 < *(v44 + 8))
        {
          goto LABEL_90;
        }
      }

      if (*v44 >= v45)
      {
        v46 = *(v44 + 32);
        if (*(v44 + 8) >= v46 && *(v44 + 40) < *(v44 + 16))
        {
          goto LABEL_90;
        }
      }

LABEL_87:
      v26 = a1 + 24;
      if (a1 + 24 == a2)
      {
        return;
      }
    }

    v46 = *(v44 + 32);
LABEL_90:
    v47 = *(v44 + 40);
    do
    {
      do
      {
        v48 = v44;
        *(v44 + 24) = *v44;
        *(v44 + 40) = *(v44 + 16);
        v50 = *(v44 - 24);
        v44 -= 24;
        v49 = v50;
        v51 = v45 == v50;
      }

      while (v45 < v50);
    }

    while (v51 && v46 < *(v48 - 16) || v49 >= v45 && *(v48 - 16) >= v46 && v47 < *(v48 - 8));
    *v48 = v45;
    *(v48 + 8) = v46;
    *(v48 + 16) = v47;
    goto LABEL_87;
  }
}

uint64_t sub_2C2620(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  if (*a2 >= *a1 && (*a2 != *a1 || a2[1] >= *(a1 + 1)) && (*a1 < v3 || *(a1 + 1) < a2[1] || *(a2 + 4) >= *(a1 + 4)))
  {
    if (*a3 >= v3 && (*a3 != v3 || *(a3 + 1) >= a2[1]) && (v3 < *a3 || a2[1] < *(a3 + 1) || *(a3 + 4) >= *(a2 + 4)))
    {
      return 0;
    }

    v6 = *a2;
    *a2 = *a3;
    *a3 = v6;
    v8 = (a2 + 2);
    v7 = *(a2 + 4);
    *(a2 + 4) = *(a3 + 4);
    *(a3 + 4) = v7;
    if (*a2 >= *a1 && (*a2 != *a1 || a2[1] >= *(a1 + 1)))
    {
      if (*a1 < *a2)
      {
        return 1;
      }

      if (*(a1 + 1) < a2[1])
      {
        return 1;
      }

      if (*v8 >= *(a1 + 4))
      {
        return 1;
      }
    }

    v9 = *a1;
    *a1 = *a2;
    *a2 = v9;
    v5 = (a1 + 1);
LABEL_20:
    v13 = *v5;
    *v5 = *v8;
    *v8 = v13;
    return 1;
  }

  if (*a3 < v3 || *a3 == v3 && *(a3 + 1) < a2[1] || v3 >= *a3 && a2[1] >= *(a3 + 1) && *(a3 + 4) < *(a2 + 4))
  {
    v4 = *a1;
    *a1 = *a3;
    *a3 = v4;
    v5 = (a1 + 1);
LABEL_19:
    v8 = (a3 + 1);
    goto LABEL_20;
  }

  v10 = *a1;
  *a1 = *a2;
  *a2 = v10;
  v5 = (a2 + 2);
  v11 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  if (*a3 < *a2 || *a3 == *a2 && *(a3 + 1) < a2[1])
  {
    goto LABEL_18;
  }

  if (*a2 < *a3)
  {
    return 1;
  }

  if (a2[1] < *(a3 + 1))
  {
    return 1;
  }

  if (*(a3 + 4) < v11)
  {
LABEL_18:
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    goto LABEL_19;
  }

  return 1;
}

__n128 sub_2C2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2C2620(a1, a2, a3);
  if (*a4 < *a3 || *a4 == *a3 && *(a4 + 8) < *(a3 + 8) || *a3 >= *a4 && *(a3 + 8) >= *(a4 + 8) && *(a4 + 16) < *(a3 + 16))
  {
    if ((result = *a3, *a3 = *a4, *a4 = result, v9 = *(a3 + 16), *(a3 + 16) = *(a4 + 16), *(a4 + 16) = v9, *a3 < *a2) || *a3 == *a2 && *(a3 + 8) < *(a2 + 8) || *a2 >= *a3 && *(a2 + 8) >= *(a3 + 8) && *(a3 + 16) < *(a2 + 16))
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v10 = *(a2 + 16);
      *(a2 + 16) = *(a3 + 16);
      *(a3 + 16) = v10;
      if (*a2 < *a1 || *a2 == *a1 && *(a2 + 8) < *(a1 + 8) || *a1 >= *a2 && *(a1 + 8) >= *(a2 + 8) && *(a2 + 16) < *(a1 + 16))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v11 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a2 + 16) = v11;
      }
    }
  }

  return result;
}

__n128 sub_2C2A18(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_2C2874(a1, a2, a3, a4).n128_u64[0];
  if (*a5 < *a4 || *a5 == *a4 && *(a5 + 8) < *(a4 + 8) || *a4 >= *a5 && *(a4 + 8) >= *(a5 + 8) && *(a5 + 16) < *(a4 + 16))
  {
    if ((result = *a4, *a4 = *a5, *a5 = result, v11 = *(a4 + 16), *(a4 + 16) = *(a5 + 16), *(a5 + 16) = v11, *a4 < *a3) || *a4 == *a3 && *(a4 + 8) < *(a3 + 8) || *a3 >= *a4 && *(a3 + 8) >= *(a4 + 8) && *(a4 + 16) < *(a3 + 16))
    {
      if ((result = *a3, *a3 = *a4, *a4 = result, v12 = *(a3 + 16), *(a3 + 16) = *(a4 + 16), *(a4 + 16) = v12, *a3 < a2->n128_u64[0]) || *a3 == a2->n128_u64[0] && *(a3 + 8) < a2->n128_u64[1] || a2->n128_u64[0] >= *a3 && a2->n128_u64[1] >= *(a3 + 8) && *(a3 + 16) < a2[1].n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        v13 = a2[1].n128_u32[0];
        a2[1].n128_u32[0] = *(a3 + 16);
        *(a3 + 16) = v13;
        if (a2->n128_u64[0] < a1->n128_u64[0] || a2->n128_u64[0] == a1->n128_u64[0] && a2->n128_u64[1] < a1->n128_u64[1] || a1->n128_u64[0] >= a2->n128_u64[0] && a1->n128_u64[1] >= a2->n128_u64[1] && a2[1].n128_u32[0] < a1[1].n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          v14 = a1[1].n128_u32[0];
          a1[1].n128_u32[0] = a2[1].n128_u32[0];
          a2[1].n128_u32[0] = v14;
        }
      }
    }
  }

  return result;
}

__int128 *sub_2C2C3C(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a2 - 24);
  if (*a1 < v5 || *a1 == v5 && v3 < *(a2 - 16) || v5 >= v2 && *(a2 - 16) >= v3 && v4 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v8 = *(i + 3);
      i = (i + 24);
      v7 = v8;
    }

    while (v2 >= v8 && (v2 != v7 || v3 >= *(i + 1)) && (v7 < v2 || *(i + 1) < v3 || v4 >= *(i + 4)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 24; v2 < v5 || v2 == v5 && v3 < *(a2 + 8) || v5 >= v2 && *(a2 + 8) >= v3 && v4 < *(a2 + 16); a2 -= 24)
    {
      v9 = *(a2 - 24);
      v5 = v9;
    }
  }

  while (i < a2)
  {
    v18 = *i;
    *i = *a2;
    *a2 = v18;
    v11 = *(i + 3);
    i = (i + 24);
    v10 = v11;
    v12 = *(i - 2);
    *(i - 2) = *(a2 + 16);
    *(a2 + 16) = v12;
    while (v2 >= v10 && (v2 != v10 || v3 >= *(i + 1)) && (v10 < v2 || *(i + 1) < v3 || v4 >= *(i + 4)))
    {
      v13 = *(i + 3);
      i = (i + 24);
      v10 = v13;
    }

    do
    {
      do
      {
        v15 = *(a2 - 24);
        a2 -= 24;
        v14 = v15;
        v16 = v2 == v15;
      }

      while (v2 < v15);
    }

    while (v16 && v3 < *(a2 + 8) || v14 >= v2 && *(a2 + 8) >= v3 && v4 < *(a2 + 16));
  }

  if ((i - 24) != a1)
  {
    *a1 = *(i - 24);
    *(a1 + 4) = *(i - 2);
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 2) = v4;
  return i;
}

unint64_t sub_2C2E50(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 4);
  while (1)
  {
    v6 = a1[v2 + 3];
    if (v6 >= v3 && (v6 != v3 || a1[v2 + 4] >= v4) && (v3 < v6 || v4 < a1[v2 + 4] || LODWORD(a1[v2 + 5]) >= v5))
    {
      break;
    }

    v2 += 3;
  }

  v7 = &a1[v2 + 3];
  if (v2 * 8)
  {
    do
    {
      v9 = *(a2 - 24);
      a2 -= 24;
      v8 = v9;
    }

    while (v9 >= v3 && (v8 != v3 || *(a2 + 8) >= v4) && (v3 < v8 || v4 < *(a2 + 8) || *(a2 + 16) >= v5));
  }

  else
  {
LABEL_28:
    if (v7 < a2)
    {
      do
      {
        v11 = *(a2 - 24);
        a2 -= 24;
        v10 = v11;
        if (v11 < v3 || v10 == v3 && *(a2 + 8) < v4)
        {
          break;
        }

        if (v3 < v10 || v4 < *(a2 + 8))
        {
          goto LABEL_28;
        }
      }

      while (*(a2 + 16) >= v5 && v7 < a2);
    }
  }

  v13 = v7;
  if (v7 < a2)
  {
    v14 = a2;
    do
    {
      v22 = *v13;
      *v13 = *v14;
      *v14 = v22;
      v15 = *(v13 + 16);
      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = v15;
      do
      {
        do
        {
          v17 = *(v13 + 24);
          v13 += 24;
          v16 = v17;
          v18 = v17 == v3;
        }

        while (v17 < v3);
      }

      while (v18 && *(v13 + 8) < v4 || v3 >= v16 && v4 >= *(v13 + 8) && *(v13 + 16) < v5);
      do
      {
        v20 = *(v14 - 24);
        v14 -= 24;
        v19 = v20;
      }

      while (v20 >= v3 && (v19 != v3 || *(v14 + 8) >= v4) && (v3 < v19 || v4 < *(v14 + 8) || *(v14 + 16) >= v5));
    }

    while (v13 < v14);
  }

  if ((v13 - 24) != a1)
  {
    *a1 = *(v13 - 24);
    *(a1 + 4) = *(v13 - 8);
  }

  *(v13 - 24) = v3;
  *(v13 - 16) = v4;
  *(v13 - 8) = v5;
  return v13 - 24;
}

BOOL sub_2C304C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_2C2620(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        sub_2C2874(a1, a1 + 24, a1 + 48, a2 - 24);
        return 1;
      case 5:
        sub_2C2A18(a1, (a1 + 24), a1 + 48, a1 + 72, a2 - 24);
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
      v3 = (a2 - 24);
      v4 = *(a2 - 24);
      if (v4 < *a1 || v4 == *a1 && *(a2 - 16) < *(a1 + 8) || *a1 >= v4 && *(a1 + 8) >= *(a2 - 16) && *(a2 - 8) < *(a1 + 16))
      {
        v5 = *a1;
        *a1 = *v3;
        *v3 = v5;
        v6 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 8);
        *(a2 - 8) = v6;
        return 1;
      }

      return 1;
    }
  }

  v8 = a1 + 48;
  sub_2C2620(a1, (a1 + 24), (a1 + 48));
  v11 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 < *v8)
    {
      break;
    }

    if (*v11 == *v8)
    {
      v15 = *(v11 + 8);
      if (v15 < *(v8 + 8))
      {
        goto LABEL_17;
      }
    }

    if (*v8 >= v14)
    {
      v15 = *(v11 + 8);
      if (*(v8 + 8) >= v15 && *(v11 + 16) < *(v8 + 16))
      {
        goto LABEL_17;
      }
    }

LABEL_32:
    v8 = v11;
    v12 += 24;
    v11 += 24;
    if (v11 == a2)
    {
      return 1;
    }
  }

  v15 = *(v11 + 8);
LABEL_17:
  v16 = *(v11 + 16);
  *v11 = *v8;
  *(v11 + 16) = *(v8 + 16);
  v17 = v12;
  while (1)
  {
    v18 = *(a1 + v17 + 24);
    if (v14 >= v18 && (v14 != v18 || v15 >= *(a1 + v17 + 32)) && (v18 < v14 || *(a1 + v17 + 32) < v15 || v16 >= *(a1 + v17 + 40)))
    {
      break;
    }

    *(a1 + v17 + 48) = *(a1 + v17 + 24);
    *(a1 + v17 + 64) = *(a1 + v17 + 40);
    v17 -= 24;
    if (v17 == -48)
    {
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      if (++v13 != 8)
      {
        goto LABEL_32;
      }

      return v11 + 24 == a2;
    }
  }

  v19 = a1 + v17;
  *(v19 + 48) = v14;
  *(v19 + 56) = v15;
  *(v19 + 64) = v16;
  if (++v13 != 8)
  {
    goto LABEL_32;
  }

  return v11 + 24 == a2;
}

uint64_t sub_2C3330(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = result + 24 * v5;
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        if ((v7 = *(v6 + 24), *v6 < v7) || *v6 == v7 && *(v6 + 8) < *(v6 + 32) || v7 >= *v6 && *(v6 + 32) >= *(v6 + 8) && *(v6 + 16) < *(v6 + 40))
        {
          v6 += 24;
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v8 = *a4;
      if (*v6 >= *a4 && (*v6 != *a4 || *(v6 + 8) >= a4[1]))
      {
        v9 = a4[1];
        if (v8 < *v6 || v9 < *(v6 + 8) || *(v6 + 16) >= *(a4 + 4))
        {
          v10 = *(a4 + 4);
          *a4 = *v6;
          *(a4 + 4) = *(v6 + 16);
          if (v4 >= v5)
          {
            while (1)
            {
              v11 = v6;
              v12 = 2 * v5;
              v5 = (2 * v5) | 1;
              v6 = result + 24 * v5;
              v13 = v12 + 2;
              if (v13 < a3)
              {
                if ((v14 = *(v6 + 24), *v6 < v14) || *v6 == v14 && *(v6 + 8) < *(v6 + 32) || v14 >= *v6 && *(v6 + 32) >= *(v6 + 8) && *(v6 + 16) < *(v6 + 40))
                {
                  v6 += 24;
                  v5 = v13;
                }
              }

              if (*v6 < v8 || *v6 == v8 && *(v6 + 8) < v9 || v8 >= *v6 && v9 >= *(v6 + 8) && *(v6 + 16) < v10)
              {
                break;
              }

              *v11 = *v6;
              *(v11 + 16) = *(v6 + 16);
              if (v4 < v5)
              {
                goto LABEL_35;
              }
            }

            v6 = v11;
          }

LABEL_35:
          *v6 = v8;
          *(v6 + 8) = v9;
          *(v6 + 16) = v10;
        }
      }
    }
  }

  return result;
}

__int128 *sub_2C3528(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = 0;
  v23 = *result;
  v5 = *(result + 4);
  v6 = result;
  do
  {
    v7 = v6;
    v8 = &v6[3 * v4];
    v6 = v8 + 3;
    v9 = 2 * v4;
    v4 = (2 * v4) | 1;
    v10 = v9 + 2;
    if (v10 < a4)
    {
      if ((v11 = v8[6], v12 = v8[3], v12 < v11) || v12 == v11 && v8[4] < v8[7] || v11 >= v12 && v8[7] >= v8[4] && *(v8 + 10) < *(v8 + 16))
      {
        v6 = v8 + 6;
        v4 = v10;
      }
    }

    *v7 = *v6;
    *(v7 + 4) = *(v6 + 4);
  }

  while (v4 <= ((a4 - 2) >> 1));
  v13 = (a2 - 24);
  if (v6 == (a2 - 24))
  {
    *v6 = v23;
    *(v6 + 4) = v5;
    return result;
  }

  *v6 = *v13;
  *(v6 + 4) = *(a2 - 8);
  *v13 = v23;
  *(a2 - 8) = v5;
  v14 = v6 - result + 24;
  if (v14 < 25)
  {
    return result;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) - 2;
  v16 = v15 >> 1;
  v17 = result + 24 * (v15 >> 1);
  v18 = *v6;
  if (*v17 >= *v6)
  {
    if (*v17 != *v6 || (v19 = v6[1], *(v17 + 8) >= v19))
    {
      if (v18 < *v17)
      {
        return result;
      }

      v19 = v6[1];
      if (v19 < *(v17 + 8) || *(v17 + 16) >= *(v6 + 4))
      {
        return result;
      }
    }
  }

  else
  {
    v19 = v6[1];
  }

  v20 = *(v6 + 4);
  *v6 = *v17;
  *(v6 + 4) = *(v17 + 16);
  if (v15 >= 2)
  {
    while (1)
    {
      v21 = v17;
      v22 = v16 - 1;
      v16 = (v16 - 1) >> 1;
      v17 = result + 24 * v16;
      if (*v17 >= v18 && (*v17 != v18 || *(v17 + 8) >= v19) && (v18 < *v17 || v19 < *(v17 + 8) || *(v17 + 16) >= v20))
      {
        break;
      }

      *v21 = *v17;
      *(v21 + 16) = *(v17 + 16);
      if (v22 <= 1)
      {
        goto LABEL_27;
      }
    }

    v17 = v21;
  }

LABEL_27:
  *v17 = v18;
  *(v17 + 8) = v19;
  *(v17 + 16) = v20;
  return result;
}

void sub_2C3744(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_1794();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

__n128 sub_2C3864(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = (a2 - i) >> 5;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = sub_2C4554(i, i + 2, a2 - 2).n128_u64[0];
          return result;
        case 4:
          result.n128_u64[0] = sub_2C4554(i, i + 2, i + 4).n128_u64[0];
          v74 = a2 - 2;
          v75 = a2[-2].n128_i64[0];
          v76 = i[4].n128_i64[0];
          v70 = v75 == v76;
          v77 = v75 < v76;
          if (v70 && (v78 = a2[-1].n128_i64[0], v79 = i[5].n128_i64[0], v77 = v78 < v79, v79 == v78))
          {
            if (a2[-1].n128_u64[1] >= i[5].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v77)
          {
            return result;
          }

          result = i[4];
          v197 = i[5];
          v161 = a2[-1];
          i[4] = *v74;
          i[5] = v161;
          *v74 = result;
          a2[-1] = v197;
          v162 = i[4].n128_i64[0];
          v163 = i[2].n128_i64[0];
          v70 = v162 == v163;
          v164 = v162 < v163;
          if (v70 && (v165 = i[5].n128_i64[0], v166 = i[3].n128_i64[0], v164 = v165 < v166, v166 == v165))
          {
            if (i[5].n128_u64[1] >= i[3].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v164)
          {
            return result;
          }

          v179 = i[2];
          result = i[3];
          v180 = i[5];
          i[2] = i[4];
          i[3] = v180;
          i[4] = v179;
          i[5] = result;
          v181 = i[2].n128_i64[0];
          v70 = v181 == i->n128_u64[0];
          v182 = v181 < i->n128_u64[0];
          if (v70 && (v183 = i[3].n128_i64[0], v184 = i[1].n128_i64[0], v182 = v183 < v184, v184 == v183))
          {
            if (i[3].n128_u64[1] >= i[1].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v182)
          {
            return result;
          }

          v191 = *i;
          v198 = i[1];
          v185 = i[3];
          *i = i[2];
          i[1] = v185;
          result = v191;
          i[2] = v191;
          i[3] = v198;
          return result;
        case 5:

          result.n128_u64[0] = sub_2C4708(i, i + 2, i + 4, i + 6, a2 - 2).n128_u64[0];
          return result;
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
        v68 = a2 - 2;
        v69 = a2[-2].n128_i64[0];
        v70 = v69 == i->n128_u64[0];
        v71 = v69 < i->n128_u64[0];
        if (v70 && (v72 = a2[-1].n128_i64[0], v73 = i[1].n128_i64[0], v71 = v72 < v73, v73 == v72))
        {
          if (a2[-1].n128_u64[1] >= i[1].n128_u64[1])
          {
            return result;
          }
        }

        else if (!v71)
        {
          return result;
        }

        v190 = *i;
        v196 = i[1];
        v160 = a2[-1];
        *i = *v68;
        i[1] = v160;
        result = v190;
        *v68 = v190;
        a2[-1] = v196;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v101 = (v10 - 2) >> 1;
      v102 = v101;
      while (2)
      {
        v104 = v102;
        if (v101 < v102)
        {
          goto LABEL_155;
        }

        v105 = (2 * v102) | 1;
        v106 = &i[2 * v105];
        if (2 * v104 + 2 < v10)
        {
          v107 = v106[2].n128_i64[0];
          v70 = v106->n128_u64[0] == v107;
          v108 = v106->n128_u64[0] < v107;
          if (v70 && (v109 = v106[1].n128_i64[0], v110 = v106[3].n128_i64[0], v108 = v109 < v110, v110 == v109))
          {
            if (v106[1].n128_u64[1] >= v106[3].n128_u64[1])
            {
              goto LABEL_165;
            }

LABEL_164:
            v106 += 2;
            v105 = 2 * v104 + 2;
          }

          else if (v108)
          {
            goto LABEL_164;
          }
        }

LABEL_165:
        v111 = &i[2 * v104];
        v112 = v111->n128_u64[0];
        v113 = v106->n128_u64[0] < v111->n128_u64[0];
        if (v106->n128_u64[0] == v111->n128_u64[0])
        {
          v114 = v106[1].n128_i64[0];
          v115 = v111[1].n128_i64[0];
          v113 = v114 < v115;
          if (v115 == v114)
          {
            v116 = v111[1].n128_i64[1];
            if (v106[1].n128_u64[1] >= v116)
            {
              v117 = v111->n128_u64[1];
              v118 = v106[1];
              *v111 = *v106;
              v111[1] = v118;
              if (v101 >= v105)
              {
                goto LABEL_175;
              }

              goto LABEL_153;
            }

LABEL_155:
            v102 = v104 - 1;
            if (v104)
            {
              continue;
            }

            while (2)
            {
              v130 = 0;
              v189 = *i;
              v195 = i[1];
              v131 = i;
LABEL_192:
              v133 = v131;
              v134 = &v131[2 * v130];
              v131 = v134 + 2;
              v135 = 2 * v130;
              v130 = (2 * v130) | 1;
              v136 = v135 + 2;
              if (v136 < v10)
              {
                v137 = v134[4].n128_i64[0];
                v138 = v134[2].n128_i64[0];
                v70 = v138 == v137;
                v139 = v138 < v137;
                if (v70 && (v140 = v134[3].n128_i64[0], v141 = v134[5].n128_i64[0], v139 = v140 < v141, v141 == v140))
                {
                  if (v134[3].n128_u64[1] >= v134[5].n128_u64[1])
                  {
                    goto LABEL_191;
                  }
                }

                else if (!v139)
                {
                  goto LABEL_191;
                }

                v131 = v134 + 4;
                v130 = v136;
              }

LABEL_191:
              v132 = v131[1];
              *v133 = *v131;
              v133[1] = v132;
              if (v130 > ((v10 - 2) >> 1))
              {
                a2 -= 2;
                if (v131 == a2)
                {
                  result = v189;
                  *v131 = v189;
                  v131[1] = v195;
                }

                else
                {
                  v142 = a2[1];
                  *v131 = *a2;
                  v131[1] = v142;
                  result = v189;
                  *a2 = v189;
                  a2[1] = v195;
                  v143 = (v131 - i + 32) >> 5;
                  v144 = v143 - 2;
                  if (v143 >= 2)
                  {
                    v145 = v144 >> 1;
                    v146 = &i[2 * (v144 >> 1)];
                    v147 = v131->n128_u64[0];
                    v148 = v146->n128_u64[0] < v131->n128_u64[0];
                    if (v146->n128_u64[0] == v131->n128_u64[0] && (v149 = v146[1].n128_i64[0], v150 = v131[1].n128_i64[0], v148 = v149 < v150, v150 == v149))
                    {
                      v151 = v131[1].n128_i64[1];
                      if (v146[1].n128_u64[1] < v151)
                      {
                        v152 = v131->n128_u64[1];
                        result = *v146;
                        v153 = v146[1];
                        *v131 = *v146;
                        v131[1] = v153;
                        if (v144 >= 2)
                        {
                          while (1)
                          {
LABEL_213:
                            v157 = v145 - 1;
                            v145 = (v145 - 1) >> 1;
                            v155 = &i[2 * v145];
                            v158 = v155->n128_u64[0] < v147;
                            if (v155->n128_u64[0] == v147 && (v159 = v155[1].n128_i64[0], v158 = v159 < v149, v149 == v159))
                            {
                              if (v155[1].n128_u64[1] >= v151)
                              {
                                break;
                              }
                            }

                            else if (!v158)
                            {
                              break;
                            }

                            result = *v155;
                            v156 = v155[1];
                            *v146 = *v155;
                            v146[1] = v156;
                            v146 = &i[2 * v145];
                            if (v157 <= 1)
                            {
                              goto LABEL_210;
                            }
                          }
                        }

LABEL_209:
                        v155 = v146;
LABEL_210:
                        v155->n128_u64[0] = v147;
                        v155->n128_u64[1] = v152;
                        v155[1].n128_u64[0] = v149;
                        v155[1].n128_u64[1] = v151;
                      }
                    }

                    else if (v148)
                    {
                      v149 = v131[1].n128_i64[0];
                      v151 = v131[1].n128_i64[1];
                      v152 = v131->n128_u64[1];
                      result = *v146;
                      v154 = v146[1];
                      *v131 = *v146;
                      v131[1] = v154;
                      if (v144 >= 2)
                      {
                        goto LABEL_213;
                      }

                      goto LABEL_209;
                    }
                  }
                }

                if (v10-- <= 2)
                {
                  return result;
                }

                continue;
              }

              goto LABEL_192;
            }
          }
        }

        break;
      }

      if (v113)
      {
        goto LABEL_155;
      }

      v114 = v111[1].n128_i64[0];
      v116 = v111[1].n128_i64[1];
      v117 = v111->n128_u64[1];
      v119 = v106[1];
      *v111 = *v106;
      v111[1] = v119;
      if (v101 < v105)
      {
LABEL_153:
        v103 = v106;
LABEL_154:
        v103->n128_u64[0] = v112;
        v103->n128_u64[1] = v117;
        v103[1].n128_u64[0] = v114;
        v103[1].n128_u64[1] = v116;
        goto LABEL_155;
      }

LABEL_175:
      while (2)
      {
        v121 = 2 * v105;
        v105 = (2 * v105) | 1;
        v103 = &i[2 * v105];
        v122 = v121 + 2;
        if (v122 < v10)
        {
          v123 = v103[2].n128_i64[0];
          v70 = v103->n128_u64[0] == v123;
          v124 = v103->n128_u64[0] < v123;
          if (v70 && (v125 = v103[1].n128_i64[0], v126 = v103[3].n128_i64[0], v124 = v125 < v126, v126 == v125))
          {
            if (v103[1].n128_u64[1] >= v103[3].n128_u64[1])
            {
              goto LABEL_183;
            }
          }

          else if (!v124)
          {
            goto LABEL_183;
          }

          v103 += 2;
          v105 = v122;
        }

LABEL_183:
        v127 = v103->n128_u64[0] < v112;
        if (v103->n128_u64[0] == v112 && (v128 = v103[1].n128_i64[0], v127 = v128 < v114, v114 == v128))
        {
          if (v103[1].n128_u64[1] < v116)
          {
            goto LABEL_153;
          }
        }

        else if (v127)
        {
          goto LABEL_153;
        }

        v120 = v103[1];
        *v106 = *v103;
        v106[1] = v120;
        v106 = v103;
        if (v101 < v105)
        {
          goto LABEL_154;
        }

        continue;
      }
    }

    v11 = v10 >> 1;
    v12 = &i[2 * (v10 >> 1)];
    if (v10 < 0x81)
    {
      result = sub_2C4554(&a1[2 * (v10 >> 1)], a1, a2 - 2);
      --a3;
      v17 = a1->n128_u64[0];
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v18 = a1[-2].n128_i64[0];
        v19 = v18 < v17;
        if (v18 == v17 && (v20 = a1[-1].n128_i64[0], v21 = a1[1].n128_i64[0], v19 = v20 < v21, v21 == v20))
        {
          v22 = a1[1].n128_i64[1];
          if (a1[-1].n128_u64[1] >= v22)
          {
            goto LABEL_65;
          }
        }

        else if (!v19)
        {
          v20 = a1[1].n128_i64[0];
          v22 = a1[1].n128_i64[1];
LABEL_65:
          v47 = v8->n128_u64[0];
          v48 = v17 < v8->n128_u64[0];
          if (v17 == v8->n128_u64[0] && (v49 = a2[-1].n128_i64[0], v48 = v20 < v49, v49 == v20))
          {
            if (v22 < a2[-1].n128_u64[1])
            {
              goto LABEL_77;
            }
          }

          else if (v48)
          {
LABEL_77:
            for (i = a1 + 2; ; i += 2)
            {
              v52 = v17 < i->n128_u64[0];
              if (v17 == i->n128_u64[0] && (v53 = i[1].n128_i64[0], v52 = v20 < v53, v53 == v20))
              {
                if (v22 < i[1].n128_u64[1])
                {
                  goto LABEL_83;
                }
              }

              else if (v52)
              {
                goto LABEL_83;
              }
            }
          }

          for (i = a1 + 2; i < a2; i += 2)
          {
            v50 = v17 < i->n128_u64[0];
            if (v17 == i->n128_u64[0] && (v51 = i[1].n128_i64[0], v50 = v20 < v51, v51 == v20))
            {
              if (v22 < i[1].n128_u64[1])
              {
                break;
              }
            }

            else if (v50)
            {
              break;
            }
          }

LABEL_83:
          v54 = a1->n128_u64[1];
          j = a2;
          if (i < a2)
          {
            for (j = a2 - 2; ; j -= 2)
            {
              v70 = v17 == v47;
              v57 = v17 < v47;
              if (v70 && (v58 = j[1].n128_i64[0], v57 = v20 < v58, v58 == v20))
              {
                if (v22 >= j[1].n128_u64[1])
                {
                  break;
                }
              }

              else if (!v57)
              {
                break;
              }

              v56 = j[-2].n128_u64[0];
              v47 = v56;
            }
          }

LABEL_102:
          while (i < j)
          {
            v188 = *i;
            v194 = i[1];
            v59 = j[1];
            *i = *j;
            i[1] = v59;
            result = v188;
            *j = v188;
            j[1] = v194;
            do
            {
              while (1)
              {
                v60 = i[2].n128_i64[0];
                i += 2;
                v61 = v17 < v60;
                if (v17 != v60)
                {
                  break;
                }

                v62 = i[1].n128_i64[0];
                v61 = v20 < v62;
                if (v62 != v20)
                {
                  break;
                }

                if (v22 < i[1].n128_u64[1])
                {
                  goto LABEL_99;
                }
              }
            }

            while (!v61);
            do
            {
LABEL_99:
              while (1)
              {
                v63 = j[-2].n128_i64[0];
                j -= 2;
                v64 = v17 < v63;
                if (v17 == v63)
                {
                  v65 = j[1].n128_i64[0];
                  v64 = v20 < v65;
                  if (v65 == v20)
                  {
                    break;
                  }
                }

                if (!v64)
                {
                  goto LABEL_102;
                }
              }
            }

            while (v22 < j[1].n128_u64[1]);
          }

          v66 = i - 2;
          if (&i[-2] != a1)
          {
            result = *v66;
            v67 = i[-1];
            *a1 = *v66;
            a1[1] = v67;
          }

          a4 = 0;
          i[-2].n128_u64[0] = v17;
          i[-2].n128_u64[1] = v54;
          i[-1].n128_u64[0] = v20;
          i[-1].n128_u64[1] = v22;
          continue;
        }
      }
    }

    else
    {
      sub_2C4554(a1, &a1[2 * (v10 >> 1)], a2 - 2);
      v13 = 2 * v11;
      v14 = &a1[2 * v11 - 2];
      sub_2C4554(a1 + 2, v14, a2 - 4);
      sub_2C4554(a1 + 4, &a1[v13 + 2], a2 - 6);
      sub_2C4554(v14, v12, &a1[v13 + 2]);
      v186 = *a1;
      v192 = a1[1];
      v15 = v12[1];
      *a1 = *v12;
      a1[1] = v15;
      result = v186;
      *v12 = v186;
      v12[1] = v192;
      --a3;
      v17 = a1->n128_u64[0];
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = 0;
    v24 = a1->n128_u64[1];
    v25 = a1[1].n128_i64[0];
    v26 = a1[1].n128_i64[1];
    while (1)
    {
      v27 = &a1[v23];
      v28 = a1[v23 + 2].n128_i64[0];
      v70 = v28 == v17;
      v29 = v28 < v17;
      if (v70)
      {
        v30 = v27[3].n128_i64[0];
        v29 = v30 < v25;
        if (v25 == v30)
        {
          break;
        }
      }

      if (!v29)
      {
        goto LABEL_27;
      }

LABEL_22:
      v23 += 2;
    }

    if (v27[3].n128_u64[1] < v26)
    {
      goto LABEL_22;
    }

LABEL_27:
    n128_u64 = a1[v23 + 2].n128_u64;
    k = a2 - 2;
    if (v23 * 16)
    {
      while (1)
      {
        v33 = k->n128_u64[0] < v17;
        if (k->n128_u64[0] == v17 && (v34 = k[1].n128_i64[0], v33 = v34 < v25, v25 == v34))
        {
          if (k[1].n128_u64[1] < v26)
          {
            goto LABEL_44;
          }
        }

        else if (v33)
        {
          goto LABEL_44;
        }

        k -= 2;
      }
    }

    k = a2;
    if (n128_u64 < a2)
    {
      for (k = a2 - 2; ; k -= 2)
      {
        v35 = k->n128_u64[0] < v17;
        if (k->n128_u64[0] == v17 && (v36 = k[1].n128_i64[0], v35 = v36 < v25, v25 == v36))
        {
          if (n128_u64 >= k || k[1].n128_u64[1] < v26)
          {
            break;
          }
        }

        else if (n128_u64 >= k || v35)
        {
          break;
        }
      }
    }

LABEL_44:
    i = n128_u64;
    if (n128_u64 < k)
    {
      v37 = k;
      do
      {
        v187 = *i;
        v193 = i[1];
        v38 = v37[1];
        *i = *v37;
        i[1] = v38;
        *v37 = v187;
        v37[1] = v193;
        do
        {
          while (1)
          {
            v39 = i[2].n128_i64[0];
            i += 2;
            v40 = v39 < v17;
            if (v39 != v17)
            {
              break;
            }

            v41 = i[1].n128_i64[0];
            v40 = v41 < v25;
            if (v25 != v41)
            {
              break;
            }

            if (i[1].n128_u64[1] >= v26)
            {
              goto LABEL_54;
            }
          }
        }

        while (v40);
        do
        {
LABEL_54:
          while (1)
          {
            v42 = v37[-2].n128_i64[0];
            v37 -= 2;
            v43 = v42 < v17;
            if (v42 == v17)
            {
              v44 = v37[1].n128_i64[0];
              v43 = v44 < v25;
              if (v25 == v44)
              {
                break;
              }
            }

            if (v43)
            {
              goto LABEL_46;
            }
          }
        }

        while (v37[1].n128_u64[1] >= v26);
LABEL_46:
        ;
      }

      while (i < v37);
    }

    if (&i[-2] != a1)
    {
      v45 = i[-1];
      *a1 = i[-2];
      a1[1] = v45;
    }

    i[-2].n128_u64[0] = v17;
    i[-2].n128_u64[1] = v24;
    i[-1].n128_u64[0] = v25;
    i[-1].n128_u64[1] = v26;
    if (n128_u64 < k)
    {
LABEL_63:
      sub_2C3864(a1, &i[-2], a3, a4 & 1);
      a4 = 0;
    }

    else
    {
      v46 = sub_2C49B4(a1, i - 2);
      if (sub_2C49B4(i, a2))
      {
        a2 = i - 2;
        if (v46)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v46)
      {
        goto LABEL_63;
      }
    }
  }

  v80 = i + 2;
  v82 = i == a2 || v80 == a2;
  if ((a4 & 1) == 0)
  {
    if (v82)
    {
      return result;
    }

    while (1)
    {
      v167 = a1;
      a1 = v80;
      v168 = v167[2].n128_i64[0];
      v169 = v168 < v167->n128_u64[0];
      if (v168 == v167->n128_u64[0] && (v170 = v167[3].n128_i64[0], v171 = v167[1].n128_i64[0], v169 = v170 < v171, v171 == v170))
      {
        v172 = v167[3].n128_i64[1];
        if (v172 < v167[1].n128_u64[1])
        {
          goto LABEL_235;
        }
      }

      else if (v169)
      {
        v170 = v167[3].n128_i64[0];
        v172 = v167[3].n128_i64[1];
LABEL_235:
        v173 = v167[2].n128_u64[1];
        do
        {
          while (1)
          {
            v174 = v167;
            result = *v167;
            v175 = v167[1];
            v167[2] = *v167;
            v167[3] = v175;
            v176 = v167[-2].n128_i64[0];
            v167 -= 2;
            v177 = v168 < v176;
            if (v168 == v176)
            {
              v178 = v174[-1].n128_i64[0];
              v177 = v170 < v178;
              if (v178 == v170)
              {
                break;
              }
            }

            if (!v177)
            {
              goto LABEL_227;
            }
          }
        }

        while (v172 < v174[-1].n128_u64[1]);
LABEL_227:
        v174->n128_u64[0] = v168;
        v174->n128_u64[1] = v173;
        v174[1].n128_u64[0] = v170;
        v174[1].n128_u64[1] = v172;
      }

      v80 = a1 + 2;
      if (&a1[2] == a2)
      {
        return result;
      }
    }
  }

  if (!v82)
  {
    v83 = 0;
    v84 = i;
    do
    {
      v86 = v84;
      v84 = v80;
      v87 = v86[2].n128_i64[0];
      v88 = v87 < v86->n128_u64[0];
      if (v87 == v86->n128_u64[0] && (v89 = v86[3].n128_i64[0], v90 = v86[1].n128_i64[0], v88 = v89 < v90, v90 == v89))
      {
        v91 = v86[3].n128_i64[1];
        if (v91 < v86[1].n128_u64[1])
        {
          v92 = v86[2].n128_u64[1];
          result = *v86;
          v93 = v86[1];
          *v84 = *v86;
          v84[1] = v93;
          v85 = i;
          if (v86 != i)
          {
            goto LABEL_143;
          }

LABEL_134:
          v85->n128_u64[0] = v87;
          v85->n128_u64[1] = v92;
          v85[1].n128_u64[0] = v89;
          v85[1].n128_u64[1] = v91;
        }
      }

      else if (v88)
      {
        v89 = v86[3].n128_i64[0];
        v91 = v86[3].n128_i64[1];
        v92 = v86[2].n128_u64[1];
        result = *v86;
        v94 = v86[1];
        *v84 = *v86;
        v84[1] = v94;
        v85 = i;
        if (v86 == i)
        {
          goto LABEL_134;
        }

LABEL_143:
        v95 = v83;
        while (1)
        {
          v97 = (i + v95);
          v98 = (i + v95 - 32);
          v99 = v87 < v98->n128_u64[0];
          if (v87 == v98->n128_u64[0] && (v100 = v97[-1].n128_i64[0], v99 = v89 < v100, v100 == v89))
          {
            if (v91 >= v97[-1].n128_u64[1])
            {
              v85 = (i + v95);
              goto LABEL_134;
            }
          }

          else if (!v99)
          {
            v85 = v86;
            goto LABEL_134;
          }

          v86 -= 2;
          result = *v98;
          v96 = *(i + v95 - 16);
          *v97 = *v98;
          v97[1] = v96;
          v95 -= 32;
          if (!v95)
          {
            v85 = i;
            goto LABEL_134;
          }
        }
      }

      v80 = v84 + 2;
      v83 += 32;
    }

    while (&v84[2] != a2);
  }

  return result;
}

__n128 sub_2C4554(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v3 = a2->n128_u64[0];
  v4 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0])
  {
    v5 = a2[1].n128_i64[0];
    v6 = a1[1].n128_i64[0];
    v4 = v5 < v6;
    if (v6 == v5)
    {
      if (a2[1].n128_u64[1] >= a1[1].n128_u64[1])
      {
        goto LABEL_4;
      }

LABEL_10:
      v7 = a3->n128_u64[0] == v3;
      v11 = a3->n128_u64[0] < v3;
      if (v7 && (v12 = a3[1].n128_i64[0], v13 = a2[1].n128_i64[0], v11 = v12 < v13, v13 == v12))
      {
        if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
        {
LABEL_14:
          v15 = *a1;
          result = a1[1];
          v16 = a2[1];
          *a1 = *a2;
          a1[1] = v16;
          *a2 = v15;
          a2[1] = result;
          v17 = a3->n128_u64[0] < a2->n128_u64[0];
          if (a3->n128_u64[0] == a2->n128_u64[0] && (v18 = a3[1].n128_i64[0], v19 = a2[1].n128_i64[0], v17 = v18 < v19, v19 == v18))
          {
            if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
            {
              return result;
            }
          }

          else if (!v17)
          {
            return result;
          }

          v27 = *a2;
          result = a2[1];
          v28 = a3[1];
          *a2 = *a3;
          a2[1] = v28;
          *a3 = v27;
          a3[1] = result;
          return result;
        }
      }

      else if (!v11)
      {
        goto LABEL_14;
      }

      v25 = *a1;
      result = a1[1];
      v26 = a3[1];
      *a1 = *a3;
      a1[1] = v26;
      *a3 = v25;
      a3[1] = result;
      return result;
    }
  }

  if (v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = a3->n128_u64[0] == v3;
  v8 = a3->n128_u64[0] < v3;
  if (v7 && (v9 = a3[1].n128_i64[0], v10 = a2[1].n128_i64[0], v8 = v9 < v10, v10 == v9))
  {
    if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v8)
  {
    return result;
  }

  v20 = *a2;
  result = a2[1];
  v21 = a3[1];
  *a2 = *a3;
  a2[1] = v21;
  *a3 = v20;
  a3[1] = result;
  v22 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0] && (v23 = a2[1].n128_i64[0], v24 = a1[1].n128_i64[0], v22 = v23 < v24, v24 == v23))
  {
    if (a2[1].n128_u64[1] < a1[1].n128_u64[1])
    {
      goto LABEL_28;
    }
  }

  else if (v22)
  {
LABEL_28:
    v29 = *a1;
    result = a1[1];
    v30 = a2[1];
    *a1 = *a2;
    a1[1] = v30;
    *a2 = v29;
    a2[1] = result;
  }

  return result;
}

__n128 sub_2C4708(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  result.n128_u64[0] = sub_2C4554(a1, a2, a3).n128_u64[0];
  v11 = a4->n128_u64[0] < a3->n128_u64[0];
  if (a4->n128_u64[0] == a3->n128_u64[0] && (v12 = a4[1].n128_i64[0], v13 = a3[1].n128_i64[0], v11 = v12 < v13, v13 == v12))
  {
    if (a4[1].n128_u64[1] >= a3[1].n128_u64[1])
    {
      goto LABEL_17;
    }
  }

  else if (!v11)
  {
    goto LABEL_17;
  }

  v14 = *a3;
  result = a3[1];
  v15 = a4[1];
  *a3 = *a4;
  a3[1] = v15;
  *a4 = v14;
  a4[1] = result;
  v16 = a3->n128_u64[0] < a2->n128_u64[0];
  if (a3->n128_u64[0] == a2->n128_u64[0] && (v17 = a3[1].n128_i64[0], v18 = a2[1].n128_i64[0], v16 = v17 < v18, v18 == v17))
  {
    if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
    {
      goto LABEL_17;
    }
  }

  else if (!v16)
  {
    goto LABEL_17;
  }

  v19 = *a2;
  result = a2[1];
  v20 = a3[1];
  *a2 = *a3;
  a2[1] = v20;
  *a3 = v19;
  a3[1] = result;
  v21 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0])
  {
    v22 = a2[1].n128_i64[0];
    v23 = a1[1].n128_i64[0];
    v21 = v22 < v23;
    if (v23 == v22)
    {
      if (a2[1].n128_u64[1] >= a1[1].n128_u64[1])
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  if (v21)
  {
LABEL_16:
    v24 = *a1;
    result = a1[1];
    v25 = a2[1];
    *a1 = *a2;
    a1[1] = v25;
    *a2 = v24;
    a2[1] = result;
  }

LABEL_17:
  v26 = a5->n128_u64[0] < a4->n128_u64[0];
  if (a5->n128_u64[0] == a4->n128_u64[0] && (v27 = a5[1].n128_i64[0], v28 = a4[1].n128_i64[0], v26 = v27 < v28, v28 == v27))
  {
    if (a5[1].n128_u64[1] >= a4[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v26)
  {
    return result;
  }

  v29 = *a4;
  result = a4[1];
  v30 = a5[1];
  *a4 = *a5;
  a4[1] = v30;
  *a5 = v29;
  a5[1] = result;
  v31 = a4->n128_u64[0] < a3->n128_u64[0];
  if (a4->n128_u64[0] == a3->n128_u64[0] && (v32 = a4[1].n128_i64[0], v33 = a3[1].n128_i64[0], v31 = v32 < v33, v33 == v32))
  {
    if (a4[1].n128_u64[1] >= a3[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v31)
  {
    return result;
  }

  v34 = *a3;
  result = a3[1];
  v35 = a4[1];
  *a3 = *a4;
  a3[1] = v35;
  *a4 = v34;
  a4[1] = result;
  v36 = a3->n128_u64[0] < a2->n128_u64[0];
  if (a3->n128_u64[0] == a2->n128_u64[0] && (v37 = a3[1].n128_i64[0], v38 = a2[1].n128_i64[0], v36 = v37 < v38, v38 == v37))
  {
    if (a3[1].n128_u64[1] >= a2[1].n128_u64[1])
    {
      return result;
    }
  }

  else if (!v36)
  {
    return result;
  }

  v39 = *a2;
  result = a2[1];
  v40 = a3[1];
  *a2 = *a3;
  a2[1] = v40;
  *a3 = v39;
  a3[1] = result;
  v41 = a2->n128_u64[0] < a1->n128_u64[0];
  if (a2->n128_u64[0] == a1->n128_u64[0] && (v42 = a2[1].n128_i64[0], v43 = a1[1].n128_i64[0], v41 = v42 < v43, v43 == v42))
  {
    if (a2[1].n128_u64[1] < a1[1].n128_u64[1])
    {
      goto LABEL_37;
    }
  }

  else if (v41)
  {
LABEL_37:
    v44 = *a1;
    result = a1[1];
    v45 = a2[1];
    *a1 = *a2;
    a1[1] = v45;
    *a2 = v44;
    a2[1] = result;
  }

  return result;
}

BOOL sub_2C49B4(__n128 *a1, __n128 *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 <= 2)
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
      if (v6 && (v8 = a2[-1].n128_i64[0], v9 = a1[1].n128_i64[0], v7 = v8 < v9, v9 == v8))
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

      v38 = *a1;
      v37 = a1[1];
      v39 = a2[-1];
      *a1 = *v4;
      a1[1] = v39;
      *v4 = v38;
      a2[-1] = v37;
      return 1;
    }

    goto LABEL_15;
  }

  if (v2 == 3)
  {
    sub_2C4554(a1, a1 + 2, a2 - 2);
    return 1;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      sub_2C4708(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

LABEL_15:
    v10 = a1 + 4;
    sub_2C4554(a1, a1 + 2, a1 + 4);
    v13 = a1 + 6;
    if (&a1[6] == a2)
    {
      return 1;
    }

    v14 = 0;
    v15 = 0;
LABEL_20:
    v16 = v13->n128_u64[0];
    v17 = v13->n128_u64[0] < v10->n128_u64[0];
    if (v13->n128_u64[0] == v10->n128_u64[0] && (v18 = v13[1].n128_i64[0], v19 = v10[1].n128_i64[0], v17 = v18 < v19, v19 == v18))
    {
      v20 = v13[1].n128_i64[1];
      if (v20 >= v10[1].n128_u64[1])
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_19;
      }

      v18 = v13[1].n128_i64[0];
      v20 = v13[1].n128_i64[1];
    }

    v21 = v13->n128_u64[1];
    v22 = v10[1];
    *v13 = *v10;
    v13[1] = v22;
    v23 = v14;
    while (1)
    {
      v25 = (a1 + v23);
      v26 = *(a1[2].n128_i64 + v23);
      v6 = v16 == v26;
      v27 = v16 < v26;
      if (v6 && (v28 = v25[3].n128_i64[0], v27 = v18 < v28, v28 == v18))
      {
        if (v20 >= v25[3].n128_u64[1])
        {
          v10 = (a1 + v23 + 64);
LABEL_18:
          v10->n128_u64[0] = v16;
          v10->n128_u64[1] = v21;
          v10[1].n128_u64[0] = v18;
          v10[1].n128_u64[1] = v20;
          if (++v15 == 8)
          {
            return &v13[2] == a2;
          }

LABEL_19:
          v10 = v13;
          v14 += 32;
          v13 += 2;
          if (v13 != a2)
          {
            goto LABEL_20;
          }

          return 1;
        }
      }

      else if (!v27)
      {
        goto LABEL_18;
      }

      v10 -= 2;
      v24 = *(a1 + v23 + 48);
      v25[4] = *(a1 + v23 + 32);
      v25[5] = v24;
      v23 -= 32;
      if (v23 == -64)
      {
        v10 = a1;
        goto LABEL_18;
      }
    }
  }

  sub_2C4554(a1, a1 + 2, a1 + 4);
  v31 = a2 - 2;
  v32 = a2[-2].n128_i64[0];
  v33 = a1[4].n128_i64[0];
  v6 = v32 == v33;
  v34 = v32 < v33;
  if (v6 && (v35 = a2[-1].n128_i64[0], v36 = a1[5].n128_i64[0], v34 = v35 < v36, v36 == v35))
  {
    if (a2[-1].n128_u64[1] >= a1[5].n128_u64[1])
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  v41 = a1[4];
  v40 = a1[5];
  v42 = a2[-1];
  a1[4] = *v31;
  a1[5] = v42;
  *v31 = v41;
  a2[-1] = v40;
  v43 = a1[4].n128_i64[0];
  v44 = a1[2].n128_i64[0];
  v6 = v43 == v44;
  v45 = v43 < v44;
  if (v6 && (v46 = a1[5].n128_i64[0], v47 = a1[3].n128_i64[0], v45 = v46 < v47, v47 == v46))
  {
    if (a1[5].n128_u64[1] >= a1[3].n128_u64[1])
    {
      return 1;
    }
  }

  else if (!v45)
  {
    return 1;
  }

  v49 = a1[2];
  v48 = a1[3];
  v50 = a1[5];
  a1[2] = a1[4];
  a1[3] = v50;
  a1[4] = v49;
  a1[5] = v48;
  v51 = a1[2].n128_i64[0];
  v6 = v51 == a1->n128_u64[0];
  v52 = v51 < a1->n128_u64[0];
  if (v6 && (v53 = a1[3].n128_i64[0], v54 = a1[1].n128_i64[0], v52 = v53 < v54, v54 == v53))
  {
    if (a1[3].n128_u64[1] >= a1[1].n128_u64[1])
    {
      return 1;
    }
  }

  else if (!v52)
  {
    return 1;
  }

  v56 = *a1;
  v55 = a1[1];
  v57 = a1[3];
  *a1 = a1[2];
  a1[1] = v57;
  a1[2] = v56;
  a1[3] = v55;
  return 1;
}

uint64_t sub_2C4D48(unsigned int *a1, unsigned int *a2)
{
  v2 = (a2 + *a2);
  v3 = *a1;
  v4 = (v2 - *v2);
  if (*v4 < 5u)
  {
    return v3 != 0;
  }

  v5 = v4[2];
  if (!v5)
  {
    return v3 != 0;
  }

  v6 = *(v2 + v5);
  if (v6 <= v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 >= v3)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

uint64_t sub_2C4DAC(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        return sub_2C52B4(v9, (v9 + 24), a2 - 6);
      case 4uLL:

        return sub_2C5630(v9, (v9 + 24), (v9 + 48), a2 - 6);
      case 5uLL:

        return sub_2C5888(v9, (v9 + 24), (v9 + 48), (v9 + 72), a2 - 6);
    }

LABEL_11:
    if (v12 <= 575)
    {
      if (a5)
      {

        return sub_2C5B9C(v9, a2);
      }

      else
      {

        return sub_2C5D44(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_2C6844(v9, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v9 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      sub_2C52B4((v9 + 24 * v14), v9, a2 - 6);
      if (a5)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_2C52B4(v9, (v9 + 24 * v14), a2 - 6);
      v16 = v9 + 24;
      v17 = 24 * v14;
      v18 = (24 * v14 + v8 - 24);
      sub_2C52B4((v8 + 24), v18, a2 - 12);
      sub_2C52B4((v8 + 48), (v16 + v17), a2 - 18);
      sub_2C52B4(v18, v15, (v16 + v17));
      v40 = *(v8 + 16);
      v38 = *v8;
      v19 = *v15;
      *(v8 + 16) = *(v15 + 16);
      *v8 = v19;
      *(v15 + 16) = v40;
      *v15 = v38;
      if (a5)
      {
        goto LABEL_31;
      }
    }

    v20 = *v8;
    v21 = (*(v8 - 24) << 32) | (*(v8 - 20) << 16);
    if (!*(v8 - 18))
    {
      ++v21;
    }

    if ((v20 & 0xFF000000000000) != 0)
    {
      v22 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
    }

    else
    {
      v22 = ((v20 >> 16) & 0xFFFF0000 | (v20 << 32)) + 1;
    }

    if (v21 >= v22)
    {
      v23 = *(v8 - 24);
      if ((v23 & 0xFF000000000000) != 0)
      {
        v24 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
      }

      else
      {
        v24 = ((v23 >> 16) & 0xFFFF0000 | (v23 << 32)) + 1;
      }

      if (v22 < v24)
      {
LABEL_35:
        result = sub_2C5EBC(v8, a2);
        v9 = result;
        goto LABEL_36;
      }

      v25 = *(v8 - 16);
      v26 = *(v8 + 8);
      if (v26 == v25)
      {
        if (*(v8 - 8) >= *(v8 + 16))
        {
          goto LABEL_35;
        }
      }

      else if (v25 >= v26)
      {
        goto LABEL_35;
      }
    }

LABEL_31:
    v27 = sub_2C61B0(v8, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_34;
    }

    v29 = sub_2C64A8(v8, v27);
    v9 = (v27 + 6);
    result = sub_2C64A8((v27 + 6), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v27;
      if (v29)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v29)
    {
LABEL_34:
      result = sub_2C4DAC(v8, v27, a3, -v11, a5 & 1);
      v9 = (v27 + 6);
LABEL_36:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v13 < 2)
  {
    return result;
  }

  if (v13 != 2)
  {
    goto LABEL_11;
  }

  v30 = a2 - 6;
  v31 = *v9;
  if (*(a2 - 18))
  {
    v32 = (*(a2 - 6) << 32) | (*(a2 - 10) << 16);
  }

  else
  {
    v32 = ((*(a2 - 6) << 32) | (*(a2 - 10) << 16)) + 1;
  }

  v33 = (v31 >> 16) & 0xFFFF0000 | (v31 << 32);
  if ((v31 & 0xFF000000000000) == 0)
  {
    ++v33;
  }

  if (v32 < v33)
  {
    goto LABEL_45;
  }

  if ((*v30 & 0xFF000000000000) != 0)
  {
    v35 = (*v30 >> 16) & 0xFFFF0000 | (*v30 << 32);
  }

  else
  {
    v35 = ((*v30 >> 16) & 0xFFFF0000 | (*v30 << 32)) + 1;
  }

  if (v33 >= v35)
  {
    v36 = *(a2 - 4);
    v37 = *(v9 + 8);
    if (v37 == v36)
    {
      if (*(a2 - 1) >= *(v9 + 16))
      {
        return result;
      }
    }

    else if (v36 >= v37)
    {
      return result;
    }

LABEL_45:
    v41 = *(v9 + 16);
    v39 = *v9;
    v34 = *v30;
    *(v9 + 16) = *(a2 - 1);
    *v9 = v34;
    *v30 = v39;
    *(a2 - 1) = v41;
  }

  return result;
}

uint64_t sub_2C52B4(uint64_t *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a1;
  if (*(a2 + 6))
  {
    v4 = (*a2 << 32) | (*(a2 + 2) << 16);
  }

  else
  {
    v4 = ((*a2 << 32) | (*(a2 + 2) << 16)) + 1;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    v5 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  }

  else
  {
    v5 = ((v3 >> 16) & 0xFFFF0000 | (v3 << 32)) + 1;
  }

  v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  v7 = *a2 & 0xFF000000000000;
  if (v4 < v5)
  {
    goto LABEL_8;
  }

  if (v7)
  {
    v14 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v14 = v6 + 1;
  }

  if (v5 >= v14)
  {
    v35 = a2[2];
    v36 = *(a1 + 2);
    if (v36 == v35)
    {
      if (*(a2 + 2) >= a1[2])
      {
        goto LABEL_20;
      }
    }

    else if (v35 >= v36)
    {
      goto LABEL_20;
    }

LABEL_8:
    if (*(a3 + 6))
    {
      v8 = (*a3 << 32) | (*(a3 + 2) << 16);
    }

    else
    {
      v8 = ((*a3 << 32) | (*(a3 + 2) << 16)) + 1;
    }

    if (v7)
    {
      v9 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
    }

    else
    {
      v9 = v6 + 1;
    }

    if (v8 < v9)
    {
      goto LABEL_15;
    }

    if ((*a3 & 0xFF000000000000) != 0)
    {
      v25 = (*a3 >> 16) & 0xFFFF0000 | (*a3 << 32);
    }

    else
    {
      v25 = ((*a3 >> 16) & 0xFFFF0000 | (*a3 << 32)) + 1;
    }

    if (v9 < v25)
    {
LABEL_35:
      v26 = a1[2];
      v27 = *a1;
      v28 = *(a2 + 2);
      *a1 = *a2;
      a1[2] = v28;
      *a2 = v27;
      *(a2 + 2) = v26;
      v29 = *a2;
      v30 = (*a3 << 32) | (*(a3 + 2) << 16);
      if (!*(a3 + 6))
      {
        ++v30;
      }

      if ((v29 & 0xFF000000000000) != 0)
      {
        v31 = (v29 >> 16) & 0xFFFF0000 | (v29 << 32);
      }

      else
      {
        v31 = ((v29 >> 16) & 0xFFFF0000 | (v29 << 32)) + 1;
      }

      if (v30 < v31)
      {
        goto LABEL_41;
      }

      if ((*a3 & 0xFF000000000000) != 0)
      {
        v43 = (*a3 >> 16) & 0xFFFF0000 | (*a3 << 32);
      }

      else
      {
        v43 = ((*a3 >> 16) & 0xFFFF0000 | (*a3 << 32)) + 1;
      }

      if (v31 >= v43)
      {
        v44 = a3[2];
        v45 = a2[2];
        if (v45 == v44)
        {
          if (*(a3 + 2) < *(a2 + 2))
          {
LABEL_41:
            v32 = *(a2 + 2);
            v33 = *a2;
            v34 = *(a3 + 2);
            *a2 = *a3;
            *(a2 + 2) = v34;
            *a3 = v33;
            *(a3 + 2) = v32;
            return 1;
          }
        }

        else if (v44 < v45)
        {
          goto LABEL_41;
        }
      }

      return 1;
    }

    v38 = a3[2];
    v39 = a2[2];
    if (v39 == v38)
    {
      if (*(a3 + 2) >= *(a2 + 2))
      {
        goto LABEL_35;
      }
    }

    else if (v38 >= v39)
    {
      goto LABEL_35;
    }

LABEL_15:
    v10 = a1[2];
    v11 = *a1;
    v12 = *(a3 + 2);
    *a1 = *a3;
    a1[2] = v12;
    *a3 = v11;
    *(a3 + 2) = v10;
    return 1;
  }

LABEL_20:
  v15 = (*a3 << 32) | (*(a3 + 2) << 16);
  if (!*(a3 + 6))
  {
    ++v15;
  }

  if (v15 < v14)
  {
    goto LABEL_23;
  }

  if ((*a3 & 0xFF000000000000) != 0)
  {
    v37 = (*a3 >> 16) & 0xFFFF0000 | (*a3 << 32);
  }

  else
  {
    v37 = ((*a3 >> 16) & 0xFFFF0000 | (*a3 << 32)) + 1;
  }

  if (v14 < v37)
  {
    return 0;
  }

  v46 = a3[2];
  v47 = a2[2];
  if (v47 == v46)
  {
    if (*(a3 + 2) >= *(a2 + 2))
    {
      return 0;
    }

LABEL_23:
    v16 = *(a2 + 2);
    v17 = *a2;
    v18 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v18;
    *a3 = v17;
    *(a3 + 2) = v16;
    v19 = *a1;
    v20 = (*a2 << 32) | (*(a2 + 2) << 16);
    if (!*(a2 + 6))
    {
      ++v20;
    }

    if ((v19 & 0xFF000000000000) != 0)
    {
      v21 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
    }

    else
    {
      v21 = ((v19 >> 16) & 0xFFFF0000 | (v19 << 32)) + 1;
    }

    if (v20 >= v21)
    {
      if ((*a2 & 0xFF000000000000) != 0)
      {
        v40 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
      }

      else
      {
        v40 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32)) + 1;
      }

      if (v21 < v40)
      {
        return 1;
      }

      v41 = a2[2];
      v42 = *(a1 + 2);
      if (v42 == v41)
      {
        if (*(a2 + 2) >= a1[2])
        {
          return 1;
        }
      }

      else if (v41 >= v42)
      {
        return 1;
      }
    }

    v22 = a1[2];
    v23 = *a1;
    v24 = *(a2 + 2);
    *a1 = *a2;
    a1[2] = v24;
    *a2 = v23;
    *(a2 + 2) = v22;
    return 1;
  }

  if (v46 < v47)
  {
    goto LABEL_23;
  }

  return 0;
}

uint64_t sub_2C5630(__int128 *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  result = sub_2C52B4(a1, a2, a3);
  v9 = *a3;
  v10 = (*a4 << 32) | (*(a4 + 2) << 16);
  if (!*(a4 + 6))
  {
    ++v10;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    v11 = (v9 >> 16) & 0xFFFF0000 | (v9 << 32);
  }

  else
  {
    v11 = ((v9 >> 16) & 0xFFFF0000 | (v9 << 32)) + 1;
  }

  if (v10 >= v11)
  {
    if ((*a4 & 0xFF000000000000) != 0)
    {
      v27 = (*a4 >> 16) & 0xFFFF0000 | (*a4 << 32);
    }

    else
    {
      v27 = ((*a4 >> 16) & 0xFFFF0000 | (*a4 << 32)) + 1;
    }

    if (v11 < v27)
    {
      return result;
    }

    v28 = a4[2];
    v29 = a3[2];
    if (v29 == v28)
    {
      if (*(a4 + 2) >= *(a3 + 2))
      {
        return result;
      }
    }

    else if (v28 >= v29)
    {
      return result;
    }
  }

  v12 = *(a3 + 2);
  v13 = *a3;
  v14 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 2) = v14;
  *a4 = v13;
  *(a4 + 2) = v12;
  v15 = *a2;
  v16 = (*a3 << 32) | (*(a3 + 2) << 16);
  if (!*(a3 + 6))
  {
    ++v16;
  }

  if ((v15 & 0xFF000000000000) != 0)
  {
    v17 = (v15 >> 16) & 0xFFFF0000 | (v15 << 32);
  }

  else
  {
    v17 = ((v15 >> 16) & 0xFFFF0000 | (v15 << 32)) + 1;
  }

  if (v16 >= v17)
  {
    if ((*a3 & 0xFF000000000000) != 0)
    {
      v30 = (*a3 >> 16) & 0xFFFF0000 | (*a3 << 32);
    }

    else
    {
      v30 = ((*a3 >> 16) & 0xFFFF0000 | (*a3 << 32)) + 1;
    }

    if (v17 < v30)
    {
      return result;
    }

    v31 = a3[2];
    v32 = a2[2];
    if (v32 == v31)
    {
      if (*(a3 + 2) >= *(a2 + 2))
      {
        return result;
      }
    }

    else if (v31 >= v32)
    {
      return result;
    }
  }

  v18 = *(a2 + 2);
  v19 = *a2;
  v20 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v20;
  *a3 = v19;
  *(a3 + 2) = v18;
  v21 = *a1;
  v22 = (*a2 << 32) | (*(a2 + 2) << 16);
  if (!*(a2 + 6))
  {
    ++v22;
  }

  if ((v21 & 0xFF000000000000) != 0)
  {
    v23 = (v21 >> 16) & 0xFFFF0000 | (v21 << 32);
  }

  else
  {
    v23 = ((v21 >> 16) & 0xFFFF0000 | (v21 << 32)) + 1;
  }

  if (v22 < v23)
  {
    goto LABEL_19;
  }

  if ((*a2 & 0xFF000000000000) != 0)
  {
    v33 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v33 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32)) + 1;
  }

  if (v23 >= v33)
  {
    v34 = a2[2];
    v35 = *(a1 + 2);
    if (v35 == v34)
    {
      if (*(a2 + 2) >= *(a1 + 2))
      {
        return result;
      }
    }

    else if (v34 >= v35)
    {
      return result;
    }

LABEL_19:
    v24 = *(a1 + 2);
    v25 = *a1;
    v26 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v26;
    *a2 = v25;
    *(a2 + 2) = v24;
  }

  return result;
}

uint64_t sub_2C5888(uint64_t *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_2C5630(a1, a2, a3, a4);
  v11 = *a4;
  v12 = (*a5 << 32) | (*(a5 + 2) << 16);
  if (!*(a5 + 6))
  {
    ++v12;
  }

  if ((v11 & 0xFF000000000000) != 0)
  {
    v13 = (v11 >> 16) & 0xFFFF0000 | (v11 << 32);
  }

  else
  {
    v13 = ((v11 >> 16) & 0xFFFF0000 | (v11 << 32)) + 1;
  }

  if (v12 >= v13)
  {
    if ((*a5 & 0xFF000000000000) != 0)
    {
      v35 = (*a5 >> 16) & 0xFFFF0000 | (*a5 << 32);
    }

    else
    {
      v35 = ((*a5 >> 16) & 0xFFFF0000 | (*a5 << 32)) + 1;
    }

    if (v13 < v35)
    {
      return result;
    }

    v36 = a5[2];
    v37 = a4[2];
    if (v37 == v36)
    {
      if (*(a5 + 2) >= *(a4 + 2))
      {
        return result;
      }
    }

    else if (v36 >= v37)
    {
      return result;
    }
  }

  v14 = *(a4 + 2);
  v15 = *a4;
  v16 = *(a5 + 2);
  *a4 = *a5;
  *(a4 + 2) = v16;
  *a5 = v15;
  *(a5 + 2) = v14;
  v17 = *a3;
  v18 = (*a4 << 32) | (*(a4 + 2) << 16);
  if (!*(a4 + 6))
  {
    ++v18;
  }

  if ((v17 & 0xFF000000000000) != 0)
  {
    v19 = (v17 >> 16) & 0xFFFF0000 | (v17 << 32);
  }

  else
  {
    v19 = ((v17 >> 16) & 0xFFFF0000 | (v17 << 32)) + 1;
  }

  if (v18 >= v19)
  {
    if ((*a4 & 0xFF000000000000) != 0)
    {
      v38 = (*a4 >> 16) & 0xFFFF0000 | (*a4 << 32);
    }

    else
    {
      v38 = ((*a4 >> 16) & 0xFFFF0000 | (*a4 << 32)) + 1;
    }

    if (v19 < v38)
    {
      return result;
    }

    v39 = a4[2];
    v40 = a3[2];
    if (v40 == v39)
    {
      if (*(a4 + 2) >= *(a3 + 2))
      {
        return result;
      }
    }

    else if (v39 >= v40)
    {
      return result;
    }
  }

  v20 = *(a3 + 2);
  v21 = *a3;
  v22 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 2) = v22;
  *a4 = v21;
  *(a4 + 2) = v20;
  v23 = *a2;
  v24 = (*a3 << 32) | (*(a3 + 2) << 16);
  if (!*(a3 + 6))
  {
    ++v24;
  }

  if ((v23 & 0xFF000000000000) != 0)
  {
    v25 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
  }

  else
  {
    v25 = ((v23 >> 16) & 0xFFFF0000 | (v23 << 32)) + 1;
  }

  if (v24 >= v25)
  {
    if ((*a3 & 0xFF000000000000) != 0)
    {
      v41 = (*a3 >> 16) & 0xFFFF0000 | (*a3 << 32);
    }

    else
    {
      v41 = ((*a3 >> 16) & 0xFFFF0000 | (*a3 << 32)) + 1;
    }

    if (v25 < v41)
    {
      return result;
    }

    v42 = a3[2];
    v43 = a2[2];
    if (v43 == v42)
    {
      if (*(a3 + 2) >= *(a2 + 2))
      {
        return result;
      }
    }

    else if (v42 >= v43)
    {
      return result;
    }
  }

  v26 = *(a2 + 2);
  v27 = *a2;
  v28 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v28;
  *a3 = v27;
  *(a3 + 2) = v26;
  v29 = *a1;
  v30 = (*a2 << 32) | (*(a2 + 2) << 16);
  if (!*(a2 + 6))
  {
    ++v30;
  }

  if ((v29 & 0xFF000000000000) != 0)
  {
    v31 = (v29 >> 16) & 0xFFFF0000 | (v29 << 32);
  }

  else
  {
    v31 = ((v29 >> 16) & 0xFFFF0000 | (v29 << 32)) + 1;
  }

  if (v30 < v31)
  {
    goto LABEL_25;
  }

  if ((*a2 & 0xFF000000000000) != 0)
  {
    v44 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v44 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32)) + 1;
  }

  if (v31 >= v44)
  {
    v45 = a2[2];
    v46 = *(a1 + 2);
    if (v46 == v45)
    {
      if (*(a2 + 2) >= a1[2])
      {
        return result;
      }
    }

    else if (v45 >= v46)
    {
      return result;
    }

LABEL_25:
    v32 = a1[2];
    v33 = *a1;
    v34 = *(a2 + 2);
    *a1 = *a2;
    a1[2] = v34;
    *a2 = v33;
    *(a2 + 2) = v32;
  }

  return result;
}

void *sub_2C5B9C(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 3;
    if (result + 3 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v6 = v4;
        v4 = v2;
        v7 = *v6;
        if (*(v6 + 30))
        {
          v8 = (*(v6 + 6) << 32) | (*(v6 + 14) << 16);
        }

        else
        {
          v8 = ((*(v6 + 6) << 32) | (*(v6 + 14) << 16)) + 1;
        }

        v9 = (v7 >> 16) & 0xFFFF0000 | (v7 << 32);
        if ((v7 & 0xFF000000000000) == 0)
        {
          ++v9;
        }

        if (v8 < v9)
        {
          break;
        }

        v10 = *v4;
        v23 = (*v4 >> 16) & 0xFFFF0000;
        v13 = *v4 & 0xFF000000000000;
        if (!v13)
        {
          LODWORD(v23) = v23 + 1;
        }

        if (v9 >= (v23 | (v10 << 32)))
        {
          v12 = v10 << 32;
          v11 = *(v6 + 8);
          v24 = *(v6 + 2);
          if (v24 == v11)
          {
            if (v6[5] < v6[2])
            {
              goto LABEL_14;
            }
          }

          else if (v11 < v24)
          {
            goto LABEL_14;
          }
        }

LABEL_6:
        v2 = v4 + 3;
        v3 += 24;
        if (v4 + 3 == a2)
        {
          return result;
        }
      }

      v10 = *v4;
      v11 = *(v6 + 8);
      v12 = *v4 << 32;
      v13 = *v4 & 0xFF000000000000;
LABEL_14:
      v14 = *(v6 + 9);
      v15 = v6[5];
      v16 = (v10 >> 16) & 0xFFFF0000 | v12;
      if (v13)
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 + 1;
      }

      *v4 = *v6;
      v4[2] = v6[2];
      v5 = result;
      if (v6 != result)
      {
        v18 = v3;
        while (1)
        {
          v19 = result + v18;
          v20 = *(result + v18 - 24);
          if ((v20 & 0xFF000000000000) != 0)
          {
            v21 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
          }

          else
          {
            v21 = ((v20 >> 16) & 0xFFFF0000 | (v20 << 32)) + 1;
          }

          if (v17 >= v21)
          {
            if (v21 < v17)
            {
              goto LABEL_28;
            }

            v22 = *(v19 - 4);
            if (v22 == v11)
            {
              if (v15 >= *(v19 - 1))
              {
LABEL_28:
                v5 = v6;
                break;
              }
            }

            else if (v11 >= v22)
            {
              v5 = (result + v18);
              break;
            }
          }

          v6 -= 3;
          *v19 = *(result + v18 - 24);
          *(v19 + 2) = *(result + v18 - 8);
          v18 -= 24;
          if (!v18)
          {
            v5 = result;
            break;
          }
        }
      }

      *v5 = v10;
      *(v5 + 2) = v11;
      *(v5 + 3) = v14;
      v5[2] = v15;
      goto LABEL_6;
    }
  }

  return result;
}

void *sub_2C5D44(void *result, void *a2)
{
  if (result != a2)
  {
LABEL_4:
    while (result + 3 != a2)
    {
      v2 = result;
      result += 3;
      v3 = *v2;
      if (*(v2 + 30))
      {
        v4 = (*(v2 + 6) << 32) | (*(v2 + 14) << 16);
      }

      else
      {
        v4 = ((*(v2 + 6) << 32) | (*(v2 + 14) << 16)) + 1;
      }

      v5 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
      if ((v3 & 0xFF000000000000) == 0)
      {
        ++v5;
      }

      if (v4 < v5)
      {
        v6 = *result;
        v7 = *(v2 + 8);
        v8 = *result << 32;
        v9 = *result & 0xFF000000000000;
LABEL_12:
        v10 = *(v2 + 9);
        v11 = v2[5];
        v12 = (v6 >> 16) & 0xFFFF0000 | v8 | (v9 == 0);
        v13 = (v6 << 32) | (WORD2(v6) << 16);
        if (!v9)
        {
          ++v13;
        }

        for (i = result; ; i -= 3)
        {
          *i = *(i - 3);
          i[2] = *(i - 1);
          v15 = *(i - 6);
          if ((v15 & 0xFF000000000000) != 0)
          {
            v16 = (v15 >> 16) & 0xFFFF0000 | (v15 << 32);
          }

          else
          {
            v16 = ((v15 >> 16) & 0xFFFF0000 | (v15 << 32)) + 1;
          }

          if (v13 >= v16)
          {
            if (v16 < v12)
            {
              goto LABEL_3;
            }

            v17 = *(i - 10);
            if (v17 == v7)
            {
              if (v11 >= *(i - 4))
              {
LABEL_3:
                *(i - 3) = v6 & 0xFFFF000000000000 | (WORD2(v6) << 32) | v6;
                *(i - 4) = v7;
                *(i - 3) = v10;
                *(i - 1) = v11;
                goto LABEL_4;
              }
            }

            else if (v7 >= v17)
            {
              goto LABEL_3;
            }
          }
        }
      }

      v6 = *result;
      v18 = (*result >> 16) & 0xFFFF0000;
      v9 = *result & 0xFF000000000000;
      if (!v9)
      {
        LODWORD(v18) = v18 + 1;
      }

      if (v5 >= (v18 | (v6 << 32)))
      {
        v8 = v6 << 32;
        v7 = *(v2 + 8);
        v19 = *(v2 + 2);
        if (v19 == v7)
        {
          if (v2[5] < v2[2])
          {
            goto LABEL_12;
          }
        }

        else if (v7 < v19)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

void *sub_2C5EBC(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 - 24);
  v6 = (*a1 << 32) | (WORD2(*a1) << 16);
  v7 = (*a1 & 0xFF000000000000) == 0;
  if ((*a1 & 0xFF000000000000) != 0)
  {
    v8 = (*a1 << 32) | (WORD2(*a1) << 16);
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  if ((v5 & 0xFF000000000000) == 0)
  {
    ++v9;
  }

  if (v8 < v9)
  {
LABEL_7:
    i = a1 + 3;
    v11 = a1[3];
    if ((v11 & 0xFF000000000000) != 0)
    {
      v12 = (v11 >> 16) & 0xFFFF0000 | (v11 << 32);
    }

    else
    {
      v12 = ((v11 >> 16) & 0xFFFF0000 | (v11 << 32)) + 1;
    }

    while (v8 >= v12)
    {
      if (v12 >= (v6 | v7))
      {
        v15 = *(i + 2);
        if (v15 == v3)
        {
          if (v4 < i[2])
          {
            goto LABEL_33;
          }
        }

        else if (v3 < v15)
        {
          goto LABEL_33;
        }
      }

      v13 = i[3];
      i += 3;
      v14 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32);
      if ((v13 & 0xFF000000000000) != 0)
      {
        v12 = v14;
      }

      else
      {
        v12 = v14 + 1;
      }
    }

    goto LABEL_33;
  }

  if (v9 >= (v6 | v7))
  {
    v33 = *(a2 - 16);
    if (v33 == v3)
    {
      if (v4 < *(a2 - 8))
      {
        goto LABEL_7;
      }
    }

    else if (v3 < v33)
    {
      goto LABEL_7;
    }
  }

  for (i = a1 + 3; i < a2; i += 3)
  {
    v16 = (*i & 0xFF000000000000) != 0 ? (*i >> 16) & 0xFFFF0000 | (*i << 32) : ((*i >> 16) & 0xFFFF0000 | (*i << 32)) + 1;
    if (v8 < v16)
    {
      break;
    }

    if (v16 >= (v6 | v7))
    {
      v17 = *(i + 2);
      if (v17 == v3)
      {
        if (v4 < i[2])
        {
          break;
        }
      }

      else if (v3 < v17)
      {
        break;
      }
    }
  }

LABEL_33:
  if (i < a2)
  {
    for (a2 -= 24; ; a2 -= 24)
    {
      if ((v5 & 0xFF000000000000) != 0)
      {
        v19 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
      }

      else
      {
        v19 = ((v5 >> 16) & 0xFFFF0000 | (v5 << 32)) + 1;
      }

      if (v8 >= v19)
      {
        if (v19 < (v6 | v7))
        {
          break;
        }

        v20 = *(a2 + 8);
        if (v20 == v3)
        {
          if (v4 >= *(a2 + 16))
          {
            break;
          }
        }

        else if (v3 >= v20)
        {
          break;
        }
      }

      v18 = *(a2 - 24);
      v5 = v18;
    }
  }

  if (i < a2)
  {
    v21 = v6 | v7;
    do
    {
      v35 = i[2];
      v34 = *i;
      v22 = *a2;
      i[2] = *(a2 + 16);
      *i = v22;
      *(a2 + 16) = v35;
      *a2 = v34;
      while (1)
      {
        v23 = i[3];
        i += 3;
        v24 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
        v25 = (v23 & 0xFF000000000000) != 0 ? v24 : v24 + 1;
        if (v8 < v25)
        {
          break;
        }

        if (v25 >= v21)
        {
          v26 = *(i + 2);
          if (v26 == v3)
          {
            if (v4 < i[2])
            {
              goto LABEL_58;
            }
          }

          else if (v3 < v26)
          {
            goto LABEL_58;
          }
        }
      }

      while (1)
      {
        do
        {
LABEL_58:
          v27 = *(a2 - 24);
          a2 -= 24;
          v28 = (v27 >> 16) & 0xFFFF0000 | (v27 << 32);
          if ((v27 & 0xFF000000000000) != 0)
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 + 1;
          }
        }

        while (v8 < v29);
        if (v29 < v21)
        {
          break;
        }

        v30 = *(a2 + 8);
        if (v30 == v3)
        {
          if (v4 >= *(a2 + 16))
          {
            break;
          }
        }

        else if (v3 >= v30)
        {
          break;
        }
      }
    }

    while (i < a2);
  }

  if (i - 3 != a1)
  {
    v31 = *(i - 3);
    a1[2] = *(i - 1);
    *a1 = v31;
  }

  *(i - 3) = v2 & 0xFFFF000000000000 | (WORD2(v2) << 32) | v2;
  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

unsigned int *sub_2C61B0(unsigned int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = (*a1 >> 16) & 0xFFFF0000 | (*a1 << 32);
  if ((*a1 & 0xFF000000000000) == 0)
  {
    ++v6;
  }

  while (1)
  {
    v7 = &a1[v2];
    v8 = (a1[v2 + 6] << 32) | (LOWORD(a1[v2 + 7]) << 16);
    if (!BYTE2(a1[v2 + 7]))
    {
      ++v8;
    }

    if (v8 < v6)
    {
      goto LABEL_5;
    }

    v9 = *(v7 + 3);
    v10 = (v9 & 0xFF000000000000) != 0 ? (v9 >> 16) & 0xFFFF0000 | (v9 << 32) : ((v9 >> 16) & 0xFFFF0000 | (v9 << 32)) + 1;
    if (v6 < v10)
    {
      break;
    }

    v11 = v7[8];
    if (v4 == v11)
    {
      if (*(v7 + 5) >= v5)
      {
        break;
      }
    }

    else if (v11 >= v4)
    {
      break;
    }

LABEL_5:
    v2 += 6;
  }

  v12 = &a1[v2 + 6];
  if (v2 * 4)
  {
    while (1)
    {
      v13 = *(a2 - 24);
      a2 -= 24;
      v14 = (v13 << 32) | (*(a2 + 4) << 16);
      if (!*(a2 + 6))
      {
        ++v14;
      }

      if (v14 < v6)
      {
        break;
      }

      if ((*a2 & 0xFF000000000000) != 0)
      {
        v15 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
      }

      else
      {
        v15 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32)) + 1;
      }

      if (v6 >= v15)
      {
        v16 = *(a2 + 8);
        if (v4 == v16)
        {
          if (*(a2 + 16) < v5)
          {
            break;
          }
        }

        else if (v16 < v4)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_48:
    if (v12 < a2)
    {
      while (1)
      {
        v17 = *(a2 - 24);
        a2 -= 24;
        v18 = (v17 << 32) | (*(a2 + 4) << 16);
        if (!*(a2 + 6))
        {
          ++v18;
        }

        if (v18 < v6)
        {
          break;
        }

        if ((*a2 & 0xFF000000000000) != 0)
        {
          v19 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
        }

        else
        {
          v19 = ((*a2 >> 16) & 0xFFFF0000 | (*a2 << 32)) + 1;
        }

        if (v6 < v19)
        {
          goto LABEL_48;
        }

        v20 = *(a2 + 8);
        if (v4 == v20)
        {
          if (*(a2 + 16) < v5 || v12 >= a2)
          {
            break;
          }
        }

        else if (v20 < v4 || v12 >= a2)
        {
          break;
        }
      }
    }
  }

  v23 = v12;
  if (v12 < a2)
  {
    v24 = a2;
    do
    {
      v38 = *(v23 + 2);
      v37 = *v23;
      v25 = *v24;
      *(v23 + 2) = *(v24 + 16);
      *v23 = v25;
      *(v24 + 16) = v38;
      *v24 = v37;
      v26 = v23 + 6;
      do
      {
        while (1)
        {
          do
          {
            v23 = v26;
            v27 = (*v26 << 32) | (*(v26 + 2) << 16);
            if (*(v23 + 6))
            {
              v28 = v27;
            }

            else
            {
              v28 = v27 + 1;
            }

            v26 = v23 + 6;
          }

          while (v28 < v6);
          if ((*v23 & 0xFF000000000000) != 0)
          {
            v29 = (*v23 >> 16) & 0xFFFF0000 | (*v23 << 32);
          }

          else
          {
            v29 = ((*v23 >> 16) & 0xFFFF0000 | (*v23 << 32)) + 1;
          }

          if (v6 < v29)
          {
            goto LABEL_66;
          }

          v30 = v23[2];
          if (v4 == v30)
          {
            break;
          }

          if (v30 >= v4)
          {
            goto LABEL_66;
          }
        }
      }

      while (*(v23 + 2) < v5);
      while (1)
      {
LABEL_66:
        v31 = *(v24 - 24);
        v24 -= 24;
        v32 = (v31 << 32) | (*(v24 + 4) << 16);
        if (!*(v24 + 6))
        {
          ++v32;
        }

        if (v32 < v6)
        {
          break;
        }

        if ((*v24 & 0xFF000000000000) != 0)
        {
          v33 = (*v24 >> 16) & 0xFFFF0000 | (*v24 << 32);
        }

        else
        {
          v33 = ((*v24 >> 16) & 0xFFFF0000 | (*v24 << 32)) + 1;
        }

        if (v6 >= v33)
        {
          v34 = *(v24 + 8);
          if (v4 == v34)
          {
            if (*(v24 + 16) < v5)
            {
              break;
            }
          }

          else if (v34 < v4)
          {
            break;
          }
        }
      }
    }

    while (v23 < v24);
  }

  if (v23 - 6 != a1)
  {
    v35 = *(v23 - 6);
    *(a1 + 2) = *(v23 - 1);
    *a1 = v35;
  }

  *(v23 - 3) = v3;
  *(v23 - 2) = v4;
  *(v23 - 1) = v5;
  return v23 - 6;
}

BOOL sub_2C64A8(uint64_t a1, unsigned int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_2C52B4(a1, (a1 + 24), a2 - 6);
        return 1;
      case 4:
        sub_2C5630(a1, (a1 + 24), (a1 + 48), a2 - 6);
        return 1;
      case 5:
        sub_2C5888(a1, (a1 + 24), (a1 + 48), (a1 + 72), a2 - 6);
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
      v4 = a2 - 6;
      v5 = *a1;
      if (*(a2 - 18))
      {
        v6 = (*(a2 - 6) << 32) | (*(a2 - 10) << 16);
      }

      else
      {
        v6 = ((*(a2 - 6) << 32) | (*(a2 - 10) << 16)) + 1;
      }

      v7 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
      if ((v5 & 0xFF000000000000) == 0)
      {
        ++v7;
      }

      if (v6 >= v7)
      {
        if ((*v4 & 0xFF000000000000) != 0)
        {
          v35 = (*v4 >> 16) & 0xFFFF0000 | (*v4 << 32);
        }

        else
        {
          v35 = ((*v4 >> 16) & 0xFFFF0000 | (*v4 << 32)) + 1;
        }

        if (v7 < v35)
        {
          return 1;
        }

        v36 = *(a2 - 4);
        v37 = *(a1 + 8);
        if (v37 == v36)
        {
          if (*(a2 - 1) >= *(a1 + 16))
          {
            return 1;
          }
        }

        else if (v36 >= v37)
        {
          return 1;
        }
      }

      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 1);
      *a1 = *v4;
      *(a1 + 16) = v10;
      *v4 = v9;
      *(a2 - 1) = v8;
      return 1;
    }
  }

  v11 = a1 + 48;
  sub_2C52B4(a1, (a1 + 24), (a1 + 48));
  v14 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (2)
  {
    v17 = *v11;
    if (*(v14 + 6))
    {
      v18 = (*v14 << 32) | (*(v14 + 2) << 16);
    }

    else
    {
      v18 = ((*v14 << 32) | (*(v14 + 2) << 16)) + 1;
    }

    v19 = (v17 >> 16) & 0xFFFF0000 | (v17 << 32);
    if ((v17 & 0xFF000000000000) == 0)
    {
      ++v19;
    }

    if (v18 >= v19)
    {
      v20 = *v14;
      v33 = (*v14 >> 16) & 0xFFFF0000;
      v23 = *v14 & 0xFF000000000000;
      if (!v23)
      {
        LODWORD(v33) = v33 + 1;
      }

      if (v19 < (v33 | (v20 << 32)))
      {
        goto LABEL_21;
      }

      v22 = v20 << 32;
      v21 = v14[2];
      v34 = *(v11 + 8);
      if (v34 == v21)
      {
        if (*(v14 + 2) >= *(v11 + 16))
        {
          goto LABEL_21;
        }
      }

      else if (v21 >= v34)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v20 = *v14;
      v21 = v14[2];
      v22 = *v14 << 32;
      v23 = *v14 & 0xFF000000000000;
    }

    v24 = v14[3];
    v25 = *(v14 + 2);
    v26 = (v20 >> 16) & 0xFFFF0000 | v22;
    if (v23)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 1;
    }

    *v14 = *v11;
    *(v14 + 2) = *(v11 + 16);
    v28 = v15;
    while (1)
    {
      v29 = a1 + v28;
      v30 = *(a1 + v28 + 24);
      v31 = (v30 & 0xFF000000000000) != 0 ? (v30 >> 16) & 0xFFFF0000 | (v30 << 32) : ((v30 >> 16) & 0xFFFF0000 | (v30 << 32)) + 1;
      if (v27 >= v31)
      {
        break;
      }

LABEL_34:
      v11 -= 24;
      *(v29 + 48) = *(a1 + v28 + 24);
      *(v29 + 64) = *(a1 + v28 + 40);
      v28 -= 24;
      if (v28 == -48)
      {
        v11 = a1;
        goto LABEL_20;
      }
    }

    if (v31 >= v27)
    {
      v32 = *(v29 + 32);
      if (v32 == v21)
      {
        if (v25 >= *(v29 + 40))
        {
          goto LABEL_20;
        }
      }

      else if (v21 >= v32)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

    v11 = a1 + v28 + 48;
LABEL_20:
    *v11 = v20;
    *(v11 + 8) = v21;
    *(v11 + 12) = v24;
    *(v11 + 16) = v25;
    if (++v16 != 8)
    {
LABEL_21:
      v11 = v14;
      v15 += 24;
      v14 += 6;
      if (v14 == a2)
      {
        return 1;
      }

      continue;
    }

    return v14 + 6 == a2;
  }
}

unsigned int *sub_2C6844(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 24 * v10);
      do
      {
        sub_2C6B6C(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 6)
      {
        v17 = *a1;
        v18 = (*i << 32) | (*(i + 2) << 16);
        if (!*(i + 6))
        {
          ++v18;
        }

        if ((v17 & 0xFF000000000000) != 0)
        {
          v19 = (v17 >> 16) & 0xFFFF0000 | (v17 << 32);
        }

        else
        {
          v19 = ((v17 >> 16) & 0xFFFF0000 | (v17 << 32)) + 1;
        }

        if (v18 >= v19)
        {
          if ((*i & 0xFF000000000000) != 0)
          {
            v20 = (*i >> 16) & 0xFFFF0000 | (*i << 32);
          }

          else
          {
            v20 = ((*i >> 16) & 0xFFFF0000 | (*i << 32)) + 1;
          }

          if (v19 < v20)
          {
            continue;
          }

          v21 = i[2];
          v22 = *(a1 + 8);
          if (v22 == v21)
          {
            if (*(i + 2) >= *(a1 + 16))
            {
              continue;
            }
          }

          else if (v21 >= v22)
          {
            continue;
          }
        }

        v14 = *(i + 2);
        v15 = *i;
        v16 = *(a1 + 16);
        *i = *a1;
        *(i + 2) = v16;
        *a1 = v15;
        *(a1 + 16) = v14;
        sub_2C6B6C(a1, a4, v9, a1);
      }
    }

    if (v8 >= 25)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        while (2)
        {
          v26 = 0;
          v40 = *a1;
          v41 = *(a1 + 16);
          v27 = a1;
          do
          {
            v29 = v27;
            v30 = &v27[6 * v26];
            v27 = v30 + 6;
            v31 = 2 * v26;
            v26 = (2 * v26) | 1;
            v32 = v31 + 2;
            if (v32 < v23)
            {
              v33 = *(v30 + 6);
              v34 = (v30[6] << 32) | (*(v30 + 14) << 16);
              if (!*(v30 + 30))
              {
                ++v34;
              }

              if ((v33 & 0xFF000000000000) != 0)
              {
                v35 = (v33 >> 16) & 0xFFFF0000 | (v33 << 32);
              }

              else
              {
                v35 = ((v33 >> 16) & 0xFFFF0000 | (v33 << 32)) + 1;
              }

              if (v34 < v35)
              {
LABEL_32:
                v27 = v30 + 12;
                v26 = v32;
                goto LABEL_33;
              }

              if ((*v27 & 0xFF000000000000) != 0)
              {
                v36 = (*v27 >> 16) & 0xFFFF0000 | (*v27 << 32);
              }

              else
              {
                v36 = ((*v27 >> 16) & 0xFFFF0000 | (*v27 << 32)) + 1;
              }

              if (v35 >= v36)
              {
                v37 = v30[8];
                v38 = v30[14];
                if (v38 == v37)
                {
                  if (*(v30 + 5) < *(v30 + 8))
                  {
                    goto LABEL_32;
                  }
                }

                else if (v37 < v38)
                {
                  goto LABEL_32;
                }
              }
            }

LABEL_33:
            v28 = *v27;
            *(v29 + 2) = *(v27 + 2);
            *v29 = v28;
          }

          while (v26 <= (v23 - 2) / 2);
          v6 -= 6;
          if (v27 != v6)
          {
            v24 = *v6;
            *(v27 + 2) = *(v6 + 2);
            *v27 = v24;
            *v6 = v40;
            *(v6 + 2) = v41;
            sub_2C6E60(a1, (v27 + 6), a4, 0xAAAAAAAAAAAAAAABLL * ((v27 - a1 + 24) >> 3));
            v25 = v23-- <= 2;
            if (v25)
            {
              return i;
            }

            continue;
          }

          break;
        }

        *(v27 + 2) = v41;
        *v27 = v40;
        v25 = v23-- <= 2;
      }

      while (!v25);
    }

    return i;
  }

  return a3;
}

uint64_t sub_2C6B6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
  v6 = (result + 24 * v5);
  if (0x5555555555555556 * ((a4 - result) >> 3) + 2 >= a3)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 3);
  v8 = (*v6 << 32) | (*(v6 + 2) << 16);
  if (!*(v6 + 6))
  {
    ++v8;
  }

  if ((v7 & 0xFF000000000000) != 0)
  {
    v9 = (v7 >> 16) & 0xFFFF0000 | (v7 << 32);
  }

  else
  {
    v9 = ((v7 >> 16) & 0xFFFF0000 | (v7 << 32)) + 1;
  }

  if (v8 >= v9)
  {
    if ((*v6 & 0xFF000000000000) != 0)
    {
      v10 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32);
    }

    else
    {
      v10 = ((*v6 >> 16) & 0xFFFF0000 | (*v6 << 32)) + 1;
    }

    if (v9 < v10)
    {
      goto LABEL_15;
    }

    v33 = v6[2];
    v34 = v6[8];
    if (v34 == v33)
    {
      if (*(v6 + 2) >= *(v6 + 5))
      {
        goto LABEL_15;
      }
    }

    else if (v33 >= v34)
    {
      goto LABEL_15;
    }
  }

  v6 += 6;
  v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
LABEL_15:
  v11 = *a4;
  if (*(v6 + 6))
  {
    v12 = (*v6 << 32) | (*(v6 + 2) << 16);
  }

  else
  {
    v12 = ((*v6 << 32) | (*(v6 + 2) << 16)) + 1;
  }

  v13 = (v11 >> 16) & 0xFFFF0000 | (v11 << 32);
  if ((v11 & 0xFF000000000000) == 0)
  {
    ++v13;
  }

  if (v12 < v13)
  {
    return result;
  }

  if ((*v6 & 0xFF000000000000) != 0)
  {
    v14 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32);
  }

  else
  {
    v14 = ((*v6 >> 16) & 0xFFFF0000 | (*v6 << 32)) + 1;
  }

  if (v13 >= v14)
  {
    v15 = v6[2];
    v32 = *(a4 + 2);
    if (v32 == v15)
    {
      if (*(v6 + 2) < a4[2])
      {
        return result;
      }
    }

    else
    {
      v35 = v15 >= v32;
      v15 = *(a4 + 2);
      if (!v35)
      {
        return result;
      }
    }
  }

  else
  {
    v15 = *(a4 + 2);
  }

  v16 = *(a4 + 3);
  v17 = a4[2];
  v18 = *(v6 + 2);
  *a4 = *v6;
  a4[2] = v18;
  if (v4 < v5)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v20 = v6;
    v21 = 2 * v5;
    v5 = (2 * v5) | 1;
    v6 = (result + 24 * v5);
    v22 = v21 + 2;
    if (v22 >= a3)
    {
      goto LABEL_42;
    }

    v23 = *(v6 + 3);
    v24 = (*v6 << 32) | (*(v6 + 2) << 16);
    if (!*(v6 + 6))
    {
      ++v24;
    }

    if ((v23 & 0xFF000000000000) != 0)
    {
      v25 = (v23 >> 16) & 0xFFFF0000 | (v23 << 32);
    }

    else
    {
      v25 = ((v23 >> 16) & 0xFFFF0000 | (v23 << 32)) + 1;
    }

    if (v24 < v25)
    {
LABEL_37:
      v6 += 6;
      v5 = v22;
      goto LABEL_42;
    }

    if ((*v6 & 0xFF000000000000) != 0)
    {
      v26 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32);
    }

    else
    {
      v26 = ((*v6 >> 16) & 0xFFFF0000 | (*v6 << 32)) + 1;
    }

    if (v25 >= v26)
    {
      v30 = v6[2];
      v31 = v6[8];
      if (v31 == v30)
      {
        if (*(v6 + 2) < *(v6 + 5))
        {
          goto LABEL_37;
        }
      }

      else if (v30 < v31)
      {
        goto LABEL_37;
      }
    }

LABEL_42:
    v27 = (*v6 << 32) | (*(v6 + 2) << 16);
    if (!*(v6 + 6))
    {
      ++v27;
    }

    if (v27 < v13)
    {
      break;
    }

    if ((*v6 & 0xFF000000000000) != 0)
    {
      v28 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32);
    }

    else
    {
      v28 = ((*v6 >> 16) & 0xFFFF0000 | (*v6 << 32)) + 1;
    }

    if (v13 >= v28)
    {
      v29 = v6[2];
      if (v15 == v29)
      {
        if (*(v6 + 2) < v17)
        {
          break;
        }
      }

      else if (v29 < v15)
      {
        break;
      }
    }

    v19 = *v6;
    *(v20 + 2) = *(v6 + 2);
    *v20 = v19;
    if (v4 < v5)
    {
      goto LABEL_66;
    }
  }

  v6 = v20;
LABEL_66:
  *v6 = v11;
  v6[2] = v15;
  v6[3] = v16;
  *(v6 + 2) = v17;
  return result;
}

uint64_t sub_2C6E60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 24 * (v4 >> 1));
  v7 = *(a2 - 24);
  if (*(v6 + 6))
  {
    v8 = (*v6 << 32) | (*(v6 + 2) << 16);
  }

  else
  {
    v8 = ((*v6 << 32) | (*(v6 + 2) << 16)) + 1;
  }

  v9 = (v7 >> 16) & 0xFFFF0000 | (v7 << 32);
  if ((v7 & 0xFF000000000000) == 0)
  {
    ++v9;
  }

  if (v8 >= v9)
  {
    if ((*v6 & 0xFF000000000000) != 0)
    {
      v20 = (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32);
    }

    else
    {
      v20 = ((*v6 >> 16) & 0xFFFF0000 | (*v6 << 32)) + 1;
    }

    if (v9 < v20)
    {
      return result;
    }

    v10 = v6[2];
    v21 = *(a2 - 16);
    if (v21 == v10)
    {
      if (*(v6 + 2) >= *(a2 - 8))
      {
        return result;
      }
    }

    else
    {
      v22 = v10 >= v21;
      v10 = *(a2 - 16);
      if (v22)
      {
        return result;
      }
    }
  }

  else
  {
    v10 = *(a2 - 16);
  }

  v11 = *(a2 - 12);
  v12 = *(a2 - 8);
  v13 = *(v6 + 2);
  *(a2 - 24) = *v6;
  *(a2 - 8) = v13;
  if (v4 < 2)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v15 = v6;
    v16 = v5 - 1;
    v5 = (v5 - 1) >> 1;
    v6 = (result + 24 * v5);
    v17 = (*v6 << 32) | (*(v6 + 2) << 16);
    if (!*(v6 + 6))
    {
      ++v17;
    }

    if (v17 < v9)
    {
      goto LABEL_12;
    }

    v18 = (*v6 & 0xFF000000000000) != 0 ? (*v6 >> 16) & 0xFFFF0000 | (*v6 << 32) : ((*v6 >> 16) & 0xFFFF0000 | (*v6 << 32)) + 1;
    if (v9 < v18)
    {
      break;
    }

    v19 = v6[2];
    if (v10 == v19)
    {
      if (*(v6 + 2) >= v12)
      {
LABEL_22:
        *v15 = v7;
        v15[2] = v10;
        v15[3] = v11;
        *(v15 + 2) = v12;
        return result;
      }
    }

    else if (v19 >= v10)
    {
      goto LABEL_22;
    }

LABEL_12:
    v14 = *v6;
    *(v15 + 2) = *(v6 + 2);
    *v15 = v14;
    if (v16 <= 1)
    {
      goto LABEL_35;
    }
  }

  v6 = v15;
LABEL_35:
  *v6 = v7;
  v6[2] = v10;
  v6[3] = v11;
  *(v6 + 2) = v12;
  return result;
}

uint64_t sub_2C6FE8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(*(a1 + 24));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2C7084(uint64_t *a1, uint64_t a2)
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

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 152 * v2;
  __p = 0;
  v14 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  v9 = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 56) = v9;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v10 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 80) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(v6 + 136) = *(a2 + 136);
  v15 = 152 * v2 + 152;
  v16 = 0;
  sub_2C723C(a1, &__p);
  v11 = a1[1];
  sub_2C75A4(&__p, v14);
  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_2C7228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2C756C(va);
  _Unwind_Resume(a1);
}

void sub_2C723C(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      v11 = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v9 + 24) = v11;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      *(v9 + 48) = *(v8 + 48);
      v12 = *(v8 + 56);
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 56) = v12;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      v13 = *(v8 + 80);
      *(v9 + 96) = *(v8 + 96);
      *(v9 + 80) = v13;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 120) = 0;
      *(v9 + 128) = 0;
      *(v9 + 112) = 0;
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v9 + 136) = *(v8 + 136);
      v8 += 152;
      v9 += 152;
    }

    while (v8 != v6);
  }

  sub_2C73B4(a1, v5, v6);
  a2[1] = v7;
  v14 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void sub_2C73B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; i += 152)
    {
      v5 = *(i + 112);
      if (v5)
      {
        *(i + 120) = v5;
        operator delete(v5);
      }

      if (*(i + 103) < 0)
      {
        operator delete(*(i + 80));
        if ((*(i + 79) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(i + 47) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(i + 79) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(i + 56));
      if ((*(i + 47) & 0x80000000) == 0)
      {
LABEL_9:
        if (*(i + 23) < 0)
        {
          goto LABEL_14;
        }

        continue;
      }

LABEL_13:
      operator delete(*(i + 24));
      if (*(i + 23) < 0)
      {
LABEL_14:
        operator delete(*i);
      }
    }
  }
}

void sub_2C7464(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    *(a2 + 120) = v3;
    operator delete(v3);
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(*(a2 + 24));
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a2 + 79) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a2 + 56));
  if (*(a2 + 47) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v4 = *a2;

  operator delete(v4);
}

uint64_t sub_2C7504(uint64_t a1)
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
        v4 -= 152;
        sub_2C7464(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_2C756C(uint64_t a1)
{
  sub_2C75A4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2C75A4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    v5 = *(i - 40);
    if (v5)
    {
      *(i - 32) = v5;
      operator delete(v5);
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
      if ((*(i - 73) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(i - 105) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else if ((*(i - 73) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(i - 96));
    if ((*(i - 105) & 0x80000000) == 0)
    {
LABEL_9:
      if (*(i - 129) < 0)
      {
        goto LABEL_14;
      }

      continue;
    }

LABEL_13:
    operator delete(*(i - 128));
    if (*(i - 129) < 0)
    {
LABEL_14:
      operator delete(*(i - 152));
    }
  }
}

uint64_t sub_2C7664(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  sub_D7B0(v20);
  sub_4A5C(&v21, a1, a2);
  sub_38CB98(v20, &v25);
  if ((*(&v23[0].__locale_ + *(v20[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(&v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_66B8(v19, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v25;
  v21 = v5;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_2C78F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_2C795C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  if (v3 && (v5 = sub_2D52A4(v3, 6, 1u, 1), v6) && (v7 = (v5 + *v5), v8 = (v7 - *v7), *v8 >= 0xDu) && (v9 = v8[6]) != 0 && (v10 = (v7 + v9 + *(v7 + v9)), v11 = (v10 - *v10), *v11 >= 0xBu) && (v12 = v11[5]) != 0)
  {
    *(a1 + 16) = *(v10 + v12) != 0;
    return a1;
  }

  else
  {
    *(a1 + 16) = 0;
    return a1;
  }
}

unint64_t sub_2C7A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 1)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) == 1)
  {
    v3 = a1;
    v4 = a3;
    v5 = nullsub_1(a2);
    a3 = v4;
    a2 = v5;
    a1 = v3;
  }

  result = sub_2C83B4(a1, a2, a3);
  if (result != -1)
  {
    v8 = HIDWORD(result);
    if (HIDWORD(result))
    {
      switch(v7)
      {
        case 0:
          result = v8 | (result << 32);
          break;
        case 1:
          result = v8 | (result << 32);
          break;
        case 2:
          result = v8 | (result << 32);
          break;
        case 3:
          result = v8 | (result << 32);
          break;
        case 4:
          result = v8 | (result << 32);
          break;
        case 5:
          result = v8 | (result << 32);
          break;
        case 6:
          result = v8 | (result << 32);
          break;
        case 7:
          result = v8 | (result << 32);
          break;
        case 8:
          result = v8 | (result << 32);
          break;
        case 9:
          result = v8 | (result << 32);
          break;
        case 10:
          result = v8 | (result << 32);
          break;
        case 11:
          result = v8 | (result << 32);
          break;
        case 12:
          result = v8 | (result << 32);
          break;
        case 13:
          result = v8 | (result << 32);
          break;
        case 14:
          result = v8 | (result << 32);
          break;
        default:
          return result;
      }
    }
  }

  return result;
}

unint64_t sub_2C7C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 4)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 5)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 6)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 7)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 8)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 9)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 10)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 11)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2C7A60(a1, a2, a3);
  if (v4 != 14)
  {
    return 0xFFFFFFFF00000000;
  }

  return result;
}

unint64_t sub_2C7DB0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v19, 0, sizeof(v19));
  *(&v19.__r_.__value_.__s + 23) = v4 + 1;
  if (v4)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(&v19, a2, v4);
  }

  *(&v19.__r_.__value_.__l.__data_ + v4) = 95;
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = std::string::append(&v19, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v21 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = sub_2C7F90(a1, v13, a4);
  v16 = 0xFFFFFFFF00000000;
  if (v14 == -1)
  {
    v17 = 0;
    if (SHIBYTE(v21) < 0)
    {
LABEL_29:
      operator delete(__p[0]);
    }
  }

  else
  {
    if (HIDWORD(v14) != 0 && v15 == 4)
    {
      v16 = v14 << 32;
      v17 = HIDWORD(v14);
    }

    else
    {
      v17 = 0;
    }

    if (SHIBYTE(v21) < 0)
    {
      goto LABEL_29;
    }
  }

  return v16 | v17;
}

void sub_2C7F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2C7F90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v32 = a3;
  LODWORD(__key[0]) = 1;
  *__p = 0u;
  v30 = 0u;
  v31 = 0u;
  sub_2B1DB8(__p, __key, 1uLL);
  v5 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
    goto LABEL_23;
  }

  while (1)
  {
    v6 = *(*(__p[1] + ((v31 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v31 & 0x3FF));
    *&v31 = v31 + 1;
    *(&v31 + 1) = v5 - 1;
    if (v31 >= 0x800)
    {
      operator delete(*__p[1]);
      __p[1] = __p[1] + 8;
      *&v31 = v31 - 1024;
    }

    v7 = sub_2D52A4(*a1, 32, v6, 1);
    if (v8)
    {
      v9 = (v7 + *v7);
      v10 = (v9 - *v9);
      if (*v10 >= 9u)
      {
        v11 = v10[4];
        if (v11)
        {
          v12 = (v9 + v11);
          v13 = *v12;
          __key[0] = a2;
          v14 = bsearch(__key, v12 + v13 + 4, *(v12 + v13), 4uLL, sub_2C87AC);
          if (v14)
          {
            v15 = (v14 + *v14);
            v16 = (v15 - *v15);
            if (*v16 >= 7u)
            {
              v17 = v16[3];
              if (v17)
              {
                v18 = *(v15 + v17);
                if (HIDWORD(v18))
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    v19 = sub_57A90(v6);
    v20 = sub_57A90(v6) >> 1;
    if (v19 <= 0x1D && v20 <= v19 >> 1)
    {
      sub_57A90(v6);
      operator new();
    }

    __key[0] = &v32;
    __key[1] = a1;
    sub_2C87F0(0, 0, __p, __key);
    v5 = *(&v31 + 1);
    if (!*(&v31 + 1))
    {
      goto LABEL_23;
    }
  }

  if (sub_2D5204(*a1))
  {
    v22 = v18 & 0xFFFFFFFF00000000 | (v18 >> 4);
  }

  else
  {
LABEL_23:
    v22 = 0xFFFFFFFFLL;
  }

  v23 = __p[1];
  v24 = v30;
  *(&v31 + 1) = 0;
  v25 = (v30 - __p[1]) >> 3;
  if (v25 >= 3)
  {
    do
    {
      operator delete(*v23);
      v24 = v30;
      v23 = (__p[1] + 8);
      __p[1] = v23;
      v25 = (v30 - v23) >> 3;
    }

    while (v25 > 2);
  }

  if (v25 == 1)
  {
    v26 = 512;
  }

  else
  {
    if (v25 != 2)
    {
      goto LABEL_31;
    }

    v26 = 1024;
  }

  *&v31 = v26;
LABEL_31:
  if (v23 != v24)
  {
    do
    {
      v27 = *v23++;
      operator delete(v27);
    }

    while (v23 != v24);
    if (v30 != __p[1])
    {
      *&v30 = v30 + ((__p[1] - v30 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_2C8310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2B2E00(va);
  _Unwind_Resume(a1);
}

void sub_2C8324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_2C836C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
    sub_2B2E00(&a11);
    _Unwind_Resume(a1);
  }

  sub_2B2E00(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_2C83B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v29 = a3;
  LODWORD(__key[0]) = 1;
  *__p = 0u;
  v27 = 0u;
  v28 = 0u;
  sub_2B1DB8(__p, __key, 1uLL);
  v5 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = *(*(__p[1] + ((v28 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v28 & 0x3FF));
    *&v28 = v28 + 1;
    *(&v28 + 1) = v5 - 1;
    if (v28 >= 0x800)
    {
      operator delete(*__p[1]);
      __p[1] = __p[1] + 8;
      *&v28 = v28 - 1024;
    }

    v7 = sub_2D52A4(*a1, 32, v6, 1);
    if (v8)
    {
      v9 = (v7 + *v7);
      v10 = (v9 - *v9);
      if (*v10 >= 7u)
      {
        v11 = v10[3];
        if (v11)
        {
          v12 = (v9 + v11);
          v13 = *v12;
          __key[0] = a2;
          v14 = bsearch(__key, v12 + v13 + 4, *(v12 + v13), 0x10uLL, sub_2B2694);
          if (v14)
          {
            v15 = v14[1];
            if (HIDWORD(v15))
            {
              break;
            }
          }
        }
      }
    }

    v16 = sub_57A90(v6);
    v17 = sub_57A90(v6) >> 1;
    if (v16 <= 0x1D && v17 <= v16 >> 1)
    {
      sub_57A90(v6);
      operator new();
    }

    __key[0] = &v29;
    __key[1] = a1;
    sub_2C8B78(0, 0, __p, __key);
    v5 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      goto LABEL_21;
    }
  }

  if (sub_2D5204(*a1))
  {
    v19 = v15 & 0xFFFFFFFF00000000 | (v15 >> 4);
  }

  else
  {
LABEL_21:
    v19 = 0xFFFFFFFFLL;
  }

  v20 = __p[1];
  v21 = v27;
  *(&v28 + 1) = 0;
  v22 = (v27 - __p[1]) >> 3;
  if (v22 >= 3)
  {
    do
    {
      operator delete(*v20);
      v21 = v27;
      v20 = (__p[1] + 8);
      __p[1] = v20;
      v22 = (v27 - v20) >> 3;
    }

    while (v22 > 2);
  }

  if (v22 == 1)
  {
    v23 = 512;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_29;
    }

    v23 = 1024;
  }

  *&v28 = v23;
LABEL_29:
  if (v20 != v21)
  {
    do
    {
      v24 = *v20++;
      operator delete(v24);
    }

    while (v20 != v21);
    if (v27 != __p[1])
    {
      *&v27 = v27 + ((__p[1] - v27 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v19;
}