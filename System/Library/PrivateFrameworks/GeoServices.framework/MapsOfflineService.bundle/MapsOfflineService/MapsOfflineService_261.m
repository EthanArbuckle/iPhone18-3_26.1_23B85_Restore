void sub_10150E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015104(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 < v5)
  {
    *v4 = a2;
    v6 = *a3;
    *(v4 + 24) = a3[1];
    *(v4 + 8) = v6;
    v7 = a3[2];
    v8 = a3[3];
    v9 = a3[4];
    *(v4 + 88) = *(a3 + 10);
    *(v4 + 72) = v9;
    *(v4 + 56) = v8;
    *(v4 + 40) = v7;
    v10 = v4 + 96;
LABEL_3:
    *(a1 + 8) = v10;
    return;
  }

  v11 = *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
  v13 = v12 + 1;
  if (v12 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v11) >> 5);
  if (2 * v14 > v13)
  {
    v13 = 2 * v14;
  }

  if (v14 >= 0x155555555555555)
  {
    v15 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (v15 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = a3[3];
  v17 = 32 * ((v4 - *a1) >> 5);
  *(v17 + 40) = a3[2];
  *(v17 + 56) = v16;
  *(v17 + 72) = a3[4];
  v18 = a3[1];
  *(v17 + 8) = *a3;
  *v17 = a2;
  *(v17 + 88) = *(a3 + 10);
  *(v17 + 24) = v18;
  v10 = 96 * v12 + 96;
  v19 = 96 * v12 - (v4 - v11);
  memcpy((v17 - (v4 - v11)), v11, v4 - v11);
  *a1 = v19;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  *(a1 + 8) = v10;
}

int *sub_1015290@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int16 a5@<W4>, __int16 a6@<W5>, uint64_t a7@<X8>)
{
  v8 = a2;
  v11 = *(a3 + 48);
  *(a7 + 32) = *(a3 + 32);
  *(a7 + 48) = v11;
  *(a7 + 64) = *(a3 + 64);
  *(a7 + 80) = *(a3 + 80);
  v12 = *(a3 + 16);
  *a7 = *a3;
  *(a7 + 16) = v12;
  *a7 = a4;
  if ((a5 & 0x100) != 0)
  {
    v15 = a5;
    v16 = (a2 >> 1) & 1;
    *(a7 + 32) = v16 != a5;
    v13 = (a7 + 32);
    v14 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
    v17 = sub_2B51D8(*(a1 + 4304), v14);
    v18 = (v17 - *v17);
    if (*v18 >= 0x9Bu)
    {
      v19 = v18[77];
      if (v19)
      {
        if ((*(v17 + v19 + 1) & 0x80) != 0)
        {
          *v13 = v16 == v15;
        }
      }
    }
  }

  else
  {
    *(a7 + 32) = 0;
    v13 = (a7 + 32);
    v14 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
  }

  result = sub_2B51D8(*(a1 + 4304), v14);
  v21 = (result - *result);
  if (*v21 >= 0x2Fu)
  {
    v22 = v21[23];
    if (v22)
    {
      v23 = *(result + v22);
      v24 = v23 > 0x2D;
      v25 = (1 << v23) & 0x208040000000;
      if (!v24 && v25 != 0)
      {
        *v13 = 0;
      }
    }
  }

  if ((a6 & 0x100) != 0)
  {
    if (((v8 & 2) == 0) == a6)
    {
      v27 = 256;
    }

    else
    {
      v27 = 257;
    }

    *(a7 + 72) = v27;
  }

  return result;
}

