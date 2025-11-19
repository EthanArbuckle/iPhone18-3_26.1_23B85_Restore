double sub_C12718(uint64_t a1, int a2, uint64_t *a3)
{
  if (a3[1] - *a3 < 8 || a3[3] - a3[2] <= 7)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Empty input supplied to service status scoring algorithm", 0x38uLL);
  }

  sub_C12848(a1, a2, a3, 1, v12);
  sub_C12848(a1, a2, a3 + 2, 0, __p);
  v7 = sub_C12A98(v6, v12, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    operator delete(v12[0]);
  }

  return v7;
}

void sub_C12804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
    v13 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_C12848(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    v9 = a2;
    v11 = 0;
    do
    {
      if ((a4 & 1) != 0 || *(v6 + 5) - 1 >= 2)
      {
        v12 = (*v6 - v9);
        v13 = 1.0;
        if (*(a1 + 64) == 1)
        {
          v14 = *(a1 + 80);
          v15 = v14 / 10;
          v16 = v14 % 10;
          if (v14 < 0)
          {
            v17 = -5;
          }

          else
          {
            v17 = 5;
          }

          v18 = (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
          v19 = *(a1 + 72);
          v20 = (1.0 - exp(-(v19 * v12))) * v18;
          v13 = (1.0 - exp(-(v19 * (v12 + 1.0)))) * v18 / (v12 + 1.0);
          v12 = v20;
        }

        v21 = a5[2];
        if (v11 < v21)
        {
          *v11 = v12;
          *(v11 + 8) = v13;
          v11 += 16;
        }

        else
        {
          v22 = v11;
          v23 = v11 >> 4;
          v24 = v23 + 1;
          if ((v23 + 1) >> 60)
          {
            *a5 = 0;
            sub_1794();
          }

          if (v21 >> 3 > v24)
          {
            v24 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            if (!(v25 >> 60))
            {
              operator new();
            }

            *a5 = 0;
            sub_1808();
          }

          v26 = (16 * v23);
          *v26 = v12;
          v26[1] = v13;
          v11 = 16 * v23 + 16;
          memcpy(0, 0, v22);
          a5[1] = v11;
          a5[2] = 0;
          v9 = a2;
        }

        a5[1] = v11;
      }

      v6 += 8;
    }

    while (v6 != v7);
  }

  *a5 = 0;
}

void sub_C12A70(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_C12A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 == v4 || (v5 = *a3, v6 = *(a3 + 8), *a3 == v6))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23 = sub_2D390(exception, "Empty input supplied to EMD algorithm", 0x25uLL);
  }

  v7 = 0;
  v8 = 0;
  v9 = (v6 - v5) >> 4;
  v10 = (v4 - v3) >> 4;
  v11 = *v5;
  v12 = *v3;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    v17 = v16;
    v18 = v15;
    v19 = v14;
    if (v12 >= v11)
    {
      v15 = v15 + v5[2 * v7++ + 1];
      v14 = v11;
      if (v7 >= v9)
      {
        v11 = 1.79769313e308;
      }

      else
      {
        v11 = v5[2 * v7];
      }
    }

    else
    {
      v16 = v16 + v3[2 * v8++ + 1];
      v14 = v12;
      if (v8 >= v10)
      {
        v12 = 1.79769313e308;
      }

      else
      {
        v12 = v3[2 * v8];
      }
    }

    v13 = v13 + vabdd_f64(v17, v18) * (v14 - v19);
  }

  while (v8 < v10 || v7 < v9);
  if (v15 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v15;
  }

  result = v13 / v20;
  if (v20 == 0.0)
  {
    return 0.0;
  }

  return result;
}

void sub_C12BEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = *(a3 + 8);
      v9 = *(a3 + 16);
      if (v8 >= v9)
      {
        v12 = *a3;
        v13 = v8 - *a3;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          goto LABEL_31;
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 61))
          {
            operator new();
          }

LABEL_32:
          sub_1808();
        }

        v18 = 8 * v14;
        v19 = *(v3 + 12);
        *v18 = *(v3 + 4);
        *(v18 + 4) = v19;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        *a3 = 0;
        *(a3 + 8) = v11;
        *(a3 + 16) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        v10 = *(v3 + 12);
        *v8 = *(v3 + 4);
        *(v8 + 4) = v10;
        v11 = v8 + 8;
      }

      *(a3 + 8) = v11;
      v20 = *(v3 + 4 * (*(v3 + 8) != 0x7FFFFFFF) + 4);
      v22 = *(a3 + 32);
      v21 = *(a3 + 40);
      if (v22 < v21)
      {
        v6 = *(v3 + 12);
        *v22 = v20;
        *(v22 + 4) = v6;
        v7 = v22 + 8;
      }

      else
      {
        v23 = *(a3 + 24);
        v24 = v22 - v23;
        v25 = (v22 - v23) >> 3;
        v26 = v25 + 1;
        if ((v25 + 1) >> 61)
        {
LABEL_31:
          sub_1794();
        }

        v27 = v21 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        if (v28)
        {
          if (!(v28 >> 61))
          {
            operator new();
          }

          goto LABEL_32;
        }

        v29 = 8 * v25;
        v30 = *(v3 + 12);
        *v29 = v20;
        *(v29 + 4) = v30;
        v7 = 8 * v25 + 8;
        memcpy(0, v23, v24);
        *(a3 + 24) = 0;
        *(a3 + 32) = v7;
        *(a3 + 40) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      *(a3 + 32) = v7;
      v3 += 60;
    }

    while (v3 != v4);
  }
}

