void sub_F2C2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_11BD8(&a48);
  sub_11BD8(&a54);
  _Unwind_Resume(a1);
}

void sub_F2C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __cxa_free_exception(v51);
  if (a41)
  {
    operator delete(a41);
  }

  sub_11BD8(&a45);
  sub_11BD8(&a51);
  _Unwind_Resume(a1);
}

void sub_F2C3F8(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v34 = 0x7FFFFFFF;
  v7 = -1;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v38 = -1;
  for (i = sub_4D1DC0(a2); v2 < i; i = sub_4D1DC0(a2))
  {
    v11 = sub_69CB14(a2, v2);
    v12 = *v11;
    v36 = v2;
    if ((v7 != -1 || v38 != -1) && (v7 != *v12 || v38 != *(v12 + 4) || v34 != *(v12 + 8)))
    {
      v40 = *v12;
      v42 = *(v12 + 8);
      v39 = v8;
      v13 = v4 - v3;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * (-v3 >> 3) > v15)
      {
        v15 = 0x5555555555555556 * (-v3 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v3 >> 3) >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v17 = v11;
      v18 = 24 * v14;
      *v18 = v7;
      *(v18 + 4) = v38;
      *(v18 + 8) = v34;
      *(v18 + 12) = v40;
      *(v18 + 20) = v42;
      v4 = 24 * v14 + 24;
      v19 = v18 - v13;
      memcpy((v18 - v13), v3, v13);
      if (v3)
      {
        operator delete(v3);
      }

      v3 = v19;
      v11 = v17;
      v8 = v39;
      v12 = *v17;
    }

    v20 = v11[1];
    v38 = *(v20 - 8);
    v34 = *(v20 - 4);
    v35 = *(v20 - 12);
    if (v12 != v20)
    {
      for (j = v12 + 12; j != v20; j += 12)
      {
        if (*(j - 12) != *j || *(j - 8) != *(j + 4) || *(j - 4) != *(j + 8))
        {
          *&v41[8] = *(j - 4);
          *v41 = *(j - 12);
          *&v41[12] = *j;
          *&v41[20] = *(j + 8);
          v22 = v8;
          v23 = v4 - v3;
          v24 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
          v25 = v24 + 1;
          if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-v3 >> 3) > v25)
          {
            v25 = 0x5555555555555556 * (-v3 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v3 >> 3) >= 0x555555555555555)
          {
            v26 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            if (v26 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v27 = 24 * v24;
          *v27 = *v41;
          *(v27 + 16) = *&v41[16];
          v4 = 24 * v24 + 24;
          v28 = (v27 + 24 * (v23 / -24));
          memcpy(v28, v3, v23);
          if (v3)
          {
            operator delete(v3);
          }

          v3 = v28;
          v8 = v22;
        }
      }
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    if (v5 + 1 > v29)
    {
      v30 = v5 + 1;
    }

    else
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
    }

    if (v5 + 1 >= v29)
    {
      v10 = v6;
    }

    else
    {
      v31 = (v3 + 24 * v5 + 24);
      do
      {
        v32 = *(v31 - 5) - *(v31 - 2);
        if (sqrt(((*(v31 - 6) - *(v31 - 3)) * (*(v31 - 6) - *(v31 - 3)) + v32 * v32)) / 100.0 <= 1.0)
        {
          v10 = v6;
        }

        else
        {
          v33 = v31[1] - v31[4];
          if (sqrt(((*v31 - v31[3]) * (*v31 - v31[3]) + v33 * v33)) / 100.0 > 1.0)
          {
            operator new();
          }

          v10 = v6;
        }

        ++v5;
        v31 += 6;
        v6 = v10;
      }

      while (v30 - 1 != v5);
    }

    v2 = v36 + 1;
    v6 = v10;
    v7 = v35;
  }

  if (v3)
  {
    operator delete(v3);
  }
}

void sub_F2CC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (v29)
  {
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F2CCAC(uint64_t a1, void *a2)
{
  v2 = a2;
  *v61 = -1;
  v61[2] = 0x7FFFFFFF;
  result = sub_4D1DC0(a2);
  if (result >= 1)
  {
    v5 = 0;
    v50 = -1;
    v49 = a1;
    do
    {
      v6 = sub_4D1F50(v2, v5);
      v7 = v6;
      v8 = *v6;
      v9 = (*v6 - **v6);
      v10 = *v9;
      if (v10 < 0x9B || !v9[77] || (*(v8 + v9[77] + 3) & 4) == 0)
      {
        v11 = v6[1];
        if (!v11 || (v12 = (v11 - *v11), *v12 < 0x11u) || (v13 = v12[8]) == 0 || (*(v11 + v13) & 4) == 0)
        {
          if (v10 < 0x9B || (v14 = v9[77]) == 0 || (*(v8 + v14 + 2) & 1) == 0)
          {
            v56 = sub_3116D0(v6);
            if ((sub_420B0C((a1 + 13552), &v56) & 1) == 0)
            {
              v15 = sub_69CB14(v2, v5);
              sub_2B7A20(*(a1 + 88), v7[4] & 0xFFFFFFFFFFFFFFLL, &v56);
              sub_31BF20(&v56, &v59);
              if (__p)
              {
                v58 = __p;
                operator delete(__p);
              }

              v16 = v15[1] - *v15;
              if (v16)
              {
                v17 = 0;
                v18 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 2);
                do
                {
                  if (v17 >= 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 2))
                  {
                    break;
                  }

                  if (v50 == -1 || (v61[0] == -1 ? (v19 = v61[1] == -1) : (v19 = 0), v19))
                  {
                    v50 = *sub_41224(v15, v17);
                    v37 = sub_41224(&v59, v17);
                    v38 = *v37;
                    v61[2] = *(v37 + 8);
                    *v61 = v38;
                  }

                  else
                  {
                    v20 = sub_41224(v15, v17);
                    v21 = *v20;
                    v55 = *(v20 + 8);
                    v54 = v21;
                    v22 = sub_41224(&v59, v17);
                    v23 = *v22;
                    v53 = *(v22 + 8);
                    v52 = v23;
                    if (sqrt(((v50 - v54) * (v50 - v54) + (HIDWORD(v50) - HIDWORD(v54)) * (HIDWORD(v50) - HIDWORD(v54)))) / 100.0 >= *(a1 + 11896) / 100.0)
                    {
                      v51[0] = -1;
                      LODWORD(v51[1]) = 0x7FFFFFFF;
                      v24.i64[0] = v61[0];
                      v24.i64[1] = v61[1];
                      v25 = vcvtq_f64_u64(v24);
                      v24.i64[0] = v52;
                      v24.i64[1] = HIDWORD(v52);
                      v26 = vsubq_f64(vcvtq_f64_u64(v24), v25);
                      v27 = vmulq_f64(v26, v26);
                      v28 = vaddvq_f64(v27);
                      if (v28 == 0.0)
                      {
                        goto LABEL_32;
                      }

                      if (v28 <= 0.0)
                      {
                        v28 = -v28;
                      }

                      if (v28 < 2.22044605e-16)
                      {
LABEL_32:
                        v29 = 0.0;
                      }

                      else
                      {
                        v47.i64[0] = v54;
                        v47.i64[1] = HIDWORD(v54);
                        v48 = vmulq_f64(vsubq_f64(vcvtq_f64_u64(v47), v25), v26);
                        *&v29 = *&vdivq_f64(vaddq_f64(v48, vdupq_laneq_s64(v48, 1)), vaddq_f64(v27, vdupq_laneq_s64(v27, 1)));
                      }

                      v30 = v2;
                      if (v29 <= 1.0)
                      {
                        v31 = v29;
                      }

                      else
                      {
                        v31 = 1.0;
                      }

                      if (v29 >= 0.0)
                      {
                        v32 = v31;
                      }

                      else
                      {
                        v32 = 0.0;
                      }

                      v51[0] = sub_6EFC0(v61, &v52, v32);
                      LODWORD(v51[1]) = v33;
                      sub_314EC(&v54, v51, v34);
                      v35 = v51[0];
                      v36 = v61[0];
                      if (LODWORD(v51[0]) != v61[0] || *(v51 + 4) != *&v61[1])
                      {
                        if (v54 != v50 || (i = 0.0, HIDWORD(v50) != HIDWORD(v54)))
                        {
                          v40 = -(v50 - v54);
                          if (v54 - v50 < (v50 - v54))
                          {
                            v40 = (v54 - v50);
                          }

                            ;
                          }

                            ;
                          }
                        }

                        v41 = v35 - v36;
                        if (v35 == v36)
                        {
                          v42 = v61[1];
                          v43 = HIDWORD(v51[0]);
                          j = 0.0;
                          v2 = v30;
                          a1 = v49;
                          if (v61[1] == HIDWORD(v51[0]))
                          {
LABEL_61:
                            sub_455D0(i, j);
                            if (v46 > *(a1 + 11920))
                            {
                              __p = 0;
                              v58 = 0;
                              v56 = 0;
                              operator new();
                            }

                            v50 = v54;
                            *v61 = v51[0];
                            v61[2] = v51[1];
                            goto LABEL_20;
                          }
                        }

                        else
                        {
                          v43 = HIDWORD(v51[0]);
                          v42 = v61[1];
                          v2 = v30;
                          a1 = v49;
                        }

                        v45 = --v41;
                        if (v41 < -v41)
                        {
                          v45 = v41;
                        }

                          ;
                        }

                          ;
                        }

                        goto LABEL_61;
                      }

                      v2 = v30;
                      a1 = v49;
                    }
                  }

LABEL_20:
                  ++v17;
                }

                while (v17 != v18);
              }

              if (v59)
              {
                v60 = v59;
                operator delete(v59);
              }
            }
          }
        }
      }

      ++v5;
      result = sub_4D1DC0(v2);
    }

    while (v5 < result);
  }

  return result;
}

void sub_F2D2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = a1;
  if (a27)
  {
    operator delete(a27);
    v29 = a1;
  }

  _Unwind_Resume(v29);
}

void sub_F2D344(uint64_t *a1, void *a2)
{
  v3 = sub_F28488(a1, a2);
  memset(v12, 0, 24);
  v4 = v3[1];
  if (v4 != *v3)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *v3) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = sub_F28978(a1, a2);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = v5[1];
  if (v6 != *v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = v12;
  sub_685C24(4, 0.0);
  sub_685C24(4, 1.0);
  memset(&v12[35], 0, 24);
  operator new();
}

void sub_F2DEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  v31 = *(v29 - 224);
  if (v31)
  {
    *(v29 - 216) = v31;
    operator delete(v31);
  }

  sub_252664(&a13, a14);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

BOOL sub_F2DFFC(unsigned int ***a1, unsigned int *a2)
{
  v2 = **a1;
  if (v2 == a2)
  {
    return 0;
  }

  v4 = (*a1)[1];
  if (v4 == a2)
  {
    return 0;
  }

  v5 = a2 + 6;
  v6 = 0.0;
  do
  {
    v7 = v5;
    if (v5 == v4)
    {
      break;
    }

    v9 = *(v5 - 4);
    v8 = *(v5 - 3);
    v10 = v5[3];
    v11 = exp(((v10 >> 1) + (v8 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v12 = atan((v11 + -1.0 / v11) * 0.5);
    v6 = v6 + sqrt(((v8 - v10) * (v8 - v10) + (v9 - v7[2]) * (v9 - v7[2]))) / 100.0 * 100.0 * (cos(v12 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077);
    v5 = v7 + 6;
  }

  while (v6 < 10.0);
  if (v6 < 10.0)
  {
    return 0;
  }

  v13 = a2 - 6;
  v14 = 0.0;
  do
  {
    v15 = v13[8];
    v16 = v13[9];
    v17 = v13[3];
    v18 = exp(((v17 >> 1) + (v16 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v19 = atan((v18 + -1.0 / v18) * 0.5);
    v20 = cos(v19 * 57.2957795 / 180.0 * 3.14159265);
    v21 = v13[2];
    v14 = v14 + sqrt(((v16 - v17) * (v16 - v17) + (v15 - v21) * (v15 - v21))) / 100.0 * 100.0 * (v20 * 0.00932288077);
    if (v13 == v2)
    {
      break;
    }

    v13 -= 6;
  }

  while (v14 < 10.0);
  if (v14 < 10.0)
  {
    return 0;
  }

  v23 = v7[3];
  v24 = exp(((v17 >> 1) + (v23 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
  v25 = atan((v24 + -1.0 / v24) * 0.5);
  return (v6 + v14) / (sqrt(((v17 - v23) * (v17 - v23) + (v21 - v7[2]) * (v21 - v7[2]))) / 100.0 * 100.0 * (cos(v25 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077)) < 1.1;
}

void sub_F2F3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F2F44C()
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F2FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (v23)
  {
    operator delete(v23);
    v24 = __p;
    if (!__p)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = __p;
    if (!__p)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v24);
  goto LABEL_7;
}

void sub_F2FDF4()
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F30380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F303F0()
{
  sub_685C24(0, 1.0);
  sub_685C24(1, 1.0);
  sub_685C24(2, 1.0);
  sub_685C24(3, 1.0);
  sub_685C24(4, 1.0);
  operator new();
}

void sub_F3061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F30650(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = sub_3AF6B4(a2);
  v4 = sub_3B23FC(a2);
  v5 = v4[1];
  *(a1 + 96) = *v4;
  *(a1 + 104) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 112), v4 + 2, 0xF18uLL);
  v6 = v4[485];
  *(a1 + 3976) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = sub_3B2794(a2);
  v8 = v7[1];
  *(a1 + 3984) = *v7;
  *(a1 + 3992) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 4000), v7 + 2, 0xF18uLL);
  v9 = v7[485];
  *(a1 + 7864) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 7872) = v7[486];
  v10 = v7[487];
  *(a1 + 7880) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  memcpy((a1 + 7888), v7 + 488, 0xF10uLL);
  operator new();
}

void sub_F308D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_528AB4(v17 + v19);
  sub_F25F04((v17 + 3984));
  sub_3A0ED4(v17 + 96);
  sub_5EC8BC(v18);
  v21 = *(v17 + 24);
  if (v21)
  {
    *(v17 + 32) = v21;
    operator delete(v21);
    v22 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_F31A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F31AD0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 11744);
  if (*(a1 + 11744) & 1) == 0 && *(a1 + 13388) != 1 || *(a2 + 10120) != 1 || (*(a2 + 10121))
  {
    return;
  }

  if (*(a1 + 11745) == 1)
  {
    sub_F2ACC0(a1, a2);
    if (v4[25] != 1)
    {
LABEL_7:
      if (v4[26] != 1)
      {
        goto LABEL_8;
      }

LABEL_18:
      sub_F2CCAC(a1, a2);
      if (v4[29] != 1)
      {
        goto LABEL_9;
      }

LABEL_19:
      sub_F2D344(a1, a2);
    }
  }

  else if (*(a1 + 11769) != 1)
  {
    goto LABEL_7;
  }

  sub_F2C3F8(a1, a2);
  if (v4[26] == 1)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v4[29] == 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v4[24] == 1)
  {
    sub_F28BD0();
  }

  if (v4[32] == 1)
  {
    if (sub_4D1DB8(a2) < *(a1 + 11800))
    {
      sub_F29A88(a1, a2);
    }

    sub_F2A53C();
  }

  if (v4[28] == 1)
  {
    sub_F2F44C();
  }

  if (v4[30] == 1)
  {
    sub_F2FDF4();
  }

  if (v4[31] == 1)
  {
    sub_F303F0();
  }

  if (*(a1 + 72))
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      do
      {
        v7 = *v5;
        v8 = v5[4];
        if (v8)
        {
          v5[5] = v8;
          operator delete(v8);
        }

        operator delete(v5);
        v5 = v7;
      }

      while (v7);
    }

    *(a1 + 64) = 0;
    v6 = *(a1 + 56);
    if (v6)
    {
      bzero(*(a1 + 48), 8 * v6);
    }

    *(a1 + 72) = 0;
  }

  *(a1 + 32) = *(a1 + 24);
  *(a1 + 8) = *a1;
}

void sub_F31D08(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    do
    {
      sub_F31AD0(a1, v4);
      v4 += 12656;
    }

    while (v4 != v5);
  }
}

uint64_t sub_F31D60(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 7772) != 1)
  {
    return 0;
  }

  v3 = sub_30C50C(a1 + 3896, a2, 1);
  if (!v3)
  {
    v8 = a2;
    v9 = HIDWORD(a2);
    exception = __cxa_allocate_exception(0x40uLL);
    v16[0] = v9;
    v16[1] = v8;
    sub_2FF494(v16, &v14);
    sub_23E08("Road access could not find quad node for ", &v14, &v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = sub_2D390(exception, v11, size);
  }

  v4 = &v3[-*v3];
  if (*v4 >= 5u && (v5 = *(v4 + 2)) != 0)
  {
    v6 = &v3[v5 + *&v3[v5]];
  }

  else
  {
    v6 = 0;
  }

  return sub_F31F04(v6, a2);
}

void sub_F31EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F31F04(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_F31FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_F3205C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2 - 24;
      if (v10 < 0x18)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x18 + 1;
      v12 = v3 + 24 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = (v3 + 32);
      v14 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_2266560;
        *(v13 - 1) = xmmword_2266550;
        *v13 = xmmword_2266540;
        v13 += 3;
        v14 -= 2;
      }

      while (v14);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_2266560;
          *(v3 + 16) = -NAN;
          v3 += 24;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 24 * v5;
    v16 = 24 * v5 + 24 * a2;
    v17 = 24 * a2 - 24;
    v18 = 24 * v5;
    if (v17 < 0x18)
    {
      goto LABEL_34;
    }

    v19 = v17 / 0x18 + 1;
    v18 = v15 + 24 * (v19 & 0x1FFFFFFFFFFFFFFELL);
    v20 = (24 * v5 + 32);
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = xmmword_2266560;
      *(v20 - 1) = xmmword_2266550;
      *v20 = xmmword_2266540;
      v20 += 3;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v18 = xmmword_2266560;
        *(v18 + 16) = -NAN;
        v18 += 24;
      }

      while (v18 != v16);
    }

    v22 = *a1;
    v23 = *(a1 + 8) - *a1;
    v24 = v15 - v23;
    memcpy((v15 - v23), *a1, v23);
    *a1 = v24;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t sub_F322DC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  sub_58168(*a2 >> 17, a2[1] >> 17);
  v7 = v6 | 0x40000000;
  while (1)
  {
    v8 = v7;
    v9 = sub_F327BC(a1, v7, 1);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 5u)
      {
        if (*(v10 + 2))
        {
          v11 = sub_F327BC(a1, v8, 1);
          if (v11)
          {
            v12 = &v11[-*v11];
            if (*v12 >= 5u)
            {
              v13 = *(v12 + 2);
              if (v13)
              {
                v14 = &v11[v13 + *&v11[v13]];
                v15 = &v14[-*v14];
                if (*v15 >= 7u)
                {
                  v16 = *(v15 + 3);
                  if (v16)
                  {
                    if (*&v14[v16 + *&v14[v16]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }

          v17 = sub_F327BC(a1, v8, 1);
          if (v17 && (v18 = &v17[-*v17], *v18 >= 5u) && (v19 = *(v18 + 2)) != 0)
          {
            v20 = &v17[v19 + *&v17[v19]];
            v21 = &v20[-*v20];
            if (*v21 >= 9u)
            {
              v22 = *(v21 + 4);
              if (v22)
              {
                if (*&v20[v22 + *&v20[v22]])
                {
                  operator new();
                }
              }
            }

            __p = 0;
            v26 = 0;
            v27 = 0;
          }

          else
          {
            __p = 0;
            v26 = 0;
            v27 = 0;
          }

          v28[0] = a3;
          v28[1] = a1;
          v28[2] = a2;
          v23 = sub_F326B8(&__p, v28);
          if (__p)
          {
            v26 = __p;
            operator delete(__p);
          }

          if (v23)
          {
            break;
          }
        }
      }
    }

    v7 = v8 >> 2;
    if (v8 <= 3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_F32658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F326B8(unint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  while (1)
  {
    v7 = *v2;
    v16 = *v2;
    v8 = *(v5 + 8);
    if ((**v5 & 1) != 0 || (v9 = sub_F32ABC(*(v5 + 8), v7), v10 = &v9[-*v9], *v10 < 0xDu) || (v11 = *(v10 + 6)) == 0 || !v9[v11])
    {
      if ((**(v5 + 16) & 1) != 0 || (v12 = sub_F32ABC(v8, v7), v13 = &v12[-*v12], *v13 < 9u) || (v14 = *(v13 + 4)) == 0 || !v12[v14])
      {
        if (sub_F32F74(v4, &v16, v6))
        {
          break;
        }
      }
    }

    if (++v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

char *sub_F327BC(uint64_t a1, unsigned int a2, int a3)
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

  if (*(a1 + 2896) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2904) = v3;
    v4 = *(a1 + 2912);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2920) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2928) = v3;
    v4 = *(a1 + 2936);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2944) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2952) = v3;
    v4 = *(a1 + 2960);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2968) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2976) = v3;
    v4 = *(a1 + 2984);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2952);
    v8 = *(a1 + 2928);
    v9 = *(a1 + 2904);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2904);
    }

    v11 = 120;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2928);
    }

    v13 = 121;
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
      v14 = *(a1 + 2952);
    }

    v15 = *(a1 + 2976);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 122;
    }

    v18 = sub_2D52A4(*a1, 30, a2, 1);
    v19 = 123;
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
  sub_F32990(v21);
  return 0;
}

uint64_t sub_F32990(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x1Eu);
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

void sub_F32A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_F32ABC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_F327BC(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = v3;
    v22 = exception;
    v28[0] = v21;
    v28[1] = v2;
    sub_2FF494(v28, &v26);
    sub_23E08("Referenced polygon ", &v26, &v27);
    sub_30F54(" does not exist.", &v27, &v29);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v25 = sub_2D390(v22, v23, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[-*v11];
  if (*v12 >= 9u && (v13 = *(v12 + 4)) != 0 && (v14 = &v11[v13 + *&v11[v13]], v17 = *v14, v16 = v14 + 1, v15 = v17, v29.__r_.__value_.__r.__words[0] = v16, v29.__r_.__value_.__l.__size_ = v17, v29.__r_.__value_.__r.__words[2] = 0xF424000000040, v30 = 257, v32 = 0, v33 = 0, v31 = 0, v17 >= 0xC) && (v18 = *v16, v18 >= 1) && v15 - 1 >= v18 && sub_F32D14((v16 + v18), &v29))
  {
    return v16 + *v16;
  }

  else
  {
    return 0;
  }
}

void sub_F32C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_F32D14(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2] && ((&v3[v17] & 7) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v17]))
    {
      return 0;
    }

    if (v16 >= 7)
    {
      v18 = v15[3];
      if (v15[3])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }
      }

      if (v16 >= 9)
      {
        if (v15[4] && v4 - 1 < &v3[v15[4]])
        {
          return 0;
        }

        if (v16 >= 0xB)
        {
          v20 = v15[5];
          if (v15[5])
          {
            v21 = &v3[v20];
            if ((&v3[v20] & 3) != 0)
            {
              if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v21)
            {
              return 0;
            }

            v22 = *&v21[*&v2];
            if (v22 < 1 || v4 - 1 < &v21[v22])
            {
              return 0;
            }

            v23 = (a1 + v20 + *(a1 + v20));
            v24 = v23 - *&v2;
            if (((v23 - *&v2) & 3) != 0)
            {
              if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v24)
            {
              return 0;
            }

            v25 = *v23;
            if (v25 > 0x7FFFFFFE)
            {
              return 0;
            }

            v26 = v25 + 4;
            v27 = &v24[v25 + 4];
            if (v4 - 1 < v27 || v4 <= v26 || v4 - v26 < v24 || *(*&v2 + v27))
            {
              return 0;
            }
          }

          if (v16 < 0xD || !v15[6] || v4 - 1 >= &v3[v15[6]])
          {
            goto LABEL_59;
          }

          return 0;
        }
      }
    }
  }