void sub_10153E4(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v20 = vnegq_f64(v11);
    while (*(v5 + 32) && *(v5 + 36) != -1 && *v5 != 0x7FFFFFFFFFFFFFFFLL && *(v5 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0u;
      v26 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21[1] = 0x7FFFFFFFLL;
      v21[0] = -1;
      v21[2] = -1;
      v21[3] = -1;
      v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      DWORD2(v22) = -1935635296;
      *&v23 = 0;
      *(&v23 + 7) = 0;
      v24 = 0;
      v25 = 0;
      *&v26 = 0;
      DWORD2(v26) = 0;
      *&v27 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v27) = 100;
      v28 = 0;
      v29 = 0;
      v30 = v20;
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1014E04(a1, v5, a3, v21, a4, a5, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v5 += 104;
      if (v5 == v6)
      {
        v13 = *a5;
        v12 = a5[1];
        if (*a5 != v12)
        {
          v14 = *a5;
          v15 = *a5;
          while ((*(v15 + 40) & 1) != 0)
          {
            v15 += 96;
            if (v15 == v12)
            {
              v16 = v12 - v13 - 96;
              if (v16 < 0x60)
              {
                goto LABEL_23;
              }

              v17 = v16 / 0x60 + 1;
              v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
              v18 = (v13 + 152);
              v19 = v17 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v18 - 96) = 0;
                *v18 = 0;
                v18 += 192;
                v19 -= 2;
              }

              while (v19);
              if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_23:
                do
                {
                  *(v14 + 56) = 0;
                  v14 += 96;
                }

                while (v14 != v12);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

void sub_10155E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_44D36C(va);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1015680(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 16);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  v9 = *(a2 + 224);
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  if (v10 != v11)
  {
    do
    {
      sub_1015908(a1, v10, v9, a2, a3, a4, 1.0);
      v10 += 13;
    }

    while (v10 != v11);
    v13 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      v14 = *a4;
      v15 = *a4;
      while ((*(v15 + 40) & 1) != 0)
      {
        v15 += 96;
        if (v15 == v12)
        {
          v16 = v12 - v13 - 96;
          if (v16 < 0x60)
          {
            goto LABEL_36;
          }

          v17 = v16 / 0x60 + 1;
          v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
          v18 = (v13 + 152);
          v19 = v17 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v18 - 96) = 0;
            *v18 = 0;
            v18 += 192;
            v19 -= 2;
          }

          while (v19);
          if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_36:
            do
            {
              *(v14 + 56) = 0;
              v14 += 96;
            }

            while (v14 != v12);
          }

          break;
        }
      }
    }
  }

  if (*(a2 + 200) != *(a2 + 208))
  {
    sub_49DC18(&__p, (a2 + 200));
    v20 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
    if (v33 == __p)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    sub_1016A88(__p, v33, &v34, v21, 1);
    v22 = __p;
    v23 = v33;
    if (v33 != __p)
    {
      v24 = 0.5;
      v25 = 0.5 / (0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
      do
      {
        sub_1015908(a1, v22, v9, a2, a3, a4, v24);
        v24 = v24 - v25;
        v22 += 13;
      }

      while (v22 != v23);
      v22 = __p;
    }

    if (v22)
    {
      v26 = v33;
      v27 = v22;
      if (v33 != v22)
      {
        do
        {
          v29 = *(v26 - 3);
          if (v29)
          {
            v30 = *(v26 - 2);
            v28 = *(v26 - 3);
            if (v30 != v29)
            {
              do
              {
                v31 = *(v30 - 9);
                v30 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v28 = *(v26 - 3);
            }

            *(v26 - 2) = v29;
            operator delete(v28);
          }

          v26 -= 104;
        }

        while (v26 != v22);
        v27 = __p;
      }

      v33 = v22;
      operator delete(v27);
    }
  }
}

void sub_10158D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_48C8F4(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_1015908(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v40 = 0;
  v44 = 0;
  v46 = 1;
  v50 = 0;
  v53 = 0;
  v54 = 0;
  v45 = a7;
  v12 = *a2;
  v13 = a2[6];
  v41 = *a2;
  v42 = v13;
  v14 = *(a4 + 56);
  if (a3 != 1)
  {
    v14 = 0.0;
  }

  v43 = v14;
  v51 = *(a4 + 48);
  v52 = a3;
  HIBYTE(v53) = *(a4 + 64);
  v47 = a5;
  v48 = a5;
  v49 = v12;
  LOBYTE(v53) = *(a2 + 64);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v15 = *(a1 + 4304);
  v16 = a2[4];
  if (*(v15 + 7774) == 1)
  {
    v17 = sub_2AF704(v15 + 3896, v16, 1);
    if (!v17)
    {
      return;
    }

    v18 = &v17[-*v17];
    if (*v18 < 5u)
    {
      return;
    }

    v19 = *(v18 + 2);
    if (!v19 || *&v17[v19 + *&v17[v19]] <= HIDWORD(v16) || !sub_2B817C(v15, v16))
    {
      return;
    }

    v16 = a2[4];
  }

  sub_F91134(a1, v16, &v37);
  v20 = v37;
  v21 = v38;
  if (v37 != v38)
  {
    while (1)
    {
      v22 = *v20;
      v23 = sub_2B51D8(*(a1 + 4304), *(a2 + 8) | (*(a2 + 18) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = 0;
        v27 = a2[3];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = *(v23 + v25);
          if (v28)
          {
            v29 = v27 / v28 * 1000000000.0;
            if (v29 >= 0.0)
            {
              if (v29 < 4.50359963e15)
              {
                v30 = (v29 + v29) + 1;
LABEL_31:
                v29 = (v30 >> 1);
              }
            }

            else if (v29 > -4.50359963e15)
            {
              v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
              goto LABEL_31;
            }

            v32 = 1000000000.0;
            if (v29 <= 1000000000.0)
            {
              v32 = v29;
            }

            if (v29 >= 0.0)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0.0;
            }

            v26 = v33;
          }
        }
      }

      else
      {
        v26 = 0;
      }

      if ((v22 & 2) != 0)
      {
        v31 = v26;
      }

      else
      {
        v31 = 1000000000 - v26;
      }

      v7 = v7 & 0xFFFFFFFFFFFF0000 | *(a2 + 21);
      v15 = v15 & 0xFFFFFFFFFFFF0000 | *(a2 + 20);
      sub_1015290(a1, v22, &v40, v31, v7, v15, v34);
      if (a3 != 3 || (v36 & 1) == 0 || v35 != 1)
      {
        sub_1015104(a6, v22, v34);
      }

      if (++v20 == v21)
      {
        v20 = v37;
        break;
      }
    }
  }

  if (v20)
  {
    v38 = v20;
    operator delete(v20);
  }
}

void sub_1015BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015C08(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v23[0] = 0;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v23[1] = -1;
  v24 = 0x7FFFFFFF;
  v25 = a4;
  v26 = a2;
  v27 = 16842752;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 2139095039;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v11 = 0u;
  v16 = 100;
  v10[0] = -1;
  v10[1] = 0x7FFFFFFFLL;
  v10[2] = -1;
  v10[3] = -1;
  v10[4] = 0x7FFFFFFFFFFFFFFFLL;
  DWORD2(v11) = -1935635296;
  v12 = 0uLL;
  *(&v12 + 7) = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0uLL;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0;
  v18 = 0;
  v19 = vnegq_f64(v5);
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_1015908(a1, v23, a3, v10, 0, a5, 1.0);
  if (__p)
  {
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  v6 = v32;
  if (v32)
  {
    v7 = v33;
    v8 = v32;
    if (v33 != v32)
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
      v8 = v32;
    }

    v33 = v6;
    operator delete(v8);
  }
}

void sub_1015D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_44D36C(va);
  sub_C6A790(v3 - 136);
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1015D8C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v20 = vnegq_f64(v11);
    while (*(v5 + 32) && *(v5 + 36) != -1 && *v5 != 0x7FFFFFFFFFFFFFFFLL && *(v5 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0u;
      v26 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21[1] = 0x7FFFFFFFLL;
      v21[0] = -1;
      v21[2] = -1;
      v21[3] = -1;
      v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      DWORD2(v22) = -1935635296;
      *&v23 = 0;
      *(&v23 + 7) = 0;
      v24 = 0;
      v25 = 0;
      *&v26 = 0;
      DWORD2(v26) = 0;
      *&v27 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v27) = 100;
      v28 = 0;
      v29 = 0;
      v30 = v20;
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1015908(a1, v5, a3, v21, a4, a5, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v5 += 104;
      if (v5 == v6)
      {
        v13 = *a5;
        v12 = a5[1];
        if (*a5 != v12)
        {
          v14 = *a5;
          v15 = *a5;
          while ((*(v15 + 40) & 1) != 0)
          {
            v15 += 96;
            if (v15 == v12)
            {
              v16 = v12 - v13 - 96;
              if (v16 < 0x60)
              {
                goto LABEL_23;
              }

              v17 = v16 / 0x60 + 1;
              v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
              v18 = (v13 + 152);
              v19 = v17 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v18 - 96) = 0;
                *v18 = 0;
                v18 += 192;
                v19 -= 2;
              }

              while (v19);
              if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_23:
                do
                {
                  *(v14 + 56) = 0;
                  v14 += 96;
                }

                while (v14 != v12);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

void sub_1015F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_44D36C(va);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1015FAC(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a3;
  if (*a2 != v8)
  {
    while (*(v7 + 16) != (v9 == 2))
    {
      v7 += 48;
      if (v7 == v8)
      {
        v7 = a2[1];
        break;
      }
    }
  }

  sub_1015C08(a1, *v7, v9, *(v7 + 8), a4);
  if (*a4 != a4[1])
  {
    v10 = -1;
    if (*(a2 + 13))
    {
      if (*(a2 + 14) != -1)
      {
        v10 = sub_2AB7E0(*(a1 + 4312), *(a2 + 52));
      }
    }

    a4[3] = v10;
  }
}

void sub_1016054(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1016070(void *a1, void *a2)
{
  sub_F92178(a1, a2, 3);
  a1[17] = sub_3AF6B4(a2);
  a1[18] = sub_3AF6B4(a2);
  a1[19] = sub_3B1D8C(a2);
  return a1;
}

void sub_10160EC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 16);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  v9 = *(a2 + 224);
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  if (v10 != v11)
  {
    do
    {
      sub_1016374(a1, v10, v9, a2, a3, a4, 1.0);
      v10 += 13;
    }

    while (v10 != v11);
    v13 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      v14 = *a4;
      v15 = *a4;
      while ((*(v15 + 40) & 1) != 0)
      {
        v15 += 96;
        if (v15 == v12)
        {
          v16 = v12 - v13 - 96;
          if (v16 < 0x60)
          {
            goto LABEL_36;
          }

          v17 = v16 / 0x60 + 1;
          v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
          v18 = (v13 + 152);
          v19 = v17 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v18 - 96) = 0;
            *v18 = 0;
            v18 += 192;
            v19 -= 2;
          }

          while (v19);
          if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_36:
            do
            {
              *(v14 + 56) = 0;
              v14 += 96;
            }

            while (v14 != v12);
          }

          break;
        }
      }
    }
  }

  if (*(a2 + 200) != *(a2 + 208))
  {
    sub_49DC18(&__p, (a2 + 200));
    v20 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
    if (v33 == __p)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    sub_1016A88(__p, v33, &v34, v21, 1);
    v22 = __p;
    v23 = v33;
    if (v33 != __p)
    {
      v24 = 0.5;
      v25 = 0.5 / (0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
      do
      {
        sub_1016374(a1, v22, v9, a2, a3, a4, v24);
        v24 = v24 - v25;
        v22 += 13;
      }

      while (v22 != v23);
      v22 = __p;
    }

    if (v22)
    {
      v26 = v33;
      v27 = v22;
      if (v33 != v22)
      {
        do
        {
          v29 = *(v26 - 3);
          if (v29)
          {
            v30 = *(v26 - 2);
            v28 = *(v26 - 3);
            if (v30 != v29)
            {
              do
              {
                v31 = *(v30 - 9);
                v30 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v28 = *(v26 - 3);
            }

            *(v26 - 2) = v29;
            operator delete(v28);
          }

          v26 -= 104;
        }

        while (v26 != v22);
        v27 = __p;
      }

      v33 = v22;
      operator delete(v27);
    }
  }
}

void sub_1016340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_48C8F4(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_1016374(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v12 = *a2;
  v43 = a2[6];
  if (a3 == 1)
  {
    v13 = *(a4 + 56);
  }

  else
  {
    v13 = 0.0;
  }

  v42 = *(a4 + 48);
  v14 = *(a4 + 64);
  v15 = *(a2 + 64);
  __p = 0;
  v60 = 0;
  v61 = 0;
  v16 = *(a1 + 144);
  v17 = a2[4];
  if (*(v16 + 7774) == 1)
  {
    v18 = sub_2AF704(v16 + 3896, v17, 1);
    if (!v18)
    {
      goto LABEL_47;
    }

    v19 = &v18[-*v18];
    if (*v19 < 5u)
    {
      goto LABEL_47;
    }

    v20 = *(v19 + 2);
    if (!v20 || *&v18[v20 + *&v18[v20]] <= HIDWORD(v17) || !sub_2B817C(v16, v17))
    {
      goto LABEL_47;
    }

    v17 = a2[4];
  }

  sub_F91DF8(a1, v17, &__p);
  v21 = __p;
  v22 = v60;
  if (__p != v60)
  {
    do
    {
      v23 = *v21;
      v24 = sub_2B51D8(*(a1 + 144), *(a2 + 8) | (*(a2 + 18) << 32));
      v25 = (v24 - *v24);
      if (*v25 >= 9u && (v26 = v25[4]) != 0)
      {
        v27 = 0;
        v28 = a2[3];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = *(v24 + v26);
          if (v29)
          {
            v30 = v28 / v29 * 1000000000.0;
            if (v30 >= 0.0)
            {
              if (v30 < 4.50359963e15)
              {
                v31 = (v30 + v30) + 1;
LABEL_40:
                v30 = (v31 >> 1);
              }
            }

            else if (v30 > -4.50359963e15)
            {
              v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
              goto LABEL_40;
            }

            v39 = 1000000000.0;
            if (v30 <= 1000000000.0)
            {
              v39 = v30;
            }

            if (v30 >= 0.0)
            {
              v40 = v39;
            }

            else
            {
              v40 = 0.0;
            }

            v27 = v40;
          }
        }
      }

      else
      {
        v27 = 0;
      }

      v32 = 0;
      v33 = *(a2 + 21);
      v34 = 1000000000 - v27;
      if ((v23 & 0x1000000000000000) != 0)
      {
        v34 = v27;
      }

      v35 = *(a2 + 20);
      LODWORD(v44) = v34;
      *(&v44 + 1) = v12;
      v45 = v43;
      v46 = v13;
      v47 = 0;
      v48 = a7;
      v49 = 1;
      v50 = a5;
      v51 = a5;
      v52 = v12;
      v53 = 0;
      v54 = v42;
      v55 = a3;
      v56 = v15;
      v57 = v14;
      v58 = 0;
      if ((v33 & 0x100) != 0)
      {
        v36 = (HIDWORD(v23) >> 30) & 1;
        if ((v23 & 0x1000000000000000) == 0)
        {
          v36 = (v23 & 0x6000000000000000) == 0;
        }

        if ((v23 & 0x2000000000000000) != 0)
        {
          v36 = 2;
        }

        v32 = v36 != v33;
      }

      LOBYTE(v47) = v32;
      if ((v35 & 0x100) == 0 || ((v37 = (v23 & 0x1000000000000000) == 0, v37 == v35) ? (v38 = 256) : (v38 = 257), (v53 = v38, a3 != 3) || v37 == v35))
      {
        sub_1015104(a6, v23, &v44);
      }

      ++v21;
    }

    while (v21 != v22);
  }

LABEL_47:
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_1016684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10166A8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v9;
  v25 = *(a2 + 64);
  v10 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v10;
  v26 = *(a2 + 72);
  sub_49DD80(&v27, (a2 + 80));
  sub_1018EC8(&__p, v24, 1uLL);
  sub_1016868(a1, &__p, a3, a4, a5);
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v15 = *(v12 - 3);
        if (v15)
        {
          v16 = *(v12 - 2);
          v14 = *(v12 - 3);
          if (v16 != v15)
          {
            do
            {
              v17 = *(v16 - 9);
              v16 -= 4;
              if (v17 < 0)
              {
                operator delete(*v16);
              }
            }

            while (v16 != v15);
            v14 = *(v12 - 3);
          }

          *(v12 - 2) = v15;
          operator delete(v14);
        }

        v12 -= 104;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v18 = v27;
  if (v27)
  {
    v19 = v28;
    v20 = v27;
    if (v28 != v27)
    {
      do
      {
        v21 = *(v19 - 9);
        v19 -= 4;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v27;
    }

    v28 = v18;
    operator delete(v20);
  }
}

void sub_1016834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_48C8F4(&a9);
  sub_C6A790(&a13);
  _Unwind_Resume(a1);
}

void sub_1016850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C6A790(va);
  _Unwind_Resume(a1);
}

void sub_1016868(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v20 = vnegq_f64(v11);
    while (*(v5 + 32) && *(v5 + 36) != -1 && *v5 != 0x7FFFFFFFFFFFFFFFLL && *(v5 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0u;
      v26 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21[1] = 0x7FFFFFFFLL;
      v21[0] = -1;
      v21[2] = -1;
      v21[3] = -1;
      v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      DWORD2(v22) = -1935635296;
      *&v23 = 0;
      *(&v23 + 7) = 0;
      v24 = 0;
      v25 = 0;
      *&v26 = 0;
      DWORD2(v26) = 0;
      *&v27 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v27) = 100;
      v28 = 0;
      v29 = 0;
      v30 = v20;
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1016374(a1, v5, a3, v21, a4, a5, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v5 += 104;
      if (v5 == v6)
      {
        v13 = *a5;
        v12 = a5[1];
        if (*a5 != v12)
        {
          v14 = *a5;
          v15 = *a5;
          while ((*(v15 + 40) & 1) != 0)
          {
            v15 += 96;
            if (v15 == v12)
            {
              v16 = v12 - v13 - 96;
              if (v16 < 0x60)
              {
                goto LABEL_23;
              }

              v17 = v16 / 0x60 + 1;
              v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
              v18 = (v13 + 152);
              v19 = v17 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v18 - 96) = 0;
                *v18 = 0;
                v18 += 192;
                v19 -= 2;
              }

              while (v19);
              if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_23:
                do
                {
                  *(v14 + 56) = 0;
                  v14 += 96;
                }

                while (v14 != v12);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

void sub_1016A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_44D36C(va);
  v6 = *v4;
  if (*v4)
  {
    *(v4 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1016A88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = 0x4EC4EC4EC4EC4EC5;
LABEL_2:
  v9 = a2 - 13;
  v10 = a1;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = (v13 >> 3) * v8;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v34 = *a1;
        if (*(a2 - 13) < *a1)
        {
          v49 = *(a1 + 8);
          v51 = *(a1 + 16);
          *&v53[29] = *(a1 + 49);
          *v53 = *(a1 + 20);
          *&v53[16] = *(a1 + 36);
          v35 = *(a1 + 72);
          v36 = *(a1 + 96);
          v37 = *(a1 + 80);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0;
          *a1 = *(a2 - 13);
          v38 = *(a2 - 12);
          *(a1 + 16) = *(a2 - 22);
          *(a1 + 8) = v38;
          v39 = *(a2 - 55);
          v40 = *(a2 - 4);
          *(a1 + 24) = *(a2 - 5);
          *(a1 + 49) = v39;
          *(a1 + 40) = v40;
          *(a1 + 72) = *(a2 - 8);
          v41 = *(a2 - 1);
          *(a1 + 80) = *(a2 - 3);
          *(a1 + 96) = v41;
          *(a2 - 22) = v51;
          *(a2 - 13) = v34;
          *(a2 - 12) = v49;
          *(a2 - 5) = *&v53[4];
          *(a2 - 4) = *&v53[20];
          *(a2 - 55) = *&v53[29];
          *(a2 - 8) = v35;
          *(a2 - 3) = v37;
          *(a2 - 1) = v36;
        }

        return;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_10174CC(a1, a1 + 104, a1 + 208, v9);
      return;
    }

    if (v14 == 5)
    {

      sub_1017798(a1, a1 + 104, a1 + 208, a1 + 312, v9);
      return;
    }

LABEL_11:
    if (v13 <= 2495)
    {
      if (a5)
      {

        sub_1017B3C(a1, a2);
      }

      else
      {

        sub_1017D9C(a1, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (a1 != a2)
      {
        v42 = (v14 - 2) >> 1;
        v43 = v42 + 1;
        v44 = (a1 + 104 * v42);
        do
        {
          sub_10189A4(a1, a3, (v13 >> 3) * v8, v44);
          v44 -= 13;
          --v43;
        }

        while (v43);
        v45 = (v13 >> 3) * v8;
        do
        {
          sub_1018BA0(a1, a2, a3, v45);
          a2 -= 13;
        }

        while (v45-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = a1 + 104 * (v14 >> 1);
    if (v13 < 0x3401)
    {
      sub_1017090(v16, a1, v9);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1017090(a1, v16, v9);
      v17 = v9;
      v18 = v8;
      v19 = 104 * v15;
      v20 = (104 * v15 + a1 - 104);
      sub_1017090((a1 + 104), v20, a2 - 26);
      sub_1017090((a1 + 208), (a1 + 104 + v19), a2 - 39);
      v21 = (a1 + 104 + v19);
      v8 = v18;
      v9 = v17;
      sub_1017090(v20, v16, v21);
      v22 = *a1;
      v48 = *(a1 + 8);
      v50 = *(a1 + 16);
      *v52 = *(a1 + 20);
      *&v52[16] = *(a1 + 36);
      *&v52[29] = *(a1 + 49);
      v23 = *(a1 + 72);
      v24 = *v16;
      v25 = *(v16 + 8);
      *(a1 + 16) = *(v16 + 16);
      v26 = *(a1 + 96);
      v27 = *(a1 + 80);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *a1 = v24;
      *(a1 + 8) = v25;
      v28 = *(v16 + 24);
      v29 = *(v16 + 40);
      *(a1 + 49) = *(v16 + 49);
      *(a1 + 40) = v29;
      *(a1 + 24) = v28;
      *(a1 + 72) = *(v16 + 72);
      v30 = *(v16 + 96);
      *(a1 + 80) = *(v16 + 80);
      *(a1 + 96) = v30;
      *v16 = v22;
      *(v16 + 16) = v50;
      *(v16 + 8) = v48;
      *(v16 + 49) = *&v52[29];
      *(v16 + 40) = *&v52[20];
      *(v16 + 24) = *&v52[4];
      *(v16 + 72) = v23;
      *(v16 + 80) = v27;
      *(v16 + 96) = v26;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    if (*(a1 - 104) >= *a1)
    {
      v10 = sub_1017F88(a1, a2);
      goto LABEL_23;
    }

LABEL_18:
    v31 = sub_10182B4(a1, a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }

    v33 = sub_10185FC(a1, v31);
    v10 = (v31 + 104);
    if (sub_10185FC(v31 + 104, a2))
    {
      a4 = -v12;
      a2 = v31;
      if (v33)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v33)
    {
LABEL_21:
      sub_1016A88(a1, v31, a3, -v12, a5 & 1);
      v10 = (v31 + 104);
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  sub_1017090(a1, (a1 + 104), v9);
}

uint64_t sub_1017090(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *a3;
  if (*a2 >= *a1)
  {
    if (v5 >= v3)
    {
      return 0;
    }

    v13 = a2 + 1;
    v44 = a2[1];
    v49 = *(a2 + 4);
    *v54 = *(a2 + 20);
    *&v54[16] = *(a2 + 36);
    *&v54[29] = *(a2 + 49);
    v14 = *(a2 + 18);
    v15 = a2[12];
    v16 = *(a2 + 5);
    a2[11] = 0;
    a2[12] = 0;
    a2[10] = 0;
    *a2 = *a3;
    v17 = a3[1];
    *(a2 + 4) = *(a3 + 4);
    a2[1] = v17;
    v18 = *(a3 + 3);
    v19 = *(a3 + 49);
    *(a2 + 5) = *(a3 + 5);
    *(a2 + 49) = v19;
    *(a2 + 3) = v18;
    *(a2 + 18) = *(a3 + 18);
    v20 = a3[12];
    *(a2 + 5) = *(a3 + 5);
    a2[12] = v20;
    *a3 = v3;
    a3[1] = v44;
    *(a3 + 4) = v49;
    *(a3 + 3) = *&v54[4];
    *(a3 + 5) = *&v54[20];
    *(a3 + 49) = *&v54[29];
    *(a3 + 18) = v14;
    *(a3 + 5) = v16;
    a3[12] = v15;
    v21 = *a1;
    if (*a2 < *a1)
    {
      v45 = a1[1];
      v50 = *(a1 + 4);
      *v55 = *(a1 + 20);
      *&v55[16] = *(a1 + 36);
      *&v55[29] = *(a1 + 49);
      v22 = *(a1 + 18);
      v23 = a1[12];
      v24 = *(a1 + 5);
      a1[11] = 0;
      a1[12] = 0;
      a1[10] = 0;
      *a1 = *a2;
      v25 = *v13;
      *(a1 + 4) = *(a2 + 4);
      a1[1] = v25;
      v26 = *(a2 + 3);
      v27 = *(a2 + 49);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 49) = v27;
      *(a1 + 3) = v26;
      *(a1 + 18) = *(a2 + 18);
      v28 = a2[12];
      *(a1 + 5) = *(a2 + 5);
      a1[12] = v28;
      *a2 = v21;
      *v13 = v45;
      *(a2 + 4) = v50;
      *(a2 + 3) = *&v55[4];
      *(a2 + 5) = *&v55[20];
      *(a2 + 49) = *&v55[29];
      *(a2 + 18) = v22;
      *(a2 + 5) = v24;
      a2[12] = v23;
    }
  }

  else if (v5 >= v3)
  {
    v46 = a1[1];
    v51 = *(a1 + 4);
    *v56 = *(a1 + 20);
    *&v56[16] = *(a1 + 36);
    *&v56[29] = *(a1 + 49);
    v29 = *(a1 + 18);
    v30 = a1[10];
    v31 = a1[11];
    v32 = a1[12];
    a1[11] = 0;
    a1[12] = 0;
    a1[10] = 0;
    *a1 = *a2;
    v33 = a2 + 1;
    v34 = a2[1];
    *(a1 + 4) = *(a2 + 4);
    a1[1] = v34;
    v35 = *(a2 + 49);
    v36 = *(a2 + 5);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 5) = v36;
    *(a1 + 49) = v35;
    *(a1 + 18) = *(a2 + 18);
    v37 = a2[12];
    *(a1 + 5) = *(a2 + 5);
    a1[12] = v37;
    *a2 = v4;
    a2[1] = v46;
    *(a2 + 4) = v51;
    *(a2 + 3) = *&v56[4];
    *(a2 + 5) = *&v56[20];
    *(a2 + 49) = *&v56[29];
    *(a2 + 18) = v29;
    a2[10] = v30;
    a2[11] = v31;
    a2[12] = v32;
    if (*a3 < v4)
    {
      v47 = *v33;
      v52 = *(a2 + 4);
      *v57 = *(a2 + 20);
      *&v57[16] = *(a2 + 36);
      *&v57[29] = *(a2 + 49);
      a2[11] = 0;
      a2[12] = 0;
      a2[10] = 0;
      *a2 = *a3;
      v38 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *v33 = v38;
      v39 = *(a3 + 5);
      v40 = *(a3 + 49);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 49) = v40;
      *(a2 + 5) = v39;
      *(a2 + 18) = *(a3 + 18);
      v41 = a3[12];
      *(a2 + 5) = *(a3 + 5);
      a2[12] = v41;
      *a3 = v4;
      a3[1] = v47;
      *(a3 + 4) = v52;
      *(a3 + 5) = *&v57[20];
      *(a3 + 49) = *&v57[29];
      *(a3 + 3) = *&v57[4];
      *(a3 + 18) = v29;
      a3[10] = v30;
      a3[11] = v31;
      a3[12] = v32;
    }
  }

  else
  {
    v43 = a1[1];
    v48 = *(a1 + 4);
    *v53 = *(a1 + 20);
    *&v53[16] = *(a1 + 36);
    *&v53[29] = *(a1 + 49);
    v6 = *(a1 + 18);
    v7 = a1[12];
    v8 = *(a1 + 5);
    a1[11] = 0;
    a1[12] = 0;
    a1[10] = 0;
    *a1 = *a3;
    v9 = a3[1];
    *(a1 + 4) = *(a3 + 4);
    a1[1] = v9;
    v10 = *(a3 + 49);
    v11 = *(a3 + 5);
    *(a1 + 3) = *(a3 + 3);
    *(a1 + 5) = v11;
    *(a1 + 49) = v10;
    *(a1 + 18) = *(a3 + 18);
    v12 = a3[12];
    *(a1 + 5) = *(a3 + 5);
    a1[12] = v12;
    *a3 = v4;
    a3[1] = v43;
    *(a3 + 4) = v48;
    *(a3 + 3) = *&v53[4];
    *(a3 + 5) = *&v53[20];
    *(a3 + 49) = *&v53[29];
    *(a3 + 18) = v6;
    *(a3 + 5) = v8;
    a3[12] = v7;
  }

  return 1;
}

float sub_10174CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1017090(a1, a2, a3);
  v9 = *a3;
  if (*a4 < *a3)
  {
    v10 = (a3 + 8);
    v32 = *(a3 + 8);
    v35 = *(a3 + 16);
    *v38 = *(a3 + 20);
    *&v38[16] = *(a3 + 36);
    *&v38[29] = *(a3 + 49);
    result = *(a3 + 72);
    v11 = *(a3 + 96);
    v12 = *(a3 + 80);
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    *a3 = *a4;
    v13 = *(a4 + 8);
    *(a3 + 16) = *(a4 + 16);
    *(a3 + 8) = v13;
    v14 = *(a4 + 24);
    v15 = *(a4 + 49);
    *(a3 + 40) = *(a4 + 40);
    *(a3 + 49) = v15;
    *(a3 + 24) = v14;
    *(a3 + 72) = *(a4 + 72);
    v16 = *(a4 + 96);
    *(a3 + 80) = *(a4 + 80);
    *(a3 + 96) = v16;
    *a4 = v9;
    *(a4 + 8) = v32;
    *(a4 + 16) = v35;
    *(a4 + 24) = *&v38[4];
    *(a4 + 40) = *&v38[20];
    *(a4 + 49) = *&v38[29];
    *(a4 + 72) = result;
    *(a4 + 80) = v12;
    *(a4 + 96) = v11;
    v17 = *a2;
    if (*a3 < *a2)
    {
      v18 = (a2 + 8);
      v33 = *(a2 + 8);
      v36 = *(a2 + 16);
      *v39 = *(a2 + 20);
      *&v39[16] = *(a2 + 36);
      *&v39[29] = *(a2 + 49);
      result = *(a2 + 72);
      v19 = *(a2 + 96);
      v20 = *(a2 + 80);
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *a2 = *a3;
      v21 = *v10;
      *(a2 + 16) = *(a3 + 16);
      *(a2 + 8) = v21;
      v22 = *(a3 + 24);
      v23 = *(a3 + 49);
      *(a2 + 40) = *(a3 + 40);
      *(a2 + 49) = v23;
      *(a2 + 24) = v22;
      *(a2 + 72) = *(a3 + 72);
      v24 = *(a3 + 96);
      *(a2 + 80) = *(a3 + 80);
      *(a2 + 96) = v24;
      *a3 = v17;
      *v10 = v33;
      *(a3 + 16) = v36;
      *(a3 + 24) = *&v39[4];
      *(a3 + 40) = *&v39[20];
      *(a3 + 49) = *&v39[29];
      *(a3 + 72) = result;
      *(a3 + 80) = v20;
      *(a3 + 96) = v19;
      v25 = *a1;
      if (*a2 < *a1)
      {
        v34 = *(a1 + 8);
        v37 = *(a1 + 16);
        *v40 = *(a1 + 20);
        *&v40[16] = *(a1 + 36);
        *&v40[29] = *(a1 + 49);
        result = *(a1 + 72);
        v26 = *(a1 + 96);
        v27 = *(a1 + 80);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *a1 = *a2;
        v28 = *v18;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 8) = v28;
        v29 = *(a2 + 24);
        v30 = *(a2 + 49);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 49) = v30;
        *(a1 + 24) = v29;
        *(a1 + 72) = *(a2 + 72);
        v31 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v31;
        *a2 = v25;
        *v18 = v34;
        *(a2 + 16) = v37;
        *(a2 + 24) = *&v40[4];
        *(a2 + 40) = *&v40[20];
        *(a2 + 49) = *&v40[29];
        *(a2 + 72) = result;
        *(a2 + 80) = v27;
        *(a2 + 96) = v26;
      }
    }
  }

  return result;
}

float sub_1017798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_10174CC(a1, a2, a3, a4);
  v11 = *a4;
  if (*a5 < *a4)
  {
    v12 = (a4 + 8);
    v42 = *(a4 + 8);
    v46 = *(a4 + 16);
    *v50 = *(a4 + 20);
    *&v50[16] = *(a4 + 36);
    *&v50[29] = *(a4 + 49);
    result = *(a4 + 72);
    v13 = *(a4 + 96);
    v14 = *(a4 + 80);
    *(a4 + 88) = 0;
    *(a4 + 96) = 0;
    *(a4 + 80) = 0;
    *a4 = *a5;
    v15 = *(a5 + 8);
    *(a4 + 16) = *(a5 + 16);
    *(a4 + 8) = v15;
    v16 = *(a5 + 24);
    v17 = *(a5 + 49);
    *(a4 + 40) = *(a5 + 40);
    *(a4 + 49) = v17;
    *(a4 + 24) = v16;
    *(a4 + 72) = *(a5 + 72);
    v18 = *(a5 + 96);
    *(a4 + 80) = *(a5 + 80);
    *(a4 + 96) = v18;
    *a5 = v11;
    *(a5 + 8) = v42;
    *(a5 + 16) = v46;
    *(a5 + 24) = *&v50[4];
    *(a5 + 40) = *&v50[20];
    *(a5 + 49) = *&v50[29];
    *(a5 + 72) = result;
    *(a5 + 80) = v14;
    *(a5 + 96) = v13;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = (a3 + 8);
      v43 = *(a3 + 8);
      v47 = *(a3 + 16);
      *v51 = *(a3 + 20);
      *&v51[16] = *(a3 + 36);
      *&v51[29] = *(a3 + 49);
      result = *(a3 + 72);
      v21 = *(a3 + 96);
      v22 = *(a3 + 80);
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      *(a3 + 80) = 0;
      *a3 = *a4;
      v23 = *v12;
      *(a3 + 16) = *(a4 + 16);
      *(a3 + 8) = v23;
      v24 = *(a4 + 24);
      v25 = *(a4 + 49);
      *(a3 + 40) = *(a4 + 40);
      *(a3 + 49) = v25;
      *(a3 + 24) = v24;
      *(a3 + 72) = *(a4 + 72);
      v26 = *(a4 + 96);
      *(a3 + 80) = *(a4 + 80);
      *(a3 + 96) = v26;
      *a4 = v19;
      *v12 = v43;
      *(a4 + 16) = v47;
      *(a4 + 24) = *&v51[4];
      *(a4 + 40) = *&v51[20];
      *(a4 + 49) = *&v51[29];
      *(a4 + 72) = result;
      *(a4 + 80) = v22;
      *(a4 + 96) = v21;
      v27 = *a2;
      if (*a3 < *a2)
      {
        v28 = (a2 + 8);
        v44 = *(a2 + 8);
        v48 = *(a2 + 16);
        *v52 = *(a2 + 20);
        *&v52[16] = *(a2 + 36);
        *&v52[29] = *(a2 + 49);
        result = *(a2 + 72);
        v29 = *(a2 + 96);
        v30 = *(a2 + 80);
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 80) = 0;
        *a2 = *a3;
        v31 = *v20;
        *(a2 + 16) = *(a3 + 16);
        *(a2 + 8) = v31;
        v32 = *(a3 + 24);
        v33 = *(a3 + 49);
        *(a2 + 40) = *(a3 + 40);
        *(a2 + 49) = v33;
        *(a2 + 24) = v32;
        *(a2 + 72) = *(a3 + 72);
        v34 = *(a3 + 96);
        *(a2 + 80) = *(a3 + 80);
        *(a2 + 96) = v34;
        *a3 = v27;
        *v20 = v44;
        *(a3 + 16) = v48;
        *(a3 + 24) = *&v52[4];
        *(a3 + 40) = *&v52[20];
        *(a3 + 49) = *&v52[29];
        *(a3 + 72) = result;
        *(a3 + 80) = v30;
        *(a3 + 96) = v29;
        v35 = *a1;
        if (*a2 < *a1)
        {
          v45 = *(a1 + 8);
          v49 = *(a1 + 16);
          *v53 = *(a1 + 20);
          *&v53[16] = *(a1 + 36);
          *&v53[29] = *(a1 + 49);
          result = *(a1 + 72);
          v36 = *(a1 + 96);
          v37 = *(a1 + 80);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0;
          *a1 = *a2;
          v38 = *v28;
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 8) = v38;
          v39 = *(a2 + 24);
          v40 = *(a2 + 49);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 49) = v40;
          *(a1 + 24) = v39;
          *(a1 + 72) = *(a2 + 72);
          v41 = *(a2 + 96);
          *(a1 + 80) = *(a2 + 80);
          *(a1 + 96) = v41;
          *a2 = v35;
          *v28 = v45;
          *(a2 + 16) = v49;
          *(a2 + 24) = *&v53[4];
          *(a2 + 40) = *&v53[20];
          *(a2 + 49) = *&v53[29];
          *(a2 + 72) = result;
          *(a2 + 80) = v37;
          *(a2 + 96) = v36;
        }
      }
    }
  }

  return result;
}

void sub_1017B3C(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 13;
    if (a1 + 13 != a2)
    {
      v4 = a1;
      v25 = a2;
      do
      {
        v6 = v3;
        v7 = v4[13];
        if (v7 < *v4)
        {
          v28 = *(v3 + 4);
          v27 = v3[1];
          *v29 = *(v3 + 20);
          *&v29[16] = *(v3 + 36);
          *&v29[29] = *(v3 + 49);
          v8 = *(v4 + 44);
          v9 = v4[23];
          v26 = *(v4 + 12);
          v4[24] = 0;
          v4[25] = 0;
          v4[23] = 0;
          v10 = *v4;
          v11 = v6;
          v12 = v6[10];
          while (1)
          {
            v13 = v4;
            *v11 = v10;
            v14 = v4 + 1;
            v11[1] = v4[1];
            *(v11 + 4) = *(v4 + 4);
            v15 = *(v4 + 5);
            *(v11 + 3) = *(v4 + 3);
            *(v11 + 5) = v15;
            *(v11 + 49) = *(v4 + 49);
            *(v11 + 18) = *(v4 + 18);
            if (v12)
            {
              v17 = (v11 + 11);
              v16 = v11[11];
              v18 = v12;
              if (v16 != v12)
              {
                do
                {
                  v19 = *(v16 - 9);
                  v16 -= 4;
                  if (v19 < 0)
                  {
                    operator delete(*v16);
                  }
                }

                while (v16 != v12);
                v18 = v11[10];
              }

              *v17 = v12;
              operator delete(v18);
              *v17 = 0;
              v11[12] = 0;
            }

            v20 = (v13 + 10);
            *(v11 + 5) = *(v13 + 5);
            v11[12] = v13[12];
            v13[10] = 0;
            v13[11] = 0;
            v13[12] = 0;
            if (v13 == a1)
            {
              break;
            }

            v12 = 0;
            v4 = v13 - 13;
            v10 = *(v13 - 13);
            v11 = v13;
            if (v7 >= v10)
            {
              v21 = v13;
              goto LABEL_22;
            }
          }

          v21 = a1;
LABEL_22:
          *v21 = v7;
          *v14 = v27;
          *(v14 + 2) = v28;
          *(v14 + 1) = *&v29[4];
          *(v14 + 2) = *&v29[20];
          *(v14 + 41) = *&v29[29];
          *(v21 + 18) = v8;
          v22 = v13[10];
          if (v22)
          {
            v23 = v21[11];
            v5 = v13[10];
            if (v23 != v22)
            {
              do
              {
                v24 = *(v23 - 9);
                v23 -= 4;
                if (v24 < 0)
                {
                  operator delete(*v23);
                }
              }

              while (v23 != v22);
              v5 = *v20;
            }

            v21[11] = v22;
            operator delete(v5);
            v13[11] = 0;
            v13[12] = 0;
          }

          *v20 = v9;
          *(v21 + 11) = v26;
          a2 = v25;
        }

        v3 = v6 + 13;
        v4 = v6;
      }

      while (v6 + 13 != a2);
    }
  }
}

uint64_t *sub_1017D9C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result + 13;
    while (v3 != a2)
    {
      v4 = v3;
      v5 = result[13];
      if (v5 < *result)
      {
        v20 = *(v3 + 4);
        v19 = v3[1];
        *v21 = *(v3 + 20);
        *&v21[16] = *(v3 + 36);
        *&v21[29] = *(v3 + 49);
        v6 = *(result + 44);
        v18 = *(result + 23);
        v7 = result[25];
        result[24] = 0;
        result[25] = 0;
        result[23] = 0;
        v8 = *result;
        v9 = v4;
        v10 = v4[10];
        do
        {
          v12 = result;
          *v9 = v8;
          v13 = result + 1;
          v9[1] = result[1];
          *(v9 + 4) = *(result + 4);
          v14 = *(result + 5);
          *(v9 + 3) = *(result + 3);
          *(v9 + 5) = v14;
          *(v9 + 49) = *(result + 49);
          *(v9 + 18) = *(result + 18);
          if (v10)
          {
            v16 = (v9 + 11);
            v15 = v9[11];
            v11 = v10;
            if (v15 != v10)
            {
              do
              {
                v17 = *(v15 - 9);
                v15 -= 4;
                if (v17 < 0)
                {
                  operator delete(*v15);
                }
              }

              while (v15 != v10);
              v11 = v9[10];
            }

            *v16 = v10;
            operator delete(v11);
            *v16 = 0;
            v9[12] = 0;
          }

          v10 = 0;
          result = v12 - 13;
          v8 = *(v12 - 13);
          *(v9 + 5) = *(v12 + 5);
          v9[12] = v12[12];
          v12[10] = 0;
          v12[11] = 0;
          v12[12] = 0;
          v9 = v12;
        }

        while (v5 < v8);
        *v12 = v5;
        *v13 = v19;
        *(v13 + 2) = v20;
        *(v13 + 1) = *&v21[4];
        *(v13 + 2) = *&v21[20];
        *(v13 + 41) = *&v21[29];
        *(v12 + 18) = v6;
        *(v12 + 5) = v18;
        v12[12] = v7;
      }

      v3 = v4 + 13;
      result = v4;
    }
  }

  return result;
}

