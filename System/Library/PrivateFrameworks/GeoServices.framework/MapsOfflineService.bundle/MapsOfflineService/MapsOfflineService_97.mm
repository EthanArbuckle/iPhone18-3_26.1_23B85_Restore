void sub_62B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  sub_3E5388(&a9);
  sub_1F1A8(&a28);
  sub_3E5388(&a30);
  _Unwind_Resume(a1);
}

char *sub_62B864@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      if (!v6 || v6 == 3)
      {
        break;
      }

      v4 += 248;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_13:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0x1000000000000;
  }

  else
  {
    v8 = *(result + 16);
    v9 = *(*(v4 + 8) - 8);
    v10 = sub_2B51D8(v8, v9 & 0xFFFFFFFFFFFFLL);
    if (*(v8 + 7772) == 1)
    {
      v11 = sub_30C50C(v8 + 3896, v9, 0);
      v12 = &v11[-*v11];
      if (*v12 < 5u)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v12 + 2);
        if (v13)
        {
          v13 += &v11[*&v11[v13]];
        }
      }

      v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v14 = 0;
    }

    result = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
    *a3 = v10;
    *(a3 + 8) = v14;
    *(a3 + 16) = result;
    *(a3 + 24) = v15;
    *(a3 + 32) = v9;
  }

  return result;
}

void sub_62B990(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v8[23] = 20;
  strcpy(v8, "EnrouteNoticeBuilder");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 0, *(a3 + 1566), &v9);
  sub_62FF18(a1, &v9, a2);
}

void sub_62BB7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_62BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_62BBFC(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_62BFA4(a1, a2, a3);
  sub_62C554(a1, a2, &v38);
  sub_6399F0(a3, a3[1], v38, v39, 0x4FCACE213F2B3885 * ((v39 - v38) >> 3));
  sub_62D194(a1, a2, &v36);
  sub_6399F0(a3, a3[1], v36, v37, 0x4FCACE213F2B3885 * ((v37 - v36) >> 3));
  sub_62D50C(a1, &v34);
  sub_6399F0(a3, a3[1], v34, v35, 0x4FCACE213F2B3885 * ((v35 - v34) >> 3));
  sub_62EAB0(a1, &v32);
  sub_6399F0(a3, a3[1], v32, v33, 0x4FCACE213F2B3885 * ((v33 - v32) >> 3));
  if (*(a1 + 13))
  {
    sub_631510(a2, v30);
    v6 = *v30;
  }

  else
  {
    v31 = 0;
    v6 = 0uLL;
    *v30 = 0u;
  }

  sub_6399F0(a3, a3[1], v6, *(&v6 + 1), 0x4FCACE213F2B3885 * ((*(&v6 + 1) - v6) >> 3));
  sub_62EF20(a1, a2, &__p);
  sub_6399F0(a3, a3[1], __p, v29, 0x4FCACE213F2B3885 * ((v29 - __p) >> 3));
  v7 = a3[1];
  v8 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v7 - *a3) >> 3));
  if (v7 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_63F1BC(*a3, v7, &v40, v9, 1);
  v10 = __p;
  if (__p)
  {
    v11 = v29;
    v12 = __p;
    if (v29 != __p)
    {
      do
      {
        v11 -= 616;
        sub_5C2320(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v29 = v10;
    operator delete(v12);
  }

  v13 = v30[0];
  if (v30[0])
  {
    v14 = v30[1];
    v15 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v14 -= 616;
        sub_5C2320(v14);
      }

      while (v14 != v13);
      v15 = v30[0];
    }

    v30[1] = v13;
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = v32;
    if (v33 != v32)
    {
      do
      {
        v17 -= 616;
        sub_5C2320(v17);
      }

      while (v17 != v16);
      v18 = v32;
    }

    v33 = v16;
    operator delete(v18);
  }

  v19 = v34;
  if (v34)
  {
    v20 = v35;
    v21 = v34;
    if (v35 != v34)
    {
      do
      {
        v20 -= 616;
        sub_5C2320(v20);
      }

      while (v20 != v19);
      v21 = v34;
    }

    v35 = v19;
    operator delete(v21);
  }

  v22 = v36;
  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 616;
        sub_5C2320(v23);
      }

      while (v23 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v26 -= 616;
        sub_5C2320(v26);
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_62BEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_5EC9F0(va);
  sub_5EC9F0(va1);
  sub_5EC9F0((v9 - 88));
  sub_5EC9F0((v9 - 64));
  sub_5EC9F0(v8);
  _Unwind_Resume(a1);
}

void sub_62BF70(_Unwind_Exception *a1)
{
  sub_5EC9F0((v2 - 64));
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_62BFA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  if (*result & 1) != 0 || (*(result + 1) & 1) != 0 || (*(result + 2) & 1) != 0 || (*(result + 3) & 1) != 0 || (*(result + 4) & 1) != 0 || (*(result + 5) & 1) != 0 || (*(result + 8) & 1) != 0 || (*(result + 12))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = (*(a2 + 1112) - *(a2 + 1104)) >> 3;
    v6 = 0x3795876FF3795877 * v5 - 1;
    if (0x3795876FF3795877 * v5 != 1)
    {
      v7 = 0;
      v8 = 640;
      do
      {
        result = sub_630A90(v4, v7, a2);
        if ((result & 0x100) != 0)
        {
          if (result > 0x16u)
          {
            v9 = 0;
          }

          else
          {
            v9 = dword_229C388[result & 0x1F];
          }

          sub_58738C(v9);
        }

        ++v7;
        v8 += 2616;
      }

      while (v6 != v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_62C43C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_62A6D8(va);
  sub_53E440(v4 - 216);
  sub_5EC9F0(v2);
  _Unwind_Resume(a1);
}

void sub_62C4C4(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_62C554(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 6))
  {
    v3 = a2[1530];
    v4 = a2[1531];
    if (v3 == v4)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 4) == 3 && *(v3 + 10) == 0)
        {
          v8 = v5 - v6;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
          v10 = v9 + 1;
          if (v9 + 1 > 0x555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v6 >> 4) > v10)
          {
            v10 = 0x5555555555555556 * (-v6 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v11 = 0x555555555555555;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v12 = v6;
          v13 = (16 * ((v5 - v6) >> 4));
          v14 = *v3;
          v15 = v3[2];
          v13[1] = v3[1];
          v13[2] = v15;
          *v13 = v14;
          v5 = (v13 + 3);
          v6 = 48 * v9 + 48 * (v8 / -48);
          v16 = v12;
          memcpy(&v13[3 * (v8 / -48)], v12, v8);
          if (v16)
          {
            operator delete(v16);
          }
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v6 != v5)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v33 = 0;
        __src = 0;
        v17 = sub_4D1DC0(a2);
        if (v17)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            v20 = __src;
            v21 = (v33 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1794();
            }

            v23 = -__src;
            if (-__src >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v25 = (8 * v21);
            v26 = &v25[-((v33 - __src) >> 3)];
            *v25 = v18;
            v27 = v25 + 1;
            memcpy(v26, __src, v33 - __src);
            __src = v26;
            if (v20)
            {
              operator delete(v20);
            }

            v33 = v27;
            v18 += sub_4D23F8(a2, i, v28);
          }
        }

        if (*v6 <= 0.0)
        {
          v29 = 4;
        }

        else
        {
          v29 = 3;
        }

        sub_58738C(v29);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_62CFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  sub_5EC9F0(a18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_62D194@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v6 = result;
    v21 = 0;
    result = sub_4D1DC0(a2);
    v7 = result;
    if (result)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = sub_4D1F50(a2, v9);
        if (!v8)
        {
          break;
        }

        v12 = (*v10 - **v10);
        v13 = *v12;
        if (*(v10 + 38))
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x10000;
        }

        else
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x8000;
        }

        v8 = (*(*v10 + v14) & v15) != 0;
LABEL_24:
        result = sub_4D23F8(a2, v9, v11);
        v21 += result;
        if (v7 == ++v9)
        {
          return result;
        }
      }

      if (*(v6 + 11) == 1)
      {
        v16 = *v10;
        v17 = (*v10 - **v10);
        v18 = *v17;
        if (*(v10 + 38))
        {
          if (v18 >= 0x47)
          {
            v19 = v17[35];
            if (v19)
            {
              if ((*&v16[v19] & 0x10000) != 0)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else if (v18 >= 0x47)
        {
          v20 = v17[35];
          if (v20)
          {
            if ((*&v16[v20] & 0x8000) != 0)
            {
LABEL_22:
              sub_58738C(6u);
            }
          }
        }
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }
  }

  return result;
}

void sub_62D438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(v3 + 296);
  sub_53A868(v3 + 136);
  sub_53E440(v3 + 16);
  *(v2 + 8) = v3;
  sub_62A6D8(va);
  sub_53E440(v4 - 216);
  sub_5EC9F0(v2);
  _Unwind_Resume(a1);
}

void sub_62D4A0(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_62D50C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 8) == 1)
  {
    operator new();
  }

  return result;
}

void sub_62E7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

void sub_62E818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p)
{
  sub_53E440(&STACK[0x280]);
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_62EAB0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 14) == 1)
  {
    sub_58738C(0xAu);
  }

  return result;
}

void sub_62EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53E440(v9 - 224);
  sub_5EC9F0(a9);
  _Unwind_Resume(a1);
}

void sub_62EE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 296);
  sub_53A868(v4 + 136);
  sub_53E440(v4 + 16);
  *(a2 + 8) = v4;
  sub_62A6D8(va);
  operator delete(v3);
  sub_53E440(v5 - 224);
  sub_5EC9F0(a2);
  _Unwind_Resume(a1);
}

uint64_t sub_62EF20@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v8 = a2[139];
    if (a2[138] != v8)
    {
      v5 = a2[138];
      do
      {
        v6 = *(v5 + 1960);
        v9 = v5;
        if (v6 != *(v5 + 1968))
        {
          if (*(result + 17) == 1 && sub_67E34C(v6) >= 2)
          {
            vcvtd_n_f64_s64(sub_4D2544(a2, **v6, 0, *(*(v6 + 8) - 8), 1u, v7), 1uLL);
          }

          sub_58738C(0x14u);
        }

        v5 += 2616;
      }

      while (v9 + 2616 != v8);
    }
  }

  return result;
}

void sub_62F834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v9 + 87) < 0)
  {
    operator delete(*(v9 + 64));
  }

  sub_55DB28(v8);
  *(v7 + 8) = v9;
  sub_62A6D8(va);
  sub_53E440(v10 - 248);
  sub_5EC9F0(v7);
  _Unwind_Resume(a1);
}

void sub_62F96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A868(v8 + 160);
  sub_53A868(va);
  sub_53E440(v9 - 248);
  sub_5EC9F0(v7);
  _Unwind_Resume(a1);
}

double sub_62F9D8(unint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    do
    {
      sub_62BBFC(a1, v5, &v13);
      v8 = v5[1534];
      if (v8)
      {
        v9 = v5[1535];
        v7 = v5[1534];
        if (v9 != v8)
        {
          v10 = v9 - 600;
          while (1)
          {
            sub_53A868(v10 + 440);
            sub_53A868(v10 + 280);
            sub_53A868(v10 + 120);
            if (*(v10 + 103) < 0)
            {
              operator delete(*(v10 + 80));
              if ((*(v10 + 71) & 0x80000000) == 0)
              {
LABEL_12:
                v12 = *(v10 + 32);
                if (v12 == -1)
                {
                  goto LABEL_9;
                }

LABEL_16:
                (off_266BE00[v12])(&v15, v10);
                goto LABEL_9;
              }
            }

            else if ((*(v10 + 71) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            operator delete(*(v10 + 48));
            v12 = *(v10 + 32);
            if (v12 != -1)
            {
              goto LABEL_16;
            }

LABEL_9:
            *(v10 + 32) = -1;
            v11 = v10 - 16;
            v10 -= 616;
            if (v11 == v8)
            {
              v7 = v5[1534];
              break;
            }
          }
        }

        v5[1535] = v8;
        operator delete(v7);
      }

      result = *&v13;
      *(v5 + 767) = v13;
      v5[1536] = v14;
      v5 += 1582;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_62FB20(_DWORD *a1, void *a2)
{
  v3 = 16;
  strcpy(__p, "cycling_dismount");
  *a1 = sub_629380(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_62FECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_62FF18(BOOL *a1, void *a2, uint64_t a3)
{
  v22 = 15;
  strcpy(__p, "enable_elevator");
  v6 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  v22 = 16;
  strcpy(__p, "enable_escalator");
  v8 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  a1[1] = v8;
  v22 = 13;
  strcpy(__p, "enable_stairs");
  v10 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  a1[2] = v10;
  v22 = 18;
  strcpy(__p, "enable_stairs_down");
  v12 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v13 = v12;
    operator delete(*__p);
    v12 = v13;
  }

  a1[3] = v12;
  v22 = 16;
  strcpy(__p, "enable_stairs_up");
  v14 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v15 = v14;
    operator delete(*__p);
    v14 = v15;
  }

  a1[4] = v14;
  v22 = 20;
  strcpy(__p, "enable_stairs_bridge");
  v16 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v17 = v16;
    operator delete(*__p);
    v16 = v17;
  }

  a1[5] = v16;
  v22 = 18;
  strcpy(__p, "enable_steep_hills");
  v18 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v19 = v18;
    operator delete(*__p);
    v18 = v19;
  }

  a1[6] = v18;
  v22 = 20;
  strcpy(__p, "enable_slope_display");
  if (sub_5F9D0(a2, __p))
  {
    v20 = 1;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v20 = sub_3B0454(a3);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_18:
      a1[7] = v20;
      operator new();
    }
  }

  operator delete(*__p);
  goto LABEL_18;
}

void sub_630A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_630A90(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_50EA30((a3 + 1104), a2);
  v7 = sub_50EA30((a3 + 1104), a2 + 1);
  if (*a1 == 1 && *(v6 + 632) != -1)
  {
    v12 = 1;
    v13 = 20;
    return v13 | (v12 << 8);
  }

  if (a1[12] == 1 && *(v6 + 160) == 22)
  {
    v12 = 1;
    v13 = 15;
    return v13 | (v12 << 8);
  }

  if (a1[15] == 1 && *(v6 + 384) != 2 && *(v7 + 384) == 2)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    v11 = *(v6 + 640);
    v12 = *(v6 + 680);
    if (v11 != -1 && v12 == 1)
    {
      v13 = 1;
      return v13 | (v12 << 8);
    }

    if (v11 != -1 && v12 == 2)
    {
      v12 = 1;
      v13 = 2;
      return v13 | (v12 << 8);
    }

    if (v11 != -1)
    {
      v13 = 0;
      goto LABEL_43;
    }
  }

  v15 = *(v6 + 2420);
  if (a1[5] == 1 && v15 == 1)
  {
    v12 = 1;
    v13 = 6;
    return v13 | (v12 << 8);
  }

  v13 = 0;
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = 0;
  }

  if (a1[2] != 1 || *(v6 + 624) == -1)
  {
    v12 = 0;
    return v13 | (v12 << 8);
  }

  v12 = 0;
  if ((v16 & 1) == 0)
  {
    v17 = *(v6 + 680);
    if (a1[4] == 1 && v17 == 1)
    {
      v12 = 1;
      v13 = 4;
      return v13 | (v12 << 8);
    }

    if ((a1[3] & (v17 == 2)) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

LABEL_43:
    v12 = 1;
  }

  return v13 | (v12 << 8);
}

void sub_630CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_630CD0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_64B998(&v42);
  sub_64B998(&v57);
  sub_64B998(&v72);
  sub_638CC4(a2, __p);
  v16 = v41;
  v17 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v16 = __p[1];
  }

  if (v16)
  {
    v18 = sub_9274F4(a1[17], __p);
    sub_64BC50(v39, v18, (a1[15] + 1177));
    sub_53D784(&v42, v39);
    sub_53A868(v39);
    sub_641D54(a1, a2, a3, a4, a5, a6, v39);
    sub_53D784(&v57, v39);
    sub_53A868(v39);
    sub_642290(a7);
    *a8 = v42;
    v19 = v45;
    *(a8 + 16) = v43;
    v42 = 0uLL;
    *(a8 + 24) = v44;
    *(a8 + 40) = v19;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    *(a8 + 48) = v46;
    v20 = v49;
    *(a8 + 64) = v47;
    v46 = 0uLL;
    *(a8 + 72) = v48;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    v21 = v50;
    *(a8 + 88) = v20;
    *(a8 + 96) = v21;
    LODWORD(v21) = v51;
    *(a8 + 108) = v52;
    *(a8 + 104) = v21;
    v22 = v53;
    v23 = v56;
    *(a8 + 128) = v54;
    *(a8 + 112) = v22;
    v50 = 0;
    v53 = 0uLL;
    v24 = v55;
    *(a8 + 152) = v23;
    *(a8 + 136) = v24;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    *(a8 + 160) = v57;
    v25 = v60;
    *(a8 + 176) = v58;
    v57 = 0uLL;
    v58 = 0;
    *(a8 + 184) = v59;
    *(a8 + 200) = v25;
    v59 = 0uLL;
    *(a8 + 208) = v61;
    *(a8 + 224) = v62;
    v62 = 0;
    v60 = 0;
    v61 = 0uLL;
    *(a8 + 232) = v63;
    v63 = 0uLL;
    v26 = v65;
    *(a8 + 248) = v64;
    *(a8 + 256) = v26;
    LODWORD(v26) = v66;
    *(a8 + 268) = v67;
    *(a8 + 264) = v26;
    v27 = v68;
    v28 = v71;
    *(a8 + 288) = v69;
    *(a8 + 272) = v27;
    v64 = 0;
    v65 = 0;
    v68 = 0uLL;
    v29 = v70;
    *(a8 + 312) = v28;
    *(a8 + 296) = v29;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    *(a8 + 320) = v72;
    v72 = 0uLL;
    v30 = v73;
    v31 = v74;
    v73 = 0;
    *(a8 + 336) = v30;
    *(a8 + 344) = v31;
    v74 = 0;
    v32 = v75;
    v33 = v76;
    v75 = 0uLL;
    *(a8 + 352) = v32;
    *(a8 + 368) = v33;
    v76 = 0uLL;
    v34 = v78;
    *(a8 + 384) = v77;
    *(a8 + 392) = v34;
    *(a8 + 400) = v79;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    *(a8 + 416) = v80;
    LODWORD(v30) = v81;
    *(a8 + 428) = v82;
    *(a8 + 424) = v30;
    v35 = v83;
    v36 = v86;
    *(a8 + 448) = v84;
    *(a8 + 432) = v35;
    v80 = 0;
    v83 = 0uLL;
    v84 = 0;
    v37 = v85;
    *(a8 + 472) = v36;
    *(a8 + 456) = v37;
    v85 = 0uLL;
    v86 = 0;
    v17 = v41;
  }

  else
  {
    *(a8 + 448) = 0u;
    *(a8 + 464) = 0u;
    *(a8 + 416) = 0u;
    *(a8 + 432) = 0u;
    *(a8 + 384) = 0u;
    *(a8 + 400) = 0u;
    *(a8 + 352) = 0u;
    *(a8 + 368) = 0u;
    *(a8 + 320) = 0u;
    *(a8 + 336) = 0u;
    *(a8 + 288) = 0u;
    *(a8 + 304) = 0u;
    *(a8 + 256) = 0u;
    *(a8 + 272) = 0u;
    *(a8 + 224) = 0u;
    *(a8 + 240) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 208) = 0u;
    *(a8 + 160) = 0u;
    *(a8 + 176) = 0u;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    sub_64B998(a8 + 160);
    sub_64B998(a8 + 320);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v72);
  sub_53A868(&v57);
  return sub_53A868(&v42);
}