_DWORD *sub_C12E10@<X0>(_DWORD *result@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v5 = a4[3];
  v6 = a4[4];
  v7 = (v6 - v5) >> 3;
  if (v7 >= 1)
  {
    if (v6 - v5 != 8)
    {
      do
      {
        v8 = (2 * v7) & 0xFFFFFFFFFFFFFFF8;
        _X14 = v5 + v8;
        __asm { PRFM            #0, [X14] }

        v15 = &v5[2 * (v7 >> 1)];
        _X13 = v15 + v8;
        __asm { PRFM            #0, [X13] }

        if (*v15 >= a2)
        {
          v18 = 0;
        }

        else
        {
          v18 = v7 >> 1;
        }

        v5 += 2 * v18;
        v7 -= v7 >> 1;
      }

      while (v7 > 1);
    }

    v5 += 2 * (*v5 < a2);
  }

  v19 = 2 * *(result + 2);
  v20 = &v5[v19];
  if (v6 < &v5[v19])
  {
    v20 = a4[4];
  }

  v21 = v5;
  if (v5 != v20)
  {
    v21 = v5;
    while (*v21 <= a3)
    {
      v21 += 2;
      if (v21 == v20)
      {
        v21 = v20;
        break;
      }
    }
  }

  if (v5 == v21)
  {
    v22 = 0x7FFFFFFF;
    v24 = *a4;
    v23 = a4[1];
    v25 = v23 - *a4;
    v26 = v25 >> 3;
    if (v25 >> 3 >= 1)
    {
LABEL_17:
      if (v25 == 8)
      {
        v27 = v24;
      }

      else
      {
        v27 = v24;
        do
        {
          v29 = (2 * v26) & 0xFFFFFFFFFFFFFFF8;
          _X4 = v27 + v29;
          __asm { PRFM            #0, [X4] }

          v32 = &v27[2 * (v26 >> 1)];
          _X3 = v32 + v29;
          __asm { PRFM            #0, [X3] }

          if (*v32 >= a2)
          {
            v35 = 0;
          }

          else
          {
            v35 = v26 >> 1;
          }

          v27 += 2 * v35;
          v26 -= v26 >> 1;
        }

        while (v26 > 1);
      }

      v28 = &v27[2 * (*v27 < a2)];
      if (v22 == 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v22 = *v5;
    v24 = *a4;
    v23 = a4[1];
    v25 = v23 - *a4;
    v26 = v25 >> 3;
    if (v25 >> 3 >= 1)
    {
      goto LABEL_17;
    }
  }

  v28 = v24;
  if (v22 == 0x7FFFFFFF)
  {
    goto LABEL_39;
  }

LABEL_28:
  if (v28 < v23)
  {
    v36 = *v28 - v22;
    if (v36 < 0)
    {
      v36 = v22 - *v28;
    }

    v37 = *(result + 1);
    if (v37)
    {
      result = &v28[-2 * v37];
      v38 = v28 - 2;
      while (v28 > v24)
      {
        v39 = *v38 - v22;
        if (v39 < 0)
        {
          v39 = v22 - *v38;
        }

        if (v39 >= v36)
        {
          break;
        }

        v28 -= 2;
        v38 -= 2;
        if (!--v37)
        {
          v28 = result;
          break;
        }
      }
    }
  }

LABEL_39:
  v40 = &v28[v19];
  if (v23 >= v40)
  {
    v23 = v40;
  }

  v41 = v28;
  if (v28 != v23)
  {
    while (*v41 <= a3)
    {
      v41 += 2;
      if (v41 == v23)
      {
        v41 = v23;
        break;
      }
    }
  }

  *a5 = v28;
  a5[1] = v41;
  a5[2] = v5;
  a5[3] = v21;
  return result;
}

uint64_t **sub_C13004(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_C13408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_C1341C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_C13434(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *sub_C135EC(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_C13718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

void sub_C1372C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_A3238C(v4);
  sub_A33528(va1);
  *(v2 + 8) = v3;
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C13754(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = v8;
  while (1)
  {
    v8 = v12;
    v13 = (a2 - v12) >> 3;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v163 = *(a2 - 2);
      v162 = a2 - 2;
      v164 = v163 == *v12;
      v165 = v163 < *v12;
      if (v164)
      {
        v165 = *(v162 + 4) < *(v12 + 4);
      }

      if (v165)
      {
        v166 = *v12;
        v167 = *v162;
        *(v12 + 4) = *(v162 + 2);
        *v12 = v167;
        *v162 = v166;
        *(v162 + 2) = WORD2(v166);
      }

      return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      v179 = (v12 + 8);
      v181 = v12 == a2 || v179 == a2;
      if (a5)
      {
        if (!v181)
        {
          v182 = 0;
          v183 = v12;
          do
          {
            v185 = *(v183 + 8);
            v186 = *(v183 + 12);
            v187 = *v183;
            v188 = *(v183 + 4);
            v183 = v179;
            v189 = v186 < v188;
            v164 = v185 == v187;
            v190 = v185 < v187;
            if (!v164)
            {
              v189 = v190;
            }

            if (v189)
            {
              v191 = *v183;
              v192 = HIDWORD(*v183);
              v193 = v182;
              do
              {
                v194 = v12 + v193;
                *(v194 + 8) = *(v12 + v193);
                *(v194 + 12) = *(v12 + v193 + 4);
                if (!v193)
                {
                  v184 = v12;
                  goto LABEL_173;
                }

                v195 = *(v194 - 8);
                v196 = *(v194 - 4) > v192;
                v164 = v195 == v191;
                v197 = v195 > v191;
                if (!v164)
                {
                  v196 = v197;
                }

                v193 -= 8;
              }

              while (v196);
              v184 = v12 + v193 + 8;
LABEL_173:
              *v184 = v191;
              *(v184 + 4) = v192;
              *(v184 + 5) = BYTE5(v191);
            }

            v179 = (v183 + 8);
            v182 += 8;
          }

          while ((v183 + 8) != a2);
        }
      }

      else if (!v181)
      {
        do
        {
          v203 = *(v8 + 8);
          v204 = *(v8 + 12);
          v205 = *v8;
          v206 = *(v8 + 4);
          v8 = v179;
          v207 = v204 < v206;
          v164 = v203 == v205;
          v208 = v203 < v205;
          if (v164)
          {
            v208 = v207;
          }

          if (v208)
          {
            v209 = *v179;
            v210 = HIDWORD(*v179);
            do
            {
              v211 = v179;
              v212 = *(v179 - 2);
              v179 -= 2;
              *v211 = v212;
              *(v211 + 2) = *(v211 - 2);
              v213 = *(v211 - 4);
              v214 = *(v211 - 12) > v210;
              v164 = v213 == v209;
              v215 = v213 > v209;
              if (!v164)
              {
                v214 = v215;
              }
            }

            while (v214);
            *v179 = v209;
            *(v179 + 4) = v210;
            *(v179 + 5) = BYTE5(v209);
          }

          v179 = (v8 + 8);
        }

        while ((v8 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v12 != a2)
      {

        return sub_C14E98(v12, a2, a2, a3);
      }

      return result;
    }

    v14 = v12 + 8 * (v13 >> 1);
    v15 = *(a2 - 2);
    v16 = *(a2 - 4);
    if (v13 < 0x81)
    {
      v25 = *v12;
      v26 = *(v12 + 4);
      v27 = *v12 < *v14;
      if (*v12 == *v14)
      {
        v27 = v26 < *(v14 + 4);
      }

      v28 = v16 < v26;
      v164 = v15 == v25;
      v29 = v15 < v25;
      if (!v164)
      {
        v28 = v29;
      }

      if (v27)
      {
        v30 = *v14;
        v31 = HIDWORD(*v14);
        if (!v28)
        {
          v67 = *v12;
          *(v14 + 4) = *(v12 + 4);
          *v14 = v67;
          *(v12 + 4) = v31;
          *v12 = v30;
          v68 = *(a2 - 2);
          v69 = *(a2 - 4) < v31;
          v164 = v68 == v30;
          v70 = v68 < v30;
          if (v164)
          {
            v70 = v69;
          }

          if (v70)
          {
            v71 = *v12;
            v72 = *v9;
            *(v12 + 4) = *(a2 - 2);
            *v12 = v72;
            *v9 = v71;
            *(a2 - 2) = WORD2(v71);
          }

LABEL_59:
          --a4;
          if (a5)
          {
            goto LABEL_102;
          }

          goto LABEL_99;
        }

        v32 = *v9;
        *(v14 + 4) = *(a2 - 2);
        *v14 = v32;
        *(a2 - 2) = v31;
        *v9 = v30;
        --a4;
        if (a5)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (!v28)
        {
          goto LABEL_59;
        }

        v38 = *v12;
        v39 = *v9;
        *(v12 + 4) = *(a2 - 2);
        *v12 = v39;
        *v9 = v38;
        *(a2 - 2) = WORD2(v38);
        v40 = *v12 < *v14;
        if (*v12 == *v14)
        {
          v40 = *(v12 + 4) < *(v14 + 4);
        }

        if (!v40)
        {
          goto LABEL_59;
        }

        v41 = *v14;
        v42 = *v12;
        *(v14 + 4) = *(v12 + 4);
        *v14 = v42;
        *v12 = v41;
        *(v12 + 4) = WORD2(v41);
        --a4;
        if (a5)
        {
          goto LABEL_102;
        }
      }

LABEL_99:
      v124 = *(v12 - 8);
      v164 = v124 == *v12;
      v125 = v124 < *v12;
      if (v164)
      {
        v125 = *(v12 - 4) < *(v12 + 4);
      }

      if (v125)
      {
        goto LABEL_102;
      }

      result = sub_C14780(v12, a2);
      v12 = result;
      a5 = 0;
    }

    else
    {
      v17 = *v14;
      v18 = *(v14 + 4);
      v19 = *v14 < *v12;
      if (*v14 == *v12)
      {
        v19 = v18 < *(v12 + 4);
      }

      v20 = v16 < v18;
      v164 = v15 == v17;
      v21 = v15 < v17;
      if (!v164)
      {
        v20 = v21;
      }

      if (v19)
      {
        v22 = *v12;
        v23 = HIDWORD(*v12);
        if (v20)
        {
          v24 = *v9;
          *(v12 + 4) = *(a2 - 2);
          *v12 = v24;
          *(a2 - 2) = v23;
          *v9 = v22;
        }

        else
        {
          v43 = *v14;
          *(v12 + 4) = *(v14 + 4);
          *v12 = v43;
          *(v14 + 4) = v23;
          *v14 = v22;
          v44 = *(a2 - 2);
          v45 = *(a2 - 4) < v23;
          v164 = v44 == v22;
          v46 = v44 < v22;
          if (v164)
          {
            v46 = v45;
          }

          if (v46)
          {
            v47 = *v14;
            v48 = *v9;
            *(v14 + 4) = *(a2 - 2);
            *v14 = v48;
            *v9 = v47;
            *(a2 - 2) = WORD2(v47);
          }
        }
      }

      else if (v20)
      {
        v33 = *v14;
        v34 = *v9;
        *(v14 + 4) = *(a2 - 2);
        *v14 = v34;
        *v9 = v33;
        *(a2 - 2) = WORD2(v33);
        v35 = *v14 < *v12;
        if (*v14 == *v12)
        {
          v35 = *(v14 + 4) < *(v12 + 4);
        }

        if (v35)
        {
          v36 = *v12;
          v37 = *v14;
          *(v12 + 4) = *(v14 + 4);
          *v12 = v37;
          *v14 = v36;
          *(v14 + 4) = WORD2(v36);
        }
      }

      v49 = (v12 + 8);
      v50 = *(v12 + 8);
      v51 = (v14 - 8);
      v52 = *(v14 - 8);
      v53 = *(v14 - 4);
      v164 = v52 == v50;
      v54 = v52 < v50;
      if (v164)
      {
        v54 = v53 < *(v12 + 12);
      }

      v55 = *(a2 - 4);
      v56 = *(a2 - 12) < v53;
      v164 = v55 == v52;
      v57 = v55 < v52;
      if (!v164)
      {
        v56 = v57;
      }

      if (v54)
      {
        v58 = *v49;
        v59 = HIDWORD(*v49);
        if (v56)
        {
          v60 = *v10;
          *(v12 + 12) = *(a2 - 6);
          *v49 = v60;
          *(a2 - 6) = v59;
          *v10 = v58;
        }

        else
        {
          v73 = *v51;
          *(v12 + 12) = *(v14 - 4);
          *v49 = v73;
          *(v14 - 4) = v59;
          *v51 = v58;
          v74 = *(a2 - 4);
          v75 = *(a2 - 12) < v59;
          v164 = v74 == v58;
          v76 = v74 < v58;
          if (v164)
          {
            v76 = v75;
          }

          if (v76)
          {
            v77 = *v51;
            v78 = *v10;
            *(v14 - 4) = *(a2 - 6);
            *v51 = v78;
            *v10 = v77;
            *(a2 - 6) = WORD2(v77);
          }
        }
      }

      else if (v56)
      {
        v61 = *v51;
        v62 = *v10;
        *(v14 - 4) = *(a2 - 6);
        *v51 = v62;
        *v10 = v61;
        *(a2 - 6) = WORD2(v61);
        v63 = *(v12 + 8);
        v64 = *v51 < v63;
        if (*v51 == v63)
        {
          v64 = *(v14 - 4) < *(v12 + 12);
        }

        if (v64)
        {
          v65 = *v49;
          v66 = *v51;
          *(v12 + 12) = *(v14 - 4);
          *v49 = v66;
          *v51 = v65;
          *(v14 - 4) = WORD2(v65);
        }
      }

      v79 = (v12 + 16);
      v80 = *(v12 + 16);
      v81 = (v14 + 8);
      v82 = *(v14 + 8);
      v83 = *(v14 + 12);
      v164 = v82 == v80;
      v84 = v82 < v80;
      if (v164)
      {
        v84 = v83 < *(v12 + 20);
      }

      v85 = *(a2 - 6);
      v86 = *(a2 - 20) < v83;
      v164 = v85 == v82;
      v87 = v85 < v82;
      if (!v164)
      {
        v86 = v87;
      }

      if (v84)
      {
        v88 = *v79;
        v89 = HIDWORD(*v79);
        if (v86)
        {
          v90 = *v11;
          *(v12 + 20) = *(a2 - 10);
          *v79 = v90;
          *(a2 - 10) = v89;
          *v11 = v88;
        }

        else
        {
          v97 = *v81;
          *(v12 + 20) = *(v14 + 12);
          *v79 = v97;
          *(v14 + 12) = v89;
          *v81 = v88;
          v98 = *(a2 - 6);
          v99 = *(a2 - 20) < v89;
          v164 = v98 == v88;
          v100 = v98 < v88;
          if (v164)
          {
            v100 = v99;
          }

          if (v100)
          {
            v101 = *v81;
            v102 = *v11;
            *(v14 + 12) = *(a2 - 10);
            *v81 = v102;
            *v11 = v101;
            *(a2 - 10) = WORD2(v101);
          }
        }
      }

      else if (v86)
      {
        v91 = *v81;
        v92 = *v11;
        *(v14 + 12) = *(a2 - 10);
        *v81 = v92;
        *v11 = v91;
        *(a2 - 10) = WORD2(v91);
        v93 = *(v12 + 16);
        v94 = *v81 < v93;
        if (*v81 == v93)
        {
          v94 = *(v14 + 12) < *(v12 + 20);
        }

        if (v94)
        {
          v95 = *v79;
          v96 = *v81;
          *(v12 + 20) = *(v14 + 12);
          *v79 = v96;
          *v81 = v95;
          *(v14 + 12) = WORD2(v95);
        }
      }

      v103 = *v14;
      v104 = *(v14 + 4);
      v105 = *v51;
      v106 = *(v14 - 4);
      if (*v14 == *v51)
      {
        v107 = v104 < v106;
      }

      else
      {
        v107 = *v14 < *v51;
      }

      v108 = *v81;
      v109 = *(v14 + 12);
      v110 = v109 < v104;
      v164 = *v81 == v103;
      v111 = *v81 < v103;
      if (v164)
      {
        v111 = v110;
      }

      if (v107)
      {
        v112 = *v51;
        v113 = HIDWORD(*v51);
        if (v111)
        {
          *v51 = *v81;
          *(v14 - 4) = *(v14 + 12);
          *v81 = v112;
          *(v14 + 12) = v113;
        }

        else
        {
          *v51 = *v14;
          *(v14 - 4) = *(v14 + 4);
          *v14 = v112;
          *(v14 + 4) = v113;
          v119 = v109 < v113;
          v164 = v108 == v112;
          v120 = v108 < v112;
          if (!v164)
          {
            v119 = v120;
          }

          if (v119)
          {
            v121 = *v14;
            *v14 = *v81;
            *(v14 + 4) = *(v14 + 12);
            *v81 = v121;
            *(v14 + 12) = WORD2(v121);
          }
        }
      }

      else if (v111)
      {
        v114 = *v14;
        *(v14 + 4) = *(v14 + 12);
        v115 = *v81;
        *v14 = *v81;
        *v81 = v114;
        *(v14 + 12) = WORD2(v114);
        v116 = *(v14 + 4) < v106;
        v164 = v115 == v105;
        v117 = v115 < v105;
        if (!v164)
        {
          v116 = v117;
        }

        if (v116)
        {
          v118 = *v51;
          *v51 = *v14;
          *(v14 - 4) = *(v14 + 4);
          *v14 = v118;
          *(v14 + 4) = WORD2(v118);
        }
      }

      v122 = *v12;
      v123 = *v14;
      *(v12 + 4) = *(v14 + 4);
      *v12 = v123;
      *v14 = v122;
      *(v14 + 4) = WORD2(v122);
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_99;
      }

LABEL_102:
      v126 = 0;
      v127 = *v12;
      v128 = BYTE4(*v12);
      do
      {
        v129 = *(v12 + v126 + 8);
        v130 = *(v12 + v126 + 12) < v128;
        v164 = v129 == v127;
        v131 = v129 < v127;
        if (!v164)
        {
          v130 = v131;
        }

        v126 += 8;
      }

      while (v130);
      v132 = v12 + v126;
      v133 = a2;
      if (v126 == 8)
      {
        v133 = a2;
        do
        {
          if (v132 >= v133)
          {
            break;
          }

          v136 = *(v133 - 2);
          v133 -= 2;
          v137 = v136 < v127;
          if (v136 == v127)
          {
            v137 = *(v133 + 4) < v128;
          }
        }

        while (!v137);
      }

      else
      {
        do
        {
          v134 = *(v133 - 2);
          v133 -= 2;
          v135 = v134 < v127;
          if (v134 == v127)
          {
            v135 = *(v133 + 4) < v128;
          }
        }

        while (!v135);
      }

      v12 = v132;
      if (v132 < v133)
      {
        v138 = v133;
        do
        {
          v139 = *v12;
          v140 = *v138;
          *(v12 + 4) = *(v138 + 4);
          *v12 = v140;
          *v138 = v139;
          *(v138 + 4) = WORD2(v139);
          do
          {
            v141 = *(v12 + 8);
            v12 += 8;
            v142 = v141 < v127;
            if (v141 == v127)
            {
              v142 = *(v12 + 4) < v128;
            }
          }

          while (v142);
          do
          {
            v143 = *(v138 - 8);
            v138 -= 8;
            v144 = v143 < v127;
            if (v143 == v127)
            {
              v144 = *(v138 + 4) < v128;
            }
          }

          while (!v144);
        }

        while (v12 < v138);
      }

      if (v12 - 8 != v8)
      {
        v145 = *(v12 - 8);
        *(v8 + 4) = *(v12 - 4);
        *v8 = v145;
      }

      *(v12 - 8) = v127;
      *(v12 - 4) = v128;
      *(v12 - 3) = BYTE5(v127);
      if (v132 < v133)
      {
        goto LABEL_131;
      }

      v146 = sub_C148D4(v8, v12 - 8);
      result = sub_C148D4(v12, a2);
      if (result)
      {
        a2 = (v12 - 8);
        if (!v146)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v146)
      {
LABEL_131:
        result = sub_C13754(v8, v12 - 8, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      return sub_C14544(v12, (v12 + 8), (v12 + 16), a2 - 2);
    }

    if (v13 == 5)
    {
      result = sub_C14544(v12, (v12 + 8), (v12 + 16), (v12 + 24));
      v148 = *(a2 - 2);
      v147 = a2 - 2;
      v149 = *(v12 + 24);
      v150 = v148 < v149;
      if (v148 == v149)
      {
        v150 = *(v147 + 4) < *(v12 + 28);
      }

      if (!v150)
      {
        return result;
      }

      v151 = *(v12 + 24);
      v152 = *v147;
      *(v12 + 28) = *(v147 + 2);
      *(v12 + 24) = v152;
      *v147 = v151;
      *(v147 + 2) = WORD2(v151);
      LODWORD(v151) = *(v12 + 24);
      v153 = *(v12 + 16);
      v164 = v151 == v153;
      v154 = v151 < v153;
      if (v164)
      {
        v154 = *(v12 + 28) < *(v12 + 20);
      }

      if (!v154)
      {
        return result;
      }

      v155 = *(v12 + 16);
      *(v12 + 20) = *(v12 + 28);
      *(v12 + 16) = *(v12 + 24);
      *(v12 + 24) = v155;
      *(v12 + 28) = WORD2(v155);
      LODWORD(v155) = *(v12 + 16);
      v156 = *(v12 + 8);
      v164 = v155 == v156;
      v157 = v155 < v156;
      if (v164)
      {
        v157 = *(v12 + 20) < *(v12 + 12);
      }

      if (!v157)
      {
        return result;
      }

      v158 = *(v12 + 8);
      *(v12 + 12) = *(v12 + 20);
      *(v12 + 8) = *(v12 + 16);
      *(v12 + 16) = v158;
      *(v12 + 20) = WORD2(v158);
      LODWORD(v158) = *(v12 + 8);
      v164 = v158 == *v12;
      v159 = v158 < *v12;
      if (v164)
      {
        v159 = *(v12 + 12) < *(v12 + 4);
      }

      if (!v159)
      {
        return result;
      }

      v160 = *v12;
      *v12 = *(v12 + 8);
      *(v12 + 4) = *(v12 + 12);
      *(v12 + 8) = v160;
      v161 = HIDWORD(v160);
LABEL_193:
      *(v12 + 12) = v161;
      return result;
    }

    goto LABEL_10;
  }

  v168 = (v12 + 8);
  v169 = *(v12 + 8);
  v170 = a2 - 2;
  v171 = *(a2 - 2);
  v172 = *(v12 + 12);
  v173 = v169 < *v12;
  if (v169 == *v12)
  {
    v173 = v172 < *(v12 + 4);
  }

  v174 = *(a2 - 4) < v172;
  v164 = v171 == v169;
  v175 = v171 < v169;
  if (v164)
  {
    v176 = v174;
  }

  else
  {
    v176 = v175;
  }

  if (v173)
  {
    v177 = *v12;
    if (v176)
    {
      v178 = *v170;
      *(v12 + 4) = *(a2 - 2);
      *v12 = v178;
      *(a2 - 2) = WORD2(v177);
      *v170 = v177;
    }

    else
    {
      *v12 = *v168;
      *(v12 + 4) = *(v12 + 12);
      *(v12 + 8) = v177;
      *(v12 + 12) = WORD2(v177);
      v216 = *(a2 - 2);
      v164 = v216 == v177;
      v217 = v216 < v177;
      if (v164)
      {
        v217 = *(a2 - 4) < BYTE4(v177);
      }

      if (v217)
      {
        v218 = *v168;
        v219 = *v170;
        *(v12 + 12) = *(a2 - 2);
        *v168 = v219;
        *v170 = v218;
        *(a2 - 2) = WORD2(v218);
      }
    }
  }

  else if (v176)
  {
    v198 = *(v12 + 8);
    v199 = *v170;
    *(v12 + 12) = *(a2 - 2);
    *v168 = v199;
    *v170 = v198;
    *(a2 - 2) = WORD2(v198);
    v200 = *(v12 + 8);
    v164 = v200 == *v12;
    v201 = v200 < *v12;
    if (v164)
    {
      v201 = *(v12 + 12) < *(v12 + 4);
    }

    if (v201)
    {
      v202 = *v12;
      *v12 = *v168;
      *(v12 + 4) = *(v12 + 12);
      *(v12 + 8) = v202;
      v161 = HIDWORD(v202);
      goto LABEL_193;
    }
  }

  return result;
}

uint64_t *sub_C14544(uint64_t *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  if (*a2 == *result)
  {
    v6 = v5 < *(result + 4);
  }

  else
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = *a3;
  v8 = *(a3 + 4);
  v9 = v8 < v5;
  v10 = *a3 == v4;
  v11 = *a3 < v4;
  if (!v10)
  {
    v9 = v11;
  }

  if (v6)
  {
    v12 = *result;
    if (v9)
    {
      v13 = *a3;
      *(result + 2) = *(a3 + 2);
      *result = v13;
      *(a3 + 2) = WORD2(v12);
      *a3 = v12;
      v8 = BYTE4(v12);
      LODWORD(v7) = v12;
    }

    else
    {
      v17 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v17;
      *(a2 + 2) = WORD2(v12);
      *a2 = v12;
      LODWORD(v7) = *a3;
      v8 = *(a3 + 4);
      v10 = *a3 == v12;
      v18 = *a3 < v12;
      if (v10)
      {
        v18 = v8 < BYTE4(v12);
      }

      if (v18)
      {
        v7 = *a2;
        v19 = *a3;
        *(a2 + 2) = *(a3 + 2);
        *a2 = v19;
        *a3 = v7;
        *(a3 + 2) = WORD2(v7);
        v8 = BYTE4(v7);
      }
    }
  }

  else if (v9)
  {
    v7 = *a2;
    v14 = *a3;
    *(a2 + 2) = *(a3 + 2);
    *a2 = v14;
    *a3 = v7;
    *(a3 + 2) = WORD2(v7);
    v15 = *a2 < *result;
    if (*a2 == *result)
    {
      v15 = *(a2 + 4) < *(result + 4);
    }

    if (v15)
    {
      v7 = *result;
      v16 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v16;
      *a2 = v7;
      *(a2 + 2) = WORD2(v7);
      LODWORD(v7) = *a3;
      v8 = *(a3 + 4);
    }

    else
    {
      v8 = BYTE4(v7);
    }
  }

  v20 = *(a4 + 4) < v8;
  v10 = *a4 == v7;
  v21 = *a4 < v7;
  if (v10)
  {
    v21 = v20;
  }

  if (v21)
  {
    v22 = *a3;
    v23 = *a4;
    *(a3 + 2) = *(a4 + 2);
    *a3 = v23;
    *a4 = v22;
    *(a4 + 2) = WORD2(v22);
    v24 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v24 = *(a3 + 4) < *(a2 + 4);
    }

    if (v24)
    {
      v25 = *a2;
      v26 = *a3;
      *(a2 + 2) = *(a3 + 2);
      *a2 = v26;
      *a3 = v25;
      *(a3 + 2) = WORD2(v25);
      v27 = *a2 < *result;
      if (*a2 == *result)
      {
        v27 = *(a2 + 4) < *(result + 4);
      }

      if (v27)
      {
        v28 = *result;
        v29 = *a2;
        *(result + 2) = *(a2 + 2);
        *result = v29;
        *a2 = v28;
        *(a2 + 2) = WORD2(v28);
      }
    }
  }

  return result;
}

int *sub_C14780(int *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = BYTE4(*a1);
  v4 = *(a2 - 8);
  v5 = v4 == *a1;
  v6 = v4 > *a1;
  if (v5)
  {
    v6 = *(a2 - 4) > v3;
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v7 += 2;
      v9 = v8 > v2;
      if (v8 == v2)
      {
        v9 = *(v7 + 4) > v3;
      }
    }

    while (!v9);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v7 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *v10;
      v12 = *(v7 + 4) > v3;
      v5 = v11 == v2;
      v13 = v11 > v2;
      if (!v5)
      {
        v12 = v13;
      }

      v10 = v7 + 2;
    }

    while (!v12);
  }

  if (v7 < a2)
  {
    do
    {
      v14 = *(a2 - 8);
      a2 -= 8;
      v15 = v14 > v2;
      if (v14 == v2)
      {
        v15 = *(a2 + 4) > v3;
      }
    }

    while (v15);
  }

  while (v7 < a2)
  {
    v16 = *v7;
    v17 = *a2;
    *(v7 + 2) = *(a2 + 4);
    *v7 = v17;
    *a2 = v16;
    *(a2 + 4) = WORD2(v16);
    do
    {
      v18 = v7[2];
      v7 += 2;
      v19 = v18 > v2;
      if (v18 == v2)
      {
        v19 = *(v7 + 4) > v3;
      }
    }

    while (!v19);
    do
    {
      v20 = *(a2 - 8);
      a2 -= 8;
      v21 = v20 > v2;
      if (v20 == v2)
      {
        v21 = *(a2 + 4) > v3;
      }
    }

    while (v21);
  }

  if (v7 - 2 != a1)
  {
    v22 = *(v7 - 2);
    *(a1 + 2) = *(v7 - 2);
    *a1 = v22;
  }

  *(v7 - 2) = v2;
  *(v7 - 4) = v3;
  *(v7 - 3) = BYTE5(v2);
  return v7;
}

BOOL sub_C148D4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v27 = (a1 + 8);
        v28 = *(a1 + 8);
        v29 = (a2 - 8);
        v30 = *(a2 - 8);
        v31 = *(a1 + 12);
        v32 = v28 < *a1;
        if (v28 == *a1)
        {
          v32 = v31 < *(a1 + 4);
        }

        v33 = *(a2 - 4) < v31;
        v14 = v30 == v28;
        v34 = v30 < v28;
        if (v14)
        {
          v35 = v33;
        }

        else
        {
          v35 = v34;
        }

        if (v32)
        {
          v36 = *a1;
          if (v35)
          {
            v37 = *v29;
            *(a1 + 4) = *(a2 - 4);
            *a1 = v37;
            *(a2 - 4) = WORD2(v36);
            *v29 = v36;
            return 1;
          }

          *a1 = *v27;
          *(a1 + 4) = *(a1 + 12);
          *(a1 + 8) = v36;
          *(a1 + 12) = WORD2(v36);
          v59 = *(a2 - 8);
          v14 = v59 == v36;
          v60 = v59 < v36;
          if (v14)
          {
            v60 = *(a2 - 4) < BYTE4(v36);
          }

          if (v60)
          {
            v61 = *v27;
            v62 = *v29;
            *(a1 + 12) = *(a2 - 4);
            *v27 = v62;
            *v29 = v61;
            *(a2 - 4) = WORD2(v61);
            return 1;
          }
        }

        else if (v35)
        {
          v50 = *(a1 + 8);
          v51 = *v29;
          *(a1 + 12) = *(a2 - 4);
          *v27 = v51;
          *v29 = v50;
          *(a2 - 4) = WORD2(v50);
          v52 = *(a1 + 8);
          v14 = v52 == *a1;
          v53 = v52 < *a1;
          if (v14)
          {
            v53 = *(a1 + 12) < *(a1 + 4);
          }

          if (v53)
          {
            v54 = *a1;
            *a1 = *v27;
            *(a1 + 4) = *(a1 + 12);
            *(a1 + 8) = v54;
            *(a1 + 12) = WORD2(v54);
            return 1;
          }
        }

        return 1;
      case 4:
        sub_C14544(a1, (a1 + 8), (a1 + 16), (a2 - 8));
        return 1;
      case 5:
        sub_C14544(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v11 = (a2 - 8);
        v12 = *(a2 - 8);
        v13 = *(a1 + 24);
        v14 = v12 == v13;
        v15 = v12 < v13;
        if (v14)
        {
          v15 = *(a2 - 4) < *(a1 + 28);
        }

        if (v15)
        {
          v16 = *(a1 + 24);
          v17 = *v11;
          *(a1 + 28) = *(a2 - 4);
          *(a1 + 24) = v17;
          *v11 = v16;
          *(a2 - 4) = WORD2(v16);
          v18 = *(a1 + 24);
          v19 = *(a1 + 16);
          v14 = v18 == v19;
          v20 = v18 < v19;
          if (v14)
          {
            v20 = *(a1 + 28) < *(a1 + 20);
          }

          if (v20)
          {
            v21 = *(a1 + 16);
            *(a1 + 20) = *(a1 + 28);
            *(a1 + 16) = *(a1 + 24);
            *(a1 + 24) = v21;
            *(a1 + 28) = WORD2(v21);
            LODWORD(v21) = *(a1 + 16);
            v22 = *(a1 + 8);
            v14 = v21 == v22;
            v23 = v21 < v22;
            if (v14)
            {
              v23 = *(a1 + 20) < *(a1 + 12);
            }

            if (v23)
            {
              v24 = *(a1 + 8);
              *(a1 + 12) = *(a1 + 20);
              *(a1 + 8) = *(a1 + 16);
              *(a1 + 16) = v24;
              *(a1 + 20) = WORD2(v24);
              LODWORD(v24) = *(a1 + 8);
              v14 = v24 == *a1;
              v25 = v24 < *a1;
              if (v14)
              {
                v25 = *(a1 + 12) < *(a1 + 4);
              }

              if (v25)
              {
                v26 = *a1;
                *a1 = *(a1 + 8);
                *(a1 + 4) = *(a1 + 12);
                *(a1 + 8) = v26;
                *(a1 + 12) = WORD2(v26);
                return 1;
              }
            }
          }
        }

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
      v4 = *(a2 - 8);
      v3 = (a2 - 8);
      v5 = v4 < *a1;
      if (v4 == *a1)
      {
        v5 = *(v3 + 4) < *(a1 + 4);
      }

      if (v5)
      {
        v6 = *a1;
        v7 = *v3;
        *(a1 + 4) = *(v3 + 2);
        *a1 = v7;
        *v3 = v6;
        *(v3 + 2) = WORD2(v6);
        return 1;
      }

      return 1;
    }
  }

  v38 = a1 + 16;
  v39 = *(a1 + 16);
  v40 = (a1 + 8);
  v41 = *(a1 + 8);
  v42 = *(a1 + 12);
  v43 = *a1;
  v44 = *(a1 + 4);
  v45 = v41 < *a1;
  if (v41 == *a1)
  {
    v45 = v42 < v44;
  }

  v46 = *(a1 + 20);
  v47 = v46 < v42;
  v14 = v39 == v41;
  v48 = v39 < v41;
  if (v14)
  {
    v48 = v47;
  }

  if (v45)
  {
    v49 = *a1;
    if (v48)
    {
      *a1 = *v38;
      *(a1 + 4) = *(a1 + 20);
      *(a1 + 16) = v49;
      *(a1 + 20) = WORD2(v49);
    }

    else
    {
      *a1 = *v40;
      *(a1 + 4) = *(a1 + 12);
      *(a1 + 8) = v49;
      *(a1 + 12) = WORD2(v49);
      v14 = v39 == v49;
      v63 = v39 < v49;
      if (v14)
      {
        v63 = v46 < BYTE4(v49);
      }

      if (v63)
      {
        v64 = *v40;
        *v40 = *v38;
        *(a1 + 12) = *(a1 + 20);
        *v38 = v64;
        *(a1 + 20) = WORD2(v64);
      }
    }
  }

  else if (v48)
  {
    v55 = *(a1 + 8);
    *(a1 + 12) = *(a1 + 20);
    *v40 = *v38;
    *(a1 + 16) = v55;
    *(a1 + 20) = WORD2(v55);
    LODWORD(v55) = *(a1 + 8);
    v56 = *(a1 + 12) < v44;
    v14 = v55 == v43;
    v57 = v55 < v43;
    if (v14)
    {
      v57 = v56;
    }

    if (v57)
    {
      v58 = *a1;
      *a1 = *v40;
      *(a1 + 4) = *(a1 + 12);
      *(a1 + 8) = v58;
      *(a1 + 12) = WORD2(v58);
    }
  }

  v65 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v69 = *v38;
    v70 = *(v65 + 4) < *(v38 + 4);
    if (*v65 != v69)
    {
      v70 = *v65 < v69;
    }

    if (v70)
    {
      v71 = *v65;
      v72 = HIDWORD(*v65);
      v73 = v66;
      do
      {
        v74 = a1 + v73;
        *(v74 + 24) = *(a1 + v73 + 16);
        *(v74 + 28) = *(a1 + v73 + 20);
        if (v73 == -16)
        {
          v68 = a1;
          goto LABEL_61;
        }

        v75 = *(v74 + 8);
        v76 = *(v74 + 12) > v72;
        v14 = v75 == v71;
        v77 = v75 > v71;
        if (!v14)
        {
          v76 = v77;
        }

        v73 -= 8;
      }

      while (v76);
      v68 = a1 + v73 + 24;
LABEL_61:
      *v68 = v71;
      *(v68 + 4) = v72;
      *(v68 + 5) = BYTE5(v71);
      if (++v67 == 8)
      {
        return v65 + 8 == a2;
      }
    }

    v38 = v65;
    v66 += 8;
    v65 += 8;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_C14E98(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 8 * v9);
      do
      {
        sub_C1512C(a1, a4, v8, v11--);
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
        v13 = *v12 < *a1;
        if (*v12 == *a1)
        {
          v13 = *(v12 + 4) < *(a1 + 4);
        }

        if (v13)
        {
          v14 = *v12;
          v15 = *a1;
          *(v12 + 2) = *(a1 + 4);
          *v12 = v15;
          *a1 = v14;
          *(a1 + 4) = WORD2(v14);
          sub_C1512C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v18 = 0;
        v19 = *a1;
        v20 = a1;
        do
        {
          v27 = v20 + 8 * v18;
          v25 = v27 + 8;
          v28 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 < v8)
          {
            v22 = *(v27 + 16);
            v21 = v27 + 16;
            v23 = *(v21 - 8);
            v24 = v23 < v22;
            if (v23 == v22)
            {
              v24 = *(v21 - 4) < *(v21 + 4);
            }

            if (v24)
            {
              v25 = v21;
            }

            else
            {
              v18 = v28;
            }
          }

          else
          {
            v18 = v28;
          }

          v26 = *v25;
          *(v20 + 4) = *(v25 + 4);
          *v20 = v26;
          v20 = v25;
        }

        while (v18 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v25 == v6)
        {
          *v25 = v19;
          *(v25 + 4) = WORD2(v19);
        }

        else
        {
          v29 = *v6;
          *(v25 + 4) = *(v6 + 2);
          *v25 = v29;
          *(v6 + 2) = WORD2(v19);
          *v6 = v19;
          v30 = (v25 - a1 + 8) >> 3;
          v17 = v30 < 2;
          v31 = v30 - 2;
          if (!v17)
          {
            v32 = v31 >> 1;
            v33 = a1 + 8 * v32;
            v34 = *v33 < *v25;
            if (*v33 == *v25)
            {
              v34 = *(v33 + 4) < *(v25 + 4);
            }

            if (v34)
            {
              v35 = *v25;
              do
              {
                v36 = v25;
                v25 = v33;
                v37 = *v33;
                *(v36 + 4) = *(v25 + 4);
                *v36 = v37;
                if (!v32)
                {
                  break;
                }

                v32 = (v32 - 1) >> 1;
                v33 = a1 + 8 * v32;
                v38 = *v33 < v35;
                if (*v33 == v35)
                {
                  v38 = *(v33 + 4) < BYTE4(v35);
                }
              }

              while (v38);
              *v25 = v35;
              *(v25 + 4) = BYTE4(v35);
              *(v25 + 5) = BYTE5(v35);
            }
          }
        }

        v17 = v8-- <= 2;
      }

      while (!v17);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_C1512C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v6 + 2 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = *(v8 + 2);
        v12 = *(v8 + 4) < *(v8 + 12);
        if (*v8 != v11)
        {
          v12 = *v8 < v11;
        }

        if (v12)
        {
          v10 = *(v8++ + 2);
          v7 = v9;
        }
      }

      v13 = v10 == *a4;
      v14 = v10 < *a4;
      if (v13)
      {
        v14 = *(v8 + 4) < *(a4 + 4);
      }

      if (!v14)
      {
        v15 = *a4;
        v16 = BYTE4(*a4);
        do
        {
          v22 = a4;
          a4 = v8;
          v23 = *v8;
          *(v22 + 2) = *(a4 + 2);
          *v22 = v23;
          if (v5 < v7)
          {
            break;
          }

          v24 = (2 * v7) | 1;
          v8 = (result + 8 * v24);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v17 = *v8;
            v18 = *(v8 + 2);
            v19 = *(v8 + 4) < *(v8 + 12);
            if (*v8 != v18)
            {
              v19 = *v8 < v18;
            }

            if (v19)
            {
              v17 = *(v8++ + 2);
            }

            else
            {
              v7 = v24;
            }
          }

          else
          {
            v17 = *v8;
            v7 = v24;
          }

          v20 = *(v8 + 4) < v16;
          v13 = v17 == v15;
          v21 = v17 < v15;
          if (!v13)
          {
            v20 = v21;
          }
        }

        while (!v20);
        *a4 = v15;
        *(a4 + 4) = v16;
        *(a4 + 5) = BYTE5(v15);
      }
    }
  }

  return result;
}

void sub_C15280()
{
  v1 = 263;
  strcpy(v0, "unknown");
  v3 = 524;
  strcpy(v2, "good_service");
  v5 = 774;
  strcpy(__p, "delays");
  xmmword_27B3F18 = 0u;
  unk_27B3F28 = 0u;
  dword_27B3F38 = 1065353216;
  sub_C13004(&xmmword_27B3F18, v0);
  sub_C13004(&xmmword_27B3F18, v2);
  sub_C13004(&xmmword_27B3F18, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
    if ((v3 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v1 & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(v0[0]);
      return;
    }
  }

  else if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v2[0]);
  if (v1 < 0)
  {
    goto LABEL_7;
  }
}

void sub_C153E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_23D9C(&xmmword_27B3F18);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_C15444(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  do
  {
    result = sub_C15724(v4, v2);
    v5 += result;
    v2 += 296;
  }

  while (v2 != v3);
  if (!v5)
  {
    return result;
  }

  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v12);
  sub_4A5C(&v12, "The transfer preferences algorithm modified ", 44);
  v6 = std::ostream::operator<<();
  sub_4A5C(v6, " trip pairs", 11);
  if ((v22 & 0x10) != 0)
  {
    v8 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v8 = v18;
    }

    v9 = v17;
    v7 = v8 - v17;
    if (v8 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_24:
      sub_3244();
    }

LABEL_12:
    if (v7 >= 0x17)
    {
      operator new();
    }

    v11 = v7;
    if (v7)
    {
      memmove(&__p, v9, v7);
    }

    goto LABEL_17;
  }

  if ((v22 & 8) != 0)
  {
    v9 = v15;
    v7 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

  v7 = 0;
  v11 = 0;
LABEL_17:
  *(&__p + v7) = 0;
  sub_7E854(&__p, 2u);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v14);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C156D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_C15724(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 200);
  v5 = *(a2 + 208);
  if (v4 != v5)
  {
    v6 = *(a2 + 200);
    do
    {
      if (0xCF3CF3CF3CF3CF3DLL * ((v6[1] - *v6) >> 3) >= 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v67 = sub_2D390(exception, "Transfer preferences algorithm called on bundled journey", 0x38uLL);
      }

      v6 += 9;
    }

    while (v6 != v5);
  }

  v7 = 0x8E38E38E38E38E39 * (v5 - v4);
  if (v7 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  if (v7 <= 3)
  {
    v7 = 3;
  }

  v9 = (v7 - v8 + 1) & 0xFFFFFFFFFFFFFFFELL;
  if (v9 + v8 != 3)
  {
    v11 = 0;
    v70 = 0;
    v12 = v8 + v9 - 3;
    while (1)
    {
      v13 = *(v2 + 200) + v11;
      v14 = *(v13 + 216);
      if (*(v14 + 160) || (v15 = *(v13 + 72), *(v15 + 160)))
      {
LABEL_72:
        sub_5AF20();
      }

      v16 = sub_A57920((*v3 + 4136), *(v15 + 32));
      v17 = (v16 - *v16);
      if (*v17 >= 0x13u)
      {
        v18 = v17[9];
        if (v18)
        {
          if (*(v16 + v18))
          {
            goto LABEL_15;
          }
        }
      }

      v19 = sub_A57920((*v3 + 4136), *(v14 + 32));
      v20 = (v19 - *v19);
      if (*v20 >= 0x13u)
      {
        v21 = v20[9];
        if (v21)
        {
          if (*(v19 + v21))
          {
            goto LABEL_15;
          }
        }
      }

      sub_C16010(v3, v15, v14, &v89);
      if (vmaxv_u16(vmovn_s32(vceqq_s32(v89, xmmword_22AB730))))
      {
        goto LABEL_15;
      }

      if (v90 == -1)
      {
        goto LABEL_15;
      }

      if (!HIDWORD(v90))
      {
        goto LABEL_15;
      }

      v22 = v89.i32[0];
      v23 = v89.u32[3];
      if (v89.i32[0] == *(v15 + 56) && v89.i32[3] == *(v14 + 52))
      {
        goto LABEL_15;
      }

      v24 = *v3;
      v25 = *(v15 + 32);
      v79 = sub_A56F04((*v3 + 4136), v25, v89.u32[0], *(v15 + 40));
      LODWORD(v80) = v26;
      v27 = sub_A57920((v24 + 4136), v25);
      v28 = (v27 - *v27);
      if (*v28 >= 9u && (v29 = v28[4]) != 0)
      {
        v30 = *(sub_A571D4((v27 + v29 + *(v27 + v29)), v22) + 12);
        if (*(v15 + 44) != -1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v30 = *(sub_A571D4(0, v22) + 12);
        if (*(v15 + 44) != -1)
        {
LABEL_34:
          v32 = *(v15 + 48);
          v31 = (v24 + 4184);
          goto LABEL_35;
        }
      }

      v31 = (v24 + 4184);
      v32 = 0x7FFFFFFF;
LABEL_35:
      v76 = sub_A56A5C(v31, &v79, v30, v32);
      v74 = v33;
      v34 = *v3;
      v35 = *(v14 + 32);
      v79 = sub_A56F04((*v3 + 4136), v35, v23, *(v14 + 40));
      LODWORD(v80) = v36;
      v37 = sub_A57920((v34 + 4136), v35);
      v38 = (v37 - *v37);
      if (*v38 >= 9u && (v39 = v38[4]) != 0)
      {
        v40 = *(sub_A571D4((v37 + v39 + *(v37 + v39)), v23) + 12);
        if (*(v14 + 44) == -1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v40 = *(sub_A571D4(0, v23) + 12);
        if (*(v14 + 44) == -1)
        {
LABEL_38:
          v41 = (v34 + 4184);
          v42 = 0x7FFFFFFF;
          goto LABEL_41;
        }
      }

      v42 = *(v14 + 48);
      v41 = (v34 + 4184);
LABEL_41:
      v43 = sub_A56700(v41, &v79, v40, v42);
      v45 = v44;
      v46 = sub_A57920((*v3 + 4136), *(v15 + 32));
      v47 = (v46 - *v46);
      v72 = v45;
      if (*v47 >= 9u && (v48 = v47[4]) != 0)
      {
        v49 = (v46 + v48 + *(v46 + v48));
      }

      else
      {
        v49 = 0;
      }

      v73 = v43;
      v50 = HIDWORD(v43);
      v51 = *(sub_A571D4(v49, v22) + 8);
      v52 = *(v89.u64 + 4);
      v53 = v90;
      v54 = sub_C16234(a1, *(v89.u64 + 4), v90);
      if (v54 == 0x7FFFFFFF || (v54 < 0 ? (v55 = -5) : (v55 = 5), v56 = v54 / 10 + HIDWORD(v76) + (((103 * (v55 + v54 % 10)) >> 15) & 1) + ((103 * (v55 + v54 % 10)) >> 10), v56 > v50 - v51))
      {
        if (sub_7E7E4(1u))
        {
          sub_19594F8(&v79);
          sub_4A5C(&v79, "Timed transfer from from stop ", 30);
          v3 = a1;
          sub_A4FC74((*a1 + 4120), v52);
          v57 = std::ostream::operator<<();
          sub_4A5C(v57, " to stop ", 9);
          sub_A4FC74((*a1 + 4120), v53);
          v58 = std::ostream::operator<<();
          sub_4A5C(v58, " is claimed to be possible in ", 30);
          v59 = std::ostream::operator<<();
          sub_4A5C(v59, " seconds (using expected times, including buffer durations), but actually requires ", 83);
          v61 = std::ostream::operator<<();
          sub_4A5C(v61, " seconds; dropping it.", 22);
          if ((v88 & 0x10) != 0)
          {
            v63 = v87;
            v64 = &v83;
            if (v87 < v84)
            {
              v87 = v84;
              v63 = v84;
              v64 = &v83;
            }
          }

          else
          {
            if ((v88 & 8) == 0)
            {
              v62 = 0;
              v78 = 0;
LABEL_68:
              *(&__dst + v62) = 0;
              sub_7E854(&__dst, 1u);
              v2 = a2;
              if (v78 < 0)
              {
                operator delete(__dst);
              }

              v79 = v69;
              *(&v79 + *(v69 - 3)) = v68;
              if (v86 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v81);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_15;
            }

            v63 = v82[2];
            v64 = v82;
          }

          v65 = *v64;
          v62 = v63 - *v64;
          if (v62 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v62 >= 0x17)
          {
            operator new();
          }

          v78 = v63 - *v64;
          if (v62)
          {
            memmove(&__dst, v65, v62);
          }

          goto LABEL_68;
        }

        v2 = a2;
      }

      else
      {
        *(v15 + 20) = v76;
        *(v15 + 28) = v74;
        *(v15 + 56) = v22;
        *(v14 + 4) = 10 * v51;
        *(v14 + 8) = v73;
        *(v14 + 16) = v72;
        *(v14 + 52) = v23;
        v2 = a2;
        v60 = *(*(a2 + 200) + v11 + 144);
        if (*(v60 + 160) != 1)
        {
          goto LABEL_72;
        }

        *(v60 + 12) = v52;
        *(v60 + 20) = v53;
        ++v70;
        *(v60 + 4) = HIDWORD(v76);
        *(v60 + 8) = v56;
      }

      v3 = a1;
LABEL_15:
      v11 += 144;
      v12 -= 2;
      if (!v12)
      {
        return v70;
      }
    }
  }

  return 0;
}

void sub_C15FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

unint64_t sub_C16010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_A56F04((*a1 + 4136), *(a2 + 32), *(a2 + 56), *(a2 + 40));
  v9 = sub_A56F04((*a1 + 4136), *(a3 + 32), *(a3 + 52), *(a3 + 40));
  result = sub_C164C4((*a1 + 4152), v8, v9);
  v12 = result;
  v13 = v11;
  if (HIDWORD(result))
  {
    v14 = result == 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || HIDWORD(v11) == 0 || v11 == 0xFFFFFFFFLL)
  {
    *a4 = xmmword_22AB730;
    *(a4 + 16) = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = *a1;
    v18 = *(a2 + 32);
    v19 = *(a2 + 52);
    v38 = result;
    sub_A79708(v29, v17, v18, v19, 0, 0);
    v35 = v34 + 12 * *(a2 + 40);
    if (v36 == 1)
    {
      v37 = *(a2 + 44);
    }

    if (v33)
    {
      v20 = *(v33 + 4 * ((v31 - v30) >> 4));
    }

    else
    {
      v20 = 0;
    }

    sub_AA98A0(v29, &v38, v20);
    if (v31 < v32 && v31 >= v30)
    {
      v22 = (v31 - v30) >> 4;
    }

    else
    {
      v22 = -1;
    }

    v23 = *a1;
    v24 = *(a3 + 32);
    v25 = *(a3 + 56);
    v38 = v13;
    sub_A79708(v29, v23, v24, v25, 0, 0);
    v35 = v34 + 12 * *(a3 + 40);
    if (v36 == 1)
    {
      v37 = *(a3 + 44);
    }

    if (v33)
    {
      v26 = *(v33 + 4 * ((v31 - v30) >> 4));
    }

    else
    {
      v26 = 0;
    }

    result = sub_AB3DEC(v29, &v38, v26);
    v27 = v31 < v32 && v31 >= v30;
    v28 = (v31 - v30) >> 4;
    if (!v27)
    {
      LODWORD(v28) = -1;
    }

    *a4 = v22;
    *(a4 + 4) = v12;
    *(a4 + 12) = v28;
    *(a4 + 16) = v13;
  }

  return result;
}

uint64_t sub_C16234(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a3);
  if (HIDWORD(a3) == HIDWORD(a2) && a2 == a3)
  {
    if (HIDWORD(a2) == 1 && (a2 + 3) < 2)
    {
      return 0;
    }

    v20 = *(*a1 + 4120);
    if (*(v20 + 17) == 1)
    {
      v21 = sub_A74944(v20 + 24, a2, 0, "transfers at stop");
      v22 = (v21 - *v21);
      if (*v22 < 5u)
      {
        return 0;
      }

      v23 = v22[2];
      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      v21 = sub_502FF8(v20 + 24, __ROR8__(a2, 32), 0, "stop");
      v24 = (v21 - *v21);
      if (*v24 < 0x15u)
      {
        return 300;
      }

      v23 = v24[10];
      if (!v23)
      {
        return 300;
      }
    }

    return (10 * *(v21 + v23));
  }

  sub_A74644(&v25, *a1, a2);
  v6 = v30;
  v7 = v29;
  v8 = v26;
  v9 = v27;
  if (v30)
  {
    v10 = v29;
  }

  else
  {
    v10 = v27;
  }

  if (v26 >= v10)
  {
    return 0x7FFFFFFFLL;
  }

  while (1)
  {
    v13 = __ROR8__(*v8, 32);
    if (v4 == HIDWORD(v13) && v13 == v3)
    {
      return *(v8 + 2);
    }

    v8 = (v8 + 12);
    v26 = v8;
    if (v8 == v9)
    {
      v8 = v28;
      v26 = v28;
      v6 = 1;
      v30 = 1;
    }

    if (v6)
    {
      v15 = v7;
    }

    else
    {
      v15 = v9;
    }

    if (*(v25 + 16) == 1 && v8 < v15)
    {
      while (1)
      {
        v17 = __ROR8__(*v8, 32);
        if (HIDWORD(v17) == 1 && (v17 + 3) < 2)
        {
          break;
        }

        if (sub_2D5204(**(v25 + 4120)))
        {
          v8 = v26;
          v9 = v27;
          v6 = v30;
          break;
        }

        v9 = v27;
        v8 = (v26 + 12);
        v26 = v8;
        if (v8 == v27)
        {
          v8 = v28;
          v26 = v28;
          v6 = 1;
          v30 = 1;
          if (v28 >= v29)
          {
            break;
          }
        }

        else
        {
          v6 = v30;
          if (v30)
          {
            v19 = 32;
          }

          else
          {
            v19 = 16;
          }

          if (v8 >= *(&v25 + v19))
          {
            break;
          }
        }
      }

      v7 = v29;
    }

    if (v6)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (v8 >= v12)
    {
      return 0x7FFFFFFFLL;
    }
  }
}

unint64_t sub_C164C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2C939C(*a1 + 24, HIDWORD(a2), 1);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = &v5[-*v5];
  if (*v6 < 0x21u)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *&v5[v7];
  v9 = &v5[v7 + v8];
  v10 = *v9;
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  v12 = 4 * v10;
  v13 = v5;
  v14 = &v5[v7 + v8];
  result = 0xFFFFFFFFLL;
  while (1)
  {
    v16 = *&v9[v11 + 4];
    v17 = v16 - *&v9[v11 + 4 + v16];
    v18 = &v14[v11 + v17];
    v19 = *(v18 + 2);
    if (v19 >= 5 && (v20 = *(v18 + 4)) != 0)
    {
      if ((*&v14[v11 + 8 + v16 + v20] | (*&v14[v11 + 4 + v16 + v20] << 32)) != a2)
      {
        goto LABEL_16;
      }
    }

    else if (a2 != 0xFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    if (v19 >= 7 && *&v14[v11 + 10 + v17])
    {
      break;
    }

    if (a3 == 0xFFFFFFFFLL)
    {
      goto LABEL_18;
    }

LABEL_16:
    v11 += 4;
    if (v12 == v11)
    {
      return result;
    }
  }

  if ((*&v14[v11 + 8 + v16 + *&v14[v11 + 10 + v17]] | (*&v14[v11 + 4 + v16 + *&v14[v11 + 10 + v17]] << 32)) != a3)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v19 < 9)
  {
    return 0xFFFFFFFFLL;
  }

  v21 = &v13[v7 + v8 + v11];
  if (*&v21[v17 + 12])
  {
    return *&v21[*&v21[v17 + 12] + 8 + v16] | (*&v21[*&v21[v17 + 12] + 4 + v16] << 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_C16698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  operator new();
}

void sub_C1687C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A31E68(v14);
    _Unwind_Resume(a1);
  }

  sub_A31E68(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_C16900(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_C1694C(v4, v2);
      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_C1694C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_2B7420();
  }

  result = (*(*v3 + 48))(v3);
  if (result)
  {
    v6 = *(a2 + 200);
    v7 = *(a2 + 208);
    while (v6 != v7)
    {
      if (!*(v6 + 24))
      {
        v9 = *v6;
        v10 = *(v6 + 8);
        if (*v6 != v10)
        {
          do
          {
            if (*(v9 + 160))
            {
              goto LABEL_21;
            }

            result = sub_C16A44(a1, v9);
            *(v9 + 159) = result;
            v9 += 168;
          }

          while (v9 != v10);
          v9 = *v6;
          v10 = *(v6 + 8);
        }

        if (v9 != v10)
        {
          v11 = v9 + 168;
          while (!*(v11 - 8))
          {
            v8 = *(v11 - 9);
            if (v8)
            {
              v12 = v11 == v10;
              v11 += 168;
              if (!v12)
              {
                continue;
              }
            }

            goto LABEL_5;
          }

LABEL_21:
          sub_5AF20();
        }

        v8 = 1;
LABEL_5:
        *(v6 + 70) = v8 & 1;
      }

      v6 += 72;
    }
  }

  return result;
}

uint64_t sub_C16A44(uint64_t a1, uint64_t a2)
{
  v60 = *(a2 + 4 * (*(a2 + 12) != 0x7FFFFFFF) + 8);
  v59 = *(a1 + 36);
  if (v59 < 0)
  {
    v3 = -5;
  }

  else
  {
    v3 = 5;
  }

  v57 = v3;
  v58 = *(a1 + 32);
  if (v58 < 0)
  {
    v4 = -5;
  }

  else
  {
    v4 = 5;
  }

  v56 = v4;
  v5 = *(a2 + 52);
  v6 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 32));
  v7 = (v6 - *v6);
  if (*v7 >= 9u && (v8 = v7[4]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = *sub_A571D4(v9, v5);
  v11 = *(a2 + 52);
  v12 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 32));
  v13 = (v12 - *v12);
  v14 = *v13;
  v62 = v10;
  if (v14 < 5)
  {
    v15 = 0;
    goto LABEL_16;
  }

  if (!v13[2])
  {
    v15 = 0;
    if (v14 >= 9)
    {
      goto LABEL_93;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v15 = v12 + v13[2] + *(v12 + v13[2]);
  if (v14 < 9)
  {
    goto LABEL_16;
  }

LABEL_93:
  v55 = v13[4];
  if (!v55)
  {
    goto LABEL_16;
  }

  v16 = (v12 + v55 + *(v12 + v55));
LABEL_17:
  v61 = *&v15[8 * *(sub_A571D4(v16, v11) + 14) + 4];
  v63 = sub_BD5F34((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52));
  v81 = 0u;
  v82 = 0u;
  v83 = 1065353216;
  v17 = *(a2 + 64);
  if (v17 == *(a2 + 72))
  {
    sub_A7905C(v76, *(a1 + 48), __ROR8__(v10, 32), 0, 0, 0);
    v18 = v79;
    if (v79 >= v80)
    {
      goto LABEL_85;
    }

    v19 = -103 * (v57 + v59 - 10 * (((1717986919 * v59) >> 34) + (1717986919 * v59 < 0)));
    v20 = 103 * (v56 + v58 % 10);
    v21 = v59 / -10 + v60 + ((v19 >> 15) & 1) + (v19 >> 10);
    v22 = v58 / 10 + v60 + ((v20 >> 15) & 1) + (v20 >> 10);
    while (1)
    {
      sub_A79708(&v67, *(a1 + 48), __ROR8__(*v18, 32), *(v18 + 8), 0, 0);
      v24 = v70;
      v23 = v71;
      if (v71 >= v70 && v71 < v72)
      {
        break;
      }

LABEL_28:
      v26 = v80;
      v18 = v79 + 16;
      v79 = v18;
      if (v18 == v80)
      {
        v27 = i + 2;
        for (i = v27; v27 < v78; i = v27)
        {
          v18 = *v27;
          v26 = v27[1];
          if (*v27 != v26)
          {
            v79 = *v27;
            v80 = v26;
            goto LABEL_78;
          }

          v27 += 2;
        }

LABEL_85:
        v50 = 1;
        v51 = v82;
        if (!v82)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }

LABEL_78:
      while (v18 < v26)
      {
        v46 = sub_A795E8(v76);
        v18 = v79;
        v26 = v80;
        if (!v46)
        {
          break;
        }

        v18 = v79 + 16;
        v79 = v18;
        if (v18 == v80)
        {
          v47 = i;
          while (1)
          {
            v47 += 2;
            i = v47;
            if (v47 >= v78)
            {
              goto LABEL_22;
            }

            v48 = *v47;
            v49 = v47[1];
            if (*v47 != v49)
            {
              v79 = *v47;
              v80 = v49;
              v26 = v49;
              v18 = v48;
              goto LABEL_78;
            }
          }
        }
      }

LABEL_22:
      if (v18 >= v26)
      {
        goto LABEL_85;
      }
    }

    while (1)
    {
      v28 = v23 - v24;
      v29 = (v23 - v24) >> 4;
      if (v29 > *(v79 + 10))
      {
        goto LABEL_28;
      }

      if (*v23 == v62 && (*(v23 + 15) & 2) != 0)
      {
        break;
      }

LABEL_57:
      v24 = v70;
      v23 = v71 + 16;
      v71 += 16;
      if (*(v67 + 16) == 1 && (v68 & 1) == 0 && v23 >= v70 && v23 < v72)
      {
        do
        {
          v42 = __ROR8__(*v23, 32);
          if (HIDWORD(v42) == 1 && (v42 + 3) < 2)
          {
            break;
          }

          v44 = sub_2D5204(**(v67 + 4120));
          v24 = v70;
          v23 = v71;
          if (v44)
          {
            break;
          }

          v23 = v71 + 16;
          v71 = v23;
        }

        while (v23 >= v70 && v23 < v72);
      }

      if (v23 < v24 || v23 >= v72)
      {
        goto LABEL_28;
      }
    }

    v30 = __ROR8__(*v79, 32);
    v31 = sub_A57920((*(a1 + 48) + 4136), v30);
    v32 = (v31 - *v31);
    v33 = *v32;
    if (v33 < 5)
    {
      v34 = 0;
      goto LABEL_41;
    }

    if (v32[2])
    {
      v34 = v31 + v32[2] + *(v31 + v32[2]);
      if (v33 < 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v34 = 0;
      if (v33 < 9)
      {
        goto LABEL_41;
      }
    }

    v37 = v32[4];
    if (v37)
    {
      v35 = (v31 + v37 + *(v31 + v37));
LABEL_42:
      if (*&v34[8 * *(sub_A571D4(v35, v29) + 14) + 4] == v61 && ((*(a1 + 40) & 1) != 0 || sub_BD5F34((*(a1 + 48) + 4136), v30, v28 >> 4) == v63))
      {
        if (v74 == 1 ? sub_A7A1E8(*(a1 + 48), &v67, v21, 2u) : sub_A7A710(&v67, v21, 1))
        {
          v38 = (v69 + *(v69 - *v69 + 6));
          v39 = v38 + *v38;
          v40 = v74 ? &v75 : v73;
          if (*&v39[8 * *(v73 + 1) + 8 + 8 * ((v71 - v70) >> 4)] + *v40 <= v22)
          {
            v65 = v30;
            v66 = v29;
            if (!sub_C175B0(&v81, &v65))
            {
              goto LABEL_90;
            }
          }
        }
      }

      goto LABEL_57;
    }

LABEL_41:
    v35 = 0;
    goto LABEL_42;
  }

  if (sub_BD5F34((*(a1 + 48) + 4136), *(v17 + 28), *(v17 + 48)) == v63)
  {
    operator new();
  }

LABEL_90:
  v50 = 0;
  v51 = v82;
  if (v82)
  {
    do
    {
LABEL_86:
      v52 = *v51;
      operator delete(v51);
      v51 = v52;
    }

    while (v52);
  }

LABEL_87:
  v53 = v81;
  *&v81 = 0;
  if (v53)
  {
    operator delete(v53);
  }

  return v50;
}

void sub_C171AC(_Unwind_Exception *a1)
{
  operator delete(v1);
  sub_11BD8(v2 - 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_C171F0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = 0xFF51AFD7ED558CCDLL * (*(a2 + 16) ^ (*(a2 + 16) >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = (*(a2 + 24) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  *(v4 - 1) = v7;
  result = sub_C1735C(a1, v7, v4);
  if (!result)
  {
    v9 = a1[1];
    v10 = *(a2 + 8);
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      if (v10 >= *&v9)
      {
        v10 %= *&v9;
      }
    }

    else
    {
      v10 &= *&v9 - 1;
    }

    v12 = *a1;
    v13 = *(*a1 + 8 * v10);
    if (v13)
    {
      *a2 = *v13;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v12 + 8 * v10) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_9;
      }

      v14 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }

        v13 = (v12 + 8 * v14);
      }

      else
      {
        v13 = (v12 + 8 * (v14 & (*&v9 - 1)));
      }
    }

    *v13 = a2;
LABEL_9:
    ++a1[3];
    return a2;
  }

  return result;
}

uint64_t *sub_C1735C(uint64_t a1, unint64_t a2, int *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_34;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }

    else
    {
      v5 = a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
    v6 = *(*a1 + 8 * v5);
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  v7 = *v6;
  if (v7)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = a3[2];
    if (v4.u32[0] < 2uLL)
    {
      while (1)
      {
        v11 = v7[1];
        if (v11 == a2)
        {
          v12 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
          if (v12 && *(v7 + 6) == v10)
          {
            return v7;
          }
        }

        else if ((v11 & (v3 - 1)) != v5)
        {
          goto LABEL_34;
        }

        v7 = *v7;
        if (!v7)
        {
          goto LABEL_34;
        }
      }
    }

    do
    {
      v13 = v7[1];
      if (v13 == a2)
      {
        v14 = *(v7 + 5) == v8 && *(v7 + 4) == v9;
        if (v14 && *(v7 + 6) == v10)
        {
          return v7;
        }
      }

      else
      {
        if (v13 >= v3)
        {
          v13 %= v3;
        }

        if (v13 != v5)
        {
          break;
        }
      }

      v7 = *v7;
    }

    while (v7);
  }

LABEL_34:
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (v3 && (v16 * v3) >= v15)
  {
    return 0;
  }

  v17 = 1;
  if (v3 >= 3)
  {
    v17 = (v3 & (v3 - 1)) != 0;
  }

  v18 = v17 | (2 * v3);
  v19 = vcvtps_u32_f32(v15 / v16);
  if (v18 <= v19)
  {
    prime = v19;
  }

  else
  {
    prime = v18;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    v21 = a1;
    prime = std::__next_prime(prime);
    a1 = v21;
    v3 = *(v21 + 8);
  }

  if (prime <= v3)
  {
    if (prime >= v3)
    {
      return 0;
    }

    v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v3 < 3 || (v23 = vcnt_s8(v3), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = a1;
      v26 = prime;
      v27 = std::__next_prime(v22);
      a1 = v25;
      if (v26 <= v27)
      {
        prime = v27;
      }

      else
      {
        prime = v26;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime >= v3)
      {
        return 0;
      }
    }
  }

  sub_B07C(a1, prime);
  return 0;
}