uint64_t *sub_1017F88(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v34 = a1[1];
  v35 = *(a1 + 4);
  *v38 = *(a1 + 20);
  *&v38[16] = *(a1 + 36);
  *&v38[29] = *(a1 + 49);
  v4 = *(a1 + 18);
  v5 = a1 + 10;
  v33 = *(a1 + 5);
  v6 = a1[12];
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (v3 >= *(a2 - 104))
  {
    v9 = a1 + 13;
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v9 += 13;
    }

    while (v3 >= *v7);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7[13];
      v7 += 13;
    }

    while (v3 >= v8);
  }

  if (v7 < a2)
  {
    do
    {
      v10 = *(a2 - 104);
      a2 -= 104;
    }

    while (v3 < v10);
  }

  if (v7 < a2)
  {
    v11 = *v7;
    do
    {
      v36 = v7[1];
      v37 = *(v7 + 4);
      *&v39[29] = *(v7 + 49);
      *v39 = *(v7 + 20);
      *&v39[16] = *(v7 + 36);
      v12 = *(v7 + 18);
      v13 = v7[12];
      v14 = *(v7 + 5);
      v7[11] = 0;
      v7[12] = 0;
      v7[10] = 0;
      *v7 = *a2;
      v15 = *(a2 + 8);
      *(v7 + 4) = *(a2 + 16);
      v7[1] = v15;
      v16 = *(a2 + 40);
      v17 = *(a2 + 49);
      *(v7 + 3) = *(a2 + 24);
      *(v7 + 49) = v17;
      *(v7 + 5) = v16;
      *(v7 + 18) = *(a2 + 72);
      v18 = *(a2 + 96);
      *(v7 + 5) = *(a2 + 80);
      v7[12] = v18;
      *a2 = v11;
      *(a2 + 16) = v37;
      *(a2 + 8) = v36;
      *(a2 + 49) = *&v39[29];
      *(a2 + 24) = *&v39[4];
      *(a2 + 40) = *&v39[20];
      *(a2 + 72) = v12;
      *(a2 + 80) = v14;
      *(a2 + 96) = v13;
      do
      {
        v19 = v7[13];
        v7 += 13;
        v11 = v19;
      }

      while (v3 >= v19);
      do
      {
        v20 = *(a2 - 104);
        a2 -= 104;
      }

      while (v3 < v20);
    }

    while (v7 < a2);
  }

  if (v7 - 13 == a1)
  {
    v28 = *(v7 - 3);
  }

  else
  {
    *a1 = *(v7 - 13);
    v21 = *(v7 - 12);
    *(a1 + 4) = *(v7 - 22);
    a1[1] = v21;
    v22 = *(v7 - 5);
    v23 = *(v7 - 4);
    *(a1 + 49) = *(v7 - 55);
    *(a1 + 5) = v23;
    *(a1 + 3) = v22;
    *(a1 + 18) = *(v7 - 8);
    v24 = a1[10];
    if (v24)
    {
      v25 = a1[11];
      v26 = a1[10];
      if (v25 != v24)
      {
        do
        {
          v27 = *(v25 - 9);
          v25 -= 4;
          if (v27 < 0)
          {
            operator delete(*v25);
          }
        }

        while (v25 != v24);
        v26 = *v5;
      }

      a1[11] = v24;
      operator delete(v26);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v28 = 0;
    *(a1 + 5) = *(v7 - 3);
    a1[12] = *(v7 - 1);
    *(v7 - 3) = 0;
    *(v7 - 2) = 0;
    *(v7 - 1) = 0;
  }

  *(v7 - 13) = v3;
  *(v7 - 22) = v35;
  *(v7 - 12) = v34;
  *(v7 - 55) = *&v38[29];
  *(v7 - 5) = *&v38[4];
  *(v7 - 4) = *&v38[20];
  *(v7 - 8) = v4;
  if (v28)
  {
    v29 = *(v7 - 2);
    v30 = v28;
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 9);
        v29 -= 4;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = *(v7 - 3);
    }

    *(v7 - 2) = v28;
    operator delete(v30);
  }

  *(v7 - 3) = v33;
  *(v7 - 1) = v6;
  return v7;
}

unint64_t sub_10182B4(uint64_t *a1, unint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  v38 = a1[1];
  v39 = *(a1 + 4);
  *v42 = *(a1 + 20);
  *&v42[16] = *(a1 + 36);
  *&v42[29] = *(a1 + 49);
  v6 = *(a1 + 18);
  v7 = a1 + 10;
  v37 = *(a1 + 5);
  v8 = a1[12];
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  do
  {
    v9 = a1[v4 + 13];
    v4 += 13;
  }

  while (v9 < v5);
  v10 = &a1[v4];
  if (v4 == 13)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 104);
      a2 -= 104;
    }

    while (v12 >= v5);
  }

  else
  {
    do
    {
      v11 = *(a2 - 104);
      a2 -= 104;
    }

    while (v11 >= v5);
  }

  if (v10 < a2)
  {
    v13 = &a1[v4];
    v14 = a2;
    do
    {
      v40 = *(v13 + 8);
      v41 = *(v13 + 16);
      *&v43[29] = *(v13 + 49);
      *v43 = *(v13 + 20);
      *&v43[16] = *(v13 + 36);
      v15 = *(v13 + 72);
      v16 = *(v13 + 96);
      v17 = *(v13 + 80);
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = 0;
      *v13 = *v14;
      v18 = *(v14 + 8);
      *(v13 + 16) = *(v14 + 16);
      *(v13 + 8) = v18;
      v19 = *(v14 + 40);
      v20 = *(v14 + 49);
      *(v13 + 24) = *(v14 + 24);
      *(v13 + 49) = v20;
      *(v13 + 40) = v19;
      *(v13 + 72) = *(v14 + 72);
      v21 = *(v14 + 96);
      *(v13 + 80) = *(v14 + 80);
      *(v13 + 96) = v21;
      *v14 = v9;
      *(v14 + 16) = v41;
      *(v14 + 8) = v40;
      *(v14 + 49) = *&v43[29];
      *(v14 + 24) = *&v43[4];
      *(v14 + 40) = *&v43[20];
      *(v14 + 72) = v15;
      *(v14 + 80) = v17;
      *(v14 + 96) = v16;
      do
      {
        v22 = *(v13 + 104);
        v13 += 104;
        v9 = v22;
      }

      while (v22 < v5);
      do
      {
        v23 = *(v14 - 104);
        v14 -= 104;
      }

      while (v23 >= v5);
    }

    while (v13 < v14);
    v24 = v13 - 104;
    if ((v13 - 104) != a1)
    {
      goto LABEL_15;
    }

LABEL_22:
    v32 = *(v13 - 24);
    goto LABEL_26;
  }

  v13 = &a1[v4];
  v24 = v10 - 104;
  if ((v10 - 104) == a1)
  {
    goto LABEL_22;
  }

LABEL_15:
  *a1 = *(v13 - 104);
  v25 = *(v13 - 96);
  *(a1 + 4) = *(v13 - 88);
  a1[1] = v25;
  v26 = *(v13 - 80);
  v27 = *(v13 - 64);
  *(a1 + 49) = *(v13 - 55);
  *(a1 + 5) = v27;
  *(a1 + 3) = v26;
  *(a1 + 18) = *(v13 - 32);
  v28 = a1[10];
  if (v28)
  {
    v29 = a1[11];
    v30 = a1[10];
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 9);
        v29 -= 4;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = *v7;
    }

    a1[11] = v28;
    operator delete(v30);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v32 = 0;
  *(a1 + 5) = *(v13 - 24);
  a1[12] = *(v13 - 8);
  *(v13 - 24) = 0;
  *(v13 - 16) = 0;
  *(v13 - 8) = 0;
LABEL_26:
  *(v13 - 104) = v5;
  *(v13 - 88) = v39;
  *(v13 - 96) = v38;
  *(v13 - 55) = *&v42[29];
  *(v13 - 80) = *&v42[4];
  *(v13 - 64) = *&v42[20];
  *(v13 - 32) = v6;
  if (v32)
  {
    v33 = *(v13 - 16);
    v34 = v32;
    if (v33 != v32)
    {
      do
      {
        v35 = *(v33 - 9);
        v33 -= 4;
        if (v35 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v32);
      v34 = *(v13 - 24);
    }

    *(v13 - 16) = v32;
    operator delete(v34);
  }

  *(v13 - 24) = v37;
  *(v13 - 8) = v8;
  return v24;
}

BOOL sub_10185FC(uint64_t a1, uint64_t a2)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        if (*(a2 - 104) < *a1)
        {
          v34 = *(a1 + 8);
          v36 = *(a1 + 16);
          *v38 = *(a1 + 20);
          *&v38[16] = *(a1 + 36);
          *&v38[29] = *(a1 + 49);
          v6 = *(a1 + 72);
          v7 = *(a1 + 96);
          v8 = *(a1 + 80);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0;
          *a1 = *(a2 - 104);
          v9 = *(a2 - 96);
          *(a1 + 16) = *(a2 - 88);
          *(a1 + 8) = v9;
          v10 = *(a2 - 55);
          v11 = *(a2 - 80);
          *(a1 + 40) = *(a2 - 64);
          *(a1 + 49) = v10;
          *(a1 + 24) = v11;
          *(a1 + 72) = *(a2 - 32);
          v12 = *(a2 - 8);
          *(a1 + 80) = *(a2 - 24);
          *(a1 + 96) = v12;
          *(a2 - 104) = v5;
          *(a2 - 96) = v34;
          *(a2 - 88) = v36;
          *(a2 - 80) = *&v38[4];
          *(a2 - 64) = *&v38[20];
          *(a2 - 55) = *&v38[29];
          *(a2 - 32) = v6;
          *(a2 - 24) = v8;
          *(a2 - 8) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1017090(a1, (a1 + 104), (a2 - 104));
      return 1;
    case 4:
      sub_10174CC(a1, a1 + 104, a1 + 208, a2 - 104);
      return 1;
    case 5:
      sub_1017798(a1, a1 + 104, a1 + 208, a1 + 312, a2 - 104);
      return 1;
  }

LABEL_11:
  v13 = (a1 + 208);
  sub_1017090(a1, (a1 + 104), (a1 + 208));
  v14 = a1 + 312;
  if (a1 + 312 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v19 = *v14;
    if (*v14 < *v13)
    {
      v35 = *(v14 + 8);
      v37 = *(v14 + 16);
      *v39 = *(v14 + 20);
      *&v39[16] = *(v14 + 36);
      *&v39[29] = *(v14 + 49);
      v20 = *(v14 + 72);
      v21 = *(v14 + 80);
      v18 = *(v14 + 88);
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = 0;
      v22 = v15;
      v23 = *v13;
      while (1)
      {
        v24 = a1 + v22;
        v25 = *(a1 + v22 + 216);
        *(v24 + 312) = v23;
        *(v24 + 320) = v25;
        *(v24 + 328) = *(a1 + v22 + 224);
        v26 = (a1 + v22 + 232);
        v27 = *(a1 + v22 + 248);
        *(v24 + 336) = *v26;
        *(v24 + 352) = v27;
        *(a1 + v22 + 361) = *(a1 + v22 + 257);
        *(v24 + 384) = *(a1 + v22 + 280);
        *(a1 + v22 + 392) = *(a1 + v22 + 288);
        *(v24 + 408) = *(a1 + v22 + 304);
        *(v24 + 288) = 0;
        *(v24 + 296) = 0;
        *(v24 + 304) = 0;
        if (v22 == -208)
        {
          break;
        }

        v23 = *(v24 + 104);
        v22 -= 104;
        if (v19 >= v23)
        {
          v28 = a1 + v22 + 312;
          goto LABEL_23;
        }
      }

      v28 = a1;
LABEL_23:
      *v28 = v19;
      *(v24 + 216) = v35;
      *(v24 + 224) = v37;
      *(v24 + 232) = *&v39[4];
      *(v24 + 248) = *&v39[20];
      *(v26 + 25) = *&v39[29];
      *(v28 + 72) = v20;
      v29 = *(v24 + 288);
      if (v29)
      {
        v33 = v18;
        v30 = *(v28 + 88);
        v17 = *(v24 + 288);
        if (v30 != v29)
        {
          do
          {
            v31 = *(v30 - 9);
            v30 -= 4;
            if (v31 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v29);
          v17 = *(v24 + 288);
        }

        *(v28 + 88) = v29;
        operator delete(v17);
        *(v24 + 296) = 0;
        *(v24 + 304) = 0;
        v18 = v33;
      }

      *(v24 + 288) = v21;
      *(v28 + 88) = v18;
      if (++v16 == 8)
      {
        return v14 + 104 == a2;
      }
    }

    v13 = v14;
    v15 += 104;
    v14 += 104;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_10189A4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < 0x4EC4EC4EC4EC4EC5 * ((a4 - result) >> 3))
  {
    return result;
  }

  v5 = (0x9D89D89D89D89D8ALL * ((a4 - result) >> 3)) | 1;
  v6 = (result + 104 * v5);
  if ((0x9D89D89D89D89D8ALL * ((a4 - result) >> 3) + 2) >= a3)
  {
    v9 = *a4;
    if (*v6 < *a4)
    {
      return result;
    }
  }

  else
  {
    v7 = *v6;
    v8 = v6[13];
    if (*v6 <= v8)
    {
      v7 = v6[13];
    }

    if (*v6 < v8)
    {
      v6 += 13;
      v5 = 0x9D89D89D89D89D8ALL * ((a4 - result) >> 3) + 2;
    }

    v9 = *a4;
    if (v7 < *a4)
    {
      return result;
    }
  }

  v22 = a4[1];
  v23 = *(a4 + 4);
  *v24 = *(a4 + 20);
  *&v24[16] = *(a4 + 36);
  *&v24[29] = *(a4 + 49);
  v10 = *(a4 + 18);
  v11 = *(a4 + 5);
  v12 = a4[12];
  a4[11] = 0;
  a4[12] = 0;
  a4[10] = 0;
  v13 = *v6;
  while (1)
  {
    v15 = v6;
    *a4 = v13;
    v17 = v6 + 1;
    v16 = v6[1];
    *(a4 + 4) = *(v17 + 2);
    a4[1] = v16;
    v18 = *(v17 + 1);
    v19 = *(v17 + 2);
    *(a4 + 49) = *(v17 + 41);
    *(a4 + 5) = v19;
    *(a4 + 3) = v18;
    *(a4 + 18) = *(v17 + 16);
    v20 = v17[11];
    *(a4 + 5) = *(v17 + 9);
    a4[12] = v20;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
    if (v4 < v5)
    {
      break;
    }

    v21 = (2 * v5) | 1;
    v6 = (result + 104 * v21);
    v5 = 2 * v5 + 2;
    if (v5 < a3)
    {
      v13 = *v6;
      v14 = v6[13];
      if (*v6 <= v14)
      {
        v13 = v6[13];
      }

      if (*v6 >= v14)
      {
        v5 = v21;
      }

      else
      {
        v6 += 13;
      }

      a4 = v15;
      if (v13 < v9)
      {
        break;
      }
    }

    else
    {
      v13 = *v6;
      v5 = v21;
      a4 = v15;
      if (*v6 < v9)
      {
        break;
      }
    }
  }

  *v15 = v9;
  *v17 = v22;
  *(v17 + 2) = v23;
  *(v17 + 1) = *&v24[4];
  *(v17 + 2) = *&v24[20];
  *(v17 + 41) = *&v24[29];
  *(v15 + 18) = v10;
  *(v15 + 5) = v11;
  v15[12] = v12;
  return result;
}