void sub_631068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_6310FC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_64B998(&v38);
  sub_64B998(&v53);
  sub_64B998(&v68);
  sub_638CC4(a2, __p);
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v14 = sub_9274F4(a1[17], __p);
    sub_64BC50(v35, v14, (a1[15] + 1177));
    sub_53D784(&v38, v35);
    sub_53A868(v35);
    sub_64239C(v35, a1, a2, a3, a4, a5);
    sub_53D784(&v53, v35);
    sub_53A868(v35);
    *a6 = v38;
    v15 = v41;
    *(a6 + 16) = v39;
    v38 = 0uLL;
    *(a6 + 24) = v40;
    *(a6 + 40) = v15;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a6 + 48) = v42;
    v16 = v45;
    *(a6 + 64) = v43;
    v42 = 0uLL;
    *(a6 + 72) = v44;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v17 = v46;
    *(a6 + 88) = v16;
    *(a6 + 96) = v17;
    LODWORD(v17) = v47;
    *(a6 + 108) = v48;
    *(a6 + 104) = v17;
    v18 = v49;
    v19 = v52;
    *(a6 + 128) = v50;
    *(a6 + 112) = v18;
    v46 = 0;
    v49 = 0uLL;
    v20 = v51;
    *(a6 + 152) = v19;
    *(a6 + 136) = v20;
    v52 = 0;
    v50 = 0;
    v51 = 0uLL;
    *(a6 + 160) = v53;
    v21 = v56;
    *(a6 + 176) = v54;
    v53 = 0uLL;
    v54 = 0;
    *(a6 + 184) = v55;
    *(a6 + 200) = v21;
    v55 = 0uLL;
    *(a6 + 208) = v57;
    *(a6 + 224) = v58;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
    *(a6 + 232) = v59;
    v59 = 0uLL;
    v22 = v61;
    *(a6 + 248) = v60;
    *(a6 + 256) = v22;
    LODWORD(v22) = v62;
    *(a6 + 268) = v63;
    *(a6 + 264) = v22;
    v23 = v64;
    v24 = v67;
    *(a6 + 288) = v65;
    *(a6 + 272) = v23;
    v60 = 0;
    v61 = 0;
    v64 = 0uLL;
    v25 = v66;
    *(a6 + 312) = v24;
    *(a6 + 296) = v25;
    v67 = 0;
    v65 = 0;
    v66 = 0uLL;
    *(a6 + 320) = v68;
    v68 = 0uLL;
    v26 = v69;
    v27 = v70;
    v69 = 0;
    *(a6 + 336) = v26;
    *(a6 + 344) = v27;
    v70 = 0;
    v28 = v71;
    v29 = v72;
    v71 = 0uLL;
    *(a6 + 352) = v28;
    *(a6 + 368) = v29;
    v72 = 0uLL;
    v30 = v74;
    *(a6 + 384) = v73;
    *(a6 + 392) = v30;
    *(a6 + 400) = v75;
    v73 = 0;
    v74 = 0;
    v75 = 0uLL;
    *(a6 + 416) = v76;
    LODWORD(v26) = v77;
    *(a6 + 428) = v78;
    *(a6 + 424) = v26;
    v31 = v79;
    v32 = v82;
    *(a6 + 448) = v80;
    *(a6 + 432) = v31;
    v76 = 0;
    v79 = 0uLL;
    v80 = 0;
    v33 = v81;
    *(a6 + 472) = v32;
    *(a6 + 456) = v33;
    v81 = 0uLL;
    v82 = 0;
    v13 = v37;
  }

  else
  {
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 240) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    sub_64B998(a6);
    sub_64B998(a6 + 160);
    sub_64B998(a6 + 320);
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v68);
  sub_53A868(&v53);
  return sub_53A868(&v38);
}

void sub_63147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
    sub_62A6D8(&a36);
    _Unwind_Resume(a1);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

void sub_6314E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_53A868(v33 + 160);
  sub_53A868(&a33);
  _Unwind_Resume(a1);
}

void sub_631510(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 11856);
  v3 = *(a1 + 11864);
  if (v2 != v3)
  {
    v4 = v2 + 136;
    do
    {
      if (*(v4 - 8) == 1)
      {
        v7 = 16;
        v6 = *(v4 - 104);
        sub_5874C0(v4);
      }

      v5 = v4 + 32;
      v4 += 168;
    }

    while (v5 != v3);
  }
}

void sub_631708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 208);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_63176C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 208);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_631788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 160);
  sub_53A868(va);
  sub_53E440(v5 - 208);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_6317D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_5E94A4(a2, a1, 1, &v13);
  sub_4E51E0(a2, a1 & 0xFFFFFFFFFFFFLL, v11);
  sub_64AC90(&v9, v11, 0);
  sub_738918(&v13, a3);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v11[0]);
    v6 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(v9);
  if (v12 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v13;
  if (!v13)
  {
    return;
  }

LABEL_7:
  v7 = v14;
  v8 = v6;
  if (v14 != v6)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v6);
    v8 = v13;
  }

  v14 = v6;
  operator delete(v8);
}

void sub_631924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_3108E8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v25 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_5E9738((v25 - 56));
  _Unwind_Resume(a1);
}

void sub_63199C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_631BCC(a1, a2, a3, v26);
  v25 = *(a2 + 32);
  v8 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v8;
  BYTE6(v25) = BYTE6(v25) == 0;
  v9 = (*&v24[0] - **&v24[0]);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*&v24[0] + v10);
  }

  else
  {
    v11 = 0;
  }

  sub_631BCC(a1, v24, v11 - a3, v13);
  if (sub_734C10(v26) && (!sub_734C10(v13) || v36 < v23))
  {
    v12 = v26;
LABEL_11:
    sub_5139E8(a4, v12);
    goto LABEL_13;
  }

  if (sub_734C10(v13))
  {
    v12 = v13;
    goto LABEL_11;
  }

  sub_734CE0(a4);
LABEL_13:
  if (v22 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v13[0]);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v30);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v26[0]);
    return;
  }

LABEL_32:
  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_33;
  }
}

void sub_631BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_3E5388(&a9);
  sub_3E5388(&a35);
  _Unwind_Resume(a1);
}

void sub_631BCC(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[1];
  v47 = *a2;
  v48 = v7;
  v49 = *(a2 + 4);
  sub_6317D0(a2[2] & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v37);
  v8 = (v47 - *v47);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = *(v47 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 - a3;
  while (v11 <= *(a1 + 24))
  {
    sub_6E663C();
    v12 = v35;
    v13 = *v35;
    v14 = v35[1];
    if (*v35 == v14)
    {
LABEL_44:
      sub_62B864(a1, v12, v25);
      v47 = *v25;
      v48 = v26;
      v49 = __p;
      v21 = 3;
      if (!__p || !v47 || !*(&v47 + 1))
      {
        goto LABEL_57;
      }

      v22 = (v47 - *v47);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v21 = 0;
        v11 += *(v47 + v23);
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = 0;
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_6;
    }

    while (1)
    {
      v15 = *(v13 + 24);
      if (v15 - 41 >= 0x17)
      {
        v16 = v15 > 0x1C || ((1 << v15) & 0x183000C6) == 0;
        if (v16 && v15 - 86 >= 2)
        {
          goto LABEL_11;
        }
      }

      sub_6317D0(*(*(v13 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v25);
      if (sub_734C10(v25))
      {
        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v17 = BYTE7(v26);
        }

        else
        {
          v17 = v25[1];
        }

        v18 = v38;
        if ((v38 & 0x80u) != 0)
        {
          v18 = v37[1];
        }

        if (v17 != v18)
        {
          break;
        }

        v19 = (SBYTE7(v26) & 0x80u) == 0 ? v25 : v25[0];
        v20 = (v38 & 0x80u) == 0 ? v37 : v37[0];
        if (memcmp(v19, v20, v17))
        {
          break;
        }
      }

      if (v34 < 0)
      {
        operator delete(v33);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_34:
        if (v28 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(v29);
      if (v28 < 0)
      {
LABEL_10:
        operator delete(__p);
        if (SBYTE7(v26) < 0)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

LABEL_39:
      if (SBYTE7(v26) < 0)
      {
LABEL_40:
        operator delete(v25[0]);
      }

LABEL_11:
      v13 += 248;
      if (v13 == v14)
      {
        v12 = v35;
        goto LABEL_44;
      }
    }

    sub_5139E8(a4, v25);
    *(a4 + 152) = v11;
    if (v34 < 0)
    {
      operator delete(v33);
      if (v32 < 0)
      {
        goto LABEL_63;
      }

LABEL_53:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_64:
      operator delete(v29);
      if (v28 < 0)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (SBYTE7(v26) < 0)
      {
LABEL_66:
        operator delete(v25[0]);
      }
    }

    else
    {
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      operator delete(v31);
      if (v30 < 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_65:
      operator delete(__p);
      if (SBYTE7(v26) < 0)
      {
        goto LABEL_66;
      }
    }

    v21 = 1;
LABEL_57:
    v24 = v36;
    if (v36)
    {
LABEL_58:
      if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }
    }

LABEL_6:
    if (v21)
    {
      if (v21 != 3)
      {
        goto LABEL_69;
      }

      break;
    }
  }

  sub_734CE0(a4);
  *(a4 + 152) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
  if (v46 < 0)
  {
    operator delete(v45);
    if (v44 < 0)
    {
      goto LABEL_76;
    }

LABEL_71:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_77:
    operator delete(v41);
    if (v40 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (v38 < 0)
    {
LABEL_79:
      operator delete(v37[0]);
    }
  }

  else
  {
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    operator delete(v43);
    if (v42 < 0)
    {
      goto LABEL_77;
    }

LABEL_72:
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    operator delete(v39);
    if (v38 < 0)
    {
      goto LABEL_79;
    }
  }
}

void sub_631FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  sub_3E5388(&a9);
  sub_1F1A8(&a28);
  sub_3E5388(&a30);
  _Unwind_Resume(a1);
}

void sub_632048(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v8[23] = 20;
  strcpy(v8, "EnrouteNoticeBuilder");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 2u, *(a3 + 1566), &v9);
  sub_6365D8(a1, &v9, a2);
}

void sub_632234(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_632278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_6322B4(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_63265C(a1, a2, a3);
  sub_632C0C(a1, a2, &v38);
  sub_6399F0(a3, a3[1], v38, v39, 0x4FCACE213F2B3885 * ((v39 - v38) >> 3));
  sub_63384C(a1, a2, &v36);
  sub_6399F0(a3, a3[1], v36, v37, 0x4FCACE213F2B3885 * ((v37 - v36) >> 3));
  sub_633BCC(a1, &v34);
  sub_6399F0(a3, a3[1], v34, v35, 0x4FCACE213F2B3885 * ((v35 - v34) >> 3));
  sub_635170(a1, &v32);
  sub_6399F0(a3, a3[1], v32, v33, 0x4FCACE213F2B3885 * ((v33 - v32) >> 3));
  if (*(a1 + 13))
  {
    sub_637BD0(a2, v30);
    v6 = *v30;
  }

  else
  {
    v31 = 0;
    v6 = 0uLL;
    *v30 = 0u;
  }

  sub_6399F0(a3, a3[1], v6, *(&v6 + 1), 0x4FCACE213F2B3885 * ((*(&v6 + 1) - v6) >> 3));
  sub_6355E0(a1, a2, &__p);
  sub_6399F0(a3, a3[1], __p, v29, 0x4FCACE213F2B3885 * ((v29 - __p) >> 3));
  v7 = a3[1];
  v8 = 126 - 2 * __clz(0x4FCACE213F2B3885 * ((v7 - *a3) >> 3));
  if (v7 == *a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_642B78(*a3, v7, &v40, v9, 1);
  v10 = __p;
  if (__p)
  {
    v11 = v29;
    v12 = __p;
    if (v29 != __p)
    {
      do
      {
        v11 -= 616;
        sub_5C2320(v11);
      }

      while (v11 != v10);
      v12 = __p;
    }

    v29 = v10;
    operator delete(v12);
  }

  v13 = v30[0];
  if (v30[0])
  {
    v14 = v30[1];
    v15 = v30[0];
    if (v30[1] != v30[0])
    {
      do
      {
        v14 -= 616;
        sub_5C2320(v14);
      }

      while (v14 != v13);
      v15 = v30[0];
    }

    v30[1] = v13;
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    v17 = v33;
    v18 = v32;
    if (v33 != v32)
    {
      do
      {
        v17 -= 616;
        sub_5C2320(v17);
      }

      while (v17 != v16);
      v18 = v32;
    }

    v33 = v16;
    operator delete(v18);
  }

  v19 = v34;
  if (v34)
  {
    v20 = v35;
    v21 = v34;
    if (v35 != v34)
    {
      do
      {
        v20 -= 616;
        sub_5C2320(v20);
      }

      while (v20 != v19);
      v21 = v34;
    }

    v35 = v19;
    operator delete(v21);
  }

  v22 = v36;
  if (v36)
  {
    v23 = v37;
    v24 = v36;
    if (v37 != v36)
    {
      do
      {
        v23 -= 616;
        sub_5C2320(v23);
      }

      while (v23 != v22);
      v24 = v36;
    }

    v37 = v22;
    operator delete(v24);
  }

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v26 -= 616;
        sub_5C2320(v26);
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_6325A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void *);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_5EC9F0(va);
  sub_5EC9F0(va1);
  sub_5EC9F0((v9 - 88));
  sub_5EC9F0((v9 - 64));
  sub_5EC9F0(v8);
  _Unwind_Resume(a1);
}

void sub_632628(_Unwind_Exception *a1)
{
  sub_5EC9F0((v2 - 64));
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_63265C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result;
  if (*result & 1) != 0 || (*(result + 1) & 1) != 0 || (*(result + 2) & 1) != 0 || (*(result + 3) & 1) != 0 || (*(result + 4) & 1) != 0 || (*(result + 5) & 1) != 0 || (*(result + 8) & 1) != 0 || (*(result + 12))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v5 = (*(a2 + 1112) - *(a2 + 1104)) >> 3;
    v6 = 0x3795876FF3795877 * v5 - 1;
    if (0x3795876FF3795877 * v5 != 1)
    {
      v7 = 0;
      v8 = 640;
      do
      {
        result = sub_637150(v4, v7, a2);
        if ((result & 0x100) != 0)
        {
          if (result > 0x16u)
          {
            v9 = 0;
          }

          else
          {
            v9 = dword_229C388[result & 0x1F];
          }

          sub_58738C(v9);
        }

        ++v7;
        v8 += 2616;
      }

      while (v6 != v7);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_632AF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_62A6D8(va);
  sub_53E440(v4 - 216);
  sub_5EC9F0(v2);
  _Unwind_Resume(a1);
}

void sub_632B7C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_632C0C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 6))
  {
    v3 = a2[1530];
    v4 = a2[1531];
    if (v3 == v4)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(v3 + 4) == 3 && *(v3 + 10) == 0)
        {
          v8 = v5 - v6;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 4);
          v10 = v9 + 1;
          if (v9 + 1 > 0x555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v6 >> 4) > v10)
          {
            v10 = 0x5555555555555556 * (-v6 >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v6 >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v11 = 0x555555555555555;
          }

          else
          {
            v11 = v10;
          }

          if (v11)
          {
            if (v11 <= 0x555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v12 = v6;
          v13 = (16 * ((v5 - v6) >> 4));
          v14 = *v3;
          v15 = v3[2];
          v13[1] = v3[1];
          v13[2] = v15;
          *v13 = v14;
          v5 = (v13 + 3);
          v6 = 48 * v9 + 48 * (v8 / -48);
          v16 = v12;
          memcpy(&v13[3 * (v8 / -48)], v12, v8);
          if (v16)
          {
            operator delete(v16);
          }
        }

        v3 += 3;
      }

      while (v3 != v4);
      if (v6 != v5)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v33 = 0;
        __src = 0;
        v17 = sub_4D1DC0(a2);
        if (v17)
        {
          v18 = 0;
          for (i = 0; i != v17; ++i)
          {
            v20 = __src;
            v21 = (v33 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_1794();
            }

            v23 = -__src;
            if (-__src >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v25 = (8 * v21);
            v26 = &v25[-((v33 - __src) >> 3)];
            *v25 = v18;
            v27 = v25 + 1;
            memcpy(v26, __src, v33 - __src);
            __src = v26;
            if (v20)
            {
              operator delete(v20);
            }

            v33 = v27;
            v18 += sub_4D23F8(a2, i, v28);
          }
        }

        if (*v6 <= 0.0)
        {
          v29 = 17;
        }

        else
        {
          v29 = 16;
        }

        sub_58738C(v29);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_6336A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  v19 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v19;
    operator delete(v19);
  }

  sub_5EC9F0(a18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_63384C@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v6 = result;
    v21 = 0;
    result = sub_4D1DC0(a2);
    v7 = result;
    if (result)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = sub_4D1F50(a2, v9);
        if (!v8)
        {
          break;
        }

        v12 = (*v10 - **v10);
        v13 = *v12;
        if ((*(v10 + 39) & 0x20) != 0)
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x8000;
        }

        else
        {
          if (v13 < 0x47)
          {
            goto LABEL_23;
          }

          v14 = v12[35];
          if (!v14)
          {
            goto LABEL_23;
          }

          v15 = 0x10000;
        }

        v8 = (*(*v10 + v14) & v15) != 0;
LABEL_24:
        result = sub_4D23F8(a2, v9, v11);
        v21 += result;
        if (v7 == ++v9)
        {
          return result;
        }
      }

      if (*(v6 + 11) == 1)
      {
        v16 = *v10;
        v17 = (*v10 - **v10);
        v18 = *v17;
        if ((*(v10 + 39) & 0x20) != 0)
        {
          if (v18 >= 0x47)
          {
            v20 = v17[35];
            if (v20)
            {
              if ((*&v16[v20] & 0x8000) != 0)
              {
LABEL_22:
                sub_58738C(6u);
              }
            }
          }
        }

        else if (v18 >= 0x47)
        {
          v19 = v17[35];
          if (v19)
          {
            if ((*&v16[v19] & 0x10000) != 0)
            {
              goto LABEL_22;
            }
          }
        }
      }

LABEL_23:
      v8 = 0;
      goto LABEL_24;
    }
  }

  return result;
}

void sub_633AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(v3 + 296);
  sub_53A868(v3 + 136);
  sub_53E440(v3 + 16);
  *(v2 + 8) = v3;
  sub_62A6D8(va);
  sub_53E440(v4 - 216);
  sub_5EC9F0(v2);
  _Unwind_Resume(a1);
}

void sub_633B60(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 216);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_633BCC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 8) == 1)
  {
    operator new();
  }

  return result;
}

void sub_634EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

void sub_634ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p)
{
  sub_53E440(&STACK[0x280]);
  operator delete(__p);
  sub_5EC9F0(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_635170@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(result + 14) == 1)
  {
    sub_58738C(0xAu);
  }

  return result;
}

void sub_63550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53E440(v9 - 224);
  sub_5EC9F0(a9);
  _Unwind_Resume(a1);
}

void sub_63553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 296);
  sub_53A868(v4 + 136);
  sub_53E440(v4 + 16);
  *(a2 + 8) = v4;
  sub_62A6D8(va);
  operator delete(v3);
  sub_53E440(v5 - 224);
  sub_5EC9F0(a2);
  _Unwind_Resume(a1);
}

uint64_t sub_6355E0@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(result + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 == 1)
  {
    v8 = a2[139];
    if (a2[138] != v8)
    {
      v5 = a2[138];
      do
      {
        v6 = *(v5 + 1960);
        v9 = v5;
        if (v6 != *(v5 + 1968))
        {
          if (*(result + 17) == 1 && sub_67E34C(v6) >= 2)
          {
            vcvtd_n_f64_s64(sub_4D2544(a2, **v6, 0, *(*(v6 + 8) - 8), 1u, v7), 1uLL);
          }

          sub_58738C(0x14u);
        }

        v5 += 2616;
      }

      while (v9 + 2616 != v8);
    }
  }

  return result;
}

void sub_635EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v9 + 87) < 0)
  {
    operator delete(*(v9 + 64));
  }

  sub_55DB28(v8);
  *(v7 + 8) = v9;
  sub_62A6D8(va);
  sub_53E440(v10 - 248);
  sub_5EC9F0(v7);
  _Unwind_Resume(a1);
}