uint64_t *sub_C175B0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = *(a2 + 2);
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= *&v2)
    {
      v9 = v7 % *&v2;
    }
  }

  else
  {
    v9 = v7 & (*&v2 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  result = *v10;
  if (*v10)
  {
    if (v8.u32[0] < 2uLL)
    {
      v12 = *&v2 - 1;
      while (1)
      {
        v13 = result[1];
        if (v7 == v13)
        {
          v14 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
          if (v14 && *(result + 6) == v6)
          {
            return result;
          }
        }

        else if ((v13 & v12) != v9)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v15 = result[1];
      if (v7 == v15)
      {
        v16 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
        if (v16 && *(result + 6) == v6)
        {
          return result;
        }
      }

      else
      {
        if (v15 >= *&v2)
        {
          v15 %= *&v2;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

_DWORD *sub_C17720(_DWORD *a1, void *a2)
{
  v19 = 9;
  strcpy(__p, "algorithm");
  v3 = sub_5F8FC(a2, __p);
  if (*(v3 + 23) < 0)
  {
    v5 = v3[1];
    if (v5 != 12)
    {
      if (v5 != 13)
      {
        goto LABEL_27;
      }

      v4 = *v3;
      goto LABEL_8;
    }

    if (**v3 != 0x756F6A5F706F7264 || *(*v3 + 8) != 2036690546)
    {
LABEL_27:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      v13 = std::string::append(&v20, " provided in configuration", 0x1BuLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v22 = v13->__r_.__value_.__r.__words[2];
      v21 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (v22 >= 0)
      {
        v15 = &v21;
      }

      else
      {
        v15 = v21;
      }

      if (v22 >= 0)
      {
        v16 = HIBYTE(v22);
      }

      else
      {
        v16 = *(&v21 + 1);
      }

      v17 = sub_2D390(exception, v15, v16);
    }
  }

  else
  {
    if (*(v3 + 23) != 12)
    {
      v4 = v3;
      if (*(v3 + 23) != 13)
      {
        goto LABEL_27;
      }

LABEL_8:
      v6 = *v4;
      v7 = *(v4 + 5);
      if (v6 != 0x7365725F706F7264 || v7 != 0x65736E6F70736572)
      {
        goto LABEL_27;
      }

      *a1 = 1;
      if (v19 < 0)
      {
        goto LABEL_22;
      }

      return a1;
    }

    if (*v3 != 0x756F6A5F706F7264 || *(v3 + 2) != 2036690546)
    {
      goto LABEL_27;
    }
  }

  *a1 = 0;
  if ((v19 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_22:
  operator delete(__p[0]);
  return a1;
}

void sub_C1791C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_C179B4(_DWORD *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = a2 + 8;
    if (v6 == v7)
    {
      return;
    }

    v9 = &v7[-v6 - 296];
    if (v9 >= 0x128)
    {
      v13 = 0;
      v14 = 0;
      v15 = v9 / 0x128 + 1;
      v11 = (v6 + 296 * (v15 & 0x1FFFFFFFFFFFFFELL));
      v16 = v6;
      v17 = v15 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v13 += *v16;
        v14 += v16[296];
        v16 += 592;
        v17 -= 2;
      }

      while (v17);
      v10 = v14 + v13;
      if (v15 == (v15 & 0x1FFFFFFFFFFFFFELL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
      v11 = v6;
    }

    do
    {
      v10 += *v11;
      v11 += 296;
    }

    while (v11 != v7);
LABEL_20:
    if (!v10)
    {
      return;
    }

    v18 = v8;

    goto LABEL_23;
  }

  if (!*a1)
  {
    v3 = *(a2 + 8);
    v5 = *(a2 + 16);
    v4 = a2 + 8;
    if (v3 != v5)
    {
      while ((*v3 & 1) == 0)
      {
        v3 = (v3 + 296);
        if (v3 == v5)
        {
          return;
        }
      }

      if (v3 != v5)
      {
        v12 = (v3 + 296);
        if ((v3 + 296) != v5)
        {
          do
          {
            if ((*v12 & 1) == 0)
            {
              sub_BA9EF8(v3, v12);
              v3 = (v3 + 296);
            }

            v12 = (v12 + 296);
          }

          while (v12 != v5);
          v5 = *(a2 + 16);
        }
      }
    }

    if (v3 != v5)
    {
      v18 = v4;
      v6 = v3;

LABEL_23:
      sub_A32000(v18, v6);
    }
  }
}

uint64_t sub_C17BB4(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  for (i = *(a3 + 56); v3 != i; v3 += 248)
  {
    v6 = *(v3 + 224);
    v5 = *(v3 + 232);
    if (v6 != v5)
    {
      v7 = *(*result + 11688);
      v8 = *a2;
      while (1)
      {
        v9 = *v6;
        if (*(v6 + 4) == 1)
        {
          v10 = v7[1];
          v11 = v7[2];
        }

        else
        {
          v10 = v7[4];
          v11 = v7[5];
        }

        if (0x823EE08FB823EE09 * ((v11 - v10) >> 3) <= v9)
        {
LABEL_43:
          sub_6FAB4();
        }

        v12 = v10 + 456 * v9;
        v13 = *(v12 + 404);
        if (v13 != 0x7FFFFFFF && v13 > v8)
        {
          break;
        }

        v15 = *(v12 + 408);
        if (v15 != 0x7FFFFFFF && v15 < v8)
        {
          break;
        }

        v6 += 2;
        if (v6 == v5)
        {
          goto LABEL_3;
        }
      }

      if (v6 != v5)
      {
        v17 = v6 + 2;
        if (v6 + 2 != v5)
        {
          do
          {
            v18 = *v17;
            v19 = *(*result + 11688);
            if (*(v17 + 4) == 1)
            {
              v22 = v19 + 8;
              v20 = *(v19 + 8);
              v21 = *(v22 + 8);
            }

            else
            {
              v23 = v19 + 32;
              v20 = *(v19 + 32);
              v21 = *(v23 + 8);
            }

            if (0x823EE08FB823EE09 * ((v21 - v20) >> 3) <= v18)
            {
              goto LABEL_43;
            }

            v24 = v20 + 456 * v18;
            v25 = *(v24 + 404);
            v26 = *a2;
            if (v25 == 0x7FFFFFFF || v25 <= v26)
            {
              v28 = *(v24 + 408);
              if (v28 == 0x7FFFFFFF || v28 >= v26)
              {
                v30 = *v17;
                *(v6 + 4) = *(v17 + 4);
                *v6 = v30;
                v6 += 2;
              }
            }

            v17 += 2;
          }

          while (v17 != v5);
          v5 = *(v3 + 232);
        }
      }
    }

    if (v6 != v5)
    {
      *(v3 + 232) = v6;
    }

LABEL_3:
    ;
  }

  return result;
}

uint64_t sub_C17D78(double *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v4 = a2 + 8;
  v6 = 0x14C1BACF914C1BADLL * ((v5 - v3) >> 3);
  if (v5 == v3)
  {
LABEL_9:
    v10 = *(a2 + 16);
  }

  else
  {
    v8 = v3 + 296;
    while (*(v8 - 144) <= *a1 && *(v8 - 128) <= a1[1] && *(v8 - 120) <= a1[2] && *(v8 - 112) <= a1[3])
    {
      v9 = v8 == v5;
      v8 += 296;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    v11 = v8 - 296;
    if (v8 - 296 == v5 || v8 == v5)
    {
      v10 = *(a2 + 16);
    }

    else
    {
      do
      {
        if (*(v8 + 152) <= *a1 && *(v8 + 168) <= a1[1] && *(v8 + 176) <= a1[2] && *(v8 + 184) <= a1[3])
        {
          sub_BA9EF8(v11, v8);
          v11 += 296;
        }

        v8 += 296;
      }

      while (v8 != v5);
      v10 = *(a2 + 16);
    }

    v5 = v11;
  }

  result = sub_C18160(v4, v5, v10);
  if (v6 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v19);
      sub_4A5C(&v19, "The criteria threshold filter removed ", 38);
      v13 = std::ostream::operator<<();
      sub_4A5C(v13, " journeys", 9);
      if ((v29 & 0x10) != 0)
      {
        v15 = v28;
        if (v28 < v25)
        {
          v28 = v25;
          v15 = v25;
        }

        v16 = v24;
        v14 = v15 - v24;
        if (v15 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if ((v29 & 8) == 0)
        {
          v14 = 0;
          v18 = 0;
LABEL_34:
          *(&__p + v14) = 0;
          sub_7E854(&__p, 2u);
          if (v18 < 0)
          {
            operator delete(__p);
          }

          if (v27 < 0)
          {
            operator delete(v26);
          }

          std::locale::~locale(&v21);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v16 = v22;
        v14 = v23 - v22;
        if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_41:
          sub_3244();
        }
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v18 = v14;
      if (v14)
      {
        memmove(&__p, v16, v14);
      }

      goto LABEL_34;
    }
  }

  return result;
}

void sub_C1811C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_C18160(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v3 = a3;
    v4 = *(a1 + 8);
    v22 = a2;
    if (a3 == v4)
    {
      v6 = a2;
      if (v4 == a2)
      {
LABEL_34:
        a2 = v22;
        *(a1 + 8) = v6;
        return a2;
      }
    }

    else
    {
      v6 = a2;
      do
      {
        sub_BA9EF8(v6, v3);
        v3 = (v3 + 296);
        v6 += 296;
      }

      while (v3 != v4);
      v4 = *(a1 + 8);
      if (v4 == v6)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v7 = *(v4 - 3);
      if (v7)
      {
        *(v4 - 2) = v7;
        operator delete(v7);
      }

      v8 = *(v4 - 6);
      if (v8)
      {
        *(v4 - 5) = v8;
        operator delete(v8);
      }

      v9 = *(v4 - 9);
      if (v9)
      {
        *(v4 - 8) = v9;
        operator delete(v9);
      }

      v10 = *(v4 - 12);
      if (v10)
      {
        v11 = *(v4 - 11);
        v12 = *(v4 - 12);
        if (v11 != v10)
        {
          do
          {
            v14 = *(v11 - 5);
            if (v14)
            {
              *(v11 - 4) = v14;
              operator delete(v14);
            }

            v15 = v11 - 9;
            v16 = *(v11 - 9);
            if (v16)
            {
              v17 = *(v11 - 8);
              v13 = *(v11 - 9);
              if (v17 != v16)
              {
                do
                {
                  v18 = v17 - 168;
                  v19 = *(v17 - 2);
                  if (v19 != -1)
                  {
                    (off_26726E8[v19])(&v23, v17 - 168);
                  }

                  *(v17 - 2) = -1;
                  v17 -= 168;
                }

                while (v18 != v16);
                v13 = *v15;
              }

              *(v11 - 8) = v16;
              operator delete(v13);
            }

            v11 -= 9;
          }

          while (v15 != v10);
          v12 = *(v4 - 12);
        }

        *(v4 - 11) = v10;
        operator delete(v12);
      }

      if (*(v4 - 161) < 0)
      {
        operator delete(*(v4 - 23));
      }

      v4 = (v4 - 296);
    }

    while (v4 != v6);
    goto LABEL_34;
  }

  return a2;
}

double sub_C18314(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  return result;
}

uint64_t sub_C18338(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v73 = a2 + 8;
  v3 = *(a2 + 16);
  v4 = v3 - v2;
  if (v3 != v2)
  {
    v72 = v3 - v2;
    v75 = *(a2 + 16);
    do
    {
      if (a1[9])
      {
        v6 = a1[8];
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        a1[8] = 0;
        v8 = a1[7];
        if (v8)
        {
          bzero(a1[6], 8 * v8);
        }

        a1[9] = 0;
      }

      if (a1[4])
      {
        v9 = a1[3];
        if (v9)
        {
          do
          {
            v10 = *v9;
            operator delete(v9);
            v9 = v10;
          }

          while (v10);
        }

        a1[3] = 0;
        v11 = a1[2];
        if (v11)
        {
          bzero(a1[1], 8 * v11);
        }

        a1[4] = 0;
      }

      v13 = *(v2 + 200);
      v12 = *(v2 + 208);
      if (v13 != v12)
      {
        for (i = *(v2 + 200); i != v12; i += 9)
        {
          if (!*(i + 24))
          {
            v15 = *i;
            if (*(*i + 160))
            {
              sub_5AF20();
            }

            v16 = *(v15 + 52);
            v17 = sub_A57920((*a1 + 4136), *(v15 + 32));
            v18 = (v17 - *v17);
            if (*v18 >= 9u && (v19 = v18[4]) != 0)
            {
              v20 = (v17 + v19 + *(v17 + v19));
            }

            else
            {
              v20 = 0;
            }

            v90 = __ROR8__(*sub_A571D4(v20, v16), 32);
            sub_BC460C(a1 + 1, &v90);
            v21 = *(*a1 + 4120);
            v22 = __ROR8__(v90, 32);
            v91 = "stop";
            v92[0] = &v93;
            v93 = 0;
            v94 = v22;
            v92[1] = &v94;
            v23 = *(v21 + 3880) + 1;
            *(v21 + 3880) = v23;
            v24 = *(v21 + 24);
            if (!v24)
            {
              exception = __cxa_allocate_exception(0x40uLL);
              v95 = v94;
              __dst = sub_7FCF0(6u);
              v77 = v58;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &__dst, &v79);
              if (SHIBYTE(v81.__locale_) >= 0)
              {
                v59 = &v79;
              }

              else
              {
                v59 = v79;
              }

              if (SHIBYTE(v81.__locale_) >= 0)
              {
                locale_high = HIBYTE(v81.__locale_);
              }

              else
              {
                locale_high = v80;
              }

              v61 = sub_2D390(exception, v59, locale_high);
            }

            if (*(v21 + 616) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 624) = v23;
              v25 = *(v21 + 632);
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            else if (*(v21 + 640) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 648) = v23;
              v25 = *(v21 + 656);
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            else if (*(v21 + 664) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 672) = v23;
              v25 = *(v21 + 680);
              if (!v25)
              {
                goto LABEL_112;
              }
            }

            else if (*(v21 + 688) == v22)
            {
              ++*(v21 + 3888);
              *(v21 + 696) = v23;
              v25 = *(v21 + 704);
              if (!v25)
              {
LABEL_112:
                v62 = __cxa_allocate_exception(0x40uLL);
                v95 = v94;
                __dst = sub_7FCF0(6u);
                v77 = v63;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &__dst, &v79);
                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v64 = &v79;
                }

                else
                {
                  v64 = v79;
                }

                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v65 = HIBYTE(v81.__locale_);
                }

                else
                {
                  v65 = v80;
                }

                v66 = sub_2D390(v62, v64, v65);
              }
            }

            else
            {
              v26 = *(v21 + 672);
              v27 = *(v21 + 648);
              v28 = *(v21 + 624);
              v29 = v28 >= v23;
              if (v28 < v23)
              {
                v23 = *(v21 + 624);
              }

              v30 = 24;
              if (v29)
              {
                v30 = 0;
              }

              v31 = v27 >= v23;
              if (v27 < v23)
              {
                v23 = *(v21 + 648);
              }

              v32 = 25;
              if (v31)
              {
                v32 = v30;
              }

              if (v26 >= v23)
              {
                v33 = v23;
              }

              else
              {
                v33 = *(v21 + 672);
              }

              v34 = *(v21 + 696);
              if (v26 >= v23)
              {
                v35 = v32;
              }

              else
              {
                v35 = 26;
              }

              v25 = sub_2D52A4(v24, 6, v22, 1);
              v29 = v34 >= v33;
              v3 = v75;
              v36 = 27;
              if (v29)
              {
                v36 = v35;
              }

              v37 = v21 + 40 + 24 * v36;
              *v37 = v94;
              *(v37 + 8) = *(v21 + 3880);
              *(v37 + 16) = v25;
              if (!v25)
              {
                sub_2C9894(v92);
LABEL_120:
                v67 = __cxa_allocate_exception(0x40uLL);
                v95 = HIDWORD(v22);
                LODWORD(v92[0]) = v22;
                __dst = sub_7FCF0(6u);
                v77 = v68;
                sub_2C956C("Failed to acquire entity ", &v91, " in quad node ", " at position ", " on layer ", &__dst, &v79);
                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v69 = &v79;
                }

                else
                {
                  v69 = v79;
                }

                if (SHIBYTE(v81.__locale_) >= 0)
                {
                  v70 = HIBYTE(v81.__locale_);
                }

                else
                {
                  v70 = v80;
                }

                v71 = sub_2D390(v67, v69, v70);
              }
            }

            v38 = (v25 + *v25);
            v39 = (v38 - *v38);
            if (*v39 < 0x1Du)
            {
              goto LABEL_120;
            }

            v40 = v39[14];
            if (!v40)
            {
              goto LABEL_120;
            }

            v41 = (v38 + v40 + *(v38 + v40));
            if (*v41 <= HIDWORD(v22))
            {
              goto LABEL_120;
            }

            v42 = (&v41[HIDWORD(v22) + 1] + v41[HIDWORD(v22) + 1]);
            v43 = (v42 - *v42);
            if (*v43 >= 0xDu)
            {
              v44 = v43[6];
              if (v44)
              {
                v47 = (v42 + v44);
                v45 = *v47;
                v46 = v47[1];
                v79 = (v46 | (v45 << 32));
                v48 = v46 == -1 || v45 == 0;
                if (!v48)
                {
                  sub_BC460C(a1 + 6, &v79);
                }
              }
            }

            sub_C18C34(a1, v2, v13);
            v12 = *(v2 + 208);
          }

          v13 += 9;
        }
      }

      v2 += 296;
    }

    while (v2 != v3);
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = v72;
  }

  v49 = 0x14C1BACF914C1BADLL * (v4 >> 3);
  if (v2 == v3)
  {
LABEL_75:
    v51 = v3;
  }

  else
  {
    v50 = (v2 + 296);
    while (*(v50 - 13) != -1.0)
    {
      v48 = v50 == v3;
      v50 = (v50 + 296);
      if (v48)
      {
        goto LABEL_75;
      }
    }

    v51 = v50 - 296;
    if ((v50 - 296) != v3 && v50 != v3)
    {
      do
      {
        if (*(v50 + 24) != -1.0)
        {
          sub_BA9EF8(v51, v50);
          v51 += 296;
        }

        v50 = (v50 + 296);
      }

      while (v50 != v3);
      v3 = *(a2 + 16);
    }
  }

  result = sub_C18160(v73, v51, v3);
  if (v49 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v79);
      sub_4A5C(&v79, "The double station filter removed ", 34);
      v53 = std::ostream::operator<<();
      sub_4A5C(v53, " journeys", 9);
      if ((v89 & 0x10) != 0)
      {
        v55 = v88;
        if (v88 < v85)
        {
          v88 = v85;
          v55 = v85;
        }

        v56 = v84;
        v54 = v55 - v84;
        if (v55 - v84 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if ((v89 & 8) == 0)
        {
          v54 = 0;
          v78 = 0;
LABEL_96:
          *(&__dst + v54) = 0;
          sub_7E854(&__dst, 2u);
          if (v78 < 0)
          {
            operator delete(__dst);
          }

          if (v87 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v81);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v56 = v82;
        v54 = v83 - v82;
        if ((v83 - v82) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_103:
          sub_3244();
        }
      }

      if (v54 >= 0x17)
      {
        operator new();
      }

      v78 = v54;
      if (v54)
      {
        memmove(&__dst, v56, v54);
      }

      goto LABEL_96;
    }
  }

  return result;
}

void sub_C18BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_C18BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C18C34(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (a3[1] != *a3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      v9 = v3 + 168 * v6;
      if (*(v9 + 160))
      {
LABEL_28:
        sub_5AF20();
      }

      v10 = *(v9 + 56);
      v11 = sub_A57920((*v5 + 4136), *(v9 + 32));
      v12 = (v11 - *v11);
      if (*v12 >= 9u && (v13 = v12[4]) != 0)
      {
        v14 = (v11 + v13 + *(v11 + v13));
      }

      else
      {
        v14 = 0;
      }

      v15 = *sub_A571D4(v14, v10);
      v26 = __ROR8__(v15, 32);
      v16 = sub_502FF8(*(*v5 + 4120) + 24, v15, 0, "stop");
      v17 = (v16 - *v16);
      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
      {
        v25 = *(v16 + v18 + 4) | (*(v16 + v18) << 32);
        result = sub_A794D0(v5 + 1, &v26);
        if (result)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v25 = 0xFFFFFFFFLL;
        result = sub_A794D0(v5 + 1, &v26);
        if (result)
        {
          goto LABEL_18;
        }
      }

      if (v25 == -1 || !HIDWORD(v25) || (result = sub_A794D0(v5 + 6, &v25)) == 0)
      {
        ++v7;
        v3 = *a3;
        v8 = a3[1];
        goto LABEL_4;
      }

LABEL_18:
      if (!v7)
      {
        *(a2 + 192) = 0xBFF0000000000000;
        return result;
      }

      v19 = a3[1];
      if (*(v19 - 8))
      {
        goto LABEL_28;
      }

      *(v19 - 168) = v7;
      sub_BC07E0(*a3 + 168 * v6, v19 - 168);
      result = sub_BC07E0(a3[9] + 168 * v6, a3[10] - 168);
      v20 = a3[1];
      v21 = *(v20 - 8);
      if (v21 != -1)
      {
        result = (off_26726F8[v21])(&v27, v20 - 168);
      }

      *(v20 - 8) = -1;
      a3[1] = v20 - 168;
      v22 = a3[10];
      v23 = *(v22 - 8);
      if (v23 != -1)
      {
        result = (off_26726F8[v23])(&v27, v22 - 168);
      }

      *(v22 - 8) = -1;
      a3[10] = v22 - 168;
      v3 = *a3;
      v8 = a3[1];
      if (*a3 == v8)
      {
        *(a2 + 192) = 0xBFF0000000000000;
        v8 = v3;
      }

LABEL_4:
      v6 = v7;
    }

    while (0xCF3CF3CF3CF3CF3DLL * ((v8 - v3) >> 3) > v7);
  }

  return result;
}

uint64_t sub_C18EB4(char **a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v3 = a2 + 8;
  v6 = 0x14C1BACF914C1BADLL * ((v5 - v4) >> 3);
  if (v5 == v4)
  {
LABEL_4:
    v4 = v5;
  }

  else
  {
    while ((sub_C19220(a1, v4) & 1) == 0)
    {
      v4 += 296;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    if (v4 != v5)
    {
      for (i = (v4 + 296); i != v5; i = (i + 296))
      {
        if ((sub_C19220(a1, i) & 1) == 0)
        {
          sub_BA9EF8(v4, i);
          v4 += 296;
        }
      }
    }
  }

  result = sub_C18160(v3, v4, *(a2 + 16));
  if (v6 > 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3))
  {
    result = sub_7E7E4(2u);
    if (result)
    {
      sub_19594F8(&v16);
      sub_4A5C(&v16, "The double trip filter removed ", 31);
      v9 = std::ostream::operator<<();
      sub_4A5C(v9, " journeys", 9);
      if ((v26 & 0x10) != 0)
      {
        v12 = v25;
        if (v25 < v22)
        {
          v25 = v22;
          v12 = v22;
        }

        v13 = v21;
        v10 = v12 - v21;
        if (v12 - v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if ((v26 & 8) == 0)
        {
          v10 = 0;
          v15 = 0;
LABEL_24:
          *(&__p + v10) = 0;
          sub_7E854(&__p, 2u);
          if (v15 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          std::locale::~locale(&v18);
          std::ostream::~ostream();
          return std::ios::~ios();
        }

        v13 = v19;
        v10 = v20 - v19;
        if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_31:
          sub_3244();
        }
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      v15 = v10;
      if (v10)
      {
        memmove(&__p, v13, v10);
      }

      goto LABEL_24;
    }
  }

  return result;
}

void sub_C191DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_C19220(char **a1, uint64_t a2)
{
  v2 = *a1;
  a1[1] = *a1;
  v3 = *(a2 + 200);
  v4 = *(a2 + 208);
  if (v3 == v4)
  {
    return 0;
  }

  while (v3[24])
  {
LABEL_5:
    v3 += 72;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v7 = *v3;
  if (*(*v3 + 160))
  {
    sub_5AF20();
  }

  v8 = (v7 + 40);
  v9 = *(v7 + 32);
  v10 = *a1;
  if (*a1 == v2)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = *a1;
  do
  {
    v13 = *(v12 + 1) == HIDWORD(v9) && *v12 == v9;
    if (v13 && *(v12 + 2) == *(v7 + 40) && *(v12 + 3) == *(v7 + 44) && *(v12 + 4) == *(v7 + 48))
    {
      ++v11;
    }

    v12 += 20;
  }

  while (v12 != v2);
  if (!v11)
  {
LABEL_22:
    v14 = a1[2];
    if (v2 < v14)
    {
      *v2 = v9;
      v6 = *v8;
      *(v2 + 4) = *(v7 + 48);
      *(v2 + 1) = v6;
      v2 += 20;
    }

    else
    {
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v10) >> 2);
      v16 = v15 + 1;
      if (v15 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_1794();
      }

      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v10) >> 2);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x666666666666666)
      {
        v18 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 <= 0xCCCCCCCCCCCCCCCLL)
        {
          operator new();
        }

        sub_1808();
      }

      v19 = v2;
      v20 = 4 * ((v2 - v10) >> 2);
      *v20 = v9;
      v21 = *v8;
      *(v20 + 16) = *(v7 + 48);
      *(v20 + 8) = v21;
      v2 = (v20 + 20);
      v22 = (20 * v15 - (v19 - v10));
      memcpy(v22, v10, v19 - v10);
      *a1 = v22;
      a1[1] = v2;
      a1[2] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    a1[1] = v2;
    goto LABEL_5;
  }

  return 1;
}

void sub_C19540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C19564(_BYTE *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Empty schedule filter called on a response that contains schedule categories", 0x4CuLL);
  }

  v6 = a2[6];
  v5 = a2[7];
  v4 = (a2 + 6);
  if (v6 != v5)
  {
    if (*a1 == 1)
    {
      while (v6[9] != v6[10] || a1[1] == 1 && v6[12] != v6[13])
      {
        v6 += 31;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }
    }

    else if (a1[1] == 1)
    {
      while (v6[12] != v6[13])
      {
        v6 += 31;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }
    }
  }

  if (v6 == v5)
  {
LABEL_22:
    v6 = a2[7];
  }

  else
  {
    v7 = v6 + 31;
    if (v6 + 31 != v5)
    {
      do
      {
        if (*a1 == 1 && v7[9] != v7[10] || a1[1] == 1 && v7[12] != v7[13])
        {
          sub_C197A8(v6, v7);
          v6 += 31;
        }

        v7 += 31;
      }

      while (v7 != v5);
      v5 = a2[7];
    }
  }

  return sub_C196DC(v4, v6, v5);
}