uint64_t *sub_1018BA0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v43 = result[1];
    v44 = *(result + 4);
    *v47 = *(result + 20);
    *&v47[16] = *(result + 36);
    *&v47[29] = *(result + 49);
    v6 = *(result + 18);
    v7 = result[10];
    v8 = result[11];
    v9 = result[12];
    result[11] = 0;
    result[12] = 0;
    v10 = result;
    result[10] = 0;
    do
    {
      v23 = &v10[13 * v4];
      v16 = v23 + 13;
      v24 = (2 * v4) | 1;
      v4 = 2 * v4 + 2;
      if (v4 < a4)
      {
        v13 = v23[26];
        v11 = v23 + 26;
        v12 = v13;
        v14 = *(v11 - 13);
        v15 = v14 < v13;
        if (v14 > v13)
        {
          v12 = *(v11 - 13);
        }

        if (v15)
        {
          v16 = v11;
        }

        else
        {
          v4 = v24;
        }
      }

      else
      {
        v12 = *v16;
        v4 = v24;
      }

      *v10 = v12;
      v17 = v16 + 1;
      v18 = v16[1];
      *(v10 + 4) = *(v16 + 4);
      v10[1] = v18;
      v19 = *(v16 + 3);
      v20 = *(v16 + 5);
      *(v10 + 49) = *(v16 + 49);
      *(v10 + 5) = v20;
      *(v10 + 3) = v19;
      v21 = *(v16 + 5);
      *(v10 + 18) = *(v16 + 18);
      v22 = v16[12];
      *(v10 + 5) = v21;
      v10[12] = v22;
      v16[10] = 0;
      v16[11] = 0;
      v16[12] = 0;
      v10 = v16;
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v16 == (a2 - 104))
    {
      *v16 = v5;
      *v17 = v43;
      *(v16 + 4) = v44;
      *(v16 + 3) = *&v47[4];
      *(v16 + 5) = *&v47[20];
      *(v16 + 49) = *&v47[29];
      *(v16 + 18) = v6;
      v16[10] = v7;
      v16[11] = v8;
      v16[12] = v9;
    }

    else
    {
      *v16 = *(a2 - 104);
      v25 = *(a2 - 96);
      *(v16 + 4) = *(a2 - 88);
      *v17 = v25;
      v26 = *(a2 - 80);
      v27 = *(a2 - 64);
      *(v16 + 49) = *(a2 - 55);
      *(v16 + 5) = v27;
      *(v16 + 3) = v26;
      *(v16 + 18) = *(a2 - 32);
      v28 = *(a2 - 8);
      *(v16 + 5) = *(a2 - 24);
      v16[12] = v28;
      *(a2 - 104) = v5;
      *(a2 - 96) = v43;
      *(a2 - 88) = v44;
      *(a2 - 80) = *&v47[4];
      *(a2 - 64) = *&v47[20];
      *(a2 - 55) = *&v47[29];
      *(a2 - 32) = v6;
      *(a2 - 24) = v7;
      *(a2 - 16) = v8;
      *(a2 - 8) = v9;
      v29 = v16 - result + 104;
      if (v29 >= 105)
      {
        v30 = (0x4EC4EC4EC4EC4EC5 * (v29 >> 3) - 2) >> 1;
        v31 = &result[13 * v30];
        v32 = *v16;
        if (*v31 < *v16)
        {
          v45 = *v17;
          v46 = *(v16 + 4);
          *&v48[29] = *(v16 + 49);
          *v48 = *(v16 + 20);
          *&v48[16] = *(v16 + 36);
          v33 = *(v16 + 18);
          v34 = *(v16 + 5);
          v35 = v16[12];
          v16[10] = 0;
          v16[11] = 0;
          v16[12] = 0;
          v36 = *v31;
          do
          {
            v37 = v31;
            *v16 = v36;
            v38 = v31 + 1;
            v39 = v31[1];
            *(v16 + 4) = *(v38 + 2);
            v16[1] = v39;
            v40 = *(v38 + 1);
            v41 = *(v38 + 2);
            *(v16 + 49) = *(v38 + 41);
            *(v16 + 5) = v41;
            *(v16 + 3) = v40;
            *(v16 + 18) = *(v38 + 16);
            v42 = v38[11];
            *(v16 + 5) = *(v38 + 9);
            v16[12] = v42;
            v38[9] = 0;
            v38[10] = 0;
            v38[11] = 0;
            if (!v30)
            {
              break;
            }

            v30 = (v30 - 1) >> 1;
            v31 = &result[13 * v30];
            v36 = *v31;
            v16 = v37;
          }

          while (*v31 < v32);
          *v37 = v32;
          *v38 = v45;
          *(v38 + 2) = v46;
          *(v38 + 1) = *&v48[4];
          *(v38 + 2) = *&v48[20];
          *(v38 + 41) = *&v48[29];
          *(v37 + 18) = v33;
          *(v37 + 5) = v34;
          v37[12] = v35;
        }
      }
    }
  }

  return result;
}

void *sub_1018EC8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1018FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49DEB0(va);
  _Unwind_Resume(a1);
}

void sub_1019004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  sub_49BBE8(va1);
  *(v2 + 8) = v3;
  sub_49DEB0(va);
  _Unwind_Resume(a1);
}

void sub_1019024()
{
  __chkstk_darwin();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 32) = -1;
  *(v0 + 40) = 0x7FFFFFFF;
  *(v0 + 48) = -1;
  *(v0 + 56) = -1;
  *(v0 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 72) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = -1935635296;
  *(v0 + 88) = 0;
  *(v0 + 95) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 144) = 100;
  *(v0 + 160) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(v0 + 168) = vnegq_f64(v1);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  sub_1015604(&v3, v2);
}

void sub_1019678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_404134(&a24);
  sub_D78EB0(v24);
  _Unwind_Resume(a1);
}

void sub_1019720(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(a1 + 224) - 1) < 2)
  {
    v8 = sub_3B1D8C(a3);
    v9 = sub_2AB698(v8, *(a1 + 16));
    if (v9 <= 0xFFFFFFFEFFFFFFFFLL && v9 != 0)
    {
      v11 = sub_2ACC94(v8, v9);
      v13 = *a1;
      v12 = *(a1 + 4);
      if ((*a1 != -1 || v12 != -1) && (v11 != -1 || HIDWORD(v11) != 0xFFFFFFFF))
      {
        v15 = HIDWORD(v11);
        v16 = v11;
        v17 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
        v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
        v19.i64[0] = v13;
        v19.i64[1] = v16;
        v20 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
        v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
        v22 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v19), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
        v33 = vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0];
        v23 = sin((v18 - v21) * 0.5);
        v24 = v23 * v23;
        v25 = cos(v18);
        v26 = v25 * cos(v21);
        v27 = sin(0.5 * v33);
        atan2(sqrt(v27 * v27 * v26 + v24), sqrt(1.0 - (v27 * v27 * v26 + v24)));
      }

      strcpy(__p, "QueryTerminalUtilities");
      v35 = 22;
      __dst = 0;
      v37[0] = 0;
      v37[1] = 0;
      v28 = sub_3AEC94(a3, __p, &__dst);
      sub_5ADDC(&v38, v28);
      v29 = __dst;
      if (__dst)
      {
        v30 = v37[0];
        v31 = __dst;
        if (v37[0] != __dst)
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
          v31 = __dst;
        }

        v37[0] = v29;
        operator delete(v31);
      }

      if (v35 < 0)
      {
        operator delete(*__p);
      }

      operator new();
    }
  }

  sub_1015680(a2, a1, 0, a4);
}

void sub_101A1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::ios::~ios();
  sub_6BB60(v30 - 200);
  _Unwind_Resume(a1);
}

void sub_101A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1A104((v24 - 224));
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x101A274);
}

void sub_101A2A4()
{
  __chkstk_darwin();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 32) = -1;
  *(v0 + 40) = 0x7FFFFFFF;
  *(v0 + 48) = -1;
  *(v0 + 56) = -1;
  *(v0 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 72) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = -1935635296;
  *(v0 + 88) = 0;
  *(v0 + 95) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 144) = 100;
  *(v0 + 160) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(v0 + 168) = vnegq_f64(v1);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  sub_1014B00(&v3, v2);
}

void sub_101A8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_404134(&a24);
  sub_D78EB0(v24);
  _Unwind_Resume(a1);
}

void sub_101A994(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = -1;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0x7FFFFFFF;
  *(a3 + 48) = -1;
  *(a3 + 56) = -1;
  *(a3 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 72) = 0;
  *(a3 + 104) = 0;
  v5 = (a3 + 104);
  *(a3 + 80) = -1935635296;
  *(a3 + 88) = 0;
  *(a3 + 95) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v6 = (a3 + 152);
  *(a3 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 144) = 100;
  *(a3 + 160) = 0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *(a3 + 168) = vnegq_f64(v7);
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0;
  sub_1016070(v57, a2);
  v9 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    while (*(v9 + 224) != 1)
    {
      v9 += 240;
      if (v9 == v8)
      {
        goto LABEL_4;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(exception, "No origin found in input snapped locations.", 0x2BuLL);
  }

  v12 = *v9;
  v13 = *(v9 + 4);
  sub_10160EC(v57, v9, 0, __p);
  v14 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v14;
    operator delete(v14);
  }

  *a3 = *__p;
  v15 = v56;
  *(a3 + 16) = v55;
  *(a3 + 24) = v15;
  *(a3 + 32) = *v9;
  v16 = *(v9 + 16);
  v17 = *(v9 + 32);
  v18 = *(v9 + 48);
  *(a3 + 95) = *(v9 + 63);
  *(a3 + 64) = v17;
  *(a3 + 80) = v18;
  *(a3 + 48) = v16;
  if (a3 + 32 != v9)
  {
    sub_146EC(v5, *(v9 + 72), *(v9 + 80), (*(v9 + 80) - *(v9 + 72)) >> 2);
  }

  v19 = *(v9 + 96);
  *(a3 + 144) = *(v9 + 112);
  *(a3 + 128) = v19;
  v20 = *(v9 + 136);
  *v6 = *(v9 + 120);
  v6[1] = v20;
  sub_3E428((a3 + 184), v9 + 152);
  v21 = *a1;
  v22 = a1[1];
  if (*a1 != v22)
  {
    v23 = (v12 & v13) != -1;
    v24 = exp(v13 * -6.28318531 / 4294967300.0 + 3.14159265);
    v52 = atan((v24 + -1.0 / v24) * 0.5) * 57.2957795 * 0.0174532925;
    v51 = cos(v52);
    while (1)
    {
      v25 = v21[56];
      if (v25 == 1 || v25 == 6)
      {
        goto LABEL_13;
      }

      if (v25 - 3 > 2)
      {
        break;
      }

      sub_10160EC(v57, v21, 0, __p);
      v27 = *(a3 + 216);
      if (v27 >= *(a3 + 224))
      {
        v28 = sub_C6A920((a3 + 208), __p);
        v29 = __p[0];
        *(a3 + 216) = v28;
        if (!v29)
        {
          goto LABEL_13;
        }

        goto LABEL_38;
      }

      *v27 = 0;
      v27[1] = 0;
      v27[2] = 0;
      *v27 = *__p;
      v27[2] = v55;
      __p[0] = 0;
      __p[1] = 0;
      v55 = 0;
      v27[3] = v56;
      *(a3 + 216) = v27 + 4;
LABEL_13:
      v21 += 60;
      if (v21 == v22)
      {
        goto LABEL_51;
      }
    }

    if (!v23 || ((v31 = *v21, v30 = v21[1], *v21 == -1) ? (v32 = v30 == -1) : (v32 = 0), v32))
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_31;
    }

    v33 = exp(v30 * -6.28318531 / 4294967300.0 + 3.14159265);
    v34 = atan((v33 - 1.0 / v33) * 0.5) * 57.2957795 * 0.0174532925;
    v35 = sin((v52 - v34) * 0.5);
    v36 = v35 * v35;
    v37 = v51 * cos(v34);
    v38 = sin(((v12 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925 - (v31 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925) * 0.5);
    v39 = atan2(sqrt(v38 * v38 * v37 + v36), sqrt(1.0 - (v38 * v38 * v37 + v36)));
    v40 = (v39 + v39) * 6372797.56 * 100.0;
    if (v40 >= 0.0)
    {
      v41 = v40;
      if (v40 >= 4.50359963e15)
      {
        goto LABEL_42;
      }

      v42 = (v40 + v40) + 1;
    }

    else
    {
      v41 = v40;
      if (v40 <= -4.50359963e15)
      {
        goto LABEL_42;
      }

      v42 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
    }

    v41 = (v42 >> 1);
LABEL_42:
    if (v41 >= 9.22337204e18)
    {
      v43 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_31;
    }

    if (v40 >= 0.0)
    {
      if (v40 < 4.50359963e15)
      {
        v47 = (v40 + v40) + 1;
        goto LABEL_49;
      }
    }

    else if (v40 > -4.50359963e15)
    {
      v47 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
LABEL_49:
      v40 = (v47 >> 1);
    }

    v43 = v40;
LABEL_31:
    v53 = v43;
    sub_10160EC(v57, v21, 0, __p);
    v44 = *(a3 + 240);
    if (v44 >= *(a3 + 248))
    {
      v46 = sub_101BBD4((a3 + 232), __p, &v53);
    }

    else
    {
      v45 = v53;
      v44[1] = 0;
      v44[2] = 0;
      *v44 = 0;
      if (__p[1] != __p[0])
      {
        if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v44[3] = v56;
      v44[4] = v45;
      v46 = v44 + 5;
    }

    *(a3 + 240) = v46;
    v29 = __p[0];
    if (!__p[0])
    {
      goto LABEL_13;
    }

LABEL_38:
    __p[1] = v29;
    operator delete(v29);
    goto LABEL_13;
  }

LABEL_51:
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  v48 = v63;
  if (v63)
  {
    do
    {
      v49 = *v48;
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v62;
  v62 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_101AFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_3BFA2C(&a24);
  sub_D78EB0(v24);
  _Unwind_Resume(a1);
}

void *sub_101B084@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_101B1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101B21C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_101B364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101B3B4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_101B4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101B54C(unsigned int **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    v6 = -1;
    v37 = vdupq_n_s64(0x4076800000000000uLL);
    v35 = vdupq_n_s64(0xC066800000000000);
    v36 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    do
    {
      if (v3[56] == 1)
      {
        goto LABEL_5;
      }

      if (v6 == -1 || ((v9 = *v3, v8 = v3[1], *v3 == -1) ? (v10 = v8 == -1) : (v10 = 0), v10))
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        v27 = a2[2];
        if (v5 >= v27)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      v38 = v6;
      v11 = exp(3.14159265 - HIDWORD(v6) * 6.28318531 / 4294967300.0);
      v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
      v13.i64[0] = v38;
      v13.i64[1] = v9;
      v14 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
      v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
      v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v13), v37), v36), v35), v34);
      v39 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
      v17 = sin((v12 - v15) * 0.5);
      v18 = v17 * v17;
      v19 = cos(v12);
      v20 = v19 * cos(v15);
      v21 = sin(0.5 * v39);
      v22 = atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
      v23 = (v22 + v22) * 6372797.56 * 100.0;
      if (v23 >= 0.0)
      {
        v24 = v23;
        if (v23 >= 4.50359963e15)
        {
          goto LABEL_29;
        }

        v25 = (v23 + v23) + 1;
      }

      else
      {
        v24 = v23;
        if (v23 <= -4.50359963e15)
        {
          goto LABEL_29;
        }

        v25 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      }

      v24 = (v25 >> 1);
LABEL_29:
      if (v24 >= 9.22337204e18)
      {
        v26 = 0x7FFFFFFFFFFFFFFELL;
        v27 = a2[2];
        if (v5 >= v27)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      if (v23 >= 0.0)
      {
        if (v23 >= 4.50359963e15)
        {
          goto LABEL_38;
        }

        v33 = (v23 + v23) + 1;
      }

      else
      {
        if (v23 <= -4.50359963e15)
        {
          goto LABEL_38;
        }

        v33 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      }

      v23 = (v33 >> 1);
LABEL_38:
      v26 = v23;
      v27 = a2[2];
      if (v5 >= v27)
      {
LABEL_16:
        v28 = v5;
        v29 = v5 >> 3;
        v30 = v29 + 1;
        if ((v29 + 1) >> 61)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v27 >> 2 > v30)
        {
          v30 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          if (!(v31 >> 61))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        v32 = (8 * v29);
        *v32 = v26;
        v5 = (v32 + 1);
        memcpy(0, 0, v28);
        a2[1] = v5;
        a2[2] = 0;
        goto LABEL_4;
      }

LABEL_3:
      *v5 = v26;
      v5 += 8;
LABEL_4:
      a2[1] = v5;
LABEL_5:
      v7 = *v3;
      v3 += 60;
      v6 = v7;
    }

    while (v3 != v4);
  }

  *a2 = 0;
}

void sub_101B958(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101B980(void ***a1, void *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v4)
  {
    v4 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
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

  v7 = (8 * (a1[1] - *a1));
  v8 = *a3;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v9 = a2[1];
  if (v9 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[10 * v3] = a2[3];
  *(&stru_20.cmd + 5 * v3) = v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v7 + *a1 - v11);
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = (v7 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = v13[3];
      v14[2] = v13[2];
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14[3] = v15;
      v14[4] = v13[4];
      v13 += 5;
      v14 += 5;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        v10[1] = v16;
        operator delete(v16);
      }

      v10 += 5;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = (v7 + 5);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 5;
}

void sub_101BBB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

void *sub_101BBD4(void ***a1, void *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v4)
  {
    v4 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
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

  v7 = (8 * (a1[1] - *a1));
  v8 = *a3;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v9 = a2[1];
  if (v9 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[10 * v3] = a2[3];
  *(&stru_20.cmd + 5 * v3) = v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v7 + *a1 - v11);
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = (v7 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = v13[3];
      v14[2] = v13[2];
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14[3] = v15;
      v14[4] = v13[4];
      v13 += 5;
      v14 += 5;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        v10[1] = v16;
        operator delete(v16);
      }

      v10 += 5;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = (v7 + 5);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 5;
}

void sub_101BE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101BE28(uint64_t a1, char a2, double a3)
{
  sub_31BF20(a1, v7);
  sub_31214(v7, a2, &v8, a3);
  v5 = *(v9 - 12);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return v5;
}

void sub_101BEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101BED8()
{
  byte_27C0DAF = 3;
  LODWORD(qword_27C0D98) = 5136193;
  byte_27C0DC7 = 3;
  LODWORD(qword_27C0DB0) = 5136194;
  byte_27C0DDF = 3;
  LODWORD(qword_27C0DC8) = 5136195;
  byte_27C0DF7 = 15;
  strcpy(&qword_27C0DE0, "vehicle_mass_kg");
  byte_27C0E0F = 21;
  strcpy(&xmmword_27C0DF8, "vehicle_cargo_mass_kg");
  byte_27C0E27 = 19;
  strcpy(&qword_27C0E10, "vehicle_aux_power_w");
  byte_27C0E3F = 15;
  strcpy(&qword_27C0E28, "dcdc_efficiency");
  strcpy(&qword_27C0E40, "drive_train_efficiency");
  HIBYTE(word_27C0E56) = 22;
  operator new();
}

void sub_101C0B4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0E56) < 0)
  {
    sub_21E6878();
  }

  sub_21E6884();
  _Unwind_Resume(a1);
}

void sub_101C0D4()
{
  v0 = __chkstk_darwin();
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  sub_FBF440(v0);
  v2 = *v0;
  v3 = v0[1];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = &unk_2290750;
  v12 = 0;
  v13 = 0u;
  v14 = 0;
  v15 = &unk_2290750;
  v18 = 0;
  v17 = 0;
  v16 = 0u;
  v19 = &unk_2290750;
  v21 = 0;
  v20 = 0u;
  v22 = 0;
  v23 = &unk_2290750;
  v26 = 0;
  v25 = 0;
  v24 = 0u;
  v28 = 0u;
  v27 = &unk_2290750;
  v29 = 0;
  v30 = 0;
  v31 = &unk_2290750;
  v32 = 0u;
  v34 = 0;
  v33 = 0;
  v36 = 0u;
  v35 = &unk_2290750;
  v37 = 0;
  v38 = 0;
  v39 = &unk_2290750;
  v40 = 0u;
  v42 = 0;
  v41 = 0;
  v46 = 0;
  v44 = 0u;
  v43 = &unk_2290750;
  v45 = 0;
  v47 = &unk_2290750;
  v50 = 0;
  v48 = 0u;
  v49 = 0;
  v51 = &unk_2290750;
  v54 = 0;
  v52 = 0u;
  v53 = 0;
  v55 = &unk_2290750;
  v58 = 0;
  v56 = 0u;
  v57 = 0;
  v59 = &unk_2290750;
  v62 = 0;
  v60 = 0u;
  v61 = 0;
  v63 = &unk_2290750;
  v66 = 0;
  v64 = 0u;
  v65 = 0;
  v67 = &unk_2290750;
  v70 = 0;
  v68 = 0u;
  v69 = 0;
  v71 = &unk_2290750;
  v74 = 0;
  v72 = 0u;
  v73 = 0;
  sub_101E350(&v75, (v3 + 224));
  sub_1011FA4(&__p, v2);
  sub_4392B0(v4, v2);
}