void sub_63602C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_53A868(v8 + 160);
  sub_53A868(va);
  sub_53E440(v9 - 248);
  sub_5EC9F0(v7);
  _Unwind_Resume(a1);
}

double sub_636098(unint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    do
    {
      sub_6322B4(a1, v5, &v13);
      v8 = v5[1534];
      if (v8)
      {
        v9 = v5[1535];
        v7 = v5[1534];
        if (v9 != v8)
        {
          v10 = v9 - 600;
          while (1)
          {
            sub_53A868(v10 + 440);
            sub_53A868(v10 + 280);
            sub_53A868(v10 + 120);
            if (*(v10 + 103) < 0)
            {
              operator delete(*(v10 + 80));
              if ((*(v10 + 71) & 0x80000000) == 0)
              {
LABEL_12:
                v12 = *(v10 + 32);
                if (v12 == -1)
                {
                  goto LABEL_9;
                }

LABEL_16:
                (off_266BE00[v12])(&v15, v10);
                goto LABEL_9;
              }
            }

            else if ((*(v10 + 71) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            operator delete(*(v10 + 48));
            v12 = *(v10 + 32);
            if (v12 != -1)
            {
              goto LABEL_16;
            }

LABEL_9:
            *(v10 + 32) = -1;
            v11 = v10 - 16;
            v10 -= 616;
            if (v11 == v8)
            {
              v7 = v5[1534];
              break;
            }
          }
        }

        v5[1535] = v8;
        operator delete(v7);
      }

      result = *&v13;
      *(v5 + 767) = v13;
      v5[1536] = v14;
      v5 += 1582;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_6361E0(_DWORD *a1, void *a2)
{
  v3 = 16;
  strcpy(__p, "cycling_dismount");
  *a1 = sub_629380(a2, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_63658C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6365D8(BOOL *a1, void *a2, uint64_t a3)
{
  v22 = 15;
  strcpy(__p, "enable_elevator");
  v6 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  v22 = 16;
  strcpy(__p, "enable_escalator");
  v8 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  a1[1] = v8;
  v22 = 13;
  strcpy(__p, "enable_stairs");
  v10 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  a1[2] = v10;
  v22 = 18;
  strcpy(__p, "enable_stairs_down");
  v12 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v13 = v12;
    operator delete(*__p);
    v12 = v13;
  }

  a1[3] = v12;
  v22 = 16;
  strcpy(__p, "enable_stairs_up");
  v14 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v15 = v14;
    operator delete(*__p);
    v14 = v15;
  }

  a1[4] = v14;
  v22 = 20;
  strcpy(__p, "enable_stairs_bridge");
  v16 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v17 = v16;
    operator delete(*__p);
    v16 = v17;
  }

  a1[5] = v16;
  v22 = 18;
  strcpy(__p, "enable_steep_hills");
  v18 = sub_5F9D0(a2, __p);
  if (v22 < 0)
  {
    v19 = v18;
    operator delete(*__p);
    v18 = v19;
  }

  a1[6] = v18;
  v22 = 20;
  strcpy(__p, "enable_slope_display");
  if (sub_5F9D0(a2, __p))
  {
    v20 = 1;
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v20 = sub_3B0454(a3);
    if ((v22 & 0x80000000) == 0)
    {
LABEL_18:
      a1[7] = v20;
      operator new();
    }
  }

  operator delete(*__p);
  goto LABEL_18;
}

void sub_6370D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_637150(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_50EA30((a3 + 1104), a2);
  v7 = sub_50EA30((a3 + 1104), a2 + 1);
  if (*a1 == 1 && *(v6 + 632) != -1)
  {
    v12 = 1;
    v13 = 20;
    return v13 | (v12 << 8);
  }

  if (a1[12] == 1 && *(v6 + 160) == 22)
  {
    v12 = 1;
    v13 = 15;
    return v13 | (v12 << 8);
  }

  if (a1[15] == 1 && *(v6 + 384) != 2 && *(v7 + 384) == 2)
  {
    operator new();
  }

  if (a1[1] == 1)
  {
    v11 = *(v6 + 640);
    v12 = *(v6 + 680);
    if (v11 != -1 && v12 == 1)
    {
      v13 = 1;
      return v13 | (v12 << 8);
    }

    if (v11 != -1 && v12 == 2)
    {
      v12 = 1;
      v13 = 2;
      return v13 | (v12 << 8);
    }

    if (v11 != -1)
    {
      v13 = 0;
      goto LABEL_43;
    }
  }

  v15 = *(v6 + 2420);
  if (a1[5] == 1 && v15 == 1)
  {
    v12 = 1;
    v13 = 6;
    return v13 | (v12 << 8);
  }

  v13 = 0;
  if (v15)
  {
    v16 = a1[5];
  }

  else
  {
    v16 = 0;
  }

  if (a1[2] != 1 || *(v6 + 624) == -1)
  {
    v12 = 0;
    return v13 | (v12 << 8);
  }

  v12 = 0;
  if ((v16 & 1) == 0)
  {
    v17 = *(v6 + 680);
    if (a1[4] == 1 && v17 == 1)
    {
      v12 = 1;
      v13 = 4;
      return v13 | (v12 << 8);
    }

    if ((a1[3] & (v17 == 2)) != 0)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

LABEL_43:
    v12 = 1;
  }

  return v13 | (v12 << 8);
}

void sub_637374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_637390@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_64B998(&v42);
  sub_64B998(&v57);
  sub_64B998(&v72);
  sub_638CC4(a2, __p);
  v16 = v41;
  v17 = v41;
  if ((v41 & 0x80u) != 0)
  {
    v16 = __p[1];
  }

  if (v16)
  {
    v18 = sub_9274F4(a1[17], __p);
    sub_64BC50(v39, v18, (a1[15] + 1177));
    sub_53D784(&v42, v39);
    sub_53A868(v39);
    sub_645710(a1, a2, a3, a4, a5, a6, v39);
    sub_53D784(&v57, v39);
    sub_53A868(v39);
    sub_645C60(a7);
    *a8 = v42;
    v19 = v45;
    *(a8 + 16) = v43;
    v42 = 0uLL;
    *(a8 + 24) = v44;
    *(a8 + 40) = v19;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    *(a8 + 48) = v46;
    v20 = v49;
    *(a8 + 64) = v47;
    v46 = 0uLL;
    *(a8 + 72) = v48;
    v47 = 0;
    v48 = 0uLL;
    v49 = 0;
    v21 = v50;
    *(a8 + 88) = v20;
    *(a8 + 96) = v21;
    LODWORD(v21) = v51;
    *(a8 + 108) = v52;
    *(a8 + 104) = v21;
    v22 = v53;
    v23 = v56;
    *(a8 + 128) = v54;
    *(a8 + 112) = v22;
    v50 = 0;
    v53 = 0uLL;
    v24 = v55;
    *(a8 + 152) = v23;
    *(a8 + 136) = v24;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    *(a8 + 160) = v57;
    v25 = v60;
    *(a8 + 176) = v58;
    v57 = 0uLL;
    v58 = 0;
    *(a8 + 184) = v59;
    *(a8 + 200) = v25;
    v59 = 0uLL;
    *(a8 + 208) = v61;
    *(a8 + 224) = v62;
    v62 = 0;
    v60 = 0;
    v61 = 0uLL;
    *(a8 + 232) = v63;
    v63 = 0uLL;
    v26 = v65;
    *(a8 + 248) = v64;
    *(a8 + 256) = v26;
    LODWORD(v26) = v66;
    *(a8 + 268) = v67;
    *(a8 + 264) = v26;
    v27 = v68;
    v28 = v71;
    *(a8 + 288) = v69;
    *(a8 + 272) = v27;
    v64 = 0;
    v65 = 0;
    v68 = 0uLL;
    v29 = v70;
    *(a8 + 312) = v28;
    *(a8 + 296) = v29;
    v71 = 0;
    v69 = 0;
    v70 = 0uLL;
    *(a8 + 320) = v72;
    v72 = 0uLL;
    v30 = v73;
    v31 = v74;
    v73 = 0;
    *(a8 + 336) = v30;
    *(a8 + 344) = v31;
    v74 = 0;
    v32 = v75;
    v33 = v76;
    v75 = 0uLL;
    *(a8 + 352) = v32;
    *(a8 + 368) = v33;
    v76 = 0uLL;
    v34 = v78;
    *(a8 + 384) = v77;
    *(a8 + 392) = v34;
    *(a8 + 400) = v79;
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
    *(a8 + 416) = v80;
    LODWORD(v30) = v81;
    *(a8 + 428) = v82;
    *(a8 + 424) = v30;
    v35 = v83;
    v36 = v86;
    *(a8 + 448) = v84;
    *(a8 + 432) = v35;
    v80 = 0;
    v83 = 0uLL;
    v84 = 0;
    v37 = v85;
    *(a8 + 472) = v36;
    *(a8 + 456) = v37;
    v85 = 0uLL;
    v86 = 0;
    v17 = v41;
  }

  else
  {
    *(a8 + 448) = 0u;
    *(a8 + 464) = 0u;
    *(a8 + 416) = 0u;
    *(a8 + 432) = 0u;
    *(a8 + 384) = 0u;
    *(a8 + 400) = 0u;
    *(a8 + 352) = 0u;
    *(a8 + 368) = 0u;
    *(a8 + 320) = 0u;
    *(a8 + 336) = 0u;
    *(a8 + 288) = 0u;
    *(a8 + 304) = 0u;
    *(a8 + 256) = 0u;
    *(a8 + 272) = 0u;
    *(a8 + 224) = 0u;
    *(a8 + 240) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 208) = 0u;
    *(a8 + 160) = 0u;
    *(a8 + 176) = 0u;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    sub_64B998(a8 + 160);
    sub_64B998(a8 + 320);
  }

  if ((v17 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v72);
  sub_53A868(&v57);
  return sub_53A868(&v42);
}

void sub_637728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_6377BC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_64B998(&v38);
  sub_64B998(&v53);
  sub_64B998(&v68);
  sub_638CC4(a2, __p);
  v12 = v37;
  v13 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    v14 = sub_9274F4(a1[17], __p);
    sub_64BC50(v35, v14, (a1[15] + 1177));
    sub_53D784(&v38, v35);
    sub_53A868(v35);
    sub_645D6C(v35, a1, a2, a3, a4, a5);
    sub_53D784(&v53, v35);
    sub_53A868(v35);
    *a6 = v38;
    v15 = v41;
    *(a6 + 16) = v39;
    v38 = 0uLL;
    *(a6 + 24) = v40;
    *(a6 + 40) = v15;
    v39 = 0;
    v40 = 0uLL;
    v41 = 0;
    *(a6 + 48) = v42;
    v16 = v45;
    *(a6 + 64) = v43;
    v42 = 0uLL;
    *(a6 + 72) = v44;
    v43 = 0;
    v44 = 0uLL;
    v45 = 0;
    v17 = v46;
    *(a6 + 88) = v16;
    *(a6 + 96) = v17;
    LODWORD(v17) = v47;
    *(a6 + 108) = v48;
    *(a6 + 104) = v17;
    v18 = v49;
    v19 = v52;
    *(a6 + 128) = v50;
    *(a6 + 112) = v18;
    v46 = 0;
    v49 = 0uLL;
    v20 = v51;
    *(a6 + 152) = v19;
    *(a6 + 136) = v20;
    v52 = 0;
    v50 = 0;
    v51 = 0uLL;
    *(a6 + 160) = v53;
    v21 = v56;
    *(a6 + 176) = v54;
    v53 = 0uLL;
    v54 = 0;
    *(a6 + 184) = v55;
    *(a6 + 200) = v21;
    v55 = 0uLL;
    *(a6 + 208) = v57;
    *(a6 + 224) = v58;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
    *(a6 + 232) = v59;
    v59 = 0uLL;
    v22 = v61;
    *(a6 + 248) = v60;
    *(a6 + 256) = v22;
    LODWORD(v22) = v62;
    *(a6 + 268) = v63;
    *(a6 + 264) = v22;
    v23 = v64;
    v24 = v67;
    *(a6 + 288) = v65;
    *(a6 + 272) = v23;
    v60 = 0;
    v61 = 0;
    v64 = 0uLL;
    v25 = v66;
    *(a6 + 312) = v24;
    *(a6 + 296) = v25;
    v67 = 0;
    v65 = 0;
    v66 = 0uLL;
    *(a6 + 320) = v68;
    v68 = 0uLL;
    v26 = v69;
    v27 = v70;
    v69 = 0;
    *(a6 + 336) = v26;
    *(a6 + 344) = v27;
    v70 = 0;
    v28 = v71;
    v29 = v72;
    v71 = 0uLL;
    *(a6 + 352) = v28;
    *(a6 + 368) = v29;
    v72 = 0uLL;
    v30 = v74;
    *(a6 + 384) = v73;
    *(a6 + 392) = v30;
    *(a6 + 400) = v75;
    v73 = 0;
    v74 = 0;
    v75 = 0uLL;
    *(a6 + 416) = v76;
    LODWORD(v26) = v77;
    *(a6 + 428) = v78;
    *(a6 + 424) = v26;
    v31 = v79;
    v32 = v82;
    *(a6 + 448) = v80;
    *(a6 + 432) = v31;
    v76 = 0;
    v79 = 0uLL;
    v80 = 0;
    v33 = v81;
    *(a6 + 472) = v32;
    *(a6 + 456) = v33;
    v81 = 0uLL;
    v82 = 0;
    v13 = v37;
  }

  else
  {
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 240) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    sub_64B998(a6);
    sub_64B998(a6 + 160);
    sub_64B998(a6 + 320);
  }

  if ((v13 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  sub_53A868(&v68);
  sub_53A868(&v53);
  return sub_53A868(&v38);
}

void sub_637B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  sub_53A868(v36 + 160);
  sub_53A868(v36);
  if (a35 < 0)
  {
    operator delete(__p);
    sub_62A6D8(&a36);
    _Unwind_Resume(a1);
  }

  sub_62A6D8(&a36);
  _Unwind_Resume(a1);
}

void sub_637BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_53A868(v33 + 160);
  sub_53A868(&a33);
  _Unwind_Resume(a1);
}

void sub_637BD0(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 11856);
  v3 = *(a1 + 11864);
  if (v2 != v3)
  {
    v4 = v2 + 136;
    do
    {
      if (*(v4 - 8) == 1)
      {
        v7 = 16;
        v6 = *(v4 - 104);
        sub_5874C0(v4);
      }

      v5 = v4 + 32;
      v4 += 168;
    }

    while (v5 != v3);
  }
}

void sub_637DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_62A6D8(va);
  sub_53E440(v5 - 208);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_637E2C(_Unwind_Exception *a1)
{
  sub_53E440(v2 - 208);
  sub_5EC9F0(v1);
  _Unwind_Resume(a1);
}

void sub_637E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53A868(v4 + 160);
  sub_53A868(va);
  sub_53E440(v5 - 208);
  sub_5EC9F0(v3);
  _Unwind_Resume(a1);
}

void sub_637E90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_5E94A4(a2, a1, 1, &v13);
  sub_4E51E0(a2, a1 & 0xFFFFFFFFFFFFLL, v11);
  sub_64AC90(&v9, v11, 0);
  sub_73BE28(&v13, a3);
  if ((v10 & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v11[0]);
    v6 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(v9);
  if (v12 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v13;
  if (!v13)
  {
    return;
  }

LABEL_7:
  v7 = v14;
  v8 = v6;
  if (v14 != v6)
  {
    do
    {
      v7 = sub_310F30(v7 - 144);
    }

    while (v7 != v6);
    v8 = v13;
  }

  v14 = v6;
  operator delete(v8);
}

void sub_637FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_3108E8(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_5E9738((v25 - 56));
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_5E9738((v25 - 56));
  _Unwind_Resume(a1);
}

void sub_63805C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_63829C(a1, a2, a3, v26);
  v25 = *(a2 + 32);
  v8 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v8;
  v25 = v25 | (((HIDWORD(v25) & 0x7FFFFFFF | ((HIDWORD(v25) >> 30 == 0) << 31)) ^ 0x20000000u) << 32);
  v9 = (*&v24[0] - **&v24[0]);
  if (*v9 >= 9u && (v10 = v9[4]) != 0)
  {
    v11 = *(*&v24[0] + v10);
  }

  else
  {
    v11 = 0;
  }

  sub_63829C(a1, v24, v11 - a3, v13);
  if (sub_734C10(v26) && (!sub_734C10(v13) || v36 < v23))
  {
    v12 = v26;
LABEL_11:
    sub_5139E8(a4, v12);
    goto LABEL_13;
  }

  if (sub_734C10(v13))
  {
    v12 = v13;
    goto LABEL_11;
  }

  sub_734CE0(a4);
LABEL_13:
  if (v22 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_15:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_16:
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v17);
  if ((v16 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v15);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v13[0]);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_19:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v32);
  if ((v31 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v30);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_33:
    operator delete(v26[0]);
    return;
  }

LABEL_32:
  operator delete(v28);
  if (v27 < 0)
  {
    goto LABEL_33;
  }
}

void sub_638280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_3E5388(&a9);
  sub_3E5388(&a35);
  _Unwind_Resume(a1);
}

void sub_63829C(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2[1];
  v47 = *a2;
  v48 = v7;
  v49 = *(a2 + 4);
  sub_637E90((((*(a2 + 9) & 0x20000000) << 19) | (*(a2 + 9) << 32) | *(a2 + 8)) ^ 0x1000000000000, *(a1 + 128), v37);
  v8 = (v47 - *v47);
  if (*v8 >= 9u && (v9 = v8[4]) != 0)
  {
    v10 = *(v47 + v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 - a3;
  while (v11 <= *(a1 + 24))
  {
    sub_6F57B8();
    v12 = v35;
    v13 = *v35;
    v14 = v35[1];
    if (*v35 == v14)
    {
LABEL_44:
      sub_63872C(a1, v12, v25);
      v47 = *v25;
      v48 = v26;
      v49 = __p;
      v21 = 3;
      if (!__p || !v47 || !*(&v47 + 1))
      {
        goto LABEL_57;
      }

      v22 = (v47 - *v47);
      if (*v22 >= 9u && (v23 = v22[4]) != 0)
      {
        v21 = 0;
        v11 += *(v47 + v23);
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = 0;
        v24 = v36;
        if (v36)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_6;
    }

    while (1)
    {
      v15 = *(v13 + 24);
      if (v15 - 41 >= 0x17)
      {
        v16 = v15 > 0x1C || ((1 << v15) & 0x183000C6) == 0;
        if (v16 && v15 - 86 >= 2)
        {
          goto LABEL_11;
        }
      }

      sub_637E90(*(*(v13 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, *(a1 + 128), v25);
      if (sub_734C10(v25))
      {
        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v17 = BYTE7(v26);
        }

        else
        {
          v17 = v25[1];
        }

        v18 = v38;
        if ((v38 & 0x80u) != 0)
        {
          v18 = v37[1];
        }

        if (v17 != v18)
        {
          break;
        }

        v19 = (SBYTE7(v26) & 0x80u) == 0 ? v25 : v25[0];
        v20 = (v38 & 0x80u) == 0 ? v37 : v37[0];
        if (memcmp(v19, v20, v17))
        {
          break;
        }
      }

      if (v34 < 0)
      {
        operator delete(v33);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v30 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_38;
        }
      }

      else if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_34:
        if (v28 < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

LABEL_38:
      operator delete(v29);
      if (v28 < 0)
      {
LABEL_10:
        operator delete(__p);
        if (SBYTE7(v26) < 0)
        {
          goto LABEL_40;
        }

        goto LABEL_11;
      }

LABEL_39:
      if (SBYTE7(v26) < 0)
      {
LABEL_40:
        operator delete(v25[0]);
      }

LABEL_11:
      v13 += 248;
      if (v13 == v14)
      {
        v12 = v35;
        goto LABEL_44;
      }
    }

    sub_5139E8(a4, v25);
    *(a4 + 152) = v11;
    if (v34 < 0)
    {
      operator delete(v33);
      if (v32 < 0)
      {
        goto LABEL_63;
      }

LABEL_53:
      if ((v30 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }

LABEL_64:
      operator delete(v29);
      if (v28 < 0)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (SBYTE7(v26) < 0)
      {
LABEL_66:
        operator delete(v25[0]);
      }
    }

    else
    {
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_63:
      operator delete(v31);
      if (v30 < 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

LABEL_65:
      operator delete(__p);
      if (SBYTE7(v26) < 0)
      {
        goto LABEL_66;
      }
    }

    v21 = 1;
LABEL_57:
    v24 = v36;
    if (v36)
    {
LABEL_58:
      if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v24->__on_zero_shared)(v24);
        std::__shared_weak_count::__release_weak(v24);
      }
    }

LABEL_6:
    if (v21)
    {
      if (v21 != 3)
      {
        goto LABEL_69;
      }

      break;
    }
  }

  sub_734CE0(a4);
  *(a4 + 152) = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
  if (v46 < 0)
  {
    operator delete(v45);
    if (v44 < 0)
    {
      goto LABEL_76;
    }

LABEL_71:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_77:
    operator delete(v41);
    if (v40 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    if (v38 < 0)
    {
LABEL_79:
      operator delete(v37[0]);
    }
  }

  else
  {
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    operator delete(v43);
    if (v42 < 0)
    {
      goto LABEL_77;
    }

LABEL_72:
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    operator delete(v39);
    if (v38 < 0)
    {
      goto LABEL_79;
    }
  }
}

void sub_6386D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  sub_3E5388(&a9);
  sub_1F1A8(&a28);
  sub_3E5388(&a30);
  _Unwind_Resume(a1);
}

char *sub_63872C@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      if (!v6 || v6 == 3)
      {
        break;
      }

      v4 += 248;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }
  }

  if (v4 == v5)
  {
LABEL_13:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v8 = *(result + 16);
    v9 = *(*(v4 + 8) - 8);
    v10 = sub_2B51D8(v8, v9 & 0xFFFFFFFFFFFFLL);
    if (*(v8 + 7772) == 1)
    {
      v11 = sub_30C50C(v8 + 3896, v9, 0);
      v12 = &v11[-*v11];
      if (*v12 < 5u)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v12 + 2);
        if (v13)
        {
          v13 += &v11[*&v11[v13]];
        }
      }

      v14 = v13 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v13 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v14 = 0;
    }

    result = sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
    *a3 = v10;
    *(a3 + 8) = v14;
    *(a3 + 16) = result;
    *(a3 + 24) = v15;
    *(a3 + 32) = v9 & 0xFFFFFFFFFFFFLL | (((v9 & 0xFF000000000000) == 0) << 61) | 0x4000000000000000;
  }

  return result;
}