uint64_t sub_C196DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_C197A8(v7, v4);
        v4 += 248;
        v7 += 248;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v8 = *(v6 - 24);
      if (v8)
      {
        *(v6 - 16) = v8;
        operator delete(v8);
      }

      v9 = *(v6 - 64);
      if (v9)
      {
        *(v6 - 56) = v9;
        operator delete(v9);
      }

      v10 = *(v6 - 152);
      if (v10)
      {
        *(v6 - 144) = v10;
        operator delete(v10);
      }

      v11 = *(v6 - 176);
      if (v11)
      {
        *(v6 - 168) = v11;
        operator delete(v11);
      }

      v6 -= 248;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_C197A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v8 = (a1 + 72);
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a1 + 96);
  if (v9)
  {
    *(a1 + 104) = v9;
    operator delete(v9);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v10 = *(a2 + 120);
  v11 = *(a2 + 165);
  v12 = *(a2 + 152);
  v13 = *(a1 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = v12;
  *(a1 + 165) = v11;
  *(a1 + 120) = v10;
  if (v13)
  {
    *(a1 + 192) = v13;
    operator delete(v13);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v14 = *(a2 + 208);
  v15 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 208) = v14;
  if (v15)
  {
    *(a1 + 232) = v15;
    operator delete(v15);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  return a1;
}

void sub_C198F4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  v3 = a2 + 8;
  v37 = 0u;
  v38 = 0u;
  v39 = 1065353216;
  v6 = v4 - v5;
  if (v4 != v5)
  {
    while (1)
    {
      v7 = *(v5 + 16);
      if (v7 == -1)
      {
        goto LABEL_4;
      }

      if (!*(&v37 + 1))
      {
        goto LABEL_26;
      }

      v8 = vcnt_s8(*(&v37 + 8));
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = *(v5 + 16);
        if (*(&v37 + 1) <= v7)
        {
          v9 = v7 % DWORD2(v37);
        }
      }

      else
      {
        v9 = (DWORD2(v37) - 1) & v7;
      }

      v10 = *(v37 + 8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_26:
        if (*(v5 + 13) == 1)
        {
          if (*(v5 + 15))
          {
            goto LABEL_4;
          }

          *(v5 + 192) = 0xBFF0000000000000;
        }

        else if (*(v5 + 15))
        {
          goto LABEL_4;
        }

        sub_C19E38(&v37, (v5 + 16));
        goto LABEL_4;
      }

      if (v8.u32[0] < 2uLL)
      {
        while (1)
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            if (*(v11 + 4) == v7)
            {
              goto LABEL_31;
            }
          }

          else if ((v12 & (*(&v37 + 1) - 1)) != v9)
          {
            goto LABEL_26;
          }

          v11 = *v11;
          if (!v11)
          {
            goto LABEL_26;
          }
        }
      }

      while (1)
      {
        v13 = v11[1];
        if (v13 == v7)
        {
          break;
        }

        if (v13 >= *(&v37 + 1))
        {
          v13 %= *(&v37 + 1);
        }

        if (v13 != v9)
        {
          goto LABEL_26;
        }

LABEL_21:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_26;
        }
      }

      if (*(v11 + 4) != v7)
      {
        goto LABEL_21;
      }

