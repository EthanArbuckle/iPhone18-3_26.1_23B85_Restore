void sub_ED32A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_1959728(&a21);
    sub_1758FB8(a14);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a21);
  sub_1758FB8(a14);
  _Unwind_Resume(a1);
}

void sub_ED331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_EDE2F4(va);
  sub_1758FB8(a7);
  _Unwind_Resume(a1);
}

void sub_ED3344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    sub_1758FB8(a14);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xED33A8);
}

void sub_ED3378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_EDE2F4(va);
  sub_1758FB8(a7);
  _Unwind_Resume(a1);
}

void sub_ED33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v5 = sub_3B1D8C(*a1);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v6 = nullsub_1(a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (!sub_69AE68(v7))
        {
          goto LABEL_4;
        }

        v9 = sub_73F54(v7);
        sub_2AD1B4(v5, *(v9 + 104), *(v9 + 112), &v31);
        v10 = v44;
        if (v44 >= v45)
        {
          v13 = v43;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 2);
          v15 = v14 + 1;
          if (v14 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v45 - v43) >> 2) > v15)
          {
            v15 = 0x5555555555555556 * ((v45 - v43) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v43) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v16 = 0x1555555555555555;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (v16 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v17 = 4 * ((v44 - v43) >> 2);
          *v17 = v38;
          *(v17 + 8) = v39;
          v18 = 12 * v14 + 12;
          v19 = (12 * v14 - (v10 - v13));
          memcpy((v17 - (v10 - v13)), v13, v10 - v13);
          v43 = v19;
          v44 = v18;
          v45 = 0;
          if (v13)
          {
            operator delete(v13);
          }

          v44 = v18;
          sub_99F0C(v42);
          v12 = __p;
          if (!__p)
          {
LABEL_8:
            if ((v37 & 0x80000000) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v11 = v38;
          *(v44 + 2) = v39;
          *v10 = v11;
          v44 = v10 + 12;
          sub_99F0C(v42);
          v12 = __p;
          if (!__p)
          {
            goto LABEL_8;
          }
        }

        v20 = v41;
        if (v41 == v12)
        {
          v41 = v12;
          operator delete(v12);
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            v21 = *(v20 - 1);
            v20 -= 3;
            if (v21 < 0)
            {
              operator delete(*v20);
            }
          }

          while (v20 != v12);
          v41 = v12;
          operator delete(__p);
          if ((v37 & 0x80000000) == 0)
          {
LABEL_9:
            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        operator delete(v36);
        if ((v35 & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v33) < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }

LABEL_32:
        operator delete(v34);
        if (SHIBYTE(v33) < 0)
        {
LABEL_33:
          operator delete(v31);
        }

LABEL_4:
        v7 += 12656;
      }

      while (v7 != v8);
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    HIBYTE(v30[2]) = 17;
    strcpy(v30, "Charging Stations");
    sub_EAC188(&v31, &v43, v30, 0xFFFFFFFF, 0, 0, 0.0);
    if (SHIBYTE(v30[2]) < 0)
    {
      operator delete(v30[0]);
    }

    sub_EAC680(&v31, v30);
    v22 = v30[0];
    v23 = v30[1];
    if (v30[0] != v30[1])
    {
      do
      {
        v24 = sub_1950FFC((a3 + 16), dword_278D070, 11, &off_2769C00, 0);
        sub_12CC584(v24, v22);
        v22 += 48;
      }

      while (v22 != v23);
      v22 = v30[0];
    }

    if (v22)
    {
      v25 = v30[1];
      v26 = v22;
      if (v30[1] != v22)
      {
        do
        {
          v25 = sub_12CBDFC(v25 - 48);
        }

        while (v25 != v22);
        v26 = v30[0];
      }

      v30[1] = v22;
      operator delete(v26);
    }

    v27 = v31;
    if (!v31)
    {
      goto LABEL_55;
    }

    v28 = v32;
    v29 = v31;
    if (v32 == v31)
    {
LABEL_54:
      v32 = v27;
      operator delete(v29);
LABEL_55:
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      return;
    }

    while (1)
    {
      if (*(v28 - 25) < 0)
      {
        operator delete(*(v28 - 6));
        if (*(v28 - 49) < 0)
        {
LABEL_52:
          operator delete(*(v28 - 9));
        }
      }

      else if (*(v28 - 49) < 0)
      {
        goto LABEL_52;
      }

      v28 -= 10;
      if (v28 == v27)
      {
        v29 = v31;
        goto LABEL_54;
      }
    }
  }
}

void sub_ED379C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  sub_D37F50(&a16);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_ED3814(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v54 = 0u;
  v55 = 1065353216;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 >= 1)
  {
    v5 = 0;
    v47 = v3 & 0x7FFFFFFF;
    do
    {
      v52 = *(*(a3 + 64) + 8 * v5 + 8);
      v49 = v5;
      v6 = nullsub_1(*a2 + 7808 * v5);
      v8 = *v6;
      v7 = v6[1];
      v50 = v7;
      while (v8 != v7)
      {
        v9 = *(v8 + 7416);
        v51 = v8;
        for (i = *(v8 + 7424); v9 != i; v9 += 1120)
        {
          v11 = *(v9 + 71);
          if (v11 >= 0)
          {
            v12 = (v9 + 48);
          }

          else
          {
            v12 = *(v9 + 48);
          }

          if (v11 >= 0)
          {
            v13 = *(v9 + 71);
          }

          else
          {
            v13 = *(v9 + 56);
          }

          v14 = sub_AAD8(&v56, v12, v13);
          v15 = __p[1];
          if (__p[1])
          {
            v16 = v14;
            v17 = vcnt_s8(__p[1]);
            v17.i16[0] = vaddlv_u8(v17);
            if (v17.u32[0] > 1uLL)
            {
              v18 = v14;
              if (v14 >= __p[1])
              {
                v18 = v14 % __p[1];
              }
            }

            else
            {
              v18 = (__p[1] - 1) & v14;
            }

            v19 = *(__p[0] + v18);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                v21 = *(v9 + 71);
                if (v21 >= 0)
                {
                  v22 = *(v9 + 71);
                }

                else
                {
                  v22 = *(v9 + 56);
                }

                if (v21 >= 0)
                {
                  v23 = (v9 + 48);
                }

                else
                {
                  v23 = *(v9 + 48);
                }

                if (v17.u32[0] < 2uLL)
                {
                  v24 = __p[1] - 1;
                  while (1)
                  {
                    v29 = v20[1];
                    if (v16 == v29)
                    {
                      v30 = *(v20 + 39);
                      v31 = v30;
                      if (v30 < 0)
                      {
                        v30 = v20[3];
                      }

                      if (v30 == v22)
                      {
                        v32 = v31 >= 0 ? (v20 + 2) : v20[2];
                        if (!memcmp(v32, v23, v22))
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else if ((v29 & v24) != v18)
                    {
                      goto LABEL_53;
                    }

                    v20 = *v20;
                    if (!v20)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                do
                {
                  v25 = v20[1];
                  if (v16 == v25)
                  {
                    v26 = *(v20 + 39);
                    v27 = v26;
                    if (v26 < 0)
                    {
                      v26 = v20[3];
                    }

                    if (v26 == v22)
                    {
                      v28 = v27 >= 0 ? (v20 + 2) : v20[2];
                      if (!memcmp(v28, v23, v22))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    if (v25 >= v15)
                    {
                      v25 %= v15;
                    }

                    if (v25 != v18)
                    {
                      break;
                    }
                  }

                  v20 = *v20;
                }

                while (v20);
              }
            }
          }

LABEL_53:
          v33 = *(a3 + 104);
          v56 = v9 + 48;
          sub_EDE7E0(__p, v9 + 48)[5] = v33;
          v35 = *(a3 + 112);
          if (v35 && (v36 = *(a3 + 104), v36 < *v35))
          {
            *(a3 + 104) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_14BDE5C(*(a3 + 96));
            v37 = sub_19593CC(a3 + 96, v38);
          }

          sub_EC6F6C(v9, v37, 0, v34);
LABEL_58:
          v56 = v9 + 48;
          v39 = *(sub_EDE7E0(__p, v9 + 48) + 10);
          v40 = *(v9 + 464);
          v41 = v40 / 100;
          v42 = v40 % 100;
          if (v40 < 0)
          {
            v43 = -50;
          }

          else
          {
            v43 = 50;
          }

          sub_ECA76C(v39, v41 + ((5243 * (v43 + v42)) >> 19) + ((5243 * (v43 + v42)) >> 31), v52);
        }

        v8 = v51 + 12656;
        v7 = v50;
      }

      v5 = v49 + 1;
    }

    while (v49 + 1 != v47);
    v44 = v54[0];
    if (v54[0])
    {
      do
      {
        v46 = *v44;
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_ED3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED3BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED3C10(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v92 = 0;
  v93 = 0;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 < 1)
  {
    return;
  }

  v4 = a3;
  v5 = 0;
  v83 = v3 & 0x7FFFFFFF;
  do
  {
    v6 = *(*(v4 + 64) + 8 * v5 + 8);
    v89 = (*a2 + 7808 * v5);
    v7 = nullsub_1(v89);
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v88 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      v90 = v5;
      while (1)
      {
        v10 = sub_68C454(v89, v9);
        v11 = v10;
        v12 = v10[1281];
        v13 = v10[1282];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_6:
        if (++v9 == v88)
        {
          goto LABEL_3;
        }
      }

      v15 = __p;
      v16 = v92;
      if (__p == v92)
      {
        v21 = __p;
LABEL_45:
        if (v21 != v92)
        {
          v32 = 954437177 * ((v21 - __p) >> 3);
          *(v6 + 44) |= 8u;
          *(v6 + 920) = v32;
          v5 = v90;
          goto LABEL_93;
        }
      }

      else
      {
        v17 = v10[1284];
        v18 = v10[1283];
        v19 = v10[1287];
        v20 = v10[1286];
        v21 = __p;
        do
        {
          if (v12 == *v21)
          {
            v22 = *(v21 + 2);
            if (v17 - v18 == *(v21 + 3) - v22)
            {
              if (v18 == v17)
              {
LABEL_24:
                v24 = *(v21 + 5);
                if (v19 - v20 == *(v21 + 6) - v24)
                {
                  if (v20 == v19)
                  {
LABEL_13:
                    if (v13 == *(v21 + 1))
                    {
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    v25 = v11[1286];
                    while (*v25 == *v24)
                    {
                      if (*(v25 + 4) != *(v24 + 4))
                      {
                        break;
                      }

                      if (*(v25 + 8) != *(v24 + 8))
                      {
                        break;
                      }

                      if (*(v25 + 12) != *(v24 + 12))
                      {
                        break;
                      }

                      v27 = *(v25 + 16);
                      v26 = *(v25 + 24);
                      v28 = *(v24 + 16);
                      if (v26 - v27 != *(v24 + 24) - v28)
                      {
                        break;
                      }

                      for (; v27 != v26; v28 += 24)
                      {
                        v30 = *v27;
                        v29 = *(v27 + 8);
                        v31 = *v28;
                        if ((v29 - *v27) != (*(v28 + 8) - *v28))
                        {
                          goto LABEL_14;
                        }

                        if (v30 != v29)
                        {
                          while (*v30 == *v31 && v30[1] == v31[1] && v30[2] == v31[2])
                          {
                            v30 += 3;
                            v31 += 3;
                            if (v30 == v29)
                            {
                              goto LABEL_39;
                            }
                          }

                          goto LABEL_14;
                        }

LABEL_39:
                        v27 += 24;
                      }

                      if (*(v25 + 40) != *(v24 + 40) || *(v25 + 48) != *(v24 + 48))
                      {
                        break;
                      }

                      v25 += 64;
                      v24 += 64;
                      if (v25 == v19)
                      {
                        goto LABEL_13;
                      }
                    }
                  }
                }
              }

              else
              {
                v23 = v11[1283];
                while (*v23 == *v22 && *(v23 + 4) == *(v22 + 4) && *(v23 + 8) == *(v22 + 8) && *(v23 + 16) == *(v22 + 16))
                {
                  v23 += 24;
                  v22 += 24;
                  if (v23 == v17)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }

LABEL_14:
          v21 += 72;
        }

        while (v21 != v92);
      }

      v33 = 0x8E38E38E38E38E39 * ((v92 - __p) >> 3);
      *(v6 + 44) |= 8u;
      *(v6 + 920) = v33;
      if (v16 >= v93)
      {
        if (v33 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v39 = 0x8E38E38E38E38E39 * ((v93 - v15) >> 3);
        v40 = 2 * v39;
        if (2 * v39 <= v33 + 1)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v40;
        }

        p_p = &__p;
        if (v41)
        {
          if (v41 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 72 * v33;
        v94 = 0;
        v95 = 72 * v33;
        v96 = 72 * v33;
        v97 = 0;
        v43 = *(v11 + 1281);
        *&dword_10[18 * v33] = 0;
        *v42 = v43;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        v44 = v11[1283];
        v45 = v11[1284];
        if (v45 != v44)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *&stru_20.segname[72 * v33] = 0;
        *&stru_20.segname[72 * v33 + 8] = 0;
        *&stru_20.segname[72 * v33 + 16] = 0;
        sub_7C0AEC(v42 + 40, v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(&stru_20.vmsize + 18 * v33) = *(v11 + 2578);
        v85 = v96;
        v46 = __p;
        v47 = v92;
        v87 = (v95 + __p - v92);
        v5 = v90;
        if (__p != v92)
        {
          v48 = __p;
          v49 = (v95 + __p - v92);
          do
          {
            *v49 = *v48;
            *(v49 + 3) = 0;
            *(v49 + 4) = 0;
            *(v49 + 2) = 0;
            *(v49 + 1) = v48[1];
            *(v49 + 4) = *(v48 + 4);
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = 0;
            *(v49 + 5) = 0;
            *(v49 + 6) = 0;
            *(v49 + 7) = 0;
            v37 = *(v48 + 40);
            *(v49 + 40) = v37;
            *(v49 + 7) = *(v48 + 7);
            *(v48 + 5) = 0;
            *(v48 + 6) = 0;
            *(v48 + 7) = 0;
            *(v49 + 16) = *(v48 + 16);
            v48 = (v48 + 72);
            v49 += 72;
          }

          while (v48 != v47);
          do
          {
            v50 = v46[5];
            if (v50)
            {
              v51 = v46[6];
              v52 = v46[5];
              if (v51 != v50)
              {
                do
                {
                  v54 = *(v51 - 48);
                  if (v54)
                  {
                    v55 = *(v51 - 40);
                    v53 = *(v51 - 48);
                    if (v55 != v54)
                    {
                      v56 = *(v51 - 40);
                      do
                      {
                        v58 = *(v56 - 24);
                        v56 -= 24;
                        v57 = v58;
                        if (v58)
                        {
                          *(v55 - 16) = v57;
                          operator delete(v57);
                        }

                        v55 = v56;
                      }

                      while (v56 != v54);
                      v53 = *(v51 - 48);
                    }

                    *(v51 - 40) = v54;
                    operator delete(v53);
                  }

                  v51 -= 64;
                }

                while (v51 != v50);
                v52 = v46[5];
              }

              v46[6] = v50;
              operator delete(v52);
              v5 = v90;
            }

            v59 = v46[2];
            if (v59)
            {
              v46[3] = v59;
              operator delete(v59);
            }

            v46 += 9;
          }

          while (v46 != v47);
        }

        v60 = __p;
        __p = v87;
        v92 = (v85 + 72);
        v95 = v60;
        v96 = v60;
        v93 = v97;
        if (v60)
        {
          operator delete(v60);
        }

        v4 = a3;
        v92 = (v85 + 72);
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v34 = *(v11 + 1281);
        *(v16 + 2) = 0;
        *v16 = v34;
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        v35 = v11[1283];
        v36 = v11[1284];
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v16 + 5) = 0;
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        sub_7C0AEC((v16 + 40), v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(v16 + 16) = *(v11 + 2578);
        v4 = a3;
        v5 = v90;
        v92 = v16 + 72;
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      v61 = *(v4 + 240);
      if (v61 < *v38)
      {
        *(v4 + 240) = v61 + 1;
        v62 = *&v38[2 * v61 + 2];
LABEL_92:
        sub_ECA330(v11 + 1281, v62, *&v37);
LABEL_93:
        v64 = 0x3795876FF3795877 * ((v11[139] - v11[138]) >> 3);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = v64 & 0x7FFFFFFF;
          do
          {
            v67 = sub_50EA30(v11 + 138, v65);
            v68 = sub_1950D4C((*(*(v6 + 72) + 8 * v65 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v69 = *(v67 + 2417);
            *(v68 + 16) |= 2u;
            *(v68 + 97) = v69;
            ++v65;
          }

          while (v66 != v65);
        }

        goto LABEL_6;
      }

LABEL_91:
      v63 = sub_14BE3A4(*(v4 + 232));
      v62 = sub_19593CC(v4 + 232, v63);
      goto LABEL_92;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v83);
  v70 = __p;
  if (__p)
  {
    v71 = v92;
    v72 = __p;
    if (v92 != __p)
    {
      do
      {
        v73 = *(v71 - 4);
        if (v73)
        {
          v74 = *(v71 - 3);
          v75 = *(v71 - 4);
          if (v74 != v73)
          {
            do
            {
              v77 = *(v74 - 48);
              if (v77)
              {
                v78 = *(v74 - 40);
                v76 = *(v74 - 48);
                if (v78 != v77)
                {
                  v79 = *(v74 - 40);
                  do
                  {
                    v81 = *(v79 - 24);
                    v79 -= 24;
                    v80 = v81;
                    if (v81)
                    {
                      *(v78 - 16) = v80;
                      operator delete(v80);
                    }

                    v78 = v79;
                  }

                  while (v79 != v77);
                  v76 = *(v74 - 48);
                }

                *(v74 - 40) = v77;
                operator delete(v76);
              }

              v74 -= 64;
            }

            while (v74 != v73);
            v75 = *(v71 - 4);
          }

          *(v71 - 3) = v73;
          operator delete(v75);
        }

        v82 = *(v71 - 7);
        if (v82)
        {
          *(v71 - 6) = v82;
          operator delete(v82);
        }

        v71 -= 72;
      }

      while (v71 != v70);
      v72 = __p;
    }

    v92 = v70;
    operator delete(v72);
  }
}

void sub_ED44E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    sub_21E5364(&a18, a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED456C(uint64_t a1, unsigned int ***a2, char **a3, uint64_t a4)
{
  if (*a3 != a3[1])
  {
    v6 = sub_1950D4C((a4 + 16), dword_278D000, 11, &off_2769510, 0);
    v7 = *a2;
    v8 = a2[1];
    if (v7 != v8)
    {
      while ((sub_68D7D8(v7) & 1) == 0)
      {
        v7 += 976;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }

    v9 = *a3;
    v10 = *(v6 + 32);
    if (v10 && (v11 = *(v6 + 24), v11 < *v10))
    {
      *(v6 + 24) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_12D00D4(*(v6 + 16));
      v12 = sub_19593CC(v6 + 16, v13);
    }

    v14 = *v9 + -978307200.0;
    *(v12 + 16) |= 1u;
    *(v12 + 24) = v14;
    v15 = sub_68C850(v7);
    if (v15 != *(v9 + 1))
    {
      v15 = sub_68C850(v7);
    }

    if (v15 < 0)
    {
      v16 = -5;
    }

    else
    {
      v16 = 5;
    }

    *(v12 + 16) |= 2u;
    *(v12 + 32) = v15 / 10 + (((103 * (v16 + v15 % 10)) >> 15) & 1) + ((103 * (v16 + v15 % 10)) >> 10);
    v17 = (a3[1] - *a3) >> 3;
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = v17 - 1;
      do
      {
        v28 = *a3;
        v29 = *(v6 + 32);
        if (v29 && (v30 = *(v6 + 24), v30 < *v29))
        {
          *(v6 + 24) = v30 + 1;
          v21 = *&v29[2 * v30 + 2];
        }

        else
        {
          v20 = sub_12D00D4(*(v6 + 16));
          v21 = sub_19593CC(v6 + 16, v20);
        }

        v22 = *&v28[v18 + 8] + -978307200.0;
        v23 = *(v21 + 16);
        *(v21 + 16) = v23 | 1;
        *(v21 + 24) = v22;
        v24 = *&v28[v18 + 12];
        v25 = v24 / 10;
        v26 = v24 % 10;
        if (v24 < 0)
        {
          v27 = -5;
        }

        else
        {
          v27 = 5;
        }

        *(v21 + 16) = v23 | 3;
        *(v21 + 32) = v25 + (((103 * (v27 + v26)) >> 15) & 1) + ((103 * (v27 + v26)) >> 10);
        v18 += 8;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_ED5BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 184);
  if (!v29)
  {
    sub_4AE168((v27 - 160));
    _Unwind_Resume(a1);
  }

  *(v27 - 176) = v29;
  operator delete(v29);
  sub_4AE168((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_ED5D14(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  v13 = sub_69CB14(a1, a3);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
  v26 = v25 / 100;
  v27 = v25 % 100;
  if (v25 < 0)
  {
    v28 = -50;
  }

  else
  {
    v28 = 50;
  }

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_ED6064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED60A0(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_ED6444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_ED6954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED6968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED697C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED6990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_ED69F4(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_4D1DC0(a2);
  v9 = a2[1290];
  v10 = a2[1291];
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 - 1;
    do
    {
      v13 = *(v9 + 8);
      if (v13 >= v11 || v13 == v12 && sub_4D2140(a2) < 0x3B9ACA00)
      {
        goto LABEL_3;
      }

      if (sub_683A0C(v9))
      {
        if (a1[16])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!sub_445A90(v9))
        {
          if (!sub_683864(v9) && !sub_683854(v9) || a1[18] != 1)
          {
            goto LABEL_3;
          }

LABEL_16:
          std::to_string(&v36, a3);
          v14 = std::string::append(&v36, "_", 1uLL);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v35, a4);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v35;
          }

          else
          {
            v16 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v37, v16, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v38, "_", 1uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v34, *(v9 + 8));
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v34;
          }

          else
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v34.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v39, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v41 = v24->__r_.__value_.__r.__words[2];
          v40 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_37;
            }

LABEL_30:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

LABEL_38:
            operator delete(v38.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

LABEL_32:
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_41;
            }

LABEL_34:
            if (*(v9 + 4) == 2)
            {
LABEL_42:
              v26 = SHIBYTE(v41);
              if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
              {
                v26 = *(&v40 + 1);
                if ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1 - *(&v40 + 1) < 9)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL) < *(&v40 + 1) + 9 - ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1))
                  {
                    sub_3244();
                  }

LABEL_47:
                  operator new();
                }

                v27 = v40;
              }

              else
              {
                if ((SHIBYTE(v41) - 14) < 9)
                {
                  goto LABEL_47;
                }

                v27 = &v40;
              }

              v28 = v27 + v26;
              *v28 = 0x74756F5266664F5FLL;
              v28[8] = 101;
              v29 = v26 + 9;
              if (SHIBYTE(v41) < 0)
              {
                *(&v40 + 1) = v26 + 9;
              }

              else
              {
                HIBYTE(v41) = v29 & 0x7F;
              }

              *(v27 + v29) = 0;
            }
          }

          else
          {
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_31:
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

LABEL_39:
            operator delete(v35.__r_.__value_.__l.__data_);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

LABEL_33:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_41:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (*(v9 + 4) == 2)
            {
              goto LABEL_42;
            }
          }

          sub_ED6F30(a1, v9, &v40, a4, a5, a6);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          goto LABEL_3;
        }

        if (a1[17])
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v9 += 104;
    }

    while (v9 != v10);
  }
}

void sub_ED6E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_ED6F30(uint64_t a1, uint64_t a2, const void **a3, int a4, uint64_t a5, uint64_t a6)
{
  if (sub_6834F4(a2))
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v117 = a6;
      v118 = a5;
      v119 = *(a2 + 40);
      do
      {
        if (!sub_683140(v10))
        {
          goto LABEL_6;
        }

        v14 = *(a5 + 240);
        if (v14 && (v15 = *(a5 + 232), v15 < *v14))
        {
          *(a5 + 232) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a5 + 224));
          v16 = sub_19593CC(a5 + 224, v17);
        }

        v18 = *(a2 + 4) != 0;
        *(v16 + 16) |= 0x20u;
        *(v16 + 76) = v18;
        v19 = sub_683530(a2);
        v20 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 72) = *(a2 + 16);
          *(v16 + 88) = *(v10 + 22);
          v21 = *(v10 + 24);
          v20 |= 0x190u;
          *(v16 + 16) = v20;
          *(v16 + 84) = v21;
        }

        *(v16 + 16) = v20 | 0x40;
        *(v16 + 80) = a4;
        v22 = *(v10 + 16);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v29 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v29 + 13;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              memmove(&__p, v40, v29);
            }

            strcpy(&__p + v29, "_TrafficLight");
            *(v16 + 16) |= 1u;
            v41 = *(v16 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            sub_194EA30((v16 + 48), &__p, v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v43 = *(a6 + 272);
              if (!v43)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v43 = *(a6 + 272);
              if (!v43)
              {
LABEL_170:
                v77 = sub_14BE0EC(*(a6 + 256));
                v76 = sub_19593CC(a6 + 256, v77);
                goto LABEL_171;
              }
            }

            v75 = *(a6 + 264);
            if (v75 >= *v43)
            {
              goto LABEL_170;
            }

            *(a6 + 264) = v75 + 1;
            v76 = *&v43[2 * v75 + 2];
LABEL_171:
            if (*(a3 + 23) >= 0)
            {
              v78 = *(a3 + 23);
            }

            else
            {
              v78 = a3[1];
            }

            if (v78 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v78 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v78 + 13;
            v11 = v119;
            if (v78)
            {
              if (*(a3 + 23) >= 0)
              {
                v79 = a3;
              }

              else
              {
                v79 = *a3;
              }

              memmove(&__p, v79, v78);
            }

            a6 = v117;
            strcpy(&__p + v78, "_TrafficLight");
            *(v76 + 16) |= 1u;
            v80 = *(v76 + 8);
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v80)
            {
              v81 = *v81;
            }

            sub_194EA30((v76 + 24), &__p, v81);
            a5 = v118;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
                goto LABEL_246;
              }
            }

            else
            {
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
LABEL_246:
                v113 = *(v76 + 8);
                v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                if (v113)
                {
                  v114 = *v114;
                }

                v83 = sub_16F5828(v114);
                *(v76 + 32) = v83;
              }
            }

            sub_EC6D34((a2 + 20), v83, v82);
            *(v76 + 16) |= 4u;
            *(v76 + 40) = 1;
            goto LABEL_6;
          }

          if (v22 == 2)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            if (v25 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v25 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v25 + 9;
            if (v25)
            {
              if (*(a3 + 23) >= 0)
              {
                v50 = a3;
              }

              else
              {
                v50 = *a3;
              }

              memmove(&__p, v50, v25);
            }

            strcpy(&__p + v25, "_StopSign");
            *(v16 + 16) |= 1u;
            v51 = *(v16 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            sub_194EA30((v16 + 48), &__p, v52);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v53 = *(a6 + 272);
              if (!v53)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v53 = *(a6 + 272);
              if (!v53)
              {
LABEL_224:
                v102 = sub_14BE0EC(*(a6 + 256));
                v101 = sub_19593CC(a6 + 256, v102);
                goto LABEL_225;
              }
            }

            v100 = *(a6 + 264);
            if (v100 >= *v53)
            {
              goto LABEL_224;
            }

            *(a6 + 264) = v100 + 1;
            v101 = *&v53[2 * v100 + 2];
LABEL_225:
            if (*(a3 + 23) >= 0)
            {
              v103 = *(a3 + 23);
            }

            else
            {
              v103 = a3[1];
            }

            if (v103 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v103 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v103 + 9;
            v11 = v119;
            if (v103)
            {
              if (*(a3 + 23) >= 0)
              {
                v104 = a3;
              }

              else
              {
                v104 = *a3;
              }

              memmove(&__p, v104, v103);
            }

            a6 = v117;
            strcpy(&__p + v103, "_StopSign");
            *(v101 + 16) |= 1u;
            v105 = *(v101 + 8);
            v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
            if (v105)
            {
              v106 = *v106;
            }

            sub_194EA30((v101 + 24), &__p, v106);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
                goto LABEL_251;
              }
            }

            else
            {
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
LABEL_251:
                v115 = *(v101 + 8);
                v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                if (v115)
                {
                  v116 = *v116;
                }

                v108 = sub_16F5828(v116);
                *(v101 + 32) = v108;
              }
            }

            sub_EC6D34((a2 + 20), v108, v107);
            *(v101 + 16) |= 4u;
            *(v101 + 40) = 2;
            goto LABEL_6;
          }

          goto LABEL_6;
        }

        if (v22 != 3)
        {
          if (v22 != 4)
          {
            if (v22 != 5)
            {
              goto LABEL_6;
            }

            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v23 = *(a3 + 23);
            }

            else
            {
              v23 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v24 = byte_27BD1D7;
            }

            else
            {
              v24 = qword_27BD1C8;
            }

            if (v24 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v24 + v23 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v24 + v23;
            if (v23)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&__p, v44, v23);
            }

            v45 = &__p + v23;
            if (v24)
            {
              if (byte_27BD1D7 >= 0)
              {
                v46 = &qword_27BD1C0;
              }

              else
              {
                v46 = qword_27BD1C0;
              }

              memmove(v45, v46, v24);
            }

            v45[v24] = 0;
            *(v16 + 16) |= 1u;
            v47 = *(v16 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            sub_194EA30((v16 + 48), &__p, v48);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v49 = *(a6 + 224);
              if (!v49)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v49 = *(a6 + 224);
              if (!v49)
              {
LABEL_190:
                sub_14BE058(*(a6 + 208));
                v65 = sub_19593CC(a6 + 208, v85);
                goto LABEL_191;
              }
            }

            v84 = *(a6 + 216);
            if (v84 >= *v49)
            {
              goto LABEL_190;
            }

            *(a6 + 216) = v84 + 1;
            v65 = *&v49[2 * v84 + 2];
LABEL_191:
            v86 = sub_683938(a2);
            std::to_string(&__p, v86);
            *(v65 + 16) |= 2u;
            v87 = *(v65 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            sub_194EA30((v65 + 32), &__p, v88);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = *(a2 + 88) / 3.6;
            *(v65 + 16) |= 0x80u;
            *(v65 + 72) = v89;
            if (*(a3 + 23) >= 0)
            {
              v90 = *(a3 + 23);
            }

            else
            {
              v90 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v91 = byte_27BD1D7;
            }

            else
            {
              v91 = qword_27BD1C8;
            }

            if (v91 + v90 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_256:
              sub_3244();
            }

            if (v91 + v90 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v91 + v90;
            a5 = v118;
            if (v90)
            {
              if (*(a3 + 23) >= 0)
              {
                v92 = a3;
              }

              else
              {
                v92 = *a3;
              }

              memmove(&__p, v92, v90);
            }

            v93 = &__p + v90;
            if (v91)
            {
              if (byte_27BD1D7 >= 0)
              {
                v94 = &qword_27BD1C0;
              }

              else
              {
                v94 = qword_27BD1C0;
              }

              memmove(v93, v94, v91);
            }

            v93[v91] = 0;
            *(v65 + 16) |= 1u;
            v95 = *(v65 + 8);
            v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
            if (v95)
            {
              v96 = *v96;
            }

            sub_194EA30((v65 + 24), &__p, v96);
            v11 = v119;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v97 = *(v65 + 16);
            *(v65 + 64) = 1;
            *(v65 + 16) = v97 | 0x24;
            v12 = *(v65 + 40);
            if (!v12)
            {
LABEL_219:
              v98 = *(v65 + 8);
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
              if (v98)
              {
                v99 = *v99;
              }

              v12 = sub_16F5828(v99);
              *(v65 + 40) = v12;
            }

LABEL_5:
            sub_EC6D34((a2 + 20), v12, v13);
            goto LABEL_6;
          }

          *(v16 + 16) = v20 | 0x44;
          *(v16 + 64) = 1;
          if (*(a3 + 23) >= 0)
          {
            v27 = *(a3 + 23);
          }

          else
          {
            v27 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v28 = byte_27BD1BF;
          }

          else
          {
            v28 = qword_27BD1B0;
          }

          if (v28 + v27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v28 + v27 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v28 + v27;
          if (v27)
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            memmove(&__p, v34, v27);
          }

          v35 = &__p + v27;
          if (v28)
          {
            if (byte_27BD1BF >= 0)
            {
              v36 = &qword_27BD1A8;
            }

            else
            {
              v36 = qword_27BD1A8;
            }

            memmove(v35, v36, v28);
          }

          v35[v28] = 0;
          *(v16 + 16) |= 1u;
          v37 = *(v16 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_194EA30((v16 + 48), &__p, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v39 = *(a6 + 224);
            if (!v39)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v39 = *(a6 + 224);
            if (!v39)
            {
LABEL_141:
              sub_14BE058(*(a6 + 208));
              v65 = sub_19593CC(a6 + 208, v66);
              goto LABEL_142;
            }
          }

          v64 = *(a6 + 216);
          if (v64 >= *v39)
          {
            goto LABEL_141;
          }

          *(a6 + 216) = v64 + 1;
          v65 = *&v39[2 * v64 + 2];
LABEL_142:
          if (*(a3 + 23) >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v68 = byte_27BD1BF;
          }

          else
          {
            v68 = qword_27BD1B0;
          }

          if (v68 + v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v68 + v67 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v68 + v67;
          a5 = v118;
          if (v67)
          {
            if (*(a3 + 23) >= 0)
            {
              v69 = a3;
            }

            else
            {
              v69 = *a3;
            }

            memmove(&__p, v69, v67);
          }

          v70 = &__p + v67;
          if (v68)
          {
            if (byte_27BD1BF >= 0)
            {
              v71 = &qword_27BD1A8;
            }

            else
            {
              v71 = qword_27BD1A8;
            }

            memmove(v70, v71, v68);
          }

          v70[v68] = 0;
          *(v65 + 16) |= 1u;
          v72 = *(v65 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          sub_194EA30((v65 + 24), &__p, v73);
          v11 = v119;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v74 = *(v65 + 16);
          *(v65 + 64) = 5;
          *(v65 + 16) = v74 | 0x24;
          v12 = *(v65 + 40);
          if (!v12)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }

        *(v16 + 16) = v20 | 0x44;
        *(v16 + 64) = 1;
        if (*(a3 + 23) >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = a3[1];
        }

        if (v26 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v26 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v26 + 15;
        if (v26)
        {
          if (*(a3 + 23) >= 0)
          {
            v30 = a3;
          }

          else
          {
            v30 = *a3;
          }

          memmove(&__p, v30, v26);
        }

        strcpy(&__p + v26, "_RedLightCamera");
        *(v16 + 16) |= 1u;
        v31 = *(v16 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA30((v16 + 48), &__p, v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        v54 = *(a6 + 216);
        if (v54 >= *v33)
        {
LABEL_119:
          sub_14BE058(*(a6 + 208));
          v55 = sub_19593CC(a6 + 208, v56);
          goto LABEL_120;
        }

        *(a6 + 216) = v54 + 1;
        v55 = *&v33[2 * v54 + 2];
LABEL_120:
        if (*(a3 + 23) >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v57 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v57 + 15;
        v11 = v119;
        if (v57)
        {
          if (*(a3 + 23) >= 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&__p, v58, v57);
        }

        a6 = v117;
        strcpy(&__p + v57, "_RedLightCamera");
        *(v55 + 16) |= 1u;
        v59 = *(v55 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_194EA30((v55 + 24), &__p, v60);
        a5 = v118;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v62 = *(v55 + 16);
        *(v55 + 64) = 2;
        *(v55 + 16) = v62 | 0x24;
        v63 = *(v55 + 40);
        if (!v63)
        {
          v109 = *(v55 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v111 = sub_16F5828(v110);
          *(v55 + 40) = v111;
          sub_EC6D34((a2 + 20), v111, v112);
          if (!sub_683530(a2))
          {
            goto LABEL_6;
          }

LABEL_244:
          *(v55 + 16) |= 0x20u;
          *(v55 + 64) = 5;
          goto LABEL_6;
        }

        sub_EC6D34((a2 + 20), v63, v61);
        if (sub_683530(a2))
        {
          goto LABEL_244;
        }

LABEL_6:
        v10 += 184;
      }

      while (v10 != v11);
    }
  }
}

void sub_ED7F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED81D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ED81FC(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  v5[23] = 15;
  strcpy(v5, "ResponseBuilder");
  memset(v4, 0, sizeof(v4));
  v3 = sub_3AEC94(a2, v5, v4);
  sub_41D820(v3, &v6);
  sub_EDDECC();
}

void sub_ED8360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_ED839C(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1757EA4(a5, 0, 0);
  v8 = *a2;
  v129 = a2[1];
  v130 = a2;
  if (*a2 == v129)
  {
    if (!sub_7E7E4(1u))
    {
LABEL_155:
      *(a5 + 40) |= 0x400000u;
      *(a5 + 552) = 20;
      return;
    }

    sub_19594F8(__p);
    sub_4A5C(__p, "No routes found", 15);
    if ((v144 & 0x10) != 0)
    {
      v126 = v143;
      if (v143 < v139)
      {
        v143 = v139;
        v126 = v139;
      }

      v127 = v138;
      v75 = v126 - v138;
      if (v126 - v138 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if ((v144 & 8) == 0)
      {
        v75 = 0;
        v133 = 0;
LABEL_150:
        *(&__dst + v75) = 0;
        sub_7E854(&__dst, 1u);
        if (v133 < 0)
        {
          operator delete(__dst);
        }

        if (SHIBYTE(v142) < 0)
        {
          operator delete(v140);
        }

        std::locale::~locale(&v135);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_155;
      }

      v127 = locale;
      v75 = v137 - locale;
      if ((v137 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_158:
        sub_3244();
      }
    }

    if (v75 >= 0x17)
    {
      operator new();
    }

    v133 = v75;
    if (v75)
    {
      memmove(&__dst, v127, v75);
    }

    goto LABEL_150;
  }

  do
  {
    v9 = *(a5 + 64);
    if (v9 && (v10 = *(a5 + 56), v10 < *v9))
    {
      *(a5 + 56) = v10 + 1;
      v11 = *&v9[2 * v10 + 2];
    }

    else
    {
      v12 = sub_14BD738(*(a5 + 48));
      v11 = sub_19593CC(a5 + 48, v12);
    }

    v13 = sub_68DB24(v8);
    *(v11 + 40) |= 4u;
    v14 = *(v11 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    HIBYTE(v135.__locale_) = 4;
    LODWORD(__p[0]) = v13;
    BYTE4(__p[0]) = 0;
    sub_194EA1C((v11 + 720), __p, v15);
    if (SHIBYTE(v135.__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = sub_68D7F4(v8);
    v17 = sub_ECA8CC(v16);
    *(v11 + 40) |= 0x1000000u;
    *(v11 + 884) = v17;
    if (sub_68D828(v8, 4))
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_68D828(v8, 9);
    }

    *(v11 + 44) |= 1u;
    *(v11 + 916) = v18 ^ 1;
    v19 = sub_68D828(v8, 5);
    *(v11 + 44) |= 2u;
    *(v11 + 917) = v19 ^ 1;
    sub_ECCB58(a1, v8, v11);
    v20 = sub_6910B0();
    v21 = sub_EC7E7C(v20);
    *(v11 + 40) |= 0x200000u;
    *(v11 + 872) = v21;
    v22 = sub_68C454(v8, 0);
    v23 = sub_EC7E9C(*(v22 + 1097));
    *(v11 + 40) |= 0x2000000u;
    *(v11 + 888) = v23;
    v24 = sub_68DEC0(v8);
    v25 = *v24;
    v26 = v24[1];
    if (*v24 != v26)
    {
      while (1)
      {
        v45 = *(v11 + 144);
        if (v45 && (v46 = *(v11 + 136), v46 < *v45))
        {
          *(v11 + 136) = v46 + 1;
          v47 = *&v45[2 * v46 + 2];
        }

        else
        {
          v48 = *(v11 + 128);
          if (!v48)
          {
            operator new();
          }

          *v50 = v49;
          v50[1] = sub_195A650;
          *v49 = 0;
          v49[1] = 0;
          v49[2] = 0;
          v47 = sub_19593CC(v11 + 128, v49);
        }

        if (v25 == v47)
        {
          goto LABEL_40;
        }

        v51 = *(v25 + 23);
        if (*(v47 + 23) < 0)
        {
          break;
        }

        if ((*(v25 + 23) & 0x80) != 0)
        {
          sub_13A68(v47, *v25, *(v25 + 1));
LABEL_40:
          v25 = (v25 + 24);
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v52 = *v25;
          *(v47 + 16) = *(v25 + 2);
          *v47 = v52;
          v25 = (v25 + 24);
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }
      }

      if (v51 >= 0)
      {
        v43 = v25;
      }

      else
      {
        v43 = *v25;
      }

      if (v51 >= 0)
      {
        v44 = *(v25 + 23);
      }

      else
      {
        v44 = *(v25 + 1);
      }

      sub_13B38(v47, v43, v44);
      goto LABEL_40;
    }

LABEL_14:
    v27 = sub_68DDC0(v8);
    v28 = *v27;
    v29 = v27[1];
    if (*v27 != v29)
    {
      while (1)
      {
        v55 = *(v11 + 312);
        if (v55 && (v56 = *(v11 + 304), v56 < *v55))
        {
          *(v11 + 304) = v56 + 1;
          v57 = *&v55[2 * v56 + 2];
          v58 = *(v57 + 40);
          if (!v58)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_14BAE64(*(v11 + 296));
          v57 = sub_19593CC(v11 + 296, v59);
          v58 = *(v57 + 40);
          if (!v58)
          {
            goto LABEL_68;
          }
        }

        v60 = *(v57 + 32);
        if (v60 >= *v58)
        {
LABEL_68:
          v62 = *(v57 + 24);
          if (!v62)
          {
            operator new();
          }

          *v64 = v63;
          v64[1] = sub_195A650;
          *v63 = 0;
          v63[1] = 0;
          v63[2] = 0;
          v61 = sub_19593CC(v57 + 24, v63);
          goto LABEL_71;
        }

        *(v57 + 32) = v60 + 1;
        v61 = *&v58[2 * v60 + 2];
LABEL_71:
        if (v28 == v61)
        {
LABEL_60:
          v28 += 3;
          if (v28 == v29)
          {
            break;
          }
        }

        else
        {
          v65 = *(v28 + 23);
          if (*(v61 + 23) < 0)
          {
            if (v65 >= 0)
            {
              v53 = v28;
            }

            else
            {
              v53 = *v28;
            }

            if (v65 >= 0)
            {
              v54 = *(v28 + 23);
            }

            else
            {
              v54 = v28[1];
            }

            sub_13B38(v61, v53, v54);
            goto LABEL_60;
          }

          if ((*(v28 + 23) & 0x80) != 0)
          {
            sub_13A68(v61, *v28, v28[1]);
            goto LABEL_60;
          }

          v66 = *v28;
          *(v61 + 16) = v28[2];
          *v61 = v66;
          v28 += 3;
          if (v28 == v29)
          {
            break;
          }
        }
      }
    }

    v30 = sub_68DE5C(v8);
    if (!sub_4D1F6C(v30))
    {
      v31 = sub_68DE5C(v8);
      *(v11 + 40) |= 0x2000u;
      v32 = *(v11 + 808);
      if (!v32)
      {
        v33 = *(v11 + 8);
        v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v34 = *v34;
        }

        sub_14BAE64(v34);
        v32 = v35;
        *(v11 + 808) = v35;
      }

      sub_64D110(v31, v32);
    }

    sub_ECCE4C(a1, v8, a3, v11);
    v36 = sub_68C454(v8, 0);
    v37 = v36;
    if (v36[1503] != v36[1504] && v36[1501] != 0x7FFFFFFFFFFFFFFFLL && v36[1502] != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v11 + 40) |= 0x4000u;
      v38 = *(v11 + 816);
      if (!v38)
      {
        v39 = *(v11 + 8);
        v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
        if (v39)
        {
          v40 = *v40;
        }

        sub_14BBF6C(v40);
        v38 = v41;
        *(v11 + 816) = v41;
      }

      sub_EC8758(v37 + 1501, v38);
    }

    sub_ECCFB0(a1, v8, v11);
    v42 = nullsub_1(v8);
    if (-1189124953 * ((v42[1] - *v42) >> 4))
    {
      sub_68C454(v8, 0);
      sub_EDA720(a1);
    }

    sub_ED9234(a1, v8, v11);
    v8 += 976;
  }

  while (v8 != v129);
  v67 = sub_3B2A90(*a1);
  v69 = *a2;
  v68 = a2[1];
  if (*a2 == v68)
  {
LABEL_83:
    v74 = 1;
  }

  else
  {
    v70 = v67;
    while (1)
    {
      v71 = nullsub_1(v69);
      v73 = *v71;
      v72 = v71[1];
      if (*v71 != v72)
      {
        break;
      }

LABEL_82:
      v69 += 976;
      if (v69 == v68)
      {
        goto LABEL_83;
      }
    }

    while (sub_4B8018(v70, v73, *(a3 + 40)) == 2)
    {
      v73 += 12656;
      if (v73 == v72)
      {
        goto LABEL_82;
      }
    }

    v74 = 0;
  }

  *(a5 + 40) |= 0x4000000u;
  *(a5 + 565) = v74;
  v77 = *v130;
  v76 = v130[1];
  if (*v130 == v76)
  {
LABEL_94:
    v81 = 0;
  }

  else
  {
    while (1)
    {
      v78 = nullsub_1(v77);
      v79 = *v78;
      v80 = *(v78 + 8);
      if (*v78 != v80)
      {
        break;
      }

LABEL_93:
      v77 += 7808;
      if (v77 == v76)
      {
        goto LABEL_94;
      }
    }

    while (1)
    {
      sub_4D1DDC(v79, __p);
      __dst = a1;
      if (sub_EDEC10(__p[0], __p[1], v135.__locale_, locale, &__dst))
      {
        break;
      }

      v79 += 1582;
      if (v79 == v80)
      {
        goto LABEL_93;
      }
    }

    v81 = 1;
  }

  *(a5 + 40) |= 0x10000000u;
  *(a5 + 567) = v81;
  if (*a3 == 1)
  {
    sub_ED9690(a1[1], v130, a5);
  }

  v82 = 0x4FBCDA3AC10C9715 * ((v130[1] - *v130) >> 7);
  if (v82 >= 1)
  {
    v83 = 0;
    v84 = v82 & 0x7FFFFFFF;
    do
    {
      v85 = *(*(a5 + 64) + 8 * v83 + 8);
      v86 = nullsub_1(&(*v130)[7808 * v83]);
      v88 = *v86;
      v87 = v86[1];
      if (*v86 != v87)
      {
        v89 = (v88 + 7392);
        do
        {
          if (v89[619] == v89[620])
          {
            sub_EC6B44(v89, v85);
          }

          else
          {
            sub_ECA0F4((v88 + 12344), v85);
          }

          v88 += 12656;
          v89 += 1582;
        }

        while (v88 != v87);
      }

      ++v83;
    }

    while (v83 != v84);
  }

  sub_ED99C8(a1, v130, a5);
  v92 = *a4;
  v91 = a4[1];
  if (*a4 != v91)
  {
    do
    {
      v93 = *(a5 + 136);
      if (v93 && (v94 = *(a5 + 128), v94 < *v93))
      {
        *(a5 + 128) = v94 + 1;
        v95 = *&v93[2 * v94 + 2];
      }

      else
      {
        v96 = sub_14BDE5C(*(a5 + 120));
        v95 = sub_19593CC(a5 + 120, v96);
      }

      sub_EC6F6C(v92, v95, 0, v90);
      v92 += 1120;
    }

    while (v92 != v91);
  }

  sub_ED9DC4(a1, v130, a5);
  v97 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
  v98 = sub_68C454(*v130, 0);
  *(v97 + 16) |= 1u;
  v99 = *(v97 + 8);
  v100 = (v99 & 0xFFFFFFFFFFFFFFFCLL);
  if (v99)
  {
    v100 = *v100;
  }

  sub_194EA1C((v97 + 48), (v98 + 7464), v100);
  v101 = sub_3AF114(*a1);
  v102 = sub_2D5630(*v101);
  v103 = *(a5 + 40);
  *(a5 + 566) = v102;
  *(a5 + 40) = v103 | 0x8400000;
  *(a5 + 552) = 0;
  if (*(a3 + 32) == 1)
  {
    sub_EEB678(__p, a3);
    v104 = -1056139499 * ((v130[1] - *v130) >> 7);
    if (v104 >= 1)
    {
      sub_EEB6AC(__p, *v130, *(*(a5 + 64) + 8));
      v105 = sub_1950D4C((a5 + 16), dword_278CFF0, 11, &off_2769490, 0);
      v106 = sub_68E91C(*v130);
      *(v105 + 16) |= 2u;
      v107 = *(v105 + 8);
      v108 = (v107 & 0xFFFFFFFFFFFFFFFCLL);
      if (v107)
      {
        v108 = *v108;
      }

      sub_194EA1C((v105 + 56), v106, v108);
      v109 = (v104 & 0x7FFFFFFF) - 1;
      if ((v104 & 0x7FFFFFFF) != 1)
      {
        v110 = 16;
        v111 = 7808;
        do
        {
          sub_EEB6AC(__p, &(*v130)[v111], *(*(a5 + 64) + v110));
          v111 += 7808;
          v110 += 8;
          --v109;
        }

        while (v109);
      }

      v112 = 0x4FBCDA3AC10C9715 * ((v130[1] - *v130) >> 7);
      if (v112 >= 1)
      {
        v113 = 0;
        v114 = v112 & 0x7FFFFFFF;
        do
        {
          v115 = *(*(a5 + 64) + 8 * v113 + 8);
          v116 = &(*v130)[7808 * v113];
          v117 = nullsub_1(v116);
          v118 = v117[1] - *v117;
          if (v118)
          {
            v119 = 0;
            v120 = 0x5DDB1ADCB91F64A7 * (v118 >> 4);
            do
            {
              v121 = sub_68C454(v116, v119);
              sub_EDC930(a1, v121, v113, v119++, v115, a5);
            }

            while (v120 != v119);
          }

          ++v113;
        }

        while (v113 != v114);
      }
    }
  }

  else
  {
    sub_EA90C0(__p, a3);
    v122 = 0x4FBCDA3AC10C9715 * ((v130[1] - *v130) >> 7);
    if (v122 >= 1)
    {
      v123 = 0;
      v124 = v122 & 0x7FFFFFFF;
      v125 = 8;
      do
      {
        sub_EA9104(__p, &(*v130)[v123], *(*(a5 + 64) + v125));
        v123 += 7808;
        v125 += 8;
        --v124;
      }

      while (v124);
    }
  }

  __p[0] = &off_26744C0;
  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  if (v135.__locale_)
  {
    locale = v135.__locale_;
    operator delete(v135.__locale_);
  }
}

void sub_ED9124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1959728(&a19);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a19);
  sub_1758FB8(a12);
  _Unwind_Resume(a1);
}

void sub_ED9198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_EDE384(va);
  sub_1758FB8(a5);
  _Unwind_Resume(a1);
}

void sub_ED91C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1758FB8(a12);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xED9224);
}

void sub_ED91F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_EDE384(va);
  sub_1758FB8(a5);
  _Unwind_Resume(a1);
}

void sub_ED9234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v5 = sub_3B1D8C(*a1);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v6 = nullsub_1(a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      do
      {
        if (!sub_69AE68(v7))
        {
          goto LABEL_4;
        }

        v9 = sub_73F54(v7);
        sub_2AD1B4(v5, *(v9 + 104), *(v9 + 112), &v31);
        v10 = v44;
        if (v44 >= v45)
        {
          v13 = v43;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 2);
          v15 = v14 + 1;
          if (v14 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v45 - v43) >> 2) > v15)
          {
            v15 = 0x5555555555555556 * ((v45 - v43) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v43) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v16 = 0x1555555555555555;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (v16 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v17 = 4 * ((v44 - v43) >> 2);
          *v17 = v38;
          *(v17 + 8) = v39;
          v18 = 12 * v14 + 12;
          v19 = (12 * v14 - (v10 - v13));
          memcpy((v17 - (v10 - v13)), v13, v10 - v13);
          v43 = v19;
          v44 = v18;
          v45 = 0;
          if (v13)
          {
            operator delete(v13);
          }

          v44 = v18;
          sub_99F0C(v42);
          v12 = __p;
          if (!__p)
          {
LABEL_8:
            if ((v37 & 0x80000000) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_31;
          }
        }

        else
        {
          v11 = v38;
          *(v44 + 2) = v39;
          *v10 = v11;
          v44 = v10 + 12;
          sub_99F0C(v42);
          v12 = __p;
          if (!__p)
          {
            goto LABEL_8;
          }
        }

        v20 = v41;
        if (v41 == v12)
        {
          v41 = v12;
          operator delete(v12);
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          do
          {
            v21 = *(v20 - 1);
            v20 -= 3;
            if (v21 < 0)
            {
              operator delete(*v20);
            }
          }

          while (v20 != v12);
          v41 = v12;
          operator delete(__p);
          if ((v37 & 0x80000000) == 0)
          {
LABEL_9:
            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        operator delete(v36);
        if ((v35 & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v33) < 0)
          {
            goto LABEL_33;
          }

          goto LABEL_4;
        }

LABEL_32:
        operator delete(v34);
        if (SHIBYTE(v33) < 0)
        {
LABEL_33:
          operator delete(v31);
        }

LABEL_4:
        v7 += 12656;
      }

      while (v7 != v8);
    }

    v31 = 0;
    v32 = 0;
    v33 = 0;
    HIBYTE(v30[2]) = 17;
    strcpy(v30, "Charging Stations");
    sub_EAC188(&v31, &v43, v30, 0xFFFFFFFF, 0, 0, 0.0);
    if (SHIBYTE(v30[2]) < 0)
    {
      operator delete(v30[0]);
    }

    sub_EAC680(&v31, v30);
    v22 = v30[0];
    v23 = v30[1];
    if (v30[0] != v30[1])
    {
      do
      {
        v24 = sub_1950FFC((a3 + 16), dword_278D070, 11, &off_2769C00, 0);
        sub_12CC584(v24, v22);
        v22 += 48;
      }

      while (v22 != v23);
      v22 = v30[0];
    }

    if (v22)
    {
      v25 = v30[1];
      v26 = v22;
      if (v30[1] != v22)
      {
        do
        {
          v25 = sub_12CBDFC(v25 - 48);
        }

        while (v25 != v22);
        v26 = v30[0];
      }

      v30[1] = v22;
      operator delete(v26);
    }

    v27 = v31;
    if (!v31)
    {
      goto LABEL_55;
    }

    v28 = v32;
    v29 = v31;
    if (v32 == v31)
    {
LABEL_54:
      v32 = v27;
      operator delete(v29);
LABEL_55:
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      return;
    }

    while (1)
    {
      if (*(v28 - 25) < 0)
      {
        operator delete(*(v28 - 6));
        if (*(v28 - 49) < 0)
        {
LABEL_52:
          operator delete(*(v28 - 9));
        }
      }

      else if (*(v28 - 49) < 0)
      {
        goto LABEL_52;
      }

      v28 -= 10;
      if (v28 == v27)
      {
        v29 = v31;
        goto LABEL_54;
      }
    }
  }
}

void sub_ED9618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16)
{
  sub_D37F50(&a16);
  v18 = *(v16 - 112);
  if (v18)
  {
    *(v16 - 104) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_ED9690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1950D4C((a3 + 16), dword_278D178, 11, &off_2769460, 0);
  v6 = *a2;
  v35 = *(a2 + 8);
  if (*a2 != v35)
  {
    v7 = v5;
    v34 = v5;
    while (1)
    {
      v8 = *(v7 + 32);
      if (v8 && (v9 = *(v7 + 24), v9 < *v8))
      {
        *(v7 + 24) = v9 + 1;
        v10 = *&v8[2 * v9 + 2];
      }

      else
      {
        v11 = sub_12CFE5C(*(v7 + 16));
        v10 = sub_19593CC(v7 + 16, v11);
      }

      v36 = v6;
      v12 = sub_68C454(v6, 0);
      v13 = *(v12 + 1104);
      v14 = *(v12 + 1112);
      if (v13 != v14)
      {
        break;
      }

LABEL_3:
      v6 = v36 + 976;
      v7 = v34;
      if (v36 + 976 == v35)
      {
        return;
      }
    }

    v15 = v12;
    v16 = 0;
    while (1)
    {
      v18 = v16;
      if (*(v13 + 24) <= v16)
      {
        v20 = *(v10 + 16);
        v19 = v16;
      }

      else
      {
        v19 = v16;
        do
        {
          v21 = sub_4D1F50(v15, v19);
          v22 = sub_2B51D8(a1, *(v21 + 32) | ((*(v21 + 36) & 0x1FFFFFFF) << 32));
          v23 = (v22 - *v22);
          if (*v23 >= 0x1Du && (v24 = v23[14]) != 0)
          {
            v25 = *(v22 + v24);
          }

          else
          {
            v25 = 0;
          }

          if ((*(sub_4D1F50(v15, v19) + 39) & 0x20) != 0)
          {
            v26 = v25;
          }

          else
          {
            v26 = -v25;
          }

          v27 = *(v10 + 16);
          if (v27 == *(v10 + 20))
          {
            v20 = v27 + 1;
            sub_1959094((v10 + 16), v27 + 1);
            *(*(v10 + 24) + 8 * v27) = v26;
          }

          else
          {
            *(*(v10 + 24) + 8 * v27) = v26;
            v20 = v27 + 1;
          }

          *(v10 + 16) = v20;
          LODWORD(v16) = v16 + 1;
          v19 = v16;
          v18 = v16;
        }

        while (*(v13 + 24) > v16);
      }

      v16 = v19;
      if (v20)
      {
        v28 = v20 - 1;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v10 + 32);
      if (v29 == *(v10 + 36))
      {
        sub_1958E5C((v10 + 32), v29 + 1);
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *(*(v10 + 40) + 4 * v29) = v28;
        *(v10 + 32) = v29 + 1;
        if (v19)
        {
          goto LABEL_33;
        }
      }

      v31 = *(v13 + 160);
      if ((v31 - 25) <= 0x3F && ((1 << (v31 - 25)) & 0x9000000000000001) != 0 || v31 == 17)
      {
        v30 = (1000000000 - sub_4D2138(v15));
        goto LABEL_39;
      }

LABEL_33:
      if (sub_4D1DC0(v15) == v18)
      {
        v30 = sub_4D2140(v15);
LABEL_39:
        v32 = v30 / 1000000000.0;
        v33 = *(v10 + 48);
        if (v33 != *(v10 + 52))
        {
          *(*(v10 + 56) + 4 * v33) = v32;
LABEL_44:
          v17 = v33 + 1;
          goto LABEL_11;
        }

        v17 = v33 + 1;
        sub_1958E5C((v10 + 48), v33 + 1);
        *(*(v10 + 56) + 4 * v33) = v32;
        goto LABEL_11;
      }

      v33 = *(v10 + 48);
      if (v33 != *(v10 + 52))
      {
        *(*(v10 + 56) + 4 * v33) = 1065353216;
        goto LABEL_44;
      }

      v17 = v33 + 1;
      sub_1958E5C((v10 + 48), v33 + 1);
      *(*(v10 + 56) + 4 * v33) = 1065353216;
LABEL_11:
      *(v10 + 48) = v17;
      v13 += 2616;
      if (v13 == v14)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_ED99C8(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v54 = 0u;
  v55 = 1065353216;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 >= 1)
  {
    v5 = 0;
    v47 = v3 & 0x7FFFFFFF;
    do
    {
      v52 = *(*(a3 + 64) + 8 * v5 + 8);
      v49 = v5;
      v6 = nullsub_1(*a2 + 7808 * v5);
      v8 = *v6;
      v7 = v6[1];
      v50 = v7;
      while (v8 != v7)
      {
        v9 = *(v8 + 7416);
        v51 = v8;
        for (i = *(v8 + 7424); v9 != i; v9 += 1120)
        {
          v11 = *(v9 + 71);
          if (v11 >= 0)
          {
            v12 = (v9 + 48);
          }

          else
          {
            v12 = *(v9 + 48);
          }

          if (v11 >= 0)
          {
            v13 = *(v9 + 71);
          }

          else
          {
            v13 = *(v9 + 56);
          }

          v14 = sub_AAD8(&v56, v12, v13);
          v15 = __p[1];
          if (__p[1])
          {
            v16 = v14;
            v17 = vcnt_s8(__p[1]);
            v17.i16[0] = vaddlv_u8(v17);
            if (v17.u32[0] > 1uLL)
            {
              v18 = v14;
              if (v14 >= __p[1])
              {
                v18 = v14 % __p[1];
              }
            }

            else
            {
              v18 = (__p[1] - 1) & v14;
            }

            v19 = *(__p[0] + v18);
            if (v19)
            {
              v20 = *v19;
              if (*v19)
              {
                v21 = *(v9 + 71);
                if (v21 >= 0)
                {
                  v22 = *(v9 + 71);
                }

                else
                {
                  v22 = *(v9 + 56);
                }

                if (v21 >= 0)
                {
                  v23 = (v9 + 48);
                }

                else
                {
                  v23 = *(v9 + 48);
                }

                if (v17.u32[0] < 2uLL)
                {
                  v24 = __p[1] - 1;
                  while (1)
                  {
                    v29 = v20[1];
                    if (v16 == v29)
                    {
                      v30 = *(v20 + 39);
                      v31 = v30;
                      if (v30 < 0)
                      {
                        v30 = v20[3];
                      }

                      if (v30 == v22)
                      {
                        v32 = v31 >= 0 ? (v20 + 2) : v20[2];
                        if (!memcmp(v32, v23, v22))
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else if ((v29 & v24) != v18)
                    {
                      goto LABEL_53;
                    }

                    v20 = *v20;
                    if (!v20)
                    {
                      goto LABEL_53;
                    }
                  }
                }

                do
                {
                  v25 = v20[1];
                  if (v16 == v25)
                  {
                    v26 = *(v20 + 39);
                    v27 = v26;
                    if (v26 < 0)
                    {
                      v26 = v20[3];
                    }

                    if (v26 == v22)
                    {
                      v28 = v27 >= 0 ? (v20 + 2) : v20[2];
                      if (!memcmp(v28, v23, v22))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  else
                  {
                    if (v25 >= v15)
                    {
                      v25 %= v15;
                    }

                    if (v25 != v18)
                    {
                      break;
                    }
                  }

                  v20 = *v20;
                }

                while (v20);
              }
            }
          }

LABEL_53:
          v33 = *(a3 + 104);
          v56 = v9 + 48;
          sub_EDE7E0(__p, v9 + 48)[5] = v33;
          v35 = *(a3 + 112);
          if (v35 && (v36 = *(a3 + 104), v36 < *v35))
          {
            *(a3 + 104) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_14BDE5C(*(a3 + 96));
            v37 = sub_19593CC(a3 + 96, v38);
          }

          sub_EC6F6C(v9, v37, 0, v34);
LABEL_58:
          v56 = v9 + 48;
          v39 = *(sub_EDE7E0(__p, v9 + 48) + 10);
          v40 = *(v9 + 464);
          v41 = v40 / 100;
          v42 = v40 % 100;
          if (v40 < 0)
          {
            v43 = -50;
          }

          else
          {
            v43 = 50;
          }

          sub_ECA76C(v39, v41 + ((5243 * (v43 + v42)) >> 19) + ((5243 * (v43 + v42)) >> 31), v52);
        }

        v8 = v51 + 12656;
        v7 = v50;
      }

      v5 = v49 + 1;
    }

    while (v49 + 1 != v47);
    v44 = v54[0];
    if (v54[0])
    {
      do
      {
        v46 = *v44;
        if (*(v44 + 39) < 0)
        {
          operator delete(v44[2]);
        }

        operator delete(v44);
        v44 = v46;
      }

      while (v46);
    }
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }
}

void sub_ED9D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED9DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_ED9DC4(uint64_t a1, void *a2, uint64_t a3)
{
  __p = 0;
  v92 = 0;
  v93 = 0;
  v3 = 0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7);
  if (v3 < 1)
  {
    return;
  }

  v4 = a3;
  v5 = 0;
  v83 = v3 & 0x7FFFFFFF;
  do
  {
    v6 = *(*(v4 + 64) + 8 * v5 + 8);
    v89 = (*a2 + 7808 * v5);
    v7 = nullsub_1(v89);
    v8 = v7[1] - *v7;
    if (v8)
    {
      v9 = 0;
      v88 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      v90 = v5;
      while (1)
      {
        v10 = sub_68C454(v89, v9);
        v11 = v10;
        v12 = v10[1281];
        v13 = v10[1282];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

LABEL_6:
        if (++v9 == v88)
        {
          goto LABEL_3;
        }
      }

      v15 = __p;
      v16 = v92;
      if (__p == v92)
      {
        v21 = __p;
LABEL_45:
        if (v21 != v92)
        {
          v32 = 954437177 * ((v21 - __p) >> 3);
          *(v6 + 44) |= 8u;
          *(v6 + 920) = v32;
          v5 = v90;
          goto LABEL_93;
        }
      }

      else
      {
        v17 = v10[1284];
        v18 = v10[1283];
        v19 = v10[1287];
        v20 = v10[1286];
        v21 = __p;
        do
        {
          if (v12 == *v21)
          {
            v22 = *(v21 + 2);
            if (v17 - v18 == *(v21 + 3) - v22)
            {
              if (v18 == v17)
              {
LABEL_24:
                v24 = *(v21 + 5);
                if (v19 - v20 == *(v21 + 6) - v24)
                {
                  if (v20 == v19)
                  {
LABEL_13:
                    if (v13 == *(v21 + 1))
                    {
                      goto LABEL_45;
                    }
                  }

                  else
                  {
                    v25 = v11[1286];
                    while (*v25 == *v24)
                    {
                      if (*(v25 + 4) != *(v24 + 4))
                      {
                        break;
                      }

                      if (*(v25 + 8) != *(v24 + 8))
                      {
                        break;
                      }

                      if (*(v25 + 12) != *(v24 + 12))
                      {
                        break;
                      }

                      v27 = *(v25 + 16);
                      v26 = *(v25 + 24);
                      v28 = *(v24 + 16);
                      if (v26 - v27 != *(v24 + 24) - v28)
                      {
                        break;
                      }

                      for (; v27 != v26; v28 += 24)
                      {
                        v30 = *v27;
                        v29 = *(v27 + 8);
                        v31 = *v28;
                        if ((v29 - *v27) != (*(v28 + 8) - *v28))
                        {
                          goto LABEL_14;
                        }

                        if (v30 != v29)
                        {
                          while (*v30 == *v31 && v30[1] == v31[1] && v30[2] == v31[2])
                          {
                            v30 += 3;
                            v31 += 3;
                            if (v30 == v29)
                            {
                              goto LABEL_39;
                            }
                          }

                          goto LABEL_14;
                        }

LABEL_39:
                        v27 += 24;
                      }

                      if (*(v25 + 40) != *(v24 + 40) || *(v25 + 48) != *(v24 + 48))
                      {
                        break;
                      }

                      v25 += 64;
                      v24 += 64;
                      if (v25 == v19)
                      {
                        goto LABEL_13;
                      }
                    }
                  }
                }
              }

              else
              {
                v23 = v11[1283];
                while (*v23 == *v22 && *(v23 + 4) == *(v22 + 4) && *(v23 + 8) == *(v22 + 8) && *(v23 + 16) == *(v22 + 16))
                {
                  v23 += 24;
                  v22 += 24;
                  if (v23 == v17)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }

LABEL_14:
          v21 += 72;
        }

        while (v21 != v92);
      }

      v33 = 0x8E38E38E38E38E39 * ((v92 - __p) >> 3);
      *(v6 + 44) |= 8u;
      *(v6 + 920) = v33;
      if (v16 >= v93)
      {
        if (v33 + 1 > 0x38E38E38E38E38ELL)
        {
          sub_1794();
        }

        v39 = 0x8E38E38E38E38E39 * ((v93 - v15) >> 3);
        v40 = 2 * v39;
        if (2 * v39 <= v33 + 1)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v41 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v41 = v40;
        }

        p_p = &__p;
        if (v41)
        {
          if (v41 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 72 * v33;
        v94 = 0;
        v95 = 72 * v33;
        v96 = 72 * v33;
        v97 = 0;
        v43 = *(v11 + 1281);
        *&dword_10[18 * v33] = 0;
        *v42 = v43;
        *(v42 + 24) = 0;
        *(v42 + 32) = 0;
        v44 = v11[1283];
        v45 = v11[1284];
        if (v45 != v44)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *&stru_20.segname[72 * v33] = 0;
        *&stru_20.segname[72 * v33 + 8] = 0;
        *&stru_20.segname[72 * v33 + 16] = 0;
        sub_7C0AEC(v42 + 40, v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(&stru_20.vmsize + 18 * v33) = *(v11 + 2578);
        v85 = v96;
        v46 = __p;
        v47 = v92;
        v87 = (v95 + __p - v92);
        v5 = v90;
        if (__p != v92)
        {
          v48 = __p;
          v49 = (v95 + __p - v92);
          do
          {
            *v49 = *v48;
            *(v49 + 3) = 0;
            *(v49 + 4) = 0;
            *(v49 + 2) = 0;
            *(v49 + 1) = v48[1];
            *(v49 + 4) = *(v48 + 4);
            *(v48 + 2) = 0;
            *(v48 + 3) = 0;
            *(v48 + 4) = 0;
            *(v49 + 5) = 0;
            *(v49 + 6) = 0;
            *(v49 + 7) = 0;
            v37 = *(v48 + 40);
            *(v49 + 40) = v37;
            *(v49 + 7) = *(v48 + 7);
            *(v48 + 5) = 0;
            *(v48 + 6) = 0;
            *(v48 + 7) = 0;
            *(v49 + 16) = *(v48 + 16);
            v48 = (v48 + 72);
            v49 += 72;
          }

          while (v48 != v47);
          do
          {
            v50 = v46[5];
            if (v50)
            {
              v51 = v46[6];
              v52 = v46[5];
              if (v51 != v50)
              {
                do
                {
                  v54 = *(v51 - 48);
                  if (v54)
                  {
                    v55 = *(v51 - 40);
                    v53 = *(v51 - 48);
                    if (v55 != v54)
                    {
                      v56 = *(v51 - 40);
                      do
                      {
                        v58 = *(v56 - 24);
                        v56 -= 24;
                        v57 = v58;
                        if (v58)
                        {
                          *(v55 - 16) = v57;
                          operator delete(v57);
                        }

                        v55 = v56;
                      }

                      while (v56 != v54);
                      v53 = *(v51 - 48);
                    }

                    *(v51 - 40) = v54;
                    operator delete(v53);
                  }

                  v51 -= 64;
                }

                while (v51 != v50);
                v52 = v46[5];
              }

              v46[6] = v50;
              operator delete(v52);
              v5 = v90;
            }

            v59 = v46[2];
            if (v59)
            {
              v46[3] = v59;
              operator delete(v59);
            }

            v46 += 9;
          }

          while (v46 != v47);
        }

        v60 = __p;
        __p = v87;
        v92 = (v85 + 72);
        v95 = v60;
        v96 = v60;
        v93 = v97;
        if (v60)
        {
          operator delete(v60);
        }

        v4 = a3;
        v92 = (v85 + 72);
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        v34 = *(v11 + 1281);
        *(v16 + 2) = 0;
        *v16 = v34;
        *(v16 + 3) = 0;
        *(v16 + 4) = 0;
        v35 = v11[1283];
        v36 = v11[1284];
        if (v36 != v35)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1794();
        }

        *(v16 + 5) = 0;
        *(v16 + 6) = 0;
        *(v16 + 7) = 0;
        sub_7C0AEC((v16 + 40), v11[1286], v11[1287], (v11[1287] - v11[1286]) >> 6);
        *(v16 + 16) = *(v11 + 2578);
        v4 = a3;
        v5 = v90;
        v92 = v16 + 72;
        v38 = *(a3 + 248);
        if (!v38)
        {
          goto LABEL_91;
        }
      }

      v61 = *(v4 + 240);
      if (v61 < *v38)
      {
        *(v4 + 240) = v61 + 1;
        v62 = *&v38[2 * v61 + 2];
LABEL_92:
        sub_ECA330(v11 + 1281, v62, *&v37);
LABEL_93:
        v64 = 0x3795876FF3795877 * ((v11[139] - v11[138]) >> 3);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = v64 & 0x7FFFFFFF;
          do
          {
            v67 = sub_50EA30(v11 + 138, v65);
            v68 = sub_1950D4C((*(*(v6 + 72) + 8 * v65 + 8) + 16), dword_278D0E8, 11, &off_2769CA8, 0);
            v69 = *(v67 + 2417);
            *(v68 + 16) |= 2u;
            *(v68 + 97) = v69;
            ++v65;
          }

          while (v66 != v65);
        }

        goto LABEL_6;
      }

LABEL_91:
      v63 = sub_14BE3A4(*(v4 + 232));
      v62 = sub_19593CC(v4 + 232, v63);
      goto LABEL_92;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v83);
  v70 = __p;
  if (__p)
  {
    v71 = v92;
    v72 = __p;
    if (v92 != __p)
    {
      do
      {
        v73 = *(v71 - 4);
        if (v73)
        {
          v74 = *(v71 - 3);
          v75 = *(v71 - 4);
          if (v74 != v73)
          {
            do
            {
              v77 = *(v74 - 48);
              if (v77)
              {
                v78 = *(v74 - 40);
                v76 = *(v74 - 48);
                if (v78 != v77)
                {
                  v79 = *(v74 - 40);
                  do
                  {
                    v81 = *(v79 - 24);
                    v79 -= 24;
                    v80 = v81;
                    if (v81)
                    {
                      *(v78 - 16) = v80;
                      operator delete(v80);
                    }

                    v78 = v79;
                  }

                  while (v79 != v77);
                  v76 = *(v74 - 48);
                }

                *(v74 - 40) = v77;
                operator delete(v76);
              }

              v74 -= 64;
            }

            while (v74 != v73);
            v75 = *(v71 - 4);
          }

          *(v71 - 3) = v73;
          operator delete(v75);
        }

        v82 = *(v71 - 7);
        if (v82)
        {
          *(v71 - 6) = v82;
          operator delete(v82);
        }

        v71 -= 72;
      }

      while (v71 != v70);
      v72 = __p;
    }

    v92 = v70;
    operator delete(v72);
  }
}

void sub_EDA698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17)
  {
    sub_21E5364(&a18, a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDBAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v29 = *(v27 - 184);
  if (!v29)
  {
    sub_4AE168((v27 - 160));
    _Unwind_Resume(a1);
  }

  *(v27 - 176) = v29;
  operator delete(v29);
  sub_4AE168((v27 - 160));
  _Unwind_Resume(a1);
}

void sub_EDBC50(void *a1@<X1>, unsigned int a2@<W2>, unsigned int a3@<W3>, _DWORD *a4@<X4>, unsigned int *a5@<X5>, void *a6@<X8>)
{
  v12 = a3;
  v13 = sub_69E8D8(a1, a3);
  __p[1] = 0;
  v36 = 0;
  __p[0] = 0;
  v14 = v13[1];
  if (v14 != *v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_4D1DC0(a1) - 1 == v12)
  {
    v15 = 0.0;
    if (!a3)
    {
      v15 = (1000000000 - sub_4D2138(a1));
    }

    v16 = sub_4D2140(a1);
    sub_2F4C8(__p, 0, a6, v15 / 1000000000.0, v16 / 1000000000.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return;
  }

  if (a3)
  {
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = sub_4D2138(a1);
    sub_2F4C8(__p, 0, &v33, (1000000000 - v24) / 1000000000.0, 1.0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v33;
    v36 = v34;
    v17 = (a1[138] + 2616 * a2);
    if (v17[10] != v12)
    {
LABEL_11:
      if (v17[13] == v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  v25 = v17[11];
  v26 = v25 / 100;
  v27 = v25 % 100;
  if (v25 < 0)
  {
    v28 = -50;
  }

  else
  {
    v28 = 50;
  }

  *a4 = sub_4DE8CC(__p, (v26 + (((5243 * (v28 + v27)) >> 19) + ((5243 * (v28 + v27)) >> 31))), 0.1);
  if (v17[13] == v12)
  {
LABEL_12:
    v18 = v17[14];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || ((v19 = v18 / 100, v20 = v18 % 100, v18 < 0) ? (v21 = -50) : (v21 = 50), v22 = v19 + (((5243 * (v21 + v20)) >> 19) + ((5243 * (v21 + v20)) >> 31)), v22 < 1))
    {
      v23 = 0;
      *a5 = 0;
    }

    else
    {
      v23 = sub_4DE8CC(__p, v22, 0.1);
      *a5 = v23;
    }

    goto LABEL_27;
  }

LABEL_25:
  v23 = *a5;
LABEL_27:
  v29 = __p[1];
  v30 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 2) - 1;
  v31 = v30 > v23 && v30 > *a4;
  v32 = -12;
  if (!v31)
  {
    v32 = 0;
  }

  *a6 = __p[0];
  a6[1] = &v29[v32];
  a6[2] = v36;
}

void sub_EDBFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDBFDC(double a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v4 = a3[1] - *a3;
  if (!v4)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v27 = a4;
  v28 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  do
  {
    while ((*(sub_ED0948(a3, v8) + 16) & 1) != 0 || (*(sub_ED0948(a3, v8) + 17) & 1) != 0 || (*(sub_ED0948(a3, v8) + 18) & 1) != 0 || v8 == 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) - 1)
    {
      v35 = v34;
      v30 = v8 + 1;
      v9 = v8 + 1 - v7;
      if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) < v9)
      {
        if (v9 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v29 = v8;
      if (v7 <= v30)
      {
        v10 = v8 + 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = v7;
      if (v30 > v7)
      {
        do
        {
          while (1)
          {
            v13 = sub_ED0948(a3, v11);
            v14 = v35;
            if (v35 >= v36)
            {
              break;
            }

            v12 = *v13;
            *(v35 + 2) = *(v13 + 8);
            *v14 = v12;
            v35 = v14 + 12;
            if (v10 == ++v11)
            {
              goto LABEL_29;
            }
          }

          v15 = v34;
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 2);
          v17 = v16 + 1;
          if (v16 + 1 > 0x1555555555555555)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v36 - v34) >> 2) > v17)
          {
            v17 = 0x5555555555555556 * ((v36 - v34) >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v18 = 0x1555555555555555;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            if (v18 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v19 = 4 * ((v35 - v34) >> 2);
          v20 = *v13;
          *(v19 + 8) = *(v13 + 8);
          *v19 = v20;
          v21 = 12 * v16 + 12;
          v22 = (12 * v16 - (v14 - v15));
          memcpy((v19 - (v14 - v15)), v15, v14 - v15);
          v34 = v22;
          v35 = v21;
          v36 = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v35 = v21;
          ++v11;
        }

        while (v10 != v11);
      }

LABEL_29:
      memset(__p, 0, sizeof(__p));
      sub_41DB4(&v34, v27, 0, 1, __p, &v32, a1);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v23 = v33;
      if (v33)
      {
        v24 = 0;
        do
        {
          v25 = sub_ED0948(a3, v7);
          v26 = v32;
          *(v25 + 20) = (*(v32 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
          ++v24;
          ++v7;
        }

        while (v23 != v24);
LABEL_36:
        operator delete(v26);
        goto LABEL_37;
      }

      v26 = v32;
      if (v32)
      {
        goto LABEL_36;
      }

LABEL_37:
      v7 = v29;
      v8 = v30;
      if (v30 == v28)
      {
        goto LABEL_40;
      }
    }

    ++v8;
  }

  while (v8 != v28);
LABEL_40:
  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_EDC380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_EDC890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC8F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC91C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_89FA8(va);
  _Unwind_Resume(a1);
}

void sub_EDC930(_BYTE *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_4D1DC0(a2);
  v9 = a2[1290];
  v10 = a2[1291];
  if (v9 != v10)
  {
    v11 = v8;
    v12 = v8 - 1;
    do
    {
      v13 = *(v9 + 8);
      if (v13 >= v11 || v13 == v12 && sub_4D2140(a2) < 0x3B9ACA00)
      {
        goto LABEL_3;
      }

      if (sub_683A0C(v9))
      {
        if (a1[16])
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!sub_445A90(v9))
        {
          if (!sub_683864(v9) && !sub_683854(v9) || a1[18] != 1)
          {
            goto LABEL_3;
          }

LABEL_16:
          std::to_string(&v36, a3);
          v14 = std::string::append(&v36, "_", 1uLL);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v37.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v35, a4);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v35;
          }

          else
          {
            v16 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v37, v16, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = std::string::append(&v38, "_", 1uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v34, *(v9 + 8));
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v34;
          }

          else
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v34.__r_.__value_.__l.__size_;
          }

          v24 = std::string::append(&v39, v22, v23);
          v25 = *&v24->__r_.__value_.__l.__data_;
          v41 = v24->__r_.__value_.__r.__words[2];
          v40 = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_37;
            }

LABEL_30:
            if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_31;
            }

LABEL_38:
            operator delete(v38.__r_.__value_.__l.__data_);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_39;
            }

LABEL_32:
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_40:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_41;
            }

LABEL_34:
            if (*(v9 + 4) == 2)
            {
LABEL_42:
              v26 = SHIBYTE(v41);
              if ((SHIBYTE(v41) & 0x8000000000000000) != 0)
              {
                v26 = *(&v40 + 1);
                if ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1 - *(&v40 + 1) < 9)
                {
                  if (0x7FFFFFFFFFFFFFF7 - (v41 & 0x7FFFFFFFFFFFFFFFLL) < *(&v40 + 1) + 9 - ((v41 & 0x7FFFFFFFFFFFFFFFLL) - 1))
                  {
                    sub_3244();
                  }

LABEL_47:
                  operator new();
                }

                v27 = v40;
              }

              else
              {
                if ((SHIBYTE(v41) - 14) < 9)
                {
                  goto LABEL_47;
                }

                v27 = &v40;
              }

              v28 = v27 + v26;
              *v28 = 0x74756F5266664F5FLL;
              v28[8] = 101;
              v29 = v26 + 9;
              if (SHIBYTE(v41) < 0)
              {
                *(&v40 + 1) = v26 + 9;
              }

              else
              {
                HIBYTE(v41) = v29 & 0x7F;
              }

              *(v27 + v29) = 0;
            }
          }

          else
          {
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_31:
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_32;
            }

LABEL_39:
            operator delete(v35.__r_.__value_.__l.__data_);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_40;
            }

LABEL_33:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

LABEL_41:
            operator delete(v36.__r_.__value_.__l.__data_);
            if (*(v9 + 4) == 2)
            {
              goto LABEL_42;
            }
          }

          sub_EDCE6C(a1, v9, &v40, a4, a5, a6);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }

          goto LABEL_3;
        }

        if (a1[17])
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v9 += 104;
    }

    while (v9 != v10);
  }
}

void sub_EDCD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_EDCE6C(uint64_t a1, uint64_t a2, const void **a3, int a4, uint64_t a5, uint64_t a6)
{
  if (sub_6834F4(a2))
  {
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    if (v10 != v11)
    {
      v117 = a6;
      v118 = a5;
      v119 = *(a2 + 40);
      do
      {
        if (!sub_683140(v10))
        {
          goto LABEL_6;
        }

        v14 = *(a5 + 240);
        if (v14 && (v15 = *(a5 + 232), v15 < *v14))
        {
          *(a5 + 232) = v15 + 1;
          v16 = *&v14[2 * v15 + 2];
        }

        else
        {
          sub_14BE174(*(a5 + 224));
          v16 = sub_19593CC(a5 + 224, v17);
        }

        v18 = *(a2 + 4) != 0;
        *(v16 + 16) |= 0x20u;
        *(v16 + 76) = v18;
        v19 = sub_683530(a2);
        v20 = *(v16 + 16);
        if (v19)
        {
          *(v16 + 72) = *(a2 + 16);
          *(v16 + 88) = *(v10 + 22);
          v21 = *(v10 + 24);
          v20 |= 0x190u;
          *(v16 + 16) = v20;
          *(v16 + 84) = v21;
        }

        *(v16 + 16) = v20 | 0x40;
        *(v16 + 80) = a4;
        v22 = *(v10 + 16);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v29 = *(a3 + 23);
            }

            else
            {
              v29 = a3[1];
            }

            if (v29 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v29 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v29 + 13;
            if (v29)
            {
              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              memmove(&__p, v40, v29);
            }

            strcpy(&__p + v29, "_TrafficLight");
            *(v16 + 16) |= 1u;
            v41 = *(v16 + 8);
            v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
            if (v41)
            {
              v42 = *v42;
            }

            sub_194EA30((v16 + 48), &__p, v42);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v43 = *(a6 + 272);
              if (!v43)
              {
                goto LABEL_170;
              }
            }

            else
            {
              v43 = *(a6 + 272);
              if (!v43)
              {
LABEL_170:
                v77 = sub_14BE0EC(*(a6 + 256));
                v76 = sub_19593CC(a6 + 256, v77);
                goto LABEL_171;
              }
            }

            v75 = *(a6 + 264);
            if (v75 >= *v43)
            {
              goto LABEL_170;
            }

            *(a6 + 264) = v75 + 1;
            v76 = *&v43[2 * v75 + 2];
LABEL_171:
            if (*(a3 + 23) >= 0)
            {
              v78 = *(a3 + 23);
            }

            else
            {
              v78 = a3[1];
            }

            if (v78 + 13 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v78 + 13 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v78 + 13;
            v11 = v119;
            if (v78)
            {
              if (*(a3 + 23) >= 0)
              {
                v79 = a3;
              }

              else
              {
                v79 = *a3;
              }

              memmove(&__p, v79, v78);
            }

            a6 = v117;
            strcpy(&__p + v78, "_TrafficLight");
            *(v76 + 16) |= 1u;
            v80 = *(v76 + 8);
            v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
            if (v80)
            {
              v81 = *v81;
            }

            sub_194EA30((v76 + 24), &__p, v81);
            a5 = v118;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
                goto LABEL_246;
              }
            }

            else
            {
              *(v76 + 16) |= 2u;
              v83 = *(v76 + 32);
              if (!v83)
              {
LABEL_246:
                v113 = *(v76 + 8);
                v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
                if (v113)
                {
                  v114 = *v114;
                }

                v83 = sub_16F5828(v114);
                *(v76 + 32) = v83;
              }
            }

            sub_EC6D34((a2 + 20), v83, v82);
            *(v76 + 16) |= 4u;
            *(v76 + 40) = 1;
            goto LABEL_6;
          }

          if (v22 == 2)
          {
            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 2;
            if (*(a3 + 23) >= 0)
            {
              v25 = *(a3 + 23);
            }

            else
            {
              v25 = a3[1];
            }

            if (v25 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v25 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v25 + 9;
            if (v25)
            {
              if (*(a3 + 23) >= 0)
              {
                v50 = a3;
              }

              else
              {
                v50 = *a3;
              }

              memmove(&__p, v50, v25);
            }

            strcpy(&__p + v25, "_StopSign");
            *(v16 + 16) |= 1u;
            v51 = *(v16 + 8);
            v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v51)
            {
              v52 = *v52;
            }

            sub_194EA30((v16 + 48), &__p, v52);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v53 = *(a6 + 272);
              if (!v53)
              {
                goto LABEL_224;
              }
            }

            else
            {
              v53 = *(a6 + 272);
              if (!v53)
              {
LABEL_224:
                v102 = sub_14BE0EC(*(a6 + 256));
                v101 = sub_19593CC(a6 + 256, v102);
                goto LABEL_225;
              }
            }

            v100 = *(a6 + 264);
            if (v100 >= *v53)
            {
              goto LABEL_224;
            }

            *(a6 + 264) = v100 + 1;
            v101 = *&v53[2 * v100 + 2];
LABEL_225:
            if (*(a3 + 23) >= 0)
            {
              v103 = *(a3 + 23);
            }

            else
            {
              v103 = a3[1];
            }

            if (v103 + 9 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v103 + 9 >= 0x17)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v103 + 9;
            v11 = v119;
            if (v103)
            {
              if (*(a3 + 23) >= 0)
              {
                v104 = a3;
              }

              else
              {
                v104 = *a3;
              }

              memmove(&__p, v104, v103);
            }

            a6 = v117;
            strcpy(&__p + v103, "_StopSign");
            *(v101 + 16) |= 1u;
            v105 = *(v101 + 8);
            v106 = (v105 & 0xFFFFFFFFFFFFFFFCLL);
            if (v105)
            {
              v106 = *v106;
            }

            sub_194EA30((v101 + 24), &__p, v106);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
                goto LABEL_251;
              }
            }

            else
            {
              *(v101 + 16) |= 2u;
              v108 = *(v101 + 32);
              if (!v108)
              {
LABEL_251:
                v115 = *(v101 + 8);
                v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
                if (v115)
                {
                  v116 = *v116;
                }

                v108 = sub_16F5828(v116);
                *(v101 + 32) = v108;
              }
            }

            sub_EC6D34((a2 + 20), v108, v107);
            *(v101 + 16) |= 4u;
            *(v101 + 40) = 2;
            goto LABEL_6;
          }

          goto LABEL_6;
        }

        if (v22 != 3)
        {
          if (v22 != 4)
          {
            if (v22 != 5)
            {
              goto LABEL_6;
            }

            *(v16 + 16) = v20 | 0x44;
            *(v16 + 64) = 1;
            if (*(a3 + 23) >= 0)
            {
              v23 = *(a3 + 23);
            }

            else
            {
              v23 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v24 = byte_27BD1D7;
            }

            else
            {
              v24 = qword_27BD1C8;
            }

            if (v24 + v23 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_256;
            }

            if (v24 + v23 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v24 + v23;
            if (v23)
            {
              if (*(a3 + 23) >= 0)
              {
                v44 = a3;
              }

              else
              {
                v44 = *a3;
              }

              memmove(&__p, v44, v23);
            }

            v45 = &__p + v23;
            if (v24)
            {
              if (byte_27BD1D7 >= 0)
              {
                v46 = &qword_27BD1C0;
              }

              else
              {
                v46 = qword_27BD1C0;
              }

              memmove(v45, v46, v24);
            }

            v45[v24] = 0;
            *(v16 + 16) |= 1u;
            v47 = *(v16 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            sub_194EA30((v16 + 48), &__p, v48);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v49 = *(a6 + 224);
              if (!v49)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v49 = *(a6 + 224);
              if (!v49)
              {
LABEL_190:
                sub_14BE058(*(a6 + 208));
                v65 = sub_19593CC(a6 + 208, v85);
                goto LABEL_191;
              }
            }

            v84 = *(a6 + 216);
            if (v84 >= *v49)
            {
              goto LABEL_190;
            }

            *(a6 + 216) = v84 + 1;
            v65 = *&v49[2 * v84 + 2];
LABEL_191:
            v86 = sub_683938(a2);
            std::to_string(&__p, v86);
            *(v65 + 16) |= 2u;
            v87 = *(v65 + 8);
            v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
            if (v87)
            {
              v88 = *v88;
            }

            sub_194EA30((v65 + 32), &__p, v88);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v89 = *(a2 + 88) / 3.6;
            *(v65 + 16) |= 0x80u;
            *(v65 + 72) = v89;
            if (*(a3 + 23) >= 0)
            {
              v90 = *(a3 + 23);
            }

            else
            {
              v90 = a3[1];
            }

            if (byte_27BD1D7 >= 0)
            {
              v91 = byte_27BD1D7;
            }

            else
            {
              v91 = qword_27BD1C8;
            }

            if (v91 + v90 > 0x7FFFFFFFFFFFFFF7)
            {
LABEL_256:
              sub_3244();
            }

            if (v91 + v90 > 0x16)
            {
              operator new();
            }

            memset(&__p, 0, sizeof(__p));
            *(&__p.__r_.__value_.__s + 23) = v91 + v90;
            a5 = v118;
            if (v90)
            {
              if (*(a3 + 23) >= 0)
              {
                v92 = a3;
              }

              else
              {
                v92 = *a3;
              }

              memmove(&__p, v92, v90);
            }

            v93 = &__p + v90;
            if (v91)
            {
              if (byte_27BD1D7 >= 0)
              {
                v94 = &qword_27BD1C0;
              }

              else
              {
                v94 = qword_27BD1C0;
              }

              memmove(v93, v94, v91);
            }

            v93[v91] = 0;
            *(v65 + 16) |= 1u;
            v95 = *(v65 + 8);
            v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
            if (v95)
            {
              v96 = *v96;
            }

            sub_194EA30((v65 + 24), &__p, v96);
            v11 = v119;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v97 = *(v65 + 16);
            *(v65 + 64) = 1;
            *(v65 + 16) = v97 | 0x24;
            v12 = *(v65 + 40);
            if (!v12)
            {
LABEL_219:
              v98 = *(v65 + 8);
              v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
              if (v98)
              {
                v99 = *v99;
              }

              v12 = sub_16F5828(v99);
              *(v65 + 40) = v12;
            }

LABEL_5:
            sub_EC6D34((a2 + 20), v12, v13);
            goto LABEL_6;
          }

          *(v16 + 16) = v20 | 0x44;
          *(v16 + 64) = 1;
          if (*(a3 + 23) >= 0)
          {
            v27 = *(a3 + 23);
          }

          else
          {
            v27 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v28 = byte_27BD1BF;
          }

          else
          {
            v28 = qword_27BD1B0;
          }

          if (v28 + v27 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v28 + v27 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v28 + v27;
          if (v27)
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            memmove(&__p, v34, v27);
          }

          v35 = &__p + v27;
          if (v28)
          {
            if (byte_27BD1BF >= 0)
            {
              v36 = &qword_27BD1A8;
            }

            else
            {
              v36 = qword_27BD1A8;
            }

            memmove(v35, v36, v28);
          }

          v35[v28] = 0;
          *(v16 + 16) |= 1u;
          v37 = *(v16 + 8);
          v38 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
          if (v37)
          {
            v38 = *v38;
          }

          sub_194EA30((v16 + 48), &__p, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v39 = *(a6 + 224);
            if (!v39)
            {
              goto LABEL_141;
            }
          }

          else
          {
            v39 = *(a6 + 224);
            if (!v39)
            {
LABEL_141:
              sub_14BE058(*(a6 + 208));
              v65 = sub_19593CC(a6 + 208, v66);
              goto LABEL_142;
            }
          }

          v64 = *(a6 + 216);
          if (v64 >= *v39)
          {
            goto LABEL_141;
          }

          *(a6 + 216) = v64 + 1;
          v65 = *&v39[2 * v64 + 2];
LABEL_142:
          if (*(a3 + 23) >= 0)
          {
            v67 = *(a3 + 23);
          }

          else
          {
            v67 = a3[1];
          }

          if (byte_27BD1BF >= 0)
          {
            v68 = byte_27BD1BF;
          }

          else
          {
            v68 = qword_27BD1B0;
          }

          if (v68 + v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_256;
          }

          if (v68 + v67 > 0x16)
          {
            operator new();
          }

          memset(&__p, 0, sizeof(__p));
          *(&__p.__r_.__value_.__s + 23) = v68 + v67;
          a5 = v118;
          if (v67)
          {
            if (*(a3 + 23) >= 0)
            {
              v69 = a3;
            }

            else
            {
              v69 = *a3;
            }

            memmove(&__p, v69, v67);
          }

          v70 = &__p + v67;
          if (v68)
          {
            if (byte_27BD1BF >= 0)
            {
              v71 = &qword_27BD1A8;
            }

            else
            {
              v71 = qword_27BD1A8;
            }

            memmove(v70, v71, v68);
          }

          v70[v68] = 0;
          *(v65 + 16) |= 1u;
          v72 = *(v65 + 8);
          v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL);
          if (v72)
          {
            v73 = *v73;
          }

          sub_194EA30((v65 + 24), &__p, v73);
          v11 = v119;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v74 = *(v65 + 16);
          *(v65 + 64) = 5;
          *(v65 + 16) = v74 | 0x24;
          v12 = *(v65 + 40);
          if (!v12)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }

        *(v16 + 16) = v20 | 0x44;
        *(v16 + 64) = 1;
        if (*(a3 + 23) >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = a3[1];
        }

        if (v26 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v26 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v26 + 15;
        if (v26)
        {
          if (*(a3 + 23) >= 0)
          {
            v30 = a3;
          }

          else
          {
            v30 = *a3;
          }

          memmove(&__p, v30, v26);
        }

        strcpy(&__p + v26, "_RedLightCamera");
        *(v16 + 16) |= 1u;
        v31 = *(v16 + 8);
        v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
        if (v31)
        {
          v32 = *v32;
        }

        sub_194EA30((v16 + 48), &__p, v32);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v33 = *(a6 + 224);
          if (!v33)
          {
            goto LABEL_119;
          }
        }

        v54 = *(a6 + 216);
        if (v54 >= *v33)
        {
LABEL_119:
          sub_14BE058(*(a6 + 208));
          v55 = sub_19593CC(a6 + 208, v56);
          goto LABEL_120;
        }

        *(a6 + 216) = v54 + 1;
        v55 = *&v33[2 * v54 + 2];
LABEL_120:
        if (*(a3 + 23) >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = a3[1];
        }

        if (v57 + 15 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_256;
        }

        if (v57 + 15 >= 0x17)
        {
          operator new();
        }

        memset(&__p, 0, sizeof(__p));
        *(&__p.__r_.__value_.__s + 23) = v57 + 15;
        v11 = v119;
        if (v57)
        {
          if (*(a3 + 23) >= 0)
          {
            v58 = a3;
          }

          else
          {
            v58 = *a3;
          }

          memmove(&__p, v58, v57);
        }

        a6 = v117;
        strcpy(&__p + v57, "_RedLightCamera");
        *(v55 + 16) |= 1u;
        v59 = *(v55 + 8);
        v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL);
        if (v59)
        {
          v60 = *v60;
        }

        sub_194EA30((v55 + 24), &__p, v60);
        a5 = v118;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v62 = *(v55 + 16);
        *(v55 + 64) = 2;
        *(v55 + 16) = v62 | 0x24;
        v63 = *(v55 + 40);
        if (!v63)
        {
          v109 = *(v55 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          v111 = sub_16F5828(v110);
          *(v55 + 40) = v111;
          sub_EC6D34((a2 + 20), v111, v112);
          if (!sub_683530(a2))
          {
            goto LABEL_6;
          }

LABEL_244:
          *(v55 + 16) |= 0x20u;
          *(v55 + 64) = 5;
          goto LABEL_6;
        }

        sub_EC6D34((a2 + 20), v63, v61);
        if (sub_683530(a2))
        {
          goto LABEL_244;
        }

LABEL_6:
        v10 += 184;
      }

      while (v10 != v11);
    }
  }
}