void *sub_638868@<X0>(void *result@<X0>, int a2@<W1>, char *a3@<X8>)
{
  switch(result)
  {
    case 0:
      a3[23] = 9;
      strcpy(a3, "Escalator");
      return result;
    case 1:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Escalator";
      }

      else
      {
        v4 = "EscalatorUp";
      }

      v5 = 11;
      goto LABEL_27;
    case 2:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Escalator";
      }

      else
      {
        v4 = "EscalatorDown";
      }

      v5 = 13;
LABEL_27:
      v6 = 9;
      goto LABEL_46;
    case 3:
      a3[23] = 6;
      strcpy(a3, "Stairs");
      return result;
    case 4:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Stairs";
      }

      else
      {
        v4 = "StairsUp";
      }

      v5 = 8;
      v6 = 6;
      goto LABEL_46;
    case 5:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "Stairs";
      }

      else
      {
        v4 = "StairsDown";
      }

      v5 = 10;
      v6 = 6;
      goto LABEL_46;
    case 6:
      a3[23] = 16;
      strcpy(a3, "PedestrianBridge");
      return result;
    case 7:
      a3[23] = 15;
      strcpy(a3, "SteepHillUphill");
      return result;
    case 8:
      a3[23] = 17;
      strcpy(a3, "SteepHillDownhill");
      return result;
    case 9:
      a3[23] = 8;
      strcpy(a3, "Dismount");
      return result;
    case 10:
      if (a2)
      {
        v7 = "DismountOneWayStreet";
      }

      else
      {
        v7 = "DismountWalkAgainstTraffic";
      }

      if (a2)
      {
        v8 = 20;
      }

      else
      {
        v8 = 26;
      }

      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_57;
    case 11:
      if (a2)
      {
        v7 = "DismountTwoWayStreet";
      }

      else
      {
        v7 = "DismountWalkAgainstTraffic";
      }

      if (a2)
      {
        v8 = 20;
      }

      else
      {
        v8 = 26;
      }

      if ((a2 & 1) == 0)
      {
LABEL_57:
        operator new();
      }

LABEL_20:
      a3[23] = 20;
      v11 = v7;
      result = memcpy(a3, v11, v8);
      a3[v8] = 0;
      return result;
    case 14:
      a3[23] = 11;
      strcpy(a3, "SharedSpace");
      return result;
    case 15:
      a3[23] = 5;
      *a3 = 1920099654;
      a3[4] = 121;
      a3[5] = 0;
      return result;
    case 18:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "SteepHillUphill";
      }

      else
      {
        v4 = "SteepHill";
      }

      v5 = 9;
      v6 = 15;
      goto LABEL_46;
    case 19:
      v3 = a2 == 0;
      if (a2)
      {
        v4 = "SteepHillDownhill";
      }

      else
      {
        v4 = "SteepHill";
      }

      v5 = 9;
      v6 = 17;
LABEL_46:
      if (v3)
      {
        v9 = v5;
      }

      else
      {
        v9 = v6;
      }

      a3[23] = v9;
      result = memcpy(a3, v4, v9);
      a3[v9] = 0;
      break;
    case 20:
      a3[23] = 8;
      strcpy(a3, "Elevator");
      break;
    case 21:
      a3[23] = 21;
      strcpy(a3, "Transition_To_Walking");
      break;
    default:
      a3[23] = 0;
      *a3 = 0;
      break;
  }

  return result;
}

void sub_638CC4(int a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
      v2 = 9;
      v9 = 9;
      __p[8] = 114;
      v3 = "Escalator";
      goto LABEL_13;
    case 3:
    case 4:
    case 5:
      v2 = 6;
      v9 = 6;
      qmemcpy(__p, "Stairs", 6);
      break;
    case 6:
      v2 = 16;
      v9 = 16;
      v4 = "PedestrianBridge";
      goto LABEL_11;
    case 7:
    case 18:
      v2 = 15;
      v9 = 15;
      qmemcpy(__p, "SteepHillUphill", 15);
      break;
    case 8:
    case 19:
      v2 = 17;
      v9 = 17;
      __p[16] = 108;
      v4 = "SteepHillDownhill";
      goto LABEL_11;
    case 9:
      v2 = 8;
      v9 = 8;
      v5 = 0x746E756F6D736944;
      goto LABEL_14;
    case 10:
      v2 = 20;
      v9 = 20;
      *&__p[16] = 1952802162;
      v4 = "DismountOneWayStreet";
      goto LABEL_11;
    case 11:
      v2 = 20;
      v9 = 20;
      *&__p[16] = 1952802162;
      v4 = "DismountTwoWayStreet";
LABEL_11:
      *__p = *v4;
      break;
    case 14:
      v2 = 11;
      v9 = 11;
      *&__p[7] = 1701011824;
      v3 = "SharedSpace";
LABEL_13:
      v5 = *v3;
      goto LABEL_14;
    case 15:
      v9 = 5;
      strcpy(__p, "Ferry");
      *(a2 + 16) = 0;
      *(a2 + 23) = 22;
      *(a2 + 16) = 95;
      *a2 = *"Annotation_Title_";
      v6 = a2 + 17;
      memmove((a2 + 17), __p, 5uLL);
      *(v6 + 5) = 0;
      if (v9 < 0)
      {
        v7 = *__p;

        operator delete(v7);
      }

      return;
    case 20:
      v2 = 8;
      v9 = 8;
      v5 = 0x726F746176656C45;
LABEL_14:
      *__p = v5;
      break;
    case 21:
      v2 = 21;
      v9 = 21;
      qmemcpy(__p, "Transition_To_Walking", sizeof(__p));
      break;
    default:
      *(a2 + 23) = 0;
      *a2 = 0;
      return;
  }

  __p[v2] = 0;
  operator new();
}

void sub_638FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_639014@<X0>(void *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_638868(a1, 0, &v10);
  v5 = std::string::insert(&v10, 0, "Annotation_Details_", 0x13uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (a2)
  {
    v7 = "_CrossStreet";
  }

  else
  {
    v7 = "_NoLocation";
  }

  if (a2)
  {
    v8 = 12;
  }

  else
  {
    v8 = 11;
  }

  std::string::append(a3, v7, v8);
  return std::string::append(a3, "_NoSecondary", 0xCuLL);
}

void sub_6390C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_6390F8@<X0>(void *a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_638868(a1, 0, &v10);
  v5 = std::string::insert(&v10, 0, "Annotation_Details_", 0x13uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (a2)
  {
    v7 = "_Named";
  }

  else
  {
    v7 = "_Unnamed";
  }

  if (a2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 8;
  }

  return std::string::append(a3, v7, v8);
}

void sub_63919C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_6391CC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_6A0F58(a2, a3);
  if ((a1 & 0xFE) == 0xA)
  {
    if (v6 > 8)
    {
      if (v6 != 9)
      {
        if (v6 != 10)
        {
          *(a4 + 23) = 0;
          *a4 = 0;
          return result;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if ((v6 - 5) >= 4 && v6 == 4)
    {
LABEL_18:
      *(a4 + 16) = 0xC00000000000000;
      result.n128_u64[0] = *"_UnnamedRoad";
      *a4 = *"_UnnamedRoad";
      return result;
    }

    goto LABEL_27;
  }

  if (v6 <= 5)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a4 + 16) = 0xF00000000000000;
        result.n128_u64[0] = *"_Protected_Lane";
        strcpy(a4, "_Protected_Lane");
        return result;
      }

      if (v6 == 4)
      {
        goto LABEL_18;
      }

      if (v6 != 5)
      {
        goto LABEL_27;
      }

      v8 = "_Sidewalk";
      goto LABEL_31;
    }

    if (v6 == 1)
    {
      v8 = "_Bike_Lane";
      goto LABEL_31;
    }

LABEL_27:
    *(a4 + 23) = 0;
    *a4 = 0;
    return result;
  }

  if (v6 > 8)
  {
    switch(v6)
    {
      case 9:
LABEL_24:
        *(a4 + 16) = 0x700000000000000;
        result.n128_u64[0] = *"_Bridge";
        *a4 = *"_Bridge";
        return result;
      case 10:
LABEL_23:
        *(a4 + 16) = 0x700000000000000;
        result.n128_u64[0] = *"_Tunnel";
        *a4 = *"_Tunnel";
        return result;
      case 11:
        v8 = "_Paved_Path";
LABEL_31:
        result = *v8;
        *a4 = *v8;
        *(a4 + 16) = v8[1].n128_u64[0];
        return result;
    }

    goto LABEL_27;
  }

  if (v6 == 6)
  {
    v8 = "_Path";
    goto LABEL_31;
  }

  *(a4 + 16) = 0x600000000000000;
  if (v6 == 7)
  {
    result.n128_u64[0] = *"_Trail";
    *a4 = *"_Trail";
  }

  else
  {
    result.n128_u64[0] = *"_Plaza";
    *a4 = *"_Plaza";
  }

  return result;
}

double sub_6393E8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_4D1F50(a1, a2);
  v5 = v4;
  v6 = *(v4 + 36);
  if ((v6 & 0x40000000) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 >> 31;
  }

  if (sub_314D1C(v4, v7) && (v8 = (*v5 - **v5), *v8 >= 0x9Bu) && (v9 = v8[77]) != 0 && (*(*v5 + v9 + 1) & 4) != 0)
  {
    *(a3 + 16) = 0x700000000000000;
    result = *"_Bridge";
    *a3 = *"_Bridge";
  }

  else
  {
    v10 = *(v5 + 9);
    if ((v10 & 0x40000000) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 >> 31;
    }

    v12 = sub_314D1C(v5, v11);
    v14 = *v5;
    if (v12 && *(v14 - **v5) >= 0x9Bu && *(v14 - **v5 + 154) && (*(v14 + *(v14 - **v5 + 154) + 1) & 8) != 0)
    {
      *(a3 + 16) = 0x700000000000000;
      result = *"_Tunnel";
      *a3 = *"_Tunnel";
    }

    else
    {
      v15 = (v14 - **v5);
      if (*v15 < 0x9Bu)
      {
        goto LABEL_22;
      }

      v16 = v15[77];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = *(v14 + v16);
      if ((v17 & 0x200000) != 0)
      {
        goto LABEL_22;
      }

      v18 = 1;
      if ((*(v5 + 39) & 0x20) == 0)
      {
        v18 = 2;
      }

      if ((v17 & v18) != 0)
      {
        *(a3 + 16) = 0xC00000000000000;
        result = *"_UnnamedRoad";
        *a3 = *"_UnnamedRoad";
      }

      else
      {
LABEL_22:
        *(a3 + 23) = 0;
        *a3 = 0;
      }
    }
  }

  return result;
}