LABEL_59:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_F32F74(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v36[0] = sub_F33154(a1, *a2);
  v36[1] = v6;
  if (!sub_32A18(v36, a3))
  {
    return 0;
  }

  sub_F33368(a1, *a2, &__p);
  v10 = __p;
  v11 = v35;
  if (__p == v35)
  {
    v23 = 0;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }
  }

  else
  {
    v12 = a3[1];
    LODWORD(v7) = *a3;
    v13 = v7;
    v14 = __p;
    while (1)
    {
      v15 = *v14;
      v16 = v14[1];
      if (*v14 != v16)
      {
        v17 = 0;
        do
        {
          v18 = v15[1];
          v19 = (*v15 + 12);
          if (*v15 != v18 && v19 != v18)
          {
            do
            {
              v21 = *(v19 - 2);
              v22 = v19[1];
              if (v21 < v12 != v22 < v12)
              {
                LODWORD(v8) = *v19;
                LODWORD(v9) = *(v19 - 3);
                v9 = *&v9;
                v8 = (v12 - v21) / (v22 - v21) * (*&v8 - v9) + v9;
                if (v8 < v13)
                {
                  v17 ^= 1u;
                }
              }

              v19 += 3;
            }

            while (v19 != v18);
          }

          v15 += 3;
        }

        while (v15 != v16);
        if (v17)
        {
          break;
        }
      }

      v14 += 3;
      if (v14 == v35)
      {
        v23 = 0;
        if (!__p)
        {
          return v23;
        }

        goto LABEL_25;
      }
    }

    v23 = 1;
    if (!__p)
    {
      return v23;
    }

LABEL_25:
    v25 = v35;
    do
    {
      v28 = *(v25 - 3);
      v25 -= 3;
      v27 = v28;
      if (v28)
      {
        v29 = *(v11 - 2);
        v26 = v27;
        if (v29 != v27)
        {
          v30 = *(v11 - 2);
          do
          {
            v32 = *(v30 - 3);
            v30 -= 24;
            v31 = v32;
            if (v32)
            {
              *(v29 - 2) = v31;
              operator delete(v31);
            }

            v29 = v30;
          }

          while (v30 != v27);
          v26 = *v25;
        }

        *(v11 - 2) = v27;
        operator delete(v26);
      }

      v11 = v25;
    }

    while (v25 != v10);
    v24 = __p;
  }

  v35 = v10;
  operator delete(v24);
  return v23;
}

std::string::size_type sub_F33154(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_F327BC(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = v3;
    v18 = exception;
    v25[0] = v17;
    v25[1] = v2;
    sub_2FF494(v25, &v22);
    sub_23E08("Referenced polygon ", &v22, &v23);
    sub_30F54(" does not exist.", &v23, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v21 = sub_2D390(v18, v19, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[*&v11[-*v11 + 6]];
  v13 = *(v12 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = -2;
  }

  LODWORD(v23.__r_.__value_.__l.__data_) = *v12;
  HIDWORD(v23.__r_.__value_.__r.__words[0]) = v13;
  LODWORD(v23.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 12);
  if (v12 >= 0xFFFFFFFE)
  {
    v12 = 4294967294;
  }

  else
  {
    v12 = v12;
  }

  v22.__r_.__value_.__r.__words[0] = v14 | (v12 << 32);
  LODWORD(v22.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  sub_320C0(&v24, &v23, &v22);
  return v24.__r_.__value_.__r.__words[0];
}

void sub_F332E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_F33368(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_F327BC(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 5u) || (v8 = *(v7 + 2)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23[0] = v5;
    v23[1] = v3;
    sub_2FF494(v23, &v20);
    sub_23E08("Referenced polygon ", &v20, &v21);
    sub_30F54(" does not exist.", &v21, &v22);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = sub_2D390(exception, v17, size);
  }

  v13 = &v12[4 * v5 + 4 + *&v12[4 * v5 + 4]];
  v14 = &v13[*&v13[-*v13 + 4]];
  v15 = &v14[*v14];

  sub_2CBB58(v15, a3);
}

void sub_F334CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_F3354C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a2[2];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 20) == __PAIR64__(v5, v3))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_25;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 20) != __PAIR64__(v5, v3))
  {
    goto LABEL_18;
  }

  return v11;
}

void *sub_F33908(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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
        if (v7[2] == v2)
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

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_F33C30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F33C44(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  a4[1] = *a4;
  sub_58168(*a2 >> 17, a2[1] >> 17);
  v8 = v7 | 0x40000000;
  do
  {
    v9 = v8;
    if (!sub_2C9DC0(a1, v8))
    {
      goto LABEL_2;
    }

    sub_2CAFAC(a1, v9, &__p);
    v10 = __p;
    v11 = v35;
    if (__p != v35)
    {
      v12 = a4[1];
      do
      {
        v13 = a4[2];
        if (v12 < v13)
        {
          *v12++ = *v10;
        }

        else
        {
          v14 = *a4;
          v15 = v12 - *a4;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            sub_1794();
          }

          v18 = v13 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *(8 * v16) = *v10;
          v12 = (8 * v16 + 8);
          memcpy(0, v14, v15);
          *a4 = 0;
          a4[1] = v12;
          a4[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        a4[1] = v12;
        ++v10;
      }

      while (v10 != v11);
    }

    sub_2CA8D4(a1, v9, &v32);
    v21 = v32;
    v20 = v33;
    if (v32 == v33)
    {
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      do
      {
        v36 = *v21;
        if (sub_2D2F88(a1, &v36, a2))
        {
          v24 = a4[1];
          v23 = a4[2];
          if (v24 < v23)
          {
            *v24 = *v21;
            v22 = (v24 + 1);
          }

          else
          {
            v25 = *a4;
            v26 = v24 - *a4;
            v27 = v26 >> 3;
            v28 = (v26 >> 3) + 1;
            if (v28 >> 61)
            {
              sub_1794();
            }

            v29 = v23 - v25;
            if (v29 >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              if (!(v30 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v27) = *v21;
            v22 = 8 * v27 + 8;
            memcpy(0, v25, v26);
            *a4 = 0;
            a4[1] = v22;
            a4[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          a4[1] = v22;
        }

        ++v21;
      }

      while (v21 != v20);
      v21 = v32;
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    v33 = v21;
    operator delete(v21);
LABEL_23:
    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

LABEL_2:
    v8 = v9 >> 2;
  }

  while (v9 >= 4);
  return sub_2CAA68(a4);
}

void sub_F33F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F33F98(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a2[2];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 20) == __PAIR64__(v5, v3))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_25;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v13 >= *&v7)
    {
      v13 %= *&v7;
    }

    if (v13 != v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 20) != __PAIR64__(v5, v3))
  {
    goto LABEL_18;
  }

  return v11;
}

void sub_F34344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F72B0(va);
  _Unwind_Resume(a1);
}

__n128 sub_F34358@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[9];
  i = *(a2 + 72);
  if (i != v6)
  {
    v9 = *(a1 + 96);
    v10 = *(a1 + 23);
    v11 = *(a1 + 84);
    v12 = a1[8];
    v13 = a1[4];
    v38 = *a1;
    v39 = *(a1 + 12);
    v41 = *(a1 + 44);
    v40 = v13;
    v42 = v12;
    v43 = v6;
    *&v44 = v11;
    DWORD2(v44) = v10;
    BYTE12(v44) = v9;
    *(&v44 + 13) = *(a1 + 97);
    HIBYTE(v44) = *(a1 + 99);
    sub_F345EC(&v38);
    v14 = *(a2 + 72);
    if (v43 == v14)
    {
      *a4 = *a2;
      *(a4 + 12) = *(a2 + 12);
      *(a4 + 32) = *(a2 + 32);
      *(a4 + 44) = *(a2 + 44);
      *(a4 + 64) = *(a2 + 64);
      *(a4 + 72) = v14;
      goto LABEL_19;
    }

    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    sub_F345EC(&v31);
    v15 = v36;
    for (i = *(a2 + 72); v36 != i; i = *(a2 + 72))
    {
      v24 = *(v6 + 8);
      v25 = *(v6 + 12);
      v6 = v43;
      v26 = *(v43 + 8);
      v27 = *(v43 + 16);
      *&v44 = v26;
      DWORD2(v44) = v27;
      if ((BYTE12(v44) & 1) == 0)
      {
        BYTE12(v44) = 1;
      }

      v28 = *(v15 + 8);
      v29 = *(v15 + 16);
      *&v37 = v28;
      DWORD2(v37) = v29;
      if ((BYTE12(v37) & 1) == 0)
      {
        BYTE12(v37) = 1;
      }

      v16 = *a3;
      v17 = v28 - v26;
      v18 = HIDWORD(v28) - HIDWORD(v26);
      v19 = atan2(v24 - v26, v25 - HIDWORD(v26));
      v20 = atan2(v17, v18);
      if (v19 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v19 >= v20)
      {
        v20 = v19;
      }

      v22 = v20 - v21;
      if (6.28318531 - v22 < v22)
      {
        v22 = 6.28318531 - v22;
      }

      v23 = *(v16 + 8);
      **v16 = **v16 + fabs(v22 + -3.14159265) / 3.14159265;
      ++*v23;
      v43 = v15;
      sub_F345EC(&v31);
      v15 = v36;
    }
  }

  *a4 = *a2;
  *(a4 + 12) = *(a2 + 12);
  *(a4 + 32) = *(a2 + 32);
  *(a4 + 44) = *(a2 + 44);
  *(a4 + 64) = *(a2 + 64);
  *(a4 + 72) = i;
LABEL_19:
  result = *(a2 + 84);
  *(a4 + 84) = result;
  return result;
}

uint64_t sub_F345EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  if (v2 != v3)
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(a1 + 96);
    *(a1 + 84) = v4;
    *(a1 + 92) = v5;
    if ((v6 & 1) == 0)
    {
      v6 = 1;
      *(a1 + 96) = 1;
    }

    v7 = exp(HIDWORD(v4) * -6.28318531 / 4294967300.0 + 3.14159265);
    v8 = atan((v7 + -1.0 / v7) * 0.5);
    *(a1 + 72) = v2 + 24;
    if (v2 + 24 != v3)
    {
      v9 = v8 * 57.2957795;
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      *(a1 + 84) = v10;
      *(a1 + 92) = v11;
      if ((v6 & 1) == 0)
      {
        *(a1 + 96) = 1;
      }

      if (v10 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v10;
      }

      if (v10 <= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v10;
      }

      if (HIDWORD(v10) >= HIDWORD(v4))
      {
        v14 = HIDWORD(v4);
      }

      else
      {
        v14 = HIDWORD(v10);
      }

      if (HIDWORD(v10) <= HIDWORD(v4))
      {
        v15 = HIDWORD(v4);
      }

      else
      {
        v15 = HIDWORD(v10);
      }

      v16 = **(a1 + 64) / 100.0;
      v17 = exp(HIDWORD(v10) * -6.28318531 / 4294967300.0 + 3.14159265);
      v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795;
      if (v9 < v18)
      {
        v18 = v9;
      }

      if (sqrt((v13 - v12) * (v13 - v12) + (v15 - v14) * (v15 - v14)) <= v16 / (0.00932288077 / (1.0 / cos(v18 / 180.0 * 3.14159265))))
      {
        v19 = v2 + 48;
        do
        {
          *(a1 + 72) = v19;
          if (v19 == v3)
          {
            break;
          }

          v20 = *(v19 + 8);
          v21 = *(v19 + 16);
          *(a1 + 84) = v20;
          *(a1 + 92) = v21;
          v22 = v20 >= v4 ? v4 : v20;
          v23 = v20 <= v4 ? v4 : v20;
          v24 = HIDWORD(v20) >= HIDWORD(v4) ? HIDWORD(v4) : HIDWORD(v20);
          v25 = HIDWORD(v20) <= HIDWORD(v4) ? HIDWORD(v4) : HIDWORD(v20);
          v26 = **(a1 + 64) / 100.0;
          v27 = exp(HIDWORD(v20) * -6.28318531 / 4294967300.0 + 3.14159265);
          v28 = atan((v27 - 1.0 / v27) * 0.5) * 57.2957795;
          if (v9 < v28)
          {
            v28 = v9;
          }

          v19 += 24;
        }

        while (sqrt((v23 - v22) * (v23 - v22) + (v25 - v24) * (v25 - v24)) <= v26 / (0.00932288077 / (1.0 / cos(v28 / 180.0 * 3.14159265))));
      }
    }
  }

  return a1;
}

uint64_t sub_F34920(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2674900;
  a2[1] = v2;
  return result;
}

uint64_t sub_F3495C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing28RouteGeometryAnomalyDetectorINS0_11DrivingModeEE53detect_geometry_outside_of_transport_network_polygonsERNS0_14GuidedRouteLegIS2_EEEUlNS_4data17TypeSafeObjectRefINS7_28TransportNetworkPolygonIdTagEEEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_F349D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 8);
  v9 = *(a3 + 12);
  v10 = *(a2 + 12);
  v11 = exp(((v9 >> 1) + (v10 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
  v12 = atan((v11 - 1.0 / v11) * 0.5);
  if (sqrt(((v10 - v9) * (v10 - v9) + (*(a2 + 8) - v8) * (*(a2 + 8) - v8))) / 100.0 * 100.0 * (cos(v12 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) >= 1.0)
  {
    v13 = *(a4 + 12);
    v14 = exp(((v9 >> 1) + (v13 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v15 = atan((v14 - 1.0 / v14) * 0.5);
    if (sqrt(((v9 - v13) * (v9 - v13) + (v8 - *(a4 + 8)) * (v8 - *(a4 + 8)))) / 100.0 * 100.0 * (cos(v15 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) >= 1.0)
    {
      v16 = *a1;
      v43 = *a2;
      v44 = v16;
      if (sub_F34DA8(&v44, &v43))
      {
        v42 = *a3;
        if (sub_F34DA8(&v44, &v42))
        {
          v41 = *a4;
          if (sub_F34DA8(&v44, &v41))
          {
            LODWORD(v17) = *(a2 + 8);
            LODWORD(v18) = *(a2 + 12);
            LODWORD(v19) = *(a3 + 8);
            LODWORD(v20) = *(a3 + 12);
            v21 = v19;
            v22 = v20;
            LODWORD(v19) = *(a4 + 8);
            LODWORD(v20) = *(a4 + 12);
            v23 = (v17 + v21) * 0.5;
            v24 = (v18 + v22) * 0.5;
            v25 = (v21 + v19) * 0.5 - v21;
            v26 = (v22 + v20) * 0.5 - v22;
            v27 = atan2(v23 - v21, v24 - v22);
            v28 = atan2(v25, v26);
            if (v27 >= v28)
            {
              v29 = v28;
            }

            else
            {
              v29 = v27;
            }

            if (v27 >= v28)
            {
              v28 = v27;
            }

            v30 = v28 - v29;
            if (6.28318531 - v30 < v30)
            {
              v30 = 6.28318531 - v30;
            }

            if (v30 == 0.0)
            {
              goto LABEL_17;
            }

            v31 = -v30;
            if (v30 > 0.0)
            {
              v31 = v30;
            }

            if (v31 < 2.22044605e-16)
            {
LABEL_17:
              v32 = INFINITY;
            }

            else
            {
              v32 = 0.0;
              if (v30 != 3.14159265)
              {
                v35 = v30 + -3.14159265;
                if (v30 + -3.14159265 <= 0.0)
                {
                  v35 = -(v30 + -3.14159265);
                }

                if (v35 >= 2.22044605e-16)
                {
                  v36 = sqrt((v21 - v23) * (v21 - v23) + (v22 - v24) * (v22 - v24));
                  v37 = sqrt(v25 * v25 + v26 * v26);
                  if (v37 >= v36)
                  {
                    v38 = v36;
                  }

                  else
                  {
                    v38 = v37;
                  }

                  v39 = v30 * 0.5;
                  v40 = tan(v30 * 0.5);
                  v32 = v38 * v40 * ((1.57079633 - v39 + 1.57079633 - v39) / (v38 * v40 * 6.28318531 * ((1.57079633 - v39 + 1.57079633 - v39) / 6.28318531)) * ((1.57079633 - v39 + 1.57079633 - v39) / (v38 * v40 * 6.28318531 * ((1.57079633 - v39 + 1.57079633 - v39) / 6.28318531))));
                }
              }
            }

            if (sub_6F544(*(a1 + 8), v32) > 0.0)
            {
              sub_685E2C();
            }

            v33 = *(a1 + 24);
            v34 = *v33;
            if (*v33 < v32)
            {
              v34 = v32;
            }

            *v33 = v34;
          }
        }
      }
    }
  }
}

BOOL sub_F34DA8(int8x8_t **a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2;
  v5 = (*a1)[1569];
  if (v5)
  {
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = *a2;
      if (*&v5 <= v3)
      {
        v7 = v3 % *&v5;
      }
    }

    else
    {
      v7 = (*&v5 - 1) & v3;
    }

    v8 = *(*&v2[1568] + 8 * v7);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        if (v6.u32[0] < 2uLL)
        {
          v10 = *&v5 - 1;
          while (1)
          {
            v11 = v9[1];
            if (v11 == v3)
            {
              if (v9[2] == v3)
              {
                goto LABEL_42;
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

        do
        {
          v12 = v9[1];
          if (v12 == v3)
          {
            if (v9[2] == v3)
            {
LABEL_42:
              v13 = (*(v9 + 6) - 3) < 2;
              v14 = v2[1574];
              if (!*&v14)
              {
                return v13;
              }

              goto LABEL_22;
            }
          }

          else
          {
            if (v12 >= *&v5)
            {
              v12 %= *&v5;
            }

            if (v12 != v7)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

LABEL_21:
  v13 = 0;
  v14 = v2[1574];
  if (!*&v14)
  {
    return v13;
  }

LABEL_22:
  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    if (*&v14 <= v3)
    {
      v4 = v3 % *&v14;
    }
  }

  else
  {
    v4 = (*&v14 - 1) & v3;
  }

  v16 = *(*&v2[1573] + 8 * v4);
  if (!v16)
  {
    return v13;
  }

  v17 = *v16;
  if (!v17)
  {
    return v13;
  }

  if (v15.u32[0] < 2uLL)
  {
    v18 = *&v14 - 1;
    while (1)
    {
      v19 = v17[1];
      if (v19 == v3)
      {
        if (v17[2] == v3)
        {
          return v13 || *(v17 + 6) == 2;
        }
      }

      else if ((v19 & v18) != v4)
      {
        return v13;
      }

      v17 = *v17;
      if (!v17)
      {
        return v13;
      }
    }
  }

  while (1)
  {
    v20 = v17[1];
    if (v20 == v3)
    {
      break;
    }

    if (v20 >= *&v14)
    {
      v20 %= *&v14;
    }

    if (v20 != v4)
    {
      return v13;
    }

LABEL_36:
    v17 = *v17;
    if (!v17)
    {
      return v13;
    }
  }

  if (v17[2] != v3)
  {
    goto LABEL_36;
  }

  return v13 || *(v17 + 6) == 2;
}

void sub_F34F90()
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
  xmmword_27BF5E0 = 0u;
  *algn_27BF5F0 = 0u;
  dword_27BF600 = 1065353216;
  sub_3A9A34(&xmmword_27BF5E0, v0);
  sub_3A9A34(&xmmword_27BF5E0, v3);
  sub_3A9A34(&xmmword_27BF5E0, __p);
  sub_3A9A34(&xmmword_27BF5E0, v9);
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
    qword_27BF5B8 = 0;
    qword_27BF5C0 = 0;
    qword_27BF5B0 = 0;
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

void sub_F351D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF5C8)
  {
    qword_27BF5D0 = qword_27BF5C8;
    operator delete(qword_27BF5C8);
  }

  _Unwind_Resume(exception_object);
}

void sub_F35284(uint64_t *a1, void *a2, uint64_t a3)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3AF824(a2);
  a1[2] = a3;
  operator new();
}

void sub_F355F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  sub_5C010(&a24);
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1A104((v24 - 96));
    if ((*(v24 - 49) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104((v24 - 96));
    if ((*(v24 - 49) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v24 - 72));
  _Unwind_Resume(a1);
}

void sub_F3568C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_F35FB8(a1, a2, &v63);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_18;
  }

  sub_19594F8(&v52);
  sub_4A5C(&v52, "Checkpoints: ", 13);
  if ((v62 & 0x10) != 0)
  {
    v5 = v61;
    if (v61 < v57)
    {
      v61 = v57;
      v5 = v57;
    }

    v6 = v56;
    v4 = (v5 - v56);
    if ((v5 - v56) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_56:
      sub_3244();
    }

LABEL_8:
    if (v4 >= 0x17)
    {
      operator new();
    }

    v51 = v4;
    if (v4)
    {
      memmove(&__dst, v6, v4);
    }

    goto LABEL_13;
  }

  if ((v62 & 8) != 0)
  {
    v6 = *(&v53 + 1);
    v4 = v55 - *(&v53 + 1);
    if (v55 - *(&v53 + 1) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_56;
    }

    goto LABEL_8;
  }

  v4 = 0;
  v51 = 0;
LABEL_13:
  *(&__dst.__locale_ + v4) = 0;
  sub_7E854(&__dst, 2u);
  if (v51 < 0)
  {
    operator delete(__dst.__locale_);
  }

  if (SHIBYTE(v60[1]) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v53);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_18:
  v7 = v63;
  v8 = v64;
  if (v63 != v64)
  {
    while (!sub_7E7E4(2u))
    {
LABEL_21:
      v7 += 2;
      if (v7 == v8)
      {
        goto LABEL_39;
      }
    }

    sub_19594F8(&v52);
    sub_4A5C(&v52, "For segment: ", 13);
    v10 = std::ostream::operator<<();
    v11 = sub_4A5C(v10, " road", 5);
    v12 = sub_4D1F50(a2, v7[1]);
    v13 = sub_30E900(v11, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL);
    v14 = sub_4A5C(v13, " ", 1);
    v15 = sub_2FF718(v14, __ROR8__(*v7, 32));
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&__dst, &std::ctype<char>::id);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    if ((v62 & 0x10) != 0)
    {
      v18 = v61;
      v19 = &v56;
      if (v61 < v57)
      {
        v61 = v57;
        v18 = v57;
        v19 = &v56;
      }
    }

    else
    {
      if ((v62 & 8) == 0)
      {
        v17 = 0;
        v51 = 0;
LABEL_35:
        *(&__dst.__locale_ + v17) = 0;
        sub_7E854(&__dst, 2u);
        if (v51 < 0)
        {
          operator delete(__dst.__locale_);
        }

        *&v52 = v47;
        *(&v52 + *(v47 - 24)) = v9;
        if (SHIBYTE(v60[1]) < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v53);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_21;
      }

      v18 = v55;
      v19 = &v53 + 1;
    }

    v20 = *v19;
    v17 = v18 - *v19;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    v51 = v18 - *v19;
    if (v17)
    {
      memmove(&__dst, v20, v17);
    }

    goto LABEL_35;
  }

LABEL_39:
  sub_F36258(a1, a2, &v63, a3);
  v21 = *a3;
  v22 = *(a3 + 8);
  if (*a3 != v22)
  {
    do
    {
      sub_F3667C(a1, v21);
      v21 += 104;
    }

    while (v21 != v22);
  }

  sub_F36A84(a1, a2, a3);
  v23 = sub_F4A280(*a3, *(a3 + 8));
  v24 = *(a3 + 8);
  v25 = a2;
  if (v23 == v24)
  {
    if (*a3 != v24)
    {
      goto LABEL_73;
    }
  }

  else
  {
    sub_F48288(a3, v23);
    v25 = a2;
    if (*a3 != *(a3 + 8))
    {
      goto LABEL_73;
    }
  }

  if (sub_4D1DC0(v25) >= 2)
  {
    v26 = sub_4D1DC0(a2) - 1;
    v27 = sub_4D1F50(a2, v26);
    v28 = (*v27 - **v27);
    if (*v28 >= 9u && (v29 = v28[4]) != 0)
    {
      v30 = *(*v27 + v29);
    }

    else
    {
      v30 = 0;
    }

    sub_F3700C(a1, a2, 0, 0, v26, v30, 1, &v52);
    v31 = *(a3 + 8);
    if (v31 >= *(a3 + 16))
    {
      sub_F47DA0(a3, &v52);
      v39 = v60[0];
      *(a3 + 8) = v40;
      if (v39)
      {
        v41 = v60[1];
        v42 = v39;
        if (v60[1] != v39)
        {
          do
          {
            v43 = *(v41 - 8);
            if (v43)
            {
              *(v41 - 7) = v43;
              operator delete(v43);
            }

            v41 -= 96;
          }

          while (v41 != v39);
          v42 = v60[0];
        }

        v60[1] = v39;
        operator delete(v42);
      }
    }

    else
    {
      v32 = v52;
      v33 = v53;
      *(v31 + 32) = v54;
      *v31 = v32;
      *(v31 + 16) = v33;
      v34 = v55;
      v35 = v57;
      v55 = 0;
      *(v31 + 56) = v57;
      *(v31 + 40) = v34;
      *(v31 + 48) = v56;
      v56 = 0;
      v36 = v58;
      *(v31 + 64) = v58;
      *(v31 + 72) = __p;
      if (v36)
      {
        v37 = v35[1];
        v38 = *(v31 + 48);
        if ((v38 & (v38 - 1)) != 0)
        {
          if (v37 >= v38)
          {
            v37 %= v38;
          }
        }

        else
        {
          v37 &= v38 - 1;
        }

        v34[v37] = v31 + 56;
        v57 = 0;
        v58 = 0;
      }

      *(v31 + 80) = 0;
      *(v31 + 88) = 0;
      *(v31 + 96) = 0;
      *(v31 + 80) = *v60;
      *(v31 + 96) = v61;
      v60[0] = 0;
      v60[1] = 0;
      v61 = 0;
      *(a3 + 8) = v31 + 104;
    }

    v44 = v57;
    if (v57)
    {
      do
      {
        v45 = *v44;
        operator delete(v44);
        v44 = v45;
      }

      while (v45);
    }

    v46 = v55;
    v55 = 0;
    if (v46)
    {
      operator delete(v46);
    }
  }

LABEL_73:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_F35F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  sub_F38730(&a21);
  sub_F387CC(a10);
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void sub_F35FB8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = sub_4D1F50(a2, v9);
      v11 = *(v10 + 8);
      v12 = (v11 - *v11);
      if (*v12 >= 0x11u && (v13 = v12[8]) != 0)
      {
        v14 = *(v11 + v13);
        v15 = *(a1 + 208);
        v16 = *(*(a1 + 16) + 1567);
        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = 0;
        v15 = *(a1 + 208);
        v16 = *(*(a1 + 16) + 1567);
        if (v15)
        {
          goto LABEL_14;
        }
      }

      if ((v16 & 1) == 0)
      {
        if ((v14 & 0x40) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

LABEL_14:
      if (!v15 || (v16 & 1) != 0)
      {
        if ((v15 & 1) != 0 || !v16)
        {
          if ((v14 & 0x60C0) != 0)
          {
LABEL_23:
            v17 = *(a1 + 8);
            v18 = *(v10 + 32);
            v26 = v18;
            v28 = BYTE6(v18);
            v27 = WORD2(v18);
            v19 = sub_316FF8(v17, &v26);
            if (v19 <= 0xFFFFFFFEFFFFFFFFLL && v19)
            {
              v20 = a3[2];
              if (v8 < v20)
              {
                *v8 = v19;
                *(v8 + 8) = v9;
                v8 += 16;
              }

              else
              {
                v21 = v8;
                v22 = v8 >> 4;
                v23 = v22 + 1;
                if ((v22 + 1) >> 60)
                {
                  *a3 = 0;
                  sub_1794();
                }

                if (v20 >> 3 > v23)
                {
                  v23 = v20 >> 3;
                }

                if (v20 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v24 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v24 = v23;
                }

                if (v24)
                {
                  if (!(v24 >> 60))
                  {
                    operator new();
                  }

                  *a3 = 0;
                  sub_1808();
                }

                v25 = (16 * v22);
                *v25 = v19;
                v25[1] = v9;
                v8 = 16 * v22 + 16;
                memcpy(0, 0, v21);
                a3[1] = v8;
                a3[2] = 0;
              }

              a3[1] = v8;
            }
          }
        }

        else if ((v14 & 0x2040) != 0)
        {
          goto LABEL_23;
        }
      }

      else if ((v14 & 0xC0) != 0)
      {
        goto LABEL_23;
      }

LABEL_5:
      if (v7 == ++v9)
      {
        goto LABEL_37;
      }
    }
  }

  v8 = 0;
LABEL_37:
  *a3 = 0;
  *(*(a1 + 296) + 64) += v8 >> 4;
}

void sub_F36214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  *v9 = __p;
  if (__p)
  {
    v9[1] = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F36258(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = sub_4D1DC0(a2);
  if (*a3 == a3[1])
  {
    v9 = v8 - 1;
    v10 = sub_4D1F50(a2, v8 - 1);
    v11 = (*v10 - **v10);
    if (*v11 >= 9u && (v12 = v11[4]) != 0)
    {
      v13 = *(*v10 + v12);
    }

    else
    {
      v13 = 0;
    }

    sub_F3700C(a1, a2, 0, 0, v9, v13, 0, v30);
    v14 = a4[1];
    if (v14 >= a4[2])
    {
      sub_F47DA0(a4, v30);
      v22 = __p[0];
      a4[1] = v23;
      if (v22)
      {
        v24 = __p[1];
        v25 = v22;
        if (__p[1] != v22)
        {
          do
          {
            v26 = *(v24 - 8);
            if (v26)
            {
              *(v24 - 7) = v26;
              operator delete(v26);
            }

            v24 -= 96;
          }

          while (v24 != v22);
          v25 = __p[0];
        }

        __p[1] = v22;
        operator delete(v25);
      }
    }

    else
    {
      v15 = v30[0];
      v16 = v30[1];
      *(v14 + 32) = v31;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v32;
      v18 = v34;
      v32 = 0;
      *(v14 + 56) = v34;
      *(v14 + 40) = v17;
      *(v14 + 48) = v33;
      v33 = 0;
      v19 = v35;
      *(v14 + 64) = v35;
      *(v14 + 72) = v36;
      if (v19)
      {
        v20 = v18[1];
        v21 = *(v14 + 48);
        if ((v21 & (v21 - 1)) != 0)
        {
          if (v20 >= v21)
          {
            v20 %= v21;
          }
        }

        else
        {
          v20 &= v21 - 1;
        }

        v17[v20] = v14 + 56;
        v34 = 0;
        v35 = 0;
      }

      *(v14 + 80) = 0;
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = *__p;
      *(v14 + 96) = v38;
      __p[0] = 0;
      __p[1] = 0;
      v38 = 0;
      a4[1] = v14 + 104;
    }

    v27 = v34;
    if (v34)
    {
      do
      {
        v28 = *v27;
        operator delete(v27);
        v27 = v28;
      }

      while (v28);
    }

    v29 = v32;
    v32 = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    sub_F38808(a1, a2, a3, a4);
    if ((a3[1] - *a3) >> 4 != 1)
    {
      operator new();
    }

    sub_F3B71C(a1, a2, a3, a4);
  }
}

void sub_F365F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_F38730(va);
  sub_F387CC(v5);
  _Unwind_Resume(a1);
}

void sub_F3660C(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_F387CC(v1);
  _Unwind_Resume(a1);
}

void sub_F3667C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    if (sub_681D38(a2) != 1)
    {
      v4 = sub_73ECC(a2);
      v5 = *v4;
      v6 = v4[1];
      if (*v4 != v6)
      {
        v7 = 0.25;
        v8 = 1.0;
        v33 = vdupq_n_s64(0xC066800000000000);
        v34 = vdupq_n_s64(0x4076800000000000uLL);
        v31 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        v32 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        do
        {
          while (1)
          {
            v9 = fmin(*(a1 + 88) / 100.0 / (v5[9] / 100.0), v7);
            sub_2F4C8(v5 + 4, 0, &v37, v9, v8 - v9);
            v10 = v5[4];
            if (v10)
            {
              v5[5] = v10;
              operator delete(v10);
            }

            v13 = v37;
            *(v5 + 2) = v37;
            v5[6] = v38;
            v11 = *(&v13 + 1);
            v12 = v13;
            *&v13 = 0;
            if (v12 != *(&v13 + 1))
            {
              v14 = (v12 + 12);
              if (v12 + 12 != *(&v13 + 1))
              {
                break;
              }
            }

LABEL_18:
            v29 = 0;
            if ((((*&v13 + *&v13) + 1) >> 1) >= 9.22337204e18)
            {
              goto LABEL_5;
            }

LABEL_23:
            if (v29)
            {
              if (*&v13 > -4.50359963e15)
              {
                v30 = (*&v13 + *&v13) - 1 + (((*&v13 + *&v13) - 1) >> 63);
LABEL_28:
                *&v13 = (v30 >> 1);
              }
            }

            else if (*&v13 < 4.50359963e15)
            {
              v30 = (*&v13 + *&v13) + 1;
              goto LABEL_28;
            }

            v5[9] = *&v13;
            v5 += 12;
            if (v5 == v6)
            {
              return;
            }
          }

          v15 = 0.0;
          do
          {
            LODWORD(v13) = *(v14 - 2);
            v16 = exp(3.14159265 - v13 * 6.28318531 / 4294967300.0);
            *&v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795;
            LODWORD(v18) = *(v14 - 3);
            HIDWORD(v18) = *v14;
            v35 = v18;
            v19 = *&v17 * 0.0174532925;
            LODWORD(v17) = v14[1];
            v20 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
            v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
            v22.i64[0] = v35;
            v22.i64[1] = HIDWORD(v35);
            v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), v34), v32), v33), v31);
            v36 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
            v24 = sin((v19 - v21) * 0.5);
            v25 = v24 * v24;
            v26 = cos(v19);
            v27 = v26 * cos(v21);
            v28 = sin(0.5 * v36);
            v8 = 1.0;
            *&v13 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
            *&v13 = (*&v13 + *&v13) * 6372797.56;
            v15 = v15 + *&v13;
            v14 += 3;
          }

          while (v14 != v11);
          *&v13 = v15 * 100.0;
          if (v15 * 100.0 >= 0.0)
          {
            if (*&v13 >= 4.50359963e15)
            {
              v29 = 0;
              v7 = 0.25;
              if (*&v13 < 9.22337204e18)
              {
                goto LABEL_23;
              }

              goto LABEL_5;
            }

            v7 = 0.25;
            goto LABEL_18;
          }

          if (*&v13 <= -4.50359963e15)
          {
            v29 = 1;
            v7 = 0.25;
            if (*&v13 >= 9.22337204e18)
            {
              goto LABEL_5;
            }

            goto LABEL_23;
          }

          v29 = 1;
          v7 = 0.25;
          if ((((*&v13 + *&v13) - 1) / 2) < 9.22337204e18)
          {
            goto LABEL_23;
          }

LABEL_5:
          v5[9] = 0x7FFFFFFFFFFFFFFELL;
          v5 += 12;
        }

        while (v5 != v6);
      }
    }
  }
}

