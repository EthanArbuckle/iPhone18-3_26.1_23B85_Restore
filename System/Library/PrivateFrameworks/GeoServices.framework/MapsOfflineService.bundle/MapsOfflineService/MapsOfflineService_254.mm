void sub_F9E420(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_22AEA50;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 24) = _Q0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x7FFFFFFF;
  *(a1 + 56) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *&_Q0 = 0x8000000080000000;
  *(&_Q0 + 1) = 0x8000000080000000;
  *(a1 + 164) = _Q0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  operator new();
}

void sub_F9F5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  v41 = *(v34 - 144);
  if (v41)
  {
    *(v34 - 136) = v41;
    operator delete(v41);
  }

  v42 = *(a13 + 24);
  if (v42)
  {
    v33[35] = v42;
    operator delete(v42);
    v36 = *a13;
    if (*a13)
    {
LABEL_13:
      v33[32] = v36;
      operator delete(v36);
      v37 = *a14;
      if (*a14)
      {
LABEL_14:
        v33[27] = v37;
        operator delete(v37);
        v38 = *a15;
        if (*a15)
        {
LABEL_15:
          v33[24] = v38;
          operator delete(v38);
          v39 = v33[17];
          if (v39)
          {
LABEL_16:
            v33[18] = v39;
            operator delete(v39);
            v40 = *a20;
            if (*a20)
            {
LABEL_17:
              v33[15] = v40;
              operator delete(v40);
              _Unwind_Resume(exception_object);
            }

LABEL_8:
            _Unwind_Resume(exception_object);
          }

LABEL_7:
          v40 = *a20;
          if (*a20)
          {
            goto LABEL_17;
          }

          goto LABEL_8;
        }

LABEL_6:
        v39 = v33[17];
        if (v39)
        {
          goto LABEL_16;
        }

        goto LABEL_7;
      }

LABEL_5:
      v38 = *a15;
      if (*a15)
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v36 = *a13;
    if (*a13)
    {
      goto LABEL_13;
    }
  }

  v37 = *a14;
  if (*a14)
  {
    goto LABEL_14;
  }

  goto LABEL_5;
}

void sub_F9F8B4(unsigned int **a1@<X0>, char a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v36 = a3;
  v4 = *a1;
  v5 = a1[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v4 != v5)
  {
    v7 = *(v5 - 2);
    if (v7 != -1)
    {
      v9 = a4;
      sub_569AC(a4, (v7 + 1), &v36);
      a3 = v36;
      v4 = *a1;
      v5 = a1[1];
      a4 = v9;
    }

    if (v4 != v5)
    {
      v10 = *a4;
      v11 = a4[1];
      if (a2)
      {
        LODWORD(v12) = 0;
        while (1)
        {
          v13 = v12 ? v12 - 1 : 0;
          v15 = *v4;
          v14 = v4[1];
          v16 = v12;
          if (v12 < ((v11 - v10) >> 2) && v12 <= v15)
          {
            break;
          }

LABEL_7:
          v4 += 2;
          a3 = v14;
          if (v4 == v5)
          {
            return;
          }
        }

        v18 = (v14 - a3);
        v19 = v15 >= v13;
        v20 = v15 - v13;
        if (v20 == 0 || !v19)
        {
          v25 = (v18 + v18);
          if (((v14 - a3) & 0x80000000) != 0)
          {
            v28 = a3 + (v25 - 1) / 2;
            do
            {
              v12 = (v12 + 1);
              *(v10 + 4 * v16) = v28;
              v10 = *a4;
              v11 = a4[1];
              v29 = v12 >= (v11 - *a4) >> 2 || v12 > v15;
              v16 = v12;
            }

            while (!v29);
          }

          else
          {
            v26 = a3 + ((v25 + 1) >> 1);
            do
            {
              v12 = (v12 + 1);
              *(v10 + 4 * v16) = v26;
              v10 = *a4;
              v11 = a4[1];
              v27 = v12 >= (v11 - *a4) >> 2 || v12 > v15;
              v16 = v12;
            }

            while (!v27);
          }

          goto LABEL_7;
        }

        v21 = v20;
        v22 = v12 != 0;
        while (1)
        {
          v23 = v22 / v21 * v18;
          if (v23 >= 0.0)
          {
            if (v23 >= 4.50359963e15)
            {
              goto LABEL_24;
            }

            v24 = (v23 + v23) + 1;
          }

          else
          {
            if (v23 <= -4.50359963e15)
            {
              goto LABEL_24;
            }

            v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
          }

          v23 = (v24 >> 1);
LABEL_24:
          v12 = (v12 + 1);
          *(v10 + 4 * v16) = a3 + v23;
          v10 = *a4;
          v11 = a4[1];
          if (v12 < (v11 - *a4) >> 2)
          {
            ++v22;
            v16 = v12;
            if (v12 <= v15)
            {
              continue;
            }
          }

          goto LABEL_7;
        }
      }

      LODWORD(v30) = 0;
      do
      {
        v31 = *v4;
        v32 = v30;
        if (v30 < ((v11 - v10) >> 2) && v30 <= v31)
        {
          v34 = v4[1];
          do
          {
            v30 = (v30 + 1);
            *(v10 + 4 * v32) = v34;
            v10 = *a4;
            v11 = a4[1];
            v35 = v30 >= (v11 - *a4) >> 2 || v30 > v31;
            v32 = v30;
          }

          while (!v35);
        }

        v4 += 2;
      }

      while (v4 != v5);
    }
  }
}

void sub_F9FAE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F9FF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_F9FF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a19);
  _Unwind_Resume(a1);
}