void sub_101DF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_454784(&a49);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
LABEL_3:
    if (a42 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a30);
  if (a42 < 0)
  {
LABEL_4:
    operator delete(a37);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_10:
      sub_C6579C(&a56);
      sub_101E2B0(&STACK[0x1080]);
      sub_CDCD6C(a23);
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a43);
    goto LABEL_10;
  }

LABEL_8:
  if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_101E1BC()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  STACK[0x1088] = v0;
  JUMPOUT(0x101E1F0);
}

void sub_101E1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void ***a23)
{
  sub_C65AF0(&STACK[0x10C8]);
  v24 = STACK[0x10B0];
  if (STACK[0x10B0])
  {
    STACK[0x10B8] = v24;
    operator delete(v24);
    v25 = STACK[0x1098];
    if (!STACK[0x1098])
    {
LABEL_3:
      v26 = STACK[0x1080];
      if (!STACK[0x1080])
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v25 = STACK[0x1098];
    if (!STACK[0x1098])
    {
      goto LABEL_3;
    }
  }

  STACK[0x10A0] = v25;
  operator delete(v25);
  v26 = STACK[0x1080];
  if (!STACK[0x1080])
  {
LABEL_4:
    sub_CDCD6C(a23);
    _Unwind_Resume(a1);
  }

LABEL_7:
  v27 = STACK[0x1088];
  v28 = v26;
  if (STACK[0x1088] != v26)
  {
    v29 = STACK[0x1088];
    do
    {
      v31 = *(v29 - 32);
      v29 -= 32;
      v30 = v31;
      if (v31)
      {
        *(v27 - 24) = v30;
        operator delete(v30);
      }

      v27 = v29;
    }

    while (v29 != v26);
    v28 = STACK[0x1080];
  }

  STACK[0x1088] = v26;
  operator delete(v28);
  sub_CDCD6C(a23);
  _Unwind_Resume(a1);
}

char **sub_101E2B0(void **a1)
{
  sub_C65AF0(a1 + 9);
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      v7 = a1[1];
      do
      {
        v9 = *(v7 - 4);
        v7 -= 32;
        v8 = v9;
        if (v9)
        {
          *(v5 - 3) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_101E350(uint64_t a1, uint64_t *a2)
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

void sub_101E4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_34BE0((v11 + 88));
  if (!*v12)
  {
    _Unwind_Resume(a1);
  }

  free(*v12);
  _Unwind_Resume(a1);
}

uint64_t sub_101E508(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3872);
  if (v2 != -1)
  {
    return v2;
  }

  v2 = 1;
  v4 = sub_101E790(*a1, 1u, 1);
  if (!v4)
  {
    return v2;
  }

  v5 = &v4[-*v4];
  v6 = *v5;
  if (v6 < 0xB)
  {
    if (v6 < 9)
    {
      return 1;
    }
  }

  else if (*(v5 + 5))
  {
    v7 = &v4[*(v5 + 5) + *&v4[*(v5 + 5)]];
    v8 = &v7[-*v7];
    if (*v8 >= 5u && (v9 = *(v8 + 2)) != 0)
    {
      return v7[v9];
    }

    else
    {
      return 0;
    }
  }

  v10 = *(v5 + 4);
  if (!v10)
  {
    return 1;
  }

  v11 = sub_101E640(&v4[v10 + *&v4[v10]], 0);
  v12 = (v11 - *v11);
  if (*v12 >= 5u && (v13 = v12[2]) != 0)
  {
    v14 = *(v11 + v13);
    *(v1 + 3872) = v14;
    return v14;
  }

  else
  {
    *(v1 + 3872) = 0;
    return 0;
  }
}

uint64_t sub_101E640(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_101E710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

char *sub_101E790(uint64_t a1, unsigned int a2, int a3)
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

  if (*(a1 + 688) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 696) = v3;
    v4 = *(a1 + 704);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 712) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 720) = v3;
    v4 = *(a1 + 728);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 736) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 744) = v3;
    v4 = *(a1 + 752);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 760) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 768) = v3;
    v4 = *(a1 + 776);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 744);
    v8 = *(a1 + 720);
    v9 = *(a1 + 696);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 696);
    }

    v11 = 28;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 720);
    }

    v13 = 29;
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
      v14 = *(a1 + 744);
    }

    v15 = *(a1 + 768);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 30;
    }

    v18 = sub_2D52A4(*a1, 7, a2, 1);
    v19 = 31;
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
  sub_101E964(v21);
  return 0;
}

uint64_t sub_101E964(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(7u);
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

void sub_101EA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101EA90(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_101EC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_101EC2C(void ***a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = (32 * v3);
  v8 = *a2;
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = -1;
  sub_1015104(32 * v3, v8, a3);
  v9 = 32 * v3 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v18 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = v13[3];
      v14[2] = v13[2];
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14[3] = v15;
      v13 += 4;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        v10[1] = v16;
        operator delete(v16);
      }

      v10 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_101EDA8(_Unwind_Exception *a1, uint64_t a2, ...)
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

void sub_101EDCC(int32x2_t *a1, uint64_t *a2)
{
  v31 = 0;
  sub_101F030(a1, a2, &v31);
  v3 = a1[11];
  v4 = a1[12];
  if (v3 == v4)
  {
    return;
  }

  while (2)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      if (!*v5 || *(v5 + 1) == -1)
      {
        goto LABEL_7;
      }

      sub_101F9D8(&a1[1], 1);
      v7 = *&a1[8] - 1;
      v8 = *v5;
      v9 = __ROR8__(*v5, 32);
      v10 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v9 ^ (v9 >> 33))) >> 33));
      v11 = v10 ^ (v10 >> 33);
      v12 = a1[10];
      v13 = a1[9].i32[0];
      v14 = a1[9].i32[1];
      v15 = v11 & v7;
      v16 = (*&v12 + 8 * (v11 & v7));
      v17 = *v16;
      v18 = v16[1];
      v19 = a1[6];
      if (v13 == v17 && v14 == v18)
      {
        goto LABEL_28;
      }

      if (v19)
      {
        v21 = -1;
        v22 = 1;
        do
        {
          if (a1[5].i32[0] == v17 && a1[5].i32[1] == v18)
          {
            if (v21 == -1)
            {
              v21 = v15;
            }
          }

          else if (__PAIR64__(v18, v17) == v8)
          {
            goto LABEL_39;
          }

          v15 = (v15 + v22) & v7;
          v23 = (*&v12 + 8 * v15);
          v17 = *v23;
          v18 = v23[1];
          ++v22;
        }

        while (v13 != v17 || v14 != v18);
        if (v21 == -1)
        {
LABEL_28:
          v21 = v15;
        }

        v25 = a1[7];
        if (*&v25 - *&v19 >= 0x1FFFFFFFFFFFFFFFuLL)
        {
          goto LABEL_41;
        }

LABEL_30:
        if (*&v19 && (v26 = vceq_s32(a1[5], *(*&v12 + 8 * v21)), (v26.i32[0] & v26.i32[1] & 1) != 0))
        {
          a1[6] = (*&v19 - 1);
        }

        else
        {
          a1[7] = (*&v25 + 1);
        }

        *(*&v12 + 8 * v21) = *v5;
        goto LABEL_7;
      }

      v27 = 1;
      while (__PAIR64__(v18, v17) != v8)
      {
        v15 = (v15 + v27) & v7;
        v28 = (*&v12 + 8 * v15);
        v17 = *v28;
        v18 = v28[1];
        ++v27;
        if (v13 == v17 && v14 == v18)
        {
          goto LABEL_28;
        }
      }

LABEL_39:
      if (v15 == -1)
      {
        v21 = -1;
        v25 = a1[7];
        if (*&v25 - *&v19 >= 0x1FFFFFFFFFFFFFFFuLL)
        {
LABEL_41:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_30;
      }

LABEL_7:
      ++v5;
    }

    v3 += 3;
    if (v3 != v4)
    {
      continue;
    }

    break;
  }
}

void sub_101F030(uint64_t a1, uint64_t *a2, int *a3)
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
  v48 = 1;
  v16 = sub_101F374(*v14, v15 & 0xFFFFFFFFFFFFFFFLL, &v48);
  v17 = *a3;
  v18 = v17 + 1;
  v19 = sub_101E508(*a1);
  if (v17 + 1 > v19)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v19;
  }

  if (v18 < v19)
  {
    while (1)
    {
      v22 = *a1;
      v23 = *a2;
      v49 = v18;
      v24 = sub_101F854(*v22, v23 & 0xFFFFFFFFFFFFFFFLL, (v23 & 0x1000000000000000) != 0, &v49);
      if (v24 > 0xFFFFFFFEFFFFFFFFLL || v24 == 0)
      {
        goto LABEL_14;
      }

      v26 = *(a1 + 88) + 24 * v18;
      v28 = *(v26 + 8);
      v27 = *(v26 + 16);
      if (v28 < v27)
      {
        break;
      }

      v29 = *v26;
      v30 = v28 - *v26;
      v31 = v30 >> 3;
      v32 = (v30 >> 3) + 1;
      if (v32 >> 61)
      {
        goto LABEL_48;
      }

      v33 = v27 - v29;
      if (v33 >> 2 > v32)
      {
        v32 = v33 >> 2;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (!(v34 >> 61))
        {
          operator new();
        }

LABEL_49:
        sub_1808();
      }

      *(8 * v31) = v24;
      v35 = 8 * v31 + 8;
      memcpy(0, v29, v30);
      *v26 = 0;
      *(v26 + 8) = v35;
      *(v26 + 16) = 0;
      if (v29)
      {
        operator delete(v29);
      }

      *(v26 + 8) = v35;
      if (v16)
      {
        goto LABEL_34;
      }

LABEL_14:
      if (v20 == ++v18)
      {
        return;
      }
    }

    *v28 = v24;
    *(v26 + 8) = v28 + 1;
    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_34:
    v36 = *(a1 + 88) + 24 * v18;
    v37 = *a1;
    v38 = *a2;
    v50 = v18;
    v39 = sub_101F854(*v37, v38 & 0xFFFFFFFFFFFFFFFLL, (v38 & 0x1000000000000000) == 0, &v50);
    v41 = *(v36 + 8);
    v40 = *(v36 + 16);
    if (v41 < v40)
    {
      *v41 = v39;
      v21 = (v41 + 1);
    }

    else
    {
      v42 = *v36;
      v43 = v41 - *v36;
      v44 = v43 >> 3;
      v45 = (v43 >> 3) + 1;
      if (v45 >> 61)
      {
LABEL_48:
        sub_1794();
      }

      v46 = v40 - v42;
      if (v46 >> 2 > v45)
      {
        v45 = v46 >> 2;
      }

      if (v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (!(v47 >> 61))
        {
          operator new();
        }

        goto LABEL_49;
      }

      *(8 * v44) = v39;
      v21 = 8 * v44 + 8;
      memcpy(0, v42, v43);
      *v36 = 0;
      *(v36 + 8) = v21;
      *(v36 + 16) = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    *(v36 + 8) = v21;
    goto LABEL_14;
  }
}

BOOL sub_101F374(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v5 = 1;
  v6 = sub_101E790(a1, a2, 1);
  if (!v6)
  {
    return v5;
  }

  v7 = &v6[-*v6];
  if (*v7 < 5u)
  {
    return v5;
  }

  v8 = *(v7 + 2);
  if (!v8)
  {
    return v5;
  }

  v9 = HIDWORD(a2);
  v10 = v6;
  v11 = &v6[v8];
  v12 = *&v6[v8];
  v13 = *sub_101F5B8(&v6[v8 + v12], v9);
  if (v13 == *(sub_101F5B8(&v11[v12], v9) + 2))
  {
    return 0;
  }

  v15 = (v10 - *v10);
  if (*v15 >= 5u && (v16 = v15[2]) != 0 && ((v17 = *sub_101F5B8((v10 + v16 + *(v10 + v16)), v9), v18 = (v10 - *v10), *v18 < 7u) || (v19 = v18[3]) == 0 ? (v20 = 0) : (v20 = (v10 + v19 + *(v10 + v19))), (v21 = sub_101F704(v20, v17), v22 = (v21 - *v21), *v22 >= 5u) && (v23 = v22[2]) != 0))
  {
    v24 = (v21 + v23 + *(v21 + v23));
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_C54264(v24, *a3 - 1);
  v26 = (v10 - *v10);
  if (*v26 >= 5u && (v27 = v26[2]) != 0 && ((v28 = *(sub_101F5B8((v10 + v27 + *(v10 + v27)), v9) + 2), v29 = (v10 - *v10), *v29 < 7u) || (v30 = v29[3]) == 0 ? (v31 = 0) : (v31 = (v10 + v30 + *(v10 + v30))), (v32 = sub_101F704(v31, v28), v33 = (v32 - *v32), *v33 >= 5u) && (v34 = v33[2]) != 0))
  {
    v35 = (v32 + v34 + *(v32 + v34));
  }

  else
  {
    v35 = 0;
  }

  v36 = sub_C54264(v35, *a3 - 1);
  return v25[1] != v36[1] || *v25 != *v36;
}

uint64_t sub_101F5B8(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1];
}

void sub_101F684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101F704(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_101F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_101F854(uint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  v8 = sub_101E790(a1, a2, 1);
  if (!v8)
  {
    return 0xFFFFFFFF00000000;
  }

  v9 = &v8[-*v8];
  if (*v9 < 5u)
  {
    goto LABEL_13;
  }

  v10 = *(v9 + 2);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = HIDWORD(a2);
  v12 = v8;
  v13 = sub_101F5B8(&v8[v10 + *&v8[v10]], v11);
  v14 = 2;
  if (a3)
  {
    v14 = 0;
  }

  v15 = *(v13 + v14);
  v16 = (v12 - *v12);
  if (*v16 >= 7u && (v17 = v16[3]) != 0)
  {
    v18 = sub_101F704((v12 + v17 + *(v12 + v17)), v15);
    v19 = (v18 - *v18);
    if (*v19 < 5u)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = sub_101F704(0, v15);
    v19 = (v18 - *v18);
    if (*v19 < 5u)
    {
LABEL_13:
      v21 = 0;
      goto LABEL_14;
    }
  }

  v20 = v19[2];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = (v18 + v20 + *(v18 + v20));
LABEL_14:
  v22 = sub_C54264(v21, *a4 - 1);
  v23 = *v22;
  v24 = v22[1];
  if (*(a1 + 3876) != 1)
  {
    return (v24 << 32) | v23;
  }

  v25 = sub_101E790(a1, v23, 1);
  if (v25)
  {
    v26 = &v25[-*v25];
    if (*v26 >= 9u)
    {
      v27 = *(v26 + 4);
      if (v27)
      {
        if (*&v25[v27 + *&v25[v27]])
        {
          return (v24 << 32) | v23;
        }
      }
    }
  }

  return 0xFFFFFFFF00000000;
}

uint64_t sub_101F9D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_101FCA4(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_101FDDC(&v24, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v25;
      *a1 = v24;
      *(a1 + 16) = v18;
      v24 = v17;
      v25 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v26;
      v26 = v19;
      v20 = *(a1 + 48);
      *(a1 + 48) = v27;
      v27 = v20;
      *&v16 = v28;
      v21 = *(a1 + 56);
      *(a1 + 56) = v28;
      v28 = v21;
      v22 = *(a1 + 72);
      *(a1 + 72) = v29;
      v29 = v22;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v16)));
      *(a1 + 24) = 0;
      v24 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v25, v21)));
      BYTE8(v25) = 0;
      if (v22)
      {
        free(v22);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_101FCA4(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_101FDDC(&v16, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v17;
    *a1 = v16;
    *(a1 + 16) = v10;
    v16 = v9;
    v17 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v11;
    v12 = *(a1 + 48);
    *(a1 + 48) = v19;
    v19 = v12;
    *&v8 = v20;
    v13 = *(a1 + 56);
    *(a1 + 56) = v20;
    v20 = v13;
    v14 = *(a1 + 72);
    *(a1 + 72) = v21;
    v21 = v14;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v13)));
    BYTE8(v17) = 0;
    if (v14)
    {
      free(v14);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

float sub_101FDDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_101FF10(a1, a2, a3);
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
      if (*(a2 + 48) - *(a2 + 40) < v7)
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

    *(a1 + 56) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_101FF10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
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

  sub_D5B9C0(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 68);
    if (*(a2 + 40))
    {
      v10 = 8 * v7;
      v11 = *(a2 + 72);
      while (1)
      {
        v12 = *(v11 + 4);
        if ((v8 != *v11 || v9 != v12) && (*(a2 + 32) != *v11 || *(a2 + 36) != v12))
        {
          break;
        }

        v11 += 8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v34 = 8 * v7;
      v11 = *(a2 + 72);
      while (v8 == *v11 && v9 == *(v11 + 4))
      {
        v11 += 8;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v11 = *(a2 + 72);
  }

  v15 = *(a2 + 72) + 8 * v7;
  if (v11 != v15)
  {
    do
    {
      v16 = *(a1 + 56) - 1;
      v17 = __ROR8__(*v11, 32);
      v18 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) >> 33));
      v19 = v18 ^ (v18 >> 33);
      v20 = *(a1 + 72);
      v21 = *(a1 + 64);
      v22 = *(a1 + 68);
      v23 = v19 & v16;
      v24 = (v20 + 8 * v23);
      if (v21 != *v24 || v22 != v24[1])
      {
        v26 = 1;
        do
        {
          v23 = (v23 + v26) & v16;
          v24 = (v20 + 8 * v23);
          ++v26;
        }

        while (v21 != *v24 || v22 != v24[1]);
      }

      *v24 = *v11;
      ++*(a1 + 48);
      v11 += 8;
      if (v11 != v15)
      {
        v28 = *(a2 + 64);
        v29 = *(a2 + 68);
        if (*(a2 + 40))
        {
          do
          {
            v30 = *(v11 + 4);
            if ((v28 != *v11 || v29 != v30) && (*(a2 + 32) != *v11 || *(a2 + 36) != v30))
            {
              break;
            }

            v11 += 8;
          }

          while (v11 != v15);
        }

        else
        {
          do
          {
            if (v28 != *v11 || v29 != *(v11 + 4))
            {
              break;
            }

            v11 += 8;
          }

          while (v11 != v15);
        }
      }
    }

    while (v11 != *(a2 + 72) + 8 * *(a2 + 56));
  }

LABEL_60:
  ++*(a1 + 28);
}

uint64_t sub_1020178(void ***a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = (32 * v3);
  v8 = *a2;
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = -1;
  sub_1015104(32 * v3, v8, a3);
  v9 = 32 * v3 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v18 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = v13[3];
      v14[2] = v13[2];
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14[3] = v15;
      v13 += 4;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        v10[1] = v16;
        operator delete(v16);
      }

      v10 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_10202F4(_Unwind_Exception *a1, uint64_t a2, ...)
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

uint64_t sub_1020318(void ***a1, uint64_t *a2, __int128 *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = (32 * v3);
  v8 = *a2;
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = -1;
  sub_1015104(32 * v3, v8, a3);
  v9 = 32 * v3 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v18 + *a1 - v11);
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = (v18 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = v13[3];
      v14[2] = v13[2];
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      v14[3] = v15;
      v13 += 4;
      v14 += 4;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        v10[1] = v16;
        operator delete(v16);
      }

      v10 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_1020494(_Unwind_Exception *a1, uint64_t a2, ...)
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

unint64_t sub_10204B8(void *a1, unint64_t a2)
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
      sub_10205B0(a1);
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

uint64_t sub_10205B0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_10205E0();
  }

  return sub_10207F8(a1);
}