void sub_639564(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, std::string *a6@<X8>)
{
  if (a1 == 15)
  {

    sub_6390F8(a1, a4, a6);
    return;
  }

  v11 = a1;
  sub_638868(a1, 0, &v23);
  v12 = std::string::insert(&v23, 0, "Annotation_Details_", 0x13uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  a6->__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&a6->__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_6391CC(v11, a2, a3, &v23);
    v14 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    v15 = v23.__r_.__value_.__r.__words[0];
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = 10;
  *(&v23.__r_.__value_.__s + 23) = 10;
  strcpy(&v23, "_NamedRoad");
  v15 = 0x6F5264656D614E5FLL;
LABEL_10:
  if ((v14 & 0x80u) == 0)
  {
    v16 = &v23;
  }

  else
  {
    v16 = v15;
  }

  if ((v14 & 0x80u) == 0)
  {
    size = v14;
  }

  else
  {
    size = v23.__r_.__value_.__l.__size_;
  }

  std::string::append(a6, v16, size);
  v18 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v23.__r_.__value_.__l.__size_;
  }

  if (a5)
  {
    v19 = "_CrossStreet";
  }

  else
  {
    v19 = "_NoCrossStreet";
  }

  v20 = 14;
  if (a5)
  {
    v20 = 12;
  }

  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = "_NoLocation";
  }

  if (v18)
  {
    v22 = v20;
  }

  else
  {
    v22 = 11;
  }

  std::string::append(a6, v21, v22);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_639734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_63977C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, std::string *a6@<X8>)
{
  if (a1 != 6)
  {
    if (a1 == 20 || a1 == 15)
    {

      sub_6390F8(a1, a4, a6);
      return;
    }

    sub_638868(a1, 0, &v24);
    v11 = std::string::insert(&v24, 0, "Annotation_Details_", 0x13uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    a6->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&a6->__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = a3;
    v14 = a2;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      v14 = a2;
      v13 = a3;
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else if (a4)
    {
LABEL_12:
      v15 = 10;
      *(&v24.__r_.__value_.__s + 23) = 10;
      strcpy(&v24, "_NamedRoad");
      v16 = 0x6F5264656D614E5FLL;
LABEL_15:
      if ((v15 & 0x80u) == 0)
      {
        v17 = &v24;
      }

      else
      {
        v17 = v16;
      }

      if ((v15 & 0x80u) == 0)
      {
        size = v15;
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      std::string::append(a6, v17, size);
      v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v24.__r_.__value_.__l.__size_;
      }

      if (a5)
      {
        v20 = "_CrossStreet";
      }

      else
      {
        v20 = "_NoCrossStreet";
      }

      v21 = 14;
      if (a5)
      {
        v21 = 12;
      }

      if (v19)
      {
        v22 = v20;
      }

      else
      {
        v22 = "_NoLocation";
      }

      if (v19)
      {
        v23 = v21;
      }

      else
      {
        v23 = 11;
      }

      std::string::append(a6, v22, v23);
      std::string::append(a6, "_NoSecondary", 0xCuLL);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      return;
    }

    sub_6393E8(v14, v13, &v24);
    v15 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    v16 = v24.__r_.__value_.__r.__words[0];
    goto LABEL_15;
  }

  sub_639014(a1, a5, a6);
}

void sub_6399A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6399F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if (0x4FCACE213F2B3885 * ((v8 - v9) >> 3) >= a5)
    {
      v14 = v9 - a2;
      if (0x4FCACE213F2B3885 * ((v9 - a2) >> 3) >= a5)
      {
        v21 = 616 * a5;
        sub_639D4C(a1, a2, a1[1], a2 + 616 * a5);
        v22 = 0;
        v23 = v21 + v6;
        do
        {
          *(v22 + v5) = *v6;
          sub_5410A0(v22 + v5 + 16, v6 + 16);
          *(v22 + v5 + 128) = *(v6 + 128);
          sub_594568(v22 + v5 + 136, v6 + 136);
          sub_594568(v22 + v5 + 296, v6 + 296);
          sub_594568(v22 + v5 + 456, v6 + 456);
          v22 += 616;
          v6 += 616;
        }

        while (v6 != v23);
      }

      else
      {
        v16 = v14 + a3;
        v17 = a1[1];
        if (v14 + a3 != a4)
        {
          v18 = a5;
          v19 = 0;
          do
          {
            sub_63A19C(v9 + v19, v16 + v19);
            v19 += 616;
          }

          while (v16 + v19 != a4);
          v17 = v9 + v19;
          a5 = v18;
        }

        a1[1] = v17;
        if (v14 >= 1)
        {
          sub_639D4C(a1, v5, v9, v5 + 616 * a5);
          v20 = 0;
          do
          {
            *(v20 + v5) = *v6;
            sub_5410A0(v20 + v5 + 16, v6 + 16);
            *(v20 + v5 + 128) = *(v6 + 128);
            sub_594568(v20 + v5 + 136, v6 + 136);
            sub_594568(v20 + v5 + 296, v6 + 296);
            sub_594568(v20 + v5 + 456, v6 + 456);
            v20 += 616;
            v6 += 616;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + 0x4FCACE213F2B3885 * ((v9 - *a1) >> 3);
      if (v11 > 0x6A63BD81A98EF6)
      {
        sub_1794();
      }

      v12 = 0x4FCACE213F2B3885 * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3531DEC0D4C77BLL)
      {
        v13 = 0x6A63BD81A98EF6;
      }

      else
      {
        v13 = v11;
      }

      v34 = a1;
      if (v13)
      {
        if (v13 <= 0x6A63BD81A98EF6)
        {
          operator new();
        }

        sub_1808();
      }

      v24 = 8 * ((a2 - v10) >> 3);
      __p = 0;
      v31 = v24;
      v32 = v24;
      v33 = 0;
      v25 = 616 * a5;
      v26 = v24 + 616 * a5;
      do
      {
        sub_63A19C(v24, v6);
        v24 += 616;
        v6 += 616;
        v25 -= 616;
      }

      while (v25);
      v32 = v26;
      v5 = sub_639EBC(a1, &__p, v5);
      v28 = v31;
      for (i = v32; v32 != v28; i = v32)
      {
        v32 = i - 616;
        sub_5C2320(i - 616);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_639CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

void sub_639D04(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 616;
    v7 = -v4;
    do
    {
      sub_5C2320(v6);
      v6 -= 616;
      v7 += 616;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_639D34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_639D4C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(result + 8);
  v6 = a2 + v5 - a4;
  v7 = v5;
  if (v6 < a3)
  {
    v18 = result;
    v19 = a2;
    v9 = 0;
    do
    {
      v12 = v6 + v9;
      v13 = v5 + v9;
      *v13 = *(v6 + v9);
      *(v5 + v9 + 16) = 0;
      *(v13 + 48) = -1;
      v14 = *(v6 + v9 + 48);
      if (v14 != -1)
      {
        v20 = v5 + v9 + 16;
        (off_266BE50[v14])(&v20, v12 + 16);
        *(v13 + 48) = v14;
      }

      *(v13 + 56) = *(v12 + 56);
      v10 = *(v12 + 64);
      *(v13 + 80) = *(v12 + 80);
      *(v13 + 64) = v10;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = 0;
      *(v13 + 88) = *(v12 + 88);
      v11 = *(v12 + 96);
      *(v13 + 112) = *(v12 + 112);
      *(v13 + 96) = v11;
      *(v12 + 104) = 0;
      *(v12 + 112) = 0;
      *(v12 + 96) = 0;
      *(v13 + 120) = *(v12 + 120);
      *(v13 + 128) = *(v12 + 128);
      sub_63A2E8(v13 + 136, v12 + 136);
      v9 += 616;
    }

    while (v12 + 616 < a3);
    v7 = v5 + v9;
    result = v18;
    a2 = v19;
  }

  *(result + 8) = v7;
  if (v5 != a4)
  {
    v15 = v5 - 616;
    v16 = a4 - v5;
    v17 = a2 + v5 - 616 - a4;
    do
    {
      result = sub_63A54C(v15, v17);
      v15 -= 616;
      v17 -= 616;
      v16 += 616;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_639EBC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v27 = a2[1];
  v6 = a1[1];
  if (v6 != a3)
  {
    v7 = 0;
    v8 = a2[2];
    do
    {
      v11 = a3 + v7;
      v12 = v8 + v7;
      *v12 = *(a3 + v7);
      *(v8 + v7 + 16) = 0;
      *(v12 + 48) = -1;
      v13 = *(a3 + v7 + 48);
      if (v13 != -1)
      {
        v29 = v8 + v7 + 16;
        (off_266BE50[v13])(&v29, v11 + 16);
        *(v12 + 48) = v13;
      }

      *(v12 + 56) = *(v11 + 56);
      v9 = *(v11 + 64);
      *(v12 + 80) = *(v11 + 80);
      *(v12 + 64) = v9;
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 64) = 0;
      *(v12 + 88) = *(v11 + 88);
      v10 = *(v11 + 96);
      *(v12 + 112) = *(v11 + 112);
      *(v12 + 96) = v10;
      *(v11 + 104) = 0;
      *(v11 + 112) = 0;
      *(v11 + 96) = 0;
      *(v12 + 120) = *(v11 + 120);
      *(v12 + 128) = *(v11 + 128);
      sub_63A2E8(v12 + 136, v11 + 136);
      v7 += 616;
    }

    while (v11 + 616 != v6);
    v14 = a3;
    v5 = a1;
    do
    {
      sub_5C2320(v14);
      v14 += 616;
    }

    while (v14 != v6);
  }

  a2[2] += v5[1] - a3;
  v5[1] = a3;
  v15 = *v5;
  v16 = a2[1] + *v5 - a3;
  if (*v5 != a3)
  {
    v17 = 0;
    do
    {
      v20 = v15 + v17;
      v21 = v16 + v17;
      *v21 = *(v15 + v17);
      *(v16 + v17 + 16) = 0;
      *(v21 + 48) = -1;
      v22 = *(v15 + v17 + 48);
      if (v22 != -1)
      {
        v29 = v16 + v17 + 16;
        (off_266BE50[v22])(&v29, v20 + 16);
        *(v21 + 48) = v22;
      }

      *(v21 + 56) = *(v20 + 56);
      v18 = *(v20 + 64);
      *(v21 + 80) = *(v20 + 80);
      *(v21 + 64) = v18;
      *(v20 + 72) = 0;
      *(v20 + 80) = 0;
      *(v20 + 64) = 0;
      *(v21 + 88) = *(v20 + 88);
      v19 = *(v20 + 96);
      *(v21 + 112) = *(v20 + 112);
      *(v21 + 96) = v19;
      *(v20 + 104) = 0;
      *(v20 + 112) = 0;
      *(v20 + 96) = 0;
      *(v21 + 120) = *(v20 + 120);
      *(v21 + 128) = *(v20 + 128);
      sub_63A2E8(v21 + 136, v20 + 136);
      v17 += 616;
    }

    while (v20 + 616 != a3);
    v5 = a1;
    do
    {
      sub_5C2320(v15);
      v15 += 616;
    }

    while (v15 != a3);
  }

  a2[1] = v16;
  v23 = *v5;
  *v5 = v16;
  v5[1] = v23;
  a2[1] = v23;
  v24 = v5[1];
  v5[1] = a2[2];
  a2[2] = v24;
  v25 = v5[2];
  v5[2] = a2[3];
  a2[3] = v25;
  *a2 = a2[1];
  return v27;
}

uint64_t sub_63A148(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 616;
    sub_5C2320(i - 616);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_63A19C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_55F1E8(a1 + 16, a2 + 16);
  *(a1 + 128) = *(a2 + 128);
  sub_55BD50(a1 + 136, a2 + 136);
  sub_55BD50(a1 + 296, a2 + 296);
  sub_55BD50(a1 + 456, a2 + 456);
  return a1;
}

void sub_63A1FC(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_63A23C(uint64_t a1)
{
  sub_53A868(a1 + 456);
  sub_53A868(a1 + 296);
  sub_53A868(a1 + 136);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
LABEL_7:
    (off_266BE00[v2])(&v4, a1 + 16);
  }

LABEL_8:
  *(a1 + 48) = -1;
  return a1;
}

__n128 sub_63A2E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  v2 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v2;
  v3 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v3;
  v4 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v4;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v5 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v5;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  v6 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v6;
  v7 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v7;
  v8 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v8;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  v9 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v9;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  v10 = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a1 + 416) = v10;
  LODWORD(v10) = *(a2 + 424);
  *(a1 + 428) = *(a2 + 428);
  *(a1 + 424) = v10;
  v11 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v11;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0;
  result = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = result;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 456) = 0;
  return result;
}

uint64_t sub_63A54C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266BE00[v4])(&v10, a1 + 16);
    *(a1 + 48) = -1;
    goto LABEL_6;
  }

  v9 = a1 + 16;
  (off_266BE78[v5])(&v9);
LABEL_6:
  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  sub_53D784(a1 + 136, a2 + 136);
  sub_53D784(a1 + 296, a2 + 296);
  sub_53D784(a1 + 456, a2 + 456);
  return a1;
}

uint64_t sub_63A680(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63A814(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63A800(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63A814(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63A88C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_63A8CC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v10 = v4 + v7;
      v11 = v6 + v7;
      *v11 = *(v4 + v7);
      *(v6 + v7 + 16) = 0;
      *(v11 + 48) = -1;
      v12 = *(v4 + v7 + 48);
      if (v12 != -1)
      {
        v16 = v6 + v7 + 16;
        (off_266BE50[v12])(&v16, v10 + 16);
        *(v11 + 48) = v12;
      }

      *(v11 + 56) = *(v10 + 56);
      v8 = *(v10 + 64);
      *(v11 + 80) = *(v10 + 80);
      *(v11 + 64) = v8;
      *(v10 + 72) = 0;
      *(v10 + 80) = 0;
      *(v10 + 64) = 0;
      *(v11 + 88) = *(v10 + 88);
      v9 = *(v10 + 96);
      *(v11 + 112) = *(v10 + 112);
      *(v11 + 96) = v9;
      *(v10 + 104) = 0;
      *(v10 + 112) = 0;
      *(v10 + 96) = 0;
      *(v11 + 120) = *(v10 + 120);
      *(v11 + 128) = *(v10 + 128);
      sub_63A2E8(v11 + 136, v10 + 136);
      v7 += 616;
    }

    while (v10 + 616 != v5);
    do
    {
      sub_5C2320(v4);
      v4 += 616;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_63AA44(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63ABD8(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63ABC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63ABD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63AC50(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_63AC90(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63AE24(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63AE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63AE24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63AE9C(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_63AEDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v6 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v7 = v6 + 1;
  if ((v6 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v7)
  {
    v7 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v9 = 0x6A63BD81A98EF6;
  }

  else
  {
    v9 = v7;
  }

  v18 = a1;
  if (v9)
  {
    if (v9 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v15 = 616 * v6;
  v17 = 0;
  sub_63B070(616 * v6, a2, a3, a4, a5, a6);
  v16 = 616 * v6 + 616;
  sub_63A8CC(a1, &__p);
  v10 = a1[1];
  v12 = v15;
  for (i = v16; v16 != v12; i = v16)
  {
    v16 = i - 616;
    sub_5C2320(i - 616);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_63B05C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_63A148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_63B070(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, int *a6)
{
  v8 = *a2;
  v9 = *a6;
  *a1 = *a5;
  *(a1 + 8) = v8;
  sub_55F1E8(a1 + 16, a3);
  *(a1 + 128) = v9;
  sub_55BD50(a1 + 136, a4);
  sub_55BD50(a1 + 296, a4 + 160);
  sub_55BD50(a1 + 456, a4 + 320);
  return a1;
}

void sub_63B0E8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 296);
  sub_53A868(v1 + 136);
  sub_53E440(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_63B128(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a1;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    a1 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = 0x4FCACE213F2B3885 * (v11 >> 3);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return;
    }

    if (v12 == 2)
    {
      v21 = *(a2 - 76);
      v22 = *(a1 + 8);
      v23 = v21 == v22;
      v24 = v21 < v22;
      if (v23)
      {
        v24 = *(a2 - 122) > *(a1 + 128);
      }

      if (v24)
      {
        v25 = a1;
        v26 = a2 - 616;
        goto LABEL_37;
      }

      return;
    }

LABEL_10:
    if (v11 <= 14783)
    {
      if (a5)
      {

        sub_63B940(a1, a2);
      }

      else
      {

        sub_63BED8(a1, a2);
      }

      return;
    }

    if (v9 == 1)
    {
      if (a1 != a2)
      {
        v36 = (v12 - 2) >> 1;
        v37 = v36 + 1;
        v38 = a1 + 616 * v36;
        do
        {
          sub_63D594(a1, a3, 0x4FCACE213F2B3885 * (v11 >> 3), v38);
          v38 -= 616;
          --v37;
        }

        while (v37);
        v39 = 0x4FCACE213F2B3885 * (v11 >> 3);
        do
        {
          sub_63DA00(a1, a2, a3, v39);
          a2 = (a2 - 616);
        }

        while (v39-- > 2);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = a1 + 616 * (v12 >> 1);
    if (v11 < 0x13401)
    {
      sub_63B63C(v14, a1, a2 - 616);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_63B63C(a1, v14, a2 - 616);
      sub_63B63C(a1 + 616, 616 * v13 + a1 - 616, (a2 - 77));
      sub_63B63C(a1 + 1232, a1 + 616 + 616 * v13, a2 - 1848);
      sub_63B63C(616 * v13 + a1 - 616, v14, a1 + 616 + 616 * v13);
      sub_63D28C(a1, v14);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v15 = *(a1 - 608);
    v16 = *(a1 + 8);
    v23 = v15 == v16;
    v17 = v15 < v16;
    if (v23)
    {
      v17 = *(a1 - 488) > *(a1 + 128);
    }

    if (!v17)
    {
      v8 = sub_63C444(a1, a2);
      goto LABEL_24;
    }

LABEL_19:
    v18 = sub_63C894(a1, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_63CCE0(a1, v18);
    v8 = v18 + 616;
    if (sub_63CCE0(v18 + 616, a2))
    {
      a4 = -v10;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v9 = v10 + 1;
    if (!v20)
    {
LABEL_22:
      sub_63B128(a1, v18, a3, -v10, a5 & 1);
      v8 = v18 + 616;
LABEL_24:
      a5 = 0;
      a4 = -v10;
      goto LABEL_2;
    }
  }

  if (v12 == 3)
  {

    sub_63B63C(a1, a1 + 616, a2 - 616);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {

      sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
      return;
    }

    goto LABEL_10;
  }

  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v27 = *(a2 - 76);
  v28 = *(a1 + 1240);
  v23 = v27 == v28;
  v29 = v27 < v28;
  if (v23)
  {
    v29 = *(a2 - 122) > *(a1 + 1360);
  }

  if (v29)
  {
    sub_63D28C(a1 + 1232, a2 - 616);
    v30 = *(a1 + 1240);
    v31 = *(a1 + 624);
    v23 = v30 == v31;
    v32 = v30 < v31;
    if (v23)
    {
      v32 = *(a1 + 1360) > *(a1 + 744);
    }

    if (v32)
    {
      sub_63D28C(a1 + 616, a1 + 1232);
      v33 = *(a1 + 624);
      v34 = *(a1 + 8);
      v23 = v33 == v34;
      v35 = v33 < v34;
      if (v23)
      {
        v35 = *(a1 + 744) > *(a1 + 128);
      }

      if (v35)
      {
        v26 = a1 + 616;
        v25 = a1;
LABEL_37:

        sub_63D28C(v25, v26);
      }
    }
  }
}

uint64_t sub_63B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 128);
  v7 = v4 == v5;
  v8 = v4 < v5;
  if (v7)
  {
    v8 = v6 > *(a1 + 128);
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 128) > v6;
  v7 = v9 == v4;
  v11 = v9 < v4;
  if (v7)
  {
    v11 = v10;
  }

  if (v8)
  {
    if (v11)
    {
      v12 = a3;
    }

    else
    {
      sub_63D28C(a1, a2);
      v18 = *(a3 + 8);
      v19 = *(a2 + 8);
      v7 = v18 == v19;
      v20 = v18 < v19;
      if (v7)
      {
        v20 = *(a3 + 128) > *(a2 + 128);
      }

      if (!v20)
      {
        return 1;
      }

      v12 = a3;
      a1 = a2;
    }

LABEL_17:
    sub_63D28C(a1, v12);
    return 1;
  }

  if (v11)
  {
    v13 = a1;
    sub_63D28C(a2, a3);
    v14 = *(a2 + 8);
    v15 = *(v13 + 8);
    v7 = v14 == v15;
    v16 = v14 < v15;
    if (v7)
    {
      v16 = *(a2 + 128) > *(v13 + 128);
    }

    if (!v16)
    {
      return 1;
    }

    a1 = v13;
    v12 = a2;
    goto LABEL_17;
  }

  return 0;
}

void sub_63B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_63B63C(a1, a2, a3);
  v10 = *(a4 + 8);
  v11 = *(a3 + 8);
  v12 = v10 == v11;
  v13 = v10 < v11;
  if (v12)
  {
    v13 = *(a4 + 128) > *(a3 + 128);
  }

  if (v13)
  {
    sub_63D28C(a3, a4);
    v14 = *(a3 + 8);
    v15 = *(a2 + 8);
    v12 = v14 == v15;
    v16 = v14 < v15;
    if (v12)
    {
      v16 = *(a3 + 128) > *(a2 + 128);
    }

    if (v16)
    {
      sub_63D28C(a2, a3);
      v17 = *(a2 + 8);
      v18 = *(a1 + 8);
      v12 = v17 == v18;
      v19 = v17 < v18;
      if (v12)
      {
        v19 = *(a2 + 128) > *(a1 + 128);
      }

      if (v19)
      {
        sub_63D28C(a1, a2);
      }
    }
  }

  v20 = *(a5 + 8);
  v21 = *(a4 + 8);
  v12 = v20 == v21;
  v22 = v20 < v21;
  if (v12)
  {
    v22 = *(a5 + 128) > *(a4 + 128);
  }

  if (v22)
  {
    sub_63D28C(a4, a5);
    v23 = *(a4 + 8);
    v24 = *(a3 + 8);
    v12 = v23 == v24;
    v25 = v23 < v24;
    if (v12)
    {
      v25 = *(a4 + 128) > *(a3 + 128);
    }

    if (v25)
    {
      sub_63D28C(a3, a4);
      v26 = *(a3 + 8);
      v27 = *(a2 + 8);
      v12 = v26 == v27;
      v28 = v26 < v27;
      if (v12)
      {
        v28 = *(a3 + 128) > *(a2 + 128);
      }

      if (v28)
      {
        sub_63D28C(a2, a3);
        v29 = *(a2 + 8);
        v30 = *(a1 + 8);
        v12 = v29 == v30;
        v31 = v29 < v30;
        if (v12)
        {
          v31 = *(a2 + 128) > *(a1 + 128);
        }

        if (v31)
        {

          sub_63D28C(a1, a2);
        }
      }
    }
  }
}

void sub_63B940(uint64_t a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = (a1 + 616);
  if ((a1 + 616) == a2)
  {
    return;
  }

  v4 = 0;
  v5 = a1;
  v33 = a2;
  while (2)
  {
    v6 = v3;
    v7 = *(v5 + 78);
    v8 = *(v5 + 1);
    v9 = *(v5 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v5 + 32);
    }

    if (!v11)
    {
      goto LABEL_5;
    }

    v34 = *v6;
    v35[0] = 0;
    v36 = -1;
    v12 = *(v5 + 166);
    if (v12 != -1)
    {
      v90[0] = v35;
      (off_266BE50[v12])(v90, v5 + 632);
      v36 = v12;
      v9 = *(v5 + 186);
    }

    v37 = *(v5 + 84);
    v39 = *(v5 + 87);
    v38 = *(v5 + 680);
    v5[43] = 0u;
    *(v5 + 85) = 0;
    v40 = *(v5 + 704);
    v42 = *(v5 + 91);
    __p = *(v5 + 712);
    *(v5 + 91) = 0;
    *(v5 + 712) = 0u;
    v43 = *(v5 + 736);
    v44 = v9;
    v45 = v5[47];
    v46 = *(v5 + 96);
    v5[47] = 0u;
    *(v5 + 96) = 0;
    v47 = *(v5 + 776);
    v48 = *(v5 + 99);
    *(v5 + 776) = 0u;
    *(v5 + 99) = 0;
    v49 = v5[50];
    v50 = *(v5 + 102);
    v5[50] = 0u;
    *(v5 + 102) = 0;
    v51 = *(v5 + 824);
    v52 = *(v5 + 105);
    *(v5 + 824) = 0u;
    *(v5 + 105) = 0;
    v13 = *(v5 + 106);
    *(v5 + 106) = 0;
    v54 = *(v5 + 214);
    v55 = *(v5 + 430);
    v56 = v5[54];
    v57 = *(v5 + 110);
    *(v5 + 110) = 0;
    v5[54] = 0u;
    v14 = *(v5 + 888);
    v59 = *(v5 + 113);
    v58 = v14;
    *(v5 + 113) = 0;
    *(v5 + 888) = 0u;
    v60 = v5[57];
    v15 = *(v5 + 116);
    v53 = v13;
    v61 = v15;
    v5[57] = 0u;
    *(v5 + 116) = 0;
    v62 = *(v5 + 936);
    v63 = *(v5 + 119);
    *(v5 + 936) = 0u;
    *(v5 + 119) = 0;
    v64 = v5[60];
    v65 = *(v5 + 122);
    v5[60] = 0u;
    *(v5 + 122) = 0;
    v66 = *(v5 + 984);
    v67 = *(v5 + 125);
    *(v5 + 984) = 0u;
    *(v5 + 125) = 0;
    v16 = *(v5 + 126);
    *(v5 + 126) = 0;
    v69 = *(v5 + 254);
    v70 = *(v5 + 510);
    v71 = v5[64];
    v72 = *(v5 + 130);
    *(v5 + 130) = 0;
    v5[64] = 0u;
    v17 = *(v5 + 1048);
    v74 = *(v5 + 133);
    v73 = v17;
    *(v5 + 133) = 0;
    *(v5 + 1048) = 0u;
    v75 = v5[67];
    v18 = *(v5 + 136);
    v68 = v16;
    v76 = v18;
    v5[67] = 0u;
    *(v5 + 136) = 0;
    v77 = *(v5 + 1096);
    v78 = *(v5 + 139);
    *(v5 + 1096) = 0u;
    *(v5 + 139) = 0;
    v79 = v5[70];
    v80 = *(v5 + 142);
    v5[70] = 0u;
    *(v5 + 142) = 0;
    v81 = *(v5 + 1144);
    v82 = *(v5 + 145);
    *(v5 + 1144) = 0u;
    *(v5 + 145) = 0;
    v19 = *(v5 + 146);
    *(v5 + 146) = 0;
    v83 = v19;
    v84 = *(v5 + 294);
    v85 = *(v5 + 590);
    v86 = v5[74];
    v87 = *(v5 + 150);
    *(v5 + 150) = 0;
    v5[74] = 0u;
    v20 = (v5 + 1208);
    v21 = *(v5 + 1208);
    v89 = *(v5 + 153);
    v88 = v21;
    *(v5 + 153) = 0;
    v22 = v4;
    *v20 = 0u;
    while (1)
    {
      *(a1 + v22 + 616) = *(a1 + v22);
      v23 = *(a1 + v22 + 664);
      v24 = *(a1 + v22 + 48);
      if (v23 == -1)
      {
        if (v24 == -1)
        {
          goto LABEL_17;
        }
      }

      else if (v24 == -1)
      {
        (off_266BE00[v23])(v90, a1 + v22 + 632);
        *(a1 + v22 + 664) = -1;
        goto LABEL_17;
      }

      v90[0] = a1 + v22 + 632;
      (off_266BE78[v24])(v90);
LABEL_17:
      v25 = a1 + v22;
      *(a1 + v22 + 672) = *(a1 + v22 + 56);
      v26 = (a1 + v22 + 680);
      if (*(a1 + v22 + 703) < 0)
      {
        operator delete(*v26);
      }

      *v26 = *(v25 + 64);
      *(a1 + v22 + 696) = *(v25 + 80);
      *(v25 + 87) = 0;
      *(v25 + 64) = 0;
      *(v25 + 704) = *(v25 + 88);
      v27 = v25 + 712;
      if (*(v25 + 735) < 0)
      {
        operator delete(*v27);
      }

      v28 = a1 + v22;
      *v27 = *(a1 + v22 + 96);
      *(v27 + 16) = *(a1 + v22 + 112);
      *(v28 + 119) = 0;
      *(v28 + 96) = 0;
      *(v28 + 736) = *(a1 + v22 + 120);
      *(v28 + 744) = *(a1 + v22 + 128);
      sub_53D784(a1 + v22 + 752, a1 + v22 + 136);
      sub_53D784(v28 + 912, v28 + 296);
      sub_53D784(v28 + 1072, v28 + 456);
      if (!v22)
      {
        break;
      }

      v29 = *(v28 - 608);
      v10 = *(&v34 + 1) == v29;
      v30 = *(&v34 + 1) < v29;
      if (v10)
      {
        v30 = v44 > *(v28 - 488);
      }

      v22 -= 616;
      if (!v30)
      {
        v31 = a1 + v22 + 616;
        goto LABEL_27;
      }
    }

    v31 = a1;
LABEL_27:
    sub_63A54C(v31, &v34);
    sub_53A868(&v75);
    sub_53A868(&v60);
    sub_53A868(&v45);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v39) < 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      v32 = v36;
      if (v36 != -1)
      {
LABEL_33:
        (off_266BE00[v32])(v90, v35);
      }
    }

    else
    {
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_32:
      operator delete(v38);
      v32 = v36;
      if (v36 != -1)
      {
        goto LABEL_33;
      }
    }

    a2 = v33;
LABEL_5:
    v3 = (v6 + 616);
    v4 += 616;
    v5 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

void sub_63BED8(_OWORD *a1, _OWORD *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  v4 = (a1 + 616);
  if ((a1 + 616) == a2)
  {
    return;
  }

  v5 = a1 - 38;
  while (2)
  {
    v6 = v4;
    v7 = *(v3 + 78);
    v8 = *(v3 + 1);
    v9 = *(v3 + 186);
    v10 = v7 == v8;
    v11 = v7 < v8;
    if (v10)
    {
      v11 = v9 > *(v3 + 32);
    }

    if (!v11)
    {
      goto LABEL_4;
    }

    v29 = *v6;
    v30[0] = 0;
    v31 = -1;
    v12 = *(v3 + 166);
    if (v12 != -1)
    {
      v85[0] = v30;
      (off_266BE50[v12])(v85, v3 + 632);
      v31 = v12;
      v9 = *(v3 + 186);
    }

    v32 = *(v3 + 84);
    v34 = *(v3 + 87);
    v33 = *(v3 + 680);
    v3[43] = 0u;
    *(v3 + 85) = 0;
    v35 = *(v3 + 704);
    v37 = *(v3 + 91);
    __p = *(v3 + 712);
    *(v3 + 91) = 0;
    *(v3 + 712) = 0u;
    v38 = *(v3 + 736);
    v39 = v9;
    v40 = v3[47];
    v41 = *(v3 + 96);
    v3[47] = 0u;
    *(v3 + 96) = 0;
    v42 = *(v3 + 776);
    v43 = *(v3 + 99);
    *(v3 + 776) = 0u;
    *(v3 + 99) = 0;
    v44 = v3[50];
    v45 = *(v3 + 102);
    v3[50] = 0u;
    *(v3 + 102) = 0;
    v46 = *(v3 + 824);
    v47 = *(v3 + 105);
    *(v3 + 824) = 0u;
    *(v3 + 105) = 0;
    v13 = *(v3 + 106);
    *(v3 + 106) = 0;
    v49 = *(v3 + 214);
    v50 = *(v3 + 430);
    v51 = v3[54];
    v52 = *(v3 + 110);
    *(v3 + 110) = 0;
    v3[54] = 0u;
    v14 = *(v3 + 888);
    v54 = *(v3 + 113);
    v53 = v14;
    *(v3 + 113) = 0;
    *(v3 + 888) = 0u;
    v55 = v3[57];
    v15 = *(v3 + 116);
    v48 = v13;
    v56 = v15;
    v3[57] = 0u;
    *(v3 + 116) = 0;
    v57 = *(v3 + 936);
    v58 = *(v3 + 119);
    *(v3 + 936) = 0u;
    *(v3 + 119) = 0;
    v59 = v3[60];
    v60 = *(v3 + 122);
    v3[60] = 0u;
    *(v3 + 122) = 0;
    v61 = *(v3 + 984);
    v62 = *(v3 + 125);
    *(v3 + 984) = 0u;
    *(v3 + 125) = 0;
    v16 = *(v3 + 126);
    *(v3 + 126) = 0;
    v64 = *(v3 + 254);
    v65 = *(v3 + 510);
    v66 = v3[64];
    v67 = *(v3 + 130);
    *(v3 + 130) = 0;
    v3[64] = 0u;
    v17 = *(v3 + 1048);
    v69 = *(v3 + 133);
    v68 = v17;
    *(v3 + 133) = 0;
    *(v3 + 1048) = 0u;
    v70 = v3[67];
    v18 = *(v3 + 136);
    v63 = v16;
    v71 = v18;
    v3[67] = 0u;
    *(v3 + 136) = 0;
    v72 = *(v3 + 1096);
    v73 = *(v3 + 139);
    *(v3 + 1096) = 0u;
    *(v3 + 139) = 0;
    v74 = v3[70];
    v75 = *(v3 + 142);
    v3[70] = 0u;
    *(v3 + 142) = 0;
    v76 = *(v3 + 1144);
    v77 = *(v3 + 145);
    *(v3 + 1144) = 0u;
    *(v3 + 145) = 0;
    v19 = *(v3 + 146);
    *(v3 + 146) = 0;
    v78 = v19;
    v79 = *(v3 + 294);
    v80 = *(v3 + 590);
    v81 = v3[74];
    v82 = *(v3 + 150);
    *(v3 + 150) = 0;
    v3[74] = 0u;
    v20 = (v3 + 1208);
    v21 = *(v3 + 1208);
    v84 = *(v3 + 153);
    v83 = v21;
    *(v3 + 153) = 0;
    v22 = v5;
    *v20 = 0u;
    do
    {
      *(v22 + 1224) = v22[38];
      v24 = *(v22 + 318);
      v25 = *(v22 + 164);
      if (v24 == -1)
      {
        if (v25 == -1)
        {
          goto LABEL_19;
        }
      }

      else if (v25 == -1)
      {
        (off_266BE00[v24])(v85, v22 + 1240);
        *(v22 + 318) = -1;
        goto LABEL_19;
      }

      v85[0] = v22 + 1240;
      (off_266BE78[v25])(v85);
LABEL_19:
      *(v22 + 160) = *(v22 + 83);
      v26 = v22 + 161;
      if (*(v22 + 1311) < 0)
      {
        operator delete(*v26);
      }

      *v26 = v22[42];
      *(v22 + 163) = *(v22 + 86);
      *(v22 + 695) = 0;
      *(v22 + 672) = 0;
      *(v22 + 1312) = *(v22 + 696);
      v27 = v22 + 165;
      if (*(v22 + 1343) < 0)
      {
        operator delete(*v27);
      }

      *v27 = v22[44];
      *(v22 + 167) = *(v22 + 90);
      *(v22 + 727) = 0;
      *(v22 + 704) = 0;
      *(v22 + 1344) = *(v22 + 728);
      *(v22 + 338) = *(v22 + 184);
      sub_53D784((v22 + 85), v22 + 744);
      sub_53D784((v22 + 95), v22 + 904);
      sub_53D784((v22 + 105), v22 + 1064);
      v23 = *(&v29 + 1) < *v22;
      if (*(&v29 + 1) == *v22)
      {
        v23 = v39 > *(v22 + 30);
      }

      v22 = (v22 - 616);
    }

    while (v23);
    sub_63A54C(v22 + 1224, &v29);
    sub_53A868(&v70);
    sub_53A868(&v55);
    sub_53A868(&v40);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v34) < 0)
      {
        goto LABEL_28;
      }

LABEL_25:
      v28 = v31;
      if (v31 != -1)
      {
LABEL_29:
        (off_266BE00[v28])(v85, v30);
      }
    }

    else
    {
      if ((SHIBYTE(v34) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      operator delete(v33);
      v28 = v31;
      if (v31 != -1)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    v4 = (v6 + 616);
    v5 = (v5 + 616);
    v3 = v6;
    if ((v6 + 616) != a2)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_63C444(uint64_t a1, unint64_t a2)
{
  v46 = *a1;
  v47[0] = 0;
  v48 = -1;
  v4 = *(a1 + 48);
  if (v4 != -1)
  {
    v102 = v47;
    (off_266BE50[v4])(&v102, a1 + 16);
    v48 = v4;
  }

  v49 = *(a1 + 56);
  *v50 = *(a1 + 64);
  v51 = *(a1 + 80);
  *(a1 + 72) = 0u;
  *(a1 + 64) = 0;
  v52 = *(a1 + 88);
  *__p = *(a1 + 96);
  v54 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  v55 = *(a1 + 120);
  v56 = *(a1 + 128);
  v5 = v56;
  v57 = *(a1 + 136);
  v58 = *(a1 + 152);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v59 = *(a1 + 160);
  v6 = *(a1 + 176);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  v61 = *(a1 + 184);
  v7 = *(a1 + 200);
  v60 = v6;
  v62 = v7;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v63 = *(a1 + 208);
  *(a1 + 208) = 0u;
  v8 = *(a1 + 224);
  v9 = *(a1 + 232);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v64 = v8;
  v65 = v9;
  LODWORD(v8) = *(a1 + 240);
  v67 = *(a1 + 244);
  v66 = v8;
  v10 = *(a1 + 248);
  v69 = *(a1 + 264);
  v68 = v10;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  v70 = *(a1 + 272);
  *(a1 + 272) = 0u;
  v11 = *(a1 + 296);
  v71 = *(a1 + 288);
  v72 = v11;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v12 = *(a1 + 320);
  v73 = *(a1 + 304);
  v74 = v12;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v13 = *(a1 + 344);
  v75 = *(a1 + 336);
  v76 = v13;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v14 = *(a1 + 368);
  v77 = *(a1 + 352);
  v78 = v14;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  v15 = *(a1 + 384);
  v16 = *(a1 + 392);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v79 = v15;
  v80 = v16;
  LODWORD(v15) = *(a1 + 400);
  v82 = *(a1 + 404);
  v81 = v15;
  v17 = *(a1 + 424);
  v83 = *(a1 + 408);
  v84 = v17;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  v85 = *(a1 + 432);
  *(a1 + 432) = 0u;
  v18 = *(a1 + 456);
  v86 = *(a1 + 448);
  v87 = v18;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  v19 = *(a1 + 480);
  v88 = *(a1 + 464);
  v89 = v19;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v20 = *(a1 + 504);
  v90 = *(a1 + 496);
  v91 = v20;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  v21 = *(a1 + 528);
  v92 = *(a1 + 512);
  v93 = v21;
  v94 = *(a1 + 544);
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  v22 = *(a1 + 552);
  *(a1 + 552) = 0;
  v95 = v22;
  LODWORD(v22) = *(a1 + 560);
  v97 = *(a1 + 564);
  v96 = v22;
  v23 = *(a1 + 584);
  v98 = *(a1 + 568);
  v99 = v23;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  v24 = *(a1 + 592);
  v101 = *(a1 + 608);
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  v25 = a2 - 608;
  v26 = v5 > *(a2 - 488);
  if (*(&v46 + 1) != *(a2 - 608))
  {
    v26 = *(&v46 + 1) < *(a2 - 608);
  }

  v100 = v24;
  if (v26)
  {
    v27 = a1;
    do
    {
      v28 = v27 + 616;
      v29 = *(v27 + 624);
      v30 = v5 > *(v27 + 744);
      v31 = *(&v46 + 1) == v29;
      v32 = *(&v46 + 1) < v29;
      if (v31)
      {
        v32 = v30;
      }

      v27 = v28;
    }

    while (!v32);
  }

  else
  {
    v33 = a1 + 616;
    do
    {
      v28 = v33;
      if (v33 >= a2)
      {
        break;
      }

      v34 = *(v33 + 8);
      v35 = v5 > *(v28 + 128);
      v31 = *(&v46 + 1) == v34;
      v36 = *(&v46 + 1) < v34;
      if (!v31)
      {
        v35 = v36;
      }

      v33 = v28 + 616;
    }

    while (!v35);
  }

  if (v28 < a2)
  {
    do
    {
      v37 = *(&v46 + 1) < *v25;
      if (*(&v46 + 1) == *v25)
      {
        v37 = v5 > *(v25 + 120);
      }

      v25 -= 616;
    }

    while (v37);
    a2 = v25 + 608;
  }

  while (v28 < a2)
  {
    sub_63D28C(v28, a2);
    do
    {
      v38 = *(v28 + 624);
      v39 = *(v28 + 744);
      v28 += 616;
      v40 = v56 > v39;
      v31 = *(&v46 + 1) == v38;
      v41 = *(&v46 + 1) < v38;
      if (v31)
      {
        v41 = v40;
      }
    }

    while (!v41);
    v42 = a2 - 608;
    do
    {
      v43 = *(&v46 + 1) < *v42;
      if (*(&v46 + 1) == *v42)
      {
        v43 = v56 > *(v42 + 120);
      }

      v42 -= 616;
    }

    while (v43);
    a2 = v42 + 608;
  }

  if (v28 - 616 != a1)
  {
    sub_63A54C(a1, v28 - 616);
  }

  sub_63A54C(v28 - 616, &v46);
  sub_53A868(&v87);
  sub_53A868(&v72);
  sub_53A868(&v57);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
LABEL_35:
      v44 = v48;
      if (v48 == -1)
      {
        return v28;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v50[0]);
  v44 = v48;
  if (v48 != -1)
  {
LABEL_39:
    (off_266BE00[v44])(&v102, v47);
  }

  return v28;
}

uint64_t sub_63C894(uint64_t a1, uint64_t a2)
{
  v44 = *a1;
  v45[0] = 0;
  v46 = -1;
  v4 = *(a1 + 48);
  if (v4 != -1)
  {
    v100 = v45;
    (off_266BE50[v4])(&v100, a1 + 16);
    v46 = v4;
  }

  v5 = 0;
  v47 = *(a1 + 56);
  *v48 = *(a1 + 64);
  v49 = *(a1 + 80);
  *(a1 + 72) = 0u;
  *(a1 + 64) = 0;
  v50 = *(a1 + 88);
  *__p = *(a1 + 96);
  v52 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  v53 = *(a1 + 120);
  v6 = *(a1 + 128);
  v54 = v6;
  v55 = *(a1 + 136);
  v56 = *(a1 + 152);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v57 = *(a1 + 160);
  v7 = *(a1 + 176);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  v59 = *(a1 + 184);
  v8 = *(a1 + 200);
  v58 = v7;
  v60 = v8;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v61 = *(a1 + 208);
  *(a1 + 208) = 0u;
  v9 = *(a1 + 224);
  v10 = *(a1 + 232);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v62 = v9;
  v63 = v10;
  LODWORD(v9) = *(a1 + 240);
  v65 = *(a1 + 244);
  v64 = v9;
  v11 = *(a1 + 248);
  v67 = *(a1 + 264);
  v66 = v11;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  v68 = *(a1 + 272);
  *(a1 + 272) = 0u;
  v12 = *(a1 + 296);
  v69 = *(a1 + 288);
  v70 = v12;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v13 = *(a1 + 320);
  v71 = *(a1 + 304);
  v72 = v13;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v14 = *(a1 + 344);
  v73 = *(a1 + 336);
  v74 = v14;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v15 = *(a1 + 368);
  v75 = *(a1 + 352);
  v76 = v15;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  v16 = *(a1 + 384);
  v17 = *(a1 + 392);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v77 = v16;
  v78 = v17;
  LODWORD(v16) = *(a1 + 400);
  v80 = *(a1 + 404);
  v79 = v16;
  v81 = *(a1 + 408);
  v82 = *(a1 + 424);
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  v83 = *(a1 + 432);
  *(a1 + 432) = 0u;
  v18 = *(a1 + 456);
  v84 = *(a1 + 448);
  v85 = v18;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  v19 = *(a1 + 480);
  v86 = *(a1 + 464);
  v87 = v19;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v20 = *(a1 + 504);
  v88 = *(a1 + 496);
  v89 = v20;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  v21 = *(a1 + 528);
  v90 = *(a1 + 512);
  v91 = v21;
  v92 = *(a1 + 544);
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  v22 = *(a1 + 552);
  *(a1 + 552) = 0;
  v93 = v22;
  LODWORD(v22) = *(a1 + 560);
  v95 = *(a1 + 564);
  v94 = v22;
  v96 = *(a1 + 568);
  v97 = *(a1 + 584);
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  v23 = *(a1 + 592);
  v99 = *(a1 + 608);
  v98 = v23;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  do
  {
    v24 = *(a1 + v5 + 624);
    v25 = *(a1 + v5 + 744) > v6;
    v26 = v24 == *(&v44 + 1);
    v27 = v24 < *(&v44 + 1);
    if (!v26)
    {
      v25 = v27;
    }

    v5 += 616;
  }

  while (v25);
  v28 = a1 + v5;
  v29 = a1 + v5 - 616;
  if (v5 == 616)
  {
    v30 = a2 - 608;
    while (1)
    {
      v32 = v30 + 608;
      if (v28 >= v30 + 608)
      {
        break;
      }

      v33 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v33 = *(v30 + 120) > v6;
      }

      v30 -= 616;
      if (v33)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v30 = a2 - 608;
    do
    {
      v31 = *v30 < *(&v44 + 1);
      if (*v30 == *(&v44 + 1))
      {
        v31 = *(v30 + 120) > v6;
      }

      v30 -= 616;
    }

    while (!v31);
LABEL_18:
    v32 = v30 + 608;
  }

  if (v28 < v32)
  {
    v34 = v28;
    v35 = v32;
    do
    {
      sub_63D28C(v34, v35);
      do
      {
        v36 = *(v34 + 624);
        v37 = *(v34 + 744);
        v34 += 616;
        v38 = v37 > v54;
        v26 = v36 == *(&v44 + 1);
        v39 = v36 < *(&v44 + 1);
        if (v26)
        {
          v39 = v38;
        }
      }

      while (v39);
      v40 = v35 - 608;
      do
      {
        v41 = *v40 < *(&v44 + 1);
        if (*v40 == *(&v44 + 1))
        {
          v41 = *(v40 + 120) > v54;
        }

        v40 -= 616;
      }

      while (!v41);
      v35 = v40 + 608;
    }

    while (v34 < v40 + 608);
    v29 = v34 - 616;
  }

  if (v29 != a1)
  {
    sub_63A54C(a1, v29);
  }

  sub_63A54C(v29, &v44);
  sub_53A868(&v85);
  sub_53A868(&v70);
  sub_53A868(&v55);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
LABEL_35:
      v42 = v46;
      if (v46 == -1)
      {
        return v29;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v48[0]);
  v42 = v46;
  if (v46 != -1)
  {
LABEL_39:
    (off_266BE00[v42])(&v100, v45);
  }

  return v29;
}

BOOL sub_63CCE0(uint64_t a1, uint64_t a2)
{
  v4 = 0x4FCACE213F2B3885 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_63B63C(a1, a1 + 616, a2 - 616);
        return 1;
      case 4:
        sub_63B63C(a1, a1 + 616, a1 + 1232);
        v46 = *(a2 - 608);
        v47 = *(a1 + 1240);
        v7 = v46 == v47;
        v48 = v46 < v47;
        if (v7)
        {
          v48 = *(a2 - 488) > *(a1 + 1360);
        }

        if (!v48)
        {
          return 1;
        }

        sub_63D28C(a1 + 1232, a2 - 616);
        v49 = *(a1 + 1240);
        v50 = *(a1 + 624);
        v7 = v49 == v50;
        v51 = v49 < v50;
        if (v7)
        {
          v51 = *(a1 + 1360) > *(a1 + 744);
        }

        if (!v51)
        {
          return 1;
        }

        sub_63D28C(a1 + 616, a1 + 1232);
        v52 = *(a1 + 624);
        v53 = *(a1 + 8);
        v7 = v52 == v53;
        v54 = v52 < v53;
        if (v7)
        {
          v54 = *(a1 + 744) > *(a1 + 128);
        }

        if (!v54)
        {
          return 1;
        }

        v9 = a1 + 616;
LABEL_8:
        sub_63D28C(a1, v9);
        return 1;
      case 5:
        sub_63B750(a1, a1 + 616, a1 + 1232, a1 + 1848, a2 - 616);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 608);
      v6 = *(a1 + 8);
      v7 = v5 == v6;
      v8 = v5 < v6;
      if (v7)
      {
        v8 = *(a2 - 488) > *(a1 + 128);
      }

      if (!v8)
      {
        return 1;
      }

      v9 = a2 - 616;
      goto LABEL_8;
    }
  }

  v10 = a1 + 1232;
  sub_63B63C(a1, a1 + 616, a1 + 1232);
  v11 = a1 + 1848;
  if (a1 + 1848 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v11 + 8);
    v15 = *(v10 + 8);
    v16 = *(v11 + 128);
    v7 = v14 == v15;
    v17 = v14 < v15;
    if (v7)
    {
      v17 = v16 > *(v10 + 128);
    }

    if (!v17)
    {
      goto LABEL_17;
    }

    v56 = *v11;
    v57[0] = 0;
    v58 = -1;
    v18 = *(v11 + 48);
    if (v18 != -1)
    {
      v112[0] = v57;
      (off_266BE50[v18])(v112, v11 + 16);
      v58 = v18;
      v16 = *(v11 + 128);
    }

    v59 = *(v11 + 56);
    v60 = *(v11 + 64);
    v61 = *(v11 + 80);
    *(v11 + 72) = 0u;
    *(v11 + 64) = 0;
    v62 = *(v11 + 88);
    __p = *(v11 + 96);
    v64 = *(v11 + 112);
    *(v11 + 112) = 0;
    *(v11 + 96) = 0u;
    v65 = *(v11 + 120);
    v66 = v16;
    v67 = *(v11 + 136);
    v68 = *(v11 + 152);
    *(v11 + 136) = 0u;
    *(v11 + 152) = 0;
    v69 = *(v11 + 160);
    v19 = *(v11 + 176);
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0;
    v71 = *(v11 + 184);
    v20 = *(v11 + 200);
    v70 = v19;
    v72 = v20;
    *(v11 + 184) = 0u;
    *(v11 + 200) = 0;
    v73 = *(v11 + 208);
    *(v11 + 208) = 0u;
    v21 = *(v11 + 224);
    v22 = *(v11 + 232);
    *(v11 + 224) = 0;
    *(v11 + 232) = 0;
    v74 = v21;
    v75 = v22;
    LODWORD(v21) = *(v11 + 240);
    v77 = *(v11 + 244);
    v76 = v21;
    v23 = *(v11 + 248);
    v79 = *(v11 + 264);
    v78 = v23;
    *(v11 + 264) = 0;
    *(v11 + 248) = 0u;
    v24 = *(v11 + 272);
    v25 = *(v11 + 296);
    v81 = *(v11 + 288);
    v80 = v24;
    *(v11 + 272) = 0u;
    v82 = v25;
    *(v11 + 288) = 0;
    *(v11 + 296) = 0;
    v26 = *(v11 + 320);
    v83 = *(v11 + 304);
    v84 = v26;
    *(v11 + 304) = 0u;
    *(v11 + 320) = 0u;
    v27 = *(v11 + 344);
    v85 = *(v11 + 336);
    v86 = v27;
    *(v11 + 336) = 0;
    *(v11 + 344) = 0;
    v28 = *(v11 + 368);
    v87 = *(v11 + 352);
    v88 = v28;
    *(v11 + 352) = 0u;
    *(v11 + 368) = 0u;
    v29 = *(v11 + 384);
    v30 = *(v11 + 392);
    *(v11 + 384) = 0;
    *(v11 + 392) = 0;
    v89 = v29;
    v90 = v30;
    LODWORD(v29) = *(v11 + 400);
    v92 = *(v11 + 404);
    v91 = v29;
    v31 = *(v11 + 408);
    v94 = *(v11 + 424);
    v93 = v31;
    *(v11 + 424) = 0;
    *(v11 + 408) = 0u;
    v32 = *(v11 + 432);
    v33 = *(v11 + 456);
    v96 = *(v11 + 448);
    v95 = v32;
    *(v11 + 432) = 0u;
    v97 = v33;
    *(v11 + 448) = 0;
    *(v11 + 456) = 0;
    v34 = *(v11 + 480);
    v98 = *(v11 + 464);
    v99 = v34;
    *(v11 + 464) = 0u;
    *(v11 + 480) = 0u;
    v35 = *(v11 + 504);
    v100 = *(v11 + 496);
    v101 = v35;
    *(v11 + 496) = 0;
    *(v11 + 504) = 0;
    v36 = *(v11 + 528);
    v102 = *(v11 + 512);
    v103 = v36;
    v104 = *(v11 + 544);
    *(v11 + 512) = 0u;
    *(v11 + 528) = 0u;
    *(v11 + 544) = 0;
    v37 = *(v11 + 552);
    *(v11 + 552) = 0;
    v105 = v37;
    LODWORD(v37) = *(v11 + 560);
    v107 = *(v11 + 564);
    v106 = v37;
    v38 = *(v11 + 568);
    v109 = *(v11 + 584);
    v108 = v38;
    *(v11 + 584) = 0;
    *(v11 + 568) = 0u;
    v39 = *(v11 + 592);
    v111 = *(v11 + 608);
    v110 = v39;
    *(v11 + 608) = 0;
    v40 = v12;
    *(v11 + 592) = 0u;
    while (1)
    {
      v41 = a1 + v40;
      sub_63A54C(a1 + v40 + 1848, a1 + v40 + 1232);
      if (v40 == -1232)
      {
        break;
      }

      v42 = *(v41 + 624);
      v43 = *(&v56 + 1) < v42;
      if (*(&v56 + 1) == v42)
      {
        v43 = v66 > *(v41 + 744);
      }

      v40 -= 616;
      if (!v43)
      {
        v44 = a1 + v40 + 1848;
        goto LABEL_30;
      }
    }

    v44 = a1;
LABEL_30:
    sub_63A54C(v44, &v56);
    sub_53A868(&v97);
    sub_53A868(&v82);
    sub_53A868(&v67);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v61) < 0)
      {
LABEL_35:
        operator delete(v60);
        v45 = v58;
        if (v58 == -1)
        {
          goto LABEL_16;
        }

LABEL_36:
        (off_266BE00[v45])(v112, v57);
        goto LABEL_16;
      }
    }

    else if (SHIBYTE(v61) < 0)
    {
      goto LABEL_35;
    }

    v45 = v58;
    if (v58 != -1)
    {
      goto LABEL_36;
    }

LABEL_16:
    if (++v13 == 8)
    {
      return v11 + 616 == a2;
    }

LABEL_17:
    v10 = v11;
    v12 += 616;
    v11 += 616;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

void sub_63D28C(uint64_t a1, uint64_t a2)
{
  v25 = *a1;
  v26[0] = 0;
  v27 = -1;
  v4 = *(a1 + 48);
  if (v4 != -1)
  {
    v81 = v26;
    (off_266BE50[v4])(&v81, a1 + 16);
    v27 = v4;
  }

  v28 = *(a1 + 56);
  *v29 = *(a1 + 64);
  v30 = *(a1 + 80);
  *(a1 + 72) = 0u;
  *(a1 + 64) = 0;
  v31 = *(a1 + 88);
  *__p = *(a1 + 96);
  v33 = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 96) = 0u;
  v34 = *(a1 + 120);
  v35 = *(a1 + 128);
  v36 = *(a1 + 136);
  v37 = *(a1 + 152);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  v38 = *(a1 + 160);
  v5 = *(a1 + 176);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  v40 = *(a1 + 184);
  v6 = *(a1 + 200);
  v39 = v5;
  v41 = v6;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v42 = *(a1 + 208);
  *(a1 + 208) = 0u;
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v43 = v7;
  v44 = v8;
  LODWORD(v7) = *(a1 + 240);
  v46 = *(a1 + 244);
  v45 = v7;
  v9 = *(a1 + 248);
  v48 = *(a1 + 264);
  v47 = v9;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  v49 = *(a1 + 272);
  *(a1 + 272) = 0u;
  v10 = *(a1 + 296);
  v50 = *(a1 + 288);
  v51 = v10;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v11 = *(a1 + 320);
  v52 = *(a1 + 304);
  v53 = v11;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v12 = *(a1 + 344);
  v54 = *(a1 + 336);
  v55 = v12;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v13 = *(a1 + 368);
  v56 = *(a1 + 352);
  v57 = v13;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  v14 = *(a1 + 384);
  v15 = *(a1 + 392);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v58 = v14;
  v59 = v15;
  LODWORD(v14) = *(a1 + 400);
  v61 = *(a1 + 404);
  v60 = v14;
  v16 = *(a1 + 424);
  v62 = *(a1 + 408);
  v63 = v16;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  v64 = *(a1 + 432);
  *(a1 + 432) = 0u;
  v17 = *(a1 + 456);
  v65 = *(a1 + 448);
  v66 = v17;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  v18 = *(a1 + 480);
  v67 = *(a1 + 464);
  v68 = v18;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  v19 = *(a1 + 504);
  v69 = *(a1 + 496);
  v70 = v19;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  v20 = *(a1 + 528);
  v71 = *(a1 + 512);
  v72 = v20;
  v73 = *(a1 + 544);
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  v21 = *(a1 + 552);
  *(a1 + 552) = 0;
  v74 = v21;
  LODWORD(v21) = *(a1 + 560);
  v76 = *(a1 + 564);
  v75 = v21;
  v22 = *(a1 + 584);
  v77 = *(a1 + 568);
  v78 = v22;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  v23 = *(a1 + 592);
  v80 = *(a1 + 608);
  v79 = v23;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  sub_63A54C(a1, a2);
  sub_63A54C(a2, &v25);
  sub_53A868(&v66);
  sub_53A868(&v51);
  sub_53A868(&v36);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(v29[0]);
    v24 = v27;
    if (v27 == -1)
    {
      return;
    }

    goto LABEL_9;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v30) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v24 = v27;
  if (v27 != -1)
  {
LABEL_9:
    (off_266BE00[v24])(&v81, v26);
  }
}

void sub_63D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x4FCACE213F2B3885 * ((a4 - a1) >> 3))
    {
      v9 = (0x9F959C427E56710ALL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 616 * v9;
      if ((0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2) < a3)
      {
        v11 = *(v10 + 8);
        v12 = *(v10 + 624);
        v14 = v11 == v12;
        v13 = v11 < v12;
        if (v14)
        {
          v13 = *(v10 + 128) > *(v10 + 744);
        }

        v14 = !v13;
        v15 = 616;
        if (v14)
        {
          v15 = 0;
        }

        v10 += v15;
        if (!v14)
        {
          v9 = 0x9F959C427E56710ALL * ((a4 - a1) >> 3) + 2;
        }
      }

      v16 = *(v10 + 8);
      v17 = *(a4 + 8);
      v18 = *(a4 + 128);
      v14 = v16 == v17;
      v19 = v16 < v17;
      if (v14)
      {
        v19 = *(v10 + 128) > v18;
      }

      if (!v19)
      {
        v50 = *a4;
        v51[0] = 0;
        v52 = -1;
        v20 = *(a4 + 48);
        if (v20 != -1)
        {
          v106[0] = v51;
          (off_266BE50[v20])(v106, a4 + 16);
          v52 = v20;
          v18 = *(v5 + 128);
        }

        v53 = *(v5 + 56);
        *v54 = *(v5 + 64);
        v55 = *(v5 + 80);
        *(v5 + 72) = 0u;
        *(v5 + 64) = 0;
        v56 = *(v5 + 88);
        *__p = *(v5 + 96);
        v58 = *(v5 + 112);
        *(v5 + 112) = 0;
        *(v5 + 96) = 0u;
        v59 = *(v5 + 120);
        v60 = v18;
        v61 = *(v5 + 136);
        v62 = *(v5 + 152);
        *(v5 + 136) = 0u;
        *(v5 + 152) = 0;
        v63 = *(v5 + 160);
        v21 = *(v5 + 176);
        *(v5 + 160) = 0u;
        *(v5 + 176) = 0;
        v65 = *(v5 + 184);
        v22 = *(v5 + 200);
        v64 = v21;
        v66 = v22;
        *(v5 + 184) = 0u;
        *(v5 + 200) = 0;
        v67 = *(v5 + 208);
        *(v5 + 208) = 0u;
        v23 = *(v5 + 224);
        v24 = *(v5 + 232);
        *(v5 + 224) = 0;
        *(v5 + 232) = 0;
        v68 = v23;
        v69 = v24;
        LODWORD(v23) = *(v5 + 240);
        v71 = *(v5 + 244);
        v70 = v23;
        v25 = *(v5 + 248);
        v73 = *(v5 + 264);
        v72 = v25;
        *(v5 + 264) = 0;
        *(v5 + 248) = 0u;
        v74 = *(v5 + 272);
        *(v5 + 272) = 0u;
        v26 = *(v5 + 296);
        v75 = *(v5 + 288);
        v76 = v26;
        *(v5 + 288) = 0;
        *(v5 + 296) = 0;
        v27 = *(v5 + 320);
        v77 = *(v5 + 304);
        v78 = v27;
        *(v5 + 304) = 0u;
        *(v5 + 320) = 0u;
        v28 = *(v5 + 344);
        v79 = *(v5 + 336);
        v80 = v28;
        *(v5 + 336) = 0;
        *(v5 + 344) = 0;
        v29 = *(v5 + 368);
        v81 = *(v5 + 352);
        v82 = v29;
        *(v5 + 352) = 0u;
        *(v5 + 368) = 0u;
        v30 = *(v5 + 384);
        v31 = *(v5 + 392);
        *(v5 + 384) = 0;
        *(v5 + 392) = 0;
        v83 = v30;
        v84 = v31;
        LODWORD(v30) = *(v5 + 400);
        v86 = *(v5 + 404);
        v85 = v30;
        v32 = *(v5 + 424);
        v87 = *(v5 + 408);
        v88 = v32;
        *(v5 + 424) = 0;
        *(v5 + 408) = 0u;
        v89 = *(v5 + 432);
        *(v5 + 432) = 0u;
        v33 = *(v5 + 456);
        v90 = *(v5 + 448);
        v91 = v33;
        *(v5 + 448) = 0;
        *(v5 + 456) = 0;
        v34 = *(v5 + 480);
        v92 = *(v5 + 464);
        v93 = v34;
        *(v5 + 464) = 0u;
        *(v5 + 480) = 0u;
        v35 = *(v5 + 504);
        v94 = *(v5 + 496);
        v95 = v35;
        *(v5 + 496) = 0;
        *(v5 + 504) = 0;
        v36 = *(v5 + 528);
        v96 = *(v5 + 512);
        v97 = v36;
        v98 = *(v5 + 544);
        *(v5 + 512) = 0u;
        *(v5 + 528) = 0u;
        *(v5 + 544) = 0;
        v37 = *(v5 + 552);
        *(v5 + 552) = 0;
        v99 = v37;
        LODWORD(v37) = *(v5 + 560);
        v101 = *(v5 + 564);
        v100 = v37;
        v38 = *(v5 + 584);
        v102 = *(v5 + 568);
        v103 = v38;
        *(v5 + 584) = 0;
        *(v5 + 568) = 0u;
        v39 = *(v5 + 592);
        v105 = *(v5 + 608);
        v104 = v39;
        *(v5 + 608) = 0;
        *(v5 + 592) = 0u;
        do
        {
          v42 = v10;
          sub_63A54C(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v43 = (2 * v9) | 1;
          v10 = a1 + 616 * v43;
          if (2 * v9 + 2 < a3)
          {
            v44 = *(v10 + 8);
            v45 = *(v10 + 624);
            v14 = v44 == v45;
            v46 = v44 < v45;
            if (v14)
            {
              v46 = *(v10 + 128) > *(v10 + 744);
            }

            v47 = !v46;
            if (v46)
            {
              v48 = 616;
            }

            else
            {
              v48 = 0;
            }

            v10 += v48;
            if (!v47)
            {
              v43 = 2 * v9 + 2;
            }
          }

          v40 = *(v10 + 8);
          v14 = v40 == *(&v50 + 1);
          v41 = v40 < *(&v50 + 1);
          if (v14)
          {
            v41 = *(v10 + 128) > v60;
          }

          v5 = v42;
          v9 = v43;
        }

        while (!v41);
        sub_63A54C(v42, &v50);
        sub_53A868(&v91);
        sub_53A868(&v76);
        sub_53A868(&v61);
        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v55) & 0x80000000) == 0)
          {
LABEL_32:
            v49 = v52;
            if (v52 == -1)
            {
              return;
            }

LABEL_36:
            (off_266BE00[v49])(v106, v51);
            return;
          }
        }

        else if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        operator delete(v54[0]);
        v49 = v52;
        if (v52 == -1)
        {
          return;
        }

        goto LABEL_36;
      }
    }
  }
}

void sub_63DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v38 = *a1;
    v39[0] = 0;
    v40 = -1;
    v9 = *(a1 + 48);
    if (v9 != -1)
    {
      v94[0] = v39;
      (off_266BE50[v9])(v94, a1 + 16);
      v40 = v9;
    }

    v10 = 0;
    v41 = *(a1 + 56);
    *v42 = *(a1 + 64);
    v43 = *(a1 + 80);
    *(a1 + 72) = 0u;
    *(a1 + 64) = 0;
    v44 = *(a1 + 88);
    *__p = *(a1 + 96);
    v46 = *(a1 + 112);
    *(a1 + 112) = 0;
    *(a1 + 96) = 0u;
    v47 = *(a1 + 120);
    v48 = *(a1 + 128);
    v49 = *(a1 + 136);
    v50 = *(a1 + 152);
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0;
    v51 = *(a1 + 160);
    v11 = *(a1 + 176);
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0;
    v53 = *(a1 + 184);
    v12 = *(a1 + 200);
    v52 = v11;
    v54 = v12;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0;
    v55 = *(a1 + 208);
    *(a1 + 208) = 0u;
    v13 = *(a1 + 224);
    v14 = *(a1 + 232);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    v56 = v13;
    v57 = v14;
    v59 = *(a1 + 244);
    v58 = *(a1 + 240);
    v15 = *(a1 + 248);
    v61 = *(a1 + 264);
    v60 = v15;
    *(a1 + 264) = 0;
    *(a1 + 248) = 0u;
    v62 = *(a1 + 272);
    *(a1 + 272) = 0u;
    v16 = *(a1 + 296);
    v63 = *(a1 + 288);
    v64 = v16;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    v17 = *(a1 + 320);
    v65 = *(a1 + 304);
    v66 = v17;
    *(a1 + 304) = 0u;
    *(a1 + 320) = 0u;
    v18 = *(a1 + 344);
    v67 = *(a1 + 336);
    v68 = v18;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    v19 = *(a1 + 368);
    v69 = *(a1 + 352);
    v70 = v19;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    v20 = *(a1 + 384);
    v21 = *(a1 + 392);
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    v71 = v20;
    v72 = v21;
    LODWORD(v20) = *(a1 + 400);
    v74 = *(a1 + 404);
    v73 = v20;
    v75 = *(a1 + 408);
    v76 = *(a1 + 424);
    *(a1 + 424) = 0;
    *(a1 + 408) = 0u;
    v77 = *(a1 + 432);
    *(a1 + 432) = 0u;
    v22 = *(a1 + 456);
    v78 = *(a1 + 448);
    v79 = v22;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    v23 = *(a1 + 480);
    v80 = *(a1 + 464);
    v81 = v23;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    v24 = *(a1 + 504);
    v82 = *(a1 + 496);
    v83 = v24;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    v25 = *(a1 + 528);
    v84 = *(a1 + 512);
    v85 = v25;
    v86 = *(a1 + 544);
    *(a1 + 512) = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 544) = 0;
    v26 = *(a1 + 552);
    *(a1 + 552) = 0;
    v87 = v26;
    LODWORD(v26) = *(a1 + 560);
    v89 = *(a1 + 564);
    v88 = v26;
    v90 = *(a1 + 568);
    v91 = *(a1 + 584);
    *(a1 + 584) = 0;
    *(a1 + 568) = 0u;
    v27 = *(a1 + 592);
    v93 = *(a1 + 608);
    v92 = v27;
    *(a1 + 608) = 0;
    v28 = v4 >> 1;
    v29 = a1;
    *(a1 + 592) = 0u;
    do
    {
      while (1)
      {
        v36 = v29 + 616 * v10;
        v35 = v36 + 616;
        if (2 * v10 + 2 < a4)
        {
          break;
        }

        v10 = (2 * v10) | 1;
        sub_63A54C(v29, v36 + 616);
        v29 = v35;
        if (v10 > v28)
        {
          goto LABEL_13;
        }
      }

      v30 = *(v36 + 624);
      v31 = *(v36 + 1240);
      v32 = v30 == v31;
      v33 = v30 < v31;
      if (v32)
      {
        v33 = *(v36 + 744) > *(v36 + 1360);
      }

      v34 = v36 + 1232;
      if (v33)
      {
        v35 = v34;
        v10 = 2 * v10 + 2;
      }

      else
      {
        v10 = (2 * v10) | 1;
      }

      sub_63A54C(v29, v35);
      v29 = v35;
    }

    while (v10 <= v28);
LABEL_13:
    if (v35 == a2 - 616)
    {
      sub_63A54C(v35, &v38);
    }

    else
    {
      sub_63A54C(v35, a2 - 616);
      sub_63A54C(a2 - 616, &v38);
      sub_63DE20(a1, v35 + 616, a3, 0x4FCACE213F2B3885 * ((v35 + 616 - a1) >> 3));
    }

    sub_53A868(&v79);
    sub_53A868(&v64);
    sub_53A868(&v49);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
LABEL_18:
        v37 = v40;
        if (v40 == -1)
        {
          return;
        }

LABEL_22:
        (off_266BE00[v37])(v94, v39);
        return;
      }
    }

    else if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v42[0]);
    v37 = v40;
    if (v40 == -1)
    {
      return;
    }

    goto LABEL_22;
  }
}