void sub_F9FF60(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v25 = 9;
        strcpy(__p, "threshold");
        v10 = sub_353010(v9, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        v25 = 6;
        strcpy(__p, "time_s");
        v11 = sub_352470(v9, __p);
        if (v25 < 0)
        {
          v15 = v11;
          operator delete(__p[0]);
          v12 = 10 * v15;
          v14 = a3[1];
          v13 = a3[2];
          if (v14 < v13)
          {
            goto LABEL_4;
          }

LABEL_12:
          v16 = *a3;
          v17 = v14 - *a3;
          v18 = v17 >> 3;
          v19 = (v17 >> 3) + 1;
          if (v19 >> 61)
          {
            sub_1794();
          }

          v20 = v13 - v16;
          if (v20 >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (8 * v18);
          *v22 = v10;
          v22[1] = v12;
          v23 = 8 * v18 + 8;
          memcpy(0, v16, v17);
          *a3 = 0;
          a3[1] = v23;
          a3[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }

          a3[1] = v23;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v12 = 10 * v11;
          v14 = a3[1];
          v13 = a3[2];
          if (v14 >= v13)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v14 = v10;
          v14[1] = v12;
          a3[1] = v14 + 2;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FA0184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FA01A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5) + 1;
  if (v2 > 0xE38E38E38E38E3)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v4 = 0xE38E38E38E38E3;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xE38E38E38E38E3)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 32 * ((a1[1] - *a1) >> 5);
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v5 + 88) = *(a2 + 88);
  *(v5 + 104) = *(a2 + 104);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(v5 + 112) = *(a2 + 112);
  *(v5 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(v5 + 136) = *(a2 + 136);
  *(v5 + 152) = *(a2 + 152);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(v5 + 160) = *(a2 + 160);
  *(v5 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v5 + 184) = *(a2 + 184);
  *(v5 + 200) = *(a2 + 200);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(v5 + 208) = *(a2 + 208);
  *(v5 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(v5 + 232) = *(a2 + 232);
  *(v5 + 248) = *(a2 + 248);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v6 = *(a2 + 272);
  *(v5 + 256) = *(a2 + 256);
  *(v5 + 272) = v6;
  v7 = v5 + 288;
  v8 = *a1;
  v9 = a1[1];
  v10 = v5 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = v11[4];
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 56) = v11[7];
      v11[5] = 0;
      v11[6] = 0;
      v11[7] = 0;
      *(v12 + 64) = 0;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0;
      *(v12 + 64) = *(v11 + 4);
      *(v12 + 80) = v11[10];
      v11[8] = 0;
      v11[9] = 0;
      v11[10] = 0;
      *(v12 + 88) = 0;
      *(v12 + 96) = 0;
      *(v12 + 104) = 0;
      *(v12 + 88) = *(v11 + 11);
      *(v12 + 104) = v11[13];
      v11[11] = 0;
      v11[12] = 0;
      v11[13] = 0;
      *(v12 + 112) = 0;
      *(v12 + 120) = 0;
      *(v12 + 128) = 0;
      *(v12 + 112) = *(v11 + 7);
      *(v12 + 128) = v11[16];
      v11[14] = 0;
      v11[15] = 0;
      v11[16] = 0;
      *(v12 + 136) = 0;
      *(v12 + 144) = 0;
      *(v12 + 152) = 0;
      *(v12 + 136) = *(v11 + 17);
      *(v12 + 152) = v11[19];
      v11[17] = 0;
      v11[18] = 0;
      v11[19] = 0;
      *(v12 + 160) = 0;
      *(v12 + 168) = 0;
      *(v12 + 176) = 0;
      *(v12 + 160) = *(v11 + 10);
      *(v12 + 176) = v11[22];
      v11[20] = 0;
      v11[21] = 0;
      v11[22] = 0;
      *(v12 + 184) = 0;
      *(v12 + 192) = 0;
      *(v12 + 200) = 0;
      *(v12 + 184) = *(v11 + 23);
      *(v12 + 200) = v11[25];
      v11[23] = 0;
      v11[24] = 0;
      v11[25] = 0;
      *(v12 + 208) = 0;
      *(v12 + 216) = 0;
      *(v12 + 224) = 0;
      *(v12 + 208) = *(v11 + 13);
      *(v12 + 224) = v11[28];
      v11[26] = 0;
      v11[27] = 0;
      v11[28] = 0;
      *(v12 + 232) = 0;
      *(v12 + 240) = 0;
      *(v12 + 248) = 0;
      *(v12 + 232) = *(v11 + 29);
      *(v12 + 248) = v11[31];
      v11[29] = 0;
      v11[30] = 0;
      v11[31] = 0;
      v14 = *(v11 + 17);
      *(v12 + 256) = *(v11 + 16);
      *(v12 + 272) = v14;
      v11 += 36;
      v12 += 288;
    }

    while (v11 != v9);
    do
    {
      v8 = sub_3EE9A4(v8) + 36;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_FA0594(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B6890(a2);
  v5 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v5;
  v7[23] = 19;
  strcpy(v7, "DisplayETAEvaluator");
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, v7, __p);
  sub_FA0A40();
}

void sub_FA06A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_FA06C8@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  if (*(result + 8) == 1 || a2 == 0x7FFFFFFF || a3 == 0x7FFFFFFF || a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a7 = 0x8000000080000000;
    *(a7 + 8) = xmmword_2297C00;
    *(a7 + 8) = 0x7FFFFFFF;
  }

  else
  {
    if (*(result + 44))
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    if (v10 >= *(result + 40))
    {
      if (a3 < 0)
      {
        v11 = -5;
      }

      else
      {
        v11 = 5;
      }

      v12 = a3 / 10 + a2 + (((103 * (v11 + a3 % 10)) >> 15) & 1) + ((103 * (v11 + a3 % 10)) >> 10);
      v13 = *(result + 16);
      v14 = v12;
      if (v13 == 1)
      {
        v14 = *(result + 20) + 60 * (v12 / 60);
      }

      v15 = *result;
      *a7 = v14;
      *(a7 + 4) = v12;
      *(a7 + 8) = v15;
      *(a7 + 16) = a5;
      if (*(result + 24) == 1)
      {
        v16 = *a6;
        if (*a6 != 0x7FFFFFFF && a6[1] != 0x7FFFFFFF)
        {
          v17 = *(a6 + 2);
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = a6[2];
            if (v18 != 0x7FFFFFFF)
            {
              v19 = v17 < a5;
              v20 = v17 - a5;
              if (v19 || v18 > v15)
              {
                result = sub_7E7E4(1u);
                if (result)
                {
                  sub_19594F8(&v26);
                  sub_4A5C(&v26, "Retrieved a display ETA message with incorrect data.", 52);
                  sub_66B8(v27, __p);
                  sub_7E854(__p, 1u);
                  if (v25 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  return sub_1959728(&v26);
                }
              }

              else if (v20 > *(result + 32))
              {
                v21 = fabs((10 * (v16 - v14)));
                v22 = result;
                result = sub_FA09C0(result, a3, a4);
                if (result > v21)
                {
                  *a7 = v16;
                  if (v13)
                  {
                    *a7 = *(v22 + 20) + 60 * (v16 / 60);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      *a7 = 0x8000000080000000;
      *(a7 + 8) = xmmword_2297C00;
      *(a7 + 8) = 0x7FFFFFFF;
    }
  }

  return result;
}

void sub_FA0974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_FA09C0(uint64_t a1, int a2, int a3)
{
  v3 = 80;
  if (a2 / a3 > *(a1 + 72))
  {
    v3 = 48;
  }

  v4 = (a1 + v3);
  v6 = *v4;
  v5 = v4[1];
  if (v5 == v6)
  {
    return *(v5 - 1);
  }

  v7 = (v5 - v6) >> 3;
  do
  {
    v8 = v7 >> 1;
    v9 = &v6[8 * (v7 >> 1)];
    v11 = *v9;
    v10 = (v9 + 2);
    v7 += ~(v7 >> 1);
    if (v11 < a2)
    {
      v6 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (v6 == v5)
  {
    v12 = v5 - 8;
  }

  else
  {
    v12 = v6;
  }

  return *(v12 + 1);
}

void sub_FA1284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    v25 = *a10;
    if (!*a10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = *a10;
    if (!*a10)
    {
LABEL_6:
      v26 = *a11;
      if (*a11)
      {
        *(v23 + 40) = v26;
        operator delete(v26);
      }

      _Unwind_Resume(exception_object);
    }
  }

  *(v23 + 72) = v25;
  operator delete(v25);
  goto LABEL_6;
}

void sub_FA13D0(uint64_t a1, void *a2)
{
  v4 = sub_FB3FB0();
  sub_FACA64(v4 + 2112, a2);
  *(a1 + 2616) = sub_3AF6B4(a2);
  *(a1 + 2624) = sub_3B1AF0(a2);
  *(a1 + 2632) = sub_3B1090(a2);
  v10[23] = 19;
  strcpy(v10, "DrivingETAEvaluator");
  memset(v9, 0, sizeof(v9));
  v5 = sub_3AEC94(a2, v10, v9);
  v8 = 17;
  strcpy(__p, "start_with_u_turn");
  v6 = sub_5F5AC(v5, __p);
  sub_FA344C((a1 + 2640), v6);
}

void sub_FA1708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
    sub_3DB5C4(v25 + 264);
    sub_FA9474(v25);
    _Unwind_Resume(a1);
  }

  sub_3DB5C4(v25 + 264);
  sub_FA9474(v25);
  _Unwind_Resume(a1);
}

void *sub_FA17A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v24[0] = *a3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  if (!a4)
  {
    result = nullsub_1(a2);
    if (result[1] == *result)
    {
      return result;
    }

    v14 = *nullsub_1(a2);
    v15 = *sub_73EEC(v14);
    if (v15 > 0x7FFFFFFE)
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = vcvtd_n_f64_s32(*(a1 + 2656), 1uLL);
      if (v16 < 0.0)
      {
        if (v16 <= -4.50359963e15)
        {
          goto LABEL_18;
        }

        v17 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
        goto LABEL_17;
      }

      if (v16 >= 4.50359963e15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0.0;
    }

    v17 = (v16 + v16) + 1;
LABEL_17:
    v16 = (v17 >> 1);
LABEL_18:
    v18 = __OFADD__(v16, v15);
    v20 = v16 + v15;
    v19 = (v20 < 0) ^ v18;
    v21 = v20 / 10;
    v22 = v20 % 10;
    if (v19)
    {
      v23 = -5;
    }

    else
    {
      v23 = 5;
    }

    v24[0] += v21 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
    sub_FA1ECC(a1, v14, v24);
  }

  v8 = nullsub_1(a2);
  v9 = v8[1];
  if (v9 != *v8)
  {
    v10 = (v9 - 552);
    sub_73EEC(v10);
    sub_FA2B74(a1, v10, v24);
  }

  result = sub_FA327C(*a5, *(a5 + 8));
  v12 = vcvtd_n_f64_s32(*(*a5 + 8), 1uLL);
  if (v12 >= 0.0)
  {
    if (v12 < 4.50359963e15)
    {
      v13 = (v12 + v12) + 1;
      goto LABEL_24;
    }
  }

  else if (v12 > -4.50359963e15)
  {
    v13 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
LABEL_24:
    v12 = (v13 >> 1);
  }

  *(*a5 + 8) = v12;
  return result;
}

void sub_FA1E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3EE9A4(va);
  sub_419F14(a6);
  _Unwind_Resume(a1);
}

void sub_FA1ECC(uint64_t a1, void *a2, int *a3)
{
  v5 = sub_F6D17C(a2, 0);
  v6 = *a3;
  sub_320EC8(*(a1 + 2616), *(v5 + 32) | (*(v5 + 36) << 32), &v7);
  sub_386C(v8, v6);
}

void sub_FA2A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_25F00(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  sub_3EE9A4(v24);
  sub_3874(&a24);
  _Unwind_Resume(a1);
}

void sub_FA2B74(uint64_t a1, void *a2, int *a3)
{
  v5 = sub_F6D17C(a2, 0);
  v6 = *a3;
  sub_320EC8(*(a1 + 2616), *(v5 + 32) | (*(v5 + 36) << 32), &v7);
  sub_386C(v8, v6);
}

void sub_FA31B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3EE9A4(a14);
  sub_3874(&a24);
  _Unwind_Resume(a1);
}

void *sub_FA327C(void *result, void *a2)
{
  if (result != a2)
  {
    v32 = v2;
    v33 = v3;
    v4 = result;
    v5 = a2 - 36;
    if (a2 - 36 > result)
    {
      do
      {
        v6 = *v4;
        v9 = *(v4 + 8);
        v8 = v6;
        v10 = *(v4 + 16);
        v11 = *(v4 + 32);
        *(v4 + 24) = 0;
        *(v4 + 32) = 0;
        *(v4 + 16) = 0;
        v12 = *(v4 + 40);
        v13 = *(v4 + 56);
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        *(v4 + 40) = 0;
        v14 = *(v4 + 64);
        v15 = *(v4 + 80);
        *(v4 + 64) = 0;
        *(v4 + 72) = 0;
        *(v4 + 80) = 0;
        v16 = *(v4 + 88);
        v17 = *(v4 + 104);
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v4 + 104) = 0;
        v18 = *(v4 + 112);
        v19 = *(v4 + 128);
        *(v4 + 112) = 0;
        *(v4 + 120) = 0;
        *(v4 + 128) = 0;
        v20 = *(v4 + 136);
        v21 = *(v4 + 152);
        *(v4 + 136) = 0;
        *(v4 + 144) = 0;
        *(v4 + 152) = 0;
        v22 = *(v4 + 160);
        v23 = *(v4 + 176);
        *(v4 + 160) = 0;
        *(v4 + 168) = 0;
        *(v4 + 176) = 0;
        v24 = *(v4 + 184);
        v25 = *(v4 + 200);
        *(v4 + 184) = 0;
        *(v4 + 192) = 0;
        *(v4 + 200) = 0;
        v26 = *(v4 + 208);
        v27 = *(v4 + 224);
        *(v4 + 208) = 0;
        *(v4 + 216) = 0;
        *(v4 + 224) = 0;
        v28 = *(v4 + 232);
        v29 = *(v4 + 248);
        *(v4 + 232) = 0;
        *(v4 + 240) = 0;
        *(v4 + 248) = 0;
        v7 = *(v4 + 272);
        v30 = *(v4 + 256);
        v31 = v7;
        sub_419B60(v4, v5);
        sub_419B60(v5, &v8);
        result = sub_3EE9A4(&v8);
        v4 += 288;
        v5 -= 36;
      }

      while (v4 < v5);
    }
  }

  return result;
}

double sub_FA340C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  sub_FA17A8(a1, a2, a3, a4, &v7);
  result = *&v7;
  *a5 = v7;
  *(a5 + 16) = v8;
  return result;
}

void sub_FA344C(_DWORD *a1, void *a2)
{
  v3 = 7;
  strcpy(__p, "penalty");
  *a1 = sub_352470(a2, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FA3614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FA3634(uint64_t a1, uint64_t a2)
{
  v3[23] = 9;
  strcpy(v3, "EVRouting");
  memset(v2, 0, sizeof(v2));
  sub_3AEC94(a2, v3, v2);
  operator new();
}

void sub_FA3778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

unint64_t sub_FA37F4(uint64_t a1, unint64_t *a2, unsigned int *a3, uint64_t **a4, uint64_t **a5)
{
  v9 = a2[5];
  v10 = v9 / 100;
  v11 = v9 % 100;
  if (v9 < 0)
  {
    v12 = -50;
  }

  else
  {
    v12 = 50;
  }

  v13 = *a2;
  v14 = (v10 + (((5243 * (v12 + v11)) >> 19) + ((5243 * (v12 + v11)) >> 31)));
  v15 = v14 / (sub_FADE5C(a1 + 2112, *a2) / 3.6) * 10.0;
  if (v15 >= 0.0)
  {
    if (v15 >= 4.50359963e15)
    {
      goto LABEL_10;
    }

    v16 = (v15 + v15) + 1;
  }

  else
  {
    if (v15 <= -4.50359963e15)
    {
      goto LABEL_10;
    }

    v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
  }

  v15 = (v16 >> 1);
LABEL_10:
  v17 = v14 / (sub_FAE60C(a1 + 2112, v13, a3, a4) / 3.6) * 10.0;
  if (v17 >= 0.0)
  {
    if (v17 < 4.50359963e15)
    {
      v18 = (v17 + v17) + 1;
      goto LABEL_15;
    }
  }

  else if (v17 > -4.50359963e15)
  {
    v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
LABEL_15:
    v17 = (v18 >> 1);
  }

  sub_FAEF14(a1 + 2112, v13, a3, a4, a5);
  sub_FADB70(a1 + 2112, v13, a5);
  return v15 | (v17 << 32);
}

void sub_FA3AD4(uint64_t a1, void *a2, uint64_t a3, int *a4, _DWORD *a5, unint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  *(a9 + 264) += *a5 + *a4;
  *(a9 + 268) += a5[1] + a4[1];
  *(a9 + 272) += a5[2] + a4[2];
  v135 = a7;
  *(a9 + 4) += a5[a7] + a4[a7];
  *(a9 + 284) += a5[a7];
  sub_F6D024(a2);
  sub_F6D024(a2);
  v14 = *(a3 + 24);
  sub_F6D024(a2);
  v15 = *(a3 + 32);
  v16 = v15 - 1;
  if (v14 > v15 - 1)
  {
    v16 = v14;
  }

  v133 = a6;
  if (v16 <= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a9 + 40);
  v19 = (*(a9 + 48) - v18) >> 2;
  if (v19 <= v17)
  {
    v20 = v17 + 1;
    v138 = 0;
    if (v17 + 1 <= v19)
    {
      if (v17 + 1 < v19)
      {
        *(a9 + 48) = v18 + 4 * v20;
      }
    }

    else
    {
      sub_569AC(a9 + 40, v17 + 1 - v19, &v138);
    }

    v21 = *(a9 + 64);
    v22 = *(a9 + 72);
    v137 = 0;
    v23 = (v22 - v21) >> 2;
    if (v20 <= v23)
    {
      if (v20 < v23)
      {
        *(a9 + 72) = v21 + 4 * v20;
      }
    }

    else
    {
      sub_569AC(a9 + 64, v20 - v23, &v137);
    }

    v24 = *(a9 + 16);
    v25 = *(a9 + 24);
    v136 = 0;
    v26 = (v25 - v24) >> 2;
    if (v20 <= v26)
    {
      if (v20 < v26)
      {
        *(a9 + 24) = v24 + 4 * v20;
      }
    }

    else
    {
      sub_569AC(a9 + 16, v20 - v26, &v136);
    }

    v15 = *(a3 + 32);
  }

  v134 = a5;
  v27 = a3;
  v28 = *(a3 + 24);
  if (v28 <= v15)
  {
    v29 = v15;
  }

  else
  {
    v29 = v28;
  }

  if (v28 < v15)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      sub_F6D024(a2);
      v34 = sub_F6D254(a2, v28);
      v35 = *(v27 + 40);
      if (v35 <= 1)
      {
        v35 = 1;
      }

      v36 = v34 / v35;
      v37 = v36 * *a4;
      if (v37 >= 0.0)
      {
        if (v37 >= 4.50359963e15)
        {
          goto LABEL_35;
        }

        v38 = (v37 + v37) + 1;
      }

      else
      {
        if (v37 <= -4.50359963e15)
        {
          goto LABEL_35;
        }

        v38 = (v37 + v37) - 1 + (((v37 + v37) - 1) >> 63);
      }

      v37 = (v38 >> 1);
LABEL_35:
      v39 = v36 * a4[1];
      if (v39 >= 0.0)
      {
        if (v39 >= 4.50359963e15)
        {
          goto LABEL_41;
        }

        v40 = (v39 + v39) + 1;
      }

      else
      {
        if (v39 <= -4.50359963e15)
        {
          goto LABEL_41;
        }

        v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
      }

      v39 = (v40 >> 1);
LABEL_41:
      v33 = v36 * a4[v135];
      if (v33 >= 0.0)
      {
        if (v33 >= 4.50359963e15)
        {
          goto LABEL_26;
        }

        v41 = (v33 + v33) + 1;
      }

      else
      {
        if (v33 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v41 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
      }

      v33 = (v41 >> 1);
LABEL_26:
      *(*(a9 + 40) + 4 * v28) += v37;
      *(*(a9 + 64) + 4 * v28) += v39;
      *(*(a9 + 16) + 4 * v28) += v33;
      v30 += v37;
      v31 += v39;
      v32 += v33;
      if (v29 == ++v28)
      {
        goto LABEL_47;
      }
    }
  }

  v32 = 0;
  v31 = 0;
  v30 = 0;
LABEL_47:
  v42 = *a4 - v30;
  v43 = a4[1] - v31;
  v44 = a4[v135] - v32;
  sub_F6D024(a2);
  v45 = v27;
  v46 = 4 * *(v27 + 32) - 4;
  *(*(a9 + 40) + v46) += v42;
  *(*(a9 + 64) + v46) += v43;
  *(*(a9 + 16) + v46) += v44;
  v48 = *(a9 + 120);
  v47 = *(a9 + 128);
  if (v48 >= v47)
  {
    v51 = *(a9 + 112);
    v52 = v48 - v51;
    v53 = (v48 - v51) >> 2;
    v54 = v53 + 1;
    v50 = v134;
    if ((v53 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v55 = v47 - v51;
    if (v55 >> 1 > v54)
    {
      v54 = v55 >> 1;
    }

    if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v56 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v56 = v54;
    }

    if (v56)
    {
      if (!(v56 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v57 = v53;
    v58 = (4 * v53);
    v59 = &v58[-v57];
    *v58 = *a4;
    v49 = v58 + 1;
    memcpy(v59, v51, v52);
    *(a9 + 112) = v59;
    *(a9 + 120) = v49;
    *(a9 + 128) = 0;
    if (v51)
    {
      operator delete(v51);
    }
  }

  else
  {
    *v48 = *a4;
    v49 = v48 + 4;
    v50 = v134;
  }

  *(a9 + 120) = v49;
  v61 = *(a9 + 144);
  v60 = *(a9 + 152);
  if (v61 >= v60)
  {
    v63 = *(a9 + 136);
    v64 = v61 - v63;
    v65 = (v61 - v63) >> 2;
    v66 = v65 + 1;
    if ((v65 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v67 = v60 - v63;
    if (v67 >> 1 > v66)
    {
      v66 = v67 >> 1;
    }

    if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v68 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v68 = v66;
    }

    if (v68)
    {
      if (!(v68 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v69 = v65;
    v70 = (4 * v65);
    v71 = &v70[-v69];
    *v70 = a4[1];
    v62 = v70 + 1;
    memcpy(v71, v63, v64);
    *(a9 + 136) = v71;
    *(a9 + 144) = v62;
    *(a9 + 152) = 0;
    if (v63)
    {
      operator delete(v63);
    }
  }

  else
  {
    *v61 = a4[1];
    v62 = v61 + 4;
  }

  *(a9 + 144) = v62;
  v73 = *(a9 + 96);
  v72 = *(a9 + 104);
  if (v73 >= v72)
  {
    v75 = *(a9 + 88);
    v76 = v73 - v75;
    v77 = (v73 - v75) >> 2;
    v78 = v77 + 1;
    if ((v77 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v79 = v72 - v75;
    if (v79 >> 1 > v78)
    {
      v78 = v79 >> 1;
    }

    if (v79 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v80 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v80 = v78;
    }

    if (v80)
    {
      if (!(v80 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v81 = v77;
    v82 = (4 * v77);
    v83 = &v82[-v81];
    *v82 = a4[v135];
    v74 = v82 + 1;
    memcpy(v83, v75, v76);
    *(a9 + 88) = v83;
    *(a9 + 96) = v74;
    *(a9 + 104) = 0;
    if (v75)
    {
      operator delete(v75);
    }
  }

  else
  {
    *v73 = a4[v135];
    v74 = v73 + 4;
  }

  *(a9 + 96) = v74;
  v85 = *(a9 + 168);
  v84 = *(a9 + 176);
  if (v85 >= v84)
  {
    v87 = *(a9 + 160);
    v88 = v85 - v87;
    v89 = (v85 - v87) >> 2;
    v90 = v89 + 1;
    if ((v89 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v91 = v84 - v87;
    if (v91 >> 1 > v90)
    {
      v90 = v91 >> 1;
    }

    if (v91 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v92 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v92 = v90;
    }

    if (v92)
    {
      if (!(v92 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v93 = v89;
    v94 = (4 * v89);
    v95 = a4[3];
    v96 = &v94[-v93];
    *v94 = v95;
    v86 = v94 + 1;
    memcpy(v96, v87, v88);
    *(a9 + 160) = v96;
    *(a9 + 168) = v86;
    *(a9 + 176) = 0;
    if (v87)
    {
      operator delete(v87);
    }
  }

  else
  {
    *v85 = a4[3];
    v86 = v85 + 4;
  }

  *(a9 + 168) = v86;
  *(*(a9 + 40) + 4 * v133) += *v50;
  *(*(a9 + 64) + 4 * v133) += v50[1];
  *(*(a9 + 16) + 4 * v133) += v50[v135];
  if (!*(v45 + 24))
  {
    return;
  }

  v98 = *(a9 + 192);
  v97 = *(a9 + 200);
  if (v98 >= v97)
  {
    v100 = *(a9 + 184);
    v101 = v98 - v100;
    v102 = (v98 - v100) >> 2;
    v103 = v102 + 1;
    if ((v102 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v104 = v97 - v100;
    if (v104 >> 1 > v103)
    {
      v103 = v104 >> 1;
    }

    if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v105 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v105 = v103;
    }

    if (v105)
    {
      if (!(v105 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v106 = v102;
    v107 = (4 * v102);
    v108 = &v107[-v106];
    *v107 = v50[v135];
    v99 = v107 + 1;
    memcpy(v108, v100, v101);
    *(a9 + 184) = v108;
    *(a9 + 192) = v99;
    *(a9 + 200) = 0;
    if (v100)
    {
      operator delete(v100);
    }
  }

  else
  {
    *v98 = v50[v135];
    v99 = v98 + 4;
  }

  *(a9 + 192) = v99;
  v110 = *(a9 + 240);
  v109 = *(a9 + 248);
  if (v110 >= v109)
  {
    v112 = *(a9 + 232);
    v113 = v110 - v112;
    v114 = (v110 - v112) >> 2;
    v115 = v114 + 1;
    if ((v114 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v116 = v109 - v112;
    if (v116 >> 1 > v115)
    {
      v115 = v116 >> 1;
    }

    if (v116 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v117 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v117 = v115;
    }

    if (v117)
    {
      if (!(v117 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v118 = v114;
    v119 = (4 * v114);
    v120 = &v119[-v118];
    *v119 = v50[1];
    v111 = v119 + 1;
    memcpy(v120, v112, v113);
    *(a9 + 232) = v120;
    *(a9 + 240) = v111;
    *(a9 + 248) = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    *v110 = v50[1];
    v111 = v110 + 4;
  }

  *(a9 + 240) = v111;
  v122 = *(a9 + 216);
  v121 = *(a9 + 224);
  if (v122 >= v121)
  {
    v124 = *(a9 + 208);
    v125 = v122 - v124;
    v126 = (v122 - v124) >> 2;
    v127 = v126 + 1;
    if (!((v126 + 1) >> 62))
    {
      v128 = v121 - v124;
      if (v128 >> 1 > v127)
      {
        v127 = v128 >> 1;
      }

      if (v128 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v129 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v129 = v127;
      }

      if (!v129)
      {
        v130 = (v122 - v124) >> 2;
        v131 = (4 * v126);
        v132 = (4 * v126 - 4 * v130);
        *v131 = *v50;
        v123 = v131 + 1;
        memcpy(v132, v124, v125);
        *(a9 + 208) = v132;
        *(a9 + 216) = v123;
        *(a9 + 224) = 0;
        if (v124)
        {
          operator delete(v124);
        }

        goto LABEL_139;
      }

      if (!(v129 >> 62))
      {
        operator new();
      }

LABEL_142:
      sub_1808();
    }

LABEL_141:
    sub_1794();
  }

  *v122 = *v50;
  v123 = v122 + 4;
LABEL_139:
  *(a9 + 216) = v123;
}

uint64_t sub_FA4448(uint64_t result, int *a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  v5 = *(result + 2664) * v4;
  if (v5 >= 0.0)
  {
    if (v5 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v6 = (v5 + v5) + 1;
  }

  else
  {
    if (v5 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
  }

  v5 = (v6 >> 1);
LABEL_7:
  *(a4 + 276) = v5;
  v7 = *(a4 + 268);
  if (v7 <= *(a4 + 272))
  {
    v7 = *(a4 + 272);
  }

  *(a4 + 280) = v7;
  v8 = *a2;
  *a4 = *a2;
  if (a3 == 1)
  {
    v9 = v4 / -10;
    v10 = v4 % 10;
    if (v4 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    *a4 = v9 + v8 + (((-103 * (v11 + v10)) >> 15) & 1) + ((-103 * (v11 + v10)) >> 10);
    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    if (v12 != v13)
    {
      v14 = (v13 - 4);
      if (v13 - 4 > v12)
      {
        v15 = v13 - 8;
        if (v13 - 8 <= v12 + 4)
        {
          v15 = v12 + 4;
        }

        v16 = v15 - 4;
        if (v16 == v12)
        {
          v17 = *(a4 + 16);
        }

        else
        {
          v17 = v12 + 1;
        }

        v18 = v16 == v12;
        v19 = (v16 - v17) >> 3;
        if (!v18)
        {
          ++v19;
        }

        if (v19 < 0x13 || v12 < v13 && v13 - 4 * v19 - 4 < v12 + 4 * v19 + 4)
        {
          goto LABEL_28;
        }

        v20 = v19 + 1;
        v21 = 4 * (v20 & 0x7FFFFFFFFFFFFFF8);
        v14 = (v14 - v21);
        v22 = v12 + v21;
        v23 = (v12 + 16);
        v24 = (v13 - 16);
        v25 = v20 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v26 = v23[-1];
          v27 = *v23;
          v28 = vrev64q_s32(*v24);
          v29 = vrev64q_s32(v24[-1]);
          v23[-1] = vextq_s8(v28, v28, 8uLL);
          *v23 = vextq_s8(v29, v29, 8uLL);
          v30 = vrev64q_s32(v26);
          v31 = vrev64q_s32(v27);
          v24[-1] = vextq_s8(v31, v31, 8uLL);
          *v24 = vextq_s8(v30, v30, 8uLL);
          v23 += 2;
          v24 -= 2;
          v25 -= 8;
        }

        while (v25);
        v12 = v22;
        if (v20 != (v20 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_28:
          v32 = v12 + 4;
          do
          {
            v33 = *(v32 - 4);
            *(v32 - 4) = *v14;
            *v14-- = v33;
            v34 = v32 >= v14;
            v32 += 4;
          }

          while (!v34);
        }
      }
    }

    v35 = *(a4 + 40);
    v36 = *(a4 + 48);
    v37 = (v36 - 4);
    if (v35 != v36 && v37 > v35)
    {
      v39 = v36 - 8;
      if (v36 - 8 <= v35 + 4)
      {
        v39 = v35 + 4;
      }

      v40 = v39 - 4;
      if (v40 == v35)
      {
        v41 = *(a4 + 40);
      }

      else
      {
        v41 = v35 + 1;
      }

      v18 = v40 == v35;
      v42 = (v40 - v41) >> 3;
      if (!v18)
      {
        ++v42;
      }

      if (v42 < 0x13 || v35 < v36 && v36 - 4 * v42 - 4 < v35 + 4 * v42 + 4)
      {
        goto LABEL_49;
      }

      v43 = v42 + 1;
      v44 = 4 * (v43 & 0x7FFFFFFFFFFFFFF8);
      v37 = (v37 - v44);
      v45 = v35 + v44;
      v46 = (v35 + 16);
      v47 = (v36 - 16);
      v48 = v43 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v49 = v46[-1];
        v50 = *v46;
        v51 = vrev64q_s32(*v47);
        v52 = vrev64q_s32(v47[-1]);
        v46[-1] = vextq_s8(v51, v51, 8uLL);
        *v46 = vextq_s8(v52, v52, 8uLL);
        v53 = vrev64q_s32(v49);
        v54 = vrev64q_s32(v50);
        v47[-1] = vextq_s8(v54, v54, 8uLL);
        *v47 = vextq_s8(v53, v53, 8uLL);
        v46 += 2;
        v47 -= 2;
        v48 -= 8;
      }

      while (v48);
      v35 = v45;
      if (v43 != (v43 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_49:
        v55 = v35 + 4;
        do
        {
          v56 = *(v55 - 4);
          *(v55 - 4) = *v37;
          *v37-- = v56;
          v34 = v55 >= v37;
          v55 += 4;
        }

        while (!v34);
      }
    }

    v57 = *(a4 + 64);
    v58 = *(a4 + 72);
    v59 = (v58 - 4);
    if (v57 != v58 && v59 > v57)
    {
      v61 = v58 - 8;
      if (v58 - 8 <= v57 + 4)
      {
        v61 = v57 + 4;
      }

      v62 = v61 - 4;
      if (v62 == v57)
      {
        v63 = *(a4 + 64);
      }

      else
      {
        v63 = v57 + 1;
      }

      v18 = v62 == v57;
      v64 = (v62 - v63) >> 3;
      if (!v18)
      {
        ++v64;
      }

      if (v64 < 0x13 || v57 < v58 && v58 - 4 * v64 - 4 < v57 + 4 * v64 + 4)
      {
        goto LABEL_70;
      }

      v65 = v64 + 1;
      v66 = 4 * (v65 & 0x7FFFFFFFFFFFFFF8);
      v59 = (v59 - v66);
      v67 = v57 + v66;
      v68 = (v57 + 16);
      v69 = (v58 - 16);
      v70 = v65 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v71 = v68[-1];
        v72 = *v68;
        v73 = vrev64q_s32(*v69);
        v74 = vrev64q_s32(v69[-1]);
        v68[-1] = vextq_s8(v73, v73, 8uLL);
        *v68 = vextq_s8(v74, v74, 8uLL);
        v75 = vrev64q_s32(v71);
        v76 = vrev64q_s32(v72);
        v69[-1] = vextq_s8(v76, v76, 8uLL);
        *v69 = vextq_s8(v75, v75, 8uLL);
        v68 += 2;
        v69 -= 2;
        v70 -= 8;
      }

      while (v70);
      v57 = v67;
      if (v65 != (v65 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_70:
        v77 = v57 + 4;
        do
        {
          v78 = *(v77 - 4);
          *(v77 - 4) = *v59;
          *v59-- = v78;
          v34 = v77 >= v59;
          v77 += 4;
        }

        while (!v34);
      }
    }

    v79 = *(a4 + 88);
    v80 = *(a4 + 96);
    v81 = (v80 - 4);
    if (v79 != v80 && v81 > v79)
    {
      v83 = v80 - 8;
      if (v80 - 8 <= v79 + 4)
      {
        v83 = v79 + 4;
      }

      v84 = v83 - 4;
      if (v84 == v79)
      {
        v85 = *(a4 + 88);
      }

      else
      {
        v85 = v79 + 1;
      }

      v18 = v84 == v79;
      v86 = (v84 - v85) >> 3;
      if (!v18)
      {
        ++v86;
      }

      if (v86 < 0x13 || v79 < v80 && v80 - 4 * v86 - 4 < v79 + 4 * v86 + 4)
      {
        goto LABEL_91;
      }

      v87 = v86 + 1;
      v88 = 4 * (v87 & 0x7FFFFFFFFFFFFFF8);
      v81 = (v81 - v88);
      v89 = v79 + v88;
      v90 = (v79 + 16);
      v91 = (v80 - 16);
      v92 = v87 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v93 = v90[-1];
        v94 = *v90;
        v95 = vrev64q_s32(*v91);
        v96 = vrev64q_s32(v91[-1]);
        v90[-1] = vextq_s8(v95, v95, 8uLL);
        *v90 = vextq_s8(v96, v96, 8uLL);
        v97 = vrev64q_s32(v93);
        v98 = vrev64q_s32(v94);
        v91[-1] = vextq_s8(v98, v98, 8uLL);
        *v91 = vextq_s8(v97, v97, 8uLL);
        v90 += 2;
        v91 -= 2;
        v92 -= 8;
      }

      while (v92);
      v79 = v89;
      if (v87 != (v87 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_91:
        v99 = v79 + 4;
        do
        {
          v100 = *(v99 - 4);
          *(v99 - 4) = *v81;
          *v81-- = v100;
          v34 = v99 >= v81;
          v99 += 4;
        }

        while (!v34);
      }
    }

    v101 = *(a4 + 112);
    v102 = *(a4 + 120);
    v103 = (v102 - 4);
    if (v101 != v102 && v103 > v101)
    {
      v105 = v102 - 8;
      if (v102 - 8 <= v101 + 4)
      {
        v105 = v101 + 4;
      }

      v106 = v105 - 4;
      if (v106 == v101)
      {
        v107 = *(a4 + 112);
      }

      else
      {
        v107 = v101 + 1;
      }

      v18 = v106 == v101;
      v108 = (v106 - v107) >> 3;
      if (!v18)
      {
        ++v108;
      }

      if (v108 < 0x13 || v101 < v102 && v102 - 4 * v108 - 4 < v101 + 4 * v108 + 4)
      {
        goto LABEL_112;
      }

      v109 = v108 + 1;
      v110 = 4 * (v109 & 0x7FFFFFFFFFFFFFF8);
      v103 = (v103 - v110);
      v111 = v101 + v110;
      v112 = (v101 + 16);
      v113 = (v102 - 16);
      v114 = v109 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v115 = v112[-1];
        v116 = *v112;
        v117 = vrev64q_s32(*v113);
        v118 = vrev64q_s32(v113[-1]);
        v112[-1] = vextq_s8(v117, v117, 8uLL);
        *v112 = vextq_s8(v118, v118, 8uLL);
        v119 = vrev64q_s32(v115);
        v120 = vrev64q_s32(v116);
        v113[-1] = vextq_s8(v120, v120, 8uLL);
        *v113 = vextq_s8(v119, v119, 8uLL);
        v112 += 2;
        v113 -= 2;
        v114 -= 8;
      }

      while (v114);
      v101 = v111;
      if (v109 != (v109 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_112:
        v121 = v101 + 4;
        do
        {
          v122 = *(v121 - 4);
          *(v121 - 4) = *v103;
          *v103-- = v122;
          v34 = v121 >= v103;
          v121 += 4;
        }

        while (!v34);
      }
    }

    v123 = *(a4 + 64);
    v124 = *(a4 + 72);
    v125 = (v124 - 4);
    if (v123 != v124 && v125 > v123)
    {
      v127 = v124 - 8;
      if (v124 - 8 <= v123 + 4)
      {
        v127 = v123 + 4;
      }

      v128 = v127 - 4;
      if (v128 == v123)
      {
        v129 = *(a4 + 64);
      }

      else
      {
        v129 = v123 + 1;
      }

      v18 = v128 == v123;
      v130 = (v128 - v129) >> 3;
      if (!v18)
      {
        ++v130;
      }

      if (v130 < 0x13 || v123 < v124 && v124 - 4 * v130 - 4 < v123 + 4 * v130 + 4)
      {
        goto LABEL_133;
      }

      v131 = v130 + 1;
      v132 = 4 * (v131 & 0x7FFFFFFFFFFFFFF8);
      v125 = (v125 - v132);
      v133 = v123 + v132;
      v134 = (v123 + 16);
      v135 = (v124 - 16);
      v136 = v131 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v137 = v134[-1];
        v138 = *v134;
        v139 = vrev64q_s32(*v135);
        v140 = vrev64q_s32(v135[-1]);
        v134[-1] = vextq_s8(v139, v139, 8uLL);
        *v134 = vextq_s8(v140, v140, 8uLL);
        v141 = vrev64q_s32(v137);
        v142 = vrev64q_s32(v138);
        v135[-1] = vextq_s8(v142, v142, 8uLL);
        *v135 = vextq_s8(v141, v141, 8uLL);
        v134 += 2;
        v135 -= 2;
        v136 -= 8;
      }

      while (v136);
      v123 = v133;
      if (v131 != (v131 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_133:
        v143 = v123 + 4;
        do
        {
          v144 = *(v143 - 4);
          *(v143 - 4) = *v125;
          *v125-- = v144;
          v34 = v143 >= v125;
          v143 += 4;
        }

        while (!v34);
      }
    }

    v145 = *(a4 + 160);
    v146 = *(a4 + 168);
    v147 = (v146 - 4);
    if (v145 != v146 && v147 > v145)
    {
      v149 = v146 - 8;
      if (v146 - 8 <= v145 + 4)
      {
        v149 = v145 + 4;
      }

      v150 = v149 - 4;
      if (v150 == v145)
      {
        v151 = *(a4 + 160);
      }

      else
      {
        v151 = v145 + 1;
      }

      v18 = v150 == v145;
      v152 = (v150 - v151) >> 3;
      if (!v18)
      {
        ++v152;
      }

      if (v152 < 0x13 || v145 < v146 && v146 - 4 * v152 - 4 < v145 + 4 * v152 + 4)
      {
        goto LABEL_154;
      }

      v153 = v152 + 1;
      v154 = 4 * (v153 & 0x7FFFFFFFFFFFFFF8);
      v147 = (v147 - v154);
      v155 = v145 + v154;
      v156 = (v145 + 16);
      v157 = (v146 - 16);
      v158 = v153 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v159 = v156[-1];
        v160 = *v156;
        v161 = vrev64q_s32(*v157);
        v162 = vrev64q_s32(v157[-1]);
        v156[-1] = vextq_s8(v161, v161, 8uLL);
        *v156 = vextq_s8(v162, v162, 8uLL);
        v163 = vrev64q_s32(v159);
        v164 = vrev64q_s32(v160);
        v157[-1] = vextq_s8(v164, v164, 8uLL);
        *v157 = vextq_s8(v163, v163, 8uLL);
        v156 += 2;
        v157 -= 2;
        v158 -= 8;
      }

      while (v158);
      v145 = v155;
      if (v153 != (v153 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_154:
        v165 = v145 + 4;
        do
        {
          v166 = *(v165 - 4);
          *(v165 - 4) = *v147;
          *v147-- = v166;
          v34 = v165 >= v147;
          v165 += 4;
        }

        while (!v34);
      }
    }

    v167 = *(a4 + 184);
    v168 = *(a4 + 192);
    v169 = (v168 - 4);
    if (v167 != v168 && v169 > v167)
    {
      v171 = v168 - 8;
      if (v168 - 8 <= v167 + 4)
      {
        v171 = v167 + 4;
      }

      v172 = v171 - 4;
      if (v172 == v167)
      {
        v173 = *(a4 + 184);
      }

      else
      {
        v173 = v167 + 1;
      }

      v18 = v172 == v167;
      v174 = (v172 - v173) >> 3;
      if (!v18)
      {
        ++v174;
      }

      if (v174 < 0x13 || v167 < v168 && v168 - 4 * v174 - 4 < v167 + 4 * v174 + 4)
      {
        goto LABEL_175;
      }

      v175 = v174 + 1;
      v176 = 4 * (v175 & 0x7FFFFFFFFFFFFFF8);
      v169 = (v169 - v176);
      v177 = v167 + v176;
      v178 = (v167 + 16);
      v179 = (v168 - 16);
      v180 = v175 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v181 = v178[-1];
        v182 = *v178;
        v183 = vrev64q_s32(*v179);
        v184 = vrev64q_s32(v179[-1]);
        v178[-1] = vextq_s8(v183, v183, 8uLL);
        *v178 = vextq_s8(v184, v184, 8uLL);
        v185 = vrev64q_s32(v181);
        v186 = vrev64q_s32(v182);
        v179[-1] = vextq_s8(v186, v186, 8uLL);
        *v179 = vextq_s8(v185, v185, 8uLL);
        v178 += 2;
        v179 -= 2;
        v180 -= 8;
      }

      while (v180);
      v167 = v177;
      if (v175 != (v175 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_175:
        v187 = v167 + 4;
        do
        {
          v188 = *(v187 - 4);
          *(v187 - 4) = *v169;
          *v169-- = v188;
          v34 = v187 >= v169;
          v187 += 4;
        }

        while (!v34);
      }
    }

    v189 = *(a4 + 232);
    v190 = *(a4 + 240);
    v191 = (v190 - 4);
    if (v189 != v190 && v191 > v189)
    {
      v193 = v190 - 8;
      if (v190 - 8 <= v189 + 4)
      {
        v193 = v189 + 4;
      }

      v194 = v193 - 4;
      if (v194 == v189)
      {
        v195 = *(a4 + 232);
      }

      else
      {
        v195 = v189 + 1;
      }

      v18 = v194 == v189;
      v196 = (v194 - v195) >> 3;
      if (!v18)
      {
        ++v196;
      }

      if (v196 < 0x13 || v189 < v190 && v190 - 4 * v196 - 4 < v189 + 4 * v196 + 4)
      {
        goto LABEL_196;
      }

      v197 = v196 + 1;
      v198 = 4 * (v197 & 0x7FFFFFFFFFFFFFF8);
      v191 = (v191 - v198);
      v199 = v189 + v198;
      v200 = (v189 + 16);
      v201 = (v190 - 16);
      v202 = v197 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v203 = v200[-1];
        v204 = *v200;
        v205 = vrev64q_s32(*v201);
        v206 = vrev64q_s32(v201[-1]);
        v200[-1] = vextq_s8(v205, v205, 8uLL);
        *v200 = vextq_s8(v206, v206, 8uLL);
        v207 = vrev64q_s32(v203);
        v208 = vrev64q_s32(v204);
        v201[-1] = vextq_s8(v208, v208, 8uLL);
        *v201 = vextq_s8(v207, v207, 8uLL);
        v200 += 2;
        v201 -= 2;
        v202 -= 8;
      }

      while (v202);
      v189 = v199;
      if (v197 != (v197 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_196:
        v209 = v189 + 4;
        do
        {
          v210 = *(v209 - 4);
          *(v209 - 4) = *v191;
          *v191-- = v210;
          v34 = v209 >= v191;
          v209 += 4;
        }

        while (!v34);
      }
    }

    v211 = *(a4 + 208);
    v212 = *(a4 + 216);
    v213 = (v212 - 4);
    if (v211 != v212 && v213 > v211)
    {
      v215 = v212 - 8;
      if (v212 - 8 <= v211 + 4)
      {
        v215 = v211 + 4;
      }

      v216 = v215 - 4;
      if (v216 == v211)
      {
        v217 = *(a4 + 208);
      }

      else
      {
        v217 = v211 + 1;
      }

      v18 = v216 == v211;
      v218 = (v216 - v217) >> 3;
      if (!v18)
      {
        ++v218;
      }

      if (v218 < 0x13 || v211 < v212 && v212 - 4 * v218 - 4 < v211 + 4 * v218 + 4)
      {
        goto LABEL_217;
      }

      v219 = v218 + 1;
      v220 = 4 * (v219 & 0x7FFFFFFFFFFFFFF8);
      v213 = (v213 - v220);
      v221 = v211 + v220;
      v222 = (v211 + 16);
      v223 = (v212 - 16);
      v224 = v219 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v225 = v222[-1];
        v226 = *v222;
        v227 = vrev64q_s32(*v223);
        v228 = vrev64q_s32(v223[-1]);
        v222[-1] = vextq_s8(v227, v227, 8uLL);
        *v222 = vextq_s8(v228, v228, 8uLL);
        v229 = vrev64q_s32(v225);
        v230 = vrev64q_s32(v226);
        v223[-1] = vextq_s8(v230, v230, 8uLL);
        *v223 = vextq_s8(v229, v229, 8uLL);
        v222 += 2;
        v223 -= 2;
        v224 -= 8;
      }

      while (v224);
      v211 = v221;
      if (v219 != (v219 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_217:
        v231 = v211 + 4;
        do
        {
          v232 = *(v231 - 4);
          *(v231 - 4) = *v213;
          *v213-- = v232;
          v34 = v231 >= v213;
          v231 += 4;
        }

        while (!v34);
      }
    }
  }

  return result;
}

uint64_t sub_FA4F1C(uint64_t a1, char *a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    if ((a2 & 0x4000000000000000) != 0)
    {
      return a2 & 0xFFFFFFFFFFFFLL;
    }

    goto LABEL_15;
  }

  v2 = a2;
  v4 = sub_31D994(a1 + 16, a2, 1);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 < 5u)
    {
      goto LABEL_27;
    }

    if (!*(v5 + 2))
    {
      goto LABEL_27;
    }

    v6 = &v4[*(v5 + 2) + *&v4[*(v5 + 2)]];
    if (*v6 <= (HIDWORD(v2) & 0x3FFFFFFFu))
    {
      goto LABEL_27;
    }

    v7 = (&v6[((v2 >> 32) & 0x3FFFFFFF) + 1] + v6[((v2 >> 32) & 0x3FFFFFFF) + 1]);
    v8 = (v7 - *v7);
    v9 = *v8;
    if (v9 >= 0xB)
    {
      if (!v8[5] || (v10 = *(a1 + 3889), v10 == 254))
      {
LABEL_17:
        if (v8[2])
        {
          v14 = v7 + v8[2] + *(v7 + v8[2]);
          if (*v14)
          {
            if (v2 >> 62)
            {
              a2 = *(v14 + 4);
              if ((a2 & 0xFF000000000000) != 0)
              {
                return a2 & 0xFFFFFFFFFFFFLL;
              }

              goto LABEL_15;
            }

            if (v9 < 0xD || !v8[6] || (*(v7 + v8[6]) & 1) == 0)
            {
              a2 = *&v14[8 * (*v14 - 1) + 4];
              if ((a2 & 0xFF000000000000) == 0)
              {
                return a2 & 0xFFFFFFFFFFFFLL;
              }

LABEL_15:
              v4 = a2;
              return v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
            }
          }
        }

LABEL_27:
        v4 = 0;
        return v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
      }

      v11 = (v7 + v8[5] + *(v7 + v8[5]));
      v12 = *v11;
      if (!v12)
      {
        goto LABEL_27;
      }

      for (i = (v11 + 1); v10 != *i; ++i)
      {
        v4 = 0;
        if (!--v12)
        {
          return v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
        }
      }
    }

    if (v9 < 5)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  return v4 & 0xFFFFFFFFFFFFLL | 0x1000000000000;
}

unint64_t sub_FA50A4@<X0>(unint64_t result@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(a4 + 24);
  if (!v8)
  {
    goto LABEL_53;
  }

  v12 = result;
  if (*a3 && (*(result + 2672) & 1) == 0)
  {
    v13 = *a3;
    v14 = a6[1];
    v42[0] = (*a6 - 8);
    v42[1] = v14;
    result = sub_FAEBD4(result + 2112, v13, a5, v42);
    if (result)
    {
      goto LABEL_53;
    }

    v8 = *(a4 + 24);
  }

  v15 = *(a4 + 32);
  if (v8 <= v15)
  {
    v16 = *(a4 + 32);
  }

  else
  {
    v16 = v8;
  }

  if (v8 >= v15)
  {
    goto LABEL_53;
  }

  while (1)
  {
    result = sub_F6D17C(a2, v8);
    v17 = *result;
    v18 = (*result - **result);
    v19 = *v18;
    if (v19 >= 0x9B)
    {
      if (v18[77])
      {
        v20 = *(v17 + v18[77]);
        if ((v20 & 0x2000000) != 0)
        {
          if ((v20 & 0x4000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_12;
        }
      }
    }

    v21 = *(result + 8);
    if (!v21)
    {
      break;
    }

    v22 = (v21 - *v21);
    if (*v22 < 0x11u)
    {
      break;
    }

    v23 = v22[8];
    if (!v23)
    {
      break;
    }

    v24 = *(v21 + v23);
    if (v19 >= 0x9B && (v24 & 4) == 0)
    {
      goto LABEL_26;
    }

    if ((v24 & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_12:
    if (v16 == ++v8)
    {
      goto LABEL_53;
    }
  }

  if (v19 < 0x9B)
  {
    goto LABEL_28;
  }

LABEL_26:
  v26 = v18[77];
  if (v26 && (*(v17 + v26 + 2) & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  if (v15 == v8)
  {
    goto LABEL_53;
  }

  result = sub_A0AF10(v8 - 1);
  v27 = result >= -1 ? -1 : result;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v28 = result;
  v29 = v27 - result;
  while (2)
  {
    result = sub_F6D17C(a2, v28);
    v31 = *result;
    v32 = (*result - **result);
    v33 = *v32;
    if (v33 >= 0x9B)
    {
      if (v32[77])
      {
        v34 = *(v31 + v32[77]);
        if ((v34 & 0x2000000) != 0)
        {
          if ((v34 & 0x4000000) == 0)
          {
            break;
          }

          goto LABEL_35;
        }
      }
    }

    v35 = *(result + 8);
    if (v35 && (v36 = (v35 - *v35), *v36 >= 0x11u) && (v37 = v36[8]) != 0)
    {
      v38 = *(v35 + v37);
      if (v33 < 0x9B || (v38 & 4) != 0)
      {
        if ((v38 & 4) == 0)
        {
          break;
        }

        goto LABEL_35;
      }
    }

    else if (v33 < 0x9B)
    {
      break;
    }

    v40 = v32[77];
    if (v40 && (*(v31 + v40 + 2) & 1) != 0)
    {
LABEL_35:
      --v28;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_53;
      }

      continue;
    }

    break;
  }

  if (*(a4 + 24) > v28)
  {
    sub_4D1F44(a2, v28, v8, v42);
    result = sub_FB3FB4(v12, v42, a5);
    *a7 = v28;
    *(a7 + 8) = result;
    *(a7 + 16) = v41;
    return result;
  }

LABEL_53:
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  return result;
}

void sub_FA52F4(uint64_t a1, void *a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  *(a9 + 264) += *a5 + *a4;
  *(a9 + 268) += a5[1] + a4[1];
  *(a9 + 272) += a5[2] + a4[2];
  v138 = a7;
  *(a9 + 4) += a5[a7] + a4[a7];
  *(a9 + 284) += a5[a7];
  v13 = sub_F6D024(a2) + ~a6;
  v14 = sub_F6D024(a2) + ~*(a3 + 24);
  v15 = sub_F6D024(a2);
  v16 = *(a3 + 32);
  v17 = v15 - v16;
  if (v14 > v15 - v16)
  {
    v17 = v14;
  }

  v136 = v13;
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(a9 + 40);
  v20 = (*(a9 + 48) - v19) >> 2;
  if (v20 <= v18)
  {
    v21 = v18 + 1;
    v141 = 0;
    if (v18 + 1 <= v20)
    {
      if (v18 + 1 < v20)
      {
        *(a9 + 48) = v19 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 40, v18 + 1 - v20, &v141);
    }

    v22 = *(a9 + 64);
    v23 = *(a9 + 72);
    v140 = 0;
    v24 = (v23 - v22) >> 2;
    if (v21 <= v24)
    {
      if (v21 < v24)
      {
        *(a9 + 72) = v22 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 64, v21 - v24, &v140);
    }

    v25 = *(a9 + 16);
    v26 = *(a9 + 24);
    v139 = 0;
    v27 = (v26 - v25) >> 2;
    if (v21 <= v27)
    {
      if (v21 < v27)
      {
        *(a9 + 24) = v25 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 16, v21 - v27, &v139);
    }

    v16 = *(a3 + 32);
  }

  v137 = a5;
  v28 = a3;
  v29 = *(a3 + 24);
  if (v29 <= v16)
  {
    v30 = v16;
  }

  else
  {
    v30 = *(a3 + 24);
  }

  if (v29 < v16)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v36 = sub_F6D024(a2);
      v37 = sub_F6D254(a2, v29);
      v38 = *(v28 + 40);
      if (v38 <= 1)
      {
        v38 = 1;
      }

      v39 = v37 / v38;
      v40 = v39 * *a4;
      if (v40 >= 0.0)
      {
        if (v40 >= 4.50359963e15)
        {
          goto LABEL_35;
        }

        v41 = (v40 + v40) + 1;
      }

      else
      {
        if (v40 <= -4.50359963e15)
        {
          goto LABEL_35;
        }

        v41 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
      }

      v40 = (v41 >> 1);
LABEL_35:
      v42 = v39 * a4[1];
      if (v42 >= 0.0)
      {
        if (v42 >= 4.50359963e15)
        {
          goto LABEL_41;
        }

        v43 = (v42 + v42) + 1;
      }

      else
      {
        if (v42 <= -4.50359963e15)
        {
          goto LABEL_41;
        }

        v43 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
      }

      v42 = (v43 >> 1);
LABEL_41:
      v34 = v39 * a4[v138];
      if (v34 >= 0.0)
      {
        if (v34 >= 4.50359963e15)
        {
          goto LABEL_26;
        }

        v44 = (v34 + v34) + 1;
      }

      else
      {
        if (v34 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v44 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
      }

      v34 = (v44 >> 1);
LABEL_26:
      v35 = v36 + ~v29;
      *(*(a9 + 40) + 4 * v35) += v40;
      *(*(a9 + 64) + 4 * v35) += v42;
      *(*(a9 + 16) + 4 * v35) += v34;
      v31 += v40;
      v32 += v42;
      v33 += v34;
      if (++v29 == v30)
      {
        goto LABEL_47;
      }
    }
  }

  v33 = 0;
  v32 = 0;
  v31 = 0;
LABEL_47:
  v45 = *a4 - v31;
  v46 = a4[1] - v32;
  v47 = a4[v138] - v33;
  v48 = v28;
  v49 = sub_F6D024(a2) - *(v28 + 32);
  *(*(a9 + 40) + 4 * v49) += v45;
  *(*(a9 + 64) + 4 * v49) += v46;
  *(*(a9 + 16) + 4 * v49) += v47;
  v51 = *(a9 + 120);
  v50 = *(a9 + 128);
  if (v51 >= v50)
  {
    v54 = *(a9 + 112);
    v55 = v51 - v54;
    v56 = (v51 - v54) >> 2;
    v57 = v56 + 1;
    v53 = v137;
    if ((v56 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v58 = v50 - v54;
    if (v58 >> 1 > v57)
    {
      v57 = v58 >> 1;
    }

    if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v59 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = v57;
    }

    if (v59)
    {
      if (!(v59 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v60 = v56;
    v61 = (4 * v56);
    v62 = &v61[-v60];
    *v61 = *a4;
    v52 = v61 + 1;
    memcpy(v62, v54, v55);
    *(a9 + 112) = v62;
    *(a9 + 120) = v52;
    *(a9 + 128) = 0;
    if (v54)
    {
      operator delete(v54);
    }
  }

  else
  {
    *v51 = *a4;
    v52 = v51 + 4;
    v53 = v137;
  }

  *(a9 + 120) = v52;
  v64 = *(a9 + 144);
  v63 = *(a9 + 152);
  if (v64 >= v63)
  {
    v66 = *(a9 + 136);
    v67 = v64 - v66;
    v68 = (v64 - v66) >> 2;
    v69 = v68 + 1;
    if ((v68 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v70 = v63 - v66;
    if (v70 >> 1 > v69)
    {
      v69 = v70 >> 1;
    }

    if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v71 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v71 = v69;
    }

    if (v71)
    {
      if (!(v71 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v72 = v68;
    v73 = (4 * v68);
    v74 = &v73[-v72];
    *v73 = a4[1];
    v65 = v73 + 1;
    memcpy(v74, v66, v67);
    *(a9 + 136) = v74;
    *(a9 + 144) = v65;
    *(a9 + 152) = 0;
    if (v66)
    {
      operator delete(v66);
    }
  }

  else
  {
    *v64 = a4[1];
    v65 = v64 + 4;
  }

  *(a9 + 144) = v65;
  v76 = *(a9 + 96);
  v75 = *(a9 + 104);
  if (v76 >= v75)
  {
    v78 = *(a9 + 88);
    v79 = v76 - v78;
    v80 = (v76 - v78) >> 2;
    v81 = v80 + 1;
    if ((v80 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v82 = v75 - v78;
    if (v82 >> 1 > v81)
    {
      v81 = v82 >> 1;
    }

    if (v82 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v83 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = v81;
    }

    if (v83)
    {
      if (!(v83 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v84 = v80;
    v85 = (4 * v80);
    v86 = &v85[-v84];
    *v85 = a4[v138];
    v77 = v85 + 1;
    memcpy(v86, v78, v79);
    *(a9 + 88) = v86;
    *(a9 + 96) = v77;
    *(a9 + 104) = 0;
    if (v78)
    {
      operator delete(v78);
    }
  }

  else
  {
    *v76 = a4[v138];
    v77 = v76 + 4;
  }

  *(a9 + 96) = v77;
  v88 = *(a9 + 168);
  v87 = *(a9 + 176);
  if (v88 >= v87)
  {
    v90 = *(a9 + 160);
    v91 = v88 - v90;
    v92 = (v88 - v90) >> 2;
    v93 = v92 + 1;
    if ((v92 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v94 = v87 - v90;
    if (v94 >> 1 > v93)
    {
      v93 = v94 >> 1;
    }

    if (v94 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v95 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v95 = v93;
    }

    if (v95)
    {
      if (!(v95 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v96 = v92;
    v97 = (4 * v92);
    v98 = a4[3];
    v99 = &v97[-v96];
    *v97 = v98;
    v89 = v97 + 1;
    memcpy(v99, v90, v91);
    *(a9 + 160) = v99;
    *(a9 + 168) = v89;
    *(a9 + 176) = 0;
    if (v90)
    {
      operator delete(v90);
    }
  }

  else
  {
    *v88 = a4[3];
    v89 = v88 + 4;
  }

  *(a9 + 168) = v89;
  *(*(a9 + 40) + 4 * v136) += *v53;
  *(*(a9 + 64) + 4 * v136) += v53[1];
  *(*(a9 + 16) + 4 * v136) += v53[v138];
  if (!*(v48 + 24))
  {
    return;
  }

  v101 = *(a9 + 192);
  v100 = *(a9 + 200);
  if (v101 >= v100)
  {
    v103 = *(a9 + 184);
    v104 = v101 - v103;
    v105 = (v101 - v103) >> 2;
    v106 = v105 + 1;
    if ((v105 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v107 = v100 - v103;
    if (v107 >> 1 > v106)
    {
      v106 = v107 >> 1;
    }

    if (v107 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v108 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v108 = v106;
    }

    if (v108)
    {
      if (!(v108 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v109 = v105;
    v110 = (4 * v105);
    v111 = &v110[-v109];
    *v110 = v53[v138];
    v102 = v110 + 1;
    memcpy(v111, v103, v104);
    *(a9 + 184) = v111;
    *(a9 + 192) = v102;
    *(a9 + 200) = 0;
    if (v103)
    {
      operator delete(v103);
    }
  }

  else
  {
    *v101 = v53[v138];
    v102 = v101 + 4;
  }

  *(a9 + 192) = v102;
  v113 = *(a9 + 240);
  v112 = *(a9 + 248);
  if (v113 >= v112)
  {
    v115 = *(a9 + 232);
    v116 = v113 - v115;
    v117 = (v113 - v115) >> 2;
    v118 = v117 + 1;
    if ((v117 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v119 = v112 - v115;
    if (v119 >> 1 > v118)
    {
      v118 = v119 >> 1;
    }

    if (v119 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v120 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v120 = v118;
    }

    if (v120)
    {
      if (!(v120 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v121 = v117;
    v122 = (4 * v117);
    v123 = &v122[-v121];
    *v122 = v53[1];
    v114 = v122 + 1;
    memcpy(v123, v115, v116);
    *(a9 + 232) = v123;
    *(a9 + 240) = v114;
    *(a9 + 248) = 0;
    if (v115)
    {
      operator delete(v115);
    }
  }

  else
  {
    *v113 = v53[1];
    v114 = v113 + 4;
  }

  *(a9 + 240) = v114;
  v125 = *(a9 + 216);
  v124 = *(a9 + 224);
  if (v125 >= v124)
  {
    v127 = *(a9 + 208);
    v128 = v125 - v127;
    v129 = (v125 - v127) >> 2;
    v130 = v129 + 1;
    if (!((v129 + 1) >> 62))
    {
      v131 = v124 - v127;
      if (v131 >> 1 > v130)
      {
        v130 = v131 >> 1;
      }

      if (v131 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v132 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v132 = v130;
      }

      if (!v132)
      {
        v133 = (v125 - v127) >> 2;
        v134 = (4 * v129);
        v135 = (4 * v129 - 4 * v133);
        *v134 = *v53;
        v126 = v134 + 1;
        memcpy(v135, v127, v128);
        *(a9 + 208) = v135;
        *(a9 + 216) = v126;
        *(a9 + 224) = 0;
        if (v127)
        {
          operator delete(v127);
        }

        goto LABEL_139;
      }

      if (!(v132 >> 62))
      {
        operator new();
      }

LABEL_142:
      sub_1808();
    }

LABEL_141:
    sub_1794();
  }

  *v125 = *v53;
  v126 = v125 + 4;
LABEL_139:
  *(a9 + 216) = v126;
}

void sub_FA5C88(uint64_t a1, void *a2)
{
  v4 = sub_FB6734();
  sub_FACA64(v4 + 2112, a2);
  *(a1 + 2616) = sub_3AF6B4(a2);
  *(a1 + 2624) = sub_3B1AF0(a2);
  *(a1 + 2632) = sub_3B1090(a2);
  v10[23] = 19;
  strcpy(v10, "DrivingETAEvaluator");
  memset(v9, 0, sizeof(v9));
  v5 = sub_3AEC94(a2, v10, v9);
  v8 = 17;
  strcpy(__p, "start_with_u_turn");
  v6 = sub_5F5AC(v5, __p);
  sub_FA7B74((a1 + 2640), v6);
}

void sub_FA5FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void **a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
    sub_3DB5C4(v25 + 264);
    sub_FA9474(v25);
    _Unwind_Resume(a1);
  }

  sub_3DB5C4(v25 + 264);
  sub_FA9474(v25);
  _Unwind_Resume(a1);
}

void *sub_FA6060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v24[0] = *a3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  if (!a4)
  {
    result = sub_58BBC(a2);
    if (result[1] == *result)
    {
      return result;
    }

    v14 = *sub_58BBC(a2);
    v15 = *sub_4D2130(v14);
    if (v15 > 0x7FFFFFFE)
    {
      v15 = 0;
    }

    if (v15)
    {
      v16 = vcvtd_n_f64_s32(*(a1 + 2656), 1uLL);
      if (v16 < 0.0)
      {
        if (v16 <= -4.50359963e15)
        {
          goto LABEL_18;
        }

        v17 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
        goto LABEL_17;
      }

      if (v16 >= 4.50359963e15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0.0;
    }

    v17 = (v16 + v16) + 1;
LABEL_17:
    v16 = (v17 >> 1);
LABEL_18:
    v18 = __OFADD__(v16, v15);
    v20 = v16 + v15;
    v19 = (v20 < 0) ^ v18;
    v21 = v20 / 10;
    v22 = v20 % 10;
    if (v19)
    {
      v23 = -5;
    }

    else
    {
      v23 = 5;
    }

    v24[0] += v21 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
    sub_FA6784(a1, v14, v24);
  }

  v8 = sub_58BBC(a2);
  v9 = v8[1];
  if (v9 != *v8)
  {
    v10 = (v9 - 1096);
    sub_4D2130(v10);
    sub_FA742C(a1, v10, v24);
  }

  result = sub_FA327C(*a5, *(a5 + 8));
  v12 = vcvtd_n_f64_s32(*(*a5 + 8), 1uLL);
  if (v12 >= 0.0)
  {
    if (v12 < 4.50359963e15)
    {
      v13 = (v12 + v12) + 1;
      goto LABEL_24;
    }
  }

  else if (v12 > -4.50359963e15)
  {
    v13 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
LABEL_24:
    v12 = (v13 >> 1);
  }

  *(*a5 + 8) = v12;
  return result;
}

void sub_FA6700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3EE9A4(va);
  sub_419F14(a6);
  _Unwind_Resume(a1);
}

void sub_FA6784(uint64_t a1, void *a2, int *a3)
{
  v5 = sub_4D1F50(a2, 0);
  v6 = *a3;
  sub_320EC8(*(a1 + 2616), *(v5 + 32) | (*(v5 + 36) << 32), &v7);
  sub_386C(v8, v6);
}

void sub_FA7344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_25F00(&a17);
  if (__p)
  {
    operator delete(__p);
  }

  sub_3EE9A4(v24);
  sub_3874(&a24);
  _Unwind_Resume(a1);
}

void sub_FA742C(uint64_t a1, void *a2, int *a3)
{
  v5 = sub_4D1F50(a2, 0);
  v6 = *a3;
  sub_320EC8(*(a1 + 2616), *(v5 + 32) | (*(v5 + 36) << 32), &v7);
  sub_386C(v8, v6);
}

void sub_FA7A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3EE9A4(a14);
  sub_3874(&a24);
  _Unwind_Resume(a1);
}

double sub_FA7B34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  sub_FA6060(a1, a2, a3, a4, &v7);
  result = *&v7;
  *a5 = v7;
  *(a5 + 16) = v8;
  return result;
}

void sub_FA7B74(_DWORD *a1, void *a2)
{
  v3 = 7;
  strcpy(__p, "penalty");
  *a1 = sub_352470(a2, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FA7D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FA7D5C(uint64_t a1, uint64_t a2)
{
  v3[23] = 9;
  strcpy(v3, "EVRouting");
  memset(v2, 0, sizeof(v2));
  sub_3AEC94(a2, v3, v2);
  operator new();
}

void sub_FA7EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_FA7F1C(uint64_t a1, void *a2, uint64_t a3, int *a4, _DWORD *a5, unint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  *(a9 + 264) += *a5 + *a4;
  *(a9 + 268) += a5[1] + a4[1];
  *(a9 + 272) += a5[2] + a4[2];
  v136 = a7;
  *(a9 + 4) += a5[a7] + a4[a7];
  *(a9 + 284) += a5[a7];
  sub_4D1DC0(a2);
  sub_4D1DC0(a2);
  v14 = *(a3 + 24);
  sub_4D1DC0(a2);
  v15 = *(a3 + 32);
  v16 = v15 - 1;
  if (v14 > v15 - 1)
  {
    v16 = v14;
  }

  v134 = a6;
  if (v16 <= a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a9 + 40);
  v19 = (*(a9 + 48) - v18) >> 2;
  if (v19 <= v17)
  {
    v20 = v17 + 1;
    v139 = 0;
    if (v17 + 1 <= v19)
    {
      if (v17 + 1 < v19)
      {
        *(a9 + 48) = v18 + 4 * v20;
      }
    }

    else
    {
      sub_569AC(a9 + 40, v17 + 1 - v19, &v139);
    }

    v21 = *(a9 + 64);
    v22 = *(a9 + 72);
    v138 = 0;
    v23 = (v22 - v21) >> 2;
    if (v20 <= v23)
    {
      if (v20 < v23)
      {
        *(a9 + 72) = v21 + 4 * v20;
      }
    }

    else
    {
      sub_569AC(a9 + 64, v20 - v23, &v138);
    }

    v24 = *(a9 + 16);
    v25 = *(a9 + 24);
    v137 = 0;
    v26 = (v25 - v24) >> 2;
    if (v20 <= v26)
    {
      if (v20 < v26)
      {
        *(a9 + 24) = v24 + 4 * v20;
      }
    }

    else
    {
      sub_569AC(a9 + 16, v20 - v26, &v137);
    }

    v15 = *(a3 + 32);
  }

  v135 = a5;
  v27 = a3;
  v28 = *(a3 + 24);
  if (v28 <= v15)
  {
    v29 = v15;
  }

  else
  {
    v29 = v28;
  }

  if (v28 < v15)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      sub_4D1DC0(a2);
      v35 = sub_4D23F8(a2, v28, v34);
      v36 = *(v27 + 40);
      if (v36 <= 1)
      {
        v36 = 1;
      }

      v37 = v35 / v36;
      v38 = v37 * *a4;
      if (v38 >= 0.0)
      {
        if (v38 >= 4.50359963e15)
        {
          goto LABEL_35;
        }

        v39 = (v38 + v38) + 1;
      }

      else
      {
        if (v38 <= -4.50359963e15)
        {
          goto LABEL_35;
        }

        v39 = (v38 + v38) - 1 + (((v38 + v38) - 1) >> 63);
      }

      v38 = (v39 >> 1);
LABEL_35:
      v40 = v37 * a4[1];
      if (v40 >= 0.0)
      {
        if (v40 >= 4.50359963e15)
        {
          goto LABEL_41;
        }

        v41 = (v40 + v40) + 1;
      }

      else
      {
        if (v40 <= -4.50359963e15)
        {
          goto LABEL_41;
        }

        v41 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
      }

      v40 = (v41 >> 1);
LABEL_41:
      v33 = v37 * a4[v136];
      if (v33 >= 0.0)
      {
        if (v33 >= 4.50359963e15)
        {
          goto LABEL_26;
        }

        v42 = (v33 + v33) + 1;
      }

      else
      {
        if (v33 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v42 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
      }

      v33 = (v42 >> 1);
LABEL_26:
      *(*(a9 + 40) + 4 * v28) += v38;
      *(*(a9 + 64) + 4 * v28) += v40;
      *(*(a9 + 16) + 4 * v28) += v33;
      v30 += v38;
      v31 += v40;
      v32 += v33;
      if (v29 == ++v28)
      {
        goto LABEL_47;
      }
    }
  }

  v32 = 0;
  v31 = 0;
  v30 = 0;
LABEL_47:
  v43 = *a4 - v30;
  v44 = a4[1] - v31;
  v45 = a4[v136] - v32;
  sub_4D1DC0(a2);
  v46 = v27;
  v47 = 4 * *(v27 + 32) - 4;
  *(*(a9 + 40) + v47) += v43;
  *(*(a9 + 64) + v47) += v44;
  *(*(a9 + 16) + v47) += v45;
  v49 = *(a9 + 120);
  v48 = *(a9 + 128);
  if (v49 >= v48)
  {
    v52 = *(a9 + 112);
    v53 = v49 - v52;
    v54 = (v49 - v52) >> 2;
    v55 = v54 + 1;
    v51 = v135;
    if ((v54 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v56 = v48 - v52;
    if (v56 >> 1 > v55)
    {
      v55 = v56 >> 1;
    }

    if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v57 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v57 = v55;
    }

    if (v57)
    {
      if (!(v57 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v58 = v54;
    v59 = (4 * v54);
    v60 = &v59[-v58];
    *v59 = *a4;
    v50 = v59 + 1;
    memcpy(v60, v52, v53);
    *(a9 + 112) = v60;
    *(a9 + 120) = v50;
    *(a9 + 128) = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v49 = *a4;
    v50 = v49 + 4;
    v51 = v135;
  }

  *(a9 + 120) = v50;
  v62 = *(a9 + 144);
  v61 = *(a9 + 152);
  if (v62 >= v61)
  {
    v64 = *(a9 + 136);
    v65 = v62 - v64;
    v66 = (v62 - v64) >> 2;
    v67 = v66 + 1;
    if ((v66 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v68 = v61 - v64;
    if (v68 >> 1 > v67)
    {
      v67 = v68 >> 1;
    }

    if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v69 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v69 = v67;
    }

    if (v69)
    {
      if (!(v69 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v70 = v66;
    v71 = (4 * v66);
    v72 = &v71[-v70];
    *v71 = a4[1];
    v63 = v71 + 1;
    memcpy(v72, v64, v65);
    *(a9 + 136) = v72;
    *(a9 + 144) = v63;
    *(a9 + 152) = 0;
    if (v64)
    {
      operator delete(v64);
    }
  }

  else
  {
    *v62 = a4[1];
    v63 = v62 + 4;
  }

  *(a9 + 144) = v63;
  v74 = *(a9 + 96);
  v73 = *(a9 + 104);
  if (v74 >= v73)
  {
    v76 = *(a9 + 88);
    v77 = v74 - v76;
    v78 = (v74 - v76) >> 2;
    v79 = v78 + 1;
    if ((v78 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v80 = v73 - v76;
    if (v80 >> 1 > v79)
    {
      v79 = v80 >> 1;
    }

    if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v81 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v81 = v79;
    }

    if (v81)
    {
      if (!(v81 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v82 = v78;
    v83 = (4 * v78);
    v84 = &v83[-v82];
    *v83 = a4[v136];
    v75 = v83 + 1;
    memcpy(v84, v76, v77);
    *(a9 + 88) = v84;
    *(a9 + 96) = v75;
    *(a9 + 104) = 0;
    if (v76)
    {
      operator delete(v76);
    }
  }

  else
  {
    *v74 = a4[v136];
    v75 = v74 + 4;
  }

  *(a9 + 96) = v75;
  v86 = *(a9 + 168);
  v85 = *(a9 + 176);
  if (v86 >= v85)
  {
    v88 = *(a9 + 160);
    v89 = v86 - v88;
    v90 = (v86 - v88) >> 2;
    v91 = v90 + 1;
    if ((v90 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v92 = v85 - v88;
    if (v92 >> 1 > v91)
    {
      v91 = v92 >> 1;
    }

    if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v93 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v93 = v91;
    }

    if (v93)
    {
      if (!(v93 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v94 = v90;
    v95 = (4 * v90);
    v96 = a4[3];
    v97 = &v95[-v94];
    *v95 = v96;
    v87 = v95 + 1;
    memcpy(v97, v88, v89);
    *(a9 + 160) = v97;
    *(a9 + 168) = v87;
    *(a9 + 176) = 0;
    if (v88)
    {
      operator delete(v88);
    }
  }

  else
  {
    *v86 = a4[3];
    v87 = v86 + 4;
  }

  *(a9 + 168) = v87;
  *(*(a9 + 40) + 4 * v134) += *v51;
  *(*(a9 + 64) + 4 * v134) += v51[1];
  *(*(a9 + 16) + 4 * v134) += v51[v136];
  if (!*(v46 + 24))
  {
    return;
  }

  v99 = *(a9 + 192);
  v98 = *(a9 + 200);
  if (v99 >= v98)
  {
    v101 = *(a9 + 184);
    v102 = v99 - v101;
    v103 = (v99 - v101) >> 2;
    v104 = v103 + 1;
    if ((v103 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v105 = v98 - v101;
    if (v105 >> 1 > v104)
    {
      v104 = v105 >> 1;
    }

    if (v105 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v106 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v106 = v104;
    }

    if (v106)
    {
      if (!(v106 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v107 = v103;
    v108 = (4 * v103);
    v109 = &v108[-v107];
    *v108 = v51[v136];
    v100 = v108 + 1;
    memcpy(v109, v101, v102);
    *(a9 + 184) = v109;
    *(a9 + 192) = v100;
    *(a9 + 200) = 0;
    if (v101)
    {
      operator delete(v101);
    }
  }

  else
  {
    *v99 = v51[v136];
    v100 = v99 + 4;
  }

  *(a9 + 192) = v100;
  v111 = *(a9 + 240);
  v110 = *(a9 + 248);
  if (v111 >= v110)
  {
    v113 = *(a9 + 232);
    v114 = v111 - v113;
    v115 = (v111 - v113) >> 2;
    v116 = v115 + 1;
    if ((v115 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v117 = v110 - v113;
    if (v117 >> 1 > v116)
    {
      v116 = v117 >> 1;
    }

    if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v118 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v118 = v116;
    }

    if (v118)
    {
      if (!(v118 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v119 = v115;
    v120 = (4 * v115);
    v121 = &v120[-v119];
    *v120 = v51[1];
    v112 = v120 + 1;
    memcpy(v121, v113, v114);
    *(a9 + 232) = v121;
    *(a9 + 240) = v112;
    *(a9 + 248) = 0;
    if (v113)
    {
      operator delete(v113);
    }
  }

  else
  {
    *v111 = v51[1];
    v112 = v111 + 4;
  }

  *(a9 + 240) = v112;
  v123 = *(a9 + 216);
  v122 = *(a9 + 224);
  if (v123 >= v122)
  {
    v125 = *(a9 + 208);
    v126 = v123 - v125;
    v127 = (v123 - v125) >> 2;
    v128 = v127 + 1;
    if (!((v127 + 1) >> 62))
    {
      v129 = v122 - v125;
      if (v129 >> 1 > v128)
      {
        v128 = v129 >> 1;
      }

      if (v129 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v130 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v130 = v128;
      }

      if (!v130)
      {
        v131 = (v123 - v125) >> 2;
        v132 = (4 * v127);
        v133 = (4 * v127 - 4 * v131);
        *v132 = *v51;
        v124 = v132 + 1;
        memcpy(v133, v125, v126);
        *(a9 + 208) = v133;
        *(a9 + 216) = v124;
        *(a9 + 224) = 0;
        if (v125)
        {
          operator delete(v125);
        }

        goto LABEL_139;
      }

      if (!(v130 >> 62))
      {
        operator new();
      }

LABEL_142:
      sub_1808();
    }

LABEL_141:
    sub_1794();
  }

  *v123 = *v51;
  v124 = v123 + 4;
LABEL_139:
  *(a9 + 216) = v124;
}

unint64_t sub_FA8890@<X0>(unint64_t result@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(a4 + 24);
  if (!v8)
  {
    goto LABEL_53;
  }

  v12 = result;
  if (*a3 && (*(result + 2672) & 1) == 0)
  {
    v13 = *a3;
    v14 = a6[1];
    v42[0] = (*a6 - 8);
    v42[1] = v14;
    result = sub_FAEBD4(result + 2112, v13, a5, v42);
    if (result)
    {
      goto LABEL_53;
    }

    v8 = *(a4 + 24);
  }

  v15 = *(a4 + 32);
  if (v8 <= v15)
  {
    v16 = *(a4 + 32);
  }

  else
  {
    v16 = v8;
  }

  if (v8 >= v15)
  {
    goto LABEL_53;
  }

  while (1)
  {
    result = sub_4D1F50(a2, v8);
    v17 = *result;
    v18 = (*result - **result);
    v19 = *v18;
    if (v19 >= 0x9B)
    {
      if (v18[77])
      {
        v20 = *(v17 + v18[77]);
        if ((v20 & 0x2000000) != 0)
        {
          if ((v20 & 0x4000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_12;
        }
      }
    }

    v21 = *(result + 8);
    if (!v21)
    {
      break;
    }

    v22 = (v21 - *v21);
    if (*v22 < 0x11u)
    {
      break;
    }

    v23 = v22[8];
    if (!v23)
    {
      break;
    }

    v24 = *(v21 + v23);
    if (v19 >= 0x9B && (v24 & 4) == 0)
    {
      goto LABEL_26;
    }

    if ((v24 & 4) == 0)
    {
      goto LABEL_28;
    }

LABEL_12:
    if (v16 == ++v8)
    {
      goto LABEL_53;
    }
  }

  if (v19 < 0x9B)
  {
    goto LABEL_28;
  }

LABEL_26:
  v26 = v18[77];
  if (v26 && (*(v17 + v26 + 2) & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  if (v15 == v8)
  {
    goto LABEL_53;
  }

  result = sub_A0AF10(v8 - 1);
  v27 = result >= -1 ? -1 : result;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v28 = result;
  v29 = v27 - result;
  while (2)
  {
    result = sub_4D1F50(a2, v28);
    v31 = *result;
    v32 = (*result - **result);
    v33 = *v32;
    if (v33 >= 0x9B)
    {
      if (v32[77])
      {
        v34 = *(v31 + v32[77]);
        if ((v34 & 0x2000000) != 0)
        {
          if ((v34 & 0x4000000) == 0)
          {
            break;
          }

          goto LABEL_35;
        }
      }
    }

    v35 = *(result + 8);
    if (v35 && (v36 = (v35 - *v35), *v36 >= 0x11u) && (v37 = v36[8]) != 0)
    {
      v38 = *(v35 + v37);
      if (v33 < 0x9B || (v38 & 4) != 0)
      {
        if ((v38 & 4) == 0)
        {
          break;
        }

        goto LABEL_35;
      }
    }

    else if (v33 < 0x9B)
    {
      break;
    }

    v40 = v32[77];
    if (v40 && (*(v31 + v40 + 2) & 1) != 0)
    {
LABEL_35:
      --v28;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_53;
      }

      continue;
    }

    break;
  }

  if (*(a4 + 24) > v28)
  {
    sub_4D1F44(a2, v28, v8, v42);
    result = sub_FB6738(v12, v42, a5);
    *a7 = v28;
    *(a7 + 8) = result;
    *(a7 + 16) = v41;
    return result;
  }

LABEL_53:
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  return result;
}

void sub_FA8AE0(uint64_t a1, void *a2, uint64_t a3, int *a4, _DWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  *(a9 + 264) += *a5 + *a4;
  *(a9 + 268) += a5[1] + a4[1];
  *(a9 + 272) += a5[2] + a4[2];
  v139 = a7;
  *(a9 + 4) += a5[a7] + a4[a7];
  *(a9 + 284) += a5[a7];
  v13 = sub_4D1DC0(a2) + ~a6;
  v14 = sub_4D1DC0(a2) + ~*(a3 + 24);
  v15 = sub_4D1DC0(a2);
  v16 = *(a3 + 32);
  v17 = v15 - v16;
  if (v14 > v15 - v16)
  {
    v17 = v14;
  }

  v137 = v13;
  if (v17 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(a9 + 40);
  v20 = (*(a9 + 48) - v19) >> 2;
  if (v20 <= v18)
  {
    v21 = v18 + 1;
    v142 = 0;
    if (v18 + 1 <= v20)
    {
      if (v18 + 1 < v20)
      {
        *(a9 + 48) = v19 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 40, v18 + 1 - v20, &v142);
    }

    v22 = *(a9 + 64);
    v23 = *(a9 + 72);
    v141 = 0;
    v24 = (v23 - v22) >> 2;
    if (v21 <= v24)
    {
      if (v21 < v24)
      {
        *(a9 + 72) = v22 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 64, v21 - v24, &v141);
    }

    v25 = *(a9 + 16);
    v26 = *(a9 + 24);
    v140 = 0;
    v27 = (v26 - v25) >> 2;
    if (v21 <= v27)
    {
      if (v21 < v27)
      {
        *(a9 + 24) = v25 + 4 * v21;
      }
    }

    else
    {
      sub_569AC(a9 + 16, v21 - v27, &v140);
    }

    v16 = *(a3 + 32);
  }

  v138 = a5;
  v28 = a3;
  v29 = *(a3 + 24);
  if (v29 <= v16)
  {
    v30 = v16;
  }

  else
  {
    v30 = *(a3 + 24);
  }

  if (v29 < v16)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    while (1)
    {
      v36 = sub_4D1DC0(a2);
      v38 = sub_4D23F8(a2, v29, v37);
      v39 = *(v28 + 40);
      if (v39 <= 1)
      {
        v39 = 1;
      }

      v40 = v38 / v39;
      v41 = v40 * *a4;
      if (v41 >= 0.0)
      {
        if (v41 >= 4.50359963e15)
        {
          goto LABEL_35;
        }

        v42 = (v41 + v41) + 1;
      }

      else
      {
        if (v41 <= -4.50359963e15)
        {
          goto LABEL_35;
        }

        v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
      }

      v41 = (v42 >> 1);
LABEL_35:
      v43 = v40 * a4[1];
      if (v43 >= 0.0)
      {
        if (v43 >= 4.50359963e15)
        {
          goto LABEL_41;
        }

        v44 = (v43 + v43) + 1;
      }

      else
      {
        if (v43 <= -4.50359963e15)
        {
          goto LABEL_41;
        }

        v44 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
      }

      v43 = (v44 >> 1);
LABEL_41:
      v34 = v40 * a4[v139];
      if (v34 >= 0.0)
      {
        if (v34 >= 4.50359963e15)
        {
          goto LABEL_26;
        }

        v45 = (v34 + v34) + 1;
      }

      else
      {
        if (v34 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v45 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
      }

      v34 = (v45 >> 1);
LABEL_26:
      v35 = v36 + ~v29;
      *(*(a9 + 40) + 4 * v35) += v41;
      *(*(a9 + 64) + 4 * v35) += v43;
      *(*(a9 + 16) + 4 * v35) += v34;
      v31 += v41;
      v32 += v43;
      v33 += v34;
      if (++v29 == v30)
      {
        goto LABEL_47;
      }
    }
  }

  v33 = 0;
  v32 = 0;
  v31 = 0;
LABEL_47:
  v46 = *a4 - v31;
  v47 = a4[1] - v32;
  v48 = a4[v139] - v33;
  v49 = v28;
  v50 = sub_4D1DC0(a2) - *(v28 + 32);
  *(*(a9 + 40) + 4 * v50) += v46;
  *(*(a9 + 64) + 4 * v50) += v47;
  *(*(a9 + 16) + 4 * v50) += v48;
  v52 = *(a9 + 120);
  v51 = *(a9 + 128);
  if (v52 >= v51)
  {
    v55 = *(a9 + 112);
    v56 = v52 - v55;
    v57 = (v52 - v55) >> 2;
    v58 = v57 + 1;
    v54 = v138;
    if ((v57 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v59 = v51 - v55;
    if (v59 >> 1 > v58)
    {
      v58 = v59 >> 1;
    }

    if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v60 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v60 = v58;
    }

    if (v60)
    {
      if (!(v60 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v61 = v57;
    v62 = (4 * v57);
    v63 = &v62[-v61];
    *v62 = *a4;
    v53 = v62 + 1;
    memcpy(v63, v55, v56);
    *(a9 + 112) = v63;
    *(a9 + 120) = v53;
    *(a9 + 128) = 0;
    if (v55)
    {
      operator delete(v55);
    }
  }

  else
  {
    *v52 = *a4;
    v53 = v52 + 4;
    v54 = v138;
  }

  *(a9 + 120) = v53;
  v65 = *(a9 + 144);
  v64 = *(a9 + 152);
  if (v65 >= v64)
  {
    v67 = *(a9 + 136);
    v68 = v65 - v67;
    v69 = (v65 - v67) >> 2;
    v70 = v69 + 1;
    if ((v69 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v71 = v64 - v67;
    if (v71 >> 1 > v70)
    {
      v70 = v71 >> 1;
    }

    if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v72 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = v70;
    }

    if (v72)
    {
      if (!(v72 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v73 = v69;
    v74 = (4 * v69);
    v75 = &v74[-v73];
    *v74 = a4[1];
    v66 = v74 + 1;
    memcpy(v75, v67, v68);
    *(a9 + 136) = v75;
    *(a9 + 144) = v66;
    *(a9 + 152) = 0;
    if (v67)
    {
      operator delete(v67);
    }
  }

  else
  {
    *v65 = a4[1];
    v66 = v65 + 4;
  }

  *(a9 + 144) = v66;
  v77 = *(a9 + 96);
  v76 = *(a9 + 104);
  if (v77 >= v76)
  {
    v79 = *(a9 + 88);
    v80 = v77 - v79;
    v81 = (v77 - v79) >> 2;
    v82 = v81 + 1;
    if ((v81 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v83 = v76 - v79;
    if (v83 >> 1 > v82)
    {
      v82 = v83 >> 1;
    }

    if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v84 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = v82;
    }

    if (v84)
    {
      if (!(v84 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v85 = v81;
    v86 = (4 * v81);
    v87 = &v86[-v85];
    *v86 = a4[v139];
    v78 = v86 + 1;
    memcpy(v87, v79, v80);
    *(a9 + 88) = v87;
    *(a9 + 96) = v78;
    *(a9 + 104) = 0;
    if (v79)
    {
      operator delete(v79);
    }
  }

  else
  {
    *v77 = a4[v139];
    v78 = v77 + 4;
  }

  *(a9 + 96) = v78;
  v89 = *(a9 + 168);
  v88 = *(a9 + 176);
  if (v89 >= v88)
  {
    v91 = *(a9 + 160);
    v92 = v89 - v91;
    v93 = (v89 - v91) >> 2;
    v94 = v93 + 1;
    if ((v93 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v95 = v88 - v91;
    if (v95 >> 1 > v94)
    {
      v94 = v95 >> 1;
    }

    if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v96 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v94;
    }

    if (v96)
    {
      if (!(v96 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v97 = v93;
    v98 = (4 * v93);
    v99 = a4[3];
    v100 = &v98[-v97];
    *v98 = v99;
    v90 = v98 + 1;
    memcpy(v100, v91, v92);
    *(a9 + 160) = v100;
    *(a9 + 168) = v90;
    *(a9 + 176) = 0;
    if (v91)
    {
      operator delete(v91);
    }
  }

  else
  {
    *v89 = a4[3];
    v90 = v89 + 4;
  }

  *(a9 + 168) = v90;
  *(*(a9 + 40) + 4 * v137) += *v54;
  *(*(a9 + 64) + 4 * v137) += v54[1];
  *(*(a9 + 16) + 4 * v137) += v54[v139];
  if (!*(v49 + 24))
  {
    return;
  }

  v102 = *(a9 + 192);
  v101 = *(a9 + 200);
  if (v102 >= v101)
  {
    v104 = *(a9 + 184);
    v105 = v102 - v104;
    v106 = (v102 - v104) >> 2;
    v107 = v106 + 1;
    if ((v106 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v108 = v101 - v104;
    if (v108 >> 1 > v107)
    {
      v107 = v108 >> 1;
    }

    if (v108 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v109 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v109 = v107;
    }

    if (v109)
    {
      if (!(v109 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v110 = v106;
    v111 = (4 * v106);
    v112 = &v111[-v110];
    *v111 = v54[v139];
    v103 = v111 + 1;
    memcpy(v112, v104, v105);
    *(a9 + 184) = v112;
    *(a9 + 192) = v103;
    *(a9 + 200) = 0;
    if (v104)
    {
      operator delete(v104);
    }
  }

  else
  {
    *v102 = v54[v139];
    v103 = v102 + 4;
  }

  *(a9 + 192) = v103;
  v114 = *(a9 + 240);
  v113 = *(a9 + 248);
  if (v114 >= v113)
  {
    v116 = *(a9 + 232);
    v117 = v114 - v116;
    v118 = (v114 - v116) >> 2;
    v119 = v118 + 1;
    if ((v118 + 1) >> 62)
    {
      goto LABEL_141;
    }

    v120 = v113 - v116;
    if (v120 >> 1 > v119)
    {
      v119 = v120 >> 1;
    }

    if (v120 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v121 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v121 = v119;
    }

    if (v121)
    {
      if (!(v121 >> 62))
      {
        operator new();
      }

      goto LABEL_142;
    }

    v122 = v118;
    v123 = (4 * v118);
    v124 = &v123[-v122];
    *v123 = v54[1];
    v115 = v123 + 1;
    memcpy(v124, v116, v117);
    *(a9 + 232) = v124;
    *(a9 + 240) = v115;
    *(a9 + 248) = 0;
    if (v116)
    {
      operator delete(v116);
    }
  }

  else
  {
    *v114 = v54[1];
    v115 = v114 + 4;
  }

  *(a9 + 240) = v115;
  v126 = *(a9 + 216);
  v125 = *(a9 + 224);
  if (v126 >= v125)
  {
    v128 = *(a9 + 208);
    v129 = v126 - v128;
    v130 = (v126 - v128) >> 2;
    v131 = v130 + 1;
    if (!((v130 + 1) >> 62))
    {
      v132 = v125 - v128;
      if (v132 >> 1 > v131)
      {
        v131 = v132 >> 1;
      }

      if (v132 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v133 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v133 = v131;
      }

      if (!v133)
      {
        v134 = (v126 - v128) >> 2;
        v135 = (4 * v130);
        v136 = (4 * v130 - 4 * v134);
        *v135 = *v54;
        v127 = v135 + 1;
        memcpy(v136, v128, v129);
        *(a9 + 208) = v136;
        *(a9 + 216) = v127;
        *(a9 + 224) = 0;
        if (v128)
        {
          operator delete(v128);
        }

        goto LABEL_139;
      }

      if (!(v133 >> 62))
      {
        operator new();
      }

LABEL_142:
      sub_1808();
    }

LABEL_141:
    sub_1794();
  }

  *v126 = *v54;
  v127 = v126 + 4;
LABEL_139:
  *(a9 + 216) = v127;
}

void *sub_FA9474(void *a1)
{
  v2 = a1[261];
  if (v2)
  {
    a1[262] = v2;
    operator delete(v2);
  }

  v3 = a1[258];
  if (v3)
  {
    a1[259] = v3;
    operator delete(v3);
  }

  sub_FA94D0(a1 + 233);
  sub_3DB5C4(a1 + 170);
  sub_FA9554(a1 + 4);
  return a1;
}

void *sub_FA94D0(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    a1[11] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    a1[5] = v6;
    operator delete(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_FA9554(void *a1)
{
  sub_419924((a1 + 160));
  v2 = a1[157];
  if (v2)
  {
    a1[158] = v2;
    operator delete(v2);
  }

  v3 = a1[154];
  if (v3)
  {
    a1[155] = v3;
    operator delete(v3);
  }

  v4 = a1[151];
  if (v4)
  {
    a1[152] = v4;
    operator delete(v4);
  }

  v5 = a1[148];
  if (v5)
  {
    a1[149] = v5;
    operator delete(v5);
  }

  sub_4199F0(a1 + 4);
  return a1;
}

double sub_FA95C8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_2266620;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_FA95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_2266620;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (sub_44F320(a4))
  {
    v6 = nullsub_1(a4);
    sub_4566AC(v6);
    sub_448CA4();
  }

  return a1;
}

void sub_FA9CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FA9CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0xFA9CF0);
  }

  JUMPOUT(0xFA9CF4);
}

void sub_FA9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0xFA9CF0);
  }

  JUMPOUT(0xFA9CF4);
}

void sub_FA9D28(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 296);
  *a1 = *(a3 + 304);
  a1[1] = v6;
  a1[2] = a2;
  a1[3] = sub_3AF6B4(a2);
  a1[4] = sub_3B0F14(a2);
  a1[5] = a3;
  sub_763044(a1 + 6, a1[2]);
}

double sub_FA9DA0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (!sub_F63D58(a2))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v10 = sub_F63FF4(a2);
    if (v10)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v18 = 0x8000000080000000;
    v19 = -1;
    v20 = 0;
    if (*a3 == *(a3 + 8))
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = **a3;
    }

    v12 = sub_F63FEC(a2);
    v13 = sub_2D435C(*(a1 + 32), *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, v11);
    v14 = *(a1 + 40);
    v15 = sub_3B1D8C(*(a1 + 16));
    sub_445D54((v14 + 20), v14, v15);
    v18 = 0;
    v19 = v13;
    v20 = *(a1 + 184);
    v17 = sub_4566AC(a4);
    sub_4568CC(&v17);
    operator new();
  }

  return sub_4E3D18(a5);
}

void sub_FAAAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_FABDCC(&a56);
  if (v56)
  {
    operator delete(v56);
    if (!a18)
    {
LABEL_3:
      sub_4E3C94((v57 - 136));
      sub_FABF74((v57 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!a18)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  sub_4E3C94((v57 - 136));
  sub_FABF74((v57 - 112));
  _Unwind_Resume(a1);
}

void sub_FAACA8(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  sub_FAB0F8(a1, a2, a3, a6, a4, a5, &__p);
  v9 = __p;
  v10 = v19;
  v13 = sub_4566AC(a4);
  v14 = sub_4568CC(&v13);
  v15 = v11;
  v16 = sub_456984(v9, v10, &v14);
  v17 = v12;
  sub_4DAAF8(a7, a4, &__p, &v16);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_FAAD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_FAAD78@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a4@<X4>, int a5@<W5>, char a6@<W6>, int a7@<W7>, uint64_t a8@<X8>, int *a9, uint64_t a10)
{
  v35 = a7;
  if (sub_4566B4(a3))
  {
    sub_446E58(v34, a3, *(a1 + 8));
  }

  else
  {
    sub_446E8C(*(a1 + 8), v34);
  }

  sub_3F80(v34);
  sub_3F80(v34);
  if (a9[1] != 0x7FFFFFFF && a9[2] != 0x7FFFFFFF && a9[3] != 0x7FFFFFFF && *a9 != 0)
  {
    v21 = sub_73EEC(a2);
    v32 = sub_FAB96C(a1, v21, a4, a5, a6);
    v33 = v22;
    sub_4471A4(v34, &v35, v29);
    sub_446E58(v28, &v32, *(a1 + 8));
    if (sub_456784(v29, v28))
    {
      v24 = v28;
    }

    else
    {
      v24 = v29;
    }

    v30 = *v24;
    v31 = *(v24 + 2);
    v25 = sub_3F80(v34);
    v26 = sub_3F80(v34);
    v27 = sub_3F80(&v30);
    sub_453774(v25, v26, v27, a9, a10, *(a1 + 40));
  }

  sub_446E58(&v30, a3, *(a1 + 8));
  result = *(sub_73EEC(a2) + 104);
  *a8 = 0x7FFFFFFF;
  *(a8 + 24) = v31;
  *(a8 + 8) = v30;
  *(a8 + 32) = 0x8000000080000000;
  *(a8 + 88) = 0;
  *(a8 + 72) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 40) = 0u;
  *(a8 + 92) = 0x8000000080000000;
  *(a8 + 100) = 0x7FFFFFFF;
  *(a8 + 104) = result;
  *(a8 + 120) = 0;
  *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

unint64_t sub_FAB0F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, void **a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v9 = a3[64];
  v89 = *a5;
  v90 = *(a5 + 8);
  *v86 = 0x7FFFFFFF;
  *&v86[4] = 0x7FFFFFFF7FFFFFFFLL;
  if (sub_3F80(a6) == 0x7FFFFFFF)
  {
    v10 = sub_5AAC4(a6);
  }

  else
  {
    v10 = sub_3F80(a6);
  }

  v11 = v10;
  v85 = sub_4566AC(a6);
  sub_456544(&v83, v11, &v85);
  v87 = v83;
  v88 = v84;
  result = sub_F6D024(a2);
  if (result)
  {
    v13 = 0;
    v74 = result;
    v75 = a2;
    do
    {
      v14 = sub_F6D17C(a2, v13);
      v15 = sub_F6D254(a2, v13);
      if (v15 <= 10)
      {
        v16 = 10;
      }

      else
      {
        v16 = v15;
      }

      v17 = *(*(a3 + 2) + 4 * v13);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v82 = v17;
      v18 = *(*(a3 + 5) + 4 * v13);
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v80 = v18;
      if (v13)
      {
        v19 = 0;
      }

      else
      {
        v19 = *sub_73F1C(a2);
      }

      if (v13 == sub_F6D024(a2) - 1)
      {
        v21 = *sub_F69058(a2);
      }

      else
      {
        v21 = 1000000000;
      }

      v79 = v21;
      v22 = *v14;
      v23 = (*v14 - **v14);
      v24 = *v23;
      if (*(v14 + 38))
      {
        if (v24 >= 0x57)
        {
          if (v23[43])
          {
            v25 = (v22 + v23[43] + *(v22 + v23[43]));
            v26 = (v25 - *v25);
            v27 = 0.0;
            if (*v26 >= 7u)
            {
              v28 = v26[3];
              if (v28)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            v27 = 0.0;
            if (v24 >= 0x7D)
            {
              v28 = v23[62];
              v25 = *v14;
              if (v23[62])
              {
                goto LABEL_39;
              }
            }
          }

          goto LABEL_40;
        }
      }

      else if (v24 >= 0x57)
      {
        if (v23[43])
        {
          v25 = (v22 + v23[43] + *(v22 + v23[43]));
          v29 = (v25 - *v25);
          v27 = 0.0;
          if (*v29 < 5u)
          {
            goto LABEL_40;
          }

          v28 = v29[2];
          if (!v28)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v27 = 0.0;
          if (v24 < 0x7B)
          {
            goto LABEL_40;
          }

          v28 = v23[61];
          v25 = *v14;
          if (!v23[61])
          {
            goto LABEL_40;
          }
        }

LABEL_39:
        LOWORD(v27) = *(v25 + v28);
        v27 = *&v27 + *&v27;
LABEL_40:
        HIDWORD(v20) = 1089470432;
        v30 = v27 / 65535.0;
        goto LABEL_41;
      }

      v30 = 0.0;
      if (v24 < 9)
      {
        v31 = 0;
        v32 = 0.0 * 0.0;
        if (0.0 * 0.0 < 0.0)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }

LABEL_41:
      if (v23[4])
      {
        LODWORD(v20) = *(v22 + v23[4]);
        v31 = 1;
        v32 = v30 * v20;
        if (v32 < 0.0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v31 = 1;
        v32 = v30 * 0.0;
        if (v32 < 0.0)
        {
LABEL_43:
          if (v32 > -4.50359963e15)
          {
            v32 = (((v32 + v32) - 1) / 2);
          }

          v33 = 0.0;
          v34 = v24 >= 0x57;
          if (!*(v14 + 38))
          {
            goto LABEL_46;
          }

          goto LABEL_56;
        }
      }

LABEL_53:
      if (v32 < 4.50359963e15)
      {
        v32 = (((v32 + v32) + 1) >> 1);
      }

      v33 = 0.0;
      v34 = v24 >= 0x57;
      if (!*(v14 + 38))
      {
LABEL_46:
        if (v34)
        {
          if (v23[43])
          {
            v35 = (v22 + v23[43] + *(v22 + v23[43]));
            v36 = (v35 - *v35);
            if (*v36 < 7u)
            {
              goto LABEL_68;
            }

            v37 = v36[3];
            if (!v37)
            {
              goto LABEL_68;
            }
          }

          else
          {
            if (v24 < 0x7D)
            {
              goto LABEL_68;
            }

            v37 = v23[62];
            v35 = *v14;
            if (!v23[62])
            {
              goto LABEL_68;
            }
          }

          goto LABEL_67;
        }

        goto LABEL_68;
      }

LABEL_56:
      if (v34)
      {
        if (v23[43])
        {
          v35 = (v22 + v23[43] + *(v22 + v23[43]));
          v38 = (v35 - *v35);
          if (*v38 < 5u)
          {
            goto LABEL_68;
          }

          v37 = v38[2];
          if (!v37)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v24 < 0x7B)
          {
            goto LABEL_68;
          }

          v37 = v23[61];
          v35 = *v14;
          if (!v23[61])
          {
            goto LABEL_68;
          }
        }

LABEL_67:
        LOWORD(v33) = *(v35 + v37);
        v33 = *&v33 + *&v33;
      }

LABEL_68:
      v39 = 0.0;
      if (v31)
      {
        v40 = v23[4];
        if (v40)
        {
          LODWORD(v39) = *(v22 + v40);
          v39 = *&v39;
        }
      }

      v41 = v33 / 65535.0 * v39;
      if (v41 >= 0.0)
      {
        if (v41 < 4.50359963e15)
        {
          v41 = (((v41 + v41) + 1) >> 1);
        }
      }

      else if (v41 > -4.50359963e15)
      {
        v41 = (((v41 + v41) - 1) / 2);
      }

      if (a4 == 1 && v16 > *(a1 + 192))
      {
        v42 = v32;
        if (v32 <= v41)
        {
          v42 = v41;
        }

        v43 = v42 > *(a1 + 200);
      }

      else
      {
        v43 = 0;
      }

      if (sub_3F80(&v89) == 0x7FFFFFFF)
      {
        v44 = sub_5AAC4(&v89);
      }

      else
      {
        v44 = sub_3F80(&v89);
      }

      v45 = v44;
      v85 = sub_4566AC(&v89);
      sub_456544(&v83, v45, &v85);
      *v86 = v83;
      *&v86[8] = v84;
      v46 = *a3;
      if (v9 < 0)
      {
        v47 = -5;
      }

      else
      {
        v47 = 5;
      }

      if (v46 == 0x7FFFFFFF)
      {
        v48 = 0x7FFFFFFF;
      }

      else
      {
        v48 = v9 / 10 + v46 + (((103 * (v47 + v9 % 10)) >> 15) & 1) + ((103 * (v47 + v9 % 10)) >> 10);
      }

      v49 = sub_2D435C(*(a1 + 32), v14[4] & 0xFFFFFFFFFFFFFFLL, v48);
      v50 = sub_763590(a1 + 48, v14);
      v51 = v16 * 0.1;
      v52 = v51 / v82 * 3.6;
      v53 = v51 / v80 * 3.6;
      v54 = *(a1 + 24);
      v55 = sub_44F324(*(a1 + 40));
      if (v43)
      {
        v58 = sub_4503CC(v50, v54, v14, v82, v49, v9, v86, v52, v53, v19 / 1000000000.0, v79 / 1000000000.0, v57, v55, v56);
      }

      else
      {
        v58 = sub_450220(v50, v54, v14, v82, v49, v9, v86, v52, v53, (v79 - v19) / 1000000000.0, v57, v55, v56);
      }

      v83 = v58;
      v84 = v59;
      v85 = sub_4566AC(&v89);
      v60 = sub_4568F8(&v83, &v85);
      v62 = a7;
      v64 = a7[1];
      v63 = a7[2];
      if (v64 >= v63)
      {
        v66 = *a7;
        v67 = v64 - *a7;
        v68 = 0xAAAAAAAAAAAAAAABLL * (v67 >> 2) + 1;
        if (v68 > 0x1555555555555555)
        {
          sub_1794();
        }

        v69 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v66) >> 2);
        if (2 * v69 > v68)
        {
          v68 = 2 * v69;
        }

        if (v69 >= 0xAAAAAAAAAAAAAAALL)
        {
          v70 = 0x1555555555555555;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          if (v70 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v71 = 4 * (v67 >> 2);
        *v71 = v60;
        *(v71 + 8) = v61;
        v65 = v71 + 12;
        v72 = v71 - v67;
        memcpy((v71 - v67), v66, v67);
        *a7 = v72;
        a7[1] = v65;
        a7[2] = 0;
        v62 = a7;
        if (v66)
        {
          operator delete(v66);
        }
      }

      else
      {
        *v64 = v60;
        *(v64 + 2) = v61;
        v65 = (v64 + 12);
      }

      v62[1] = v65;
      result = sub_4566B4(&v89);
      if (result)
      {
        result = sub_456B70((v65 - 12), &v89);
        v89 = result;
        v90 = v73;
      }

      v9 += v82;
      ++v13;
      a2 = v75;
    }

    while (v74 != v13);
  }

  return result;
}

void sub_FAB900(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_FAB96C(uint64_t a1, _DWORD *a2, int *a3, int a4, char a5)
{
  v10 = sub_4566AC((a2 + 2));
  v24 = v10;
  if (sub_456A78(a3))
  {
    if (a2[8] == 0x7FFFFFFF)
    {
      if (SHIDWORD(v10) >= *(a1 + 164) + *a3)
      {
        v11 = *(a1 + 164) + *a3;
      }

      else
      {
        v11 = HIDWORD(v10);
      }

      v12 = sub_3F80(a2 + 2);
      if (v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

LABEL_30:
      sub_456544(&v25, v13, &v24);
      return v25;
    }

    v15 = sub_3F80((*(a1 + 40) + 320));
    v16 = a2[8];
    if (a4)
    {
      v17 = *(a1 + 160);
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 - v10 - v17;
    if (a5)
    {
      v19 = *a3;
      if (*a2 > *(a1 + 168) && v16 <= *(a1 + 160) + v15)
      {
        v20 = *(a1 + 176) * (v19 - v10);
        if (v20 >= 0.0)
        {
          if (v20 >= 4.50359963e15)
          {
            goto LABEL_23;
          }

          v21 = (v20 + v20) + 1;
        }

        else
        {
          if (v20 <= -4.50359963e15)
          {
            goto LABEL_23;
          }

          v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
        }

        v20 = (v21 >> 1);
LABEL_23:
        if (v18 >= v20)
        {
          v18 = v20;
        }
      }
    }

    else
    {
      v19 = *a3;
    }

    if (v18 <= *(a1 + 164))
    {
      v18 = *(a1 + 164);
    }

    v22 = v18 + v19;
    if (SHIDWORD(v10) >= v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = HIDWORD(v10);
    }

    goto LABEL_30;
  }

  v25 = sub_456560(&v24);
  v26 = v14;
  return v25;
}

uint64_t sub_FABB10(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 212))
  {
    v5 = sub_4470E4(a3);
    v6 = *(a1 + 212);
    v7 = v5 % v6;
    v8 = v6 + v5 - v5 % v6;
    if (v7)
    {
      v5 = v8;
    }

    sub_447004(v5, *(a1 + 8), v13);
    if (sub_456784(a3, v13))
    {
      v9 = v13;
    }

    else
    {
      v9 = a3;
    }

    v14 = *v9;
    v15 = *(v9 + 2);
    v10 = *a1;
    v11 = sub_3F80(&v14);
    sub_A2464(v10, v11);
    sub_A86E4(*a1);
  }

  return a2;
}

uint64_t sub_FABC0C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 48) = *(a2 + 48);
  v9 = 56 * v2 + 56;
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v6 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 8) = *(v13 + 2);
      *v14 = v15;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = *(v13 + 1);
      *(v14 + 32) = v13[4];
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = 0;
      v16 = v13[5];
      *(v14 + 48) = *(v13 + 12);
      *(v14 + 40) = v16;
      v13 += 7;
      v14 += 56;
    }

    while (v13 != v11);
    do
    {
      v17 = v10[2];
      if (v17)
      {
        v10[3] = v17;
        operator delete(v17);
      }

      v10 += 7;
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

void *sub_FABDCC(void *a1)
{
  v2 = 204;
  do
  {
    v3 = &a1[v2];
    v2 -= 6;
    v4 = *(v3 - 3);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v3 - 5;
      do
      {
        if ((*(a1[v2] + v6) & 0x80000000) == 0)
        {
          v8 = *v7 + v5;
          v9 = *(v8 + 16);
          if (v9)
          {
            *(v8 + 24) = v9;
            operator delete(v9);
            v4 = *(v3 - 3);
          }
        }

        ++v6;
        v5 += 40;
      }

      while (v6 != v4);
      operator delete(a1[v2]);
      a1[v2] = &unk_2290750;
      *(v3 - 1) = 0;
      *(v3 - 4) = 0;
      *(v3 - 3) = 0;
      *v7 = 0;
    }
  }

  while (v2 != 108);
  sub_360988((a1 + 12));
  v10 = a1[9];
  if (v10)
  {
    a1[10] = v10;
    operator delete(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = a1[6];
    v13 = a1[5];
    if (v12 != v11)
    {
      do
      {
        v15 = *(v12 - 9);
        if (v15)
        {
          v16 = *(v12 - 8);
          v17 = *(v12 - 9);
          if (v16 != v15)
          {
            do
            {
              if (*(v16 - 1) < 0)
              {
                operator delete(*(v16 - 3));
              }

              v16 -= 6;
            }

            while (v16 != v15);
            v17 = *(v12 - 9);
          }

          *(v12 - 8) = v15;
          operator delete(v17);
        }

        v18 = v12 - 12;
        v19 = *(v12 - 12);
        if (v19)
        {
          v20 = *(v12 - 11);
          v14 = *(v12 - 12);
          if (v20 != v19)
          {
            do
            {
              v21 = *(v20 - 3);
              if (v21)
              {
                *(v20 - 2) = v21;
                operator delete(v21);
              }

              v20 -= 48;
            }

            while (v20 != v19);
            v14 = *v18;
          }

          *(v12 - 11) = v19;
          operator delete(v14);
        }

        v12 -= 12;
      }

      while (v18 != v11);
      v13 = a1[5];
    }

    a1[6] = v11;
    operator delete(v13);
  }

  return a1;
}

void **sub_FABF74(void **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FABFE8()
{
  byte_27C01BF = 3;
  LODWORD(qword_27C01A8) = 5136193;
  byte_27C01D7 = 3;
  LODWORD(qword_27C01C0) = 5136194;
  byte_27C01EF = 3;
  LODWORD(qword_27C01D8) = 5136195;
  byte_27C0207 = 15;
  strcpy(&qword_27C01F0, "vehicle_mass_kg");
  byte_27C021F = 21;
  strcpy(&xmmword_27C0208, "vehicle_cargo_mass_kg");
  byte_27C0237 = 19;
  strcpy(&qword_27C0220, "vehicle_aux_power_w");
  byte_27C024F = 15;
  strcpy(&qword_27C0238, "dcdc_efficiency");
  strcpy(&qword_27C0250, "drive_train_efficiency");
  HIBYTE(word_27C0266) = 22;
  operator new();
}

void sub_FAC1C4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0266) < 0)
  {
    sub_21E5E08();
  }

  sub_21E5E14();
  _Unwind_Resume(a1);
}

void sub_FAC1E4(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0x8000000080000000;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 24) = 0xBFF0000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 72) = _Q1;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 136) = xmmword_22AEA70;
  *(a1 + 152) = 0x7FFFFFFF;
  *(a1 + 160) = xmmword_22AEA50;
  *(a1 + 176) = 0x8000000080000000;
  *(a1 + 184) = xmmword_22AEA70;
  *(a1 + 200) = 0x7FFFFFFF;
  *(a1 + 208) = xmmword_22AEA50;
  *(a1 + 224) = 0x8000000080000000;
  memset_pattern16((a1 + 232), &unk_22AEA80, 0x48uLL);
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = sub_3AF144(a2);
  *(a1 + 336) = sub_3B1AF0(a2);
  *(a1 + 344) = sub_3B1348(a2);
  *(a1 + 352) = sub_3AF6B4(a2);
  *(a1 + 360) = sub_3B1090(a2);
  sub_3318(a1 + 368);
  *(a1 + 416) = -1;
  v12[23] = 19;
  strcpy(v12, "TrafficDayOverrides");
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v10 = sub_3AEC94(a2, v12, __p);
  v11 = *(a1 + 352);
  *(a1 + 424) = *(a1 + 328);
  *(a1 + 440) = v11;
  *(a1 + 448) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = -1;
  *(a1 + 488) = 0;
  *(a1 + 496) = -1;
  sub_FAFD90(a1 + 424, v10);
}

void sub_FAC568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_5C010(&a13);
  sub_FB22A4(v29 + 96);
  sub_3874(v27 + 368);
  sub_FB232C(v28);
  _Unwind_Resume(a1);
}

void sub_FAC618(BOOL *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "use_hsp");
  *a1 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 9;
  strcpy(__p, "live_feed");
  v4 = sub_5F5AC(a2, __p);
  sub_FACA68(a1 + 4, v4);
}

void sub_FAC810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FAC840(uint64_t a1, void *a2)
{
  v14 = 15;
  strcpy(__p, "fallback_speeds");
  v4 = sub_5F680(a2, __p);
  v12 = a1;
  if (v14 < 0)
  {
    v7 = v4;
    operator delete(*__p);
    v5 = *v7;
    v6 = v7[1];
    if (*v7 == v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *v4;
    v6 = v4[1];
    if (*v4 == v6)
    {
      goto LABEL_12;
    }
  }

  do
  {
    if (*(v5 + 8) != 5)
    {
      sub_5AF20();
    }

    v8 = *v5;
    v14 = 3;
    strcpy(__p, "frc");
    v9 = sub_352E94(v8, __p);
    if (v14 < 0)
    {
      operator delete(*__p);
    }

    v14 = 5;
    strcpy(__p, "speed");
    v10 = sub_63D34(v8, __p);
    if (v14 < 0)
    {
      v11 = v10;
      operator delete(*__p);
      v10 = v11;
    }

    *(v12 + 232 + 8 * v9) = v10;
    v5 += 16;
  }

  while (v5 != v6);
LABEL_12:
  v14 = 13;
  strcpy(__p, "walking_speed");
  *(v12 + 304) = sub_63D34(a2, __p);
  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v14 = 20;
  strcpy(__p, "ferry_fallback_speed");
  *(v12 + 312) = sub_63D34(a2, __p);
  if (v14 < 0)
  {
    operator delete(*__p);
  }
}

void sub_FACA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FACA68(BOOL *a1, void *a2)
{
  v3[7] = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if ((v3[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FACC08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FACE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FACF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FAD764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_5BF68(&a12);
  sub_5BF68(&a15);
  _Unwind_Resume(a1);
}

void sub_FAD814(uint64_t a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 11;
  strcpy(__p, "onset_flank");
  v4 = sub_5F5AC(a2, __p);
  sub_FAD950((a1 + 8), v4);
}

void sub_FAD92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FAD950(double *a1, void *a2)
{
  v5 = 9;
  strcpy(__p, "tolerance");
  *a1 = sub_63D34(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  strcpy(__p, "acceleration_threshold");
  v5 = 22;
  a1[1] = sub_63D34(a2, __p) * 60.0;
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_FADB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_FADB70(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  result = -1.0;
  if (*(a1 + 4) == 1)
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      v8 = (v7 - v6) >> 3;
      if (*(a1 + 32) < v8)
      {
        v8 = *(a1 + 32);
      }

      v7 = v6 + 8 * v8;
    }

    v17 = v3;
    v18 = v4;
    v9 = *(a1 + 328);
    if (*(a1 + 17) == 1)
    {
      v15 = v6;
      v16 = v7;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    result = sub_2BC6DC(v9, a2, &v15);
    v14 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if ((!v14 || result <= 0.0) && *(a1 + 5) == 1)
    {
      return sub_FADC50(a1, a2);
    }
  }

  return result;
}

double sub_FADC50(uint64_t a1, unint64_t a2)
{
  v2 = -1.0;
  if (*(a1 + 4) == 1)
  {
    __p = 0;
    v27 = 0;
    v28 = 0;
    sub_351010(*(a1 + 336), a2, &__p);
    if (v27 != __p)
    {
      v4 = 0;
      v5 = 0;
      v6 = (v27 - __p) >> 3;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        v10 = sub_3E37C0(*(a1 + 336), *(__p + v4));
        v11 = *(a1 + 328);
        v24 = 0;
        v25 = 0;
        v12 = sub_2BC6DC(v11, v10, &v24);
        v13 = v12;
        v14 = (*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if ((*&v12 - 1) < 0xFFFFFFFFFFFFFLL)
        {
          v14 = 1;
        }

        v16 = ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v12 >= 0.0 || v14;
        if (v12 > 0.0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        if ((v17 & 1) == 0)
        {
          v18 = sub_3E37C0(*(a1 + 336), *(__p + v4));
          v24 = 0;
          v25 = 0;
          v13 = sub_FAE60C(a1, v18, (a1 + 368), &v24);
        }

        v19 = sub_2B51D8(*(a1 + 352), *(__p + v4) | (*(__p + v4 + 4) << 32));
        v20 = (v19 - *v19);
        v21 = 0.0;
        if (*v20 >= 9u)
        {
          v22 = v20[4];
          if (v22)
          {
            LODWORD(v21) = *(v19 + v22);
            v21 = *&v21;
          }
        }

        v5 |= v17;
        v9 = v21 / 100.0;
        v7 = v7 + v9 / (v13 / 3.6);
        v8 = v8 + v9;
        v4 += 8;
        --v6;
      }

      while (v6);
      if (((v7 != 0.0) & v5) != 0)
      {
        v2 = v8 / v7 * 3.6;
      }
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  return v2;
}

void sub_FADE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_FADE5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
    v6 = (v5 - *v5);
    v7 = *v6;
    if ((a2 & 0x4000000000000000) != 0)
    {
      if (v7 < 0x9B)
      {
        return *(a1 + 304);
      }

      v14 = v6[77];
      if (!v14 || (*(v5 + v14) & 1) == 0)
      {
        return *(a1 + 304);
      }
    }

    else
    {
      if (v7 < 0x9B)
      {
        return *(a1 + 304);
      }

      v8 = v6[77];
      if (!v8 || (*(v5 + v8) & 2) == 0)
      {
        return *(a1 + 304);
      }
    }

    v15 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
    v16 = (v15 - *v15);
    if (*v16 >= 0x2Fu)
    {
      v17 = v16[23];
      if (v17)
      {
        v18 = *(v15 + v17);
        v19 = v18 > 0x2D;
        v20 = (1 << v18) & 0x208040000000;
        if (!v19 && v20 != 0)
        {
          return *(a1 + 320);
        }
      }
    }

    v28 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
    v29 = (v28 - *v28);
    if (*v29 < 0x9Bu || (v30 = v29[77]) == 0 || (*(v28 + v30) & 8) == 0)
    {
      result = sub_35F94C(*(a1 + 344), a2);
      v33 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (!v33 || result <= 0.0)
      {
        v34 = a1 + 232;
        v35 = sub_2B51D8(*(a1 + 352), a2 & 0xFFFFFFFFFFFFLL);
        v36 = (v35 - *v35);
        if (*v36 < 0x1Bu)
        {
          return *v34;
        }

        else
        {
          v37 = v36[13];
          if (v37)
          {
            v37 = *(v35 + v37);
          }

          return *(v34 + 8 * v37);
        }
      }

      return result;
    }

    return *(a1 + 312);
  }

  v4 = *(a1 + 336);
  v40 = a2;
  sub_363ADC(v4 + 3896, &v40, v38);
  if (v38[0])
  {
    if (*(v39 + 18))
    {
      return *(a1 + 320);
    }
  }

  else
  {
    sub_363C44(v4, v40);
    if ((v9 & 0x10000) != 0)
    {
      return *(a1 + 320);
    }
  }

  result = sub_35F94C(*(a1 + 344), a2);
  v13 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v13 || result <= 0.0)
  {
    v22 = *(a1 + 336);
    v40 = a2;
    sub_363ADC(v22 + 3896, &v40, v38);
    if (v38[0])
    {
      if (*(v39 + 19))
      {
        return *(a1 + 312);
      }

LABEL_39:
      v24 = sub_FA4F1C(*(a1 + 336), a2);
      v25 = sub_2B51D8(*(a1 + 352), v24 & 0xFFFFFFFFFFFFLL);
      v26 = (v25 - *v25);
      if (*v26 < 0x1Bu)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26[13];
        if (v27)
        {
          v27 = *(v25 + v27);
        }
      }

      return *(a1 + 232 + 8 * v27);
    }

    sub_363C44(v22, v40);
    if ((v23 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    return *(a1 + 312);
  }

  return result;
}

unint64_t sub_FAE19C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 120) > sub_3E8EF0(*(a1 + 344), a2) || (v4 = sub_2BC7A8(*(a1 + 328), a2), *(a1 + 122) <= v4))
  {
    sub_FAE3C0(a1, a2);
    v7 = v6;
    return sub_FAE238(&v7, (a1 + 48));
  }

  else
  {
    v7 = v4;
    return sub_FAE238(&v7, (a1 + 96));
  }
}

unint64_t sub_FAE238(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return *(v3 + 1);
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 1);
  }

  v18 = *(v3 - 2);
  if (v18 == *v3)
  {
    return *(v3 + 1);
  }

  v20 = (v2 - v18) / (*v3 - v18);
  v21 = *(v3 + 2);
  v22 = *(v3 + 3);
  v24 = *(v3 - 2);
  v23 = *(v3 - 1);
  v25 = v21 - v24;
  v26 = v22 - v23;
  v27 = v20 * v25;
  if (v27 >= 0.0)
  {
    if (v27 >= 4.50359963e15)
    {
      goto LABEL_20;
    }

    v28 = (v27 + v27) + 1;
  }

  else
  {
    if (v27 <= -4.50359963e15)
    {
      goto LABEL_20;
    }

    v28 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
  }

  v27 = (v28 >> 1);
LABEL_20:
  v29 = v20 * v26;
  if (v29 >= 0.0)
  {
    if (v29 < 4.50359963e15)
    {
      v30 = (v29 + v29) + 1;
      goto LABEL_25;
    }
  }

  else if (v29 > -4.50359963e15)
  {
    v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
LABEL_25:
    v29 = (v30 >> 1);
  }

  return (v24 + v27) | ((v23 + v29) << 32);
}

void sub_FAE3C0(uint64_t a1, unint64_t a2)
{
  if (sub_38EC((a1 + 368)) && (a2 & 0x8000000000000000) == 0)
  {
    sub_FADE5C(a1, a2);
    if (*(a1 + 40) == 1)
    {
      v4 = *(a1 + 336);
      v16[0] = a2;
      sub_363ADC(v4 + 3896, v16, v15);
      if (v15[0])
      {
        LOBYTE(v5) = *(v15[3] + 17);
      }

      else
      {
        sub_363C44(v4, v16[0]);
        v5 = (v6 >> 8) & 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    v7 = *(a1 + 360);
    LOBYTE(v16[0]) = sub_FAE7FC(a1 + 424, a2, a1 + 368);
    v8 = sub_41E8(a1 + 368);
    v15[0] = 0;
    v15[1] = 0;
    sub_FAE9C8(v7, a2, v16, v8, v5 & 1, v15);
    if (*(a1 + 4) == 1)
    {
      v9 = *(a1 + 328);
      if (*(a1 + 17))
      {
        v10 = v15;
      }

      else
      {
        v10 = v16;
      }

      *v10 = 0;
      v10[1] = 0;
      v11 = sub_2BC6DC(v9, a2, v10);
      v14 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if ((!v14 || v11 <= 0.0) && *(a1 + 5) == 1)
      {
        sub_FADC50(a1, a2);
      }
    }
  }
}

double sub_FAE60C(uint64_t a1, unint64_t a2, _DWORD *a3, uint64_t **a4)
{
  if ((a2 & 0x8000000000000000) != 0 || !sub_38EC(a3) || (*a1 & 1) == 0)
  {
    return sub_FADE5C(a1, a2);
  }

  v8 = *(a1 + 336);
  v28 = a2;
  sub_363ADC(v8 + 3896, &v28, &v25);
  if (v25)
  {
    if (*(v27 + 18))
    {
      return *(a1 + 320);
    }
  }

  else
  {
    sub_363C44(v8, v28);
    if ((v10 & 0x10000) != 0)
    {
      return *(a1 + 320);
    }
  }

  v11 = sub_FAE7FC(a1 + 424, a2, a3);
  v24 = v11;
  if (*(a1 + 40) != 1)
  {
    LOBYTE(v12) = 0;
    goto LABEL_16;
  }

  if (*(a1 + 41) == 1)
  {
    LOBYTE(v12) = 0;
    if (!v11 || v11 == 6)
    {
LABEL_16:
      v14 = *a4;
      v15 = a4[1];
      if (*a4 == v15)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  v13 = *(a1 + 336);
  v28 = a2;
  sub_363ADC(v13 + 3896, &v28, &v25);
  if (v25)
  {
    LOBYTE(v12) = *(v27 + 17);
    v14 = *a4;
    v15 = a4[1];
    if (*a4 == v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_363C44(v13, v28);
    v12 = (v23 >> 8) & 1;
    v14 = *a4;
    v15 = a4[1];
    if (*a4 == v15)
    {
      goto LABEL_20;
    }
  }

LABEL_17:
  v16 = v15 - v14;
  if (*(a1 + 32) < v16)
  {
    v16 = *(a1 + 32);
  }

  v15 = &v14[v16];
LABEL_20:
  v17 = *(a1 + 16);
  v18 = *(a1 + 360);
  v19 = sub_41E8(a3);
  if (v17 == 1)
  {
    v25 = *a4;
    v26 = v15;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  result = sub_FAE9C8(v18, a2, &v24, v19, v12 & 1, &v25);
  v22 = *&result > -1 && ((*&result & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&result - 1) < 0xFFFFFFFFFFFFFLL || (*&result & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v22 || result <= 0.0)
  {
    return sub_FADE5C(a1, a2);
  }

  return result;
}

uint64_t sub_FAE7FC(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_FA4F1C(*(a1 + 8), a2);
  v6 = v5;
  sub_FB246C(a1, v5 & 0xFFFFFFFFFFFFLL);
  if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == 1)
  {
    v8 = *(a1 + 56);
    if (v8 != 0xFFFF)
    {
      v9 = sub_2BF8F4(*a1, v6, v8);
      if (sub_39075C(v9))
      {
        return v9[6];
      }
    }
  }

  if (*(a1 + 64) < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4))
  {
    v10 = sub_40D0(a3);
    v11 = *(a1 + 72);
    if (v11 != -1 && v10 == v11)
    {
      return *(a1 + 76);
    }

    v12 = *(a1 + 32) + 48 * *(a1 + 64);
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    v15 = (v14 - v13) >> 3;
    if (v15 >= 1)
    {
      if (v14 - v13 != 8)
      {
        do
        {
          v16 = (2 * v15) & 0xFFFFFFFFFFFFFFF8;
          _X14 = v13 + v16;
          __asm { PRFM            #0, [X14] }

          v23 = &v13[2 * (v15 >> 1)];
          _X13 = v23 + v16;
          __asm { PRFM            #0, [X13] }

          if (*v23 >= v10)
          {
            v26 = 0;
          }

          else
          {
            v26 = v15 >> 1;
          }

          v13 += 2 * v26;
          v15 -= v15 >> 1;
        }

        while (v15 > 1);
      }

      v13 += 2 * (*v13 < v10);
    }

    if (v13 != v14 && v10 == *v13)
    {
      v27 = *v13;
      *(a1 + 76) = *(v13 + 4);
      *(a1 + 72) = v27;
      if (v27 != -1)
      {
        return *(a1 + 76);
      }
    }
  }

  return sub_40A8(a3);
}

double sub_FAE9C8(uint64_t a1, unint64_t a2, unsigned __int8 *a3, int a4, int a5, uint64_t **a6)
{
  v6 = -1.0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return v6;
  }

  if (!a2)
  {
    return v6;
  }

  v13 = sub_2B3284(a1, a2, 1);
  if (!v13)
  {
    return v6;
  }

  v14 = &v13[-*v13];
  v15 = *v14;
  if ((a2 & 0x4000000000000000) != 0)
  {
    if (v15 < 5)
    {
      return v6;
    }

    v16 = *(v14 + 2);
    if (!v16)
    {
      return v6;
    }
  }

  else
  {
    if (v15 < 7)
    {
      return v6;
    }

    v16 = *(v14 + 3);
    if (!v16)
    {
      return v6;
    }
  }

  v17 = &v13[v16 + *&v13[v16]];
  if (*v17 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return v6;
  }

  v18 = sub_3EC480(a1, (&v17[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v17[(HIDWORD(a2) & 0x3FFFFFFF) + 1]), a5, a6);
  if (!v18)
  {
    return v6;
  }

  v21 = *v18;
  if (!v21)
  {
    return v6;
  }

  if (v21 == 1)
  {
    if ((*(a1 + 3874) & 1) == 0)
    {
      LOWORD(v19) = *(v18 + 3);
      return v19 / 100.0;
    }

    return v6;
  }

  v22 = (1440 * (*a3 + 6 - 7 * ((9363 * (*a3 + 6)) >> 16))) + a4;
  v23 = (v18 + 4);
  v24 = (v18 + 4);
  v25 = *v18;
  do
  {
    v26 = (v24 + ((2 * v25) & 0x3FFFFFFFCLL));
    v28 = *v26;
    v27 = v26 + 2;
    v29 = v25 >> 1;
    v25 += ~(v25 >> 1);
    if (v22 < v28)
    {
      v25 = v29;
    }

    else
    {
      v24 = v27;
    }
  }

  while (v25);
  v30 = &v23[2 * v21];
  if (v24 == v30)
  {
    v31 = v24 - 2;
  }

  else
  {
    if (v24 != v23)
    {
      v30 = v24;
    }

    v31 = v30 - 2;
    if (v24 != v23)
    {
      goto LABEL_28;
    }
  }

  v24 = (v18 + 4);
LABEL_28:
  v32 = *v31;
  if (v22 < v32)
  {
    v32 -= 10080;
  }

  v33 = *v24;
  if (v22 > v33)
  {
    v33 += 10080;
  }

  LOWORD(v19) = v31[1];
  LOWORD(v20) = v24[1];
  return v19 / 100.0 + (v20 / 100.0 - v19 / 100.0) * (v22 - v32) / (v33 - v32);
}

char *sub_FAEBD4(uint64_t a1, unint64_t a2, _DWORD *a3, unint64_t *a4)
{
  result = sub_38EC(a3);
  if (result)
  {
    result = 0;
    if (*a1 == 1 && (a2 & 0x8000000000000000) == 0)
    {
      v8 = *(a1 + 336);
      v15 = a2;
      sub_363ADC(v8 + 3896, &v15, v14);
      if (v14[0])
      {
        if (*(v14[3] + 18))
        {
          return 0;
        }
      }

      else
      {
        sub_363C44(v8, v15);
        if ((v9 & 0x10000) != 0)
        {
          return 0;
        }
      }

      v10 = *a4;
      v11 = a4[1];
      v14[0] = v11;
      if (v10 != v11)
      {
        v12 = (v11 - v10) >> 3;
        if (*(a1 + 32) < v12)
        {
          v12 = *(a1 + 32);
        }

        v14[0] = (v10 + 8 * v12);
      }

      v13 = *(a1 + 360);
      v15 = v10;
      return sub_FAECDC(v13, a2, &v15, v14);
    }
  }

  return result;
}

char *sub_FAECDC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  result = 0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = sub_2B3284(a1, a2, 1);
  if (!result)
  {
    return result;
  }

  v9 = &result[-*result];
  v10 = *v9;
  if ((a2 & 0x4000000000000000) != 0)
  {
    if (v10 < 5)
    {
      return 0;
    }

    v11 = *(v9 + 2);
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (v10 < 7)
    {
      return 0;
    }

    v11 = *(v9 + 3);
    if (!v11)
    {
      return 0;
    }
  }

  v12 = v11;
  v13 = &result[v11];
  v14 = *v13;
  v15 = &v13[v14];
  if (*v15 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return 0;
  }

  v16 = HIDWORD(a2) & 0x3FFFFFFF;
  v17 = v15[v16 + 1];
  v18 = (&v15[v16 + 1] + v17);
  v19 = (v18 - *v18);
  if (*v19 < 0xDu)
  {
    return 0;
  }

  v20 = v19[6];
  if (!v19[6])
  {
    return 0;
  }

  v21 = (v18 + v20);
  v22 = *v21;
  v23 = (v21 + v22);
  v24 = v23 + 1;
  v25 = *v23;
  v26 = &v23[v25];
  v27 = (v26 + 1);
  if (v25)
  {
    v28 = *a4;
    if (*a3 == *a4)
    {
      return (&result[4 * v25 + 8 + v16 * 4 + v12 + v22 + v20 + v17 + v14] != v27);
    }

    while (1)
    {
      v31 = (v24 + *v24);
      v32 = (v31 - *v31);
      v33 = *v32;
      if (v33 < 9)
      {
        LODWORD(v34) = 0;
      }

      else
      {
        v34 = v32[4];
        if (v32[4])
        {
          LODWORD(v34) = *(v31 + v34);
        }
      }

      if (*(a1 + 3872) == v34 && (v33 < 0xB || !v32[5] || !*(v31 + v32[5])))
      {
        v35 = v31 + v32[6];
        v36 = *a3;
        while (__PAIR64__(*(v35 + 2), *v35) != __PAIR64__(WORD2(*v36), *v36) || ((*v36 & 0x4000000000000000) != 0) == (v35[6] == 0))
        {
          if (++v36 == v28)
          {
            goto LABEL_19;
          }
        }

        if (v36 != v28)
        {
          break;
        }
      }

LABEL_19:
      v29 = v24 + 1;
      if (v24++ == v26)
      {
        return (v29 != v27);
      }
    }
  }

  v29 = v24;
  return (v29 != v27);
}

void sub_FAEF14(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t **a4, uint64_t **a5)
{
  v10 = sub_FADE5C(a1, a2);
  if ((a2 & 0x8000000000000000) == 0 && sub_38EC(a3))
  {
    if (*a1)
    {
      v10 = sub_FAE60C(a1, a2, a3, a4);
      if ((*(a1 + 4) & 1) == 0)
      {
        return;
      }
    }

    else if ((*(a1 + 4) & 1) == 0)
    {
      return;
    }

    if (sub_2BC500(*(a1 + 328)) != 0x7FFFFFFF)
    {
      v11 = sub_FA4F1C(*(a1 + 336), a2);
      v12 = sub_2B51D8(*(a1 + 352), v11 & 0xFFFFFFFFFFFFLL);
      v13 = (v12 - *v12);
      if (*v13 >= 0xDu && (v14 = v13[6]) != 0)
      {
        v15 = *(v12 + v14);
        if (!sub_38EC((a1 + 368)))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = 0;
        if (!sub_38EC((a1 + 368)))
        {
LABEL_12:
          v16 = sub_2BC500(*(a1 + 328));
          v17 = *(a1 + 12);
          v18 = v17 / 10;
          v19 = v17 % 10;
          if (v17 < 0)
          {
            v20 = -5;
          }

          else
          {
            v20 = 5;
          }

          v21 = v18 + v16 + (((103 * (v20 + v19)) >> 15) & 1) + ((103 * (v20 + v19)) >> 10);
          sub_320EC8(*(a1 + 352), v11 & 0xFFFFFFFFFFFFLL, v65);
          sub_386C(&v63, v21);
        }
      }

      if (v15 != *(a1 + 416))
      {
        sub_320EC8(*(a1 + 352), v11 & 0xFFFFFFFFFFFFLL, &v63);
        sub_3914(a1 + 368, &v63);
        sub_25F00(&v63);
        *(a1 + 416) = v15;
      }

      v22 = sub_3F80(a3);
      v23 = sub_3F80((a1 + 368));
      v24 = -1.0;
      v25 = -1.0;
      if (*(a1 + 4) == 1)
      {
        v26 = *(a1 + 328);
        v27 = *(a1 + 17) ? &v63 : v65;
        *v27 = 0;
        v27[1] = 0;
        v28 = sub_2BC6DC(v26, a2, v27);
        v25 = v28;
        v29 = *&v28 <= -1 || ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v30 = v29 && (*&v28 - 1) >= 0xFFFFFFFFFFFFFLL;
        v31 = !v30 || (*&v28 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if ((!v31 || v28 <= 0.0) && *(a1 + 5) == 1)
        {
          v25 = sub_FADC50(a1, a2);
        }
      }

      if (*(a1 + 4) == 1)
      {
        v32 = *a5;
        v33 = a5[1];
        if (*a5 != v33)
        {
          v34 = v33 - v32;
          if (*(a1 + 32) < v34)
          {
            v34 = *(a1 + 32);
          }

          v33 = &v32[v34];
        }

        v35 = *(a1 + 328);
        if (*(a1 + 17) == 1)
        {
          v63 = *a5;
          v64 = v33;
        }

        else
        {
          v63 = 0;
          v64 = 0;
        }

        v36 = sub_2BC6DC(v35, a2, &v63);
        v24 = v36;
        v39 = *&v36 > -1 && ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v36 - 1) < 0xFFFFFFFFFFFFFLL || (*&v36 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        if ((!v39 || v36 <= 0.0) && *(a1 + 5) == 1)
        {
          v24 = sub_FADC50(a1, a2);
        }
      }

      v42 = *&v25 > -1 && ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v25 - 1) < 0xFFFFFFFFFFFFFLL || (*&v25 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v42 && v25 > 0.0)
      {
        v43 = *&v24 <= -1 || ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v44 = v43 && (*&v24 - 1) >= 0xFFFFFFFFFFFFFLL;
        v45 = !v44 || (*&v24 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        v46 = !v45 || v24 <= 0.0;
        v47 = v46 ? v25 : v24;
        v48 = sub_FAF5B0(a1, a2, a3, v47, v10);
        v49 = *&v48 <= -1 || ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
        v50 = v49 && (*&v48 - 1) >= 0xFFFFFFFFFFFFFLL;
        if (v50 && (*&v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v52 = sub_FAE19C(a1, a2);
          v53 = sub_2BC500(*(a1 + 328));
          v54 = *(a1 + 8);
          v55 = v54 / -10;
          v56 = v54 % 10;
          v57 = v54 < 0 ? -5 : 5;
          if (sub_3F80(a3) >= (v55 + v53 + (((-103 * (v57 + v56)) >> 15) & 1) + ((-103 * (v57 + v56)) >> 10)))
          {
            v58 = v22 - v23;
            v59 = 10 * (v22 - v23);
            if (v59 < SHIDWORD(v52))
            {
              v63 = 0;
              v64 = 0;
              sub_FAE60C(a1, a2, (a1 + 368), &v63);
              sub_FAE60C(a1, a2, (a1 + 368), a4);
              if (v59 > v52)
              {
                if (v52 < 0)
                {
                  v60 = -5;
                }

                else
                {
                  v60 = 5;
                }

                if (v52 < 0)
                {
                  v62 = -5;
                }

                else
                {
                  v62 = 5;
                }

                v61 = v52 / 10 + (((103 * (v60 + v52 % 10)) >> 15) & 1) + ((103 * (v60 + v52 % 10)) >> 10);
                pow(1.0 - (v58 - v61) / (SHIDWORD(v52) / 10 + (((103 * (SHIDWORD(v52) % 10 + v62)) >> 15) & 1) + ((103 * (SHIDWORD(v52) % 10 + v62)) >> 10) - v61), *(a1 + 72));
              }
            }
          }
        }
      }
    }
  }
}

void sub_FAF580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  sub_3874(&a9);
  sub_25F00(&a15);
  _Unwind_Resume(a1);
}

void sub_FAF59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

long double sub_FAF5B0(uint64_t a1, unint64_t a2, unsigned int *a3, double a4, double a5)
{
  v5 = -1.0;
  if (*(a1 + 128) != 1)
  {
    return v5;
  }

  v11 = HIDWORD(a2);
  v12 = -1.0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v13 = sub_2B3284(*(a1 + 344), a2, 1);
    if (v13)
    {
      v14 = &v13[-*v13];
      v15 = *v14;
      if (a2 >> 62)
      {
        if (v15 < 5)
        {
          goto LABEL_15;
        }

        v16 = *(v14 + 2);
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v15 < 7)
        {
          goto LABEL_15;
        }

        v16 = *(v14 + 3);
        if (!v16)
        {
          goto LABEL_15;
        }
      }

      v17 = &v13[v16 + *&v13[v16]];
      if (*v17 > (v11 & 0x3FFFFFFF))
      {
        v18 = (&v17[(v11 & 0x3FFFFFFF) + 1] + v17[(v11 & 0x3FFFFFFF) + 1]);
        v19 = (v18 - *v18);
        if (*v19 >= 0x15u)
        {
          v20 = v19[10];
          if (v20)
          {
            v21 = *(v18 + v20);
            if ((v21 - 1) <= 0xFFFDu)
            {
              v12 = v21 / 100.0;
            }
          }
        }
      }
    }
  }

LABEL_15:
  if (v12 < 0.0 && ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || *&v12 == 0x7FF0000000000000 || a4 < v12)
  {
    return v5;
  }

  v25 = sub_2BC738(*(a1 + 328), a2);
  if (v25 == -9.22337204e18)
  {
    return v5;
  }

  v26 = *(a1 + 144);
  if (v25 >= v26)
  {
    if (v25 <= *(a1 + 192))
    {
      return v5;
    }

    v27 = a1 + 184;
    v28 = sub_35F94C(*(a1 + 344), a2);
    goto LABEL_42;
  }

  v27 = a1 + 136;
  v28 = -1.0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v29 = sub_2B3284(*(a1 + 344), a2, 1);
    if (v29)
    {
      v30 = &v29[-*v29];
      v31 = *v30;
      if (a2 >> 62)
      {
        if (v31 < 5)
        {
          goto LABEL_42;
        }

        v32 = *(v30 + 2);
        if (!v32)
        {
          goto LABEL_42;
        }

LABEL_37:
        v33 = &v29[v32 + *&v29[v32]];
        if (*v33 > (v11 & 0x3FFFFFFF))
        {
          v34 = (&v33[(v11 & 0x3FFFFFFF) + 1] + v33[(v11 & 0x3FFFFFFF) + 1]);
          v35 = (v34 - *v34);
          if (*v35 >= 0x13u)
          {
            v36 = v35[9];
            if (v36)
            {
              v37 = *(v34 + v36);
              if ((v37 - 1) <= 0xFFFDu)
              {
                v28 = v37 / 100.0;
              }
            }
          }
        }

        goto LABEL_42;
      }

      if (v31 >= 7)
      {
        v32 = *(v30 + 3);
        if (v32)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_42:
  if (a4 <= v28 * (*v27 + 1.0))
  {
    v38 = (sub_3F88(a1 + 368) - *(v27 + 16)) % 6048000;
    v39 = v38 + (v38 < 0 ? 0x5C4900 : 0);
    v40 = *(a1 + 360);
    v68 = v39 / 864000;
    v66 = 0;
    v67 = 0;
    v41 = sub_FAE9C8(v40, a2, &v68, v39 % 864000 / 600, 0, &v66);
    v42 = (*(v27 + 16) + sub_3F88(a1 + 368)) % 6048000;
    v43 = v42 + (v42 < 0 ? 0x5C4900 : 0);
    v44 = *(a1 + 360);
    v68 = v43 / 864000;
    v66 = 0;
    v67 = 0;
    v45 = sub_FAE9C8(v44, a2, &v68, v43 % 864000 / 600, 0, &v66);
    v46 = v45 < v41;
    if (v25 >= v26)
    {
      v46 = v45 > v41;
    }

    if (v46)
    {
      v47 = v45;
      if (v41 >= v45)
      {
        v48 = v41;
      }

      else
      {
        v48 = v45;
      }

      if (v45 >= v41)
      {
        v47 = v41;
      }

      if (v48 - v47 / v48 >= *(v27 + 24) && v48 - v47 >= *(v27 + 32))
      {
        v49 = sub_3F80(a3);
        v50 = *(a1 + 12) + 10 * (v49 - sub_3F80((a1 + 368)));
        v5 = a5;
        if (v50 <= *(v27 + 44))
        {
          v51 = *(a1 + 344);
          v52 = v25 < v26 ? sub_FAFB90(v51, a2) : sub_FAFC90(v51, a2);
          v5 = -1.0;
          if (v52 != -9.22337204e18)
          {
            v53 = fmax(a4 + v50 / 36000.0 * v52, 0.0);
            v54 = sub_35F94C(*(a1 + 344), a2);
            if (v54 >= v53)
            {
              v54 = v53;
            }

            if (v53 >= v12)
            {
              v5 = v54;
            }

            else
            {
              v5 = v12;
            }

            v55 = *(v27 + 40);
            if (v50 > v55)
            {
              if (v55 < 0)
              {
                v56 = -5;
              }

              else
              {
                v56 = 5;
              }

              v57 = v55 / -10 - ((((103 * (v56 + v55 % 10)) >> 15) & 1) + ((103 * (v56 + v55 % 10)) >> 10));
              v58 = *(v27 + 44);
              v59 = v58 / 10;
              v60 = v58 % 10;
              if (v58 < 0)
              {
                v61 = -5;
              }

              else
              {
                v61 = 5;
              }

              v62 = (((103 * (v61 + v60)) >> 15) & 1) + ((103 * (v61 + v60)) >> 10);
              if (v50 < 0)
              {
                v63 = -5;
              }

              else
              {
                v63 = 5;
              }

              v64 = pow(1.0 - (v50 / 10 + v57 + (((103 * (v63 + v50 % 10)) >> 15) & 1) + ((103 * (v63 + v50 % 10)) >> 10)) / (v59 + v62 + v57), *(a1 + 72));
              return v5 * v64 + a5 * (1.0 - v64);
            }
          }
        }
      }
    }
  }

  return v5;
}

double sub_FAFB90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -9.22337204e18;
  }

  v3 = sub_2B3284(a1, a2, 1);
  if (!v3)
  {
    return -9.22337204e18;
  }

  v4 = &v3[-*v3];
  v5 = *v4;
  if (a2 >> 62)
  {
    if (v5 < 5)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 2);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  else
  {
    if (v5 < 7)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 3);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  v8 = &v3[v6 + *&v3[v6]];
  if (*v8 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return -9.22337204e18;
  }

  v9 = (&v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v10 = (v9 - *v9);
  if (*v10 < 0x17u)
  {
    return -9.22337204e18;
  }

  v11 = v10[11];
  if (!v11)
  {
    return -9.22337204e18;
  }

  v12 = *(v9 + v11);
  if (v12 == 0x7FFF)
  {
    return -9.22337204e18;
  }

  return v12 / 5.0;
}

double sub_FAFC90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -9.22337204e18;
  }

  v3 = sub_2B3284(a1, a2, 1);
  if (!v3)
  {
    return -9.22337204e18;
  }

  v4 = &v3[-*v3];
  v5 = *v4;
  if (a2 >> 62)
  {
    if (v5 < 5)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 2);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  else
  {
    if (v5 < 7)
    {
      return -9.22337204e18;
    }

    v6 = *(v4 + 3);
    if (!v6)
    {
      return -9.22337204e18;
    }
  }

  v8 = &v3[v6 + *&v3[v6]];
  if (*v8 <= (HIDWORD(a2) & 0x3FFFFFFFu))
  {
    return -9.22337204e18;
  }

  v9 = (&v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1] + v8[(HIDWORD(a2) & 0x3FFFFFFF) + 1]);
  v10 = (v9 - *v9);
  if (*v10 < 0x19u)
  {
    return -9.22337204e18;
  }

  v11 = v10[12];
  if (!v11)
  {
    return -9.22337204e18;
  }

  v12 = *(v9 + v11);
  if (v12 == 0x7FFF)
  {
    return -9.22337204e18;
  }

  return v12 / 5.0;
}

void sub_FAFD90(uint64_t a1, void *a2)
{
  HIBYTE(v3) = 10;
  strcpy(&v2, "use_sunday");
  *(a1 + 24) = sub_5F9D0(a2, &v2);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2);
  }

  operator new();
}

void sub_FB054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FB064C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = v7 + 48;
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
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      v15 = *(v9 + 24);
      if (v15)
      {
        *(v9 + 32) = v15;
        operator delete(v15);
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
    }

    while (v9 != v10);
    v9 = *a1;
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

void sub_FB0838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9C76A8(va);
  _Unwind_Resume(a1);
}

char *sub_FB084C(uint64_t a1, char *__dst, char *__src, unint64_t a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_1794();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v47 = (__dst - v11);
    v48 = 8 * ((__dst - v11) >> 3);
    v49 = (v48 + 8 * a5);
    v50 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v47 - __src) >= 0x20)
    {
      v59 = v50 + 1;
      v60 = (v50 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v51 = (v48 + 8 * v60);
      v52 = &__src[8 * v60];
      v61 = (__src + 16);
      v62 = (v48 + 16);
      v63 = v60;
      do
      {
        v64 = *v61;
        *(v62 - 1) = *(v61 - 1);
        *v62 = v64;
        v61 += 2;
        v62 += 2;
        v63 -= 4;
      }

      while (v63);
      if (v59 == v60)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v51 = v48;
      v52 = __src;
    }

    do
    {
      v53 = *v52;
      v52 += 8;
      *v51++ = v53;
    }

    while (v51 != v49);
LABEL_42:
    v54 = *(a1 + 8) - __dst;
    memcpy((v48 + 8 * a5), __dst, v54);
    v55 = v49 + v54;
    *(a1 + 8) = v5;
    v56 = *a1;
    v57 = &v5[-*a1];
    v58 = v48 - v57;
    memcpy((v48 - v57), *a1, v57);
    *a1 = v58;
    *(a1 + 8) = v55;
    *(a1 + 16) = 0;
    if (v56)
    {
      operator delete(v56);
    }

    return v48;
  }

  v15 = v10 - __dst;
  v16 = (v10 - __dst) >> 3;
  if (v16 >= a5)
  {
    v15 = 8 * a5;
    v34 = &__dst[8 * a5];
    v35 = (v10 - 8 * a5);
    if (v35 >= v10)
    {
      v39 = *(a1 + 8);
    }

    else
    {
      v36 = v35 + 1;
      if (v10 > (v35 + 1))
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v15 + ~v10;
      v38 = v37 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v39 = *(a1 + 8);
      if (v38)
      {
        goto LABEL_62;
      }

      v40 = (v37 >> 3) + 1;
      v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
      v35 = (v35 + v41);
      v39 = (v10 + v41);
      v42 = (v10 + 16);
      v43 = (v10 + 16 - v15);
      v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v45 = *v43;
        *(v42 - 1) = *(v43 - 1);
        *v42 = v45;
        v42 += 2;
        v43 += 2;
        v44 -= 4;
      }

      while (v44);
      if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_62:
        do
        {
          v46 = *v35++;
          *v39++ = v46;
        }

        while (v35 < v10);
      }
    }

    *(a1 + 8) = v39;
    if (v10 != v34)
    {
      memmove(v34, __dst, v10 - v34 - 3);
    }

    goto LABEL_56;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v18 = a5;
    v19 = a4;
    memmove(*(a1 + 8), &__src[v15], v17 - 3);
    a4 = v19;
    a5 = v18;
  }

  v20 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v16 >= 1)
  {
    v21 = 8 * a5;
    v22 = &v5[8 * a5];
    v23 = &v20[-8 * a5];
    if (v23 >= v10)
    {
      v26 = (v10 + v17);
    }

    else
    {
      v24 = &v5[a4] - &__src[v21] + 8;
      if (v10 > v24)
      {
        v24 = v10;
      }

      v25 = &__src[v21 + ~a4 + v24] - v5;
      v26 = (v10 + v17);
      if (v25 < 0x18)
      {
        goto LABEL_63;
      }

      if ((a5 & 0x1FFFFFFFFFFFFFFCLL) == 0)
      {
        goto LABEL_63;
      }

      v27 = (v25 >> 3) + 1;
      v28 = 8 * (v27 & 0x3FFFFFFFFFFFFFFCLL);
      v23 = (v23 + v28);
      v26 = &v20[v28];
      v29 = (&v5[a4] - __src + 16);
      v30 = (v29 - v21);
      v31 = v27 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != (v27 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_63:
        do
        {
          v33 = *v23++;
          *v26++ = v33;
        }

        while (v23 < v10);
      }
    }

    *(a1 + 8) = v26;
    if (v20 != v22)
    {
      memmove(v22, v5, v20 - v22 - 3);
    }

    if (v10 != v5)
    {
LABEL_56:
      memmove(v5, __src, v15 - 3);
    }
  }

  return v5;
}

uint64_t *sub_FB0BF8(uint64_t *result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = a2 - 8;
    v10 = a2 - 16;
    v11 = a2 - 24;
    v12 = v8;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = v12;
          v13 = &a2[-v12] >> 3;
          if (v13 <= 2)
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              v104 = *(a2 - 2);
              v103 = a2 - 8;
              if (v104 < *v12)
              {
                v105 = *v12;
                v106 = *v103;
                *(v12 + 4) = v103[4];
                *v12 = v106;
                *v103 = v105;
                v103[4] = BYTE4(v105);
              }

              return result;
            }

            goto LABEL_10;
          }

          switch(v13)
          {
            case 3:
              v107 = v12 + 8;
              v108 = *(v12 + 8);
              v111 = *(a2 - 2);
              v110 = a2 - 8;
              v109 = v111;
              if (v108 < *v12)
              {
                v112 = *v12;
                if (v109 >= v108)
                {
                  *v12 = *v107;
                  *(v12 + 4) = *(v12 + 12);
                  *(v12 + 8) = v112;
                  *(v12 + 12) = BYTE4(v112);
                  if (*v110 < v112)
                  {
                    v140 = *v107;
                    v141 = *v110;
                    *(v12 + 12) = v110[4];
                    *v107 = v141;
                    *v110 = v140;
                    v110[4] = BYTE4(v140);
                  }
                }

                else
                {
                  v113 = *v110;
                  *(v12 + 4) = v110[4];
                  *v12 = v113;
                  v110[4] = BYTE4(v112);
                  *v110 = v112;
                }

                return result;
              }

              if (v109 >= v108)
              {
                return result;
              }

              v130 = *(v12 + 8);
              v131 = *v110;
              *(v12 + 12) = v110[4];
              *v107 = v131;
              *v110 = v130;
              v110[4] = BYTE4(v130);
LABEL_149:
              if (*(v12 + 8) < *v12)
              {
                v145 = *v12;
                *v12 = *v107;
                *(v12 + 4) = *(v107 + 4);
                *(v12 + 8) = v145;
                *(v12 + 12) = BYTE4(v145);
              }

              return result;
            case 4:
              v107 = v12 + 8;
              v114 = *(v12 + 8);
              v115 = (v12 + 16);
              LODWORD(v116) = *(v12 + 16);
              v117 = *v12;
              if (v114 >= *v12)
              {
                if (v116 < v114)
                {
                  v116 = *v107;
                  v132 = *v115;
                  *v107 = *v115;
                  *(v12 + 12) = *(v12 + 20);
                  *v115 = v116;
                  *(v12 + 20) = BYTE4(v116);
                  if (v132 < v117)
                  {
                    v133 = *v12;
                    *v12 = *v107;
                    *(v12 + 4) = *(v12 + 12);
                    *(v12 + 8) = v133;
                    *(v12 + 12) = BYTE4(v133);
                  }
                }
              }

              else
              {
                v118 = *v12;
                if (v116 >= v114)
                {
                  *v12 = *v107;
                  *(v12 + 4) = *(v12 + 12);
                  *(v12 + 8) = v118;
                  *(v12 + 12) = BYTE4(v118);
                  if (v116 < v118)
                  {
                    v116 = *v107;
                    *v107 = *v115;
                    *(v12 + 12) = *(v12 + 20);
                    *v115 = v116;
                    *(v12 + 20) = BYTE4(v116);
                  }
                }

                else
                {
                  *v12 = *v115;
                  *(v12 + 4) = *(v12 + 20);
                  *(v12 + 16) = v118;
                  *(v12 + 20) = BYTE4(v118);
                  LODWORD(v116) = v118;
                }
              }

              if (*v9 >= v116)
              {
                return result;
              }

              v142 = *v115;
              v143 = *v9;
              *(v12 + 20) = *(a2 - 4);
              *v115 = v143;
              *v9 = v142;
              *(a2 - 4) = BYTE4(v142);
              if (*v115 >= *v107)
              {
                return result;
              }

              v144 = *(v12 + 8);
              *(v12 + 12) = *(v12 + 20);
              *v107 = *v115;
              *(v12 + 16) = v144;
              *(v12 + 20) = BYTE4(v144);
              goto LABEL_149;
            case 5:

              return sub_FB1768(v12, (v12 + 8), (v12 + 16), (v12 + 24), a2 - 2);
          }

LABEL_10:
          if (v13 <= 23)
          {
            v119 = (v12 + 8);
            v121 = v12 == a2 || v119 == a2;
            if (a5)
            {
              if (!v121)
              {
                v122 = 0;
                v123 = v12;
                do
                {
                  v125 = *v123;
                  v126 = v123[2];
                  v123 = v119;
                  if (v126 < v125)
                  {
                    v127 = *v119;
                    v128 = v122;
                    do
                    {
                      v129 = v12 + v128;
                      *(v129 + 8) = *(v12 + v128);
                      *(v129 + 12) = *(v12 + v128 + 4);
                      if (!v128)
                      {
                        v124 = v12;
                        goto LABEL_119;
                      }

                      v128 -= 8;
                    }

                    while (*(v129 - 8) > v127);
                    v124 = v12 + v128 + 8;
LABEL_119:
                    *v124 = v127;
                    *(v124 + 4) = BYTE4(v127);
                  }

                  v119 = (v123 + 2);
                  v122 += 8;
                }

                while (v123 + 2 != a2);
              }
            }

            else if (!v121)
            {
              do
              {
                v134 = *v8;
                v135 = *(v8 + 2);
                v8 = v119;
                if (v135 < v134)
                {
                  v136 = *v119;
                  v137 = v119;
                  do
                  {
                    v138 = v137;
                    v139 = *(v137 - 2);
                    v137 -= 8;
                    *v138 = v139;
                    v138[4] = *(v138 - 4);
                  }

                  while (*(v138 - 4) > v136);
                  *v137 = v136;
                  v137[4] = BYTE4(v136);
                }

                v119 = (v8 + 1);
              }

              while (v8 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v12 != a2)
            {

              return sub_FB1E44(v12, a2, a2);
            }

            return result;
          }

          v14 = v12 + 8 * (v13 >> 1);
          v15 = v14;
          v16 = *v9;
          if (v13 >= 0x81)
          {
            break;
          }

          v21 = *v12;
          if (*v12 >= *v14)
          {
            if (v16 >= v21)
            {
              goto LABEL_37;
            }

            v29 = *v12;
            v30 = *v9;
            *(v12 + 4) = *(a2 - 4);
            *v12 = v30;
            *v9 = v29;
            *(a2 - 4) = BYTE4(v29);
            if (*v12 >= *v15)
            {
              goto LABEL_37;
            }

            v31 = *v15;
            v32 = *v12;
            *(v15 + 4) = *(v12 + 4);
            *v15 = v32;
            *v12 = v31;
            *(v12 + 4) = BYTE4(v31);
            --a4;
            if (a5)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v22 = *v14;
            v23 = HIDWORD(*v15);
            if (v16 >= v21)
            {
              v47 = *v12;
              *(v15 + 4) = *(v12 + 4);
              *v15 = v47;
              *(v12 + 4) = v23;
              *v12 = v22;
              if (*v9 < v22)
              {
                v48 = *v12;
                v49 = *v9;
                *(v12 + 4) = *(a2 - 4);
                *v12 = v49;
                *v9 = v48;
                *(a2 - 4) = BYTE4(v48);
              }

LABEL_37:
              --a4;
              if (a5)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            v24 = *v9;
            *(v15 + 4) = *(a2 - 4);
            *v15 = v24;
            *(a2 - 4) = v23;
            *v9 = v22;
            --a4;
            if (a5)
            {
              goto LABEL_59;
            }
          }

LABEL_58:
          if (*(v12 - 8) < *v12)
          {
            goto LABEL_59;
          }

          v93 = *v12;
          if (*v9 <= *v12)
          {
            v95 = v12 + 8;
            do
            {
              v12 = v95;
              if (v95 >= a2)
              {
                break;
              }

              v95 += 8;
            }

            while (*v12 <= v93);
          }

          else
          {
            do
            {
              v94 = *(v12 + 8);
              v12 += 8;
            }

            while (v94 <= v93);
          }

          v96 = a2;
          if (v12 < a2)
          {
            v96 = a2;
            do
            {
              v97 = *(v96 - 2);
              v96 -= 8;
            }

            while (v97 > v93);
          }

          while (v12 < v96)
          {
            v98 = *v12;
            v99 = *v96;
            *(v12 + 4) = v96[4];
            *v12 = v99;
            *v96 = v98;
            v96[4] = BYTE4(v98);
            do
            {
              v100 = *(v12 + 8);
              v12 += 8;
            }

            while (v100 <= v93);
            do
            {
              v101 = *(v96 - 2);
              v96 -= 8;
            }

            while (v101 > v93);
          }

          if ((v12 - 8) != v8)
          {
            v102 = *(v12 - 8);
            *(v8 + 4) = *(v12 - 4);
            *v8 = v102;
          }

          a5 = 0;
          *(v12 - 8) = v93;
          *(v12 - 4) = BYTE4(v93);
        }

        v17 = *v14;
        if (*v14 >= *v12)
        {
          if (v16 < v17)
          {
            v25 = *v14;
            v26 = *v9;
            *(v14 + 4) = *(a2 - 4);
            *v14 = v26;
            *v9 = v25;
            *(a2 - 4) = BYTE4(v25);
            if (*v14 < *v12)
            {
              v27 = *v12;
              v28 = *v14;
              *(v12 + 4) = *(v14 + 4);
              *v12 = v28;
              *v14 = v27;
              *(v14 + 4) = BYTE4(v27);
            }
          }
        }

        else
        {
          v18 = *v12;
          v19 = HIDWORD(*v12);
          if (v16 >= v17)
          {
            v33 = *v14;
            *(v12 + 4) = *(v14 + 4);
            *v12 = v33;
            *(v14 + 4) = v19;
            *v14 = v18;
            if (*v9 < v18)
            {
              v34 = *v14;
              v35 = *v9;
              *(v14 + 4) = *(a2 - 4);
              *v14 = v35;
              *v9 = v34;
              *(a2 - 4) = BYTE4(v34);
            }
          }

          else
          {
            v20 = *v9;
            *(v12 + 4) = *(a2 - 4);
            *v12 = v20;
            *(a2 - 4) = v19;
            *v9 = v18;
          }
        }

        v36 = (v12 + 8);
        v37 = (v14 - 8);
        v38 = *(v14 - 8);
        v39 = *v10;
        if (v38 >= *(v12 + 8))
        {
          if (v39 < v38)
          {
            v43 = *v37;
            v44 = *v10;
            *(v14 - 4) = *(a2 - 12);
            *v37 = v44;
            *v10 = v43;
            *(a2 - 12) = BYTE4(v43);
            if (*v37 < *v36)
            {
              v45 = *v36;
              v46 = *v37;
              *(v12 + 12) = *(v14 - 4);
              *v36 = v46;
              *v37 = v45;
              *(v14 - 4) = BYTE4(v45);
            }
          }
        }

        else
        {
          v40 = *v36;
          v41 = HIDWORD(*v36);
          if (v39 >= v38)
          {
            v50 = *v37;
            *(v12 + 12) = *(v14 - 4);
            *v36 = v50;
            *(v14 - 4) = v41;
            *v37 = v40;
            if (*v10 < v40)
            {
              v51 = *v37;
              v52 = *v10;
              *(v14 - 4) = *(a2 - 12);
              *v37 = v52;
              *v10 = v51;
              *(a2 - 12) = BYTE4(v51);
            }
          }

          else
          {
            v42 = *v10;
            *(v12 + 12) = *(a2 - 12);
            *v36 = v42;
            *(a2 - 12) = v41;
            *v10 = v40;
          }
        }

        v53 = (v12 + 16);
        v56 = *(v14 + 8);
        v54 = (v14 + 8);
        v55 = v56;
        v57 = *v11;
        if (v56 >= *(v12 + 16))
        {
          if (v57 < v55)
          {
            v61 = *v54;
            v62 = *v11;
            *(v54 + 4) = *(a2 - 20);
            *v54 = v62;
            *v11 = v61;
            *(a2 - 20) = BYTE4(v61);
            if (*v54 < *v53)
            {
              v63 = *v53;
              v64 = *v54;
              *(v12 + 20) = *(v54 + 4);
              *v53 = v64;
              *v54 = v63;
              *(v54 + 4) = BYTE4(v63);
            }
          }
        }

        else
        {
          v58 = *v53;
          v59 = HIDWORD(*v53);
          if (v57 >= v55)
          {
            v65 = *v54;
            *(v12 + 20) = *(v54 + 4);
            *v53 = v65;
            *(v54 + 4) = v59;
            *v54 = v58;
            if (*v11 < v58)
            {
              v66 = *v54;
              v67 = *v11;
              *(v54 + 4) = *(a2 - 20);
              *v54 = v67;
              *v11 = v66;
              *(a2 - 20) = BYTE4(v66);
            }
          }

          else
          {
            v60 = *v11;
            *(v12 + 20) = *(a2 - 20);
            *v53 = v60;
            *(a2 - 20) = v59;
            *v11 = v58;
          }
        }

        v68 = *v37;
        v69 = *v15;
        v70 = *v54;
        if (*v15 >= *v37)
        {
          if (v70 < v69)
          {
            v73 = *v15;
            v74 = *v54;
            *v15 = *v54;
            *(v15 + 4) = *(v54 + 4);
            *v54 = v73;
            *(v54 + 4) = BYTE4(v73);
            if (v74 < v68)
            {
              v75 = *v37;
              *v37 = *v15;
              *(v37 + 4) = *(v15 + 4);
              *v15 = v75;
              *(v15 + 4) = BYTE4(v75);
            }
          }
        }

        else
        {
          v71 = *v37;
          v72 = HIDWORD(*v37);
          if (v70 >= v69)
          {
            *v37 = *v15;
            *(v37 + 4) = *(v15 + 4);
            *v15 = v71;
            *(v15 + 4) = v72;
            if (v70 < v71)
            {
              v76 = *v15;
              *v15 = *v54;
              *(v15 + 4) = *(v54 + 4);
              *v54 = v76;
              *(v54 + 4) = BYTE4(v76);
            }
          }

          else
          {
            *v37 = *v54;
            *(v37 + 4) = *(v54 + 4);
            *v54 = v71;
            *(v54 + 4) = v72;
          }
        }

        v77 = *v12;
        v78 = *v15;
        *(v12 + 4) = *(v15 + 4);
        *v12 = v78;
        *v15 = v77;
        *(v15 + 4) = BYTE4(v77);
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_59:
        v79 = 0;
        v80 = *v12;
        do
        {
          v81 = *(v12 + v79 + 8);
          v79 += 8;
        }

        while (v81 < v80);
        v82 = v12 + v79;
        v83 = a2;
        if (v79 == 8)
        {
          v83 = a2;
          do
          {
            if (v82 >= v83)
            {
              break;
            }

            v85 = *(v83 - 2);
            v83 -= 8;
          }

          while (v85 >= v80);
        }

        else
        {
          do
          {
            v84 = *(v83 - 2);
            v83 -= 8;
          }

          while (v84 >= v80);
        }

        v12 += v79;
        if (v82 < v83)
        {
          v86 = v83;
          do
          {
            v87 = *v12;
            v88 = *v86;
            *(v12 + 4) = v86[4];
            *v12 = v88;
            *v86 = v87;
            v86[4] = BYTE4(v87);
            do
            {
              v89 = *(v12 + 8);
              v12 += 8;
            }

            while (v89 < v80);
            do
            {
              v90 = *(v86 - 2);
              v86 -= 8;
            }

            while (v90 >= v80);
          }

          while (v12 < v86);
        }

        if ((v12 - 8) != v8)
        {
          v91 = *(v12 - 8);
          *(v8 + 4) = *(v12 - 4);
          *v8 = v91;
        }

        *(v12 - 8) = v80;
        *(v12 - 4) = BYTE4(v80);
        if (v82 >= v83)
        {
          break;
        }

LABEL_78:
        result = sub_FB0BF8(v8, v12 - 8, a3, a4, a5 & 1);
        a5 = 0;
      }

      v92 = sub_FB19A8(v8, (v12 - 8));
      result = sub_FB19A8(v12, a2);
      if (result)
      {
        break;
      }

      if (!v92)
      {
        goto LABEL_78;
      }
    }

    a2 = (v12 - 8);
    if (!v92)
    {
      continue;
    }

    return result;
  }
}