void sub_F36A84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 - *a3;
  if (v6 == 104)
  {

    sub_F535D8(v4, 1uLL);
    return;
  }

  v88 = 0;
  v89 = a1;
  v8 = 0x4EC4EC4EC4EC4EC5 * (v6 >> 3);
  __p = 0;
  v87 = 0;
  if (v5 != v4)
  {
    sub_49A9B0(&__p, 0x4EC4EC4EC4EC4EC5 * (v6 >> 3));
    v4 = *a3;
    v5 = a3[1];
    v8 = 0x4EC4EC4EC4EC4EC5 * ((v5 - *a3) >> 3);
  }

  if (v5 != v4)
  {
    v9 = 0;
    v84 = a1;
    v83 = v8;
    while (1)
    {
      v10 = __p;
      v11 = sub_73ECC(*a3 + 104 * v9);
      v12 = &v10[24 * v9];
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 5);
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((*(v12 + 1) - *v12) >> 3);
      if (v13 <= v14)
      {
        if (v13 < v14)
        {
          *(v12 + 1) = *v12 + 40 * v13;
        }
      }

      else
      {
        sub_F4834C(v12, v13 - v14);
      }

      if (!v9)
      {
        break;
      }

      v15 = sub_73ECC(*a3 + 104 * v9);
      v16 = v15[1] - *v15;
      if (v16)
      {
        v17 = 0;
        v85 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 5);
        v18 = v9 - 1;
        do
        {
          v19 = *sub_73ECC(*a3 + 104 * v9) + 96 * v17;
          v20 = *(v19 + 56);
          v21 = *(a1 + 56);
          v22 = 0.0;
          v23 = 0.0;
          v24 = v21 >= v20;
          v25 = v21 - v20;
          if (v24)
          {
            v23 = *(a1 + 64) * v25;
            if ((*(v19 + 89) & 1) == 0)
            {
LABEL_33:
              v22 = *(a1 + 72);
              v26 = 0.0;
              if (*(v19 + 88))
              {
                goto LABEL_22;
              }

LABEL_21:
              v26 = *(a1 + 72);
              goto LABEL_22;
            }
          }

          else if ((*(v19 + 89) & 1) == 0)
          {
            goto LABEL_33;
          }

          v26 = 0.0;
          if ((*(v19 + 88) & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_22:
          v27 = sub_73ECC(*a3 + 104 * v18);
          v28 = v27[1] - *v27;
          if (v28)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = v23 + v22 + v26;
            v33 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 5);
            do
            {
              v34 = *sub_73ECC(*a3 + 104 * v18);
              v35 = sub_73ECC(*a3 + 104 * v9);
              v41 = sub_F3E55C(&v89, v34 + v30, *v35 + 96 * v17, v36, v37, v38, v39, v40);
              v42 = *(__p + 3 * v18) + v29;
              v43 = v32 + v41 + *(v42 + 32);
              if (*(v42 + 24) >= v41)
              {
                v41 = *(v42 + 24);
              }

              v44 = *(__p + 3 * v9) + 40 * v17;
              v45 = *(v44 + 32);
              v46 = v43 < v45;
              if (v43 == v45)
              {
                v46 = v41 < *(v44 + 24);
              }

              if (v46)
              {
                *v44 = v17;
                *(v44 + 8) = v9;
                *(v44 + 16) = v31;
                *(v44 + 24) = v41;
                *(v44 + 32) = v43;
              }

              ++v31;
              v30 += 96;
              v29 += 40;
            }

            while (v33 != v31);
          }

          ++v17;
          a1 = v84;
        }

        while (v17 != v85);
      }