LABEL_31:
      *(v5 + 192) = 0xBFF0000000000000;
LABEL_4:
      v5 += 296;
      if (v5 == v4)
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        break;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_38:
    v16 = v4;
  }

  else
  {
    v14 = (v5 + 296);
    while (*(v14 - 13) != -1.0)
    {
      v15 = v14 == v4;
      v14 = (v14 + 296);
      if (v15)
      {
        goto LABEL_38;
      }
    }

    v16 = v14 - 296;
    if ((v14 - 296) != v4 && v14 != v4)
    {
      do
      {
        if (*(v14 + 24) != -1.0)
        {
          sub_BA9EF8(v16, v14);
          v16 += 296;
        }

        v14 = (v14 + 296);
      }

      while (v14 != v4);
      v4 = *(a2 + 16);
    }
  }

  sub_C18160(v3, v16, v4);
  if (0x14C1BACF914C1BADLL * (v6 >> 3) > (0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3)) && sub_7E7E4(2u))
  {
    sub_19594F8(&v26);
    sub_4A5C(&v26, "The frequent fill-in filter removed ", 36);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " journeys", 9);
    if ((v36 & 0x10) != 0)
    {
      v19 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v19 = v32;
      }

      v20 = v31;
      v18 = v19 - v31;
      if (v19 - v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v18 = 0;
        v25 = 0;
LABEL_59:
        *(&__p + v18) = 0;
        sub_7E854(&__p, 2u);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_64;
      }

      v20 = v29;
      v18 = v30 - v29;
      if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_70:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v25 = v18;
    if (v18)
    {
      memmove(&__p, v20, v18);
    }

    goto LABEL_59;
  }