void sub_EDDE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDE10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EDE138(uint64_t a1)
{
  *a1 = &off_2674490;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_EDE1C8(uint64_t a1)
{
  sub_EDE200(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_EDE200(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    v5 = *(i - 32);
    if (v5)
    {
      v6 = *(i - 24);
      v7 = *(i - 32);
      if (v6 != v5)
      {
        do
        {
          v9 = *(v6 - 48);
          if (v9)
          {
            v10 = *(v6 - 40);
            v8 = *(v6 - 48);
            if (v10 != v9)
            {
              v11 = *(v6 - 40);
              do
              {
                v13 = *(v11 - 24);
                v11 -= 24;
                v12 = v13;
                if (v13)
                {
                  *(v10 - 16) = v12;
                  operator delete(v12);
                }

                v10 = v11;
              }

              while (v11 != v9);
              v8 = *(v6 - 48);
            }

            *(v6 - 40) = v9;
            operator delete(v8);
          }

          v6 -= 64;
        }

        while (v6 != v5);
        v7 = *(i - 32);
      }

      *(i - 24) = v5;
      operator delete(v7);
    }

    v14 = *(i - 56);
    if (v14)
    {
      *(i - 48) = v14;
      operator delete(v14);
    }
  }
}

uint64_t sub_EDE2F4(uint64_t a1)
{
  *a1 = &off_26744A8;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_EDE384(uint64_t a1)
{
  *a1 = &off_26744C0;
  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    *(a1 + 120) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    *(a1 + 24) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_EDE414(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 8), *(v13 + 32) | (*(v13 + 36) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 8), *(v17 + 32) | (*(v17 + 36) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 8), *(v22 + 32) | (*(v22 + 36) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t **sub_EDE628(void *a1, uint64_t a2)
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

uint64_t **sub_EDE7E0(void *a1, uint64_t a2)
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

void sub_EDEBE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EDEBF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_EDEC10(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v10 = sub_4D1DC0(a1);
        v11 = sub_4D1DC0(a3);
        if (v8 >= v10 || a4 >= v11)
        {
          if (v8 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_4D1F50(a1, v8);
          if (v12 == sub_4D1F50(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_4D1F50(a1, v8);
        v14 = sub_2B51D8(*(*a5 + 8), *(v13 + 32) | ((*(v13 + 36) & 0x1FFFFFFF) << 32));
        v15 = (v14 - *v14);
        if (*v15 >= 0x9Bu)
        {
          v16 = v15[77];
          if (v16)
          {
            if ((*(v14 + v16 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        ++v8;
      }
    }

    else
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v17 = sub_4D1F50(a1, v8);
        v18 = sub_2B51D8(*(*a5 + 8), *(v17 + 32) | ((*(v17 + 36) & 0x1FFFFFFF) << 32));
        v19 = (v18 - *v18);
        if (*v19 >= 0x9Bu)
        {
          v20 = v19[77];
          if (v20)
          {
            if ((*(v18 + v20 + 3) & 2) != 0)
            {
              break;
            }
          }
        }

        if (++v8 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    if (!a3 || a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }

    while (1)
    {
      v22 = sub_4D1F50(0, v8);
      v23 = sub_2B51D8(*(*a5 + 8), *(v22 + 32) | ((*(v22 + 36) & 0x1FFFFFFF) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 0x9Bu)
      {
        v25 = v24[77];
        if (v25)
        {
          if ((*(v23 + v25 + 3) & 2) != 0)
          {
            break;
          }
        }
      }

      ++v8;
      if (a4 >= sub_4D1DC0(a3))
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_EDEE5C()
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
  xmmword_27BD1D8 = 0u;
  unk_27BD1E8 = 0u;
  dword_27BD1F8 = 1065353216;
  sub_3A9A34(&xmmword_27BD1D8, v0);
  sub_3A9A34(&xmmword_27BD1D8, v3);
  sub_3A9A34(&xmmword_27BD1D8, __p);
  sub_3A9A34(&xmmword_27BD1D8, v9);
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
    qword_27BD180 = 0;
    qword_27BD188 = 0;
    qword_27BD178 = 0;
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

void sub_EDF134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BD190)
  {
    qword_27BD198 = qword_27BD190;
    operator delete(qword_27BD190);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_EDF1F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  sub_1757EA4(a2, 0, 0);
  if (*(a1 + 1994))
  {
    sub_EEFE38(&v5, *(a1 + 2160), a1 + 1960, *(a1 + 3152));
  }

  sub_ECBCBC(&v4, *(a1 + 2160));
}

void sub_EDF4E0(_Unwind_Exception *a1)
{
  sub_EDF52C(&STACK[0x248]);
  sub_EE0F7C(&STACK[0x260]);
  sub_1758FB8(v1);
  _Unwind_Resume(a1);
}

void **sub_EDF52C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v6 = *(v3 - 3);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = *(v3 - 2);
      v5 = *(v3 - 3);
      if (v7 != v6)
      {
        break;
      }

LABEL_5:
      *(v3 - 2) = v6;
      operator delete(v5);
LABEL_6:
      v3 -= 32;
      if (v3 == v2)
      {
        v4 = *a1;
LABEL_27:
        a1[1] = v2;
        operator delete(v4);
        return a1;
      }
    }

    while ((*(v7 - 1) & 0x80000000) == 0)
    {
      v9 = *(v7 - 6);
      if (v9)
      {
        goto LABEL_15;
      }

LABEL_16:
      v10 = v7 - 9;
      v11 = *(v7 - 9);
      if (v11)
      {
        v12 = *(v7 - 8);
        v8 = *(v7 - 9);
        if (v12 != v11)
        {
          do
          {
            v13 = *(v12 - 6);
            if (v13)
            {
              *(v12 - 5) = v13;
              operator delete(v13);
            }

            v14 = v12 - 10;
            if (*(v12 - 57) < 0)
            {
              operator delete(*v14);
            }

            v12 -= 10;
          }

          while (v14 != v11);
          v8 = *v10;
        }

        *(v7 - 8) = v11;
        operator delete(v8);
      }

      v7 -= 9;
      if (v10 == v6)
      {
        v5 = *(v3 - 3);
        goto LABEL_5;
      }
    }

    operator delete(*(v7 - 3));
    v9 = *(v7 - 6);
    if (!v9)
    {
      goto LABEL_16;
    }

LABEL_15:
    *(v7 - 5) = v9;
    operator delete(v9);
    goto LABEL_16;
  }

  return a1;
}

void sub_EDF664(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  sub_1757EA4(a2, 0, 0);
  if (*(a1 + 1994))
  {
    sub_EFC5B8(&v5, *(a1 + 2160), a1 + 1960, *(a1 + 3152));
  }

  sub_ED2508(&v4, *(a1 + 2160));
}

void sub_EDF94C(_Unwind_Exception *a1)
{
  sub_EDF52C(&STACK[0x248]);
  sub_EB3644(&STACK[0x260]);
  sub_1758FB8(v1);
  _Unwind_Resume(a1);
}

void sub_EDF998(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  sub_1757EA4(a2, 0, 0);
  if (*(a1 + 1994))
  {
    sub_F07704(&v5, *(a1 + 2160), a1 + 1960, *(a1 + 3152));
  }

  sub_ED8398(&v4, *(a1 + 2160));
}

void sub_EDFC80(_Unwind_Exception *a1)
{
  sub_EDF52C(&STACK[0x248]);
  sub_EE1098(&STACK[0x260]);
  sub_1758FB8(v1);
  _Unwind_Resume(a1);
}

void sub_EDFCCC(uint64_t a1, uint64_t a2)
{
  sub_175C1D0(a2 + 576, a2);
  if (!*(a1 + 3128))
  {
    goto LABEL_44;
  }

  v4 = sub_1950D4C((a2 + 592), dword_278CFF0, 11, &off_2769490, 0);
  *(v4 + 16) |= 8u;
  v5 = *(v4 + 72);
  if (!v5)
  {
    v6 = *(v4 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_12D0EA4(v7);
    *(v4 + 72) = v5;
  }

  v8 = *(a1 + 3128);
  if (!v8)
  {
    sub_21E17C0();
  }

  sub_12C5844(v5, v8);
  v9 = *(a1 + 3128);
  if (!v9)
  {
    sub_21E17C0();
  }

  if (v9[38] == v9[39])
  {
LABEL_15:
    v15 = v9[32];
    for (i = v9[33]; v15 != i; v15 += 64)
    {
      while (1)
      {
        v20 = sub_1950784((a2 + 592), dword_278D010, 11, 0, 0);
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = *(v20 + 8);
          if (v22 < *v21)
          {
            break;
          }
        }

        v17 = v20;
        v18 = sub_12E1EE4(*v20);
        v19 = sub_19593CC(v17, v18);
        sub_12D94D8(v19, v15);
        v15 += 64;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      *(v20 + 8) = v22 + 1;
      sub_12D94D8(*&v21[2 * v22 + 2], v15);
    }

LABEL_21:
    v23 = *(a2 + 872);
    if (v23)
    {
      v24 = (v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 864);
    if (v25)
    {
      v26 = &v24[v25];
      do
      {
        v27 = *(a1 + 3128);
        if (!v27)
        {
          sub_21E17C0();
        }

        v28 = *v24;
        v29 = *(*v24 + 280);
        v31 = v27[35];
        v30 = v27[36];
        if (v31 != v30)
        {
          while (*v31 != v29)
          {
            v31 += 32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          if (v30 >= v27[37])
          {
            sub_3E441C(v27 + 35);
            v32 = v33;
          }

          else
          {
            *v30 = -1;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            v32 = v30 + 32;
            *(v30 + 8) = 0;
          }

          v27[36] = v32;
          *(v32 - 32) = v29;
          v31 = v32 - 32;
        }

        v34 = *(v28 + 56);
        if (v34 >= 1)
        {
          v35 = 48;
          v36 = 8;
          do
          {
            v37 = *(*(v28 + 64) + v36);
            if (*(v37 + 41))
            {
              v38 = *(v37 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              sub_194EA1C((v37 + 768), (*(v31 + 8) + v35), v39);
            }

            v36 += 8;
            v35 += 72;
            --v34;
          }

          while (v34);
        }

        ++v24;
      }

      while (v24 != v26);
    }

LABEL_44:
    sub_EE01BC(a1, v48);
    operator new();
  }

  *(v4 + 16) |= 8u;
  v10 = *(v4 + 72);
  if (v10)
  {
    *(v10 + 16) |= 8u;
    v11 = *(v10 + 232);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = *(v4 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_12D0EA4(v41);
    v10 = v42;
    *(v4 + 72) = v42;
    *(v42 + 16) |= 8u;
    v11 = *(v42 + 232);
    if (v11)
    {
LABEL_11:
      sub_EE27DC(v48, v11);
      v12 = *(a1 + 3128);
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 304);
        for (j = *(v12 + 312); v13 != j; v13 += 3)
        {
          sub_EE280C(v48, v13);
        }

        sub_EE11B4(v48);
        v9 = *(a1 + 3128);
        if (!v9)
        {
          sub_21E17C0();
        }

        goto LABEL_15;
      }

LABEL_51:
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
    }
  }

  v43 = *(v10 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  v45 = sub_131A21C(v44);
  *(v10 + 232) = v45;
  sub_EE27DC(v48, v45);
  v12 = *(a1 + 3128);
  if (v12)
  {
    goto LABEL_12;
  }

  goto LABEL_51;
}

void sub_EE0190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE01A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE01BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2160);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D598(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
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

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_EE02B4(uint64_t a1, uint64_t a2)
{
  sub_175C1D0(a2 + 576, a2);
  if (!*(a1 + 3128))
  {
    goto LABEL_44;
  }

  v4 = sub_1950D4C((a2 + 592), dword_278CFF0, 11, &off_2769490, 0);
  *(v4 + 16) |= 8u;
  v5 = *(v4 + 72);
  if (!v5)
  {
    v6 = *(v4 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_12D0EA4(v7);
    *(v4 + 72) = v5;
  }

  v8 = *(a1 + 3128);
  if (!v8)
  {
    sub_21E17C0();
  }

  sub_12C5844(v5, v8);
  v9 = *(a1 + 3128);
  if (!v9)
  {
    sub_21E17C0();
  }

  if (v9[38] == v9[39])
  {
LABEL_15:
    v15 = v9[32];
    for (i = v9[33]; v15 != i; v15 += 64)
    {
      while (1)
      {
        v20 = sub_1950784((a2 + 592), dword_278D010, 11, 0, 0);
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = *(v20 + 8);
          if (v22 < *v21)
          {
            break;
          }
        }

        v17 = v20;
        v18 = sub_12E1EE4(*v20);
        v19 = sub_19593CC(v17, v18);
        sub_12D94D8(v19, v15);
        v15 += 64;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      *(v20 + 8) = v22 + 1;
      sub_12D94D8(*&v21[2 * v22 + 2], v15);
    }

LABEL_21:
    v23 = *(a2 + 872);
    if (v23)
    {
      v24 = (v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 864);
    if (v25)
    {
      v26 = &v24[v25];
      do
      {
        v27 = *(a1 + 3128);
        if (!v27)
        {
          sub_21E17C0();
        }

        v28 = *v24;
        v29 = *(*v24 + 280);
        v31 = v27[35];
        v30 = v27[36];
        if (v31 != v30)
        {
          while (*v31 != v29)
          {
            v31 += 32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          if (v30 >= v27[37])
          {
            sub_3E441C(v27 + 35);
            v32 = v33;
          }

          else
          {
            *v30 = -1;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            v32 = v30 + 32;
            *(v30 + 8) = 0;
          }

          v27[36] = v32;
          *(v32 - 32) = v29;
          v31 = v32 - 32;
        }

        v34 = *(v28 + 56);
        if (v34 >= 1)
        {
          v35 = 48;
          v36 = 8;
          do
          {
            v37 = *(*(v28 + 64) + v36);
            if (*(v37 + 41))
            {
              v38 = *(v37 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              sub_194EA1C((v37 + 768), (*(v31 + 8) + v35), v39);
            }

            v36 += 8;
            v35 += 72;
            --v34;
          }

          while (v34);
        }

        ++v24;
      }

      while (v24 != v26);
    }

LABEL_44:
    sub_EE07A4(a1, v48);
    operator new();
  }

  *(v4 + 16) |= 8u;
  v10 = *(v4 + 72);
  if (v10)
  {
    *(v10 + 16) |= 8u;
    v11 = *(v10 + 232);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = *(v4 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_12D0EA4(v41);
    v10 = v42;
    *(v4 + 72) = v42;
    *(v42 + 16) |= 8u;
    v11 = *(v42 + 232);
    if (v11)
    {
LABEL_11:
      sub_EE27DC(v48, v11);
      v12 = *(a1 + 3128);
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 304);
        for (j = *(v12 + 312); v13 != j; v13 += 3)
        {
          sub_EE280C(v48, v13);
        }

        sub_EE11B4(v48);
        v9 = *(a1 + 3128);
        if (!v9)
        {
          sub_21E17C0();
        }

        goto LABEL_15;
      }

LABEL_51:
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
    }
  }

  v43 = *(v10 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  v45 = sub_131A21C(v44);
  *(v10 + 232) = v45;
  sub_EE27DC(v48, v45);
  v12 = *(a1 + 3128);
  if (v12)
  {
    goto LABEL_12;
  }

  goto LABEL_51;
}

void sub_EE0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE0790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE07A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2160);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D7AC(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
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

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_EE089C(uint64_t a1, uint64_t a2)
{
  sub_175C1D0(a2 + 576, a2);
  if (!*(a1 + 3128))
  {
    goto LABEL_44;
  }

  v4 = sub_1950D4C((a2 + 592), dword_278CFF0, 11, &off_2769490, 0);
  *(v4 + 16) |= 8u;
  v5 = *(v4 + 72);
  if (!v5)
  {
    v6 = *(v4 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_12D0EA4(v7);
    *(v4 + 72) = v5;
  }

  v8 = *(a1 + 3128);
  if (!v8)
  {
    sub_21E17C0();
  }

  sub_12C5844(v5, v8);
  v9 = *(a1 + 3128);
  if (!v9)
  {
    sub_21E17C0();
  }

  if (v9[38] == v9[39])
  {
LABEL_15:
    v15 = v9[32];
    for (i = v9[33]; v15 != i; v15 += 64)
    {
      while (1)
      {
        v20 = sub_1950784((a2 + 592), dword_278D010, 11, 0, 0);
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = *(v20 + 8);
          if (v22 < *v21)
          {
            break;
          }
        }

        v17 = v20;
        v18 = sub_12E1EE4(*v20);
        v19 = sub_19593CC(v17, v18);
        sub_12D94D8(v19, v15);
        v15 += 64;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      *(v20 + 8) = v22 + 1;
      sub_12D94D8(*&v21[2 * v22 + 2], v15);
    }

LABEL_21:
    v23 = *(a2 + 872);
    if (v23)
    {
      v24 = (v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 864);
    if (v25)
    {
      v26 = &v24[v25];
      do
      {
        v27 = *(a1 + 3128);
        if (!v27)
        {
          sub_21E17C0();
        }

        v28 = *v24;
        v29 = *(*v24 + 280);
        v31 = v27[35];
        v30 = v27[36];
        if (v31 != v30)
        {
          while (*v31 != v29)
          {
            v31 += 32;
            if (v31 == v30)
            {
              goto LABEL_33;
            }
          }
        }

        if (v31 == v30)
        {
LABEL_33:
          if (v30 >= v27[37])
          {
            sub_3E441C(v27 + 35);
            v32 = v33;
          }

          else
          {
            *v30 = -1;
            *(v30 + 16) = 0;
            *(v30 + 24) = 0;
            v32 = v30 + 32;
            *(v30 + 8) = 0;
          }

          v27[36] = v32;
          *(v32 - 32) = v29;
          v31 = v32 - 32;
        }

        v34 = *(v28 + 56);
        if (v34 >= 1)
        {
          v35 = 48;
          v36 = 8;
          do
          {
            v37 = *(*(v28 + 64) + v36);
            if (*(v37 + 41))
            {
              v38 = *(v37 + 8);
              v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
              if (v38)
              {
                v39 = *v39;
              }

              sub_194EA1C((v37 + 768), (*(v31 + 8) + v35), v39);
            }

            v36 += 8;
            v35 += 72;
            --v34;
          }

          while (v34);
        }

        ++v24;
      }

      while (v24 != v26);
    }

LABEL_44:
    sub_EE0D8C(a1, v48);
    operator new();
  }

  *(v4 + 16) |= 8u;
  v10 = *(v4 + 72);
  if (v10)
  {
    *(v10 + 16) |= 8u;
    v11 = *(v10 + 232);
    if (v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v40 = *(v4 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    sub_12D0EA4(v41);
    v10 = v42;
    *(v4 + 72) = v42;
    *(v42 + 16) |= 8u;
    v11 = *(v42 + 232);
    if (v11)
    {
LABEL_11:
      sub_EE27DC(v48, v11);
      v12 = *(a1 + 3128);
      if (v12)
      {
LABEL_12:
        v13 = *(v12 + 304);
        for (j = *(v12 + 312); v13 != j; v13 += 3)
        {
          sub_EE280C(v48, v13);
        }

        sub_EE11B4(v48);
        v9 = *(a1 + 3128);
        if (!v9)
        {
          sub_21E17C0();
        }

        goto LABEL_15;
      }

LABEL_51:
      exception = __cxa_allocate_exception(0x40uLL);
      v47 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
    }
  }

  v43 = *(v10 + 8);
  v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
  if (v43)
  {
    v44 = *v44;
  }

  v45 = sub_131A21C(v44);
  *(v10 + 232) = v45;
  sub_EE27DC(v48, v45);
  v12 = *(a1 + 3128);
  if (v12)
  {
    goto LABEL_12;
  }

  goto LABEL_51;
}

void sub_EE0D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE0D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_EE11B4(va);
  _Unwind_Resume(a1);
}

void sub_EE0D8C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2160);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D820(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
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

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_EE0E84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 224);
  HIBYTE(v12[2]) = 21;
  strcpy(v12, "ResponseBuilderModule");
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = sub_3AEC94(v3, v12, &__p);
  sub_41D7AC(v4, a2);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
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

    v10 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_EE0F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_EE0F7C(void *a1)
{
  sub_4773BC((a1 + 148));
  v2 = a1 + 13;
  a1[13] = off_266AB00;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[13] = &off_266AB88;
  v11 = a1[40];
  if (v11)
  {
    a1[41] = v11;
    operator delete(v11);
  }

  return a1;
}

void *sub_EE1098(void *a1)
{
  sub_4773BC((a1 + 148));
  v2 = a1 + 13;
  a1[13] = off_266ACA8;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[13] = &off_266AB88;
  v11 = a1[40];
  if (v11)
  {
    a1[41] = v11;
    operator delete(v11);
  }

  return a1;
}

void *sub_EE11B4(void *a1)
{
  sub_EE128C((a1 + 11));
  v2 = a1[8];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 10);
      if (v4 != -1)
      {
        (off_26745F8[v4])(&v10, v2 + 2);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    do
    {
      v9 = *v6;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v9;
    }

    while (v9);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_EE128C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[2];
      if (v5)
      {
        v6 = v2[3];
        v3 = v2[2];
        if (v6 != v5)
        {
          do
          {
            v7 = v6 - 32;
            v8 = *(v6 - 8);
            if (v8 != -1)
            {
              (off_26745F8[v8])(&v11, v6 - 32);
            }

            *(v6 - 8) = -1;
            v6 -= 32;
          }

          while (v7 != v5);
          v3 = v2[2];
        }

        v2[3] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void sub_EE136C()
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
  xmmword_27BD230 = 0u;
  unk_27BD240 = 0u;
  dword_27BD250 = 1065353216;
  sub_3A9A34(&xmmword_27BD230, v0);
  sub_3A9A34(&xmmword_27BD230, v3);
  sub_3A9A34(&xmmword_27BD230, __p);
  sub_3A9A34(&xmmword_27BD230, v9);
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
    qword_27BD208 = 0;
    qword_27BD210 = 0;
    qword_27BD200 = 0;
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

void sub_EE15B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BD218)
  {
    qword_27BD220 = qword_27BD218;
    operator delete(qword_27BD218);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE1660(uint64_t a1)
{
  v2 = sub_74700();
  v3 = sub_73ECC(v2);
  if (sub_585D8(v3))
  {
    v4 = sub_73ECC(v2);
    v5 = *(v4 + 16);
    v11 = *v4;
    v12 = v5;
  }

  else
  {
    sub_58568(&v11);
  }

  sub_585EC(&v11, &__p);
  *(a1 + 40) |= 1u;
  v6 = *(a1 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA1C((a1 + 376), &__p, v7);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v10 = 0;
  return nullsub_1(v2);
}

void sub_EE171C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE1738(uint64_t a1)
{
  v2 = sub_74700();
  v3 = sub_73ECC(v2);
  if (sub_585D8(v3))
  {
    v4 = sub_73ECC(v2);
    v5 = *(v4 + 16);
    v11 = *v4;
    v12 = v5;
  }

  else
  {
    sub_58568(&v11);
  }

  sub_585EC(&v11, &__p);
  *(a1 + 40) |= 2u;
  v6 = *(a1 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA1C((a1 + 200), &__p, v7);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v10 = 0;
  return nullsub_1(v2);
}

void sub_EE17F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE1810(uint64_t a1, uint64_t a2)
{
  sub_4EF5E4(a1, &__p);
  *(a2 + 40) |= 2u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA30((a2 + 384), &__p, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = sub_4EF360(a1);
    result = sub_585D8(v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = sub_4EF360(a1);
    result = sub_585D8(v6);
    if (!result)
    {
      return result;
    }
  }

  v9 = sub_4EF360(a1);
  *(a2 + 40) |= 0x8000u;
  v10 = *(a2 + 496);
  if (v10)
  {
    return sub_ECB7A4(v9, v10);
  }

  v11 = v9;
  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  v14 = sub_155248C(v13);
  *(a2 + 496) = v14;
  return sub_ECB7A4(v11, v14);
}

void sub_EE190C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EE1928(uint64_t a1, uint64_t a2)
{
  sub_4EF5E4(a1, &__p);
  *(a2 + 40) |= 1u;
  v4 = *(a2 + 8);
  v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
  if (v4)
  {
    v5 = *v5;
  }

  sub_194EA30((a2 + 192), &__p, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v8 = sub_4EF360(a1);
    result = sub_585D8(v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = sub_4EF360(a1);
    result = sub_585D8(v6);
    if (!result)
    {
      return result;
    }
  }

  v9 = sub_4EF360(a1);
  *(a2 + 40) |= 0x20u;
  v10 = *(a2 + 232);
  if (v10)
  {
    return sub_ECB7A4(v9, v10);
  }

  v11 = v9;
  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  v14 = sub_155248C(v13);
  *(a2 + 232) = v14;
  return sub_ECB7A4(v11, v14);
}

void sub_EE1A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE1A40(int a1, void *a2)
{
  v9[0] = a1;
  LODWORD(v9[1]) = 3;
  v12 = 11;
  strcpy(__p, "RequestTime");
  v17 = __p;
  v17 = (sub_A1D1C(a2, __p) + 5);
  (sub_3D4A0C)(&v17);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  (off_2674670[LODWORD(v9[1])])(__p, v9);
  v3 = sub_74700();
  v4 = sub_73ED4(v3);
  if (*v4 != v4[1])
  {
    sub_72D24(v3, &v16);
    LODWORD(v17) = v16.__r_.__value_.__r.__words[2];
    *(&v17 + 3) = *(&v16.__r_.__value_.__r.__words[2] + 3);
    v12 = 10;
    memset(&v16, 0, sizeof(v16));
    strcpy(__p, "AbBranchId");
    v9[0] = __p;
    v5 = sub_A1D1C(a2, __p);
    v6 = *(v5 + 12);
    if (v6 != -1)
    {
      (off_2674670[v6])(v9, v5 + 5);
    }

    *(v5 + 12) = -1;
    operator new();
  }

  sub_7F0A4(__p);
  sub_7F2DC(__p, v13);
  v15[0] = v14;
  *(v15 + 3) = *(&v14 + 3);
  v13[1] = 0;
  v14 = 0;
  v10 = 11;
  v13[0] = 0;
  strcpy(v9, "CodeVersion");
  v17 = v9;
  v7 = sub_A1D1C(a2, v9);
  v8 = *(v7 + 12);
  if (v8 != -1)
  {
    (off_2674670[v8])(&v17, v7 + 5);
  }

  *(v7 + 12) = -1;
  operator new();
}

uint64_t sub_EE24F4(uint64_t a1)
{
  if (sub_3B8538(a1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_EE2518()
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
  xmmword_27BD258 = 0u;
  unk_27BD268 = 0u;
  dword_27BD278 = 1065353216;
  sub_3A9A34(&xmmword_27BD258, v0);
  sub_3A9A34(&xmmword_27BD258, v3);
  sub_3A9A34(&xmmword_27BD258, __p);
  sub_3A9A34(&xmmword_27BD258, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_EE26E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27BD258);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void *sub_EE2760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1950CD0(a1 + 16, dword_278CFF0, qword_278CFF8);
  v4 = result[6] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    v6 = *v4;
    v7 = *(v4 + 8);

    return sub_325C(a2, v6, v7);
  }

  else
  {
    v5 = *v4;
    *(a2 + 16) = *(v4 + 16);
    *a2 = v5;
  }

  return result;
}

double sub_EE27DC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  return result;
}

void sub_EE280C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  if (v5)
  {
    v6 = *(v4 + 24);
    if (v6 < *v5)
    {
      *(v4 + 24) = v6 + 1;
      v7 = *&v5[2 * v6 + 2];
      v8 = *a2;
      v9 = a2[1];
      if (*a2 == v9)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  v10 = sub_131A174(*(v4 + 16));
  v7 = sub_19593CC(v4 + 16, v10);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
LABEL_6:
    v50 = v9;
    do
    {
      v12 = nullsub_1(v8);
      LODWORD(v53) = *(*a1 + 48);
      v13 = sub_EE2BAC(a1 + 1, v12);
      if (v14)
      {
        v15 = *a1;
        v16 = nullsub_1(v8);
        sub_64CFD8(v15, v16);
      }

      v17 = *(v13 + 10);
      v18 = *(v7 + 16);
      if (v18 == *(v7 + 20))
      {
        sub_1958E5C((v7 + 16), v18 + 1);
        *(*(v7 + 24) + 4 * v18) = v17;
        *(v7 + 16) = v18 + 1;
        if (!sub_83EB8(v8))
        {
          goto LABEL_13;
        }
      }

      else
      {
        *(*(v7 + 24) + 4 * v18) = v17;
        *(v7 + 16) = v18 + 1;
        if (!sub_83EB8(v8))
        {
LABEL_13:
          v19 = sub_73EC4(v8);
          LODWORD(v53) = *(*a1 + 72);
          v20 = sub_EE3550(a1 + 11, v19);
          if (v21)
          {
            v22 = *a1;
            v23 = *(*a1 + 80);
            if (v23 && (v24 = *(v22 + 72), v24 < *v23))
            {
              *(v22 + 72) = v24 + 1;
              v25 = *&v23[2 * v24 + 2];
              v26 = sub_73EC4(v8);
              v27 = *v26;
              v28 = v26[1];
              if (*v26 != v28)
              {
LABEL_24:
                while (1)
                {
                  v39 = *(v25 + 40);
                  if (v39 && (v40 = *(v25 + 32), v40 < *v39))
                  {
                    *(v25 + 32) = v40 + 1;
                    v41 = *&v39[2 * v40 + 2];
                  }

                  else
                  {
                    v42 = sub_131A0C8(*(v25 + 24));
                    v41 = sub_19593CC(v25 + 24, v42);
                  }

                  v51 = &v52;
                  v52 = v41;
                  v43 = *(v27 + 24);
                  if (v43 == -1)
                  {
                    break;
                  }

                  v53 = &v51;
                  (off_2674790[v43])(&v53, v27);
                  v27 += 32;
                  if (v27 == v28)
                  {
                    goto LABEL_30;
                  }
                }

LABEL_40:
                sub_5AF20();
              }
            }

            else
            {
              v37 = sub_131A0C8(*(v22 + 64));
              v25 = sub_19593CC(v22 + 64, v37);
              v38 = sub_73EC4(v8);
              v27 = *v38;
              v28 = v38[1];
              if (*v38 != v28)
              {
                goto LABEL_24;
              }
            }
          }

LABEL_30:
          v44 = *(v20 + 10);
          v45 = *(v7 + 32);
          if (v45 == *(v7 + 36))
          {
            v11 = v45 + 1;
            sub_1958E5C((v7 + 32), v45 + 1);
            *(*(v7 + 40) + 4 * v45) = v44;
          }

          else
          {
            *(*(v7 + 40) + 4 * v45) = v44;
            v11 = v45 + 1;
          }

          v9 = v50;
          goto LABEL_8;
        }
      }

      v29 = sub_58BBC(v8);
      LODWORD(v53) = *(*a1 + 72);
      v30 = sub_EE2FE0(a1 + 6, v29);
      if (v31)
      {
        v32 = sub_58BBC(v8);
        v33 = *a1;
        v34 = *(*a1 + 80);
        if (v34 && (v35 = *(v33 + 72), v35 < *v34))
        {
          *(v33 + 72) = v35 + 1;
          v36 = *&v34[2 * v35 + 2];
        }

        else
        {
          v46 = sub_131A0C8(*(v33 + 64));
          v36 = sub_19593CC(v33 + 64, v46);
        }

        v51 = &v52;
        v52 = v36;
        v47 = *(v32 + 24);
        if (v47 == -1)
        {
          goto LABEL_40;
        }

        v53 = &v51;
        (off_2674790[v47])(&v53, v32);
      }

      v48 = *(v30 + 12);
      v49 = *(v7 + 32);
      if (v49 == *(v7 + 36))
      {
        v11 = v49 + 1;
        sub_1958E5C((v7 + 32), v49 + 1);
        *(*(v7 + 40) + 4 * v49) = v48;
      }

      else
      {
        *(*(v7 + 40) + 4 * v49) = v48;
        v11 = v49 + 1;
      }

LABEL_8:
      *(v7 + 32) = v11;
      v8 += 80;
    }

    while (v8 != v9);
  }
}

uint64_t **sub_EE2BAC(void *a1, uint64_t a2)
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

void sub_EE2FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_EE2FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_EE2FE0(void *a1, uint64_t a2)
{
  v4 = sub_83EC8(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_36;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_36:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        v12 = *(v10 + 10);
        v13 = *(a2 + 24);
        if (v12 != -1 && v13 == v12)
        {
          v20 = &v21;
          if ((off_2674700[v12])(&v20, v10 + 2, a2))
          {
            return v10;
          }
        }

        else if (v13 == v12)
        {
          return v10;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_36;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
    v15 = v10[1];
    if (v15 == v5)
    {
      break;
    }

    if (v15 >= *&v6)
    {
      v15 %= *&v6;
    }

    if (v15 != v8)
    {
      goto LABEL_36;
    }

LABEL_24:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_36;
    }
  }

  v16 = *(v10 + 10);
  v17 = *(a2 + 24);
  if (v16 == -1 || v17 != v16)
  {
    if (v17 == v16)
    {
      return v10;
    }

    goto LABEL_24;
  }

  v20 = &v21;
  if (((off_2674700[v16])(&v20, v10 + 2, a2) & 1) == 0)
  {
    goto LABEL_24;
  }

  return v10;
}