LABEL_9:
      if (++v9 == v83)
      {
        goto LABEL_45;
      }
    }

    v47 = *(__p + 1);
    if (v47 == *__p)
    {
      goto LABEL_9;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((v47 - *__p) >> 3);
    while (1)
    {
      v53 = *sub_73ECC(*a3);
      v54 = v53 + v49;
      v55 = *(v53 + v49 + 56);
      v56 = *(a1 + 56);
      v57 = 0.0;
      v58 = 0.0;
      v24 = v56 >= v55;
      v59 = v56 - v55;
      if (v24)
      {
        v58 = *(a1 + 64) * v59;
        if (*(v54 + 89))
        {
LABEL_40:
          v60 = 0.0;
          if ((*(v53 + v49 + 88) & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_37;
        }
      }

      else if (*(v54 + 89))
      {
        goto LABEL_40;
      }

      v57 = *(a1 + 72);
      v60 = 0.0;
      if ((*(v53 + v49 + 88) & 1) == 0)
      {
LABEL_44:
        v60 = *(a1 + 72);
      }

LABEL_37:
      v52 = *__p + v48;
      *v52 = v50;
      *(v52 + 8) = xmmword_2266B40;
      *(v52 + 24) = 0;
      *(v52 + 32) = v58 + v57 + v60;
      ++v50;
      v49 += 96;
      v48 += 40;
      if (v51 == v50)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_45:
  v61 = *(v87 - 3);
  v62 = *(v87 - 2);
  v63 = v61 + 40;
  if (v61 != v62 && v63 != v62)
  {
    do
    {
      v65 = *(v63 + 32);
      v66 = *(v61 + 32);
      v67 = *(v63 + 24) < *(v61 + 24);
      if (v65 != v66)
      {
        v67 = v65 < v66;
      }

      if (v67)
      {
        v61 = v63;
      }

      v63 += 40;
    }

    while (v63 != v62);
  }

  while (1)
  {
    v68 = *v61;
    v69 = *(v61 + 8);
    v70 = *(v61 + 16);
    v71 = *a3 + 104 * v69;
    v72 = *sub_73ECC(v71);
    v73 = v72 + 96 * v68;
    v74 = *(v73 + 16);
    *v72 = *v73;
    *(v72 + 16) = v74;
    if (v68)
    {
      sub_35354C((v72 + 32), *(v73 + 32), *(v73 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v73 + 40) - *(v73 + 32)) >> 2));
    }

    v75 = *(v73 + 56);
    v76 = *(v73 + 72);
    *(v72 + 87) = *(v73 + 87);
    *(v72 + 72) = v76;
    *(v72 + 56) = v75;
    sub_F535D8(v71, 1uLL);
    v77 = __p;
    if (!v69)
    {
      break;
    }

    v61 = *(__p + 3 * v69 - 3) + 40 * v70;
  }

  if (__p)
  {
    v78 = v87;
    v79 = __p;
    if (v87 != __p)
    {
      v80 = v87;
      do
      {
        v82 = *(v80 - 3);
        v80 -= 24;
        v81 = v82;
        if (v82)
        {
          *(v78 - 2) = v81;
          operator delete(v81);
        }

        v78 = v80;
      }

      while (v80 != v77);
      v79 = __p;
    }

    v87 = v77;
    operator delete(v79);
  }
}

void sub_F36FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, void *a16)
{
  if (a15)
  {
    sub_21E548C(&a16, a15, &a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_F3700C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v12 = a2;
  if (!sub_7E7E4(2u))
  {
    goto LABEL_19;
  }

  sub_19594F8(&v227);
  sub_4A5C(&v227, "Using center line between ", 26);
  v15 = std::ostream::operator<<();
  sub_4A5C(v15, " and ", 5);
  std::ostream::operator<<();
  if ((v235 & 0x10) != 0)
  {
    v17 = v234;
    if (v234 < v231)
    {
      v234 = v231;
      v17 = v231;
    }

    v18 = a8;
    v19 = *(&v230 + 1);
    v16 = v17 - *(&v230 + 1);
    if (v17 - *(&v230 + 1) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_208:
      sub_3244();
    }

LABEL_8:
    if (v16 >= 0x17)
    {
      operator new();
    }

    BYTE7(v223) = v16;
    if (v16)
    {
      memmove(&__dst, v19, v16);
    }

    a8 = v18;
    goto LABEL_14;
  }

  if ((v235 & 8) != 0)
  {
    v18 = a8;
    v19 = *(&v228 + 1);
    v16 = v230 - *(&v228 + 1);
    if (v230 - *(&v228 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
      goto LABEL_208;
    }

    goto LABEL_8;
  }

  v16 = 0;
  BYTE7(v223) = 0;
LABEL_14:
  *(&__dst + v16) = 0;
  sub_7E854(&__dst, 2u);
  if (SBYTE7(v223) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v233) < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v228);
  std::ostream::~ostream();
  std::ios::~ios();
  v12 = a2;
LABEL_19:
  *&v227 = a3;
  *(&v227 + 1) = a4;
  *&v228 = a5;
  *(&v228 + 1) = a6;
  v230 = 0u;
  v231 = 0u;
  v229 = 3;
  LODWORD(__p) = 1065353216;
  v234 = 0;
  v233 = 0uLL;
  sub_68179C(&v227, 1);
  v20 = sub_73ECC(&v227);
  v21 = v20;
  v22 = v20[1];
  v23 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *v20) >> 5);
  if (v22 == *v20)
  {
    sub_F48B50(v20, 1 - v23);
  }

  else if (v23 >= 2)
  {
    v24 = *v20 + 96;
    while (v22 != v24)
    {
      v25 = *(v22 - 64);
      if (v25)
      {
        *(v22 - 56) = v25;
        operator delete(v25);
      }

      v22 -= 96;
    }

    v21[1] = v24;
    v12 = a2;
  }

  v26 = *sub_73ECC(&v227);
  v27 = (v26 + 32);
  if (a3 == a5)
  {
    v28 = sub_4D1F50(v12, a3);
    sub_2B7A20(*a1, v28[4] & 0xFFFFFFFFFFFFFFLL, &__dst);
    v29 = sub_588D8(&v227);
    v31 = (*v28 - **v28);
    v32 = 0.0;
    if (*v31 >= 9u)
    {
      v33 = v31[4];
      if (v33)
      {
        LODWORD(v30) = *(*v28 + v33);
        v32 = v30;
      }
    }

    v34 = sub_5FC64(&v227);
    v35 = (*v28 - **v28);
    v36 = 0.0;
    if (*v35 >= 9u)
    {
      v37 = v35[4];
      if (v37)
      {
        LODWORD(v36) = *(*v28 + v37);
        v36 = *&v36;
      }
    }

    sub_F3EAF4(&__dst, 0, v219, v29 / v32, v34 / v36);
    v38 = *v27;
    if (*v27)
    {
      *(v26 + 40) = v38;
      operator delete(v38);
      *v27 = 0;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
    }

    *(v26 + 32) = *v219;
    *(v26 + 48) = v220[0];
    ++*(*(a1 + 296) + 52);
    v39 = v228;
    *a8 = v227;
    *(a8 + 16) = v39;
    *(a8 + 32) = v229;
    v40 = v230;
    *(a8 + 40) = v230;
    v230 = 0uLL;
    v41 = v231;
    *(a8 + 56) = v231;
    *(a8 + 72) = __p;
    if (*(&v41 + 1))
    {
      v42 = *(v41 + 8);
      if ((*(&v40 + 1) & (*(&v40 + 1) - 1)) != 0)
      {
        if (v42 >= *(&v40 + 1))
        {
          v42 %= *(&v40 + 1);
        }
      }

      else
      {
        v42 &= *(&v40 + 1) - 1;
      }

      *(v40 + 8 * v42) = a8 + 56;
      v231 = 0uLL;
    }

    *(a8 + 80) = v233;
    *(a8 + 96) = v234;
    v234 = 0;
    v233 = 0uLL;
    if (*(&__dst + 1))
    {
      *&v223 = *(&__dst + 1);
      operator delete(*(&__dst + 1));
    }

    goto LABEL_194;
  }

  v211 = sub_45AC50(&v227);
  v43 = sub_45AC50(&v227);
  v44 = sub_588E0(&v227);
  if (v43 <= v44 + 1)
  {
    v45 = v44 + 1;
  }

  else
  {
    v45 = v43;
  }

  if (v43 < v44 + 1)
  {
    v46 = 0.45;
    v47 = 0.55;
    v48 = 1.0;
    *&v49 = 6.28318531;
    v214 = vdupq_n_s64(0xC066800000000000);
    v215 = vdupq_n_s64(0x4076800000000000uLL);
    v213 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v212 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v200 = a8;
    do
    {
      v50 = sub_4D1F50(v12, v43);
      v51 = v50;
      v52 = (*v50 - **v50);
      if (*v52 >= 9u && (v53 = v52[4]) != 0)
      {
        v54 = *(*v50 + v53);
      }

      else
      {
        v54 = 0;
      }

      sub_2B7A20(*a1, v50[4] & 0xFFFFFFFFFFFFFFLL, &__dst);
      sub_31BF20(&__dst, v225);
      if (*(&__dst + 1))
      {
        *&v223 = *(&__dst + 1);
        operator delete(*(&__dst + 1));
      }

      v55 = v51[1];
      v56 = (v55 - *v55);
      if (*v56 >= 0x11u && (v57 = v56[8]) != 0)
      {
        v58 = *(v55 + v57);
        if (*(a1 + 208))
        {
          goto LABEL_60;
        }
      }

      else
      {
        v58 = 0;
        if (*(a1 + 208))
        {
          goto LABEL_60;
        }
      }

      if ((*(*(a1 + 16) + 1567) & 1) == 0)
      {
        if ((v58 & 0x40) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_60:
      if (!*(a1 + 208) || (*(*(a1 + 16) + 1567) & 1) != 0)
      {
        if ((*(a1 + 208) & 1) != 0 || !*(*(a1 + 16) + 1567))
        {
          if ((v58 & 0x60C0) == 0)
          {
            goto LABEL_91;
          }
        }

        else if ((v58 & 0x2040) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((v58 & 0xC0) == 0)
      {
        goto LABEL_91;
      }

LABEL_69:
      v59 = *v51;
      v60 = (*v51 - **v51);
      v61 = *v60;
      if (*(v51 + 38))
      {
        if (v61 < 0x9B)
        {
          goto LABEL_91;
        }

        v62 = v60[77];
        if (!v62 || (*&v59[v62] & 2) == 0)
        {
          goto LABEL_91;
        }
      }

      else if (v61 < 0x9B || (v63 = v60[77]) == 0 || (*&v59[v63] & 1) == 0)
      {
LABEL_91:
        sub_318AE8(v27, *(v26 + 40), v225[0], v225[1], 0xAAAAAAAAAAAAAAABLL * ((v225[1] - v225[0]) >> 2));
        goto LABEL_92;
      }

      v64 = sub_F3ECB8(a1, v12, &v227, v43, 1);
      v65 = v12;
      v66 = v64;
      v67 = sub_F3EEF8(a1, v65, &v227, v43, 1);
      v68 = v54 / 100.0;
      v69 = v66 / 100.0 / v68;
      v70 = v67 / 100.0 / v68;
      v71 = fmin(v69, v46);
      v72 = fmax(v70, v47);
      if (a7)
      {
        v70 = v72;
        v69 = v71;
      }

      if (v69 >= v70)
      {
        v12 = a2;
      }

      else
      {
        sub_2F4C8(v225, 0, &__dst, v69, v70);
        v12 = a2;
        if (v225[0])
        {
          v225[1] = v225[0];
          operator delete(v225[0]);
        }

        *v225 = __dst;
        v226 = v223;
        v73 = *(&__dst + 1);
        v74 = __dst;
        if (__dst == *(&__dst + 1))
        {
LABEL_103:
          if (v74 != v73)
          {
            v225[1] = v74;
            v12 = a2;
          }
        }

        else
        {
          while (1)
          {
            v75 = v74 + 3;
            if (v74 + 3 == *(&__dst + 1))
            {
              break;
            }

            v76 = *v74 == v74[3] && v74[1] == v74[4];
            v74 += 3;
            if (v76)
            {
              v77 = v75 + 3;
              v78 = v75 - 3;
              if (v77 != *(&__dst + 1))
              {
                do
                {
                  if (*v78 != *v77 || v78[1] != v77[1])
                  {
                    v80 = v77[2];
                    *(v78 + 3) = *v77;
                    v78 += 3;
                    v78[2] = v80;
                  }

                  v77 += 3;
                }

                while (v77 != v73);
                v73 = v225[1];
              }

              v74 = v78 + 3;
              goto LABEL_103;
            }
          }
        }

        a8 = v200;
        if (sub_F3F148(a1, v12, v43) >= 1 && v54)
        {
          *&__dst = v225[0];
          v219[0] = v225[1];
          sub_F49F68(&__dst, v219);
        }

        sub_F532AC(&v227, v43);
        if (v43 != sub_45AC50(&v227))
        {
          v81 = sub_4D1F50(v12, v211);
          v82 = (*v81 - **v81);
          v83 = *v82;
          if (*(v81 + 38))
          {
            if (v83 < 0x49)
            {
              goto LABEL_121;
            }

            v84 = v82[36];
            if (!v84)
            {
              goto LABEL_121;
            }

LABEL_117:
            v85 = *(*v81 + v84);
            v86 = *v51;
            v87 = (*v51 - **v51);
            v88 = *v87;
            if (!*(v51 + 38))
            {
              goto LABEL_118;
            }

LABEL_122:
            if (v88 >= 0x4B)
            {
              v89 = v87[37];
              if (v89)
              {
                goto LABEL_124;
              }
            }

LABEL_125:
            v90 = 0xFFFF;
          }

          else
          {
            if (v83 >= 0x4B)
            {
              v84 = v82[37];
              if (v84)
              {
                goto LABEL_117;
              }
            }

LABEL_121:
            v85 = -1;
            v86 = *v51;
            v87 = (*v51 - **v51);
            v88 = *v87;
            if (*(v51 + 38))
            {
              goto LABEL_122;
            }

LABEL_118:
            if (v88 < 0x49)
            {
              goto LABEL_125;
            }

            v89 = v87[36];
            if (!v89)
            {
              goto LABEL_125;
            }

LABEL_124:
            v90 = *&v86[v89];
          }

          v91 = v85 + 18000;
          v92 = v85 - 18000;
          if ((v91 >> 5) < 0x465u)
          {
            v92 = v91;
          }

          v93 = v90 - v92;
          if (v93 > 18000)
          {
            v93 -= 36000;
          }

          if (v93 < -17999)
          {
            v93 += 36000;
          }

          v94 = *(v26 + 40);
          if (*(a1 + 146) != 1 || (v95 = *v27, *v27 == v94) || fabs(v93 / 100.0) <= *(a1 + 152))
          {
            sub_318AE8(v27, *(v26 + 40), v225[0], v225[1], 0xAAAAAAAAAAAAAAABLL * ((v225[1] - v225[0]) >> 2));
            v211 = v43;
          }

          else
          {
            v209 = *&v49;
            v198 = v47;
            v199 = v46;
            v96 = *(a1 + 160);
            v192 = *&v96;
            v97 = v95 + 12;
            v196 = v95 + 12;
            for (i = 0.0; v97 != v94; v97 += 12)
            {
              LODWORD(v96) = *(v97 - 2);
              v99 = exp(3.14159265 - *&v96 * v209 / 4294967300.0);
              *&v100 = atan((v99 - 1.0 / v99) * 0.5) * 57.2957795;
              LODWORD(v101) = *(v97 - 3);
              HIDWORD(v101) = *v97;
              v201 = v101;
              v102 = *&v100 * 0.0174532925;
              LODWORD(v100) = *(v97 + 1);
              v103 = exp(3.14159265 - v100 * v209 / 4294967300.0);
              v104 = atan((v103 - 1.0 / v103) * 0.5) * 57.2957795 * 0.0174532925;
              v105.i64[0] = v201;
              v105.i64[1] = HIDWORD(v201);
              v106 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v105), v215), v213), v214), v212);
              v202 = vsubq_f64(v106, vdupq_laneq_s64(v106, 1)).f64[0];
              v107 = sin((v102 - v104) * 0.5);
              v108 = v107 * v107;
              v109 = cos(v102);
              v110 = v109 * cos(v104);
              v111 = sin(0.5 * v202);
              v112 = v111 * v111 * v110 + v108;
              v48 = 1.0;
              v113 = atan2(sqrt(v112), sqrt(1.0 - v112));
              v96 = (v113 + v113) * 6372797.56;
              i = i + v96;
            }

            LOBYTE(v241) = 0;
            if (0xAAAAAAAAAAAAAAABLL * ((v94 - v95) >> 2) > 1)
            {
              v236 = 0;
              __dst = 0u;
              v223 = 0u;
              v114 = fmax(v48 - v192 / 100.0 / i, 0.0);
              v224 = 0u;
              v243[0] = 0;
              v115 = v95 + 12;
              if (v196 == v94)
              {
                *&v217 = v114 * 0.0;
                v219[0] = v243;
                v219[1] = &__dst;
                v220[0] = &v241;
                v220[1] = &v236;
                *&v221 = &v217;
              }

              else
              {
                v193 = v114;
                v116 = 0.0;
                do
                {
                  LODWORD(v114) = *(v115 - 2);
                  v117 = exp(3.14159265 - *&v114 * v209 / 4294967300.0);
                  *&v118 = atan((v117 - 1.0 / v117) * 0.5) * 57.2957795;
                  LODWORD(v119) = *(v115 - 3);
                  HIDWORD(v119) = *v115;
                  v203 = v119;
                  v120 = *&v118 * 0.0174532925;
                  LODWORD(v118) = *(v115 + 1);
                  v121 = exp(3.14159265 - v118 * v209 / 4294967300.0);
                  v122 = atan((v121 - 1.0 / v121) * 0.5) * 57.2957795 * 0.0174532925;
                  v123.i64[0] = v203;
                  v123.i64[1] = HIDWORD(v203);
                  v124 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v123), v215), v213), v214), v212);
                  v204 = vsubq_f64(v124, vdupq_laneq_s64(v124, 1)).f64[0];
                  v125 = sin((v120 - v122) * 0.5);
                  v126 = v125 * v125;
                  v127 = cos(v120);
                  v128 = v127 * cos(v122);
                  v129 = sin(0.5 * v204);
                  v130 = v129 * v129 * v128 + v126;
                  v48 = 1.0;
                  v131 = atan2(sqrt(v130), sqrt(1.0 - v130));
                  v114 = (v131 + v131) * 6372797.56;
                  v116 = v116 + v114;
                  v115 += 12;
                }

                while (v115 != v94);
                v132 = v193 * v116;
                *&v217 = v193 * v116;
                v219[0] = v243;
                v219[1] = &__dst;
                v220[0] = &v241;
                v220[1] = &v236;
                *&v221 = &v217;
                if (v196 != v94)
                {
                  do
                  {
                    sub_316F0(v219, v95, v95 + 3, v132);
                    v133 = v95 + 24;
                    v95 += 12;
                  }

                  while (v133 != v94);
                }
              }
            }

            else
            {
              sub_313A4(&__dst, v27, v27);
            }

            v134 = *(a1 + 160);
            v194 = *&v134;
            v135 = v225[0];
            v136 = v225[1];
            v137 = v225[0] + 12;
            v138 = v225[0] == v225[1] || v137 == v225[1];
            v139 = v138;
            v197 = v139;
            v140 = 0.0;
            v141 = 0.5;
            if (!v138)
            {
              v142 = v225[0] + 12;
              do
              {
                LODWORD(v134) = *(v142 - 2);
                v143 = exp(3.14159265 - *&v134 * v209 / 4294967300.0);
                *&v144 = atan((v143 - 1.0 / v143) * v141) * 57.2957795;
                LODWORD(v145) = *(v142 - 3);
                HIDWORD(v145) = *v142;
                v205 = v145;
                v146 = *&v144 * 0.0174532925;
                LODWORD(v144) = *(v142 + 1);
                v147 = exp(3.14159265 - v144 * v209 / 4294967300.0);
                v148 = atan((v147 - 1.0 / v147) * 0.5) * 57.2957795 * 0.0174532925;
                v149.i64[0] = v205;
                v149.i64[1] = HIDWORD(v205);
                v150 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v149), v215), v213), v214), v212);
                v206 = vsubq_f64(v150, vdupq_laneq_s64(v150, 1)).f64[0];
                v151 = sin((v146 - v148) * 0.5);
                v152 = v151 * v151;
                v153 = cos(v146);
                v154 = v153 * cos(v148);
                v155 = sin(0.5 * v206);
                v156 = v155 * v155 * v154;
                v141 = 0.5;
                v157 = v156 + v152;
                v158 = sqrt(v156 + v152);
                v48 = 1.0;
                v159 = atan2(v158, sqrt(1.0 - v157));
                v134 = (v159 + v159) * 6372797.56;
                v140 = v140 + v134;
                v142 += 12;
              }

              while (v142 != v136);
            }

            v243[0] = 0;
            if (0xAAAAAAAAAAAAAAABLL * ((v136 - v135) >> 2) > 1)
            {
              v160 = v194 / 100.0 / v140;
              *&v217 = 0.0;
              *v219 = 0u;
              *v220 = 0u;
              v161 = fmin(v160, v48);
              v221 = 0u;
              v242 = 0;
              a8 = v200;
              if (v197)
              {
                v241 = v161 * 0.0;
                v236 = &v242;
                v237 = v219;
                v238 = v243;
                v239 = &v217;
                v240 = &v241;
                v47 = v198;
                v46 = v199;
                *&v49 = v209;
              }

              else
              {
                v195 = v161;
                v162 = 0.0;
                do
                {
                  LODWORD(v160) = *(v137 - 2);
                  v163 = exp(3.14159265 - *&v160 * v209 / 4294967300.0);
                  *&v164 = atan((v163 - 1.0 / v163) * 0.5) * 57.2957795;
                  LODWORD(v165) = *(v137 - 3);
                  HIDWORD(v165) = *v137;
                  v207 = v165;
                  v166 = *&v164 * 0.0174532925;
                  LODWORD(v164) = *(v137 + 1);
                  v167 = exp(3.14159265 - v164 * v209 / 4294967300.0);
                  v168 = atan((v167 - 1.0 / v167) * 0.5) * 57.2957795 * 0.0174532925;
                  v169.i64[0] = v207;
                  v169.i64[1] = HIDWORD(v207);
                  v170 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v169), v215), v213), v214), v212);
                  v208 = vsubq_f64(v170, vdupq_laneq_s64(v170, 1)).f64[0];
                  v171 = sin((v166 - v168) * 0.5);
                  v172 = v171 * v171;
                  v173 = cos(v166);
                  v174 = v173 * cos(v168);
                  v175 = sin(0.5 * v208);
                  v176 = v175 * v175 * v174 + v172;
                  v48 = 1.0;
                  v177 = atan2(sqrt(v176), sqrt(1.0 - v176));
                  v160 = (v177 + v177) * 6372797.56;
                  v162 = v162 + v160;
                  v137 += 12;
                }

                while (v137 != v136);
                v178 = v195 * v162;
                v241 = v195 * v162;
                v236 = &v242;
                v237 = v219;
                v238 = v243;
                v239 = &v217;
                v240 = &v241;
                v47 = v198;
                v46 = v199;
                *&v49 = v209;
                if ((v197 & 1) == 0)
                {
                  do
                  {
                    sub_316F0(&v236, v135, v135 + 3, v178);
                    v179 = (v135 + 3);
                    v135 = (v135 + 12);
                  }

                  while (v179 != v136);
                }
              }
            }

            else
            {
              sub_313A4(v219, v225, v225);
              a8 = v200;
              v47 = v198;
              v46 = v199;
              *&v49 = v209;
            }

            v236 = 0;
            v237 = 0;
            v238 = 0;
            if (v224 != *(&v223 + 1))
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v224 - *(&v223 + 1)) >> 2) < 0x1555555555555556)
              {
                operator new();
              }

              sub_1794();
            }

            sub_318AE8(&v236, 0, v219[0], v219[1], 0xAAAAAAAAAAAAAAABLL * ((v219[1] - v219[0]) >> 2));
            v12 = a2;
            if (0xAAAAAAAAAAAAAAABLL * ((v237 - v236) >> 2) > 1)
            {
              v180 = ceil(*(a1 + 160) / 100.0);
              sub_45324(&v236, (v180 + v180), &v217, 1.0, *(a1 + 176), *(a1 + 192));
              if (v27 != &__dst)
              {
                sub_35354C(v27, __dst, *(&__dst + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&__dst + 1) - __dst) >> 2));
              }

              sub_318AE8(v27, *(v26 + 40), v217, v218, 0xAAAAAAAAAAAAAAABLL * ((v218 - v217) >> 2));
              sub_318AE8(v27, *(v26 + 40), v220[1], v221, 0xAAAAAAAAAAAAAAABLL * ((v221 - v220[1]) >> 2));
              sub_F533CC(&v227, v43);
              if (*&v217 != 0.0)
              {
                v218 = v217;
                operator delete(v217);
              }
            }

            else
            {
              sub_318AE8(v27, *(v26 + 40), v225[0], v225[1], 0xAAAAAAAAAAAAAAABLL * ((v225[1] - v225[0]) >> 2));
            }

            if (v236)
            {
              v237 = v236;
              operator delete(v236);
            }

            if (v220[1])
            {
              *&v221 = v220[1];
              operator delete(v220[1]);
            }

            if (v219[0])
            {
              v219[1] = v219[0];
              operator delete(v219[0]);
            }

            if (*(&v223 + 1))
            {
              *&v224 = *(&v223 + 1);
              operator delete(*(&v223 + 1));
            }

            if (__dst)
            {
              *(&__dst + 1) = __dst;
              operator delete(__dst);
            }

            v211 = v43;
          }

          goto LABEL_92;
        }

        if (v27 != v225)
        {
          sub_35354C(v27, v225[0], v225[1], 0xAAAAAAAAAAAAAAABLL * ((v225[1] - v225[0]) >> 2));
        }
      }

LABEL_92:
      if (v225[0])
      {
        v225[1] = v225[0];
        operator delete(v225[0]);
      }

      ++v43;
    }

    while (v43 != v45);
  }

  if (*(v26 + 32) != *(v26 + 40))
  {
    ++*(*(a1 + 296) + 52);
    v181 = v228;
    *a8 = v227;
    *(a8 + 16) = v181;
    *(a8 + 32) = v229;
    v182 = v230;
    v230 = 0uLL;
    *(a8 + 40) = v182;
    v183 = v231;
    *(a8 + 56) = v231;
    *(a8 + 72) = __p;
    if (*(&v183 + 1))
    {
      v184 = *(v183 + 8);
      if ((*(&v182 + 1) & (*(&v182 + 1) - 1)) != 0)
      {
        if (v184 >= *(&v182 + 1))
        {
          v184 %= *(&v182 + 1);
        }
      }

      else
      {
        v184 &= *(&v182 + 1) - 1;
      }

      *(v182 + 8 * v184) = a8 + 56;
      v231 = 0uLL;
    }

    *(a8 + 80) = v233;
    *(a8 + 96) = v234;
    v234 = 0;
    v233 = 0uLL;
    v189 = v231;
    if (v231)
    {
      goto LABEL_203;
    }

    goto LABEL_204;
  }

  *a8 = 0u;
  *(a8 + 16) = 0u;
  *(a8 + 48) = 0u;
  *(a8 + 64) = 0u;
  *(a8 + 32) = 0u;
  *(a8 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  *(a8 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a8 + 32) = 3;
  *(a8 + 40) = 0u;
  *(a8 + 56) = 0u;
  *(a8 + 72) = 1065353216;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *(a8 + 80) = 0;
LABEL_194:
  v185 = v233;
  if (v233)
  {
    v186 = *(&v233 + 1);
    v187 = v233;
    if (*(&v233 + 1) != v233)
    {
      do
      {
        v188 = *(v186 - 64);
        if (v188)
        {
          *(v186 - 56) = v188;
          operator delete(v188);
        }

        v186 -= 96;
      }

      while (v186 != v185);
      v187 = v233;
    }

    *(&v233 + 1) = v185;
    operator delete(v187);
  }

  v189 = v231;
  if (v231)
  {
    do
    {
LABEL_203:
      v190 = *v189;
      operator delete(v189);
      v189 = v190;
    }

    while (v190);
  }

LABEL_204:
  v191 = v230;
  *&v230 = 0;
  if (v191)
  {
    operator delete(v191);
  }
}

void sub_F385D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v53 = *(v51 - 216);
  if (v53)
  {
    *(v51 - 208) = v53;
    operator delete(v53);
  }

  sub_21DB4B4(&a35);
  sub_21DB4B4(&a41);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
    sub_F38730(&a51);
    _Unwind_Resume(a1);
  }

  sub_F38730(&a51);
  _Unwind_Resume(a1);
}