LABEL_64:
  v21 = v38;
  if (v38)
  {
    do
    {
      v22 = *v21;
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v37;
  *&v37 = 0;
  if (v23)
  {
    operator delete(v23);
  }
}

void sub_C19D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_11BD8(v15 - 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_C19E38(void *a1, unsigned int *a2)
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

void sub_C1A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  for (i = *(a2 + 16); v3 != i; v3 += 37)
  {
    v6 = *(a3 + 24);
    if (!v6)
    {
      sub_2B7420();
    }

    if ((*(*v6 + 48))(v6, v3))
    {
      v8 = v3[31];
      v7 = v3[32];
      if (v8 != v7)
      {
        while (1)
        {
          v9 = *(v8 + 8) < 1 || *(v8 + 16) < 1;
          if (v9 || *(v8 + 12) < 1)
          {
            break;
          }

          v8 += 40;
          if (v8 == v7)
          {
            goto LABEL_27;
          }
        }

        if (v8 != v7)
        {
          v10 = (v8 + 40);
          if ((v8 + 40) != v7)
          {
            do
            {
              v11 = *(v10 + 2) < 1 || *(v10 + 4) < 1;
              if (!v11 && *(v10 + 3) >= 1)
              {
                v12 = *v10;
                v13 = v10[1];
                *(v8 + 32) = *(v10 + 32);
                *v8 = v12;
                *(v8 + 16) = v13;
                v8 += 40;
              }

              v10 = (v10 + 40);
            }

            while (v10 != v7);
            v7 = v3[32];
          }
        }
      }

      if (v8 != v7)
      {
        v3[32] = v8;
      }

LABEL_27:
      v14 = v3[25];
      v15 = v3[26];
      while (v14 != v15)
      {
        if (!*(v14 + 24) && *v14 != v14[1])
        {
          v17 = v14[4];
          v16 = v14[5];
          if (v17 != v16)
          {
            while (1)
            {
              v18 = *(v17 + 8) < 1 || *(v17 + 16) < 1;
              if (v18 || *(v17 + 12) < 1)
              {
                break;
              }

              v17 += 40;
              if (v17 == v16)
              {
                goto LABEL_53;
              }
            }

            if (v17 != v16)
            {
              v19 = (v17 + 40);
              if ((v17 + 40) != v16)
              {
                do
                {
                  v20 = *(v19 + 2) < 1 || *(v19 + 4) < 1;
                  if (!v20 && *(v19 + 3) >= 1)
                  {
                    v21 = *v19;
                    v22 = v19[1];
                    *(v17 + 32) = *(v19 + 32);
                    *v17 = v21;
                    *(v17 + 16) = v22;
                    v17 += 40;
                  }

                  v19 = (v19 + 40);
                }

                while (v19 != v16);
                v16 = v14[5];
              }
            }
          }

          if (v17 != v16)
          {
            v14[5] = v17;
          }

LABEL_53:
          v23 = *v14;
          v24 = v14[1];
          while (v23 != v24)
          {
            if (*(v23 + 160))
            {
              sub_5AF20();
            }

            v26 = *(v23 + 120);
            v25 = *(v23 + 128);
            if (v26 != v25)
            {
              while (1)
              {
                v27 = *(v26 + 8) < 1 || *(v26 + 16) < 1;
                if (v27 || *(v26 + 12) < 1)
                {
                  break;
                }

                v26 += 40;
                if (v26 == v25)
                {
                  goto LABEL_54;
                }
              }

              if (v26 != v25)
              {
                v28 = (v26 + 40);
                if ((v26 + 40) != v25)
                {
                  do
                  {
                    v29 = *(v28 + 2) < 1 || *(v28 + 4) < 1;
                    if (!v29 && *(v28 + 3) >= 1)
                    {
                      v30 = *v28;
                      v31 = v28[1];
                      *(v26 + 32) = *(v28 + 32);
                      *v26 = v30;
                      *(v26 + 16) = v31;
                      v26 += 40;
                    }

                    v28 = (v28 + 40);
                  }

                  while (v28 != v25);
                  v25 = *(v23 + 128);
                }
              }
            }

            if (v26 != v25)
            {
              *(v23 + 128) = v26;
            }

LABEL_54:
            v23 += 168;
          }
        }

        v14 += 9;
      }
    }
  }
}

void sub_C1A4A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  while (v2 != v3)
  {
    v5 = *(v2 + 184);
    v4 = *(v2 + 192);
    if (v5 != v4)
    {
      while (1)
      {
        v6 = *(v5 + 8) < 1 || *(v5 + 16) < 1;
        if (v6 || *(v5 + 12) < 1)
        {
          break;
        }

        v5 += 40;
        if (v5 == v4)
        {
          goto LABEL_2;
        }
      }

      if (v5 != v4)
      {
        v7 = (v5 + 40);
        if ((v5 + 40) != v4)
        {
          do
          {
            v8 = *(v7 + 2) < 1 || *(v7 + 4) < 1;
            if (!v8 && *(v7 + 3) >= 1)
            {
              v9 = *v7;
              v10 = v7[1];
              *(v5 + 32) = *(v7 + 32);
              *v5 = v9;
              *(v5 + 16) = v10;
              v5 += 40;
            }

            v7 = (v7 + 40);
          }

          while (v7 != v4);
          v4 = *(v2 + 192);
        }
      }
    }

    if (v5 != v4)
    {
      *(v2 + 192) = v5;
    }

LABEL_2:
    v2 += 248;
  }
}

void sub_C1A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  operator new();
}

void sub_C1A7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_A31E68(v15);
    _Unwind_Resume(a1);
  }

  sub_A31E68(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_C1A810(void *a1, uint64_t a2)
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
    return *(v2 + 10);
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

void sub_C1A94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1A988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  for (i = *(a2 + 16); v2 != i; v2 += 296)
  {
    v5 = *(a1 + 24);
    if (!v5)
    {
      sub_2B7420();
    }

    if ((*(*v5 + 48))(v5, v2))
    {
      v7 = *(v2 + 200);
      v6 = *(v2 + 208);
      v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = v6 == v7;
      v10 = v6 != v7;
      if (v9)
      {
        v11 = v8 + 1;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 + 1;
      }

      if (v13 != 1)
      {
        v14 = v12 + v10 - 1;
        v15 = 72;
        do
        {
          sub_C1AA80(a1, (*(v2 + 200) + v15), (*(v2 + 200) + v15 + 72));
          v15 += 144;
          v14 -= 2;
        }

        while (v14);
      }
    }
  }
}

void sub_C1AA80(uint64_t a1, unsigned int **a2, void **a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  v8 = v3[40];
  if (v8 == 1)
  {
    v9 = v3[1] | (v3[1] << 32);
  }

  else
  {
    if (v8)
    {
      sub_5AF20();
    }

    v9 = *(v3 + 1);
  }

  __p[0] = 0;
  __p[1] = 0;
  v56 = 0;
  v53 = 0uLL;
  v54 = 0;
  if (v8)
  {
LABEL_60:
    sub_5AF20();
  }

  v10 = *a3 + 168 * *v3;
  if (*(v10 + 160) != 1)
  {
LABEL_61:
    sub_5AF20();
  }

  *v3 = sub_2FEF94(0);
  v11 = __p[1];
  if (__p[1] >= v56)
  {
    v15 = sub_BC43B8(__p, v3);
  }

  else
  {
    v12 = *v3;
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    *(__p[1] + 44) = *(v3 + 11);
    v11[1] = v13;
    v11[2] = v14;
    *v11 = v12;
    *(v11 + 9) = 0;
    *(v11 + 10) = 0;
    *(v11 + 8) = 0;
    v11[4] = *(v3 + 4);
    *(v11 + 10) = *(v3 + 10);
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 10) = 0;
    *(v11 + 11) = 0;
    *(v11 + 12) = 0;
    *(v11 + 13) = 0;
    *(v11 + 88) = *(v3 + 22);
    *(v11 + 13) = *(v3 + 13);
    *(v3 + 12) = 0;
    *(v3 + 13) = 0;
    *(v3 + 11) = 0;
    *(v11 + 28) = v3[28];
    *(v11 + 16) = 0;
    *(v11 + 17) = 0;
    *(v11 + 15) = 0;
    *(v11 + 120) = *(v3 + 30);
    *(v11 + 17) = *(v3 + 17);
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 15) = 0;
    v11[9] = *(v3 + 9);
    *(v11 + 40) = 0;
    v15 = v11 + 168;
  }

  __p[1] = v15;
  v16 = *(&v53 + 1);
  if (*(&v53 + 1) >= v54)
  {
    v18 = sub_A7C2C8(&v53, v10);
  }

  else
  {
    v17 = *v10;
    *(*(&v53 + 1) + 12) = *(v10 + 12);
    *v16 = v17;
    *(v16 + 160) = 1;
    v18 = v16 + 168;
  }

  *(&v53 + 1) = v18;
  if (v4 - v3 != 168)
  {
    v24 = 0xCF3CF3CF3CF3CF3DLL;
    v25 = HIDWORD(v9);
    v26 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - v3) >> 3) - 1;
    v27 = 42;
    do
    {
      v30 = *a2;
      v31 = &(*a2)[v27];
      if (v31[40])
      {
        goto LABEL_60;
      }

      v32 = *a3 + 168 * *v31;
      if (*(v32 + 160) != 1)
      {
        goto LABEL_61;
      }

      v33 = v30[v27 + 3];
      if ((*(a1 + 32) != 1 || (v30[v27 + 39] & 0x10000) == 0 || v33 >= v25) && (*(a1 + 33) != 1 || (v30[v27 + 39] & 0x10000) == 0 || v33 < v25))
      {
        v34 = *(a1 + 36);
        if (!v34 || ((__p[1] - __p[0]) >> 3) * v24 != v34)
        {
          v35 = v24;
          *v31 = sub_2FEF94(((__p[1] - __p[0]) >> 3) * v24);
          v36 = __p[1];
          if (__p[1] >= v56)
          {
            v41 = sub_BC43B8(__p, v31);
          }

          else
          {
            v37 = *v31;
            v38 = *(v31 + 1);
            v39 = *(v31 + 2);
            *(__p[1] + 44) = *(v31 + 11);
            v36[1] = v38;
            v36[2] = v39;
            *v36 = v37;
            v40 = &v30[v27];
            *(v36 + 9) = 0;
            *(v36 + 10) = 0;
            *(v36 + 8) = 0;
            v36[4] = *&v30[v27 + 16];
            *(v36 + 10) = *&v30[v27 + 20];
            *(v40 + 8) = 0;
            *(v40 + 9) = 0;
            *(v40 + 10) = 0;
            *(v36 + 11) = 0;
            *(v36 + 12) = 0;
            *(v36 + 13) = 0;
            *(v36 + 88) = *&v30[v27 + 22];
            *(v36 + 13) = *&v30[v27 + 26];
            *(v40 + 12) = 0;
            *(v40 + 13) = 0;
            *(v40 + 11) = 0;
            *(v36 + 28) = v30[v27 + 28];
            *(v36 + 16) = 0;
            *(v36 + 17) = 0;
            *(v36 + 15) = 0;
            *(v36 + 120) = *&v30[v27 + 30];
            *(v36 + 17) = *&v30[v27 + 34];
            *(v40 + 16) = 0;
            *(v40 + 17) = 0;
            *(v40 + 15) = 0;
            v36[9] = *&v30[v27 + 36];
            *(v36 + 40) = 0;
            v41 = v36 + 168;
          }

          __p[1] = v41;
          v42 = *(&v53 + 1);
          if (*(&v53 + 1) < v54)
          {
            v28 = *v32;
            *(*(&v53 + 1) + 12) = *(v32 + 12);
            *v42 = v28;
            *(v42 + 160) = 1;
            v29 = v42 + 168;
          }

          else
          {
            v29 = sub_A7C2C8(&v53, v32);
          }

          *(&v53 + 1) = v29;
          v24 = v35;
        }
      }

      v27 += 42;
    }

    while (--v26);
  }

  v19 = *a2;
  if (*a2)
  {
    v20 = a2[1];
    v21 = *a2;
    if (v20 != v19)
    {
      do
      {
        v22 = v20 - 42;
        v23 = *(v20 - 2);
        if (v23 != -1)
        {
          (off_2672708[v23])(&v57, v20 - 42);
        }

        *(v20 - 2) = -1;
        v20 -= 42;
      }

      while (v22 != v19);
      v21 = *a2;
    }

    a2[1] = v19;
    operator delete(v21);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = *__p;
  a2[2] = v56;
  __p[1] = 0;
  v56 = 0;
  __p[0] = 0;
  v43 = *a3;
  if (*a3)
  {
    v44 = a3[1];
    v45 = *a3;
    if (v44 != v43)
    {
      do
      {
        v46 = v44 - 168;
        v47 = *(v44 - 2);
        if (v47 != -1)
        {
          (off_2672708[v47])(&v57, v44 - 168);
        }

        *(v44 - 2) = -1;
        v44 -= 168;
      }

      while (v46 != v43);
      v45 = *a3;
    }

    a3[1] = v43;
    operator delete(v45);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v48 = __p[0];
    *a3 = v53;
    a3[2] = v54;
    if (v48)
    {
      v49 = __p[1];
      v50 = v48;
      if (__p[1] != v48)
      {
        do
        {
          v51 = v49 - 168;
          v52 = *(v49 - 2);
          if (v52 != -1)
          {
            (off_2672708[v52])(&v53, v49 - 168);
          }

          *(v49 - 2) = -1;
          v49 -= 168;
        }

        while (v51 != v48);
        v50 = __p[0];
      }

      __p[1] = v48;
      operator delete(v50);
    }
  }

  else
  {
    *a3 = v53;
    a3[2] = v54;
  }
}

void sub_C1AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_A78C90(&a9);
  sub_A78C90(&a13);
  _Unwind_Resume(a1);
}