uint64_t sub_10207F8(uint64_t result)
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
        v18 = (*(result + 8) + 32 * i);
        v19 = *v18;
        LODWORD(v18) = v18[1];
        v20 = 0x2127599BF4325C37 * ((((v19 << 32) + 16 * v18) | (v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v18 >> 25) & 8) ^ (((v19 << 32) + 16 * v18) >> 23));
        v21 = (v20 ^ ~(v20 >> 47)) + ((v20 ^ (v20 >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            v29 = (v28 + 32 * v16);
            v30 = v28 + 32 * i;
            *v29 = *v30;
            v29[1] = 0;
            v29[2] = 0;
            v29[3] = 0;
            *(v29 + 1) = *(v30 + 8);
            v29[3] = *(v30 + 24);
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            *(v30 + 8) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v31 = (v28 + 32 * i);
            v32 = *v31;
            v33 = v31[3];
            v34 = *(v31 + 1);
            v31[2] = 0;
            v31[3] = 0;
            v31[1] = 0;
            v35 = *(result + 8);
            v36 = (v35 + 32 * i);
            v37 = 32 * v16;
            v38 = v35 + v37;
            *v36 = *v38;
            v36[1] = 0;
            v36[2] = 0;
            v36[3] = 0;
            *(v36 + 1) = *(v38 + 8);
            v36[3] = *(v38 + 24);
            *(v38 + 16) = 0;
            *(v38 + 24) = 0;
            *(v38 + 8) = 0;
            v39 = *(result + 8) + v37;
            *v39 = v32;
            *(v39 + 8) = v34;
            *(v39 + 24) = v33;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v40 = i - (i >> 3);
    v41 = i == 7;
    v42 = 6;
    if (!v41)
    {
      v42 = v40;
    }

    *(result + 40) = v42 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void *sub_1020B2C(void ***a1, void *a2)
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

void sub_1020D28(_Unwind_Exception *a1, uint64_t a2, ...)
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

unint64_t sub_1020D4C(_DWORD *a1, _DWORD *a2, double *a3)
{
  v3 = *a3;
  v4 = 1.0;
  v5 = 1.0 - *a3;
  LODWORD(v4) = *a1;
  v6 = v5 * v4;
  if (v6 >= 0.0)
  {
    if (v6 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v6 + v6) + 1;
  }

  else
  {
    if (v6 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
  }

  v6 = (v7 >> 1);
LABEL_7:
  v8 = v5 * a1[1];
  if (v8 >= 0.0)
  {
    HIDWORD(v9) = 1127219200;
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v10 = (v8 + v8) + 1;
  }

  else
  {
    HIDWORD(v9) = -1020264448;
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v10 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v10 >> 1);
LABEL_13:
  LODWORD(v9) = *a2;
  v11 = v3 * v9;
  if (v11 >= 0.0)
  {
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v12 = (v11 + v11) + 1;
  }

  else
  {
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v12 >> 1);
LABEL_19:
  v13 = v3 * a2[1];
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      goto LABEL_24;
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
LABEL_24:
    v13 = (v14 >> 1);
  }

  return (v11 + v6) | ((v13 + v8) << 32);
}

void sub_1020EE8()
{
  byte_27C0EB7 = 3;
  LODWORD(qword_27C0EA0) = 5136193;
  byte_27C0ECF = 3;
  LODWORD(qword_27C0EB8) = 5136194;
  byte_27C0EE7 = 3;
  LODWORD(qword_27C0ED0) = 5136195;
  byte_27C0EFF = 15;
  strcpy(&qword_27C0EE8, "vehicle_mass_kg");
  byte_27C0F17 = 21;
  strcpy(&xmmword_27C0F00, "vehicle_cargo_mass_kg");
  byte_27C0F2F = 19;
  strcpy(&qword_27C0F18, "vehicle_aux_power_w");
  byte_27C0F47 = 15;
  strcpy(&qword_27C0F30, "dcdc_efficiency");
  strcpy(&qword_27C0F48, "drive_train_efficiency");
  HIBYTE(word_27C0F5E) = 22;
  operator new();
}

void sub_10210C4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0F5E) < 0)
  {
    sub_21E6954();
  }

  sub_21E6960();
  _Unwind_Resume(a1);
}

void sub_10210E4(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1AF0(a2);
  a1[3] = sub_3AF144(a2);
  sub_FCDE30();
}

void sub_1021220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_4199F0((v15 + 32));
  _Unwind_Resume(a1);
}

unint64_t sub_1021280(uint64_t a1, uint64_t a2)
{
  v3 = sub_F6D17C(*a2, *(a2 + 8));
  v4 = (*v3 - **v3);
  if (*v4 >= 0x2Fu && (v5 = v4[23]) != 0 && ((v6 = *(*v3 + v5), v7 = v6 > 0x2D, v8 = (1 << v6) & 0x208040000000, !v7) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (v10 = sub_F6D17C(*(a2 + 16), *(a2 + 24)), v11 = (*v10 - **v10), *v11 >= 0x2Fu) && (v12 = v11[23]) != 0 && (v13 = *(*v10 + v12), v13 <= 0x2D)))
  {
    return (0x208040000000uLL >> v13) & 1;
  }

  else
  {
    return 0;
  }
}