void *sub_F38730(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 64);
        if (v5)
        {
          *(v3 - 56) = v5;
          operator delete(v5);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v6 = a1[7];
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

  v8 = a1[5];
  a1[5] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

uint64_t *sub_F387CC(uint64_t *a1)
{
  if (*a1)
  {
    sub_F48288(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_F38808(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a3;
  if (*(a3 + 8) - v8 < 0x11uLL)
  {
    v110 = 0xFFFFFFFF00000000;
  }

  else
  {
    v110 = *(v8 + 1);
  }

  sub_F3904C(a1, a2, v8, &v110, 1, &v100);
  if (*(&v100 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v101 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v108;
    if (v108 != *(&v108 + 1))
    {
      while (*(v11 + 32) != *(v11 + 40))
      {
        v11 += 96;
        if (v11 == *(&v108 + 1))
        {
          if (sub_45AC50(&v100))
          {
            v12 = sub_45AC50(&v100);
            v13 = sub_588D8(&v100);
            sub_F3700C(a1, a2, 0, 0, v12, v13, 0, &v90);
            if (*(&v90 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v91 + 1) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = __p[0];
              if (__p[0] != __p[1])
              {
                while (v14[4] != v14[5])
                {
                  v14 += 12;
                  if (v14 == __p[1])
                  {
                    sub_F3B348(a1, &v100, &v90);
                    v15 = *(a4 + 8);
                    if (v15 >= *(a4 + 16))
                    {
                      sub_F47DA0(a4, &v90);
                    }

                    else
                    {
                      v16 = v90;
                      v17 = v91;
                      *(v15 + 32) = v92;
                      *v15 = v16;
                      *(v15 + 16) = v17;
                      v18 = v93;
                      v19 = v95;
                      v93 = 0;
                      *(v15 + 56) = v95;
                      *(v15 + 40) = v18;
                      *(v15 + 48) = v94;
                      v94 = 0;
                      v20 = v96;
                      *(v15 + 64) = v96;
                      *(v15 + 72) = v97;
                      if (v20)
                      {
                        v21 = v19[1];
                        v22 = *(v15 + 48);
                        if ((v22 & (v22 - 1)) != 0)
                        {
                          if (v21 >= v22)
                          {
                            v21 %= v22;
                          }
                        }

                        else
                        {
                          v21 &= v22 - 1;
                        }

                        v18[v21] = v15 + 56;
                        v95 = 0;
                        v96 = 0;
                      }

                      *(v15 + 80) = 0;
                      *(v15 + 88) = 0;
                      *(v15 + 96) = 0;
                      *(v15 + 80) = *__p;
                      *(v15 + 96) = v99;
                      __p[0] = 0;
                      __p[1] = 0;
                      v99 = 0;
                      v82 = v15 + 104;
                      *(a4 + 8) = v15 + 104;
                    }

                    *(a4 + 8) = v82;
                    if (v82 < *(a4 + 16))
                    {
                      v83 = v100;
                      v84 = v101;
                      *(v82 + 32) = v102;
                      *v82 = v83;
                      *(v82 + 16) = v84;
                      v85 = v103;
                      v86 = v105;
                      v103 = 0;
                      *(v82 + 56) = v105;
                      *(v82 + 40) = v85;
                      *(v82 + 48) = v104;
                      v104 = 0;
                      v87 = v106;
                      *(v82 + 64) = v106;
                      *(v82 + 72) = v107;
                      if (v87)
                      {
                        v88 = v86[1];
                        v89 = *(v82 + 48);
                        if ((v89 & (v89 - 1)) != 0)
                        {
                          if (v88 >= v89)
                          {
                            v88 %= v89;
                          }
                        }

                        else
                        {
                          v88 &= v89 - 1;
                        }

                        v85[v88] = v82 + 56;
                        v105 = 0;
                        v106 = 0;
                      }

                      *(v82 + 80) = 0;
                      *(v82 + 88) = 0;
                      *(v82 + 96) = 0;
                      *(v82 + 80) = v108;
                      *(v82 + 96) = v109;
                      v108 = 0uLL;
                      v109 = 0;
                      v74 = v82 + 104;
                      goto LABEL_85;
                    }

                    goto LABEL_73;
                  }
                }
              }
            }

            v43 = *(a4 + 8);
            if (v43 >= *(a4 + 16))
            {
LABEL_73:
              sub_F47DA0(a4, &v100);
            }

            else
            {
              v44 = v100;
              v45 = v101;
              *(v43 + 32) = v102;
              *v43 = v44;
              *(v43 + 16) = v45;
              v46 = v103;
              v47 = v105;
              v103 = 0;
              *(v43 + 56) = v105;
              *(v43 + 40) = v46;
              *(v43 + 48) = v104;
              v104 = 0;
              v48 = v106;
              *(v43 + 64) = v106;
              *(v43 + 72) = v107;
              if (v48)
              {
                v49 = v47[1];
                v50 = *(v43 + 48);
                if ((v50 & (v50 - 1)) != 0)
                {
                  if (v49 >= v50)
                  {
                    v49 %= v50;
                  }
                }

                else
                {
                  v49 &= v50 - 1;
                }

                v46[v49] = v43 + 56;
                v105 = 0;
                v106 = 0;
              }

              *(v43 + 80) = 0;
              *(v43 + 88) = 0;
              *(v43 + 96) = 0;
              *(v43 + 80) = v108;
              *(v43 + 96) = v109;
              v108 = 0uLL;
              v109 = 0;
              v74 = v43 + 104;
LABEL_85:
              *(a4 + 8) = v74;
            }

            *(a4 + 8) = v74;
            ++*(*(a1 + 296) + 48);
            v76 = __p[0];
            if (__p[0])
            {
              v77 = __p[1];
              v78 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v79 = *(v77 - 8);
                  if (v79)
                  {
                    *(v77 - 7) = v79;
                    operator delete(v79);
                  }

                  v77 -= 96;
                }

                while (v77 != v76);
                v78 = __p[0];
              }

              __p[1] = v76;
              operator delete(v78);
            }

            v80 = v95;
            if (v95)
            {
              do
              {
                v81 = *v80;
                operator delete(v80);
                v80 = v81;
              }

              while (v81);
            }

            goto LABEL_54;
          }

          v66 = *(a4 + 8);
          if (v66 >= *(a4 + 16))
          {
            sub_F47DA0(a4, &v100);
          }

          else
          {
            v67 = v100;
            v68 = v101;
            *(v66 + 32) = v102;
            *v66 = v67;
            *(v66 + 16) = v68;
            v69 = v103;
            v70 = v105;
            v103 = 0;
            *(v66 + 56) = v105;
            *(v66 + 40) = v69;
            *(v66 + 48) = v104;
            v104 = 0;
            v71 = v106;
            *(v66 + 64) = v106;
            *(v66 + 72) = v107;
            if (v71)
            {
              v72 = v70[1];
              v73 = *(v66 + 48);
              if ((v73 & (v73 - 1)) != 0)
              {
                if (v72 >= v73)
                {
                  v72 %= v73;
                }
              }

              else
              {
                v72 &= v73 - 1;
              }

              v69[v72] = v66 + 56;
              v105 = 0;
              v106 = 0;
            }

            *(v66 + 80) = 0;
            *(v66 + 88) = 0;
            *(v66 + 96) = 0;
            *(v66 + 80) = v108;
            *(v66 + 96) = v109;
            v108 = 0uLL;
            v109 = 0;
            v75 = v66 + 104;
            *(a4 + 8) = v66 + 104;
          }

          *(a4 + 8) = v75;
          ++*(*(a1 + 296) + 48);
          v59 = v108;
          if (v108)
          {
            goto LABEL_57;
          }

          goto LABEL_64;
        }
      }
    }
  }

  v24 = **a3;
  v23 = *(*a3 + 8);
  v25 = sub_3187E8(*(a1 + 8), v24, 1);
  if (v25 && (v26 = &v25[-*v25], *v26 >= 5u) && (v27 = *(v26 + 2)) != 0 && (v28 = &v25[v27], v29 = *v28, *&v28[v29] > HIDWORD(v24)) && (v30 = sub_319480(&v28[v29], v24)) != 0)
  {
    v31 = (v30 - *v30);
    if (*v31 >= 7u && (v32 = v31[3]) != 0)
    {
      v33 = *(v30 + v32);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_F3700C(a1, a2, 0, 0, v23, v33, 0, &v90);
  if (*(&v90 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v91 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = __p[0];
    if (__p[0] != __p[1])
    {
      while (v34[4] != v34[5])
      {
        v34 += 12;
        if (v34 == __p[1])
        {
          v35 = *(a4 + 8);
          if (v35 >= *(a4 + 16))
          {
            sub_F47DA0(a4, &v90);
            *(a4 + 8) = v51;
            break;
          }

          v36 = v90;
          v37 = v91;
          *(v35 + 32) = v92;
          *v35 = v36;
          *(v35 + 16) = v37;
          v38 = v93;
          v39 = v95;
          v93 = 0;
          *(v35 + 56) = v95;
          *(v35 + 40) = v38;
          *(v35 + 48) = v94;
          v94 = 0;
          v40 = v96;
          *(v35 + 64) = v96;
          *(v35 + 72) = v97;
          if (v40)
          {
            v41 = v39[1];
            v42 = *(v35 + 48);
            if ((v42 & (v42 - 1)) != 0)
            {
              if (v41 >= v42)
              {
                v41 %= v42;
              }
            }

            else
            {
              v41 &= v42 - 1;
            }

            v38[v41] = v35 + 56;
            v95 = 0;
            v96 = 0;
          }

          *(v35 + 80) = 0;
          *(v35 + 88) = 0;
          *(v35 + 96) = 0;
          *(v35 + 80) = *__p;
          *(v35 + 96) = v99;
          __p[0] = 0;
          __p[1] = 0;
          v99 = 0;
          *(a4 + 8) = v35 + 104;
          *(a4 + 8) = v35 + 104;
          ++*(*(a1 + 296) + 68);
          v52 = __p[0];
          if (__p[0])
          {
            goto LABEL_45;
          }

          goto LABEL_52;
        }
      }
    }
  }

  ++*(*(a1 + 296) + 68);
  v52 = __p[0];
  if (__p[0])
  {
LABEL_45:
    v53 = __p[1];
    v54 = v52;
    if (__p[1] != v52)
    {
      do
      {
        v55 = *(v53 - 8);
        if (v55)
        {
          *(v53 - 7) = v55;
          operator delete(v55);
        }

        v53 -= 96;
      }

      while (v53 != v52);
      v54 = __p[0];
    }

    __p[1] = v52;
    operator delete(v54);
  }

LABEL_52:
  v56 = v95;
  if (v95)
  {
    do
    {
      v57 = *v56;
      operator delete(v56);
      v56 = v57;
    }

    while (v57);
  }

LABEL_54:
  v58 = v93;
  v93 = 0;
  if (v58)
  {
    operator delete(v58);
  }

  v59 = v108;
  if (v108)
  {
LABEL_57:
    v60 = *(&v108 + 1);
    v61 = v59;
    if (*(&v108 + 1) != v59)
    {
      do
      {
        v62 = *(v60 - 8);
        if (v62)
        {
          *(v60 - 7) = v62;
          operator delete(v62);
        }

        v60 -= 96;
      }

      while (v60 != v59);
      v61 = v108;
    }

    *(&v108 + 1) = v59;
    operator delete(v61);
  }

LABEL_64:
  v63 = v105;
  if (v105)
  {
    do
    {
      v64 = *v63;
      operator delete(v63);
      v63 = v64;
    }

    while (v64);
  }

  v65 = v103;
  v103 = 0;
  if (v65)
  {
    operator delete(v65);
  }
}

void sub_F38FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_F38730(&a9);
  sub_F38730(&a22);
  _Unwind_Resume(a1);
}

void sub_F39010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F38730(va);
  _Unwind_Resume(a1);
}

void sub_F39024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F38730(va);
  _Unwind_Resume(a1);
}

void sub_F39038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F38730(va);
  _Unwind_Resume(a1);
}

void sub_F3904C(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v402 = xmmword_2297C00;
  v403 = xmmword_2297C00;
  v405 = 0u;
  v406 = 0u;
  v404 = 3;
  v407 = 1065353216;
  v409 = 0;
  v408[0] = 0;
  v408[1] = 0;
  sub_68179C(&v402, 4);
  v10 = a3[1];
  if (a5)
  {
    sub_F53294(&v402, v10);
    v11 = *a3;
    v12 = sub_3187E8(*(a1 + 8), *a3, 1);
    if (v12 && (v13 = &v12[-*v12], *v13 >= 5u) && (v14 = *(v13 + 2)) != 0 && (v15 = &v12[v14], v16 = *v15, *&v15[v16] > HIDWORD(v11)) && (v17 = sub_319480(&v15[v16], v11)) != 0)
    {
      v18 = (v17 - *v17);
      if (*v18 >= 7u && (v19 = v18[3]) != 0)
      {
        v20 = *(v17 + v19);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_F532A4(&v402, v20);
  }

  else
  {
    sub_501CE8(&v402, v10);
    v21 = *a3;
    v22 = sub_3187E8(*(a1 + 8), *a3, 1);
    if (v22 && (v23 = &v22[-*v22], *v23 >= 5u) && (v24 = *(v23 + 2)) != 0 && (v25 = &v22[v24], v26 = *v25, *&v25[v26] > HIDWORD(v21)) && (v27 = sub_319480(&v25[v26], v21)) != 0)
    {
      v28 = (v27 - *v27);
      if (*v28 >= 7u && (v29 = v28[3]) != 0)
      {
        v30 = *(v27 + v29);
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_F5329C(&v402, v30);
  }

  sub_F3DBB8(*(a1 + 8), *a3, a5, &v400);
  v31 = v400;
  v32 = v401;
  if (v400 == v401)
  {
    v48 = 0;
LABEL_67:
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 8) = 0x7FFFFFFFFFFFFFFFLL;
    *(a6 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    *(a6 + 32) = 3;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 1065353216;
    *(a6 + 88) = 0;
    *(a6 + 96) = 0;
    *(a6 + 80) = 0;
    goto LABEL_381;
  }

  __src = 0;
  v360 = a4;
  v336 = a6;
  v33 = 0;
  v34 = 0;
  v343 = a5;
  v363 = a1;
  do
  {
    v35 = sub_F3DF40(a1, v31);
    v36 = *(a1 + 296);
    if (v35)
    {
      ++*(v36 + 56);
      v37 = sub_3175DC(*(a1 + 8), *(v31 + 1), *(v31 + 2));
      *&v371 = v37;
      if (v37)
      {
        v38 = v37 >= 0xFFFFFFFF00000000;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v39 = sub_F3E128(a1, &v371, a2, a3[1], a5, 0);
        if (v34 <= v39)
        {
          v34 = v39;
        }

        v41 = v33 - __src;
        v42 = 0xAAAAAAAAAAAAAAABLL * ((v33 - __src) >> 4);
        v43 = v42 + 1;
        if (v42 + 1 > 0x555555555555555)
        {
          sub_1794();
        }

        if (0x5555555555555556 * (-__src >> 4) > v43)
        {
          v43 = 0x5555555555555556 * (-__src >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-__src >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v44 = 0x555555555555555;
        }

        else
        {
          v44 = v43;
        }

        if (v44)
        {
          if (v44 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v45 = 48 * v42;
        v46 = *(v31 + 1);
        *v45 = *v31;
        *(v45 + 16) = v46;
        *(v45 + 32) = v39;
        *(v45 + 40) = v40;
        *(v45 + 44) = 0;
        v33 = 48 * v42 + 48;
        v47 = 48 * v42 + 48 * (v41 / -48);
        memcpy((v45 + 48 * (v41 / -48)), __src, v41);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v47;
        a5 = v343;
        a1 = v363;
      }
    }

    else
    {
      ++*(v36 + 60);
    }

    v31 += 32;
  }

  while (v31 != v32);
  v48 = __src;
  if (__src == v33)
  {
    a6 = v336;
    goto LABEL_67;
  }

  v49 = 0;
  v50 = 0;
  v51 = -1;
  do
  {
    if (*(v363 + 40) + *(v48 + 4) >= v34)
    {
      v52 = v49;
      v53 = v50 - v49;
      v54 = 0xAAAAAAAAAAAAAAABLL * (v53 >> 4) + 1;
      if (v54 > 0x555555555555555)
      {
        sub_1794();
      }

      v55 = v52;
      v56 = 0xAAAAAAAAAAAAAAABLL * (-v52 >> 4);
      if (2 * v56 > v54)
      {
        v54 = 2 * v56;
      }

      if (v56 >= 0x2AAAAAAAAAAAAAALL)
      {
        v57 = 0x555555555555555;
      }

      else
      {
        v57 = v54;
      }

      if (v57)
      {
        if (v57 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v58 = (16 * (v53 >> 4));
      v59 = *v48;
      v60 = *(v48 + 2);
      v58[1] = *(v48 + 1);
      v58[2] = v60;
      *v58 = v59;
      v50 = (v58 + 3);
      v61 = &v58[3 * (v53 / -48)];
      memcpy(v61, v55, v53);
      if (v55)
      {
        operator delete(v55);
      }

      v49 = v61;
      if (*(v48 + 10) < v51)
      {
        v51 = *(v48 + 10);
      }
    }

    v48 += 48;
  }

  while (v48 != v33);
  v342 = v50;
  v62 = a3[1];
  v63 = v343;
  if (v343)
  {
    v64 = v62 - v51;
    v48 = __src;
    sub_501CE8(&v402, v64);
    sub_F5329C(&v402, 0);
  }

  else
  {
    v64 = v62 + v51;
    v48 = __src;
    sub_F53294(&v402, v64);
    v65 = sub_588E0(&v402);
    v66 = sub_4D1F50(a2, v65);
    v67 = (*v66 - **v66);
    if (*v67 >= 9u && (v68 = v67[4]) != 0)
    {
      v69 = *(*v66 + v68);
    }

    else
    {
      v69 = 0;
    }

    sub_F532A4(&v402, v69);
  }

  v70 = sub_4D1F50(a2, v64);
  v398 = sub_335660(*v363, v70, v343 == 0);
  v399 = v71;
  if (v49 == v342)
  {
    goto LABEL_373;
  }

  v337 = HIDWORD(*v360);
  v338 = *v360;
  if (*v360)
  {
    v72 = HIDWORD(*v360) == 0xFFFFFFFF;
  }

  else
  {
    v72 = 1;
  }

  v73 = !v72;
  v339 = v73;
  v74 = &unk_2266000;
  v75 = 1.0;
  v76 = 0.5;
  v77 = v49;
  v353 = v49;
  __srca = v48;
  do
  {
    if (v63)
    {
      if (!v339 || *(v77 + 6) != v338)
      {
        goto LABEL_89;
      }

      v341 = *(v77 + 7) == v337;
    }

    else
    {
      if (!v339 || *v77 != v338)
      {
LABEL_89:
        v341 = 0;
        goto LABEL_90;
      }

      LOBYTE(v341) = 0;
      BYTE4(v341) = *(v77 + 1) == v337;
    }

LABEL_90:
    v78 = *(v363 + 8);
    v79 = *(v77 + 1);
    v371 = *v77;
    v372 = v79;
    v80 = sub_319730(v78, &v371);
    if (v80 && (v81 = (v80 - *v80), *v81 >= 0xDu) && (v82 = v81[6]) != 0)
    {
      v83 = (v80 + v82 + *(v80 + v82));
      v84 = (v83 - *v83);
      if (*v84 >= 5u && (v85 = v84[2]) != 0)
      {
        v86 = (v83 + v85 + *(v83 + v85));
      }

      else
      {
        v86 = 0;
      }

      sub_2CF504(v86, &v395);
    }

    else
    {
      v396 = 0;
      v395 = 0;
      v397 = 0;
    }

    if (v77[44] == 1 && v395 != v396)
    {
      v87 = v396 - 12;
      if (v396 - 12 > v395)
      {
        v88 = v395 + 12;
        do
        {
          v89 = *(v88 - 1);
          v90 = *(v88 - 12);
          v91 = *(v87 + 2);
          *(v88 - 12) = *v87;
          *(v88 - 1) = v91;
          *v87 = v90;
          *(v87 + 2) = v89;
          v87 -= 12;
          v38 = v88 >= v87;
          v88 += 12;
        }

        while (!v38);
      }
    }

    v92 = *(v363 + 8);
    v93 = *(v77 + 1);
    v371 = *v77;
    v372 = v93;
    v94 = sub_319730(v92, &v371);
    v95 = 0.0;
    v351 = v77;
    if (v94 && (v96 = (v94 - *v94), *v96 >= 0x15u) && (v97 = v96[10]) != 0 && (v98 = *(v94 + v97), v98))
    {
      if (sub_45AC50(&v402))
      {
        v99 = sub_588E0(&v402);
        if (v99 != sub_4D1DC0(a2) - 1)
        {
          v95 = *(v363 + 32) / 100.0 / (v98 / 100.0);
        }
      }
    }

    else
    {
      v98 = 0;
    }

    sub_47190(&v398, &v395);
    v348 = vdupq_n_s64(0xC066800000000000);
    v349 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v347 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v350 = vdupq_n_s64(0x4076800000000000uLL);
    if (*(v363 + 209) != 1)
    {
      v102 = v351;
      goto LABEL_274;
    }

    if (v63)
    {
      v101 = (v75 - v100) * v98;
      if (v101 < 0.0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v101 = v100 * v98;
      if (v101 < 0.0)
      {
LABEL_114:
        v102 = v351;
        if (v101 <= -4.50359963e15)
        {
          goto LABEL_121;
        }

        v103 = (v101 + v101) - 1 + (((v101 + v101) - 1) >> 63);
        goto LABEL_120;
      }
    }

    v102 = v351;
    if (v101 >= 4.50359963e15)
    {
      goto LABEL_121;
    }

    v103 = (v101 + v101) + 1;
LABEL_120:
    v101 = (v103 >> 1);
LABEL_121:
    v104 = *(v102 + 4);
    v105 = 1.0;
    if (v104 && v104 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v106 = v101;
      if (v101 && v106 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v105 = v106 / v104;
        v108 = v363;
        if (v105 <= *(v363 + 224))
        {
          goto LABEL_141;
        }

LABEL_129:
        v109 = *(v108 + 216) * v104;
        v110 = v100;
        if (v109 >= 0.0)
        {
          if (v109 >= 4.50359963e15)
          {
            goto LABEL_137;
          }

          v111 = (v109 + v109) + 1;
        }

        else
        {
          if (v109 <= -4.50359963e15)
          {
            goto LABEL_137;
          }

          v111 = (v109 + v109) - 1 + (((v109 + v109) - 1) >> 63);
        }

        v109 = (v111 >> 1);
LABEL_137:
        *&v371 = v109;
        sub_F3E408(&v398, &v395, &v371, v63 == 0);
        if (v100 >= v110)
        {
          v100 = v110;
        }

        goto LABEL_274;
      }
    }

    v108 = v363;
    if (*(v363 + 224) < 1.0)
    {
      goto LABEL_129;
    }

LABEL_141:
    if (*(v108 + 240) == 1 && v105 < *(v108 + 232))
    {
      v112 = v100;
      v393 = 0;
      v392 = 0;
      v394 = 0;
      v113 = sub_45AC50(&v402);
      v114 = sub_588E0(&v402);
      if (v113 <= v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = v113;
      }

      v340 = v115;
      if (v113 >= v114)
      {
LABEL_147:
        if (v63)
        {
          v116 = 1.0;
          v117 = fmin(v95 + v112, 1.0);
          if (v117 != 1.0)
          {
LABEL_290:
            v234 = v117 - v116;
            if (v117 - v116 <= 0.0)
            {
              v234 = -(v117 - v116);
            }

            if (v234 < 2.22044605e-16)
            {
              goto LABEL_369;
            }

            sub_2F4C8(&v395, 0, &v385, v117, v116);
            v235 = v385;
            if (0xAAAAAAAAAAAAAAABLL * ((*(&v385 + 1) - v385) >> 2) < 2)
            {
              goto LABEL_367;
            }

            v236 = sub_39F0C(&v385, &v392, 0, 2.0);
            v235 = v385;
            if (v236 > *(v363 + 248))
            {
              goto LABEL_367;
            }

            v237 = *(&v385 + 1);
            v238 = 0.0;
            if (v385 != *(&v385 + 1))
            {
              v239 = (v385 + 12);
              if (v385 + 12 != *(&v385 + 1))
              {
                v240 = 0.0;
                do
                {
                  LODWORD(v238) = *(v239 - 2);
                  v241 = v74[72];
                  v242 = exp(v241 - *&v238 * 6.28318531 / 4294967300.0);
                  *&v243 = atan((v242 - v75 / v242) * v76) * 57.2957795;
                  LODWORD(v244) = *(v239 - 3);
                  HIDWORD(v244) = *v239;
                  v369 = v244;
                  v245 = *&v243 * 0.0174532925;
                  LODWORD(v243) = v239[1];
                  v246 = exp(v241 - v243 * 6.28318531 / 4294967300.0);
                  v75 = 1.0;
                  v247 = atan((v246 - 1.0 / v246) * v76) * 57.2957795 * 0.0174532925;
                  v248.i64[0] = v369;
                  v248.i64[1] = HIDWORD(v369);
                  v249 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v248), v350), v349), v348), v347);
                  v370 = vsubq_f64(v249, vdupq_laneq_s64(v249, 1)).f64[0];
                  v250 = sin((v245 - v247) * v76);
                  v251 = v250 * v250;
                  v252 = cos(v245);
                  v253 = v252 * cos(v247);
                  v254 = sin(v76 * v370);
                  v255 = atan2(sqrt(v254 * v254 * v253 + v251), sqrt(1.0 - (v254 * v254 * v253 + v251)));
                  v238 = (v255 + v255) * 6372797.56;
                  v240 = v240 + v238;
                  v239 += 3;
                }

                while (v239 != v237);
                v238 = v240 * 100.0;
                if (v240 * 100.0 < 0.0)
                {
                  if (v238 <= -4.50359963e15)
                  {
                    v257 = 1;
                    v256 = v240 * 100.0;
                  }

                  else
                  {
                    v256 = (((v238 + v238) - 1) / 2);
                    v257 = 1;
                  }

LABEL_340:
                  if (v256 >= 9.22337204e18)
                  {
                    v283 = 0x7FFFFFFFFFFFFFFELL;
                    goto LABEL_349;
                  }

                  if (v257)
                  {
                    if (v238 > -4.50359963e15)
                    {
                      v282 = (v238 + v238) - 1 + (((v238 + v238) - 1) >> 63);
LABEL_347:
                      v238 = (v282 >> 1);
                    }
                  }

                  else if (v238 < 4.50359963e15)
                  {
                    v282 = (v238 + v238) + 1;
                    goto LABEL_347;
                  }

                  v283 = v238;
LABEL_349:
                  v284 = v386;
                  *&v386 = 0;
                  v385 = 0uLL;
                  v285 = *(v363 + 8);
                  v286 = *(v351 + 1);
                  *v410 = *v351;
                  *&v410[16] = v286;
                  v287 = sub_319730(v285, v410);
                  if (v287 && (v288 = (v287 - *v287), *v288 >= 0xFu) && (v289 = v288[7]) != 0)
                  {
                    v290 = *(v287 + v289);
                  }

                  else
                  {
                    LOWORD(v290) = 0;
                  }

                  v291 = *(v363 + 8);
                  v292 = *(v351 + 1);
                  *v410 = *v351;
                  *&v410[16] = v292;
                  v293 = sub_319730(v291, v410);
                  if (v293 && (v294 = (v293 - *v293), *v294 >= 0x13u) && (v295 = v294[9]) != 0)
                  {
                    v296 = *(v293 + v295);
                  }

                  else
                  {
                    v296 = 0;
                  }

                  v297 = *(v363 + 8);
                  v298 = *(v351 + 1);
                  *v410 = *v351;
                  *&v410[16] = v298;
                  v299 = sub_319730(v297, v410);
                  v300 = 0.0;
                  if (v299 && (v301 = (v299 - *v299), *v301 >= 0x19u))
                  {
                    v302 = v301[12];
                    v303 = BYTE4(v341);
                    if (v302)
                    {
                      v300 = *(v299 + v302);
                    }
                  }

                  else
                  {
                    v303 = BYTE4(v341);
                  }

                  v304 = *(v351 + 1);
                  v371 = *v351;
                  v372 = v304;
                  v373[0] = v235;
                  v373[1] = v237;
                  *&v374 = v284;
                  WORD4(v374) = v290;
                  v375 = v296;
                  v376 = v283;
                  v377 = v300;
                  v378 = v303;
                  v379 = v341;
                  v380 = 0;
                  sub_F534B0(&v402, &v371);
                  v63 = v343;
                  if (v373[0])
                  {
                    v373[1] = v373[0];
                    operator delete(v373[0]);
                  }

                  v235 = v385;
                  v102 = v351;
LABEL_367:
                  if (v235)
                  {
                    *(&v385 + 1) = v235;
                    operator delete(v235);
                  }

                  goto LABEL_369;
                }

                if (v238 >= 4.50359963e15)
                {
                  v257 = 0;
                  v256 = v240 * 100.0;
                  goto LABEL_340;
                }
              }
            }

            v257 = 0;
            v256 = (((v238 + v238) + 1) >> 1);
            goto LABEL_340;
          }
        }

        else
        {
          v117 = 0.0;
          v116 = fmax(v112 - v95, 0.0);
          if (v116 != 0.0)
          {
            goto LABEL_290;
          }
        }

LABEL_369:
        if (v392)
        {
          v393 = v392;
          operator delete(v392);
        }

        goto LABEL_334;
      }

LABEL_151:
      v118 = v113;
      v119 = *v363;
      v346 = v118;
      v120 = sub_4D1F50(a2, v118);
      sub_2B7A20(v119, *(v120 + 32) & 0xFFFFFFFFFFFFFFLL, &v388);
      v121 = v393;
      if (v391)
      {
        if (__p != v390)
        {
          v122 = *(v390 - 1);
          v123 = sub_2B4D24(v388, v122, 0);
          v124 = &v123[*&v123[-*v123 + 4]];
          v125 = &v124[4 * HIDWORD(v122) + *v124];
          v126 = (v125 + 4 + *(v125 + 4));
          v127 = (v126 + *(v126 - *v126 + 6));
          LODWORD(v127) = *(v127 + *v127) - 1;
          *&v385 = v388;
          *(&v385 + 1) = &__p;
          v386 = 0u;
          v387[0] = 0u;
          LODWORD(v387[1]) = ((v390 - __p) >> 3) - 1;
          DWORD1(v387[1]) = v127;
          BYTE8(v387[1]) = 1;
          sub_318EF0(&v385);
          v345 = v121;
          if (v391)
          {
            goto LABEL_154;
          }

LABEL_164:
          if (__p != v390)
          {
            v138 = *(v390 - 1);
            v139 = sub_2B4D24(v388, v138, 0);
            v129 = 0;
            v140 = &v139[*&v139[-*v139 + 4]];
            v141 = &v140[4 * HIDWORD(v138) + *v140];
            v142 = (v141 + 4 + *(v141 + 4));
            v128 = v388;
            v143 = (v142 + *(v142 - *v142 + 6));
            v131 = *(v143 + *v143);
            v130 = (v390 - __p) >> 3;
            v382 = 0u;
            v383 = 0u;
            goto LABEL_166;
          }

LABEL_167:
          v128 = 0;
          LODWORD(v130) = 0;
          v131 = 0;
          v129 = 0;
          v384 = 0;
          v382 = 0u;
          v383 = 0u;
          v381[0] = 0;
          *(v381 + 3) = 0;
          goto LABEL_168;
        }

        goto LABEL_163;
      }

      if (__p == v390)
      {
LABEL_163:
        memset(v387, 0, sizeof(v387));
        v385 = 0u;
        v386 = 0u;
        v345 = v393;
        if (!v391)
        {
          goto LABEL_164;
        }

        goto LABEL_154;
      }

      *&v385 = v388;
      *(&v385 + 1) = &__p;
      v386 = 0u;
      memset(v387, 0, 25);
      v132 = *__p;
      DWORD2(v387[0]) = v132;
      v133 = sub_2B4D24(v388, v132, 0);
      v134 = &v133[-*v133];
      if (*v134 < 7u)
      {
        HIDWORD(v387[0]) = 0;
        v136 = &v133[-*v133];
        if (*v136 >= 5u)
        {
LABEL_161:
          v137 = *(v136 + 2);
          if (v137)
          {
            v137 += &v133[*&v133[v137]];
          }

LABEL_261:
          v203 = (v137 + 4 * HIDWORD(v132) + 4 + *(v137 + 4 * HIDWORD(v132) + 4));
          *&v386 = v203;
          v204 = (v203 - *v203);
          v205 = *v204;
          if (v205 <= 6)
          {
            *(&v386 + 1) = 0;
            *&v387[0] = 0;
            v345 = v121;
            if (!v391)
            {
              goto LABEL_164;
            }
          }

          else
          {
            v206 = v204[3];
            if (v204[3])
            {
              v206 += v203 + *(v203 + v206);
            }

            *(&v386 + 1) = v206;
            if (v205 < 0xB)
            {
              *&v387[0] = 0;
              v345 = v121;
              if (!v391)
              {
                goto LABEL_164;
              }
            }

            else
            {
              v207 = v204[5];
              if (v207)
              {
                *&v387[0] = v203 + v207 + *(v203 + v207);
                v345 = v121;
                if (!v391)
                {
                  goto LABEL_164;
                }
              }

              else
              {
                *&v387[0] = 0;
                v345 = v121;
                if (!v391)
                {
                  goto LABEL_164;
                }
              }
            }
          }

LABEL_154:
          if (__p != v390)
          {
            v128 = v388;
            v382 = 0u;
            v383 = 0u;
            v129 = 1;
            LODWORD(v130) = -1;
            v131 = -1;
LABEL_166:
            v384 = 0;
LABEL_168:
            v371 = v385;
            v372 = v386;
            *v373 = v387[0];
            v374 = v387[1];
            *&v410[8] = v382;
            *v410 = v128;
            *&v410[24] = v383;
            v411 = v384;
            v412 = v130;
            v413 = v131;
            v414 = v129;
            v415[0] = v381[0];
            *(v415 + 3) = *(v381 + 3);
            v144 = v385;
            LODWORD(v145) = v387[1];
            v146 = DWORD1(v387[1]);
            if (*&v387[1] == __PAIR64__(v131, v130))
            {
              v147 = 0;
              goto LABEL_257;
            }

            v352 = v385 + 16;
            v148 = *(&v386 + 1);
            v149 = (v385 + 112);
            v150 = (v385 + 136);
            v151 = (v385 + 160);
            v361 = (v385 + 184);
            v357 = v130;
            v356 = v131;
            v354 = (v385 + 160);
            v355 = (v385 + 136);
            v147 = 0;
            if (BYTE8(v387[1]))
            {
              v152 = **(&v386 + 1);
              while (1)
              {
                v153 = v146 - 1;
                if (v146 - 1 >= v152)
                {
                  v156 = **(&v144 + 1);
                  v145 = (v145 - 1);
                  if (v145 < (*(*(&v144 + 1) + 8) - **(&v144 + 1)) >> 3)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_211;
                }

                v154 = &v148[4 * v146 + 4];
                v155 = &v148[4 * v153 + 4];
                if (*v154 != *v155 || *(v154 + 1) != *(v155 + 1))
                {
                  goto LABEL_211;
                }

                v156 = **(&v144 + 1);
                v157 = *(*(&v144 + 1) + 8) - **(&v144 + 1);
                if (v152 == 2 && v157 == 8)
                {
                  v152 = 2;
LABEL_211:
                  v146 = v153;
                  goto LABEL_212;
                }

                v153 = v146 - 2;
                v145 = (v145 - 1);
                if (v145 >= v157 >> 3)
                {
                  goto LABEL_211;
                }

                do
                {
LABEL_179:
                  v158 = *(v156 + 8 * v145);
                  v418 = 0;
                  v419 = v158;
                  v416 = &v418;
                  v417 = &v419;
                  v159 = *(v144 + 3856) + 1;
                  *(v144 + 3856) = v159;
                  if (!*v144)
                  {
                    exception = __cxa_allocate_exception(0x40uLL);
                    v422 = *v417;
                    v420 = sub_7FCF0(1u);
                    v421 = v317;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v420, &v423);
                    if ((v425 & 0x80u) == 0)
                    {
                      v318 = &v423;
                    }

                    else
                    {
                      v318 = v423;
                    }

                    if ((v425 & 0x80u) == 0)
                    {
                      v319 = v425;
                    }

                    else
                    {
                      v319 = v424;
                    }

                    v320 = sub_2D390(exception, v318, v319);
                  }

                  v160 = (v144 + 112);
                  if (*v149 == v158 || (v160 = v150, *v150 == v158) || (v160 = v151, *v151 == v158) || (v160 = v361, *v361 == v158))
                  {
                    ++*(v144 + 3864);
                    *(v160 + 1) = v159;
                    v161 = *(v160 + 2);
                    if (!v161)
                    {
                      v321 = __cxa_allocate_exception(0x40uLL);
                      v422 = *v417;
                      v420 = sub_7FCF0(1u);
                      v421 = v322;
                      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v420, &v423);
                      if ((v425 & 0x80u) == 0)
                      {
                        v323 = &v423;
                      }

                      else
                      {
                        v323 = v423;
                      }

                      if ((v425 & 0x80u) == 0)
                      {
                        v324 = v425;
                      }

                      else
                      {
                        v324 = v424;
                      }

                      v325 = sub_2D390(v321, v323, v324);
                    }

LABEL_185:
                    v162 = (v161 + *v161);
                    v163 = (v162 - *v162);
                    if (*v163 < 5u)
                    {
                      goto LABEL_201;
                    }

                    goto LABEL_186;
                  }

                  v365 = v147;
                  v166 = *(v144 + 168);
                  v167 = *(v144 + 144);
                  v168 = *(v144 + 120);
                  v169 = *(v144 + 192);
                  v161 = sub_2D52A4(*v144, 1, v158, 1);
                  if (v168 >= v159)
                  {
                    v170 = v159;
                  }

                  else
                  {
                    v170 = v168;
                  }

                  v171 = v167 >= v170;
                  if (v167 < v170)
                  {
                    v170 = v167;
                  }

                  v172 = 4 * (v168 < v159);
                  if (!v171)
                  {
                    v172 = 5;
                  }

                  if (v166 < v170)
                  {
                    v172 = 6;
                    v170 = v166;
                  }

                  if (v169 < v170)
                  {
                    v172 = 7;
                  }

                  v49 = v353;
                  v173 = v352 + 24 * v172;
                  *v173 = v419;
                  *(v173 + 8) = *(v144 + 3856);
                  *(v173 + 16) = v161;
                  LODWORD(v130) = v357;
                  v48 = __srca;
                  v131 = v356;
                  v151 = v354;
                  v150 = v355;
                  v147 = v365;
                  if (v161)
                  {
                    goto LABEL_185;
                  }

                  sub_2B572C(&v416);
                  v162 = 0;
                  LODWORD(v130) = v357;
                  v48 = __srca;
                  v49 = v353;
                  v151 = v354;
                  v131 = v356;
                  v150 = v355;
                  v147 = v365;
                  v163 = (&loc_1120530 + 1);
                  if (*(&loc_1120530 + 1) < 5u)
                  {
LABEL_201:
                    v165 = 0;
                    goto LABEL_202;
                  }

LABEL_186:
                  v164 = v163[2];
                  if (!v164)
                  {
                    goto LABEL_201;
                  }

                  v165 = v162 + v164 + *(v162 + v164);
LABEL_202:
                  v174 = &v165[4 * HIDWORD(v158) + 4 + *&v165[4 * HIDWORD(v158) + 4]];
                  v175 = &v174[-*v174];
                  if (*v175 >= 7u && (v176 = *(v175 + 3)) != 0)
                  {
                    v148 = &v174[v176 + *&v174[v176]];
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v152 = *v148;
                  v146 = *v148 - 2;
                  v177 = &v148[4 * (*v148 - 1) + 4];
                  v178 = &v148[4 * v146 + 4];
                  if (*v177 != *v178 || *(v177 + 1) != *(v178 + 1))
                  {
                    goto LABEL_212;
                  }

                  v145 = (v145 - 1);
                  v156 = **(&v144 + 1);
                }

                while (v145 < (*(*(&v144 + 1) + 8) - **(&v144 + 1)) >> 3);
                v146 = v152 - 3;
LABEL_212:
                ++v147;
                if (v145 == v130 && v146 == v131)
                {
LABEL_257:
                  sub_703E1C(&v392, v345, &v371, v410, v147);
                  v63 = v343;
                  v74 = &unk_2266000;
                  v102 = v351;
                  if (__p)
                  {
                    v390 = __p;
                    operator delete(__p);
                  }

                  v113 = v346 + 1;
                  if (v346 + 1 == v340)
                  {
                    goto LABEL_147;
                  }

                  goto LABEL_151;
                }
              }
            }

LABEL_215:
            v179 = v146 + 1;
            if (v146 + 1 >= *v148)
            {
              v182 = **(&v144 + 1);
              v145 = (v145 + 1);
              if (v145 < (*(*(&v144 + 1) + 8) - **(&v144 + 1)) >> 3)
              {
                goto LABEL_223;
              }

LABEL_221:
              v146 = v179;
              goto LABEL_255;
            }

            v180 = &v148[4 * v146 + 4];
            v181 = &v148[4 * v179 + 4];
            if (*v180 != *v181)
            {
              goto LABEL_221;
            }

            if (*(v180 + 1) != *(v181 + 1))
            {
              goto LABEL_221;
            }

            v182 = **(&v144 + 1);
            v183 = *(*(&v144 + 1) + 8) - **(&v144 + 1);
            if (*v148 == 2 && v183 == 8)
            {
              goto LABEL_221;
            }

            v179 = v146 + 2;
            v145 = (v145 + 1);
            if (v145 >= v183 >> 3)
            {
              goto LABEL_221;
            }

            while (1)
            {
LABEL_223:
              v184 = *(v182 + 8 * v145);
              v418 = 0;
              v419 = v184;
              v416 = &v418;
              v417 = &v419;
              v185 = *(v144 + 3856) + 1;
              *(v144 + 3856) = v185;
              if (!*v144)
              {
                v326 = __cxa_allocate_exception(0x40uLL);
                v422 = *v417;
                v420 = sub_7FCF0(1u);
                v421 = v327;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v420, &v423);
                if ((v425 & 0x80u) == 0)
                {
                  v328 = &v423;
                }

                else
                {
                  v328 = v423;
                }

                if ((v425 & 0x80u) == 0)
                {
                  v329 = v425;
                }

                else
                {
                  v329 = v424;
                }

                v330 = sub_2D390(v326, v328, v329);
              }

              v186 = (v144 + 112);
              if (*v149 == v184)
              {
                break;
              }

              v186 = v150;
              if (*v150 == v184)
              {
                break;
              }

              v186 = v151;
              if (*v151 == v184)
              {
                break;
              }

              v186 = v361;
              if (*v361 == v184)
              {
                break;
              }

              v366 = v147;
              v192 = *(v144 + 168);
              v193 = *(v144 + 144);
              v194 = *(v144 + 120);
              v195 = *(v144 + 192);
              v187 = sub_2D52A4(*v144, 1, v184, 1);
              if (v194 >= v185)
              {
                v196 = v185;
              }

              else
              {
                v196 = v194;
              }

              v197 = v193 >= v196;
              if (v193 < v196)
              {
                v196 = v193;
              }

              v198 = 4 * (v194 < v185);
              if (!v197)
              {
                v198 = 5;
              }

              if (v192 < v196)
              {
                v198 = 6;
                v196 = v192;
              }

              if (v195 < v196)
              {
                v198 = 7;
              }

              v49 = v353;
              v199 = v352 + 24 * v198;
              *v199 = v419;
              *(v199 + 8) = *(v144 + 3856);
              *(v199 + 16) = v187;
              LODWORD(v130) = v357;
              v48 = __srca;
              v131 = v356;
              v151 = v354;
              v150 = v355;
              v147 = v366;
              if (v187)
              {
                goto LABEL_229;
              }

              sub_2B572C(&v416);
              v188 = 0;
              LODWORD(v130) = v357;
              v48 = __srca;
              v49 = v353;
              v151 = v354;
              v131 = v356;
              v150 = v355;
              v147 = v366;
              v189 = (&loc_1120530 + 1);
              if (*(&loc_1120530 + 1) < 5u)
              {
LABEL_245:
                v191 = 0;
                goto LABEL_246;
              }

LABEL_230:
              v190 = v189[2];
              if (!v190)
              {
                goto LABEL_245;
              }

              v191 = v188 + v190 + *(v188 + v190);
LABEL_246:
              v200 = &v191[4 * HIDWORD(v184) + 4 + *&v191[4 * HIDWORD(v184) + 4]];
              v201 = &v200[-*v200];
              if (*v201 < 7u || (v202 = *(v201 + 3)) == 0)
              {
                v148 = 0;
LABEL_254:
                v146 = 1;
LABEL_255:
                ++v147;
                if (v145 == v130 && v146 == v131)
                {
                  goto LABEL_257;
                }

                goto LABEL_215;
              }

              v148 = &v200[v202 + *&v200[v202]];
              if (*(v148 + 2) != *(v148 + 4) || *(v148 + 3) != *(v148 + 5))
              {
                goto LABEL_254;
              }

              v145 = (v145 + 1);
              v182 = **(&v144 + 1);
              if (v145 >= (*(*(&v144 + 1) + 8) - **(&v144 + 1)) >> 3)
              {
                v146 = 2;
                goto LABEL_255;
              }
            }

            ++*(v144 + 3864);
            *(v186 + 1) = v185;
            v187 = *(v186 + 2);
            if (!v187)
            {
              v331 = __cxa_allocate_exception(0x40uLL);
              v422 = *v417;
              v420 = sub_7FCF0(1u);
              v421 = v332;
              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v420, &v423);
              if ((v425 & 0x80u) == 0)
              {
                v333 = &v423;
              }

              else
              {
                v333 = v423;
              }

              if ((v425 & 0x80u) == 0)
              {
                v334 = v425;
              }

              else
              {
                v334 = v424;
              }

              v335 = sub_2D390(v331, v333, v334);
            }

LABEL_229:
            v188 = (v187 + *v187);
            v189 = (v188 - *v188);
            if (*v189 < 5u)
            {
              goto LABEL_245;
            }

            goto LABEL_230;
          }

          goto LABEL_167;
        }
      }

      else
      {
        v135 = *(v134 + 3);
        if (v135)
        {
          LODWORD(v135) = *&v133[v135];
        }

        HIDWORD(v387[0]) = v135;
        v136 = &v133[-*v133];
        if (*v136 >= 5u)
        {
          goto LABEL_161;
        }
      }

      v137 = 0;
      goto LABEL_261;
    }

LABEL_274:
    if (v63)
    {
      v208 = 1.0;
      v209 = fmin(v95 + v100, 1.0);
      if (v209 == 1.0)
      {
        goto LABEL_334;
      }
    }

    else
    {
      v210 = v100 - v95;
      v209 = 0.0;
      v208 = fmax(v210, 0.0);
      if (v208 == 0.0)
      {
        goto LABEL_334;
      }
    }

    v211 = v209 - v208;
    if (v209 - v208 <= 0.0)
    {
      v211 = -(v209 - v208);
    }

    if (v211 >= 2.22044605e-16)
    {
      sub_2F4C8(&v395, 0, &v385, v209, v208);
      v212 = *(&v385 + 1);
      v213 = v385;
      if (0xAAAAAAAAAAAAAAABLL * ((*(&v385 + 1) - v385) >> 2) < 2)
      {
        goto LABEL_332;
      }

      v214 = 0.0;
      v362 = v385;
      if (v385 != *(&v385 + 1))
      {
        v215 = (v385 + 12);
        if (v385 + 12 != *(&v385 + 1))
        {
          v216 = 0.0;
          do
          {
            LODWORD(v214) = *(v215 - 2);
            v217 = v74[72];
            v218 = exp(v217 - *&v214 * 6.28318531 / 4294967300.0);
            *&v219 = atan((v218 - v75 / v218) * v76) * 57.2957795;
            LODWORD(v220) = *(v215 - 3);
            HIDWORD(v220) = *v215;
            v367 = v220;
            v221 = *&v219 * 0.0174532925;
            LODWORD(v219) = v215[1];
            v222 = exp(v217 - v219 * 6.28318531 / 4294967300.0);
            v76 = 0.5;
            v223 = atan((v222 - 1.0 / v222) * 0.5) * 57.2957795 * 0.0174532925;
            v75 = 1.0;
            v224.i64[0] = v367;
            v224.i64[1] = HIDWORD(v367);
            v225 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v224), v350), v349), v348), v347);
            v368 = vsubq_f64(v225, vdupq_laneq_s64(v225, 1)).f64[0];
            v226 = sin((v221 - v223) * 0.5);
            v227 = v226 * v226;
            v228 = cos(v221);
            v229 = v228 * cos(v223);
            v230 = sin(0.5 * v368);
            v231 = atan2(sqrt(v230 * v230 * v229 + v227), sqrt(1.0 - (v230 * v230 * v229 + v227)));
            v214 = (v231 + v231) * 6372797.56;
            v216 = v216 + v214;
            v215 += 3;
          }

          while (v215 != v212);
          v214 = v216 * 100.0;
          if (v216 * 100.0 < 0.0)
          {
            v48 = __srca;
            if (v214 <= -4.50359963e15)
            {
              v233 = 1;
              v232 = v216 * 100.0;
            }

            else
            {
              v232 = (((v214 + v214) - 1) / 2);
              v233 = 1;
            }

LABEL_304:
            if (v232 >= 9.22337204e18)
            {
              v259 = 0x7FFFFFFFFFFFFFFELL;
            }

            else
            {
              if (v233)
              {
                if (v214 > -4.50359963e15)
                {
                  v258 = (v214 + v214) - 1 + (((v214 + v214) - 1) >> 63);
                  goto LABEL_311;
                }
              }

              else if (v214 < 4.50359963e15)
              {
                v258 = (v214 + v214) + 1;
LABEL_311:
                v214 = (v258 >> 1);
              }

              v259 = v214;
            }

            v260 = v386;
            *&v386 = 0;
            v385 = 0uLL;
            v261 = *(v363 + 8);
            v262 = *(v351 + 1);
            *v410 = *v351;
            *&v410[16] = v262;
            v263 = sub_319730(v261, v410);
            if (v263 && (v264 = (v263 - *v263), *v264 >= 0xFu) && (v265 = v264[7]) != 0)
            {
              v266 = *(v263 + v265);
            }

            else
            {
              LOWORD(v266) = 0;
            }

            v267 = *(v363 + 8);
            v268 = *(v351 + 1);
            *v410 = *v351;
            *&v410[16] = v268;
            v269 = sub_319730(v267, v410);
            if (v269 && (v270 = (v269 - *v269), *v270 >= 0x13u) && (v271 = v270[9]) != 0)
            {
              v272 = *(v269 + v271);
            }

            else
            {
              v272 = 0;
            }

            v273 = *(v363 + 8);
            v274 = *(v351 + 1);
            *v410 = *v351;
            *&v410[16] = v274;
            v275 = sub_319730(v273, v410);
            v276 = 0.0;
            if (v275)
            {
              v277 = (v275 - *v275);
              v278 = v341;
              if (*v277 < 0x19u)
              {
                v280 = BYTE4(v341);
              }

              else
              {
                v279 = v277[12];
                v280 = BYTE4(v341);
                if (v279)
                {
                  v276 = *(v275 + v279);
                }
              }
            }

            else
            {
              v278 = v341;
              v280 = BYTE4(v341);
            }

            v281 = *(v351 + 1);
            v371 = *v351;
            v372 = v281;
            *v373 = v362;
            *&v374 = v260;
            WORD4(v374) = v266;
            v375 = v272;
            v376 = v259;
            v377 = v276;
            v378 = v280;
            v379 = v278;
            v380 = 0;
            sub_F534B0(&v402, &v371);
            if (v373[0])
            {
              v373[1] = v373[0];
              operator delete(v373[0]);
            }

            v213 = v385;
            v102 = v351;
LABEL_332:
            if (v213)
            {
              *(&v385 + 1) = v213;
              operator delete(v213);
            }

            goto LABEL_334;
          }

          v48 = __srca;
          if (v214 >= 4.50359963e15)
          {
            v233 = 0;
            v232 = v216 * 100.0;
            goto LABEL_304;
          }
        }
      }

      v233 = 0;
      v232 = (((v214 + v214) + 1) >> 1);
      goto LABEL_304;
    }

LABEL_334:
    if (v395)
    {
      v396 = v395;
      operator delete(v395);
    }

    v77 = v102 + 48;
  }

  while (v77 != v342);