void sub_63DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 616 * (v4 >> 1);
    v8 = *(v7 + 8);
    v9 = *(a2 - 608);
    v10 = (a2 - 488);
    v11 = *(a2 - 488);
    v12 = v8 == v9;
    v13 = v8 < v9;
    if (v12)
    {
      v13 = *(v7 + 128) > v11;
    }

    if (v13)
    {
      v14 = a2 - 616;
      v51 = *(a2 - 616);
      v52[0] = 0;
      v53 = -1;
      v15 = *(a2 - 568);
      if (v15 != -1)
      {
        v16 = a2 - 616;
        v17 = a2;
        v107 = v52;
        (off_266BE50[v15])(&v107, a2 - 600);
        v53 = v15;
        v11 = *v10;
        a2 = v17;
        v14 = v16;
      }

      v54 = *(a2 - 560);
      v18 = a2 - 552;
      *v55 = *(a2 - 552);
      v56 = *(a2 - 536);
      *(v18 + 8) = 0u;
      *v18 = 0;
      v57 = *(a2 - 528);
      v19 = a2 - 520;
      *__p = *(a2 - 520);
      v59 = *(a2 - 504);
      *(v19 + 16) = 0;
      *v19 = 0u;
      v60 = *(a2 - 496);
      v61 = v11;
      v20 = (a2 - 480);
      v62 = *(a2 - 480);
      v63 = *(a2 - 464);
      *(a2 - 472) = 0;
      *v20 = 0;
      v20[2] = 0;
      v21 = (a2 - 456);
      v64 = *(a2 - 456);
      v22 = *(a2 - 440);
      *(a2 - 448) = 0;
      *v21 = 0;
      v21[2] = 0;
      v23 = (a2 - 432);
      v66 = *(a2 - 432);
      v24 = *(a2 - 416);
      v65 = v22;
      v67 = v24;
      *(a2 - 424) = 0;
      *v23 = 0;
      v23[2] = 0;
      v25 = (a2 - 408);
      v68 = *(a2 - 408);
      v26 = *(a2 - 392);
      *(a2 - 400) = 0;
      *v25 = 0;
      v25[2] = 0;
      v27 = *(a2 - 384);
      *(a2 - 384) = 0;
      v69 = v26;
      v70 = v27;
      LODWORD(v26) = *(a2 - 376);
      v72 = *(a2 - 372);
      v71 = v26;
      v28 = (a2 - 368);
      v29 = *(a2 - 368);
      v74 = *(a2 - 352);
      v73 = v29;
      *(a2 - 360) = 0;
      *v28 = 0;
      v28[2] = 0;
      v30 = (a2 - 344);
      v31 = *(a2 - 328);
      v75 = *(a2 - 344);
      *(a2 - 336) = 0;
      *v30 = 0;
      v30[2] = 0;
      v32 = (a2 - 320);
      v77 = *(a2 - 320);
      v33 = *(a2 - 304);
      v76 = v31;
      v78 = v33;
      *(a2 - 312) = 0;
      *v32 = 0;
      v32[2] = 0;
      v34 = (a2 - 296);
      v79 = *(a2 - 296);
      v35 = *(a2 - 280);
      *(a2 - 288) = 0;
      *v34 = 0;
      v34[2] = 0;
      v81 = *(a2 - 272);
      v36 = *(a2 - 256);
      v80 = v35;
      v82 = v36;
      *(a2 - 264) = 0;
      *(a2 - 272) = 0;
      v83 = *(a2 - 248);
      *(a2 - 256) = 0;
      *(a2 - 248) = 0;
      v37 = *(a2 - 232);
      v38 = *(a2 - 224);
      *(a2 - 240) = 0;
      *(a2 - 232) = 0;
      *(a2 - 224) = 0;
      v84 = v37;
      v85 = v38;
      LODWORD(v37) = *(a2 - 216);
      v87 = *(a2 - 212);
      v86 = v37;
      v39 = *(a2 - 192);
      v88 = *(a2 - 208);
      v89 = v39;
      *(a2 - 208) = 0;
      *(a2 - 200) = 0;
      v40 = *(a2 - 168);
      v90 = *(a2 - 184);
      *(a2 - 192) = 0;
      *(a2 - 184) = 0;
      *(a2 - 176) = 0;
      *(a2 - 168) = 0;
      v92 = *(a2 - 160);
      v41 = *(a2 - 144);
      v91 = v40;
      v93 = v41;
      *(a2 - 160) = 0;
      *(a2 - 152) = 0;
      v94 = *(a2 - 136);
      v42 = *(a2 - 120);
      *(a2 - 144) = 0;
      *(a2 - 136) = 0;
      *(a2 - 128) = 0;
      *(a2 - 120) = 0;
      v96 = *(a2 - 112);
      v43 = *(a2 - 96);
      v95 = v42;
      v97 = v43;
      *(a2 - 112) = 0;
      *(a2 - 104) = 0;
      v98 = *(a2 - 88);
      v44 = *(a2 - 64);
      v99 = *(a2 - 72);
      *(a2 - 96) = 0;
      *(a2 - 88) = 0;
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 64) = 0;
      v100 = v44;
      LODWORD(v42) = *(a2 - 56);
      v102 = *(a2 - 52);
      v101 = v42;
      v45 = *(a2 - 32);
      v103 = *(a2 - 48);
      v104 = v45;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v46 = *(a2 - 24);
      v106 = *(a2 - 8);
      v105 = v46;
      *(a2 - 32) = 0;
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v47 = v7;
        sub_63A54C(v14, v7);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 616 * v6;
        v48 = *(v7 + 8);
        v12 = v48 == *(&v51 + 1);
        v49 = v48 < *(&v51 + 1);
        if (v12)
        {
          v49 = *(v7 + 128) > v61;
        }

        v14 = v47;
      }

      while (v49);
      sub_63A54C(v47, &v51);
      sub_53A868(&v92);
      sub_53A868(&v77);
      sub_53A868(&v62);
      if (SHIBYTE(v59) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v56) & 0x80000000) == 0)
        {
LABEL_14:
          v50 = v53;
          if (v53 == -1)
          {
            return;
          }

LABEL_18:
          (off_266BE00[v50])(&v107, v52);
          return;
        }
      }

      else if ((SHIBYTE(v56) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(v55[0]);
      v50 = v53;
      if (v53 == -1)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

void sub_63E2CC(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, std::string *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_4D1F50(a3, a4);
  sub_62AFEC(*(v14 + 32) & 0xFFFFFFFFFFFFFFLL, a1[16], v54);
  if (a2 == 15)
  {
    sub_734CE0(v44);
  }

  else
  {
    sub_62B1B8(a1, v14, a5, v44);
  }

  v15 = sub_734C10(v54);
  v16 = sub_734C10(v44);
  sub_639564(a2, a3, a4, v15, v16, &__p);
  sub_63E914(a6, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a7);
    goto LABEL_57;
  }

  v18 = sub_9274F4(a1[17], &__p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v42, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v42.__r_.__value_.__r.__words[2] = v18[2];
    *&v42.__r_.__value_.__l.__data_ = v19;
  }

  if (sub_734C10(v54))
  {
    switch(a2)
    {
      case 0xF:
        v41 = 0x700000000000000;
        v21 = "{Ferry}";
        break;
      case 0x15:
        v41 = 0x600000000000000;
        *__c = *"{Road}";
        v20 = 6;
        goto LABEL_20;
      case 0x14:
        *__c = *"{Elevator}";
        v41 = 0xA00000000000000;
        v20 = 10;
        goto LABEL_20;
      default:
        v41 = 0x700000000000000;
        v21 = "{Road1}";
        break;
    }

    *__c = *v21;
    v20 = 7;
LABEL_20:
    v22 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v42;
    }

    else
    {
      v23 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v42.__r_.__value_.__l.__size_;
    }

    if (v22 >= v20)
    {
      v30 = v23 + v22;
      v31 = SLOBYTE(__c[0]);
      v32 = v23;
      do
      {
        v33 = v22 - v20;
        if (v33 == -1)
        {
          break;
        }

        v34 = memchr(v32, v31, v33 + 1);
        if (!v34)
        {
          break;
        }

        v35 = v34;
        if (!memcmp(v34, __c, v20))
        {
          if (v35 != v30 && v35 - v23 != -1)
          {
            v38 = (v55 & 0x80u) == 0 ? v54 : v54[0];
            v39 = (v55 & 0x80u) == 0 ? v55 : v54[1];
            std::string::replace(&v42, v35 - v23, v20, v38, v39);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v32 = (v35 + 1);
        v22 = v30 - (v35 + 1);
      }

      while (v22 >= v20);
    }
  }

  if (sub_734C10(v44))
  {
    v24 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v42;
    }

    else
    {
      v25 = v42.__r_.__value_.__r.__words[0];
    }

    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v42.__r_.__value_.__l.__size_;
    }

    if (v24 >= 7)
    {
      v26 = v25 + v24;
      v27 = v25;
      do
      {
        v28 = memchr(v27, 123, v24 - 6);
        if (!v28)
        {
          break;
        }

        if (*v28 == 1634685563 && *(v28 + 3) == 2100454497)
        {
          if (v28 != v26 && v28 - v25 != -1)
          {
            if ((v45 & 0x80u) == 0)
            {
              v36 = v44;
            }

            else
            {
              v36 = v44[0];
            }

            if ((v45 & 0x80u) == 0)
            {
              v37 = v45;
            }

            else
            {
              v37 = v44[1];
            }

            std::string::replace(&v42, v28 - v25, 7uLL, v36, v37);
          }

          break;
        }

        v27 = (v28 + 1);
        v24 = v26 - v27;
      }

      while (v26 - v27 >= 7);
    }
  }

  sub_64BC50(a7, &v42, (a1[15] + 1177));
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v53 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v52);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v50);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v63 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v44[0]);
  if ((v63 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v62);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v60);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v55 & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v54[0]);
    return;
  }