int **sub_1021344(int **result, unint64_t a2, void *a3, unint64_t a4, double **a5)
{
  v9 = result;
  if (result)
  {
    result = sub_F6D024(result);
    v10 = result;
    if (a3)
    {
      result = sub_F6D024(a3);
      if (a2 >= v10 || a4 >= result)
      {
        if (a2 < v10 == a4 < result)
        {
          return result;
        }
      }

      else
      {
        v11 = sub_F6D17C(v9, a2);
        result = sub_F6D17C(a3, a4);
        if (v11 == result)
        {
          return result;
        }
      }

      goto LABEL_13;
    }

    if (a2 < result)
    {
      v12 = 1;
      goto LABEL_22;
    }
  }

  else if (a3)
  {
    result = sub_F6D024(a3);
    if (a4 < result)
    {
LABEL_13:
      v12 = 0;
      while (1)
      {
LABEL_22:
        v17 = a2++;
        if (v9)
        {
          result = sub_F6D024(v9);
          v18 = result;
          if (v12)
          {
            if (a2 >= result)
            {
              return result;
            }
          }

          else
          {
            result = sub_F6D024(a3);
            if (a2 >= v18 || a4 >= result)
            {
              if (a2 < v18 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v19 = sub_F6D17C(v9, a2);
              result = sub_F6D17C(a3, a4);
              if (v19 == result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v12)
          {
            return result;
          }

          result = sub_F6D024(a3);
          if (a4 >= result)
          {
            return result;
          }
        }

        v20 = sub_F6D17C(v9, v17);
        result = sub_F6D17C(v9, a2);
        v21 = (*v20 - **v20);
        v22 = *v21;
        if (*(v20 + 38))
        {
          if (v22 >= 0x49)
          {
            v23 = v21[36];
            if (v23)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v22 >= 0x4B)
        {
          v23 = v21[37];
          if (v23)
          {
LABEL_40:
            v24 = *(*v20 + v23);
            v25 = *result;
            v26 = (*result - **result);
            v27 = *v26;
            if (*(result + 38))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
          }
        }

        v24 = -1;
        v25 = *result;
        v26 = (*result - **result);
        v27 = *v26;
        if (*(result + 38))
        {
LABEL_45:
          if (v27 < 0x4B)
          {
            goto LABEL_14;
          }

          v28 = v26[37];
          if (!v28)
          {
            goto LABEL_14;
          }

          goto LABEL_47;
        }

LABEL_41:
        if (v27 < 0x49 || (v28 = v26[36]) == 0)
        {
LABEL_14:
          v13 = 0xFFFF;
          goto LABEL_15;
        }

LABEL_47:
        v13 = *(v25 + v28);
LABEL_15:
        v14 = v24 + 18000;
        v15 = v24 - 18000;
        if ((v14 >> 5) < 0x465u)
        {
          v15 = v14;
        }

        v16 = v13 - v15;
        if (v16 > 18000)
        {
          v16 -= 36000;
        }

        if (v16 < -17999)
        {
          v16 += 36000;
        }

        **a5 = **a5 + v16 / 100.0;
      }
    }
  }

  return result;
}

uint64_t sub_10215EC(uint64_t a1, int ***a2)
{
  if (sub_10217A4(a1, a2))
  {
    return 1;
  }

  v5 = sub_F6D17C(*a2, a2[1]);
  v6 = sub_F6D17C(a2[2], a2[3]);
  v7 = v5[1];
  v8 = (v7 - *v7);
  v9 = *v8;
  if (*(v5 + 38))
  {
    if (v9 < 5)
    {
      goto LABEL_13;
    }

    v10 = v8[2];
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (v9 < 9 || (v10 = v8[4]) == 0)
  {
LABEL_13:
    v11 = 0;
    v12 = *(v6 + 8);
    v13 = (v12 - *v12);
    v14 = *v13;
    if (*(v6 + 38))
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v14 >= 5)
    {
      v15 = v13[2];
      if (v15)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v11 = *(v7 + v10);
  v12 = *(v6 + 8);
  v13 = (v12 - *v12);
  v14 = *v13;
  if (!*(v6 + 38))
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v14 < 9)
  {
    goto LABEL_17;
  }

  v15 = v13[4];
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_16:
  v16 = *(v12 + v15);
LABEL_18:
  v17 = v11 + 18000;
  v18 = v11 - 18000;
  if ((v17 >> 5) < 0x465u)
  {
    v18 = v17;
  }

  v19 = v16 - v18;
  if (v19 > 18000)
  {
    v19 -= 36000;
  }

  if (v19 < -17999)
  {
    v19 += 36000;
  }

  v20 = v19 / 100.0;
  if (fabs(v20) < *(a1 + 1024))
  {
    return 0;
  }

  v21 = (*v5 - **v5);
  if (*v21 >= 0x9Bu && (v22 = v21[77]) != 0)
  {
    v23 = *(*v5 + v22 + 1) >> 7;
  }

  else
  {
    v23 = 0;
  }

  return (v20 < 0.0) ^ v23;
}

BOOL sub_10217A4(uint64_t a1, int ***a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  if (*a2)
  {
    v7 = a2[1];
    v8 = sub_F6D024(*a2);
    v9 = v8;
    if (!v6)
    {
      if (v7 < v8)
      {
        goto LABEL_16;
      }

      return 0;
    }

    v10 = sub_F6D024(v6);
    if (v7 < v9 && v5 < v10)
    {
      v12 = sub_F6D17C(v4, v7);
      if (v12 != sub_F6D17C(v6, v5))
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (v7 < v9 == v5 < v10)
    {
      return 0;
    }
  }

  else if (!v6 || v5 >= sub_F6D024(a2[2]))
  {
    return 0;
  }

LABEL_16:
  v13 = sub_F6D17C(*a2, a2[1]);
  v14 = sub_F6D17C(a2[2], a2[3]);
  if (*(v13 + 18) == *(v14 + 18) && *(v13 + 8) == *(v14 + 8))
  {
    return 1;
  }

  v16 = (*v13 - **v13);
  if (*v16 < 0x9Bu)
  {
    return 0;
  }

  v17 = v16[77];
  if (!v17)
  {
    return 0;
  }

  if ((*(*v13 + v17) & 4) == 0)
  {
    return 0;
  }

  v18 = (*v14 - **v14);
  if (*v18 < 0x9Bu)
  {
    return 0;
  }

  v19 = v18[77];
  if (!v19 || (*(*v14 + v19) & 4) == 0)
  {
    return 0;
  }

  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v25 = &v26;
  v26 = 0.0;
  sub_1021344(v21, v22, v23, v24 + 1, &v25);
  return fabs(v26) >= *(a1 + 1016);
}

uint64_t sub_1021940(uint64_t a1, uint64_t a2)
{
  v3 = sub_F6D17C(*a2, *(a2 + 8));
  v4 = (*v3 - **v3);
  if (*v4 < 0x9Bu)
  {
    return 0;
  }

  v5 = v4[77];
  if (!v5 || (*(*v3 + v5 + 3) & 2) == 0)
  {
    return 0;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  return sub_1027E74(v7, v8, v9, v10);
}

uint64_t sub_10219BC(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = v3 + 1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*a2)
  {
    v7 = sub_F6D024(*a2);
    v8 = v7;
    if (v5)
    {
      v9 = sub_F6D024(v5);
      if (v4 < v8 && v6 < v9)
      {
        v16 = sub_F6D17C(v2, v3 + 1);
        if (v16 != sub_F6D17C(v5, v6))
        {
          goto LABEL_19;
        }

        return 0;
      }

      if (v4 < v8 == v6 < v9)
      {
        return 0;
      }
    }

    else if (v4 >= v7)
    {
      return 0;
    }

LABEL_19:
    v15 = 0;
    for (i = v3 + 2; ; ++i)
    {
      v18 = sub_F6D17C(v2, i - 1);
      v19 = (*v18 - **v18);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v15 += *(*v18 + v20);
        v21 = sub_F6D024(v2);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = sub_F6D024(v2);
        if (!v5)
        {
LABEL_20:
          if (i >= v21)
          {
            return v15;
          }

          continue;
        }
      }

      v22 = sub_F6D024(v5);
      if (i >= v21 || v6 >= v22)
      {
        if (i < v21 == v6 < v22)
        {
          return v15;
        }
      }

      else
      {
        v23 = sub_F6D17C(v2, i);
        if (v23 == sub_F6D17C(v5, v6))
        {
          return v15;
        }
      }
    }
  }

  if (!v5 || v6 >= sub_F6D024(*(a2 + 16)))
  {
    return 0;
  }

  v12 = sub_F6D17C(0, v3 + 1);
  v13 = (*v12 - **v12);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = *(*v12 + v14);
    if (v6 < sub_F6D024(v5))
    {
LABEL_34:
      v24 = v3 + 2;
      do
      {
        while (1)
        {
          v25 = sub_F6D17C(0, v24);
          v26 = (*v25 - **v25);
          if (*v26 >= 9u)
          {
            v27 = v26[4];
            if (v27)
            {
              break;
            }
          }

          ++v24;
          if (v6 >= sub_F6D024(v5))
          {
            return v15;
          }
        }

        v15 += *(*v25 + v27);
        ++v24;
      }

      while (v6 < sub_F6D024(v5));
    }
  }

  else
  {
    v15 = 0;
    if (v6 < sub_F6D024(v5))
    {
      goto LABEL_34;
    }
  }

  return v15;
}

double sub_1021C74(uint64_t a1, void **a2, int a3)
{
  sub_1021E7C(a1, a2, 1, (a1 + 1208));
  v6 = *(sub_F6D17C(*a2, a2[1]) + 32);
  v7 = sub_3E916C(*(a1 + 8), v6 & 0xFFFFFFFFFFFFFFLL);
  v8 = v7;
  if (a3)
  {
    v9 = *(a1 + 8);
    v10 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL);
    v11 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v8 / v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = v7;
  }

  v13 = *(sub_F6D17C(a2[2], a2[3]) + 32);
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  v15 = sub_3E916C(*(a1 + 8), v13 & 0xFFFFFFFFFFFFLL | (((v13 & 0xFF000000000000) == 0) << 48));
  v16 = v15;
  if (a3)
  {
    v17 = *(a1 + 8);
    v18 = sub_4345A0(v17, v14);
    v19 = sub_4345A0(v17, v14 | 0x1000000000000);
    if (v19 <= v18)
    {
      v19 = v18;
    }

    i = 0.0;
    v21 = 0.0;
    if (v19)
    {
      v21 = v16 / v19;
    }

    v22 = *(a1 + 1208);
    v23 = *(a1 + 1216);
    while (v22 != v23)
    {
      v24 = *v22;
      v25 = sub_3E916C(*(a1 + 8), *v22);
      v26 = *(a1 + 8);
      v27 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL);
      v28 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v28 <= v27)
      {
        v28 = v27;
      }

      v29 = 0.0;
      if (v28)
      {
        v29 = v25 / v28;
      }

      i = i + v29;
      ++v22;
    }
  }

  else
  {
    v21 = v15;
    v30 = *(a1 + 1208);
    v31 = *(a1 + 1216);
    for (i = 0.0; v30 != v31; i = i + sub_3E916C(*(a1 + 8), v32))
    {
      v32 = *v30++;
    }
  }

  return v12 + v21 + i;
}

void sub_1021E7C(uint64_t *a1, void **a2, int a3, void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  a1[158] = a1[157];
  v8 = sub_F6D17C(*a2, a2[1]);
  v9 = sub_3116D0(v8);
  v113 = a1 + 161;
  v10 = a1[162];
  v11 = a1[161];
  v12 = ((v10 - v11) << 6) - 1;
  if (v10 == v11)
  {
    v12 = 0;
  }

  v13 = a1[165] + a1[164];
  if (v12 == v13)
  {
    sub_102724C(a1 + 160);
    v11 = a1[161];
    v13 = a1[165] + a1[164];
  }

  *(*(v11 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = v9;
  ++a1[165];
  v14 = a1[158];
  v15 = a1[159];
  v115 = a3;
  if (v14 < v15)
  {
    *v14 = v9;
    a1[158] = (v14 + 1);
    v16 = a1[165];
    if (!v16)
    {
      return;
    }

    goto LABEL_20;
  }

  v17 = a1[157];
  v18 = v14 - v17;
  v19 = (v14 - v17) >> 3;
  v20 = v19 + 1;
  if ((v19 + 1) >> 61)
  {
LABEL_126:
    sub_1794();
  }

  v21 = v15 - v17;
  if (v21 >> 2 > v20)
  {
    v20 = v21 >> 2;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    v22 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 61))
    {
      operator new();
    }

LABEL_125:
    sub_1808();
  }

  v23 = (v14 - v17) >> 3;
  v24 = (8 * v19);
  v25 = (8 * v19 - 8 * v23);
  *v24 = v9;
  v26 = v24 + 1;
  memcpy(v25, v17, v18);
  a1[157] = v25;
  a1[158] = v26;
  a1[159] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  a3 = v115;
  a1[158] = v26;
  v16 = a1[165];
  if (v16)
  {
LABEL_20:
    v114 = v4;
    while (1)
    {
      v27 = a1[161];
      v28 = a1[164];
      v29 = (*(v27 + ((v28 >> 6) & 0x3FFFFFFFFFFFFF8)))[v28 & 0x1FF];
      a1[165] = v16 - 1;
      a1[164] = v28 + 1;
      if (v28 + 1 >= 0x400)
      {
        operator delete(*v27);
        a1[161] += 8;
        a1[164] -= 512;
      }

      sub_31BA24(*a1, v29, a1 + 148, a3 == 1, 0, 0);
      v30 = a1[148];
      v31 = a1[149];
      if (v30 != v31)
      {
        break;
      }

LABEL_21:
      v16 = a1[165];
      if (!v16)
      {
        return;
      }
    }

    v116 = a1[149];
    while (1)
    {
      v33 = *v30;
      v34 = (*v30 - **v30);
      v35 = *v34;
      if (a3)
      {
        if (!*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77)
            {
              goto LABEL_62;
            }

            v38 = v34[59];
            if (!v38)
            {
              goto LABEL_62;
            }

LABEL_60:
            v39 = *(v33 + v38);
            LODWORD(v40) = *(v30 + 8);
            v41 = a1[157];
            v42 = a1[158];
            if (v41 != v42)
            {
              goto LABEL_65;
            }

            goto LABEL_67;
          }

          goto LABEL_42;
        }

        if (v34[3])
        {
          v36 = v34[3];
          goto LABEL_43;
        }

        v43 = *(v33 + v34[60]);
        v44 = *(v30 + 8);
        v39 = HIWORD(v43);
        v45 = sub_57A90(v44);
        v46 = v45 >> 1;
        v47 = v45 & 0xFE;
        v48 = v44 & ~(-1 << (v45 & 0xFE));
        v49 = sub_581D8(v48);
        v50 = sub_581D8(v48 >> 1);
        v51 = v49 + v43;
        a3 = v115;
        v52 = v50 + (v43 >> 8);
        v53 = ((((((v51 & ~(v51 >> 31)) - v51 + (v51 >> 31)) >> v46) + (v51 >> 31)) << v46) + v51) % (1 << v46);
        v54 = ((((((v52 & ~(v52 >> 31)) - v52 + (v52 >> 31)) >> v46) + (v52 >> 31)) << v46) + v52) % (1 << v46);
        v55 = -1 << v46;
        v31 = v116;
      }

      else
      {
        if (*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77 || (v38 = v34[59]) == 0)
            {
LABEL_62:
              v39 = 0;
              LODWORD(v40) = *(v30 + 8);
              v41 = a1[157];
              v42 = a1[158];
              if (v41 != v42)
              {
                goto LABEL_65;
              }

              goto LABEL_67;
            }

            goto LABEL_60;
          }

LABEL_42:
          v36 = v37;
LABEL_43:
          v39 = __ROR8__(*(v33 + v36), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        if (v34[3])
        {
          v39 = __ROR8__(*(v33 + v34[3]), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        v56 = *(v33 + v34[60]);
        v57 = *(v30 + 8);
        v39 = HIWORD(v56);
        v58 = sub_57A90(v57);
        v59 = v58 >> 1;
        v47 = v58 & 0xFE;
        v60 = v57 & ~(-1 << (v58 & 0xFE));
        v61 = sub_581D8(v60);
        v62 = sub_581D8(v60 >> 1);
        v63 = v61 + v56;
        a3 = v115;
        v64 = v62 + (v56 >> 8);
        v31 = v116;
        v53 = ((((((v63 & ~(v63 >> 31)) - v63 + (v63 >> 31)) >> v59) + (v63 >> 31)) << v59) + v63) % (1 << v59);
        v54 = ((((((v64 & ~(v64 >> 31)) - v64 + (v64 >> 31)) >> v59) + (v64 >> 31)) << v59) + v64) % (1 << v59);
        v55 = -1 << v59;
      }

      if (~v55 < v53)
      {
        v65 = ~v55;
      }

      else
      {
        v65 = v53;
      }

      if (~v55 < v54)
      {
        v66 = ~v55;
      }

      else
      {
        v66 = v54;
      }

      v67 = 1 << v47;
      v4 = v114;
      sub_58168(v65, v66);
      LODWORD(v40) = v68 | v67;
      v41 = a1[157];
      v42 = a1[158];
      if (v41 != v42)
      {
LABEL_65:
        while (*v41 != v40 || v41[1] != v39)
        {
          v41 += 2;
          if (v41 == v42)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_67:
      if (v41 != v42)
      {
        goto LABEL_29;
      }

LABEL_68:
      v69 = *(v30 + 18);
      v70 = *(v30 + 8);
      v71 = sub_F6D17C(*a2, a2[1]);
      if (v70 == *(v71 + 32) && v69 == *(v71 + 36))
      {
        goto LABEL_29;
      }

      v73 = *(v30 + 18);
      v74 = *(v30 + 8);
      v75 = sub_F6D17C(a2[2], a2[3]);
      if (v74 == *(v75 + 32) && v73 == *(v75 + 36))
      {
        goto LABEL_29;
      }

      v77 = *v30;
      v78 = (*v30 - **v30);
      v79 = *v78;
      if (v79 >= 0x9B && v78[77] && (v80 = *(v77 + v78[77]), (v80 & 0x2000000) != 0))
      {
        if ((v80 & 0x4000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v81 = v30[1];
        if (v81 && (v82 = (v81 - *v81), *v82 >= 0x11u) && (v83 = v82[8]) != 0)
        {
          v84 = *(v81 + v83);
          if (v79 < 0x9B || (v84 & 4) != 0)
          {
            if ((v84 & 4) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_102;
          }
        }

        else if (v79 < 0x9B)
        {
          goto LABEL_91;
        }

        v86 = v78[77];
        if (!v86 || (*(v77 + v86 + 2) & 1) == 0)
        {
LABEL_91:
          v87 = v30[4];
          v89 = v4[1];
          v88 = v4[2];
          if (v89 < v88)
          {
            *v89 = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = (v89 + 1);
          }

          else
          {
            v90 = *v4;
            v91 = v89 - *v4;
            v92 = v91 >> 3;
            v93 = (v91 >> 3) + 1;
            if (v93 >> 61)
            {
              sub_1794();
            }

            v94 = v88 - v90;
            if (v94 >> 2 > v93)
            {
              v93 = v94 >> 2;
            }

            if (v94 >= 0x7FFFFFFFFFFFFFF8)
            {
              v95 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              if (!(v95 >> 61))
              {
                operator new();
              }

              goto LABEL_125;
            }

            *(8 * v92) = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = 8 * v92 + 8;
            memcpy(0, v90, v91);
            *v4 = 0;
            v4[1] = v32;
            v4[2] = 0;
            if (v90)
            {
              operator delete(v90);
            }
          }

          a3 = v115;
          v4[1] = v32;
          goto LABEL_28;
        }
      }

LABEL_102:
      v96 = v40 | (v39 << 32);
      v97 = a1[158];
      v98 = a1[159];
      if (v97 >= v98)
      {
        v100 = a1[157];
        v101 = v97 - v100;
        v102 = (v97 - v100) >> 3;
        v103 = v102 + 1;
        if ((v102 + 1) >> 61)
        {
          goto LABEL_126;
        }

        v104 = v98 - v100;
        if (v104 >> 2 > v103)
        {
          v103 = v104 >> 2;
        }

        if (v104 >= 0x7FFFFFFFFFFFFFF8)
        {
          v105 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v105 = v103;
        }

        if (v105)
        {
          if (!(v105 >> 61))
          {
            operator new();
          }

          goto LABEL_125;
        }

        v106 = (v97 - v100) >> 3;
        v107 = (8 * v102);
        v108 = (8 * v102 - 8 * v106);
        *v107 = v96;
        v99 = v107 + 1;
        memcpy(v108, v100, v101);
        a1[157] = v108;
        a1[158] = v99;
        a1[159] = 0;
        if (v100)
        {
          operator delete(v100);
        }

        a3 = v115;
      }

      else
      {
        *v97 = v96;
        v99 = v97 + 8;
      }

      v109 = a1[162];
      v110 = *v113;
      v111 = ((v109 - *v113) << 6) - 1;
      a1[158] = v99;
      if (v109 == v110)
      {
        v111 = 0;
      }

      v112 = a1[165] + a1[164];
      if (v111 == v112)
      {
        sub_102724C(a1 + 160);
        v110 = a1[161];
        v112 = a1[165] + a1[164];
      }

      *(*(v110 + ((v112 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v112 & 0x1FF)) = v96;
      ++a1[165];
LABEL_28:
      v31 = v116;
LABEL_29:
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }
  }
}

double sub_10226C8(uint64_t a1, void **a2, char a3)
{
  v4 = *(a1 + 1008);
  v11 = a3;
  v5 = sub_FCE098((a1 + 32), a2, v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = 0.0;
  if (*v5 != v7)
  {
    do
    {
      v12[0] = &v11;
      v12[1] = a1;
      sub_10280C4(v6, v12);
      v8 = v8 + v9;
      v6 += 4;
    }

    while (v6 != v7);
  }

  return v8;
}

void sub_10229BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1022CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1022D30(double *a1, void *a2)
{
  v6 = 16;
  strcpy(__p, "min_u_turn_angle");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1023198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1023200(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1AF0(a2);
  a1[3] = sub_3AF144(a2);
  sub_FCC964();
}

void sub_102333C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_4199F0((v15 + 32));
  _Unwind_Resume(a1);
}

unint64_t sub_102339C(uint64_t a1, uint64_t a2)
{
  v3 = sub_4D1F50(*a2, *(a2 + 8));
  v4 = (*v3 - **v3);
  if (*v4 >= 0x2Fu && (v5 = v4[23]) != 0 && ((v6 = *(*v3 + v5), v7 = v6 > 0x2D, v8 = (1 << v6) & 0x208040000000, !v7) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (v10 = sub_4D1F50(*(a2 + 16), *(a2 + 24)), v11 = (*v10 - **v10), *v11 >= 0x2Fu) && (v12 = v11[23]) != 0 && (v13 = *(*v10 + v12), v13 <= 0x2D)))
  {
    return (0x208040000000uLL >> v13) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1023460(uint64_t a1, void **a2, unsigned int a3)
{
  v6 = sub_4D1F50(*a2, a2[1]);
  v7 = sub_4D1F50(a2[2], a2[3]);
  v8 = (*v6 - **v6);
  if (*v8 < 0x9Bu)
  {
    return 1;
  }

  v9 = v8[77];
  if (!v9)
  {
    return 1;
  }

  if ((~*(*v6 + v9) & 0xA000000) != 0)
  {
    return 1;
  }

  v10 = (*v7 - **v7);
  if (*v10 < 0x9Bu)
  {
    return 1;
  }

  v11 = v10[77];
  if (!v11 || (~*(*v7 + v11) & 0xA000000) != 0)
  {
    return 1;
  }

  if (*(a1 + 1048 + 8 * a3) == 0.0)
  {
    return sub_312358(v6, v7[4] & 0xFFFFFFFFFFFFFFLL, 1, 0);
  }

  v12 = v7;
  v13 = *(a1 + 1008);
  v20 = a3;
  v14 = sub_FCCD60((a1 + 32), a2, v13);
  v15 = *v14;
  v16 = v14[1];
  v17 = 0.0;
  if (*v14 != v16)
  {
    do
    {
      v21[0] = &v20;
      v21[1] = a1;
      sub_10280C4(v15, v21);
      v17 = v17 + v18;
      v15 += 4;
    }

    while (v15 != v16);
  }

  v7 = v12;
  if (v17 >= *(a1 + 1048 + 8 * a3))
  {
    return sub_312358(v6, v7[4] & 0xFFFFFFFFFFFFFFLL, 1, 0);
  }

  else
  {
    return 1;
  }
}

double sub_10235B8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = &v8;
  v8 = 0.0;
  sub_10235F8(v2, v3, v4, v5 + 1, &v7);
  return v8;
}

int **sub_10235F8(int **result, unint64_t a2, void *a3, unint64_t a4, double **a5)
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
        if (a2 < v10 == a4 < result)
        {
          return result;
        }
      }

      else
      {
        v11 = sub_4D1F50(v9, a2);
        result = sub_4D1F50(a3, a4);
        if (v11 == result)
        {
          return result;
        }
      }

      goto LABEL_13;
    }

    if (a2 < result)
    {
      v12 = 1;
      goto LABEL_22;
    }
  }

  else if (a3)
  {
    result = sub_4D1DC0(a3);
    if (a4 < result)
    {
LABEL_13:
      v12 = 0;
      while (1)
      {
LABEL_22:
        v17 = a2++;
        if (v9)
        {
          result = sub_4D1DC0(v9);
          v18 = result;
          if (v12)
          {
            if (a2 >= result)
            {
              return result;
            }
          }

          else
          {
            result = sub_4D1DC0(a3);
            if (a2 >= v18 || a4 >= result)
            {
              if (a2 < v18 == a4 < result)
              {
                return result;
              }
            }

            else
            {
              v19 = sub_4D1F50(v9, a2);
              result = sub_4D1F50(a3, a4);
              if (v19 == result)
              {
                return result;
              }
            }
          }
        }

        else
        {
          if (v12)
          {
            return result;
          }

          result = sub_4D1DC0(a3);
          if (a4 >= result)
          {
            return result;
          }
        }

        v20 = sub_4D1F50(v9, v17);
        result = sub_4D1F50(v9, a2);
        v21 = (*v20 - **v20);
        v22 = *v21;
        if (*(v20 + 38))
        {
          if (v22 >= 0x49)
          {
            v23 = v21[36];
            if (v23)
            {
              goto LABEL_40;
            }
          }
        }

        else if (v22 >= 0x4B)
        {
          v23 = v21[37];
          if (v23)
          {
LABEL_40:
            v24 = *(*v20 + v23);
            v25 = *result;
            v26 = (*result - **result);
            v27 = *v26;
            if (*(result + 38))
            {
              goto LABEL_45;
            }

            goto LABEL_41;
          }
        }

        v24 = -1;
        v25 = *result;
        v26 = (*result - **result);
        v27 = *v26;
        if (*(result + 38))
        {
LABEL_45:
          if (v27 < 0x4B)
          {
            goto LABEL_14;
          }

          v28 = v26[37];
          if (!v28)
          {
            goto LABEL_14;
          }

          goto LABEL_47;
        }

LABEL_41:
        if (v27 < 0x49 || (v28 = v26[36]) == 0)
        {
LABEL_14:
          v13 = 0xFFFF;
          goto LABEL_15;
        }

LABEL_47:
        v13 = *(v25 + v28);
LABEL_15:
        v14 = v24 + 18000;
        v15 = v24 - 18000;
        if ((v14 >> 5) < 0x465u)
        {
          v15 = v14;
        }

        v16 = v13 - v15;
        if (v16 > 18000)
        {
          v16 -= 36000;
        }

        if (v16 < -17999)
        {
          v16 += 36000;
        }

        **a5 = **a5 + v16 / 100.0;
      }
    }
  }

  return result;
}

uint64_t sub_10238A0(uint64_t a1, int ***a2)
{
  if (sub_1023A58(a1, a2))
  {
    return 1;
  }

  v5 = sub_4D1F50(*a2, a2[1]);
  v6 = sub_4D1F50(a2[2], a2[3]);
  v7 = v5[1];
  v8 = (v7 - *v7);
  v9 = *v8;
  if (*(v5 + 38))
  {
    if (v9 < 5)
    {
      goto LABEL_13;
    }

    v10 = v8[2];
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else if (v9 < 9 || (v10 = v8[4]) == 0)
  {
LABEL_13:
    v11 = 0;
    v12 = *(v6 + 8);
    v13 = (v12 - *v12);
    v14 = *v13;
    if (*(v6 + 38))
    {
      goto LABEL_14;
    }

LABEL_10:
    if (v14 >= 5)
    {
      v15 = v13[2];
      if (v15)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v11 = *(v7 + v10);
  v12 = *(v6 + 8);
  v13 = (v12 - *v12);
  v14 = *v13;
  if (!*(v6 + 38))
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v14 < 9)
  {
    goto LABEL_17;
  }

  v15 = v13[4];
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_16:
  v16 = *(v12 + v15);
LABEL_18:
  v17 = v11 + 18000;
  v18 = v11 - 18000;
  if ((v17 >> 5) < 0x465u)
  {
    v18 = v17;
  }

  v19 = v16 - v18;
  if (v19 > 18000)
  {
    v19 -= 36000;
  }

  if (v19 < -17999)
  {
    v19 += 36000;
  }

  v20 = v19 / 100.0;
  if (fabs(v20) < *(a1 + 1024))
  {
    return 0;
  }

  v21 = (*v5 - **v5);
  if (*v21 >= 0x9Bu && (v22 = v21[77]) != 0)
  {
    v23 = *(*v5 + v22 + 1) >> 7;
  }

  else
  {
    v23 = 0;
  }

  return (v20 < 0.0) ^ v23;
}

BOOL sub_1023A58(uint64_t a1, int ***a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  if (*a2)
  {
    v7 = a2[1];
    v8 = sub_4D1DC0(*a2);
    v9 = v8;
    if (!v6)
    {
      if (v7 < v8)
      {
        goto LABEL_16;
      }

      return 0;
    }

    v10 = sub_4D1DC0(v6);
    if (v7 < v9 && v5 < v10)
    {
      v12 = sub_4D1F50(v4, v7);
      if (v12 != sub_4D1F50(v6, v5))
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (v7 < v9 == v5 < v10)
    {
      return 0;
    }
  }

  else if (!v6 || v5 >= sub_4D1DC0(a2[2]))
  {
    return 0;
  }

LABEL_16:
  v13 = sub_4D1F50(*a2, a2[1]);
  v14 = sub_4D1F50(a2[2], a2[3]);
  if (*(v13 + 18) == *(v14 + 18) && *(v13 + 8) == *(v14 + 8))
  {
    return 1;
  }

  v16 = (*v13 - **v13);
  if (*v16 < 0x9Bu)
  {
    return 0;
  }

  v17 = v16[77];
  if (!v17)
  {
    return 0;
  }

  if ((*(*v13 + v17) & 4) == 0)
  {
    return 0;
  }

  v18 = (*v14 - **v14);
  if (*v18 < 0x9Bu)
  {
    return 0;
  }

  v19 = v18[77];
  if (!v19 || (*(*v14 + v19) & 4) == 0)
  {
    return 0;
  }

  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v25 = &v26;
  v26 = 0.0;
  sub_10235F8(v21, v22, v23, v24 + 1, &v25);
  return fabs(v26) >= *(a1 + 1016);
}

uint64_t sub_1023BF4(uint64_t a1, int ***a2)
{
  result = sub_10238A0(a1, a2);
  if (result)
  {
    v5 = sub_4D1F50(*a2, a2[1]);
    v6 = (*v5 - **v5);
    if (*v6 < 0x9Bu)
    {
      return 0;
    }

    v7 = v6[77];
    if (!v7)
    {
      return 0;
    }

    if ((~*(*v5 + v7) & 0xA000000) != 0)
    {
      return 0;
    }

    v8 = v5;
    v9 = sub_4D1F50(a2[2], a2[3]);
    v10 = (*v9 - **v9);
    if (*v10 >= 0x9Bu)
    {
      v11 = v10[77];
      if (v11)
      {
        if (*(*v9 + v11 + 3) & 8) != 0 && (sub_312358(v8, v9[4] & 0xFFFFFFFFFFFFFFLL, 1, 1))
        {
          return 0;
        }
      }
    }

    if (sub_311A24(*v8, *(v8 + 38)) < *(a1 + 1040))
    {
      return 0;
    }

    v12 = v8;
    v13 = *v8;
    v14 = **v8;
    v15 = (*v8 - v14);
    if (*v15 < 0x9Bu || (v16 = v15[77]) == 0 || (*(v13 + v16) & 4) == 0)
    {
      if (sub_31223C(v8, 1))
      {
        return 0;
      }

      v12 = v8;
      v13 = *v8;
      v14 = **v8;
    }

    v17 = (v13 - v14);
    v18 = *v17;
    if (*(v12 + 38))
    {
      if (v18 < 0x9B)
      {
        return 0;
      }

      v19 = v17[77];
      if (!v19)
      {
        return 0;
      }

      v20 = 5;
    }

    else
    {
      if (v18 < 0x9B)
      {
        return 0;
      }

      v19 = v17[77];
      if (!v19)
      {
        return 0;
      }

      v20 = 6;
    }

    if ((*(v13 + v19) & v20) != 0)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_1023DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1023E04(uint64_t a1, uint64_t a2)
{
  v3 = sub_4D1F50(*a2, *(a2 + 8));
  v4 = (*v3 - **v3);
  if (*v4 < 0x9Bu)
  {
    return 0;
  }

  v5 = v4[77];
  if (!v5 || (*(*v3 + v5 + 3) & 2) == 0)
  {
    return 0;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  return sub_102821C(v7, v8, v9, v10);
}

uint64_t sub_1023E80(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = v3 + 1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*a2)
  {
    v7 = sub_4D1DC0(*a2);
    v8 = v7;
    if (v5)
    {
      v9 = sub_4D1DC0(v5);
      if (v4 < v8 && v6 < v9)
      {
        v16 = sub_4D1F50(v2, v3 + 1);
        if (v16 != sub_4D1F50(v5, v6))
        {
          goto LABEL_19;
        }

        return 0;
      }

      if (v4 < v8 == v6 < v9)
      {
        return 0;
      }
    }

    else if (v4 >= v7)
    {
      return 0;
    }

LABEL_19:
    v15 = 0;
    for (i = v3 + 2; ; ++i)
    {
      v18 = sub_4D1F50(v2, i - 1);
      v19 = (*v18 - **v18);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v15 += *(*v18 + v20);
        v21 = sub_4D1DC0(v2);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = sub_4D1DC0(v2);
        if (!v5)
        {
LABEL_20:
          if (i >= v21)
          {
            return v15;
          }

          continue;
        }
      }

      v22 = sub_4D1DC0(v5);
      if (i >= v21 || v6 >= v22)
      {
        if (i < v21 == v6 < v22)
        {
          return v15;
        }
      }

      else
      {
        v23 = sub_4D1F50(v2, i);
        if (v23 == sub_4D1F50(v5, v6))
        {
          return v15;
        }
      }
    }
  }

  if (!v5 || v6 >= sub_4D1DC0(*(a2 + 16)))
  {
    return 0;
  }

  v12 = sub_4D1F50(0, v3 + 1);
  v13 = (*v12 - **v12);
  if (*v13 >= 9u && (v14 = v13[4]) != 0)
  {
    v15 = *(*v12 + v14);
    if (v6 < sub_4D1DC0(v5))
    {
LABEL_34:
      v24 = v3 + 2;
      do
      {
        while (1)
        {
          v25 = sub_4D1F50(0, v24);
          v26 = (*v25 - **v25);
          if (*v26 >= 9u)
          {
            v27 = v26[4];
            if (v27)
            {
              break;
            }
          }

          ++v24;
          if (v6 >= sub_4D1DC0(v5))
          {
            return v15;
          }
        }

        v15 += *(*v25 + v27);
        ++v24;
      }

      while (v6 < sub_4D1DC0(v5));
    }
  }

  else
  {
    v15 = 0;
    if (v6 < sub_4D1DC0(v5))
    {
      goto LABEL_34;
    }
  }

  return v15;
}

uint64_t sub_1024138(uint64_t a1, void **a2, unsigned int a3, int a4)
{
  v97 = a3;
  if (a4 != 2 && *(a1 + 8 * a3 + 1104) != 0.0)
  {
    return 0;
  }

  v7 = sub_4D1F50(*a2, a2[1]);
  v8 = (*v7 - **v7);
  if (*v8 < 0x9Bu)
  {
    return 0;
  }

  v9 = v8[77];
  if (!v9 || (*(*v7 + v9 + 3) & 2) == 0)
  {
    return 0;
  }

  if (*(a1 + 1080) != 1)
  {
    *(a1 + 1240) = *(a1 + 1232);
    v25 = *a2;
    v26 = a2[1];
    v27 = a2[2];
    v28 = a2[3];
    v91 = a1;
    v92 = a1 + 1232;
    sub_1026E00(v25, v26, v27, v28 + 1, &v91);
    if (*(a1 + 1232) == *(a1 + 1240))
    {
      return 0;
    }

    v29 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v30 = sub_3E916C(*(a1 + 8), v29 & 0xFFFFFFFFFFFFFFLL);
    v31 = v30;
    if (a3)
    {
      v32 = *(a1 + 8);
      v33 = sub_4345A0(v32, v29 & 0xFFFFFFFFFFFFLL);
      v34 = sub_4345A0(v32, v29 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v34 <= v33)
      {
        v34 = v33;
      }

      v35 = v34 ? v31 / v34 : 0.0;
    }

    else
    {
      v35 = v30;
    }

    v36 = *(sub_4D1F50(a2[2], a2[3]) + 32);
    v37 = sub_3E916C(*(a1 + 8), v36 & 0xFFFFFFFFFFFFFFLL);
    v38 = v37;
    if (a3)
    {
      v39 = *(a1 + 8);
      v40 = sub_4345A0(v39, v36 & 0xFFFFFFFFFFFFLL);
      v41 = sub_4345A0(v39, v36 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v41 <= v40)
      {
        v41 = v40;
      }

      v42 = v41 ? v38 / v41 : 0.0;
    }

    else
    {
      v42 = v37;
    }

    if (v42 >= v35)
    {
      v42 = v35;
    }

    v43 = a1 + 8 * a3;
    v44 = *(a1 + 1120) * v42 + 0.5;
    v45 = *(v43 + 1088) >= v44 ? *(v43 + 1088) : v44;
    v46 = *(a1 + 1232);
    v47 = *(a1 + 1240);
    if (v46 == v47)
    {
      return 0;
    }

    v90 = (a1 + 1104);
    while (1)
    {
      v48 = *v46 & 0xFFFFFFFFFFFFLL;
      v49 = v48 | (((*v46 & 0xFF000000000000) == 0) << 48);
      v50 = sub_3E916C(*(a1 + 8), v49);
      v51 = v50;
      if (a3)
      {
        v52 = *(a1 + 8);
        v53 = sub_4345A0(v52, v48);
        v54 = sub_4345A0(v52, v48 | 0x1000000000000);
        if (v54 <= v53)
        {
          v54 = v53;
        }

        if (v54)
        {
          if (v51 / v54 <= v45)
          {
            goto LABEL_62;
          }
        }

        else if (v45 >= 0.0)
        {
          goto LABEL_62;
        }
      }

      else if (v50 <= v45)
      {
        goto LABEL_62;
      }

      v55 = *(a1 + 24);
      v56 = sub_3E37C0(*(a1 + 16), v49);
      v57 = sub_2BC7A8(v55, v56);
      v58 = v57;
      if (a3)
      {
        v59 = *(a1 + 8);
        v60 = sub_4345A0(v59, v48);
        v61 = sub_4345A0(v59, v48 | 0x1000000000000);
        if (v61 <= v60)
        {
          v61 = v60;
        }

        if (v61)
        {
          if (v58 / v61 < v90[a3])
          {
            goto LABEL_62;
          }
        }

        else if (v90[a3] > 0.0)
        {
          goto LABEL_62;
        }
      }

      else if (v57 < *v90)
      {
        goto LABEL_62;
      }

      if (!sub_4BF020(*a1, v49, *(a1 + 1064), 1))
      {
        return (*(a1 + 1240) - *(a1 + 1232)) >> 3;
      }

LABEL_62:
      v62 = *v46;
      v63 = sub_3E916C(*(a1 + 8), *v46);
      v64 = v63;
      if (a3)
      {
        v65 = *(a1 + 8);
        v66 = sub_4345A0(v65, v62 & 0xFFFFFFFFFFFFLL);
        v67 = sub_4345A0(v65, v62 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
        if (v67 <= v66)
        {
          v67 = v66;
        }

        if (v67)
        {
          if (v64 / v67 <= v45)
          {
            goto LABEL_42;
          }
        }

        else if (v45 >= 0.0)
        {
          goto LABEL_42;
        }
      }

      else if (v63 <= v45)
      {
        goto LABEL_42;
      }

      v68 = *v46;
      v69 = *(a1 + 24);
      v70 = sub_3E37C0(*(a1 + 16), *v46);
      v71 = sub_2BC7A8(v69, v70);
      v72 = v71;
      if (a3)
      {
        v73 = *(a1 + 8);
        v74 = sub_4345A0(v73, v68 & 0xFFFFFFFFFFFFLL);
        v75 = sub_4345A0(v73, v68 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
        if (v75 <= v74)
        {
          v75 = v74;
        }

        if (v75)
        {
          if (v72 / v75 < v90[a3])
          {
            goto LABEL_42;
          }
        }

        else if (v90[a3] > 0.0)
        {
          goto LABEL_42;
        }
      }

      else if (v71 < *v90)
      {
        goto LABEL_42;
      }

      v76 = *a1;
      v77 = *v46;
      v78 = sub_2B51D8(*a1, *v46 & 0xFFFFFFFFFFFFLL);
      if (*(v76 + 7772) == 1)
      {
        v79 = sub_30C50C(v76 + 3896, v77, 0);
        v80 = &v79[-*v79];
        if (*v80 < 5u)
        {
          v81 = 0;
        }

        else
        {
          v81 = *(v80 + 2);
          if (v81)
          {
            v81 += &v79[*&v79[v81]];
          }
        }

        v82 = v81 + ((v77 >> 30) & 0x3FFFC) + 4 + *(v81 + ((v77 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v82 = 0;
      }

      v83 = sub_31D7E8(v76, v77 & 0xFFFFFFFFFFFFLL, 1);
      v91 = v78;
      v92 = v82;
      v93 = v83;
      v94 = v84;
      v95 = v77;
      v85 = sub_319BB0(&v91, 1, *a1);
      LODWORD(__p[0]) = v85;
      BYTE6(__p[0]) = BYTE6(v85);
      WORD2(__p[0]) = WORD2(v85);
      if (v85)
      {
        v86 = *a2;
        v87 = a2[1];
        v88 = a2[2];
        v89 = a2[3];
        v91 = __p;
        if ((sub_1027CD0(v86, v87, v88, v89, &v91) & 1) == 0 && !sub_4BF020(*a1, __p[0], *(a1 + 1064), 1))
        {
          return (*(a1 + 1240) - *(a1 + 1232)) >> 3;
        }
      }

LABEL_42:
      v10 = 0;
      if (++v46 == v47)
      {
        return v10;
      }
    }
  }

  v12 = sub_FCCD60((a1 + 32), a2, *(a1 + 1008));
  if (*v12 == v12[1])
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_4D1F50(*a2, a2[1]);
  v15 = sub_311A24(*v14, *(v14 + 38));
  v16 = sub_4D1F50(a2[2], a2[3]);
  v17 = sub_311A24(*v16, *(v16 + 38));
  if (v17 < v15)
  {
    v15 = v17;
  }

  v18 = *v13;
  if (v13[1] - *v13 == 32 && v18[2] - v18[1] == 8 && sub_59D570(*a1, *v18) < v15)
  {
    __p[0] = **(*v13 + 8);
    v19 = *a2;
    v20 = a2[1];
    v21 = a2[2];
    v22 = a2[3];
    v91 = __p;
    if (sub_1027840(v19, v20, v21, v22 + 1, &v91))
    {
      return 0;
    }
  }

  memset(__p, 0, sizeof(__p));
  v24 = *v13;
  v23 = v13[1];
  v91 = __p;
  LOBYTE(v92) = 0;
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_1024B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4B5A18(va);
  _Unwind_Resume(a1);
}

void sub_1024B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4B5A18(va);
  _Unwind_Resume(a1);
}

void sub_1024B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_1024BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_37484(va);
  _Unwind_Resume(a1);
}

double sub_1024BF4(uint64_t a1, void **a2, int a3)
{
  sub_1024DFC(a1, a2, 1, (a1 + 1208));
  v6 = *(sub_4D1F50(*a2, a2[1]) + 32);
  v7 = sub_3E916C(*(a1 + 8), v6 & 0xFFFFFFFFFFFFFFLL);
  v8 = v7;
  if (a3)
  {
    v9 = *(a1 + 8);
    v10 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL);
    v11 = sub_4345A0(v9, v6 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
    if (v11 <= v10)
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = v8 / v11;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v12 = v7;
  }

  v13 = *(sub_4D1F50(a2[2], a2[3]) + 32);
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  v15 = sub_3E916C(*(a1 + 8), v13 & 0xFFFFFFFFFFFFLL | (((v13 & 0xFF000000000000) == 0) << 48));
  v16 = v15;
  if (a3)
  {
    v17 = *(a1 + 8);
    v18 = sub_4345A0(v17, v14);
    v19 = sub_4345A0(v17, v14 | 0x1000000000000);
    if (v19 <= v18)
    {
      v19 = v18;
    }

    i = 0.0;
    v21 = 0.0;
    if (v19)
    {
      v21 = v16 / v19;
    }

    v22 = *(a1 + 1208);
    v23 = *(a1 + 1216);
    while (v22 != v23)
    {
      v24 = *v22;
      v25 = sub_3E916C(*(a1 + 8), *v22);
      v26 = *(a1 + 8);
      v27 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL);
      v28 = sub_4345A0(v26, v24 & 0xFFFFFFFFFFFFLL | 0x1000000000000);
      if (v28 <= v27)
      {
        v28 = v27;
      }

      v29 = 0.0;
      if (v28)
      {
        v29 = v25 / v28;
      }

      i = i + v29;
      ++v22;
    }
  }

  else
  {
    v21 = v15;
    v30 = *(a1 + 1208);
    v31 = *(a1 + 1216);
    for (i = 0.0; v30 != v31; i = i + sub_3E916C(*(a1 + 8), v32))
    {
      v32 = *v30++;
    }
  }

  return v12 + v21 + i;
}

void sub_1024DFC(uint64_t *a1, void **a2, int a3, void **a4)
{
  v4 = a4;
  a4[1] = *a4;
  a1[158] = a1[157];
  v8 = sub_4D1F50(*a2, a2[1]);
  v9 = sub_3116D0(v8);
  v113 = a1 + 161;
  v10 = a1[162];
  v11 = a1[161];
  v12 = ((v10 - v11) << 6) - 1;
  if (v10 == v11)
  {
    v12 = 0;
  }

  v13 = a1[165] + a1[164];
  if (v12 == v13)
  {
    sub_102724C(a1 + 160);
    v11 = a1[161];
    v13 = a1[165] + a1[164];
  }

  *(*(v11 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = v9;
  ++a1[165];
  v14 = a1[158];
  v15 = a1[159];
  v115 = a3;
  if (v14 < v15)
  {
    *v14 = v9;
    a1[158] = (v14 + 1);
    v16 = a1[165];
    if (!v16)
    {
      return;
    }

    goto LABEL_20;
  }

  v17 = a1[157];
  v18 = v14 - v17;
  v19 = (v14 - v17) >> 3;
  v20 = v19 + 1;
  if ((v19 + 1) >> 61)
  {
LABEL_126:
    sub_1794();
  }

  v21 = v15 - v17;
  if (v21 >> 2 > v20)
  {
    v20 = v21 >> 2;
  }

  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    v22 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (!(v22 >> 61))
    {
      operator new();
    }

LABEL_125:
    sub_1808();
  }

  v23 = (v14 - v17) >> 3;
  v24 = (8 * v19);
  v25 = (8 * v19 - 8 * v23);
  *v24 = v9;
  v26 = v24 + 1;
  memcpy(v25, v17, v18);
  a1[157] = v25;
  a1[158] = v26;
  a1[159] = 0;
  if (v17)
  {
    operator delete(v17);
  }

  a3 = v115;
  a1[158] = v26;
  v16 = a1[165];
  if (v16)
  {
LABEL_20:
    v114 = v4;
    while (1)
    {
      v27 = a1[161];
      v28 = a1[164];
      v29 = (*(v27 + ((v28 >> 6) & 0x3FFFFFFFFFFFFF8)))[v28 & 0x1FF];
      a1[165] = v16 - 1;
      a1[164] = v28 + 1;
      if (v28 + 1 >= 0x400)
      {
        operator delete(*v27);
        a1[161] += 8;
        a1[164] -= 512;
      }

      sub_31BA24(*a1, v29, a1 + 148, a3 == 1, 0, 0);
      v30 = a1[148];
      v31 = a1[149];
      if (v30 != v31)
      {
        break;
      }

LABEL_21:
      v16 = a1[165];
      if (!v16)
      {
        return;
      }
    }

    v116 = a1[149];
    while (1)
    {
      v33 = *v30;
      v34 = (*v30 - **v30);
      v35 = *v34;
      if (a3)
      {
        if (!*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77)
            {
              goto LABEL_62;
            }

            v38 = v34[59];
            if (!v38)
            {
              goto LABEL_62;
            }

LABEL_60:
            v39 = *(v33 + v38);
            LODWORD(v40) = *(v30 + 8);
            v41 = a1[157];
            v42 = a1[158];
            if (v41 != v42)
            {
              goto LABEL_65;
            }

            goto LABEL_67;
          }

          goto LABEL_42;
        }

        if (v34[3])
        {
          v36 = v34[3];
          goto LABEL_43;
        }

        v43 = *(v33 + v34[60]);
        v44 = *(v30 + 8);
        v39 = HIWORD(v43);
        v45 = sub_57A90(v44);
        v46 = v45 >> 1;
        v47 = v45 & 0xFE;
        v48 = v44 & ~(-1 << (v45 & 0xFE));
        v49 = sub_581D8(v48);
        v50 = sub_581D8(v48 >> 1);
        v51 = v49 + v43;
        a3 = v115;
        v52 = v50 + (v43 >> 8);
        v53 = ((((((v51 & ~(v51 >> 31)) - v51 + (v51 >> 31)) >> v46) + (v51 >> 31)) << v46) + v51) % (1 << v46);
        v54 = ((((((v52 & ~(v52 >> 31)) - v52 + (v52 >> 31)) >> v46) + (v52 >> 31)) << v46) + v52) % (1 << v46);
        v55 = -1 << v46;
        v31 = v116;
      }

      else
      {
        if (*(v30 + 38))
        {
          if (v35 < 5)
          {
            goto LABEL_62;
          }

          v37 = v34[2];
          if (!v37)
          {
            if (v35 < 0x77 || (v38 = v34[59]) == 0)
            {
LABEL_62:
              v39 = 0;
              LODWORD(v40) = *(v30 + 8);
              v41 = a1[157];
              v42 = a1[158];
              if (v41 != v42)
              {
                goto LABEL_65;
              }

              goto LABEL_67;
            }

            goto LABEL_60;
          }

LABEL_42:
          v36 = v37;
LABEL_43:
          v39 = __ROR8__(*(v33 + v36), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        if (v34[3])
        {
          v39 = __ROR8__(*(v33 + v34[3]), 32);
          v40 = HIDWORD(v39);
          v41 = a1[157];
          v42 = a1[158];
          if (v41 != v42)
          {
            goto LABEL_65;
          }

          goto LABEL_67;
        }

        v56 = *(v33 + v34[60]);
        v57 = *(v30 + 8);
        v39 = HIWORD(v56);
        v58 = sub_57A90(v57);
        v59 = v58 >> 1;
        v47 = v58 & 0xFE;
        v60 = v57 & ~(-1 << (v58 & 0xFE));
        v61 = sub_581D8(v60);
        v62 = sub_581D8(v60 >> 1);
        v63 = v61 + v56;
        a3 = v115;
        v64 = v62 + (v56 >> 8);
        v31 = v116;
        v53 = ((((((v63 & ~(v63 >> 31)) - v63 + (v63 >> 31)) >> v59) + (v63 >> 31)) << v59) + v63) % (1 << v59);
        v54 = ((((((v64 & ~(v64 >> 31)) - v64 + (v64 >> 31)) >> v59) + (v64 >> 31)) << v59) + v64) % (1 << v59);
        v55 = -1 << v59;
      }

      if (~v55 < v53)
      {
        v65 = ~v55;
      }

      else
      {
        v65 = v53;
      }

      if (~v55 < v54)
      {
        v66 = ~v55;
      }

      else
      {
        v66 = v54;
      }

      v67 = 1 << v47;
      v4 = v114;
      sub_58168(v65, v66);
      LODWORD(v40) = v68 | v67;
      v41 = a1[157];
      v42 = a1[158];
      if (v41 != v42)
      {
LABEL_65:
        while (*v41 != v40 || v41[1] != v39)
        {
          v41 += 2;
          if (v41 == v42)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_67:
      if (v41 != v42)
      {
        goto LABEL_29;
      }

LABEL_68:
      v69 = *(v30 + 18);
      v70 = *(v30 + 8);
      v71 = sub_4D1F50(*a2, a2[1]);
      if (v70 == *(v71 + 32) && v69 == *(v71 + 36))
      {
        goto LABEL_29;
      }

      v73 = *(v30 + 18);
      v74 = *(v30 + 8);
      v75 = sub_4D1F50(a2[2], a2[3]);
      if (v74 == *(v75 + 32) && v73 == *(v75 + 36))
      {
        goto LABEL_29;
      }

      v77 = *v30;
      v78 = (*v30 - **v30);
      v79 = *v78;
      if (v79 >= 0x9B && v78[77] && (v80 = *(v77 + v78[77]), (v80 & 0x2000000) != 0))
      {
        if ((v80 & 0x4000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v81 = v30[1];
        if (v81 && (v82 = (v81 - *v81), *v82 >= 0x11u) && (v83 = v82[8]) != 0)
        {
          v84 = *(v81 + v83);
          if (v79 < 0x9B || (v84 & 4) != 0)
          {
            if ((v84 & 4) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_102;
          }
        }

        else if (v79 < 0x9B)
        {
          goto LABEL_91;
        }

        v86 = v78[77];
        if (!v86 || (*(v77 + v86 + 2) & 1) == 0)
        {
LABEL_91:
          v87 = v30[4];
          v89 = v4[1];
          v88 = v4[2];
          if (v89 < v88)
          {
            *v89 = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = (v89 + 1);
          }

          else
          {
            v90 = *v4;
            v91 = v89 - *v4;
            v92 = v91 >> 3;
            v93 = (v91 >> 3) + 1;
            if (v93 >> 61)
            {
              sub_1794();
            }

            v94 = v88 - v90;
            if (v94 >> 2 > v93)
            {
              v93 = v94 >> 2;
            }

            if (v94 >= 0x7FFFFFFFFFFFFFF8)
            {
              v95 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v95 = v93;
            }

            if (v95)
            {
              if (!(v95 >> 61))
              {
                operator new();
              }

              goto LABEL_125;
            }

            *(8 * v92) = v87 & 0xFFFFFFFFFFFFFFLL;
            v32 = 8 * v92 + 8;
            memcpy(0, v90, v91);
            *v4 = 0;
            v4[1] = v32;
            v4[2] = 0;
            if (v90)
            {
              operator delete(v90);
            }
          }

          a3 = v115;
          v4[1] = v32;
          goto LABEL_28;
        }
      }

LABEL_102:
      v96 = v40 | (v39 << 32);
      v97 = a1[158];
      v98 = a1[159];
      if (v97 >= v98)
      {
        v100 = a1[157];
        v101 = v97 - v100;
        v102 = (v97 - v100) >> 3;
        v103 = v102 + 1;
        if ((v102 + 1) >> 61)
        {
          goto LABEL_126;
        }

        v104 = v98 - v100;
        if (v104 >> 2 > v103)
        {
          v103 = v104 >> 2;
        }

        if (v104 >= 0x7FFFFFFFFFFFFFF8)
        {
          v105 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v105 = v103;
        }

        if (v105)
        {
          if (!(v105 >> 61))
          {
            operator new();
          }

          goto LABEL_125;
        }

        v106 = (v97 - v100) >> 3;
        v107 = (8 * v102);
        v108 = (8 * v102 - 8 * v106);
        *v107 = v96;
        v99 = v107 + 1;
        memcpy(v108, v100, v101);
        a1[157] = v108;
        a1[158] = v99;
        a1[159] = 0;
        if (v100)
        {
          operator delete(v100);
        }

        a3 = v115;
      }

      else
      {
        *v97 = v96;
        v99 = v97 + 8;
      }

      v109 = a1[162];
      v110 = *v113;
      v111 = ((v109 - *v113) << 6) - 1;
      a1[158] = v99;
      if (v109 == v110)
      {
        v111 = 0;
      }

      v112 = a1[165] + a1[164];
      if (v111 == v112)
      {
        sub_102724C(a1 + 160);
        v110 = a1[161];
        v112 = a1[165] + a1[164];
      }

      *(*(v110 + ((v112 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v112 & 0x1FF)) = v96;
      ++a1[165];
LABEL_28:
      v31 = v116;
LABEL_29:
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_21;
      }
    }
  }
}