LABEL_373:
  v305 = v403;
  *v336 = v402;
  *(v336 + 16) = v305;
  *(v336 + 32) = v404;
  v306 = v405;
  v405 = 0uLL;
  *(v336 + 40) = v306;
  v307 = v406;
  *(v336 + 56) = v406;
  *(v336 + 72) = v407;
  if (*(&v307 + 1))
  {
    v308 = *(v307 + 8);
    if ((*(&v306 + 1) & (*(&v306 + 1) - 1)) != 0)
    {
      if (v308 >= *(&v306 + 1))
      {
        v308 %= *(&v306 + 1);
      }
    }

    else
    {
      v308 &= *(&v306 + 1) - 1;
    }

    *(v306 + 8 * v308) = v336 + 56;
    v406 = 0uLL;
  }

  *(v336 + 80) = *v408;
  *(v336 + 96) = v409;
  v408[1] = 0;
  v409 = 0;
  v408[0] = 0;
  if (v49)
  {
    operator delete(v49);
  }

LABEL_381:
  if (v48)
  {
    operator delete(v48);
  }

  if (v400)
  {
    v401 = v400;
    operator delete(v400);
  }

  v309 = v408[0];
  if (v408[0])
  {
    v310 = v408[1];
    v311 = v408[0];
    if (v408[1] != v408[0])
    {
      do
      {
        v312 = *(v310 - 8);
        if (v312)
        {
          *(v310 - 7) = v312;
          operator delete(v312);
        }

        v310 -= 96;
      }

      while (v310 != v309);
      v311 = v408[0];
    }

    v408[1] = v309;
    operator delete(v311);
  }

  v313 = v406;
  if (v406)
  {
    do
    {
      v314 = *v313;
      operator delete(v313);
      v313 = v314;
    }

    while (v314);
  }

  v315 = v405;
  *&v405 = 0;
  if (v315)
  {
    operator delete(v315);
  }
}

void sub_F3B0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a63)
  {
    operator delete(a63);
  }

  v64 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v64;
    operator delete(v64);
    v65 = STACK[0x230];
    if (!STACK[0x230])
    {
LABEL_7:
      if (!a31)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v65 = STACK[0x230];
    if (!STACK[0x230])
    {
      goto LABEL_7;
    }
  }

  STACK[0x238] = v65;
  operator delete(v65);
  if (!a31)
  {
LABEL_8:
    if (!a36)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a31);
  if (!a36)
  {
LABEL_9:
    v66 = STACK[0x258];
    if (!STACK[0x258])
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a36);
  v66 = STACK[0x258];
  if (!STACK[0x258])
  {
LABEL_10:
    sub_F38730(&STACK[0x270]);
    _Unwind_Resume(a1);
  }