LABEL_79:
  operator delete(v56);
  if (v55 < 0)
  {
    goto LABEL_80;
  }
}

void sub_63E754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(&a47);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(&a47);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_63E808(uint64_t result)
{
  if (*(*result + 1) == 1 && **result == 21)
  {
    operator new();
  }

  return result;
}

void sub_63E8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_63E914(std::string *result, std::string *a2)
{
  if (*(result->__r_.__value_.__r.__words[0] + 1) != 1 || *result->__r_.__value_.__l.__data_ != 21)
  {
    return result;
  }

  result = sub_6A0D84((result->__r_.__value_.__l.__size_ + 1104), *result->__r_.__value_.__r.__words[2], &v11);
  if (!v11)
  {
    sub_21E17C0();
  }

  v4 = *(v11 + 160);
  if (v4 - 23 <= 1)
  {
    v5 = "_Ferry";
    v6 = a2;
    v7 = 6;
    return std::string::append(v6, v5, v7);
  }

  if (v4 - 82 >= 3)
  {
    v8 = v4 > 0x27;
    v9 = (1 << v4) & 0x8600050000;
    if (v8 || v9 == 0)
    {
      v5 = "_Fallback";
      v6 = a2;
      v7 = 9;
      return std::string::append(v6, v5, v7);
    }
  }

  return result;
}