void sub_C1AFD0(_BYTE *a1, void *a2)
{
  v7 = 17;
  strcpy(__p, "alternatives_type");
  v3 = sub_5F8FC(a2, __p);
  v4 = sub_BC89AC(v3);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_C1B248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C1B2C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        result = sub_C1B358(v6, v3);
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C1B358(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 200);
  v35 = *(a2 + 208);
  if (v2 != v35)
  {
    v3 = result;
    result = 88;
    while (1)
    {
      if (!*(v2 + 24))
      {
        v5 = *v2;
        v4 = v2[1];
        if (*v2 != v4)
        {
          break;
        }
      }

LABEL_3:
      v2 += 9;
      if (v2 == v35)
      {
        return result;
      }
    }

    v36 = v2[1];
    while (1)
    {
      if (*(v5 + 160))
      {
        sub_5AF20();
      }

      if (*v3)
      {
        v6 = 88;
      }

      else
      {
        v6 = 64;
      }

      v7 = (v5 + v6);
      if (*v3)
      {
        v8 = 112;
      }

      else
      {
        v8 = 12;
      }

      v9 = *(v5 + v8);
      v10 = *v7;
      v11 = v7[1];
      if (*v7 != v11)
      {
        v12 = 0;
        do
        {
          v13 = *(v3 + 4);
          v14 = v13 / 10;
          v15 = v13 % 10;
          if (v13 < 0)
          {
            v16 = -5;
          }

          else
          {
            v16 = 5;
          }

          if (*&v10[4 * (*(v10 + 2) != 0x7FFFFFFF) + 4] > (v14 + v9 + (((103 * (v16 + v15)) >> 15) & 1) + ((103 * (v16 + v15)) >> 10)))
          {
            if (v12 >= *(v3 + 16))
            {
              *(v10 + 28) = 0xFFFFFFFFLL;
            }

            ++v12;
          }

          v10 += 60;
        }

        while (v10 != v11);
        v10 = *v7;
        v11 = v7[1];
      }

      if (v11 != v10)
      {
        v17 = 0;
        v18 = v11 - 56;
        do
        {
          v20 = *(v3 + 8);
          v21 = v20 / -10;
          v22 = v20 % 10;
          if (v20 < 0)
          {
            v23 = -5;
          }

          else
          {
            v23 = 5;
          }

          if (*&v18[4 * (*(v18 + 1) != 0x7FFFFFFF)] < (v21 + v9 + (((-103 * (v23 + v22)) >> 15) & 1) + ((-103 * (v23 + v22)) >> 10)))
          {
            if (v17 >= *(v3 + 24))
            {
              *(v18 + 3) = 0xFFFFFFFFLL;
            }

            ++v17;
          }

          v19 = v18 - 4;
          v18 -= 60;
        }

        while (v19 != v10);
        v10 = *v7;
        v11 = v7[1];
      }

      if (v10 != v11)
      {
        break;
      }

LABEL_45:
      v26 = 0xEEEEEEEEEEEEEEEFLL * ((v11 - v10) >> 2);
      v27 = *(v3 + 32);
      if (v26 > v27)
      {
        goto LABEL_60;
      }

LABEL_7:
      v5 += 168;
      if (v5 == v4)
      {
        goto LABEL_3;
      }
    }

    v24 = v10 + 60;
    while (1)
    {
      v25 = *(v24 - 8) == -1 || *(v24 - 7) == 0;
      if (v25)
      {
        break;
      }

      v25 = v24 == v11;
      v24 += 60;
      if (v25)
      {
        goto LABEL_45;
      }
    }

    v28 = v7;
    v29 = v24 - 60;
    if (v24 - 60 != v11 && v24 != v11)
    {
      do
      {
        if (*(v24 + 7) != -1 && *(v24 + 8) != 0)
        {
          v31 = *v24;
          v32 = *(v24 + 1);
          v33 = *(v24 + 2);
          *(v29 + 41) = *(v24 + 41);
          *(v29 + 1) = v32;
          *(v29 + 2) = v33;
          *v29 = v31;
          v29 += 60;
        }

        v24 += 60;
      }

      while (v24 != v11);
      v10 = *v28;
      v11 = v28[1];
    }

    if (v29 != v11)
    {
      v11 = v29;
      v28[1] = v29;
      v4 = v36;
    }

    v7 = v28;
    v34 = 0xEEEEEEEEEEEEEEEFLL * ((v11 - v10) >> 2);
    v27 = *(v3 + 32);
    if (v34 <= v27)
    {
      goto LABEL_7;
    }

LABEL_60:
    v7[1] = &v10[60 * v27];
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_C1B6C0(uint64_t result, int a2, __int128 *a3)
{
  v3 = *a3;
  v5 = *(a3 + 1);
  v4 = *a3;
  if (*a3 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(result + 4);
      v8 = v7 / 10;
      v9 = v7 % 10;
      if (v7 < 0)
      {
        v10 = -5;
      }

      else
      {
        v10 = 5;
      }

      if (*(v4 + 4 * (*(v4 + 8) != 0x7FFFFFFF) + 4) > (v8 + a2 + (((103 * (v10 + v9)) >> 15) & 1) + ((103 * (v10 + v9)) >> 10)))
      {
        if (v6 >= *(result + 16))
        {
          *(v4 + 28) = 0xFFFFFFFFLL;
        }

        ++v6;
      }

      v4 += 60;
    }

    while (v4 != v5);
    v3 = *a3;
  }

  if (*(&v3 + 1) != v3)
  {
    v11 = 0;
    v12 = *(&v3 + 1) - 56;
    do
    {
      v14 = *(result + 8);
      v15 = v14 / -10;
      v16 = v14 % 10;
      if (v14 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      if (*(v12 + 4 * (*(v12 + 4) != 0x7FFFFFFF)) < (v15 + a2 + (((-103 * (v17 + v16)) >> 15) & 1) + ((-103 * (v17 + v16)) >> 10)))
      {
        if (v11 >= *(result + 24))
        {
          *(v12 + 24) = 0xFFFFFFFFLL;
        }

        ++v11;
      }

      v13 = v12 - 4;
      v12 -= 60;
    }

    while (v13 != v3);
    v3 = *a3;
  }

  v18 = *(&v3 + 1);
  v19 = v3;
  if (v3 != *(&v3 + 1))
  {
    v20 = (v3 + 60);
    while (1)
    {
      v21 = *(v20 - 8) == -1 || *(v20 - 7) == 0;
      if (v21)
      {
        break;
      }

      v21 = v20 == *(&v3 + 1);
      v20 = (v20 + 60);
      if (v21)
      {
        goto LABEL_44;
      }
    }

    v22 = (v20 - 60);
    if ((v20 - 60) != *(&v3 + 1) && v20 != *(&v3 + 1))
    {
      do
      {
        if (*(v20 + 7) != -1 && *(v20 + 8) != 0)
        {
          v24 = *v20;
          v25 = v20[1];
          v26 = v20[2];
          *(v22 + 41) = *(v20 + 41);
          v22[1] = v25;
          v22[2] = v26;
          *v22 = v24;
          v22 = (v22 + 60);
        }

        v20 = (v20 + 60);
      }

      while (v20 != v18);
      v19 = *a3;
      v18 = *(a3 + 1);
    }

    if (v22 != v18)
    {
      v18 = v22;
      *(a3 + 1) = v22;
    }
  }

LABEL_44:
  v27 = 0xEEEEEEEEEEEEEEEFLL * ((v18 - v19) >> 2);
  v28 = *(result + 32);
  if (v27 > v28)
  {
    *(a3 + 1) = v19 + 60 * v28;
  }

  return result;
}

uint64_t sub_C1B970(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  v4 = *(a3 + 56);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      if (*v6)
      {
        v7 = 96;
      }

      else
      {
        v7 = 72;
      }

      result = sub_C1B6C0(v6, *a2, (v3 + v7));
      v3 += 248;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C1B9E0(uint64_t a1, void *a2)
{
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "alternatives_type");
  v4 = sub_5F8FC(a2, &__p);
  v5 = sub_BC89AC(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v5;
    operator delete(__p.__r_.__value_.__l.__data_);
    v5 = v6;
  }

  *a1 = v5;
  *(a1 + 4) = 0;
  v21 = 15;
  strcpy(v20, "domination_rule");
  v7 = sub_5F8FC(a2, v20);
  if (*(v7 + 23) < 0)
  {
    v9 = v7[1];
    if (v9 != 11)
    {
      if (v9 != 13)
      {
        goto LABEL_29;
      }

      v8 = *v7;
      goto LABEL_10;
    }

    if (**v7 != 0x745F636974617473 || *(*v7 + 3) != 0x656D69745F636974)
    {
LABEL_29:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(" provided in configuration", &v22, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v19 = sub_2D390(exception, p_p, size);
    }
  }

  else
  {
    if (*(v7 + 23) != 11)
    {
      v8 = v7;
      if (*(v7 + 23) != 13)
      {
        goto LABEL_29;
      }

LABEL_10:
      v10 = *v8;
      v11 = *(v8 + 5);
      if (v10 != 0x6465746365707865 || v11 != 0x656D69745F646574)
      {
        goto LABEL_29;
      }

      *(a1 + 4) = 1;
      if (v21 < 0)
      {
        goto LABEL_24;
      }

      return a1;
    }

    if (*v7 != 0x745F636974617473 || *(v7 + 3) != 0x656D69745F636974)
    {
      goto LABEL_29;
    }
  }

  *(a1 + 4) = 0;
  if ((v21 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_24:
  operator delete(v20[0]);
  return a1;
}

void sub_C1BC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_C1BCE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v5 = result;
    do
    {
      v6 = *(a3 + 24);
      if (!v6)
      {
        sub_2B7420();
      }

      result = (*(*v6 + 48))(v6, v3);
      if (result)
      {
        v8 = *(v3 + 200);
        v9 = *(v3 + 208);
        while (v8 != v9)
        {
          if (!*(v8 + 24))
          {
            v10 = *v8;
            v11 = v8[1];
            if (*v8 != v11)
            {
              do
              {
                if (*(v10 + 160))
                {
                  sub_5AF20();
                }

                if (*v5)
                {
                  v12 = 88;
                }

                else
                {
                  v12 = 64;
                }

                sub_C1BDF4(v5, (v10 + v12), v7);
                result = sub_C1C0C4(v5, (v10 + v12));
                v10 += 168;
              }

              while (v10 != v11);
            }
          }

          v8 += 9;
        }
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C1BDF4(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    v17[0] = off_26727B8;
    v18 = v17;
    v4 = off_26728B8;
LABEL_8:
    v15[0] = v4;
    v5 = v15;
    goto LABEL_10;
  }

  if (v3)
  {
    v18 = 0;
  }

  else
  {
    v17[0] = off_2672728;
    v18 = v17;
  }

  if (!v3)
  {
    v4 = off_2672838;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_10:
  v16 = v5;
  v6 = *a2;
  v7 = a2[1];
  v14[0] = v17;
  v14[1] = v15;
  if (&v7[-v6] < 7681)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0xEEEEEEEEEEEEEEEFLL * (&v7[-v6] >> 2);
    while (1)
    {
      v9 = operator new(60 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_17;
      }
    }

    v12 = v9;
  }

LABEL_17:
  sub_C1C590(v6, v7, v14, 0xEEEEEEEEEEEEEEEFLL * (&v7[-v6] >> 2), v12, v8, a3);
  if (v12)
  {
    operator delete(v12);
  }

  if (v16 != v15)
  {
    if (v16)
    {
      (*(*v16 + 40))();
    }

    result = v18;
    if (v18 != v17)
    {
      goto LABEL_23;
    }

    return (*(*result + 32))(result);
  }

  (*(*v16 + 32))(v16);
  result = v18;
  if (v18 == v17)
  {
    return (*(*result + 32))(result);
  }

LABEL_23:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_C1C09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  sub_C1C504(&a12);
  sub_C1C504(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_C1C0C4(uint64_t a1, char **a2)
{
  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    v20[0] = off_26727B8;
    v21 = v20;
    v4 = off_26728B8;
    goto LABEL_8;
  }

  if (v3)
  {
    v21 = 0;
  }

  else
  {
    v20[0] = off_2672728;
    v21 = v20;
  }

  if (!v3)
  {
    v4 = off_2672838;
LABEL_8:
    v18[0] = v4;
    v19 = v18;
    v6 = *a2;
    v5 = a2[1];
    if (v5 == *a2)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v19 = 0;
  v6 = *a2;
  v5 = a2[1];
  if (v5 == *a2)
  {
    goto LABEL_21;
  }

LABEL_11:
  v7 = 2147483646;
  v8 = 2147483646;
  do
  {
    while (1)
    {
      if (!v21)
      {
        sub_2B7420();
      }

      v9 = v5 - 60;
      if ((*(*v21 + 48))(v21, v5 - 60) < v7)
      {
        if (!v19)
        {
          sub_2B7420();
        }

        if ((*(*v19 + 48))(v19, v5 - 60) < v8)
        {
          break;
        }
      }

      *(v5 - 4) = 0xFFFFFFFFLL;
      v5 -= 60;
      if (v9 == v6)
      {
        goto LABEL_20;
      }
    }

    if (!v21)
    {
      sub_2B7420();
    }

    v7 = (*(*v21 + 48))(v21, v5 - 60);
    if (!v19)
    {
      sub_2B7420();
    }

    v8 = (*(*v19 + 48))(v19, v5 - 60);
    v5 -= 60;
  }

  while (v9 != v6);
LABEL_20:
  v6 = *a2;
  v5 = a2[1];
LABEL_21:
  if (v6 != v5)
  {
    v10 = v6 + 60;
    while (1)
    {
      v11 = *(v10 - 8) == -1 || *(v10 - 7) == 0;
      if (v11)
      {
        break;
      }

      v11 = v10 == v5;
      v10 = (v10 + 60);
      if (v11)
      {
        goto LABEL_42;
      }
    }

    v12 = (v10 - 60);
    if (v10 - 60 != v5 && v10 != v5)
    {
      do
      {
        if (*(v10 + 7) != -1 && *(v10 + 8) != 0)
        {
          v14 = *v10;
          v15 = v10[1];
          v16 = v10[2];
          *(v12 + 41) = *(v10 + 41);
          v12[1] = v15;
          v12[2] = v16;
          *v12 = v14;
          v12 = (v12 + 60);
        }

        v10 = (v10 + 60);
      }

      while (v10 != v5);
      v5 = a2[1];
    }

    if (v12 != v5)
    {
      a2[1] = v12;
    }
  }

LABEL_42:
  if (v19 != v18)
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    result = v21;
    if (v21 != v20)
    {
      goto LABEL_46;
    }

    return (*(*result + 32))(result);
  }

  (*(*v19 + 32))(v19);
  result = v21;
  if (v21 == v20)
  {
    return (*(*result + 32))(result);
  }

LABEL_46:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_C1C4CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_C1C504(va);
  sub_C1C504(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_C1C504(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_C1C590(uint64_t a1, char *a2, void *a3, unint64_t a4, __int128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 < 2)
  {
    return;
  }

  v9 = a1;
  if (a4 == 2)
  {
    v10 = a2 - 60;
    if (sub_C1CA2C(a3, (a2 - 60), a1))
    {
      v65[0] = v9[2];
      *(v65 + 12) = *(v9 + 44);
      v12 = *v9;
      v11 = v9[1];
      v14 = *(v10 + 1);
      v13 = *(v10 + 2);
      v15 = *v10;
      *(v9 + 41) = *(v10 + 41);
      v9[1] = v14;
      v9[2] = v13;
      *v9 = v15;
      *v10 = v12;
      *(v10 + 1) = v11;
      *(v10 + 2) = v65[0];
      *(v10 + 41) = *(v65 + 9);
    }

    return;
  }

  if (a4 > 128)
  {
    v41 = a5;
    v42 = a4 >> 1;
    v43 = (a1 + 60 * (a4 >> 1));
    v44 = a4 - (a4 >> 1);
    if (a4 > a6)
    {
      sub_C1C590(a1, v43, a3, a4 >> 1, a5, a6);
      sub_C1C590(v43, a2, a3, v44, v41, a6);

      sub_C1D058(v9, v43, a2, a3, v42, v44, v41, a6);
      return;
    }

    v47 = sub_C1CBC8(a1, v43, a3, a4 >> 1, a5, a7);
    v48 = (v41 + 60 * v42);
    sub_C1CBC8(v43, a2, a3, v44, v48, v47);
    v49 = (v41 + 60 * a4);
    v50 = v48;
    while (1)
    {
      if (v50 == v49)
      {
        while (v41 != v48)
        {
          v57 = *v41;
          v58 = v41[1];
          v59 = v41[2];
          *(v9 + 41) = *(v41 + 41);
          v9[1] = v58;
          v9[2] = v59;
          *v9 = v57;
          v9 = (v9 + 60);
          v41 = (v41 + 60);
        }

        return;
      }

      if (sub_C1CA2C(a3, v50, v41))
      {
        v54 = *v50;
        v55 = v50[1];
        v56 = v50[2];
        *(v9 + 41) = *(v50 + 41);
        v9[1] = v55;
        v9[2] = v56;
        *v9 = v54;
        v9 = (v9 + 60);
        v50 = (v50 + 60);
        if (v41 == v48)
        {
LABEL_42:
          while (v50 != v49)
          {
            v60 = *v50;
            v61 = v50[1];
            v62 = v50[2];
            *(v9 + 41) = *(v50 + 41);
            v9[1] = v61;
            v9[2] = v62;
            *v9 = v60;
            v9 = (v9 + 60);
            v50 = (v50 + 60);
          }

          return;
        }
      }

      else
      {
        v51 = *v41;
        v52 = v41[1];
        v53 = v41[2];
        *(v9 + 41) = *(v41 + 41);
        v9[1] = v52;
        v9[2] = v53;
        *v9 = v51;
        v9 = (v9 + 60);
        v41 = (v41 + 60);
        if (v41 == v48)
        {
          goto LABEL_42;
        }
      }
    }
  }

  if (a1 == a2)
  {
    return;
  }

  v16 = a1 + 60;
  if ((a1 + 60) == a2)
  {
    return;
  }

  v17 = 0;
  v18 = a1;
  while (2)
  {
    v22 = v16;
    if (!sub_C1CA2C(a3, v16, v18))
    {
      goto LABEL_12;
    }

    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *(v65 + 12) = *(v22 + 44);
    v64 = v24;
    v65[0] = v25;
    v63 = v23;
    v26 = *v18;
    v27 = v18[1];
    v28 = v18[2];
    *(v22 + 41) = *(v18 + 41);
    v22[1] = v27;
    v22[2] = v28;
    *v22 = v26;
    if (v18 == v9)
    {
LABEL_10:
      v18 = v9;
      goto LABEL_11;
    }

    v29 = v17;
    while (1)
    {
      v31 = *(*a3 + 24);
      if (!v31 || (v32 = (*(*v31 + 48))(v31, &v63), (v33 = *(*a3 + 24)) == 0))
      {
LABEL_44:
        sub_2B7420();
      }

      v34 = (v9 + v29);
      if (v32 == (*(*v33 + 48))(v33, v9 + v29 - 60))
      {
        break;
      }

      v38 = *(*a3 + 24);
      if (!v38)
      {
        goto LABEL_44;
      }

      v39 = (*(*v38 + 48))(v38, &v63);
      v40 = *(*a3 + 24);
      if (!v40)
      {
        goto LABEL_44;
      }

      if (v39 >= (*(*v40 + 48))(v40, v9 + v29 - 60))
      {
        goto LABEL_11;
      }

LABEL_16:
      v18 = (v18 - 60);
      v30 = *(v9 + v29 - 44);
      *v34 = *(v9 + v29 - 60);
      v34[1] = v30;
      v34[2] = *(v9 + v29 - 28);
      *(v34 + 41) = *(v9 + v29 - 19);
      v29 -= 60;
      if (!v29)
      {
        goto LABEL_10;
      }
    }

    v35 = *(a3[1] + 24);
    if (!v35)
    {
      goto LABEL_44;
    }

    v36 = (*(*v35 + 48))(v35, &v63);
    v37 = *(a3[1] + 24);
    if (!v37)
    {
      goto LABEL_44;
    }

    if (v36 > (*(*v37 + 48))(v37, v9 + v29 - 60))
    {
      goto LABEL_16;
    }

    v18 = (v9 + v29);
LABEL_11:
    v19 = v63;
    v20 = v64;
    v21 = v65[0];
    *(v18 + 41) = *(v65 + 9);
    v18[1] = v20;
    v18[2] = v21;
    *v18 = v19;
LABEL_12:
    v16 = v22 + 60;
    v17 += 60;
    v18 = v22;
    if (v22 + 60 != a2)
    {
      continue;
    }

    break;
  }
}

BOOL sub_C1CA2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 24);
  if (!v4)
  {
    goto LABEL_10;
  }

  v7 = (*(*v4 + 48))(v4);
  v8 = *(*a1 + 24);
  if (!v8)
  {
    goto LABEL_10;
  }

  if (v7 == (*(*v8 + 48))(v8, a3))
  {
    v9 = *(a1[1] + 24);
    if (v9)
    {
      v10 = (*(*v9 + 48))(v9, a2);
      v11 = *(a1[1] + 24);
      if (v11)
      {
        return v10 > (*(*v11 + 48))(v11, a3);
      }
    }

LABEL_10:
    sub_2B7420();
  }

  v13 = *(*a1 + 24);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = (*(*v13 + 48))(v13, a2);
  v15 = *(*a1 + 24);
  if (!v15)
  {
    goto LABEL_10;
  }

  return v14 < (*(*v15 + 48))(v15, a3);
}

__n128 sub_C1CBC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, __n128 result)
{
  if (a4)
  {
    v6 = a5;
    v8 = a2;
    v9 = a1;
    if (a4 == 2)
    {
      v12 = (a2 - 60);
      if (sub_C1CA2C(a3, a2 - 60, a1))
      {
        v13 = *v12;
        v14 = *(v8 - 44);
        v15 = *(v8 - 28);
        *(v6 + 44) = *(v8 - 16);
        v6[1] = v14;
        v6[2] = v15;
        *v6 = v13;
        result = *v9;
        v16 = *(v9 + 16);
        v17 = *(v9 + 32);
        v18 = *(v9 + 44);
      }

      else
      {
        v43 = *v9;
        v44 = *(v9 + 16);
        v45 = *(v9 + 32);
        *(v6 + 44) = *(v9 + 44);
        v6[1] = v44;
        v6[2] = v45;
        *v6 = v43;
        result = *v12;
        v16 = *(v8 - 44);
        v17 = *(v8 - 28);
        v18 = *(v8 - 16);
      }

      *(v6 + 104) = v18;
      *(v6 + 92) = v17;
      *(v6 + 76) = v16;
      *(v6 + 60) = result;
    }

    else if (a4 == 1)
    {
      result = *a1;
      v10 = *(a1 + 16);
      v11 = *(a1 + 32);
      *(a5 + 44) = *(a1 + 44);
      a5[1] = v10;
      a5[2] = v11;
      *a5 = result;
    }

    else if (a4 > 8)
    {
      v46 = a4 >> 1;
      v47 = 60 * (a4 >> 1);
      v48 = v47 + a1;
      sub_C1C590(a1, v47 + a1, a3, v46, a5, v46);
      sub_C1C590(v47 + v9, v8, a3, a4 - v46, v6 + v47, a4 - v46);
      v50 = v47 + v9;
      while (v50 != v8)
      {
        if (sub_C1CA2C(a3, v50, v9))
        {
          result = *v50;
          v53 = *(v50 + 16);
          v54 = *(v50 + 32);
          *(v6 + 44) = *(v50 + 44);
          v6[1] = v53;
          v6[2] = v54;
          *v6 = result;
          v6 = (v6 + 60);
          v50 += 60;
          if (v9 == v48)
          {
LABEL_43:
            while (v50 != v8)
            {
              result = *v50;
              v57 = *(v50 + 16);
              v58 = *(v50 + 32);
              *(v6 + 44) = *(v50 + 44);
              v6[1] = v57;
              v6[2] = v58;
              *v6 = result;
              v6 = (v6 + 60);
              v50 += 60;
            }

            return result;
          }
        }

        else
        {
          result = *v9;
          v51 = *(v9 + 16);
          v52 = *(v9 + 32);
          *(v6 + 44) = *(v9 + 44);
          v6[1] = v51;
          v6[2] = v52;
          *v6 = result;
          v6 = (v6 + 60);
          v9 += 60;
          if (v9 == v48)
          {
            goto LABEL_43;
          }
        }
      }

      while (v9 != v48)
      {
        result = *v9;
        v55 = *(v9 + 16);
        v56 = *(v9 + 32);
        *(v6 + 44) = *(v9 + 44);
        v6[1] = v55;
        v6[2] = v56;
        *v6 = result;
        v6 = (v6 + 60);
        v9 += 60;
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      v19 = *(a1 + 16);
      v20 = *(a1 + 32);
      *(a5 + 44) = *(a1 + 44);
      a5[1] = v19;
      a5[2] = v20;
      *a5 = result;
      v21 = a1 + 60;
      if (a1 + 60 != a2)
      {
        v22 = 0;
        v23 = a5;
        do
        {
          while (1)
          {
            v26 = (v23 + 60);
            if (sub_C1CA2C(a3, v21, v23))
            {
              break;
            }

            result = *v21;
            v24 = *(v21 + 16);
            v25 = *(v21 + 32);
            *(v23 + 104) = *(v21 + 44);
            *(v23 + 76) = v24;
            *(v23 + 92) = v25;
            *v26 = result;
            v21 += 60;
            v22 += 60;
            v23 = (v23 + 60);
            if (v21 == v8)
            {
              return result;
            }
          }

          v27 = v23[1];
          *v26 = *v23;
          *(v23 + 76) = v27;
          *(v23 + 92) = v23[2];
          *(v23 + 104) = *(v23 + 44);
          v28 = v6;
          if (v23 != v6)
          {
            v29 = v22;
            do
            {
              v31 = *(*a3 + 24);
              if (!v31 || (v32 = (*(*v31 + 48))(v31, v21), (v33 = *(*a3 + 24)) == 0))
              {
LABEL_45:
                sub_2B7420();
              }

              v34 = (v6->n128_u64 + v29);
              if (v32 == (*(*v33 + 48))(v33, &v6[-3] + v29 - 12))
              {
                v35 = *(a3[1] + 24);
                if (!v35)
                {
                  goto LABEL_45;
                }

                v36 = (*(*v35 + 48))(v35, v21);
                v37 = *(a3[1] + 24);
                if (!v37)
                {
                  goto LABEL_45;
                }

                if (v36 <= (*(*v37 + 48))(v37, &v6[-3] + v29 - 12))
                {
                  v28 = v23;
                  goto LABEL_28;
                }
              }

              else
              {
                v38 = *(*a3 + 24);
                if (!v38)
                {
                  goto LABEL_45;
                }

                v39 = (*(*v38 + 48))(v38, v21);
                v40 = *(*a3 + 24);
                if (!v40)
                {
                  goto LABEL_45;
                }

                if (v39 >= (*(*v40 + 48))(v40, &v6[-3] + v29 - 12))
                {
                  v28 = (v6 + v29);
                  goto LABEL_28;
                }
              }

              v23 = (v23 - 60);
              v30 = *(&v6[-2] + v29 - 12);
              *v34 = *(&v6[-3] + v29 - 12);
              v34[1] = v30;
              v34[2] = *(&v6[-1] + v29 - 12);
              *(v34 + 41) = *(&v6[-1] + v29 - 3);
              v29 -= 60;
            }

            while (v29);
            v28 = v6;
LABEL_28:
            v8 = a2;
          }

          result = *v21;
          v41 = *(v21 + 16);
          v42 = *(v21 + 32);
          *(v28 + 41) = *(v21 + 41);
          v28[1] = v41;
          v28[2] = v42;
          *v28 = result;
          v21 += 60;
          v22 += 60;
          v23 = v26;
        }

        while (v21 != v8);
      }
    }
  }

  return result;
}

uint64_t sub_C1D058(uint64_t result, __int128 *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  v122 = a6;
  if (!a6)
  {
    return result;
  }

  v13 = result;
  while (v122 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v14 = 0;
    v15 = -a5;
    while (1)
    {
      v16 = (v13 + v14);
      result = sub_C1CA2C(a4, a2, v13 + v14);
      if (result)
      {
        break;
      }

      v14 += 60;
      if (__CFADD__(v15++, 1))
      {
        return result;
      }
    }

    v18 = -v15;
    v19 = v122;
    v119 = a3;
    v120 = a4;
    if (-v15 < v122)
    {
      v20 = v122 / 2;
      v21 = a2 + 60 * (v122 / 2);
      v22 = a2;
      if (a2 - v13 != v14)
      {
        v23 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - v13 - v14) >> 2);
        v22 = (v13 + v14);
        do
        {
          if (sub_C1CA2C(v120, v21, v22 + 60 * (v23 >> 1)))
          {
            v23 >>= 1;
          }

          else
          {
            v22 = (v22 + 60 * (v23 >> 1) + 60);
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v19 = v122;
        v20 = v122 / 2;
      }

      v24 = 0xEEEEEEEEEEEEEEEFLL * ((v22 - v13 - v14) >> 2);
      v25 = (a2 + 60 * (v122 / 2));
      v26 = a2 - v22;
      if (a2 == v22)
      {
        goto LABEL_54;
      }

LABEL_32:
      v25 = v22;
      if (a2 != v21)
      {
        if ((v22 + 60) == a2)
        {
          v31 = *v22;
          v32 = v22[1];
          v33 = v22[2];
          *&v125[12] = *(v22 + 44);
          v124 = v32;
          *v125 = v33;
          v123 = v31;
          v34 = v21 - a2;
          v35 = v21 - a2 - 3;
          v36 = a2;
          v37 = v24;
          v38 = v20;
          memmove(v22, v36, v35);
          v20 = v38;
          v24 = v37;
          v19 = v122;
          v25 = (v22 + v34);
          v40 = v124;
          v39 = *v125;
          v41 = v123;
          *(v25 + 41) = *&v125[9];
          v25[1] = v40;
          v25[2] = v39;
          *v25 = v41;
        }

        else if ((a2 + 60) == v21)
        {
          v25 = (v22 + 60);
          v42 = *(v21 - 44);
          v123 = *(v21 - 60);
          v124 = v42;
          *v125 = *(v21 - 28);
          *&v125[12] = *(v21 - 16);
          if ((v21 - 60) != v22)
          {
            v43 = v24;
            v44 = v20;
            memmove(v22 + 60, v22, v21 - 60 - v22 - 3);
            v25 = (v22 + 60);
            v20 = v44;
            v24 = v43;
            v19 = v122;
          }

          v45 = v123;
          v46 = v124;
          v47 = *v125;
          *(v22 + 41) = *&v125[9];
          v22[1] = v46;
          v22[2] = v47;
          *v22 = v45;
        }

        else
        {
          v48 = 0xEEEEEEEEEEEEEEEFLL * ((v21 - a2) >> 2);
          if (0xEEEEEEEEEEEEEEEFLL * (v26 >> 2) == v48)
          {
            v49 = (v22 + 60);
            v50 = a2 + 60;
            do
            {
              v51 = *(v49 - 60);
              v52 = *(v49 - 44);
              v53 = *(v49 - 28);
              *&v125[12] = *(v49 - 1);
              v124 = v52;
              *v125 = v53;
              v123 = v51;
              v54 = *(v50 - 60);
              v55 = *(v50 - 44);
              v56 = *(v50 - 28);
              *(v49 - 19) = *(v50 - 19);
              *(v49 - 28) = v56;
              *(v49 - 44) = v55;
              *(v49 - 60) = v54;
              v57 = v124;
              *(v50 - 60) = v123;
              *(v50 - 44) = v57;
              *(v50 - 28) = *v125;
              *(v50 - 19) = *&v125[9];
              if (v49 == a2)
              {
                break;
              }

              v49 = (v49 + 60);
              v58 = v50 == v21;
              v50 += 60;
            }

            while (!v58);
            v25 = a2;
          }

          else
          {
            v59 = 0xEEEEEEEEEEEEEEEFLL * (v26 >> 2);
            do
            {
              v60 = v59;
              v59 = v48;
              v48 = v60 % v48;
            }

            while (v48);
            v61 = (v22 + 60 * v59);
            do
            {
              v62 = *(v61 - 60);
              v63 = *(v61 - 44);
              v64 = *(v61 - 28);
              v65 = *(v61 - 1);
              v61 = (v61 - 60);
              v123 = v62;
              v124 = v63;
              *v125 = v64;
              *&v125[12] = v65;
              v66 = (v61 + v26);
              v67 = v61;
              do
              {
                v68 = v66;
                v69 = *v66;
                v70 = v66[1];
                v71 = v66[2];
                *(v67 + 41) = *(v66 + 41);
                v67[1] = v70;
                v67[2] = v71;
                *v67 = v69;
                v72 = v21 - v66;
                v66 = (v66 + 4 * (v26 >> 2));
                if (v26 >= v72)
                {
                  v66 = (a2 - v72);
                }

                v67 = v68;
              }

              while (v66 != v61);
              v73 = v123;
              v74 = v124;
              v75 = *v125;
              *(v68 + 41) = *&v125[9];
              v68[1] = v74;
              v68[2] = v75;
              *v68 = v73;
            }

            while (v61 != v22);
            v25 = (v22 + v21 - a2);
          }
        }
      }

      goto LABEL_54;
    }

    if (v15 == -1)
    {
      v105 = (v13 + v14);
      v106 = *(v13 + v14);
      v107 = *(v13 + v14 + 16);
      v108 = *(v13 + v14 + 32);
      *&v125[12] = *(v13 + v14 + 44);
      v124 = v107;
      *v125 = v108;
      v123 = v106;
      v109 = *a2;
      v110 = a2[1];
      v111 = a2[2];
      *(v105 + 41) = *(a2 + 41);
      v105[1] = v110;
      v105[2] = v111;
      *v105 = v109;
      v112 = v124;
      *a2 = v123;
      a2[1] = v112;
      a2[2] = *v125;
      *(a2 + 41) = *&v125[9];
      return result;
    }

    v24 = v18 / 2;
    v27 = a3;
    v22 = (v13 + 60 * (v18 / 2) + v14);
    v123 = *a4;
    v21 = a2;
    if (a2 != v27)
    {
      v118 = v18 / 2;
      v28 = 0xEEEEEEEEEEEEEEEFLL * ((v119 - a2) >> 2);
      v21 = a2;
      do
      {
        v29 = v21 + 60 * (v28 >> 1);
        v30 = sub_C1CA2C(&v123, v29, v22);
        if (v30)
        {
          v28 += ~(v28 >> 1);
        }

        else
        {
          v28 >>= 1;
        }

        if (v30)
        {
          v21 = v29 + 60;
        }
      }

      while (v28);
      v24 = v118;
      v19 = v122;
    }

    v20 = 0xEEEEEEEEEEEEEEEFLL * ((v21 - a2) >> 2);
    v25 = v21;
    v26 = a2 - v22;
    if (a2 != v22)
    {
      goto LABEL_32;
    }

LABEL_54:
    a5 = -v15 - v24;
    v76 = v19 - v20;
    if (v24 + v20 >= v19 - (v24 + v20) - v15)
    {
      v78 = v21;
      a4 = v120;
      v79 = v24;
      v80 = v20;
      v81 = v25;
      result = sub_C1D058(v25, v78, v119, v120, -v15 - v24, v19 - v20, a7, a8);
      a2 = v22;
      v82 = v80;
      a5 = v79;
      a3 = v81;
      v122 = v82;
      v13 = v16;
      if (!v82)
      {
        return result;
      }
    }

    else
    {
      v77 = v25;
      result = sub_C1D058(v13 + v14, v22, v25, v120, v24, v20, a7, a8);
      a2 = v21;
      a4 = v120;
      a3 = v119;
      v122 = v76;
      v13 = v77;
      if (!v76)
      {
        return result;
      }
    }
  }

  if (a5 <= v122)
  {
    if (a2 != v13)
    {
      v93 = 3 - a7;
      v94 = a7;
      v95 = v13;
      do
      {
        v96 = *v95;
        v97 = v95[1];
        v98 = v95[2];
        *(v94 + 44) = *(v95 + 44);
        v94[1] = v97;
        v94[2] = v98;
        *v94 = v96;
        v94 = (v94 + 60);
        v95 = (v95 + 60);
        v93 -= 60;
      }

      while (v95 != a2);
      while (a2 != a3)
      {
        result = sub_C1CA2C(a4, a2, a7);
        if (result)
        {
          v102 = *a2;
          v103 = a2[1];
          v104 = a2[2];
          *(v13 + 41) = *(a2 + 41);
          v13[1] = v103;
          v13[2] = v104;
          *v13 = v102;
          v13 = (v13 + 60);
          a2 = (a2 + 60);
          if (v94 == a7)
          {
            return result;
          }
        }

        else
        {
          v99 = *a7;
          v100 = a7[1];
          v101 = a7[2];
          *(v13 + 41) = *(a7 + 41);
          v13[1] = v100;
          v13[2] = v101;
          *v13 = v99;
          v13 = (v13 + 60);
          a7 = (a7 + 60);
          if (v94 == a7)
          {
            return result;
          }
        }
      }

      return memmove(v13, a7, -(a7 + v93));
    }
  }

  else if (a2 != a3)
  {
    v83 = 0;
    do
    {
      v84 = (a7 + v83);
      v85 = *(a2 + v83);
      v86 = *(a2 + v83 + 16);
      v87 = *(a2 + v83 + 32);
      *(v84 + 44) = *(a2 + v83 + 44);
      v84[1] = v86;
      v84[2] = v87;
      *v84 = v85;
      v83 += 60;
    }

    while (a2 + v83 != a3);
    v88 = (a7 + v83);
    while (a2 != v13)
    {
      result = sub_C1CA2C(a4, v88 - 60, a2 - 60);
      if (result)
      {
        v89 = (a2 - 60);
      }

      else
      {
        v89 = (v88 - 60);
      }

      v91 = v89[1];
      v90 = v89[2];
      v92 = *(v89 + 41);
      *(a3 - 60) = *v89;
      *(a3 - 19) = v92;
      *(a3 - 28) = v90;
      *(a3 - 44) = v91;
      a3 -= 60;
      if (result)
      {
        a2 = (a2 - 60);
      }

      else
      {
        v88 = (v88 - 60);
      }

      if (v88 == a7)
      {
        return result;
      }
    }

    if (v88 != a7)
    {
      v113 = -60;
      do
      {
        v114 = *(v88 - 60);
        v115 = *(v88 - 44);
        v116 = *(v88 - 28);
        v117 = &a3[v113];
        *(v117 + 41) = *(v88 - 19);
        *(v117 + 1) = v115;
        *(v117 + 2) = v116;
        *v117 = v114;
        v113 -= 60;
        v88 = (v88 - 60);
      }

      while (v88 != a7);
    }
  }

  return result;
}

uint64_t sub_C1D824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1D940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter27get_departure_time_functionEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1DA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1DB64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning38JourneyLegAlternativesDominationFilter25get_arrival_time_functionEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_C1DBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 17;
  strcpy(__p, "alternatives_type");
  v5 = sub_5F8FC(a3, __p);
  v6 = sub_BC89AC(v5);
  if (v10 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = a2;
  return a1;
}

void sub_C1DC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C1DC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 248)
  {
    sub_C1DCD0(a1, v2);
  }
}

void sub_C1DCD0(uint64_t a1, uint64_t a2)
{
  *v22 = 0u;
  *__p = 0u;
  v24 = 1065353216;
  v2 = 96;
  if (!*a1)
  {
    v2 = 72;
  }

  v3 = (a2 + v2);
  v5 = *(a2 + v2);
  v4 = *(a2 + v2 + 8);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 + 40) != -1)
      {
        v7 = sub_A56F04((*(a1 + 8) + 4136), *(v5 + 28), *(v5 + 48), *(v5 + 36));
        v8 = *(v5 + 40);
        v19 = v7;
        v20 = v9;
        v21 = v8;
        if (!sub_C1DEA4(v22, &v19))
        {
          sub_C1E044();
        }

        *(v5 + 48) = -1;
      }

      v5 += 60;
    }

    while (v5 != v4);
    v5 = *v3;
    v4 = v3[1];
  }

  if (v5 != v4)
  {
    v10 = (v5 + 60);
    while (*(v10 - 3) != -1)
    {
      v11 = v10 == v4;
      v10 = (v10 + 60);
      if (v11)
      {
        goto LABEL_26;
      }
    }

    v12 = (v10 - 60);
    if ((v10 - 60) != v4 && v10 != v4)
    {
      do
      {
        if (*(v10 + 12) != -1)
        {
          v13 = *v10;
          v14 = v10[1];
          v15 = v10[2];
          *(v12 + 41) = *(v10 + 41);
          v12[1] = v14;
          v12[2] = v15;
          *v12 = v13;
          v12 = (v12 + 60);
        }

        v10 = (v10 + 60);
      }

      while (v10 != v4);
      v4 = v3[1];
    }

    if (v12 != v4)
    {
      v3[1] = v12;
    }
  }

LABEL_26:
  v16 = __p[0];
  if (__p[0])
  {
    do
    {
      v17 = *v16;
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v22[0];
  v22[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }
}

void sub_C1DE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_C1DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_C1DEA4(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = (((v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5) + 0x388152A534) ^ 0xDEADBEEF;
  v9 = (v7 + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = vcnt_s8(v2);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v2)
    {
      v11 = v9 % *&v2;
    }
  }

  else
  {
    v11 = v9 & (*&v2 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  result = *v12;
  if (*v12)
  {
    if (v10.u32[0] < 2uLL)
    {
      v14 = *&v2 - 1;
      while (1)
      {
        v15 = result[1];
        if (v9 == v15)
        {
          v16 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
          if (v16 && result[3] == __PAIR64__(v7, v6))
          {
            return result;
          }
        }

        else if ((v15 & v14) != v11)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v17 = result[1];
      if (v9 == v17)
      {
        v18 = *(result + 5) == HIDWORD(v3) && *(result + 4) == v3;
        if (v18 && result[3] == __PAIR64__(v7, v6))
        {
          return result;
        }
      }

      else
      {
        if (v17 >= *&v2)
        {
          v17 %= *&v2;
        }

        if (v17 != v11)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}