LABEL_15:
  STACK[0x260] = v66;
  operator delete(v66);
  sub_F38730(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_F3B348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_73ECC(a2);
  if (*v6 != v6[1])
  {
    v7 = *sub_73ECC(a3);
    v8 = sub_73ECC(a2);
    v9 = *v8;
    v10 = v8[1];
    v11 = 1.0;
    if (*v8 == v10)
    {
      goto LABEL_7;
    }

    do
    {
      sub_F3E408(*(v9 + 32), v7 + 4, (a1 + 288), 0);
      if (v12 < v11)
      {
        v11 = v12;
      }

      v9 += 96;
    }

    while (v9 != v10);
    if (v11 >= 0.0)
    {
LABEL_7:
      v13 = 0.0;
      sub_2F4C8(v7 + 4, 0, &v45, 0.0, v11);
      v14 = v7[4];
      if (v14)
      {
        v7[5] = v14;
        operator delete(v14);
      }

      v15 = v45;
      *(v7 + 2) = v45;
      v7[6] = v46;
      v16 = *(&v15 + 1);
      v17 = (v15 + 12);
      if (v15 != *(&v15 + 1) && v17 != *(&v15 + 1))
      {
        v22 = 0.0;
        v42 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
        v40 = vdupq_n_s64(0xC066800000000000);
        v41 = vdupq_n_s64(0x4076800000000000uLL);
        v39 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
        HIDWORD(v23) = 1096306543;
        do
        {
          LODWORD(v23) = *(v17 - 2);
          v24 = exp(3.14159265 - *&v23 * 6.28318531 / 4294967300.0);
          *&v25 = atan((v24 - 1.0 / v24) * 0.5) * 57.2957795;
          LODWORD(v26) = *(v17 - 3);
          HIDWORD(v26) = *v17;
          v43 = v26;
          v27 = *&v25 * 0.0174532925;
          LODWORD(v25) = v17[1];
          v28 = exp(3.14159265 - v25 * 6.28318531 / 4294967300.0);
          v29 = atan((v28 - 1.0 / v28) * 0.5) * 57.2957795 * 0.0174532925;
          v30.i64[0] = v43;
          v30.i64[1] = HIDWORD(v43);
          v31 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v30), v41), v42), v40), v39);
          v44 = vsubq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
          v32 = sin((v27 - v29) * 0.5);
          v33 = v32 * v32;
          v34 = cos(v27);
          v35 = v34 * cos(v29);
          v36 = sin(0.5 * v44);
          v37 = atan2(sqrt(v36 * v36 * v35 + v33), sqrt(1.0 - (v36 * v36 * v35 + v33)));
          v23 = (v37 + v37) * 6372797.56;
          v22 = v22 + v23;
          v17 += 3;
        }

        while (v17 != v16);
        v13 = v22 * 100.0;
        if (v22 * 100.0 < 0.0)
        {
          if (v13 <= -4.50359963e15)
          {
            v19 = 1;
            v20 = v22 * 100.0;
          }

          else
          {
            v20 = (((v13 + v13) - 1) / 2);
            v19 = 1;
          }

LABEL_15:
          if (v20 >= 9.22337204e18)
          {
            v38 = 0x7FFFFFFFFFFFFFFELL;
LABEL_28:
            *(*sub_73ECC(a3) + 72) = v38;
            return;
          }

          if (v19)
          {
            if (v13 > -4.50359963e15)
            {
              v21 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
LABEL_26:
              v13 = (v21 >> 1);
            }
          }

          else if (v13 < 4.50359963e15)
          {
            v21 = (v13 + v13) + 1;
            goto LABEL_26;
          }

          v38 = v13;
          goto LABEL_28;
        }

        if (v13 >= 4.50359963e15)
        {
          v19 = 0;
          v20 = v22 * 100.0;
          goto LABEL_15;
        }
      }

      v19 = 0;
      v20 = (((v13 + v13) + 1) >> 1);
      goto LABEL_15;
    }
  }
}

void sub_F3B71C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_4D1DC0(a2) - 1;
  v9 = a3[1];
  if ((v9 - *a3) < 0x11)
  {
    v119 = 0xFFFFFFFF00000000;
  }

  else
  {
    v119 = *(v9 - 32);
  }

  sub_F3904C(a1, a2, (v9 - 16), &v119, 0, &v109);
  if (*(&v109 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v110 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v117;
    if (v117 != *(&v117 + 1))
    {
      while (*(v11 + 32) != *(v11 + 40))
      {
        v11 += 96;
        if (v11 == *(&v117 + 1))
        {
          if (sub_588E0(&v109) != v8)
          {
            v45 = sub_588E0(&v109);
            v46 = sub_5FC64(&v109);
            v47 = sub_4D1F50(a2, v8);
            v48 = (*v47 - **v47);
            if (*v48 >= 9u && (v49 = v48[4]) != 0)
            {
              v50 = *(*v47 + v49);
            }

            else
            {
              v50 = 0;
            }

            sub_F3700C(a1, a2, v45, v46, v8, v50, 0, &v99);
            if (*(&v99 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v100 + 1) != 0x7FFFFFFFFFFFFFFFLL)
            {
              v66 = __p[0];
              if (__p[0] != __p[1])
              {
                while (v66[4] != v66[5])
                {
                  v66 += 12;
                  if (v66 == __p[1])
                  {
                    sub_F3BFF0(a1, &v109, &v99);
                    v67 = *(a4 + 8);
                    if (v67 >= *(a4 + 16))
                    {
                      sub_F47DA0(a4, &v109);
                    }

                    else
                    {
                      v68 = v109;
                      v69 = v110;
                      *(v67 + 32) = v111;
                      *v67 = v68;
                      *(v67 + 16) = v69;
                      v70 = v112;
                      v71 = v114;
                      v112 = 0;
                      *(v67 + 56) = v114;
                      *(v67 + 40) = v70;
                      *(v67 + 48) = v113;
                      v113 = 0;
                      v72 = v115;
                      *(v67 + 64) = v115;
                      *(v67 + 72) = v116;
                      if (v72)
                      {
                        v73 = v71[1];
                        v74 = *(v67 + 48);
                        if ((v74 & (v74 - 1)) != 0)
                        {
                          if (v73 >= v74)
                          {
                            v73 %= v74;
                          }
                        }

                        else
                        {
                          v73 &= v74 - 1;
                        }

                        v70[v73] = v67 + 56;
                        v114 = 0;
                        v115 = 0;
                      }

                      *(v67 + 80) = 0;
                      *(v67 + 88) = 0;
                      *(v67 + 96) = 0;
                      *(v67 + 80) = v117;
                      *(v67 + 96) = v118;
                      v117 = 0uLL;
                      v118 = 0;
                      v91 = v67 + 104;
                      *(a4 + 8) = v67 + 104;
                    }

                    *(a4 + 8) = v91;
                    if (v91 >= *(a4 + 16))
                    {
                      sub_F47DA0(a4, &v99);
                      goto LABEL_100;
                    }

                    v92 = v99;
                    v93 = v100;
                    *(v91 + 32) = v101;
                    *v91 = v92;
                    *(v91 + 16) = v93;
                    v94 = v102;
                    v95 = v104;
                    v102 = 0;
                    *(v91 + 56) = v104;
                    *(v91 + 40) = v94;
                    *(v91 + 48) = v103;
                    v103 = 0;
                    v96 = v105;
                    *(v91 + 64) = v105;
                    *(v91 + 72) = v106;
                    if (v96)
                    {
                      v97 = v95[1];
                      v98 = *(v91 + 48);
                      if ((v98 & (v98 - 1)) != 0)
                      {
                        if (v97 >= v98)
                        {
                          v97 %= v98;
                        }
                      }

                      else
                      {
                        v97 &= v98 - 1;
                      }

                      v94[v97] = v91 + 56;
                      v104 = 0;
                      v105 = 0;
                    }

                    *(v91 + 80) = 0;
                    *(v91 + 88) = 0;
                    *(v91 + 96) = 0;
                    *(v91 + 80) = *__p;
                    *(v91 + 96) = v108;
                    __p[0] = 0;
                    __p[1] = 0;
                    v108 = 0;
                    v84 = v91 + 104;
                    goto LABEL_99;
                  }
                }
              }
            }

            v75 = *(a4 + 8);
            if (v75 >= *(a4 + 16))
            {
              sub_F47DA0(a4, &v109);
            }

            else
            {
              v76 = v109;
              v77 = v110;
              *(v75 + 32) = v111;
              *v75 = v76;
              *(v75 + 16) = v77;
              v78 = v112;
              v79 = v114;
              v112 = 0;
              *(v75 + 56) = v114;
              *(v75 + 40) = v78;
              *(v75 + 48) = v113;
              v113 = 0;
              v80 = v115;
              *(v75 + 64) = v115;
              *(v75 + 72) = v116;
              if (v80)
              {
                v81 = v79[1];
                v82 = *(v75 + 48);
                if ((v82 & (v82 - 1)) != 0)
                {
                  if (v81 >= v82)
                  {
                    v81 %= v82;
                  }
                }

                else
                {
                  v81 &= v82 - 1;
                }

                v78[v81] = v75 + 56;
                v114 = 0;
                v115 = 0;
              }

              *(v75 + 80) = 0;
              *(v75 + 88) = 0;
              *(v75 + 96) = 0;
              *(v75 + 80) = v117;
              *(v75 + 96) = v118;
              v117 = 0uLL;
              v118 = 0;
              v84 = v75 + 104;
LABEL_99:
              *(a4 + 8) = v84;
            }

LABEL_100:
            *(a4 + 8) = v84;
            ++*(*(a1 + 296) + 48);
            v85 = __p[0];
            if (__p[0])
            {
              v86 = __p[1];
              v87 = __p[0];
              if (__p[1] != __p[0])
              {
                do
                {
                  v88 = *(v86 - 8);
                  if (v88)
                  {
                    *(v86 - 7) = v88;
                    operator delete(v88);
                  }

                  v86 -= 96;
                }

                while (v86 != v85);
                v87 = __p[0];
              }

              __p[1] = v85;
              operator delete(v87);
            }

            v89 = v104;
            if (v104)
            {
              do
              {
                v90 = *v89;
                operator delete(v89);
                v89 = v90;
              }

              while (v90);
            }

            goto LABEL_52;
          }

          v12 = *(a4 + 8);
          if (v12 >= *(a4 + 16))
          {
            sub_F47DA0(a4, &v109);
          }

          else
          {
            v13 = v109;
            v14 = v110;
            *(v12 + 32) = v111;
            *v12 = v13;
            *(v12 + 16) = v14;
            v15 = v112;
            v16 = v114;
            v112 = 0;
            *(v12 + 56) = v114;
            *(v12 + 40) = v15;
            *(v12 + 48) = v113;
            v113 = 0;
            v17 = v115;
            *(v12 + 64) = v115;
            *(v12 + 72) = v116;
            if (v17)
            {
              v18 = v16[1];
              v19 = *(v12 + 48);
              if ((v19 & (v19 - 1)) != 0)
              {
                if (v18 >= v19)
                {
                  v18 %= v19;
                }
              }

              else
              {
                v18 &= v19 - 1;
              }

              v15[v18] = v12 + 56;
              v114 = 0;
              v115 = 0;
            }

            *(v12 + 80) = 0;
            *(v12 + 88) = 0;
            *(v12 + 96) = 0;
            *(v12 + 80) = v117;
            *(v12 + 96) = v118;
            v117 = 0uLL;
            v118 = 0;
            v83 = v12 + 104;
            *(a4 + 8) = v12 + 104;
          }

          *(a4 + 8) = v83;
          ++*(*(a1 + 296) + 48);
          v59 = v117;
          if (v117)
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }
      }
    }
  }

  v20 = a3[1];
  v22 = *(v20 - 16);
  v21 = *(v20 - 8);
  v23 = sub_3187E8(*(a1 + 8), v22, 1);
  if (v23 && (v24 = &v23[-*v23], *v24 >= 5u) && (v25 = *(v24 + 2)) != 0 && (v26 = &v23[v25], v27 = *v26, *&v26[v27] > HIDWORD(v22)) && (v28 = sub_319480(&v26[v27], v22)) != 0)
  {
    v29 = (v28 - *v28);
    if (*v29 >= 7u && (v30 = v29[3]) != 0)
    {
      v31 = *(v28 + v30);
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v32 = sub_4D1F50(a2, v8);
  v33 = (*v32 - **v32);
  if (*v33 >= 9u && (v34 = v33[4]) != 0)
  {
    v35 = *(*v32 + v34);
  }

  else
  {
    v35 = 0;
  }

  sub_F3700C(a1, a2, v21, v31, v8, v35, 0, &v99);
  if (*(&v99 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v100 + 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = __p[0];
    if (__p[0] != __p[1])
    {
      while (v36[4] != v36[5])
      {
        v36 += 12;
        if (v36 == __p[1])
        {
          v37 = *(a4 + 8);
          if (v37 >= *(a4 + 16))
          {
            sub_F47DA0(a4, &v99);
            *(a4 + 8) = v51;
            break;
          }

          v38 = v99;
          v39 = v100;
          *(v37 + 32) = v101;
          *v37 = v38;
          *(v37 + 16) = v39;
          v40 = v102;
          v41 = v104;
          v102 = 0;
          *(v37 + 56) = v104;
          *(v37 + 40) = v40;
          *(v37 + 48) = v103;
          v103 = 0;
          v42 = v105;
          *(v37 + 64) = v105;
          *(v37 + 72) = v106;
          if (v42)
          {
            v43 = v41[1];
            v44 = *(v37 + 48);
            if ((v44 & (v44 - 1)) != 0)
            {
              if (v43 >= v44)
              {
                v43 %= v44;
              }
            }

            else
            {
              v43 &= v44 - 1;
            }

            v40[v43] = v37 + 56;
            v104 = 0;
            v105 = 0;
          }

          *(v37 + 80) = 0;
          *(v37 + 88) = 0;
          *(v37 + 96) = 0;
          *(v37 + 80) = *__p;
          *(v37 + 96) = v108;
          __p[0] = 0;
          __p[1] = 0;
          v108 = 0;
          *(a4 + 8) = v37 + 104;
          *(a4 + 8) = v37 + 104;
          ++*(*(a1 + 296) + 68);
          v52 = __p[0];
          if (__p[0])
          {
            goto LABEL_43;
          }

          goto LABEL_50;
        }
      }
    }
  }

  ++*(*(a1 + 296) + 68);
  v52 = __p[0];
  if (__p[0])
  {
LABEL_43:
    v53 = __p[1];
    v54 = v52;
    if (__p[1] != v52)
    {
      do
      {
        v55 = *(v53 - 8);
        if (v55)
        {
          *(v53 - 7) = v55;
          operator delete(v55);
        }

        v53 -= 96;
      }

      while (v53 != v52);
      v54 = __p[0];
    }

    __p[1] = v52;
    operator delete(v54);
  }

LABEL_50:
  v56 = v104;
  if (v104)
  {
    do
    {
      v57 = *v56;
      operator delete(v56);
      v56 = v57;
    }

    while (v57);
  }

LABEL_52:
  v58 = v102;
  v102 = 0;
  if (v58)
  {
    operator delete(v58);
  }

  v59 = v117;
  if (v117)
  {
LABEL_55:
    v60 = *(&v117 + 1);
    v61 = v59;
    if (*(&v117 + 1) != v59)
    {
      do
      {
        v62 = *(v60 - 8);
        if (v62)
        {
          *(v60 - 7) = v62;
          operator delete(v62);
        }

        v60 -= 96;
      }

      while (v60 != v59);
      v61 = v117;
    }

    *(&v117 + 1) = v59;
    operator delete(v61);
  }

LABEL_62:
  v63 = v114;
  if (v114)
  {
    do
    {
      v64 = *v63;
      operator delete(v63);
      v63 = v64;
    }

    while (v64);
  }

  v65 = v112;
  v112 = 0;
  if (v65)
  {
    operator delete(v65);
  }
}

void sub_F3BF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_F38730(&a9);
  sub_F38730(&a22);
  _Unwind_Resume(a1);
}

void sub_F3BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F38730(va);
  _Unwind_Resume(a1);
}

void sub_F3BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F38730(va);
  _Unwind_Resume(a1);
}

void sub_F3BFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_F38730(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F3BFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *sub_73ECC(a3);
  v7 = sub_73ECC(a2);
  v8 = *v7;
  v9 = v7[1];
  v10 = 0.0;
  if (*v7 != v9)
  {
    do
    {
      sub_F3E408((*(v8 + 40) - 12), v6 + 4, (a1 + 288), 1);
      if (v10 < v11)
      {
        v10 = v11;
      }

      v8 += 96;
    }

    while (v8 != v9);
  }

  sub_2F4C8(v6 + 4, 0, &v45, v10, 1.0);
  v12 = v6[4];
  if (v12)
  {
    v6[5] = v12;
    operator delete(v12);
  }

  v16 = v45;
  *(v6 + 2) = v45;
  v13 = *(&v16 + 1);
  v6[6] = v46;
  v14 = v16;
  v15 = (v16 + 12);
  *&v16 = 0;
  if (v14 == *(&v16 + 1) || v15 == *(&v16 + 1))
  {
    goto LABEL_12;
  }

  v21 = 0.0;
  v42 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v40 = vdupq_n_s64(0xC066800000000000);
  v41 = vdupq_n_s64(0x4076800000000000uLL);
  v39 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  HIDWORD(v22) = 1096306543;
  do
  {
    LODWORD(v22) = *(v15 - 2);
    v23 = exp(3.14159265 - *&v22 * 6.28318531 / 4294967300.0);
    *&v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795;
    LODWORD(v25) = *(v15 - 3);
    HIDWORD(v25) = *v15;
    v43 = v25;
    v26 = *&v24 * 0.0174532925;
    LODWORD(v24) = v15[1];
    v27 = exp(3.14159265 - v24 * 6.28318531 / 4294967300.0);
    v28 = atan((v27 - 1.0 / v27) * 0.5) * 57.2957795 * 0.0174532925;
    v29.i64[0] = v43;
    v29.i64[1] = HIDWORD(v43);
    v30 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v29), v41), v42), v40), v39);
    v44 = vsubq_f64(v30, vdupq_laneq_s64(v30, 1)).f64[0];
    v31 = sin((v26 - v28) * 0.5);
    v32 = v31 * v31;
    v33 = cos(v26);
    v34 = v33 * cos(v28);
    v35 = sin(0.5 * v44);
    v36 = atan2(sqrt(v35 * v35 * v34 + v32), sqrt(1.0 - (v35 * v35 * v34 + v32)));
    v22 = (v36 + v36) * 6372797.56;
    v21 = v21 + v22;
    v15 += 3;
  }

  while (v15 != v13);
  *&v16 = v21 * 100.0;
  if (v21 * 100.0 >= 0.0)
  {
    if (*&v16 >= 4.50359963e15)
    {
      v18 = 0;
      v19 = v21 * 100.0;
      goto LABEL_13;
    }

LABEL_12:
    v18 = 0;
    v19 = (((*&v16 + *&v16) + 1) >> 1);
    goto LABEL_13;
  }

  if (*&v16 <= -4.50359963e15)
  {
    v18 = 1;
    v19 = v21 * 100.0;
  }

  else
  {
    v19 = (((*&v16 + *&v16) - 1) / 2);
    v18 = 1;
  }

LABEL_13:
  if (v19 < 9.22337204e18)
  {
    if (v18)
    {
      if (*&v16 > -4.50359963e15)
      {
        v20 = (*&v16 + *&v16) - 1 + (((*&v16 + *&v16) - 1) >> 63);
LABEL_24:
        *&v16 = (v20 >> 1);
      }
    }

    else if (*&v16 < 4.50359963e15)
    {
      v20 = (*&v16 + *&v16) + 1;
      goto LABEL_24;
    }

    v37 = *&v16;
    goto LABEL_26;
  }

  v37 = 0x7FFFFFFFFFFFFFFELL;
LABEL_26:
  result = sub_73ECC(a3);
  *(*result + 72) = v37;
  return result;
}