void sub_63E9E8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_4D1F50(a4, a5);
  sub_62AFEC(*(v12 + 32) & 0xFFFFFFFFFFFFFFLL, a2[16], v52);
  if (a3 == 15)
  {
    sub_734CE0(v42);
  }

  else
  {
    sub_62B1B8(a2, v12, a6, v42);
  }

  v13 = sub_734C10(v52);
  v14 = sub_734C10(v42);
  sub_639564(a3, a4, a5, v13, v14, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_64B998(a1);
    goto LABEL_57;
  }

  v16 = sub_9274F4(a2[17], &__p);
  if (*(v16 + 23) < 0)
  {
    sub_325C(&v40, *v16, v16[1]);
  }

  else
  {
    v17 = *v16;
    v40.__r_.__value_.__r.__words[2] = v16[2];
    *&v40.__r_.__value_.__l.__data_ = v17;
  }

  if (sub_734C10(v52))
  {
    switch(a3)
    {
      case 0xF:
        v39 = 0x700000000000000;
        v19 = "{Ferry}";
        break;
      case 0x15:
        v39 = 0x600000000000000;
        *__c = *"{Road}";
        v18 = 6;
        goto LABEL_20;
      case 0x14:
        *__c = *"{Elevator}";
        v39 = 0xA00000000000000;
        v18 = 10;
        goto LABEL_20;
      default:
        v39 = 0x700000000000000;
        v19 = "{Road1}";
        break;
    }

    *__c = *v19;
    v18 = 7;
LABEL_20:
    v20 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v40;
    }

    else
    {
      v21 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v40.__r_.__value_.__l.__size_;
    }

    if (v20 >= v18)
    {
      v28 = v21 + v20;
      v29 = SLOBYTE(__c[0]);
      v30 = v21;
      do
      {
        v31 = v20 - v18;
        if (v31 == -1)
        {
          break;
        }

        v32 = memchr(v30, v29, v31 + 1);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        if (!memcmp(v32, __c, v18))
        {
          if (v33 != v28 && v33 - v21 != -1)
          {
            v36 = (v53 & 0x80u) == 0 ? v52 : v52[0];
            v37 = (v53 & 0x80u) == 0 ? v53 : v52[1];
            std::string::replace(&v40, v33 - v21, v18, v36, v37);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(*__c);
            }
          }

          break;
        }

        v30 = (v33 + 1);
        v20 = v28 - (v33 + 1);
      }

      while (v20 >= v18);
    }
  }

  if (sub_734C10(v42))
  {
    v22 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v40;
    }

    else
    {
      v23 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v40.__r_.__value_.__l.__size_;
    }

    if (v22 >= 7)
    {
      v24 = v23 + v22;
      v25 = v23;
      do
      {
        v26 = memchr(v25, 123, v22 - 6);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1634685563 && *(v26 + 3) == 2100454497)
        {
          if (v26 != v24 && v26 - v23 != -1)
          {
            if ((v43 & 0x80u) == 0)
            {
              v34 = v42;
            }

            else
            {
              v34 = v42[0];
            }

            if ((v43 & 0x80u) == 0)
            {
              v35 = v43;
            }

            else
            {
              v35 = v42[1];
            }

            std::string::replace(&v40, v26 - v23, 7uLL, v34, v35);
          }

          break;
        }

        v25 = (v26 + 1);
        v22 = v24 - v25;
      }

      while (v24 - v25 >= 7);
    }
  }

  sub_64BC50(a1, &v40, (a2[15] + 1177));
  if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_57:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_70;
  }

  operator delete(v40.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_58:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_71;
  }

LABEL_70:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_59:
    if ((v49 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_72;
  }

LABEL_71:
  operator delete(v50);
  if ((v49 & 0x80000000) == 0)
  {
LABEL_60:
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_73;
  }

LABEL_72:
  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_61:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_74;
  }

LABEL_73:
  operator delete(v46);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_62:
    if ((v43 & 0x80000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_63:
    if ((v61 & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_75:
  operator delete(v42[0]);
  if ((v61 & 0x80000000) == 0)
  {
LABEL_64:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

LABEL_76:
  operator delete(v60);
  if ((v59 & 0x80000000) == 0)
  {
LABEL_65:
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(v58);
  if ((v57 & 0x80000000) == 0)
  {
LABEL_66:
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_79;
  }

LABEL_78:
  operator delete(v56);
  if ((v55 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v53 & 0x80000000) == 0)
    {
      return;
    }

LABEL_80:
    operator delete(v52[0]);
    return;
  }

LABEL_79:
  operator delete(v54);
  if (v53 < 0)
  {
    goto LABEL_80;
  }
}

void sub_63EE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
LABEL_8:
        sub_3E5388(&a28);
        sub_3E5388(v28 - 216);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a22);
      sub_3E5388(&a28);
      sub_3E5388(v28 - 216);
      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_63EF0C(uint64_t result, uint64_t a2)
{
  if (*(*result + 7) == 1)
  {
    sub_64B9C4(__p, (*(*result + 120) + 1177));
    sub_53D784(a2 + 320, __p);
    sub_53A868(__p);
    operator new();
  }

  return result;
}

void sub_63F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}