void sub_F3C3AC(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v8 = *a3;
  v9 = (*a3)[2];
  *&v294 = **a3;
  *(&v294 + 1) = v9;
  *(&v295 + 1) = v8[6];
  v10 = v8[3];
  *&v295 = v8[4];
  v11 = sub_3187E8(*(a1 + 8), v9, 1);
  if (v11 && (v12 = &v11[-*v11], *v12 >= 5u) && (v13 = *(v12 + 2)) != 0 && (v14 = &v11[v13], v15 = *v14, *&v14[v15] > HIDWORD(v9)) && (v16 = sub_319480(&v14[v15], v9)) != 0)
  {
    v17 = (v16 - *v16);
    if (*v17 >= 7u && (v18 = v17[3]) != 0)
    {
      v19 = *(v16 + v18);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = (*a3)[4];
  v21 = (*a3)[5];
  v22 = sub_3187E8(*(a1 + 8), v20, 1);
  if (v22 && (v23 = &v22[-*v22], *v23 >= 5u) && (v24 = *(v23 + 2)) != 0 && (v25 = &v22[v24], v26 = *v25, *&v25[v26] > HIDWORD(v20)) && (v27 = sub_319480(&v25[v26], v20)) != 0)
  {
    v28 = (v27 - *v27);
    if (*v28 < 7u)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28[3];
      if (v29)
      {
        v29 = *(v27 + v29);
      }
    }
  }

  else
  {
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v286 = v10;
  *(&v286 + 1) = v19;
  *&v287 = v21;
  *(&v287 + 1) = v29;
  v289 = 0u;
  v290 = 0u;
  v288 = 3;
  v291 = 1065353216;
  v293 = 0;
  v292 = 0uLL;
  v30 = v294 >= 0xFFFFFFFF00000000 || v294 == 0;
  v31 = !v30;
  if (!v30)
  {
    v32 = *(&v294 + 1) >= 0xFFFFFFFF00000000 || DWORD2(v294) == 0;
    v31 = !v32;
    if (!v32)
    {
      v33 = v295 >= 0xFFFFFFFF00000000 || v295 == 0;
      v31 = !v33;
      if (!v33)
      {
        v31 = *(&v295 + 1) < 0xFFFFFFFF00000000 && DWORD2(v295) != 0;
      }
    }
  }

  if (v31)
  {
    v35 = *(a1 + 8);
    v277 = v294;
    v278 = v295;
    v36 = sub_319730(v35, &v277);
    if (v36)
    {
      v37 = (v36 - *v36);
      if (*v37 >= 0xDu)
      {
        v38 = v37[6];
        if (v38)
        {
          v39 = (v36 + v38 + *(v36 + v38));
          v40 = (v39 - *v39);
          if (*v40 >= 5u)
          {
            v41 = v40[2];
            if (v41)
            {
              if (*(v39 + v41 + *(v39 + v41)))
              {
                if (*(a1 + 80) != 1)
                {
                  goto LABEL_341;
                }

                v42 = *(a1 + 8);
                v277 = v294;
                v278 = v295;
                v43 = sub_319730(v42, &v277);
                if (v43 && (v44 = (v43 - *v43), *v44 >= 0xFu))
                {
                  v45 = v44[7];
                  if (v45)
                  {
                    LODWORD(v45) = *(v43 + v45);
                  }
                }

                else
                {
                  LODWORD(v45) = 0;
                }

                if (v45 >= *(a1 + 56))
                {
LABEL_341:
                  if ((*(a1 + 280) != 1 || sub_F3F478(a1, a2, (*a3)[1], (*a3)[7], &v294)) && sub_F3DF40(a1, &v294))
                  {
                    ++*(*(a1 + 296) + 56);
                    sub_F464B0(a1, &v294, 1, 1, 0, &v277);
                    sub_F534B0(&v286, &v277);
                    if (__p)
                    {
                      v280 = __p;
                      operator delete(__p);
                    }

                    v46 = *(a4 + 8);
                    if (v46 >= *(a4 + 16))
                    {
                      sub_F47DA0(a4, &v286);
                      *(a4 + 8) = v227;
                    }

                    else
                    {
                      v47 = v286;
                      v48 = v287;
                      *(v46 + 32) = v288;
                      *v46 = v47;
                      *(v46 + 16) = v48;
                      v49 = v289;
                      v50 = v290;
                      *&v289 = 0;
                      *(v46 + 56) = v290;
                      *(v46 + 40) = __PAIR128__(*(&v289 + 1), v49);
                      *(&v289 + 1) = 0;
                      v51 = *(&v290 + 1);
                      *(v46 + 64) = *(&v290 + 1);
                      *(v46 + 72) = v291;
                      if (v51)
                      {
                        v52 = *(v50 + 8);
                        v53 = *(v46 + 48);
                        if ((v53 & (v53 - 1)) != 0)
                        {
                          if (v52 >= v53)
                          {
                            v52 %= v53;
                          }
                        }

                        else
                        {
                          v52 &= v53 - 1;
                        }

                        *(v49 + 8 * v52) = v46 + 56;
                        v290 = 0uLL;
                      }

                      *(v46 + 80) = 0;
                      *(v46 + 88) = 0;
                      *(v46 + 96) = 0;
                      *(v46 + 80) = v292;
                      *(v46 + 96) = v293;
                      v292 = 0uLL;
                      v293 = 0;
                      *(a4 + 8) = v46 + 104;
                      *(a4 + 8) = v46 + 104;
                    }

                    goto LABEL_259;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v54 = v294 >= 0xFFFFFFFF00000000 || v294 == 0;
  v55 = !v54;
  if (!v54)
  {
    v56 = *(&v294 + 1) >= 0xFFFFFFFF00000000 || DWORD2(v294) == 0;
    v55 = !v56;
    if (!v56)
    {
      v57 = v295 >= 0xFFFFFFFF00000000 || v295 == 0;
      v55 = !v57;
      if (!v57)
      {
        v55 = *(&v295 + 1) < 0xFFFFFFFF00000000 && DWORD2(v295) != 0;
      }
    }
  }

  if (v55)
  {
    v59 = *(a1 + 8);
    v277 = v294;
    v278 = v295;
    v60 = sub_319730(v59, &v277);
    if (v60)
    {
      v61 = (v60 - *v60);
      if (*v61 >= 0xDu)
      {
        v62 = v61[6];
        if (v62)
        {
          v63 = (v60 + v62 + *(v60 + v62));
          v64 = (v63 - *v63);
          if (*v64 >= 5u)
          {
            v65 = v64[2];
            if (v65)
            {
              if (*(v63 + v65 + *(v63 + v65)) && !sub_F3DF40(a1, &v294))
              {
                ++*(*(a1 + 296) + 60);
              }
            }
          }
        }
      }
    }
  }

  sub_F46968(*(a1 + 8), (*a3)[2], (*a3)[4], &v284);
  v66 = v284;
  v67 = v285;
  if (v284 != v285)
  {
    do
    {
      while (1)
      {
        if (sub_F3DF40(a1, v66))
        {
          if (*(a1 + 280) != 1)
          {
            break;
          }

          v68 = (*a3)[3];
          v69 = (*a3)[5];
          *&v277 = sub_3175DC(*(a1 + 8), *(v66 + 1), *(v66 + 2));
          if (sub_F3F6FC(a1, a2, v68, v69, &v277))
          {
            break;
          }
        }

        ++*(*(a1 + 296) + 60);
        v66 += 2;
        if (v66 == v67)
        {
          goto LABEL_126;
        }
      }

      ++*(*(a1 + 296) + 56);
      v70 = *a3;
      v71 = **a3;
      if (v71 && (v72 = *(v70 + 1), v72 != -1) && *v66 == v71)
      {
        v73 = *(v66 + 1) == v72;
        v74 = *(v70 + 12);
        if (!v74)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v73 = 0;
        v74 = *(v70 + 12);
        if (!v74)
        {
          goto LABEL_122;
        }
      }

      v75 = *(v70 + 13);
      if (v75 == -1 || *(v66 + 6) != v74)
      {
LABEL_122:
        v76 = 0;
        goto LABEL_123;
      }

      v76 = *(v66 + 7) == v75;
LABEL_123:
      sub_F464B0(a1, v66, v73, v76, 0, &v277);
      sub_F534B0(&v286, &v277);
      if (__p)
      {
        v280 = __p;
        operator delete(__p);
      }

      v66 += 2;
    }

    while (v66 != v67);
  }

LABEL_126:
  v77 = sub_73ECC(&v286);
  if (*v77 == v77[1])
  {
    sub_F3904C(a1, a2, *a3 + 2, *a3, 0, &v277);
    sub_F3904C(a1, a2, *a3 + 4, *a3 + 6, 1, &v267);
    if (*(&v277 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_149;
    }

    if (*(&v278 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_149;
    }

    v86 = v282;
    if (v282 == v283)
    {
      goto LABEL_149;
    }

    do
    {
      if (*(v86 + 4) == *(v86 + 5))
      {
        goto LABEL_149;
      }

      v86 += 96;
    }

    while (v86 != v283);
    v87 = *(&v267 + 1) == 0x7FFFFFFFFFFFFFFFLL || *(&v268 + 1) == 0x7FFFFFFFFFFFFFFFLL;
    if (v87 || (v88 = v275, v275 == *(&v275 + 1)))
    {
LABEL_149:
      v96 = (*a3)[2];
      v95 = (*a3)[3];
      v97 = sub_3187E8(*(a1 + 8), v96, 1);
      if (v97 && (v98 = &v97[-*v97], *v98 >= 5u) && (v99 = *(v98 + 2)) != 0 && (v100 = &v97[v99], v101 = *v100, *&v100[v101] > HIDWORD(v96)) && (v102 = sub_319480(&v100[v101], v96)) != 0)
      {
        v103 = (v102 - *v102);
        if (*v103 >= 7u && (v104 = v103[3]) != 0)
        {
          v105 = *(v102 + v104);
        }

        else
        {
          v105 = 0;
        }
      }

      else
      {
        v105 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v107 = (*a3)[4];
      v106 = (*a3)[5];
      v108 = sub_3187E8(*(a1 + 8), v107, 1);
      if (v108 && (v109 = &v108[-*v108], *v109 >= 5u) && (v110 = *(v109 + 2)) != 0 && (v111 = &v108[v110], v112 = *v111, *&v111[v112] > HIDWORD(v107)) && (v113 = sub_319480(&v111[v112], v107)) != 0)
      {
        v114 = (v113 - *v113);
        if (*v114 >= 7u && (v115 = v114[3]) != 0)
        {
          v116 = *(v113 + v115);
        }

        else
        {
          v116 = 0;
        }
      }

      else
      {
        v116 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_F3700C(a1, a2, v95, v105, v106, v116, 0, &v257);
      if (*(&v257 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v258 + 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v117 = v265[0];
        if (v265[0] != v265[1])
        {
          while (v117[4] != v117[5])
          {
            v117 += 12;
            if (v117 == v265[1])
            {
              v118 = *(a4 + 8);
              if (v118 >= *(a4 + 16))
              {
                sub_F47DA0(a4, &v257);
              }

              else
              {
                v119 = v257;
                v120 = v258;
                *(v118 + 32) = v259;
                *v118 = v119;
                *(v118 + 16) = v120;
                v121 = v260;
                v122 = v262;
                v260 = 0;
                *(v118 + 56) = v262;
                *(v118 + 40) = v121;
                *(v118 + 48) = v261;
                v261 = 0;
                v123 = v263;
                *(v118 + 64) = v263;
                *(v118 + 72) = v264;
                if (v123)
                {
                  v124 = v122[1];
                  v125 = *(v118 + 48);
                  if ((v125 & (v125 - 1)) != 0)
                  {
                    if (v124 >= v125)
                    {
                      v124 %= v125;
                    }
                  }

                  else
                  {
                    v124 &= v125 - 1;
                  }

                  v121[v124] = v118 + 56;
                  v262 = 0;
                  v263 = 0;
                }

                *(v118 + 80) = 0;
                *(v118 + 88) = 0;
                *(v118 + 96) = 0;
                *(v118 + 80) = *v265;
                *(v118 + 96) = v266;
                v265[0] = 0;
                v265[1] = 0;
                v266 = 0;
                v158 = v118 + 104;
                *(a4 + 8) = v118 + 104;
              }

              *(a4 + 8) = v158;
              break;
            }
          }
        }
      }

      ++*(*(a1 + 296) + 68);
      v159 = v265[0];
      if (v265[0])
      {
        v160 = v265[1];
        v161 = v265[0];
        if (v265[1] != v265[0])
        {
          do
          {
            v162 = *(v160 - 8);
            if (v162)
            {
              *(v160 - 7) = v162;
              operator delete(v162);
            }

            v160 -= 96;
          }

          while (v160 != v159);
          v161 = v265[0];
        }

        v265[1] = v159;
        operator delete(v161);
      }

      v163 = v262;
      if (v262)
      {
        do
        {
          v164 = *v163;
          operator delete(v163);
          v163 = v164;
        }

        while (v164);
      }

      v165 = v260;
      v260 = 0;
      if (v165)
      {
        operator delete(v165);
      }

      v166 = v275;
      if (!v275)
      {
        goto LABEL_241;
      }
    }

    else
    {
      do
      {
        if (*(v88 + 32) == *(v88 + 40))
        {
          goto LABEL_149;
        }

        v88 += 96;
      }

      while (v88 != *(&v275 + 1));
      v89 = sub_588E0(&v277);
      if (v89 >= sub_45AC50(&v267))
      {
        v90 = sub_45AC50(&v267);
        v91 = sub_588E0(&v277);
        v92 = 0.0;
        if (v90 <= v91 + 1)
        {
          v93 = v91 + 1;
        }

        else
        {
          v93 = v90;
        }

        if (v90 >= v91 + 1)
        {
          goto LABEL_187;
        }

        v94 = 0;
        do
        {
          while (1)
          {
            v127 = sub_4D1F50(a2, v90);
            v128 = (*v127 - **v127);
            if (*v128 >= 9u)
            {
              v129 = v128[4];
              if (v129)
              {
                break;
              }
            }

            if (v93 == ++v90)
            {
              goto LABEL_186;
            }
          }

          v94 += *(*v127 + v129);
          ++v90;
        }

        while (v93 != v90);
LABEL_186:
        v92 = vcvtd_n_f64_u64(v94, 1uLL);
        if (v92 < 4.50359963e15)
        {
LABEL_187:
          v92 = (((v92 + v92) + 1) >> 1);
        }

        v130 = *(a1 + 88);
        v131 = sub_73ECC(&v277);
        v244 = v130 + v92;
        v132 = *v131;
        v133 = v131[1];
        if (*v131 != v133)
        {
          v134 = v244 / 100.0;
          v135 = 1.0;
          v249 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
          v251 = vdupq_n_s64(0x4076800000000000uLL);
          v245 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
          v247 = vdupq_n_s64(0xC066800000000000);
          while (1)
          {
            sub_2F4C8(v132 + 4, 0, &v257, 0.0, v135 - fmin(v134 / (v132[9] / 100.0), 0.9));
            v136 = v132[4];
            if (v136)
            {
              v132[5] = v136;
              operator delete(v136);
              v132[4] = 0;
              v132[5] = 0;
              v132[6] = 0;
            }

            v139 = v257;
            *(v132 + 2) = v257;
            v132[6] = v258;
            v137 = *(&v139 + 1);
            v138 = v139;
            *&v139 = 0;
            if (v138 == *(&v139 + 1))
            {
              goto LABEL_201;
            }

            v140 = (v138 + 12);
            if (v138 + 12 == *(&v139 + 1))
            {
              goto LABEL_201;
            }

            v141 = 0.0;
            do
            {
              LODWORD(v139) = *(v140 - 2);
              v142 = exp(3.14159265 - v139 * 6.28318531 / 4294967300.0);
              *&v143 = atan((v142 - 1.0 / v142) * 0.5) * 57.2957795;
              LODWORD(v144) = *(v140 - 3);
              HIDWORD(v144) = *v140;
              v253 = v144;
              v145 = *&v143 * 0.0174532925;
              LODWORD(v143) = v140[1];
              v146 = exp(3.14159265 - v143 * 6.28318531 / 4294967300.0);
              v147 = atan((v146 - 1.0 / v146) * 0.5) * 57.2957795 * 0.0174532925;
              v148.i64[0] = v253;
              v148.i64[1] = HIDWORD(v253);
              v149 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v148), v251), v249), v247), v245);
              v254 = vsubq_f64(v149, vdupq_laneq_s64(v149, 1)).f64[0];
              v150 = sin((v145 - v147) * 0.5);
              v151 = v150 * v150;
              v152 = cos(v145);
              v153 = v152 * cos(v147);
              v154 = sin(0.5 * v254);
              v135 = 1.0;
              *&v139 = atan2(sqrt(v154 * v154 * v153 + v151), sqrt(1.0 - (v154 * v154 * v153 + v151)));
              *&v139 = (*&v139 + *&v139) * 6372797.56;
              v141 = v141 + *&v139;
              v140 += 3;
            }

            while (v140 != v137);
            *&v139 = v141 * 100.0;
            if (v141 * 100.0 < 0.0)
            {
              v134 = v244 / 100.0;
              if (*&v139 <= -4.50359963e15)
              {
                v156 = 1;
                v155 = v141 * 100.0;
              }

              else
              {
                v155 = (((*&v139 + *&v139) - 1) / 2);
                v156 = 1;
              }

              goto LABEL_202;
            }

            v134 = v244 / 100.0;
            if (*&v139 < 4.50359963e15)
            {
LABEL_201:
              v156 = 0;
              v155 = (((*&v139 + *&v139) + 1) >> 1);
            }

            else
            {
              v156 = 0;
              v155 = v141 * 100.0;
            }

LABEL_202:
            if (v155 >= 9.22337204e18)
            {
              v132[9] = 0x7FFFFFFFFFFFFFFELL;
              v132 += 12;
              if (v132 == v133)
              {
                break;
              }
            }

            else
            {
              if (v156)
              {
                if (*&v139 > -4.50359963e15)
                {
                  v157 = (*&v139 + *&v139) - 1 + (((*&v139 + *&v139) - 1) >> 63);
LABEL_208:
                  *&v139 = (v157 >> 1);
                }
              }

              else if (*&v139 < 4.50359963e15)
              {
                v157 = (*&v139 + *&v139) + 1;
                goto LABEL_208;
              }

              v132[9] = *&v139;
              v132 += 12;
              if (v132 == v133)
              {
                break;
              }
            }
          }
        }

        v187 = sub_73ECC(&v267);
        v188 = *v187;
        v189 = v187[1];
        if (*v187 != v189)
        {
          v190 = v244 / 100.0;
          v250 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
          v252 = vdupq_n_s64(0x4076800000000000uLL);
          v246 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
          v248 = vdupq_n_s64(0xC066800000000000);
          while (1)
          {
            sub_2F4C8(v188 + 4, 0, &v257, fmin(v190 / (v188[9] / 100.0), 0.9), 1.0);
            v191 = v188[4];
            if (v191)
            {
              v188[5] = v191;
              operator delete(v191);
              v188[4] = 0;
              v188[5] = 0;
              v188[6] = 0;
            }

            v194 = v257;
            *(v188 + 2) = v257;
            v188[6] = v258;
            v192 = *(&v194 + 1);
            v193 = v194;
            *&v194 = 0;
            if (v193 == *(&v194 + 1))
            {
              goto LABEL_285;
            }

            v195 = (v193 + 12);
            if (v193 + 12 == *(&v194 + 1))
            {
              goto LABEL_285;
            }

            v196 = 0.0;
            do
            {
              LODWORD(v194) = *(v195 - 2);
              v197 = exp(3.14159265 - v194 * 6.28318531 / 4294967300.0);
              *&v198 = atan((v197 - 1.0 / v197) * 0.5) * 57.2957795;
              LODWORD(v199) = *(v195 - 3);
              HIDWORD(v199) = *v195;
              v255 = v199;
              v200 = *&v198 * 0.0174532925;
              LODWORD(v198) = v195[1];
              v201 = exp(3.14159265 - v198 * 6.28318531 / 4294967300.0);
              v202 = atan((v201 - 1.0 / v201) * 0.5) * 57.2957795 * 0.0174532925;
              v203.i64[0] = v255;
              v203.i64[1] = HIDWORD(v255);
              v204 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v203), v252), v250), v248), v246);
              v256 = vsubq_f64(v204, vdupq_laneq_s64(v204, 1)).f64[0];
              v205 = sin((v200 - v202) * 0.5);
              v206 = v205 * v205;
              v207 = cos(v200);
              v208 = v207 * cos(v202);
              v209 = sin(0.5 * v256);
              *&v194 = atan2(sqrt(v209 * v209 * v208 + v206), sqrt(1.0 - (v209 * v209 * v208 + v206)));
              *&v194 = (*&v194 + *&v194) * 6372797.56;
              v196 = v196 + *&v194;
              v195 += 3;
            }

            while (v195 != v192);
            *&v194 = v196 * 100.0;
            if (v196 * 100.0 < 0.0)
            {
              v190 = v244 / 100.0;
              if (*&v194 <= -4.50359963e15)
              {
                v211 = 1;
                v210 = v196 * 100.0;
              }

              else
              {
                v210 = (((*&v194 + *&v194) - 1) / 2);
                v211 = 1;
              }

              goto LABEL_286;
            }

            v190 = v244 / 100.0;
            if (*&v194 < 4.50359963e15)
            {
LABEL_285:
              v211 = 0;
              v210 = (((*&v194 + *&v194) + 1) >> 1);
            }

            else
            {
              v211 = 0;
              v210 = v196 * 100.0;
            }

LABEL_286:
            if (v210 >= 9.22337204e18)
            {
              v188[9] = 0x7FFFFFFFFFFFFFFELL;
              v188 += 12;
              if (v188 == v189)
              {
                break;
              }
            }

            else
            {
              if (v211)
              {
                if (*&v194 > -4.50359963e15)
                {
                  v212 = (*&v194 + *&v194) - 1 + (((*&v194 + *&v194) - 1) >> 63);
LABEL_292:
                  *&v194 = (v212 >> 1);
                }
              }

              else if (*&v194 < 4.50359963e15)
              {
                v212 = (*&v194 + *&v194) + 1;
                goto LABEL_292;
              }

              v188[9] = *&v194;
              v188 += 12;
              if (v188 == v189)
              {
                break;
              }
            }
          }
        }

        v213 = sub_588E0(&v277);
        v214 = sub_45AC50(&v267);
        v215 = sub_588E0(&v277);
        sub_F53294(&v277, v215 - ((v213 - v214) >> 1));
        v216 = sub_588E0(&v277);
        sub_501CE8(&v267, v216 + 1);
      }

      v217 = *(a4 + 8);
      if (v217 >= *(a4 + 16))
      {
        v218 = sub_F49320(a4, &v277);
      }

      else
      {
        sub_F49474(*(a4 + 8), &v277);
        v218 = v217 + 104;
        *(a4 + 8) = v217 + 104;
      }

      *(a4 + 8) = v218;
      v219 = sub_588E0(&v277);
      if (v219 + 1 < sub_45AC50(&v267))
      {
        v220 = sub_588E0(&v277);
        v221 = sub_5FC64(&v277);
        v222 = sub_45AC50(&v267);
        v223 = sub_588D8(&v267);
        sub_F3700C(a1, a2, v220, v221, v222, v223, 0, &v257);
        if (*(&v257 + 1) != 0x7FFFFFFFFFFFFFFFLL && *(&v258 + 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v224 = v265[0];
          if (v265[0] != v265[1])
          {
            while (v224[4] != v224[5])
            {
              v224 += 12;
              if (v224 == v265[1])
              {
                sub_F3BFF0(a1, *(a4 + 8) - 104, &v257);
                sub_F3B348(a1, &v267, &v257);
                v225 = *(a4 + 8);
                if (v225 >= *(a4 + 16))
                {
                  sub_F47DA0(a4, &v257);
                }

                else
                {
                  sub_F47F74(a4, *(a4 + 8), &v257);
                  v226 = v225 + 104;
                  *(a4 + 8) = v225 + 104;
                }

                *(a4 + 8) = v226;
                break;
              }
            }
          }
        }

        v228 = v265[0];
        if (v265[0])
        {
          v229 = v265[1];
          v230 = v265[0];
          if (v265[1] != v265[0])
          {
            do
            {
              v231 = *(v229 - 8);
              if (v231)
              {
                *(v229 - 7) = v231;
                operator delete(v231);
              }

              v229 -= 96;
            }

            while (v229 != v228);
            v230 = v265[0];
          }

          v265[1] = v228;
          operator delete(v230);
        }

        v232 = v262;
        if (v262)
        {
          do
          {
            v233 = *v232;
            operator delete(v232);
            v232 = v233;
          }

          while (v233);
        }

        v234 = v260;
        v260 = 0;
        if (v234)
        {
          operator delete(v234);
        }
      }

      v235 = *(a4 + 8);
      if (v235 >= *(a4 + 16))
      {
        sub_F47DA0(a4, &v267);
      }

      else
      {
        v236 = v267;
        v237 = v268;
        *(v235 + 32) = v269;
        *v235 = v236;
        *(v235 + 16) = v237;
        v238 = v270;
        v239 = v272;
        v270 = 0;
        *(v235 + 56) = v272;
        *(v235 + 40) = v238;
        *(v235 + 48) = v271;
        v271 = 0;
        v240 = v273;
        *(v235 + 64) = v273;
        *(v235 + 72) = v274;
        if (v240)
        {
          v241 = v239[1];
          v242 = *(v235 + 48);
          if ((v242 & (v242 - 1)) != 0)
          {
            if (v241 >= v242)
            {
              v241 %= v242;
            }
          }

          else
          {
            v241 &= v242 - 1;
          }

          v238[v241] = v235 + 56;
          v272 = 0;
          v273 = 0;
        }

        *(v235 + 80) = 0;
        *(v235 + 88) = 0;
        *(v235 + 96) = 0;
        *(v235 + 80) = v275;
        *(v235 + 96) = v276;
        v275 = 0uLL;
        v276 = 0;
        v243 = v235 + 104;
        *(a4 + 8) = v235 + 104;
      }

      *(a4 + 8) = v243;
      ++*(*(a1 + 296) + 48);
      v166 = v275;
      if (!v275)
      {
LABEL_241:
        v170 = v272;
        if (v272)
        {
          do
          {
            v171 = *v170;
            operator delete(v170);
            v170 = v171;
          }

          while (v171);
        }

        v172 = v270;
        v270 = 0;
        if (v172)
        {
          operator delete(v172);
        }

        v173 = v282;
        if (v282)
        {
          v174 = v283;
          v175 = v282;
          if (v283 != v282)
          {
            do
            {
              v176 = *(v174 - 8);
              if (v176)
              {
                *(v174 - 7) = v176;
                operator delete(v176);
              }

              v174 -= 96;
            }

            while (v174 != v173);
            v175 = v282;
          }

          v283 = v173;
          operator delete(v175);
        }

        v177 = v281;
        if (v281)
        {
          do
          {
            v178 = *v177;
            operator delete(v177);
            v177 = v178;
          }

          while (v178);
        }

        v179 = v280;
        v280 = 0;
        if (v179)
        {
          operator delete(v179);
        }

        goto LABEL_257;
      }
    }

    v167 = *(&v275 + 1);
    v168 = v166;
    if (*(&v275 + 1) != v166)
    {
      do
      {
        v169 = *(v167 - 8);
        if (v169)
        {
          *(v167 - 7) = v169;
          operator delete(v169);
        }

        v167 -= 96;
      }

      while (v167 != v166);
      v168 = v275;
    }

    *(&v275 + 1) = v166;
    operator delete(v168);
    goto LABEL_241;
  }

  v78 = *(a4 + 8);
  if (v78 >= *(a4 + 16))
  {
    sub_F47DA0(a4, &v286);
  }

  else
  {
    v79 = v286;
    v80 = v287;
    *(v78 + 32) = v288;
    *v78 = v79;
    *(v78 + 16) = v80;
    v81 = v289;
    v82 = v290;
    *&v289 = 0;
    *(v78 + 56) = v290;
    *(v78 + 40) = __PAIR128__(*(&v289 + 1), v81);
    *(&v289 + 1) = 0;
    v83 = *(&v290 + 1);
    *(v78 + 64) = *(&v290 + 1);
    *(v78 + 72) = v291;
    if (v83)
    {
      v84 = *(v82 + 8);
      v85 = *(v78 + 48);
      if ((v85 & (v85 - 1)) != 0)
      {
        if (v84 >= v85)
        {
          v84 %= v85;
        }
      }

      else
      {
        v84 &= v85 - 1;
      }

      *(v81 + 8 * v84) = v78 + 56;
      v290 = 0uLL;
    }

    *(v78 + 80) = 0;
    *(v78 + 88) = 0;
    *(v78 + 96) = 0;
    *(v78 + 80) = v292;
    *(v78 + 96) = v293;
    v292 = 0uLL;
    v293 = 0;
    v126 = v78 + 104;
    *(a4 + 8) = v78 + 104;
  }

  *(a4 + 8) = v126;
  ++*(*(a1 + 296) + 48);
LABEL_257:
  if (v284)
  {
    v285 = v284;
    operator delete(v284);
  }

LABEL_259:
  v180 = v292;
  if (v292)
  {
    v181 = *(&v292 + 1);
    v182 = v292;
    if (*(&v292 + 1) != v292)
    {
      do
      {
        v183 = *(v181 - 64);
        if (v183)
        {
          *(v181 - 56) = v183;
          operator delete(v183);
        }

        v181 -= 96;
      }

      while (v181 != v180);
      v182 = v292;
    }

    *(&v292 + 1) = v180;
    operator delete(v182);
  }

  v184 = v290;
  if (v290)
  {
    do
    {
      v185 = *v184;
      operator delete(v184);
      v184 = v185;
    }

    while (v185);
  }

  v186 = v289;
  *&v289 = 0;
  if (v186)
  {
    operator delete(v186);
  }
}