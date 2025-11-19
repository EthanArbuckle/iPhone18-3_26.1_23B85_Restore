void sub_11C3608(void *a1@<X0>, void **a2@<X8>)
{
  v4 = a1[15];
  for (i = a1[16]; v4 != i; i = a1[16])
  {
    v6 = *v4;
    v101 = *(v4 + 16);
    v100 = v6;
    if (i - v4 >= 25)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * ((i - v4) >> 3);
      v103 = *v4;
      v104 = *(v4 + 16);
      v9 = v4;
      do
      {
        v11 = v9 + 24 * v7 + 24;
        v12 = (2 * v7) | 1;
        v13 = 2 * v7 + 2;
        if (v13 < v8)
        {
          v14 = *(v11 + 16);
          v15 = *(v11 + 40);
          v16 = v14 <= v15;
          v17 = v14 <= v15 ? 0 : 24;
          v11 += v17;
          if (!v16)
          {
            v12 = v13;
          }
        }

        v10 = *v11;
        *(v9 + 16) = *(v11 + 16);
        *v9 = v10;
        v9 = v11;
        v7 = v12;
      }

      while (v12 <= ((v8 - 2) >> 1));
      v18 = (i - 24);
      if (v11 == v18)
      {
        v26 = v103;
        *(v11 + 16) = v104;
        *v11 = v26;
      }

      else
      {
        v19 = *v18;
        *(v11 + 16) = *(v18 + 2);
        *v11 = v19;
        *v18 = v103;
        *(v18 + 2) = v104;
        v20 = v11 - v4 + 24;
        if (v20 >= 25)
        {
          v21 = (-2 - 0x5555555555555555 * (v20 >> 3)) >> 1;
          v22 = v4 + 24 * v21;
          v23 = *(v11 + 16);
          if (*(v22 + 16) > v23)
          {
            v102 = *v11;
            do
            {
              v24 = v11;
              v11 = v22;
              v25 = *v22;
              *(v24 + 16) = *(v22 + 16);
              *v24 = v25;
              if (!v21)
              {
                break;
              }

              v21 = (v21 - 1) >> 1;
              v22 = v4 + 24 * v21;
            }

            while (*(v22 + 16) > v23);
            *v11 = v102;
            *(v11 + 16) = v23;
          }
        }
      }

      i = a1[16];
    }

    a1[16] = i - 24;
    *&v103 = sub_11C4328(a1, &v100);
    if (v103 <= a1[4])
    {
      sub_2D2348((a1 + 11), &v100, &v103, &v103);
    }

    v4 = a1[15];
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[3])
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v29 = a1[12];
      v30 = a1[11];
      if (v30 == v29)
      {
        break;
      }

      v31 = *v30;
      v101 = *(v30 + 16);
      v100 = v31;
      if (v29 - v30 >= 25)
      {
        v32 = 0;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
        v34 = *v30;
        v104 = *(v30 + 16);
        v103 = v34;
        v35 = v30;
        do
        {
          v37 = v35 + 24 * v32 + 24;
          v38 = (2 * v32) | 1;
          v39 = 2 * v32 + 2;
          if (v39 < v33)
          {
            v40 = *(v37 + 8);
            v41 = *(v37 + 32);
            v42 = v40 <= v41;
            v43 = v40 <= v41 ? 0 : 24;
            v37 += v43;
            if (!v42)
            {
              v38 = v39;
            }
          }

          v36 = *v37;
          *(v35 + 16) = *(v37 + 16);
          *v35 = v36;
          v35 = v37;
          v32 = v38;
        }

        while (v38 <= ((v33 - 2) >> 1));
        v44 = (v29 - 24);
        if (v37 == v44)
        {
          v55 = v103;
          *(v37 + 16) = v104;
          *v37 = v55;
        }

        else
        {
          v45 = *v44;
          *(v37 + 16) = *(v44 + 2);
          *v37 = v45;
          v46 = v103;
          *(v44 + 2) = v104;
          *v44 = v46;
          v47 = v37 - v30 + 24;
          if (v47 >= 25)
          {
            v48 = (-2 - 0x5555555555555555 * (v47 >> 3)) >> 1;
            v49 = v30 + 24 * v48;
            v50 = *(v37 + 8);
            if (*(v49 + 8) > v50)
            {
              v51 = *v37;
              v52 = *(v37 + 16);
              do
              {
                v53 = v37;
                v37 = v49;
                v54 = *v49;
                *(v53 + 16) = *(v49 + 16);
                *v53 = v54;
                if (!v48)
                {
                  break;
                }

                v48 = (v48 - 1) >> 1;
                v49 = v30 + 24 * v48;
              }

              while (*(v49 + 8) > v50);
              *v37 = v51;
              *(v37 + 8) = v50;
              *(v37 + 16) = v52;
            }
          }
        }

        v29 = a1[12];
      }

      a1[12] = v29 - 24;
      v56 = *(&v100 + 1);
      if (*(&v100 + 1) == v101)
      {
        v58 = a2[1];
        v57 = a2[2];
        if (v58 < v57)
        {
          *v58 = v100;
          v58[1] = v56;
          v28 = v58 + 2;
        }

        else
        {
          v59 = *a2;
          v60 = v58 - *a2;
          v61 = (v60 >> 4) + 1;
          if (v61 >> 60)
          {
            sub_1794();
          }

          v62 = v57 - v59;
          if (v62 >> 3 > v61)
          {
            v61 = v62 >> 3;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF0)
          {
            v63 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            if (!(v63 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v64 = (16 * (v60 >> 4));
          *v64 = v100;
          v64[1] = v56;
          v28 = v64 + 2;
          memcpy(0, v59, v60);
          *a2 = 0;
          a2[2] = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        a2[1] = v28;
        v27 = v101;
        if (a1[3] <= ((v28 - *a2) >> 4))
        {
          break;
        }
      }

      else
      {
        *&v103 = sub_11C4328(a1, &v100);
        sub_2D2348((a1 + 11), &v100, &v103, &v103);
        if (a1[3] <= ((a2[1] - *a2) >> 4))
        {
          break;
        }
      }
    }
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v65 = a1[11];
  for (j = a1[12]; v65 != j; j = a1[12])
  {
    if (*(v65 + 8) != v27)
    {
      break;
    }

    v68 = *v65;
    v101 = *(v65 + 16);
    v100 = v68;
    if (j - v65 >= 25)
    {
      v69 = 0;
      v70 = 0xAAAAAAAAAAAAAAABLL * ((j - v65) >> 3);
      v103 = *v65;
      v104 = *(v65 + 16);
      v71 = v65;
      do
      {
        v73 = v71 + 24 * v69 + 24;
        v74 = (2 * v69) | 1;
        v75 = 2 * v69 + 2;
        if (v75 < v70)
        {
          v76 = *(v73 + 8);
          v77 = *(v73 + 32);
          v78 = v76 <= v77;
          v79 = v76 <= v77 ? 0 : 24;
          v73 += v79;
          if (!v78)
          {
            v74 = v75;
          }
        }

        v72 = *v73;
        *(v71 + 16) = *(v73 + 16);
        *v71 = v72;
        v71 = v73;
        v69 = v74;
      }

      while (v74 <= ((v70 - 2) >> 1));
      v80 = (j - 24);
      if (v73 == v80)
      {
        v90 = v103;
        *(v73 + 16) = v104;
        *v73 = v90;
      }

      else
      {
        v81 = *v80;
        *(v73 + 16) = *(v80 + 2);
        *v73 = v81;
        *v80 = v103;
        *(v80 + 2) = v104;
        v82 = v73 - v65 + 24;
        if (v82 >= 25)
        {
          v83 = (-2 - 0x5555555555555555 * (v82 >> 3)) >> 1;
          v84 = v65 + 24 * v83;
          v85 = *(v73 + 8);
          if (*(v84 + 8) > v85)
          {
            v86 = *v73;
            v87 = *(v73 + 16);
            do
            {
              v88 = v73;
              v73 = v84;
              v89 = *v84;
              *(v88 + 16) = *(v84 + 16);
              *v88 = v89;
              if (!v83)
              {
                break;
              }

              v83 = (v83 - 1) >> 1;
              v84 = v65 + 24 * v83;
            }

            while (*(v84 + 8) > v85);
            *v73 = v86;
            *(v73 + 8) = v85;
            *(v73 + 16) = v87;
          }
        }
      }

      j = a1[12];
    }

    a1[12] = j - 24;
    v91 = *(&v100 + 1);
    if (*(&v100 + 1) == v101)
    {
      v93 = a2[1];
      v92 = a2[2];
      if (v93 < v92)
      {
        *v93 = v100;
        v93[1] = v91;
        v67 = v93 + 2;
      }

      else
      {
        v94 = *a2;
        v95 = v93 - *a2;
        v96 = (v95 >> 4) + 1;
        if (v96 >> 60)
        {
          sub_1794();
        }

        v97 = v92 - v94;
        if (v97 >> 3 > v96)
        {
          v96 = v97 >> 3;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF0)
        {
          v98 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          if (!(v98 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v99 = (16 * (v95 >> 4));
        *v99 = v100;
        v99[1] = v91;
        v67 = v99 + 2;
        memcpy(0, v94, v95);
        *a2 = 0;
        a2[2] = 0;
        if (v94)
        {
          operator delete(v94);
        }
      }

      a2[1] = v67;
    }

    else
    {
      *&v103 = sub_11C4328(a1, &v100);
      sub_2D2348((a1 + 11), &v100, &v103, &v103);
    }

    v65 = a1[11];
  }
}

void sub_11C3DA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_11C3DD8(uint64_t *a1, unsigned int a2)
{
  if (sub_57A90(a2) <= 0x1D)
  {
    v4 = sub_57A90(a2);
    v5 = sub_57A90(a2);
    if (v4 <= 0x1D && v5 >> 1 <= v4 >> 1)
    {
      sub_57A90(a2);
      operator new();
    }
  }

  v6 = sub_BA4870(*a1, a2, 1);
  if (v6)
  {
    v7 = &v6[-*v6];
    if (*v7 >= 7u)
    {
      v8 = *(v7 + 3);
      if (v8)
      {
        v9 = &v6[v8 + *&v6[v8]];
        v10 = &v9[-*v9];
        if (*v10 >= 5u)
        {
          v11 = *(v10 + 2);
          if (v11)
          {
            v12 = *&v9[v11 + *&v9[v11]];
            if (v12)
            {
              v13 = 0;
              while (1)
              {
                v36 = __PAIR64__(v13, a2);
                *&v39 = sub_11C44FC(*a1, __PAIR64__(v13, a2));
                *(&v39 + 1) = v15;
                v16 = sub_2D2764(a1, &v39);
                v37 = v17;
                v38 = v16;
                v18 = a1[6];
                if (v18 > v17)
                {
                  break;
                }

                if (v18 < v16)
                {
                  v14 = (a1 + 19);
                  goto LABEL_13;
                }

                v20 = a1[16];
                v19 = a1[17];
                if (v20 >= v19)
                {
                  v24 = a1[15];
                  v25 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v24) >> 3) + 1;
                  if (v25 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_1794();
                  }

                  v26 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v24) >> 3);
                  if (2 * v26 > v25)
                  {
                    v25 = 2 * v26;
                  }

                  if (v26 >= 0x555555555555555)
                  {
                    v27 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v27 = v25;
                  }

                  if (v27)
                  {
                    if (v27 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v28 = (8 * ((v20 - v24) >> 3));
                  *v28 = v36;
                  v28[1] = v16;
                  v28[2] = v17;
                  v21 = v28 + 3;
                  v29 = v28 - (v20 - v24);
                  memcpy(v29, v24, v20 - v24);
                  a1[15] = v29;
                  a1[16] = v21;
                  a1[17] = 0;
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  a1[16] = v21;
                  v22 = a1[15];
                  v23 = v21 - v22;
                  if (v21 - v22 < 25)
                  {
                    goto LABEL_14;
                  }

LABEL_33:
                  v30 = (-2 - 0x5555555555555555 * (v23 >> 3)) >> 1;
                  v31 = v22 + 24 * v30;
                  v32 = *(v21 - 1);
                  if (*(v31 + 16) > v32)
                  {
                    v33 = v21 - 3;
                    v39 = *(v21 - 3);
                    do
                    {
                      v34 = v33;
                      v33 = v31;
                      v35 = *v31;
                      v34[2] = *(v31 + 16);
                      *v34 = v35;
                      if (!v30)
                      {
                        break;
                      }

                      v30 = (v30 - 1) >> 1;
                      v31 = v22 + 24 * v30;
                    }

                    while (*(v31 + 16) > v32);
                    *v33 = v39;
                    v33[2] = v32;
                  }

                  goto LABEL_14;
                }

                *v20 = v36;
                v20[1] = v16;
                v20[2] = v17;
                v21 = v20 + 3;
                a1[16] = (v20 + 3);
                v22 = a1[15];
                v23 = v20 - v22 + 24;
                if (v23 >= 25)
                {
                  goto LABEL_33;
                }

LABEL_14:
                if (++v13 == v12)
                {
                  return;
                }
              }

              v14 = (a1 + 11);
LABEL_13:
              sub_2D2348(v14, &v36, &v38, &v37);
              goto LABEL_14;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_11C4328(uint64_t a1, unint64_t *a2)
{
  sub_11C4710(*a1, *a2, &__p);
  sub_2CCAE0(&__p, *(a1 + 8), *(a1 + 40), v22, v3, v4);
  v5 = v22[0] * 100.0;
  if (v22[0] * 100.0 >= 0.0)
  {
    v6 = v22[0] * 100.0;
    if (v5 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) + 1;
  }

  else
  {
    v6 = v22[0] * 100.0;
    if (v5 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v7 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
  }

  v6 = (v7 >> 1);
LABEL_7:
  if (v6 < 9.22337204e18)
  {
    if (v5 >= 0.0)
    {
      if (v5 >= 4.50359963e15)
      {
        goto LABEL_16;
      }

      v8 = (v5 + v5) + 1;
    }

    else
    {
      if (v5 <= -4.50359963e15)
      {
        goto LABEL_16;
      }

      v8 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
    }

    v5 = (v8 >> 1);
LABEL_16:
    v9 = v5;
    v10 = __p;
    if (!__p)
    {
      return v9;
    }

    goto LABEL_17;
  }

  v9 = 0x7FFFFFFFFFFFFFFELL;
  v10 = __p;
  if (!__p)
  {
    return v9;
  }

LABEL_17:
  v11 = v24;
  v12 = v10;
  if (v24 != v10)
  {
    v13 = v24;
    do
    {
      v16 = *(v13 - 3);
      v13 -= 3;
      v15 = v16;
      if (v16)
      {
        v17 = *(v11 - 2);
        v14 = v15;
        if (v17 != v15)
        {
          v18 = *(v11 - 2);
          do
          {
            v20 = *(v18 - 3);
            v18 -= 24;
            v19 = v20;
            if (v20)
            {
              *(v17 - 2) = v19;
              operator delete(v19);
            }

            v17 = v18;
          }

          while (v18 != v15);
          v14 = *v13;
        }

        *(v11 - 2) = v15;
        operator delete(v14);
      }

      v11 = v13;
    }

    while (v13 != v10);
    v12 = __p;
  }

  v24 = v10;
  operator delete(v12);
  return v9;
}

void sub_11C44E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

std::string::size_type sub_11C44FC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_BA4870(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 7u) || (v6 = *(v5 + 3)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
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

void sub_11C4690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_11C4710(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_BA4870(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 7u) || (v8 = *(v7 + 3)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
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

void sub_11C4874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

char *sub_11C48F4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_BA4870(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 7u) || (v6 = *(v5 + 3)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
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
  if (*v12 < 9u)
  {
    return 0;
  }

  v13 = *(v12 + 4);
  if (!v13)
  {
    return 0;
  }

  v14 = &v11[v13];
  v15 = *v14;
  v17 = &v14[v15 + 4];
  v16 = *&v14[v15];
  v29.__r_.__value_.__r.__words[0] = v17;
  v29.__r_.__value_.__l.__size_ = v16;
  v29.__r_.__value_.__r.__words[2] = 0xF424000000040;
  v30 = 257;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v18 = sub_4303F8(&v29, 0, 0);
  result = 0;
  if (v18)
  {
    return &v17[*v17];
  }

  return result;
}

void sub_11C4AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_11C4B38(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x1Bu)
  {
    v9 = *(v8 + 13);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_11C4C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_11C4CC4(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t sub_11C503C(uint64_t a1, void *a2)
{
  *a1 = a2;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  do
  {
    v6 = a1 + v5;
    *(v6 + 24) = 0;
    *(v6 + 48) = 0;
    *(v6 + 32) = 0;
    *(v6 + 56) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  *(a1 + 3864) = 0u;
  v7 = *a2;
  *(a1 + 3880) = -1;
  if (v7)
  {
    LOBYTE(v7) = sub_2D5658(v7);
  }

  *(a1 + 3884) = v7;
  return a1;
}

uint64_t **sub_11C50DC()
{
  result = __chkstk_darwin();
  if (*v2)
  {
    v3 = v2;
    v4 = result;
    v5 = (*result)[1];
    v150 = **result;
    v151 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_3603F0(v152, &v150);
    v6 = v151;
    if (v151 && !atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v87[0] = &unk_2290750;
    v87[1] = 0;
    v88 = 0u;
    v89 = 0;
    v90 = &unk_2290750;
    v91 = 0;
    v92 = 0u;
    v93 = 0;
    v94 = &unk_2290750;
    v95 = 0;
    v96 = 0u;
    v97 = 0;
    v98 = &unk_2290750;
    v99 = 0u;
    v101 = 0;
    v102 = &unk_2290750;
    v100 = 0;
    v104 = 0;
    v103 = 0u;
    v105 = 0;
    v106 = &unk_2290750;
    v109 = 0;
    v110 = &unk_2290750;
    v108 = 0;
    v107 = 0u;
    v111 = 0u;
    v112 = 0;
    v113 = 0;
    v114 = &unk_2290750;
    v115 = 0u;
    v117 = 0;
    v118 = &unk_2290750;
    v116 = 0;
    v119 = 0u;
    v120 = 0;
    v121 = 0;
    v122 = &unk_2290750;
    v123 = 0u;
    v125 = 0;
    v124 = 0;
    v129 = 0;
    v127 = 0u;
    v126 = &unk_2290750;
    v128 = 0;
    v130 = &unk_2290750;
    v133 = 0;
    v131 = 0u;
    v132 = 0;
    v134 = &unk_2290750;
    v137 = 0;
    v135 = 0u;
    v136 = 0;
    v138 = &unk_2290750;
    v141 = 0;
    v139 = 0u;
    v140 = 0;
    v142 = &unk_2290750;
    v145 = 0;
    v143 = 0u;
    v144 = 0;
    v146 = &unk_2290750;
    v149 = 0;
    v147 = 0u;
    v148 = 0;
    v7 = *v3;
    v8 = *(*v3 + 8);
    v78 = *(*v3 + 16);
    if (v8 != v78)
    {
      v85 = *(v7 + 544);
      v81 = v4;
      do
      {
        if (*v8 >= 0)
        {
          v9 = *v8;
        }

        else
        {
          v9 = -*v8;
        }

        v10 = sub_335D84(v152, v9);
        if (v10)
        {
          v11 = v10 > 0xFFFFFFFEFFFFFFFFLL;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v10 & 0xFFFF00000000;
        }

        if (v10 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v14 = *(v8 + 8);
          v154 = 0;
          v155 = 0;
          v156 = 0;
          LODWORD(v15) = *(v4 + 970);
          if (v15 != -1)
          {
            goto LABEL_40;
          }

          v16 = sub_101E790((v4 + 1), 1u, 1);
          if (!v16)
          {
LABEL_37:
            LODWORD(v15) = 1;
            v79 = v8;
            if (!v14)
            {
              goto LABEL_132;
            }

            goto LABEL_41;
          }

          v17 = &v16[-*v16];
          v18 = *v17;
          if (v18 < 0xB)
          {
            if (v18 < 9)
            {
              goto LABEL_37;
            }
          }

          else if (*(v17 + 5))
          {
            v15 = &v16[*(v17 + 5) + *&v16[*(v17 + 5)]];
            v19 = &v15[-*v15];
            if (*v19 >= 5u && (v20 = *(v19 + 2)) != 0)
            {
              LODWORD(v15) = v15[v20];
              v79 = v8;
              if (!v14)
              {
                goto LABEL_132;
              }
            }

            else
            {
              LODWORD(v15) = 0;
LABEL_40:
              v79 = v8;
              if (!v14)
              {
                goto LABEL_132;
              }
            }

LABEL_41:
            v86 = (v15 - 1);
            if (v15 == 1)
            {
              do
              {
                sub_11C5B00((v4 + 1), v12 | v13, 1, &v154);
                sub_11C5B00((v4 + 1), v12 | v13, 0, &v154);
                v14 &= v14 - 1;
              }

              while (v14);
              goto LABEL_132;
            }

            v82 = v13;
            v83 = v12;
LABEL_43:
            v24 = 0;
            v80 = v14;
            v25 = __clz(__rbit32(v14));
            v153 = 1;
LABEL_44:
            sub_11C5B00((v4 + 1), v12 | v13, *(&v153 + v24), &v154);
            v84 = v24;
            v26 = 0;
LABEL_45:
            v27 = 0;
            v28 = v154[++v26];
            v0 = v0 & 0xFFFF0000 | v25;
            v29 = (HIDWORD(v28) + 2654435769 + (v28 << 6) + (v28 >> 2)) ^ v28;
            v30 = (v25 - 1640531527 + (v29 << 6) + (v29 >> 2)) ^ v29;
            v31 = (v30 << 6) + 2654435769u + (v30 >> 2);
            v32 = v31 ^ v30;
            v33 = (v31 ^ ~v30) + ((v31 ^ v30) << 21);
            v34 = 21 * ((265 * (v33 ^ (v33 >> 24))) ^ ((265 * (v33 ^ (v33 >> 24))) >> 14));
            v35 = 2147483649u * (v34 ^ (v34 >> 28));
            v36 = &v87[6 * (((((v34 ^ (v34 >> 28)) >> 8) ^ ((-2147483647 * (v34 ^ (v34 >> 28))) >> 16)) ^ ((-2147483647 * (v34 ^ (v34 >> 28))) >> 24)) & 0xF)];
            v37 = v35 >> 7;
            v38 = v36[3];
            v39 = *v36;
            v40 = 0x101010101010101 * (v35 & 0x7F);
            for (i = v35 >> 7; ; i = v27 + v42)
            {
              v42 = i & v38;
              v43 = *(v39 + v42);
              v44 = ((v43 ^ v40) - 0x101010101010101) & ~(v43 ^ v40) & 0x8080808080808080;
              if (v44)
              {
                break;
              }

LABEL_53:
              if ((v43 & (~v43 << 6) & 0x8080808080808080) != 0)
              {
                goto LABEL_56;
              }

              v27 += 8;
            }

            while (1)
            {
              v45 = (v42 + (__clz(__rbit64(v44)) >> 3)) & v38;
              v46 = v36[1] + 12 * v45;
              if (*v46 == v28 && __PAIR64__(*(v46 + 8), *(v46 + 4)) == __PAIR64__(v25, HIDWORD(v28)) && !*(v46 + 9))
              {
                break;
              }

              v44 &= v44 - 1;
              if (!v44)
              {
                goto LABEL_53;
              }
            }

            if (v38 != v45)
            {
              goto LABEL_127;
            }

LABEL_56:
            for (j = 0; ; v37 = j + v48)
            {
              v48 = v37 & v38;
              v49 = *(v39 + v48);
              v50 = ((v49 ^ v40) - 0x101010101010101) & ~(v49 ^ v40) & 0x8080808080808080;
              if (v50)
              {
                break;
              }

LABEL_62:
              if ((v49 & (~v49 << 6) & 0x8080808080808080) != 0)
              {
                v52 = v36[1] + 12 * sub_11C5FEC(v36, v35);
                *v52 = v28;
                *(v52 + 8) = v0;
                goto LABEL_65;
              }

              j += 8;
            }

            while (1)
            {
              v51 = v36[1] + 12 * ((v48 + (__clz(__rbit64(v50)) >> 3)) & v38);
              if (*v51 == v28 && __PAIR64__(*(v51 + 8), *(v51 + 4)) == __PAIR64__(v25, HIDWORD(v28)) && !*(v51 + 9))
              {
                break;
              }

              v50 &= v50 - 1;
              if (!v50)
              {
                goto LABEL_62;
              }
            }

LABEL_65:
            v53 = 0;
            v54 = *(v7 + 696) - 1;
            v55 = -1;
            for (k = v32; ; k = v53 + v57)
            {
              v57 = k & v54;
              v58 = *(v7 + 720) + 16 * (k & v54);
              v59 = *v58;
              if (*(v7 + 704) == *v58 && *(v7 + 708) == *(v58 + 4) && *(v58 + 8) == *(v7 + 712) && *(v7 + 713) == *(v58 + 9))
              {
                if (v55 == -1)
                {
                  v60 = v57;
                }

                else
                {
                  v60 = v55;
                }

                goto LABEL_86;
              }

              if (*(v7 + 680) && *(v7 + 664) == v59 && *(v7 + 668) == *(v58 + 4) && *(v58 + 8) == *(v7 + 672) && *(v7 + 673) == *(v58 + 9))
              {
                if (v55 == -1)
                {
                  v55 = v57;
                }
              }

              else if (v59 == v28 && __PAIR64__(*(v58 + 8), *(v58 + 4)) == __PAIR64__(v25, HIDWORD(v28)) && !*(v58 + 9))
              {
                if (v57 != -1)
                {
                  goto LABEL_126;
                }

                v60 = -1;
LABEL_86:
                if (!sub_11C6638(v7 + 632, 1))
                {
                  v72 = *(v7 + 688);
                  v73 = *(v7 + 680);
                  if ((v72 - v73) < 0xFFFFFFFFFFFFFFFLL)
                  {
                    v74 = *(v7 + 720) + 16 * v60;
                    if (v73 && *(v7 + 664) == *v74 && *(v7 + 668) == *(v74 + 4) && *(v74 + 8) == *(v7 + 672) && *(v7 + 673) == *(v74 + 9))
                    {
                      *(v7 + 680) = v73 - 1;
LABEL_125:
                      *v74 = v28;
                      *(v74 + 8) = v0 | 0x7FFFFFFF00000000;
                      v58 = *(v7 + 720) + 16 * v60;
                      goto LABEL_126;
                    }

                    v75 = v72 + 1;
LABEL_124:
                    *(v7 + 688) = v75;
                    goto LABEL_125;
                  }

LABEL_139:
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "insert overflow");
                }

                v61 = 0;
                v62 = *(v7 + 696) - 1;
                v63 = *(v7 + 720);
                v64 = *(v7 + 680);
                v65 = *(v7 + 664);
                v66 = *(v7 + 668);
                v67 = *(v7 + 672);
                v68 = -1;
                v69 = *(v7 + 673);
                while (2)
                {
                  v70 = v32 & v62;
                  v58 = v63 + 16 * (v32 & v62);
                  v71 = *v58;
                  if (*(v7 + 704) == *v58 && *(v7 + 708) == *(v58 + 4) && *(v58 + 8) == *(v7 + 712) && *(v7 + 713) == *(v58 + 9))
                  {
                    if (v68 == -1)
                    {
                      v60 = v32 & v62;
                    }

                    else
                    {
                      v60 = v68;
                    }

LABEL_116:
                    v76 = *(v7 + 688);
                    if ((v76 - v64) < 0xFFFFFFFFFFFFFFFLL)
                    {
                      v74 = v63 + 16 * v60;
                      if (v64 && v65 == *v74 && v66 == *(v74 + 4) && *(v74 + 8) == v67 && v69 == *(v74 + 9))
                      {
                        *(v7 + 680) = v64 - 1;
                        goto LABEL_125;
                      }

                      v75 = v76 + 1;
                      goto LABEL_124;
                    }

                    goto LABEL_139;
                  }

                  if (v64 && v65 == v71 && v66 == *(v58 + 4) && *(v58 + 8) == v67 && v69 == *(v58 + 9))
                  {
                    if (v68 == -1)
                    {
                      v68 = v32 & v62;
                    }

LABEL_90:
                    v32 = ++v61 + v70;
                    continue;
                  }

                  break;
                }

                if (v71 != v28 || __PAIR64__(*(v58 + 8), *(v58 + 4)) != __PAIR64__(v25, HIDWORD(v28)) || *(v58 + 9))
                {
                  goto LABEL_90;
                }

                if (v70 == -1)
                {
                  v60 = -1;
                  goto LABEL_116;
                }

LABEL_126:
                *(v58 + 12) = v85;
LABEL_127:
                if (v26 == v86)
                {
                  v12 = v83;
                  v24 = v84 + 1;
                  v4 = v81;
                  v13 = v82;
                  if (v84 == 1)
                  {
                    v14 = v80 & ~(1 << v25);
                    if (!v14)
                    {
                      goto LABEL_132;
                    }

                    goto LABEL_43;
                  }

                  goto LABEL_44;
                }

                goto LABEL_45;
              }

              ++v53;
            }
          }

          v21 = *(v17 + 4);
          if (!v21)
          {
            goto LABEL_37;
          }

          v22 = sub_101E640(&v16[v21 + *&v16[v21]], 0);
          v23 = (v22 - *v22);
          if (*v23 < 5u)
          {
            LODWORD(v15) = 0;
          }

          else
          {
            v15 = v23[2];
            if (v15)
            {
              LODWORD(v15) = v15[v22];
            }
          }

          *(v4 + 970) = v15;
          v79 = v8;
          if (v14)
          {
            goto LABEL_41;
          }

LABEL_132:
          if (v154)
          {
            v155 = v154;
            operator delete(v154);
          }

          v8 = v79;
        }

        v8 += 16;
      }

      while (v8 != v78);
    }

    sub_360988(v87);
    return sub_360B9C(v152);
  }

  return result;
}

void sub_11C5A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  sub_360988(va);
  sub_360B9C(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void sub_11C5B00(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  a4[1] = *a4;
  v8 = sub_101E790(a1, a2, 1);
  if (!v8)
  {
    return;
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
      goto LABEL_13;
    }
  }

  v20 = v19[2];
  if (v20)
  {
    v21 = (v18 + v20 + *(v18 + v20));
    goto LABEL_14;
  }

LABEL_13:
  v21 = 0;
LABEL_14:
  v22 = a4[1];
  v23 = *a4;
  if ((*v21 + 1) > ((a4[2] - *a4) >> 3))
  {
    operator new();
  }

  v24 = (v22 - v23) >> 3;
  if (v22 == v23)
  {
    sub_11C5E24(a4, 1 - v24);
    v25 = *v21;
    if (!v25)
    {
      return;
    }

    goto LABEL_22;
  }

  if (v24 >= 2)
  {
    a4[1] = v23 + 8;
  }

  v25 = *v21;
  if (v25)
  {
LABEL_22:
    v26 = &v21[2 * v25 + 1];
    for (i = v21 + 1; i != v26; i += 2)
    {
      v30 = *i;
      v29 = i[1];
      if (*(a1 + 3876) != 1 || (v31 = sub_101E790(a1, *i, 1)) != 0 && (v32 = &v31[-*v31], *v32 >= 9u) && (v33 = *(v32 + 4)) != 0 && *&v31[v33 + *&v31[v33]])
      {
        v34 = v29 << 32;
        v36 = a4[1];
        v35 = a4[2];
        if (v36 >= v35)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v30 = 0;
        v34 = 0xFFFFFFFF00000000;
        v36 = a4[1];
        v35 = a4[2];
        if (v36 >= v35)
        {
LABEL_33:
          v37 = *a4;
          v38 = v36 - *a4;
          v39 = (v38 >> 3) + 1;
          if (v39 >> 61)
          {
            sub_1794();
          }

          v40 = v35 - v37;
          if (v40 >> 2 > v39)
          {
            v39 = v40 >> 2;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF8)
          {
            v41 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            if (!(v41 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v42 = (8 * (v38 >> 3));
          *v42 = v30 | v34;
          v28 = v42 + 1;
          memcpy(0, v37, v38);
          *a4 = 0;
          a4[1] = v28;
          a4[2] = 0;
          if (v37)
          {
            operator delete(v37);
          }

          goto LABEL_24;
        }
      }

      *v36 = v30 | v34;
      v28 = v36 + 1;
LABEL_24:
      a4[1] = v28;
    }
  }
}

void sub_11C5E24(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v9 = &v4[a2];
      v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v10 < 7)
      {
        goto LABEL_33;
      }

      v11 = v10 + 1;
      v12 = &v4[v11 & 0x3FFFFFFFFFFFFFF8];
      v13 = v4 + 4;
      *&v14 = 0xFFFFFFFF00000000;
      *(&v14 + 1) = 0xFFFFFFFF00000000;
      v15 = v11 & 0x3FFFFFFFFFFFFFF8;
      do
      {
        *(v13 - 2) = v14;
        *(v13 - 1) = v14;
        *v13 = v14;
        v13[1] = v14;
        v13 += 4;
        v15 -= 8;
      }

      while (v15);
      v4 = v12;
      if (v11 != (v11 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v4++ = 0xFFFFFFFF00000000;
        }

        while (v4 != v9);
      }

      v4 = v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    v6 = v5 + a2;
    if ((v5 + a2) >> 61)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 2 > v6)
    {
      v6 = v7 >> 2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v16 = 8 * v5;
    v17 = 8 * v5 + 8 * a2;
    v18 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v19 = (8 * v5);
    if (v18 < 7)
    {
      goto LABEL_34;
    }

    v20 = v18 + 1;
    v19 = (v16 + 8 * (v20 & 0x3FFFFFFFFFFFFFF8));
    v21 = (v16 + 32);
    *&v22 = 0xFFFFFFFF00000000;
    *(&v22 + 1) = 0xFFFFFFFF00000000;
    v23 = v20 & 0x3FFFFFFFFFFFFFF8;
    do
    {
      *(v21 - 2) = v22;
      *(v21 - 1) = v22;
      *v21 = v22;
      v21[1] = v22;
      v21 += 4;
      v23 -= 8;
    }

    while (v23);
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v19++ = 0xFFFFFFFF00000000;
      }

      while (v19 != v17);
    }

    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    v26 = v16 - v25;
    memcpy((v16 - v25), *a1, v25);
    *a1 = v26;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }
}

unint64_t sub_11C5FEC(void *a1, unint64_t a2)
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
      sub_11C60E4(a1);
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

uint64_t sub_11C60E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_11C6114();
  }

  return sub_11C6310(a1);
}

uint64_t sub_11C6310(uint64_t result)
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
        v18 = (*(result + 8) + 12 * i);
        v19 = (v18[1] + 2654435769 + (*v18 << 6) + (*v18 >> 2)) ^ *v18;
        v20 = (*(v18 + 8) + 2654435769 + (v19 << 6) + (v19 >> 2)) ^ v19;
        v21 = *(v18 + 9) + 2654435769 + (v20 << 6) + (v20 >> 2);
        v22 = (v21 ^ ~v20) + ((v21 ^ v20) << 21);
        v23 = 21 * ((265 * (v22 ^ (v22 >> 24))) ^ ((265 * (v22 ^ (v22 >> 24))) >> 14));
        v24 = 2147483649u * (v23 ^ (v23 >> 28));
        v25 = v13 & (v24 >> 7);
        v26 = *(v17->i64 + v25) & (~*(v17->i64 + v25) << 7) & 0x8080808080808080;
        if (v26)
        {
          v15 = v13 & (v24 >> 7);
        }

        else
        {
          v27 = 8;
          v15 = v13 & (v24 >> 7);
          do
          {
            v15 = (v15 + v27) & v13;
            v27 += 8;
            v26 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v26);
        }

        v16 = (v15 + (__clz(__rbit64(v26)) >> 3)) & v13;
        if ((((v16 - v25) ^ (i - v25)) & v13) > 7)
        {
          v28 = v17->u8[v16];
          v17->i8[v16] = v24 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v24 & 0x7F;
          v29 = *(result + 8);
          if (v28 == 128)
          {
            v30 = v29 + 12 * v16;
            v31 = (v29 + 12 * i);
            v32 = *v31;
            *(v30 + 8) = *(v31 + 2);
            *v30 = v32;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v33 = (v29 + 12 * i);
            v34 = *v33;
            v35 = *(v33 + 2);
            v36 = 12 * v16;
            v37 = (v29 + v36);
            v38 = *(v37 + 2);
            *v33 = *v37;
            *(v33 + 2) = v38;
            v39 = *(result + 8) + v36;
            *v39 = v34;
            *(v39 + 8) = v35;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v24 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v24 & 0x7F;
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
  }

  else
  {
    v42 = 0;
  }

  *(result + 40) = v42 - *(result + 16);
  return result;
}

uint64_t sub_11C6638(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_11C692C(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 64);
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
      v11 = *(a1 + 48);
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

      sub_361230(&v28, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v29;
      *a1 = v28;
      *(a1 + 16) = v18;
      v28 = v17;
      v29 = v16;
      v36 = *(a1 + 32);
      v19 = v36;
      v37 = *(a1 + 40);
      v20 = v37;
      *(a1 + 32) = v30;
      *(a1 + 40) = v31;
      v30 = v19;
      v31 = v20;
      v21 = *(a1 + 48);
      *(a1 + 48) = v32;
      v32 = v21;
      v22 = *(a1 + 64);
      v23 = v33;
      *(a1 + 64) = v33;
      v33 = v22;
      v24 = *(a1 + 80);
      v25 = *(a1 + 84);
      *&v16 = *(a1 + 72);
      *(a1 + 72) = v34;
      *&v34 = v16;
      *(&v34 + 1) = __PAIR64__(v25, v24);
      v26 = *(a1 + 88);
      *(a1 + 88) = v35;
      v35 = v26;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v23)));
      *(a1 + 24) = 0;
      v28 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v29, v22)));
      BYTE8(v29) = 0;
      if (v26)
      {
        free(v26);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_11C692C(uint64_t a1)
{
  v2 = *(a1 + 56) - *(a1 + 48);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 64), v5 < 0x21))
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
    sub_361230(&v20, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v21;
    *a1 = v20;
    *(a1 + 16) = v10;
    v20 = v9;
    v21 = v8;
    v28 = *(a1 + 32);
    v11 = v28;
    v29 = *(a1 + 40);
    v12 = v29;
    *(a1 + 32) = v22;
    *(a1 + 40) = v23;
    v22 = v11;
    v23 = v12;
    v13 = *(a1 + 48);
    *(a1 + 48) = v24;
    v24 = v13;
    v14 = *(a1 + 64);
    v15 = v25;
    *(a1 + 64) = v25;
    v25 = v14;
    v16 = *(a1 + 80);
    v17 = *(a1 + 84);
    *&v8 = *(a1 + 72);
    *(a1 + 72) = v26;
    *&v26 = v8;
    *(&v26 + 1) = __PAIR64__(v17, v16);
    v18 = *(a1 + 88);
    *(a1 + 88) = v27;
    v27 = v18;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v15)));
    *(a1 + 24) = 0;
    v20 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v21, v14)));
    BYTE8(v21) = 0;
    if (v18)
    {
      free(v18);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_11C6A8C(uint64_t a1, __int128 *a2)
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

  v7 = *(a2 + 9);
  *(a1 + 80) = *(a2 + 20);
  *(a1 + 72) = v7;
  operator new();
}

void sub_11C6C64(_Unwind_Exception *exception_object)
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

void sub_11C6CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_11CAF6C(v32);
  sub_15DC140(v33 + 56);
  sub_15D9814(&a32);
  sub_15DC140(&a10);
  sub_15D9814(&a25);
  operator delete();
}

uint64_t sub_11C6D2C(uint64_t a1)
{
  std::mutex::~mutex((a1 + 112));
  v2 = *(a1 + 104);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        sub_15DC140(v4 + 9);
        sub_15D9814(v4 + 2);
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *v3;
    *v3 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    operator delete();
  }

  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_16;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_16:
  operator delete(*a1);
  return a1;
}

void sub_11C6E60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_7E9A4(v56);
  std::mutex::lock((a1 + 112));
  sub_15D8B44(v50, 0, 0);
  v8 = *(a2 + 48);
  v52 |= 1u;
  v9 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
  if (v51)
  {
    v9 = *v9;
  }

  sub_194EA1C(&v53, (v8 & 0xFFFFFFFFFFFFFFFELL), v9);
  v54 = *(a2 + 56);
  v10 = *(a2 + 60);
  v52 |= 6u;
  v55 = v10;
  v11 = *(a2 + 32);
  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v39);
    sub_4A5C(&v39, "Processing fare request with ", 29);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " routes (", 9);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, " cached).", 9);
    if ((v49 & 0x10) != 0)
    {
      v15 = v48;
      if (v48 < v45)
      {
        v48 = v45;
        v15 = v45;
      }

      v16 = v44;
      v14 = v15 - v44;
      if (v15 - v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if ((v49 & 8) == 0)
      {
        v14 = 0;
        v35 = 0;
LABEL_18:
        __dst[v14] = 0;
        sub_7E854(__dst, 2u);
        if (v35 < 0)
        {
          operator delete(*__dst);
        }

        if (v47 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v41);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_23;
      }

      v16 = v42;
      v14 = v43 - v42;
      if ((v43 - v42) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_41:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v35 = v14;
    if (v14)
    {
      memmove(__dst, v16, v14);
    }

    goto LABEL_18;
  }

LABEL_23:
  v35 = 19;
  strcpy(__dst, "FareRoutesRequested");
  sub_2C0888(&v39);
  nullsub_1(9);
  sub_2C1D4C(&v39);
  if (v35 < 0)
  {
    operator delete(*__dst);
  }

  v35 = 16;
  strcpy(__dst, "FareRoutesCached");
  sub_2C0888(&v39);
  nullsub_1(9);
  sub_2C1D4C(&v39);
  if (v35 < 0)
  {
    operator delete(*__dst);
  }

  sub_11C7620(a1, v50, a3, __dst);
  sub_15DB34C(a4, 0, 0);
  v17 = *(a2 + 32);
  if (v17 >= 1)
  {
    v18 = 8;
    v19 = 0;
    do
    {
      v20 = *(*(a2 + 40) + v18);
      v21 = *(a4 + 40);
      if (v21 && (v22 = *(a4 + 32), v22 < *v21))
      {
        *(a4 + 32) = v22 + 1;
        v23 = *&v21[2 * v22 + 2];
        v24 = *v19;
        if (v24 == -1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = sub_15E0F18(*(a4 + 24));
        v23 = sub_19593CC(a4 + 24, v26);
        v24 = *v19;
        if (v24 == -1)
        {
LABEL_33:
          v25 = sub_11CB114(*(a1 + 88), v20);
          if (!v25)
          {
            sub_49EC("unordered_map::at: key not found");
          }

          sub_15DCD50(v23, (v25 + 9));
          goto LABEL_29;
        }
      }

      sub_15DCD50(v23, *(v36 + 8 * v24 + 8));
      v27 = *(a1 + 88);
      v39 = v20;
      v28 = sub_11CB254(v27, v20);
      sub_15DCD50((v28 + 9), v23);
LABEL_29:
      ++v19;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v29 = *(a4 + 16);
  *(a4 + 56) = v38;
  v30 = v37;
  *(a4 + 16) = v29 | 3;
  v31 = *(a4 + 8);
  v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
  if (v31)
  {
    v32 = *v32;
  }

  sub_194EA1C((a4 + 48), (v30 & 0xFFFFFFFFFFFFFFFELL), v32);
  strcpy(v33, "Runtime.Total");
  sub_7EA60(v56);
  sub_2C0888(&v39);
  nullsub_1(9);
  sub_2C1D4C(&v39);
  sub_15DB5A8(__dst);
  sub_15D8C38(v50);
  std::mutex::unlock((a1 + 112));
}

void sub_11C74FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a28);
  if (v29)
  {
    operator delete(v29);
  }

  sub_15D8C38(v30 - 192);
  std::mutex::unlock((v28 + 112));
  _Unwind_Resume(a1);
}

uint64_t sub_11C7620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 32);
  if (!v7)
  {
    v7 = 0;
LABEL_35:
    v32 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL);

    return sub_11C925C(v32, v7, a4);
  }

  v8 = *(a2 + 40);
  v9 = (v8 + 8);
  if (!v8)
  {
    v9 = 0;
  }

  v10 = 0;
  v11 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v15 = v9;
LABEL_11:
    v18 = &v9[v7];
    do
    {
      v19 = *v15++;
      v10 += *(v19 + 32);
    }

    while (v15 != v18);
    goto LABEL_13;
  }

  v12 = 0;
  v13 = v11 + 1;
  v14 = (v11 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v15 = &v9[v14];
  v16 = v9 + 1;
  v17 = v14;
  do
  {
    v10 += *(*(v16 - 1) + 32);
    v12 += *(*v16 + 32);
    v16 += 2;
    v17 -= 2;
  }

  while (v17);
  v10 += v12;
  if (v13 != v14)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (!v10)
  {
    goto LABEL_35;
  }

  sub_11C93DC(a1, a2, a3, v128);
  if ((v133 & 1) == 0)
  {
    if (!sub_7E7E4(2u))
    {
LABEL_75:
      result = sub_11C925C((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), *(a2 + 32), a4);
      goto LABEL_252;
    }

    sub_19594F8(&__p[3]);
    sub_4A5C(&__p[3], "Generating empty fare route responses for ", 42);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, " fare routes.", 13);
    if ((v126 & 0x10) != 0)
    {
      v51 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v51 = v122;
      }

      v52 = v121;
      v35 = v51 - v121;
      if (v51 - v121 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v35 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_70:
        *(__p + v35) = 0;
        sub_7E854(__p, 2u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        std::locale::~locale(&v118);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_75;
      }

      v52 = v119[0];
      v35 = v120 - v119[0];
      if (v120 - v119[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_77:
        sub_3244();
      }
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v35;
    if (v35)
    {
      memmove(__p, v52, v35);
    }

    goto LABEL_70;
  }

  v20 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v21 = v131 & 0xFFFFFFFFFFFFFFFELL;
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = *(v20 + 23);
  }

  else
  {
    v23 = *(v20 + 8);
  }

  v24 = *(v21 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(v21 + 8);
  }

  if (v23 != v24 || (v22 >= 0 ? (v26 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL)) : (v26 = *v20), v25 >= 0 ? (v27 = (v131 & 0xFFFFFFFFFFFFFFFELL)) : (v27 = *v21), memcmp(v26, v27, v23)))
  {
    operator new();
  }

  if (v132 != 1)
  {
    v36 = sub_15D84D0(v132);
    if (!sub_7E7E4(1u))
    {
      goto LABEL_96;
    }

    sub_19594F8(&__p[3]);
    v37 = sub_4A5C(&__p[3], "The external fare service failed with a fare response status of ", 64);
    v38 = *(v36 + 23);
    if (v38 >= 0)
    {
      v39 = v36;
    }

    else
    {
      v39 = *v36;
    }

    if (v38 >= 0)
    {
      v40 = *(v36 + 23);
    }

    else
    {
      v40 = v36[1];
    }

    v41 = sub_4A5C(v37, v39, v40);
    v42 = sub_4A5C(v41, " (precache: ", 12);
    v43 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(v43 + 23);
    if (v44 >= 0)
    {
      v45 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v45 = *v43;
    }

    if (v44 >= 0)
    {
      v46 = *(v43 + 23);
    }

    else
    {
      v46 = *(v43 + 8);
    }

    v47 = sub_4A5C(v42, v45, v46);
    sub_4A5C(v47, ").", 2);
    if ((v126 & 0x10) != 0)
    {
      v53 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v53 = v122;
      }

      v54 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v48 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_91:
        *(__p + v48) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        std::locale::~locale(&v118);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_96:
        if (*(v36 + 23) >= 0)
        {
          v58 = *(v36 + 23);
        }

        else
        {
          v58 = v36[1];
        }

        if (v58 + 26 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v58 + 26 > 0x16)
          {
            operator new();
          }

          qmemcpy(__p, "Error.FareResponse.Status.", 26);
          if (*(v36 + 23) >= 0)
          {
            v59 = v36;
          }

          else
          {
            v59 = *v36;
          }

          memmove(&__p[3] + 2, v59, v58);
          *(&__p[3] + v58 + 2) = 0;
          sub_2C0888(&__p[3]);
          nullsub_1(9);
          sub_2C1D4C(&__p[3]);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          operator new();
        }

        sub_3244();
      }

      v54 = v119;
      v53 = v120;
    }

    v57 = *v54;
    v48 = v53 - *v54;
    if (v48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v48 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v53 - *v54;
    if (v48)
    {
      memmove(__p, v57, v48);
    }

    goto LABEL_91;
  }

  if (v129 > *(a2 + 32))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_139;
    }

    sub_19594F8(&__p[3]);
    sub_4A5C(&__p[3], "Requested ", 10);
    v28 = std::ostream::operator<<();
    sub_4A5C(v28, " fare route responses from the fare service but received ", 57);
    v29 = std::ostream::operator<<();
    sub_4A5C(v29, ". Ignoring ", 11);
    v30 = std::ostream::operator<<();
    sub_4A5C(v30, " fare routes.", 13);
    if ((v126 & 0x10) != 0)
    {
      v60 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v60 = v122;
      }

      v61 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v31 = 0;
        HIBYTE(__p[2]) = 0;
LABEL_134:
        *(__p + v31) = 0;
        sub_7E854(__p, 1u);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        if (v124 < 0)
        {
          operator delete(v123);
        }

        std::locale::~locale(&v118);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_139:
        operator new();
      }

      v61 = v119;
      v60 = v120;
    }

    v66 = *v61;
    v31 = v60 - *v61;
    if (v31 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v60 - *v61;
    if (v31)
    {
      memmove(__p, v66, v31);
    }

    goto LABEL_134;
  }

  if (sub_7E7E4(2u))
  {
    sub_19594F8(&__p[3]);
    sub_4A5C(&__p[3], "Successfully received ", 22);
    v49 = std::ostream::operator<<();
    sub_4A5C(v49, " fare route responses from the fare service.", 44);
    if ((v126 & 0x10) != 0)
    {
      v55 = v125;
      if (v125 < v122)
      {
        v125 = v122;
        v55 = v122;
      }

      v56 = &v121;
    }

    else
    {
      if ((v126 & 8) == 0)
      {
        v50 = 0;
        HIBYTE(__p[2]) = 0;
        goto LABEL_118;
      }

      v56 = v119;
      v55 = v120;
    }

    v62 = *v56;
    v50 = v55 - *v56;
    if (v50 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v50 >= 0x17)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v55 - *v56;
    if (v50)
    {
      memmove(__p, v62, v50);
    }

LABEL_118:
    *(__p + v50) = 0;
    sub_7E854(__p, 2u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (v124 < 0)
    {
      operator delete(v123);
    }

    std::locale::~locale(&v118);
    std::ostream::~ostream();
    std::ios::~ios();
    v63 = v129;
    v64 = *(a2 + 32);
    if (v64 >= v129)
    {
      v65 = v129;
    }

    else
    {
      v65 = *(a2 + 32);
    }

    if (v65 < 1)
    {
LABEL_230:
      if (v63 < v64)
      {
        goto LABEL_231;
      }

      goto LABEL_251;
    }

    goto LABEL_144;
  }

  v63 = v129;
  v64 = *(a2 + 32);
  if (v64 >= v129)
  {
    v65 = v129;
  }

  else
  {
    v65 = *(a2 + 32);
  }

  if (v65 < 1)
  {
    goto LABEL_230;
  }

LABEL_144:
  v115 = -v65;
  v67 = 1;
  do
  {
    v68 = *(*(a2 + 40) + 8 * v67);
    v69 = *(v130 + 8 * v67);
    v70 = *(v69 + 112);
    if (v70 == 1)
    {
      goto LABEL_196;
    }

    v71 = sub_15D85B8(v70);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__p[3]);
      sub_4A5C(&__p[3], "Fare route response ", 20);
      v72 = std::ostream::operator<<();
      sub_4A5C(v72, " of ", 4);
      v73 = std::ostream::operator<<();
      v74 = sub_4A5C(v73, " has status ", 12);
      v75 = *(v71 + 23);
      if (v75 >= 0)
      {
        v76 = v71;
      }

      else
      {
        v76 = *v71;
      }

      if (v75 >= 0)
      {
        v77 = *(v71 + 23);
      }

      else
      {
        v77 = v71[1];
      }

      v78 = sub_4A5C(v74, v76, v77);
      v79 = sub_4A5C(v78, " (request precache: ", 20);
      v80 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v81 = *(v80 + 23);
      if (v81 >= 0)
      {
        v82 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v82 = *v80;
      }

      if (v81 >= 0)
      {
        v83 = *(v80 + 23);
      }

      else
      {
        v83 = *(v80 + 8);
      }

      v84 = sub_4A5C(v79, v82, v83);
      v85 = sub_4A5C(v84, "; response precache: ", 21);
      v86 = v131 & 0xFFFFFFFFFFFFFFFELL;
      v87 = *((v131 & 0xFFFFFFFFFFFFFFFELL) + 23);
      if (v87 >= 0)
      {
        v88 = v131 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v88 = *v86;
      }

      if (v87 >= 0)
      {
        v89 = *(v86 + 23);
      }

      else
      {
        v89 = *(v86 + 8);
      }

      v90 = sub_4A5C(v85, v88, v89);
      sub_4A5C(v90, "). Using empty fare route instead.", 34);
      if ((v126 & 0x10) != 0)
      {
        v92 = v125;
        v93 = &v121;
        if (v125 < v122)
        {
          v125 = v122;
          v92 = v122;
          v93 = &v121;
        }
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v91 = 0;
          HIBYTE(__p[2]) = 0;
LABEL_178:
          *(__p + v91) = 0;
          sub_7E854(__p, 1u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[3] = v114;
          *(&__p[3] + *(v114 - 3)) = v113;
          if (v124 < 0)
          {
            operator delete(v123);
          }

          std::locale::~locale(&v118);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_183;
        }

        v92 = v120;
        v93 = v119;
      }

      v94 = *v93;
      v91 = v92 - *v93;
      if (v91 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v91 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v92 - *v93;
      if (v91)
      {
        memmove(__p, v94, v91);
      }

      goto LABEL_178;
    }

LABEL_183:
    sub_15DBDD8(&__p[3], 0, 0);
    LODWORD(v118.__locale_) |= 1u;
    v127 = 0;
    sub_15DCD50(v69, &__p[3]);
    sub_15DC140(&__p[3]);
    if (*(v71 + 23) >= 0)
    {
      v95 = *(v71 + 23);
    }

    else
    {
      v95 = v71[1];
    }

    if (v95 + 23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v95 < 0xFFFFFFFFFFFFFFE9)
    {
      operator new();
    }

    HIBYTE(__p[2]) = v95 + 23;
    qmemcpy(__p, "Error.FareRoute.Status.", 23);
    if (*(v71 + 23) >= 0)
    {
      v96 = v71;
    }

    else
    {
      v96 = *v71;
    }

    memmove(&__p[2] + 7, v96, v95);
    *(&__p[2] + v95 + 7) = 0;
    sub_2C0888(&__p[3]);
    nullsub_1(9);
    sub_2C1D4C(&__p[3]);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    strcpy(__p, "Error.FareRoute.Status");
    HIBYTE(__p[2]) = 22;
    sub_2C0888(&__p[3]);
    nullsub_1(9);
    sub_2C1D4C(&__p[3]);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_196:
    if (!sub_11CBB54(v68, v69))
    {
      if (!sub_7E7E4(1u))
      {
        goto LABEL_215;
      }

      sub_19594F8(&__p[3]);
      sub_4A5C(&__p[3], "Fare route response ", 20);
      v97 = std::ostream::operator<<();
      sub_4A5C(v97, " of ", 4);
      v98 = std::ostream::operator<<();
      sub_4A5C(v98, " is inconsistent. Using empty fare route instead.", 49);
      if ((v126 & 0x10) != 0)
      {
        v100 = v125;
        v101 = &v121;
        if (v125 < v122)
        {
          v125 = v122;
          v100 = v122;
          v101 = &v121;
        }
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v99 = 0;
          HIBYTE(__p[2]) = 0;
LABEL_210:
          *(__p + v99) = 0;
          sub_7E854(__p, 1u);
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          __p[3] = v114;
          *(&__p[3] + *(v114 - 3)) = v113;
          if (v124 < 0)
          {
            operator delete(v123);
          }

          std::locale::~locale(&v118);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_215:
          sub_15DBDD8(&__p[3], 0, 0);
          LODWORD(v118.__locale_) |= 1u;
          v127 = 0;
          sub_15DCD50(v69, &__p[3]);
          sub_15DC140(&__p[3]);
          operator new();
        }

        v100 = v120;
        v101 = v119;
      }

      v102 = *v101;
      v99 = v100 - *v101;
      if (v99 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v99 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v100 - *v101;
      if (v99)
      {
        memmove(__p, v102, v99);
      }

      goto LABEL_210;
    }

    if (*(v69 + 112) == 1)
    {
      v103 = sub_15D85B8(1);
      if (*(v103 + 23) >= 0)
      {
        v104 = *(v103 + 23);
      }

      else
      {
        v104 = v103[1];
      }

      if (v104 + 23 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v104 < 0xFFFFFFFFFFFFFFE9)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v104 + 23;
      qmemcpy(__p, "Error.FareRoute.Status.", 23);
      if (*(v103 + 23) >= 0)
      {
        v105 = v103;
      }

      else
      {
        v105 = *v103;
      }

      memmove(&__p[2] + 7, v105, v104);
      *(&__p[2] + v104 + 7) = 0;
      sub_2C0888(&__p[3]);
      nullsub_1(9);
      sub_2C1D4C(&__p[3]);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    ++v67;
  }

  while (v115 + v67 != 1);
  if (v129 < *(a2 + 32))
  {
LABEL_231:
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&__p[3]);
      sub_4A5C(&__p[3], "Requested ", 10);
      v106 = std::ostream::operator<<();
      sub_4A5C(v106, " fare route responses from the fare service but only received ", 62);
      v107 = std::ostream::operator<<();
      sub_4A5C(v107, ". Generating empty fare route responses for ", 44);
      v108 = std::ostream::operator<<();
      sub_4A5C(v108, " missing fare routes.", 21);
      if ((v126 & 0x10) != 0)
      {
        v110 = v125;
        if (v125 < v122)
        {
          v125 = v122;
          v110 = v122;
        }

        v111 = &v121;
      }

      else
      {
        if ((v126 & 8) == 0)
        {
          v109 = 0;
          HIBYTE(__p[2]) = 0;
          goto LABEL_245;
        }

        v111 = v119;
        v110 = v120;
      }

      v112 = *v111;
      v109 = v110 - *v111;
      if (v109 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v109 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__p[2]) = v110 - *v111;
      if (v109)
      {
        memmove(__p, v112, v109);
      }

LABEL_245:
      *(__p + v109) = 0;
      sub_7E854(__p, 1u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      if (v124 < 0)
      {
        operator delete(v123);
      }

      std::locale::~locale(&v118);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    operator new();
  }

LABEL_251:
  result = sub_15DB4FC(a4, v128);
LABEL_252:
  if (v133 == 1)
  {
    return sub_15DB5A8(v128);
  }

  return result;
}

void sub_11C9084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a27);
  if (*(v27 - 96) == 1)
  {
    sub_15DB5A8(v27 - 160);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_11C925C@<X0>(__int128 *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_15DB34C(a3, 0, 0);
  *(a3 + 16) |= 1u;
  v6 = *(a3 + 8);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if (v6)
  {
    v7 = *v7;
  }

  sub_194EA1C((a3 + 48), a1, v7);
  *(a3 + 16) |= 2u;
  *(a3 + 56) = 0;
  while (1)
  {
    v8 = *(a3 + 32);
    result = sub_A0AF10(a2);
    if (v8 >= result)
    {
      break;
    }

    v10 = *(a3 + 40);
    if (v10 && (v11 = *(a3 + 32), v11 < *v10))
    {
      *(a3 + 32) = v11 + 1;
      v12 = *&v10[2 * v11 + 2];
    }

    else
    {
      v13 = sub_15E0F18(*(a3 + 24));
      v12 = sub_19593CC(a3 + 24, v13);
    }

    sub_15DBDD8(v14, 0, 0);
    v15 |= 1u;
    v16 = 0;
    sub_15DCD50(v12, v14);
    sub_15DC140(v14);
  }

  return result;
}

void sub_11C9384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_15DC140(va);
  sub_15DB5A8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_11C93DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a1 + 96))
  {
    memset(&v62, 0, sizeof(v62));
    sub_194DAE0(a2, &v62);
    memset(v60, 0, sizeof(v60));
    v61 = 1065353216;
    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_11;
      }
    }

    else if (!*(a1 + 71))
    {
LABEL_11:
      if (*(a3 + 31) < 0 && *(a3 + 16) == 27)
      {
        v9 = *(a3 + 8);
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[2];
        v13 = *(v9 + 19);
        v14 = v10 == 0x6C7070612E6D6F63 && v11 == 0x6F722E6F65672E65;
        v15 = v14 && v12 == 0x65642E676E697475;
        if (v15 && v13 == 0x6C657665642E676ELL)
        {
          sub_11CB880();
        }
      }

      v17 = *(a1 + 80);
      *&__dst = *(a1 + 72);
      DWORD2(__dst) = v17;
      BYTE12(__dst) = 1;
      v57 = vdup_n_s32(0x258u);
      *__p = 0u;
      v64 = 0u;
      v65 = 1065353216;
      sub_573F4(&v58, a1, 1, &__dst, v60, __p, &v62);
      v18 = v64;
      if (!v64)
      {
LABEL_32:
        v20 = __p[0];
        __p[0] = 0;
        if (v20)
        {
          operator delete(v20);
        }

        sub_573F8(&v58, (a1 + 24));
        if (!sub_7E7E4(2u))
        {
LABEL_63:
          sub_57450(&__dst);
          sub_7E9A4(v55);
          v35 = sub_56D64();
          BYTE7(v54[1]) = 18;
          strcpy(v54, "CallTo.FareService");
          sub_7EA60(v55);
          sub_2C0888(__p);
          nullsub_1(9);
          sub_2C1D4C(__p);
          if (v35)
          {
            if (!sub_7E7E4(1u))
            {
              goto LABEL_103;
            }

            sub_19594F8(__p);
            v36 = sub_4A5C(__p, "The external fare service call failed with the error ", 53);
            sub_56EE4(v35, v54);
            if ((SBYTE7(v54[1]) & 0x80u) == 0)
            {
              v37 = v54;
            }

            else
            {
              v37 = *&v54[0];
            }

            if ((SBYTE7(v54[1]) & 0x80u) == 0)
            {
              v38 = BYTE7(v54[1]);
            }

            else
            {
              v38 = *(&v54[0] + 1);
            }

            sub_4A5C(v36, v37, v38);
            if (SBYTE7(v54[1]) < 0)
            {
              operator delete(*&v54[0]);
              v39 = v72;
              if ((v72 & 0x10) == 0)
              {
LABEL_73:
                if ((v39 & 8) == 0)
                {
                  v40 = 0;
                  BYTE7(v54[1]) = 0;
LABEL_98:
                  *(v54 + v40) = 0;
                  sub_7E854(v54, 1u);
                  if (SBYTE7(v54[1]) < 0)
                  {
                    operator delete(*&v54[0]);
                  }

                  if (v70 < 0)
                  {
                    operator delete(v69);
                  }

                  std::locale::~locale(&v64);
                  std::ostream::~ostream();
                  std::ios::~ios();
LABEL_103:
                  operator new();
                }

                v46 = *(&v64 + 1);
                v40 = v66 - *(&v64 + 1);
                if (v66 - *(&v64 + 1) > 0x7FFFFFFFFFFFFFF7)
                {
LABEL_113:
                  sub_3244();
                }

LABEL_93:
                if (v40 >= 0x17)
                {
                  operator new();
                }

                BYTE7(v54[1]) = v40;
                if (v40)
                {
                  memmove(v54, v46, v40);
                }

                goto LABEL_98;
              }
            }

            else
            {
              v39 = v72;
              if ((v72 & 0x10) == 0)
              {
                goto LABEL_73;
              }
            }

            v45 = v71;
            if (v71 < v68)
            {
              v71 = v68;
              v45 = v68;
            }

            v46 = v67;
            v40 = v45 - v67;
            if (v45 - v67 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_113;
            }

            goto LABEL_93;
          }

          if (sub_3F80(&__dst) == 200)
          {
            operator new();
          }

          if (!sub_7E7E4(1u))
          {
LABEL_131:
            v50 = sub_3F80(&__dst);
            std::to_string(&v53, v50);
            v51 = std::string::insert(&v53, 0, "CallTo.FareService.Error.Http.", 0x1EuLL);
            v52 = *&v51->__r_.__value_.__l.__data_;
            *&v54[1] = *(&v51->__r_.__value_.__l + 2);
            v54[0] = v52;
            v51->__r_.__value_.__l.__size_ = 0;
            v51->__r_.__value_.__r.__words[2] = 0;
            v51->__r_.__value_.__r.__words[0] = 0;
            sub_2C0888(__p);
            nullsub_1(9);
            sub_2C1D4C(__p);
            if (SBYTE7(v54[1]) < 0)
            {
              operator delete(*&v54[0]);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            operator new();
          }

          sub_19594F8(__p);
          v41 = sub_4A5C(__p, "The external fare service call failed with an http response code of ", 68);
          sub_3F80(&__dst);
          std::ostream::operator<<();
          sub_4A5C(v41, ".", 1);
          if ((v72 & 0x10) != 0)
          {
            v47 = v71;
            if (v71 < v68)
            {
              v71 = v68;
              v47 = v68;
            }

            v48 = &v67;
          }

          else
          {
            if ((v72 & 8) == 0)
            {
              v42 = 0;
              BYTE7(v54[1]) = 0;
LABEL_126:
              *(v54 + v42) = 0;
              sub_7E854(v54, 1u);
              if (SBYTE7(v54[1]) < 0)
              {
                operator delete(*&v54[0]);
              }

              if (v70 < 0)
              {
                operator delete(v69);
              }

              std::locale::~locale(&v64);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_131;
            }

            v48 = &v64 + 1;
            v47 = v66;
          }

          v49 = *v48;
          v42 = v47 - *v48;
          if (v42 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v42 >= 0x17)
          {
            operator new();
          }

          BYTE7(v54[1]) = v47 - *v48;
          if (v42)
          {
            memmove(v54, v49, v42);
          }

          goto LABEL_126;
        }

        sub_19594F8(__p);
        v21 = sub_4A5C(__p, "Sending fare request to ", 24);
        v22 = *(a1 + 23);
        if (v22 >= 0)
        {
          v23 = a1;
        }

        else
        {
          v23 = *a1;
        }

        if (v22 >= 0)
        {
          v24 = *(a1 + 23);
        }

        else
        {
          v24 = *(a1 + 8);
        }

        v25 = sub_4A5C(v21, v23, v24);
        v26 = sub_4A5C(v25, " (proxy: ", 9);
        v27 = *(a1 + 47);
        if (v27 >= 0)
        {
          v28 = a1 + 24;
        }

        else
        {
          v28 = *(a1 + 24);
        }

        if (v27 >= 0)
        {
          v29 = *(a1 + 47);
        }

        else
        {
          v29 = *(a1 + 32);
        }

        v30 = sub_4A5C(v26, v28, v29);
        sub_4A5C(v30, ", number of fare routes: ", 25);
        v31 = std::ostream::operator<<();
        sub_4A5C(v31, ").", 2);
        if ((v72 & 0x10) != 0)
        {
          v33 = v71;
          if (v71 < v68)
          {
            v71 = v68;
            v33 = v68;
          }

          v34 = v67;
          v32 = v33 - v67;
          if (v33 - v67 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if ((v72 & 8) == 0)
          {
            v32 = 0;
            v57.i8[7] = 0;
LABEL_58:
            *(&__dst + v32) = 0;
            sub_7E854(&__dst, 2u);
            if (v57.i8[7] < 0)
            {
              operator delete(__dst);
            }

            if (v70 < 0)
            {
              operator delete(v69);
            }

            std::locale::~locale(&v64);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_63;
          }

          v34 = *(&v64 + 1);
          v32 = v66 - *(&v64 + 1);
          if (v66 - *(&v64 + 1) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_88:
            sub_3244();
          }
        }

        if (v32 >= 0x17)
        {
          operator new();
        }

        v57.i8[7] = v32;
        if (v32)
        {
          memmove(&__dst, v34, v32);
        }

        goto LABEL_58;
      }

      while (1)
      {
        v19 = *v18;
        if (v18[63] < 0)
        {
          operator delete(*(v18 + 5));
          if ((v18[39] & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

LABEL_31:
          operator delete(*(v18 + 2));
          operator delete(v18);
          v18 = v19;
          if (!v19)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v18[39] < 0)
          {
            goto LABEL_31;
          }

LABEL_28:
          operator delete(v18);
          v18 = v19;
          if (!v19)
          {
            goto LABEL_32;
          }
        }
      }
    }

    sub_11CB5F4();
  }

  result = sub_7E7E4(2u);
  if (result)
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "No external fare service call made because external service calls are disabled. ", 80);
    if ((v72 & 0x10) != 0)
    {
      v43 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v43 = v68;
      }

      v44 = v67;
      v8 = v43 - v67;
      if (v43 - v67 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v8 = 0;
        v59 = 0;
LABEL_106:
        *(&v58 + v8) = 0;
        sub_7E854(&v58, 2u);
        if (v59 < 0)
        {
          operator delete(v58);
        }

        if (v70 < 0)
        {
          operator delete(v69);
        }

        std::locale::~locale(&v64);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_111;
      }

      v44 = *(&v64 + 1);
      v8 = v66 - *(&v64 + 1);
      if (v66 - *(&v64 + 1) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_115:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v59 = v8;
    if (v8)
    {
      memmove(&v58, v44, v8);
    }

    goto LABEL_106;
  }

LABEL_111:
  *a4 = 0;
  a4[64] = 0;
  return result;
}

void sub_11CA774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a73);
  sub_15DB5A8(&a18);
  sub_3514EC(&a29);
  sub_11CAAE8(&a38);
  sub_2CD04(&a62);
  if (a72 < 0)
  {
    operator delete(a67);
  }

  _Unwind_Resume(a1);
}

void *sub_11CA9C8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_15D9594(a1, 0, 0);
  if (a1 != a2)
  {
    v6 = a1[1];
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = *(a2 + 8);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v6 == v7)
    {
      sub_1335544(a1, a2);
    }

    else
    {
      sub_15D9E80(a1, a2);
    }
  }

  v8 = sub_15DBDD8((a1 + 7), 0, 0);
  if (v8 != a3)
  {
    v9 = a1[8];
    if ((v9 & 2) != 0)
    {
      v9 = 0;
    }

    else if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v10 = *(a3 + 8);
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v9 == v10)
    {
      sub_15DCDA4(v8, a3);
    }

    else
    {
      sub_15DCD50(v8, a3);
    }
  }

  return a1;
}

uint64_t sub_11CAAE8(uint64_t a1)
{
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
    sub_2CD04(a1 + 96);
    sub_2CD04(a1 + 56);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 136));
  sub_2CD04(a1 + 96);
  sub_2CD04(a1 + 56);
  if (*(a1 + 55) < 0)
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

void *sub_11CAB7C(void *a1, uint64_t a2)
{
  v4 = sub_11D1708(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_11D1604(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_11D1604(a1, (v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_11CAED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CAEE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_15D9814(v2 + 16);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CAF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

char **sub_11CAF18(char **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_15DC140(v1 + 72);
      sub_15D9814(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_11CAF6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_15DC140(v2 + 9);
      sub_15D9814(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_11CAFD4(void *a1, uint64_t a2)
{
  v4 = sub_11D1708(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v6 == v12)
        {
          if (sub_11D1604(a1, (v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v6 == v13)
      {
        if (sub_11D1604(a1, (v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_11CB114(void *a1, uint64_t a2)
{
  v4 = sub_11D1708(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return 0;
  }

  v9 = *v10;
  if (*v10)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v5 - 1;
      while (1)
      {
        v12 = v9[1];
        if (v12 == v6)
        {
          if (sub_11D1604(a1, (v9 + 2), a2))
          {
            return v9;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        v9 = *v9;
        if (!v9)
        {
          return v9;
        }
      }
    }

    do
    {
      v13 = v9[1];
      if (v13 == v6)
      {
        if (sub_11D1604(a1, (v9 + 2), a2))
        {
          return v9;
        }
      }

      else
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_11CB254(void *a1, uint64_t a2)
{
  v4 = sub_11D1708(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
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
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_11D1604(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_11D1604(a1, (v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_11CB5B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CB5C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_15D9814(v2 + 16);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CB5E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11CAF18(va);
  _Unwind_Resume(a1);
}

void sub_11CB690(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_11CB764(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_11CB864(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_11CB91C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_11CB9F0(_BYTE *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  a1[v7] = 0;
  v8 = strlen(a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = a1 + 24;
  a1[47] = v8;
  if (v8)
  {
    memmove(v10, a3, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_11CBB38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_11CBB54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 > 0;
  if (v4 < 1)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v6 = *(*(a2 + 40) + 8);
  v7 = *(v6 + 56);
  if (!v7)
  {
    v7 = &off_2779808;
  }

  if (!*(v6 + 76))
  {
LABEL_59:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare in fare route has a range length of ", 46);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, ", which is too short", 20);
    if ((v83 & 0x10) != 0)
    {
      v37 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v37 = v79;
      }

      v38 = v78;
      v13 = v37 - v78;
      if (v37 - v78 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v38 = v76[0];
      v13 = v77 - v76[0];
      if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_91:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v13;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  v8 = *(v7 + 6);
  if (sub_96AE18(*(v6 + 72)) >= *(a1 + 32))
  {
LABEL_63:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare in fare route references start leg ", 45);
    v35 = std::ostream::operator<<();
    sub_4A5C(v35, " which is out of range (", 24);
    v36 = std::ostream::operator<<();
    sub_4A5C(v36, " legs in fare route request)", 28);
    if ((v83 & 0x10) != 0)
    {
      v40 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v40 = v79;
      }

      v38 = v78;
      v13 = v40 - v78;
      if (v40 - v78 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v38 = v76[0];
      v13 = v77 - v76[0];
      if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_108:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v13;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  if (sub_96AE18((*(v6 + 76) + *(v6 + 72))) > *(a1 + 32))
  {
LABEL_7:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare in fare route references start leg ", 45);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " + range length ", 16);
    v11 = std::ostream::operator<<();
    sub_4A5C(v11, " which is out of range (", 24);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, " legs in fare route request)", 28);
    if ((v83 & 0x10) != 0)
    {
      v46 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v46 = v79;
      }

      v47 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
LABEL_191:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v72 < 0)
        {
          operator delete(__dst);
        }

        if (v81 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v75);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v47 = v76;
      v46 = v77;
    }

    v38 = *v47;
    v13 = v46 - *v47;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v46 - *v47;
    if (!v13)
    {
      goto LABEL_191;
    }

LABEL_190:
    memmove(&__dst, v38, v13);
    goto LABEL_191;
  }

  v27 = *(v6 + 56);
  if (!v27)
  {
    v27 = &off_2779808;
  }

  if (v8 != *(v27 + 6))
  {
LABEL_73:
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Fare route response has base fare of mismatching currencies. Expected ", 70);
    v39 = std::ostream::operator<<();
    sub_4A5C(v39, " but got ", 9);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v55 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v55 = v79;
      }

      v56 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v56 = v76;
      v55 = v77;
    }

    v38 = *v56;
    v13 = v55 - *v56;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v55 - *v56;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  if (v4 == 1)
  {
LABEL_12:
    v14 = *(a2 + 56);
    if (v14 < 1)
    {
      return 1;
    }

    v15 = 0;
    while (1)
    {
      v16 = *(a2 + 64) + 8;
      v17 = *(v16 + 8 * v15);
      if (v15)
      {
        if ((*(*(v16 + 8 * (v15 - 1)) + 60) + *(*(v16 + 8 * (v15 - 1)) + 56)) > *(v17 + 56))
        {
          break;
        }
      }

      if (!*(v17 + 60))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Surcharge in fare route has a range length of ", 46);
        v43 = std::ostream::operator<<();
        sub_4A5C(v43, ", which is too short", 20);
        if ((v83 & 0x10) != 0)
        {
          v57 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v57 = v79;
          }

          v58 = &v78;
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v13 = 0;
            v72 = 0;
            goto LABEL_191;
          }

          v58 = v76;
          v57 = v77;
        }

        v38 = *v58;
        v13 = v57 - *v58;
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        v72 = v57 - *v58;
        if (v13)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }

      if (sub_96AE18(*(v17 + 56)) >= *(a1 + 32))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Surcharge in fare route references start leg ", 45);
        v44 = std::ostream::operator<<();
        sub_4A5C(v44, " which is out of range (", 24);
        v45 = std::ostream::operator<<();
        sub_4A5C(v45, " legs in fare route request)", 28);
        if ((v83 & 0x10) != 0)
        {
          v59 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v59 = v79;
          }

          v60 = &v78;
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v13 = 0;
            v72 = 0;
            goto LABEL_191;
          }

          v60 = v76;
          v59 = v77;
        }

        v38 = *v60;
        v13 = v59 - *v60;
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        v72 = v59 - *v60;
        if (v13)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }

      if (sub_96AE18((*(v17 + 60) + *(v17 + 56))) > *(a1 + 32))
      {
        result = sub_7E7E4(1u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Surcharge in fare route references start leg ", 45);
        v48 = std::ostream::operator<<();
        sub_4A5C(v48, " + range length ", 16);
        v49 = std::ostream::operator<<();
        sub_4A5C(v49, " which is out of range (", 24);
        v50 = std::ostream::operator<<();
        sub_4A5C(v50, " legs in fare route request)", 28);
        if ((v83 & 0x10) != 0)
        {
          v61 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v61 = v79;
          }

          v62 = &v78;
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v13 = 0;
            v72 = 0;
            goto LABEL_191;
          }

          v62 = v76;
          v61 = v77;
        }

        v38 = *v62;
        v13 = v61 - *v62;
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 >= 0x17)
        {
          operator new();
        }

        v72 = v61 - *v62;
        if (v13)
        {
          goto LABEL_190;
        }

        goto LABEL_191;
      }

      v18 = *(v17 + 40);
      if (v18)
      {
        v19 = v18 + 8;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(v17 + 32);
      if (v20)
      {
        v21 = *(*v19 + 48);
        if (!v5)
        {
          if (v21)
          {
            v22 = *(*v19 + 48);
          }

          else
          {
            v22 = &off_2779808;
          }

          v8 = *(v22 + 6);
        }

        if (!v21)
        {
          v21 = &off_2779808;
        }

        if (v8 != *(v21 + 6))
        {
          goto LABEL_41;
        }

        if (v20 != 1)
        {
          v23 = v19 + 8;
          v24 = 8 * v20 - 8;
          while (1)
          {
            v25 = *(*v23 + 48);
            if (!v25)
            {
              v25 = &off_2779808;
            }

            if (v8 != *(v25 + 6))
            {
              break;
            }

            v23 += 8;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_14;
            }
          }

LABEL_41:
          result = sub_7E7E4(1u);
          if (!result)
          {
            return result;
          }

          sub_19594F8(&v73);
          sub_4A5C(&v73, "Fare route response has surcharge unit of mismatching currencies. Expected ", 75);
          v26 = std::ostream::operator<<();
          sub_4A5C(v26, " but got ", 9);
          std::ostream::operator<<();
          if ((v83 & 0x10) != 0)
          {
            v41 = v82;
            if (v82 < v79)
            {
              v82 = v79;
              v41 = v79;
            }

            v42 = &v78;
          }

          else
          {
            if ((v83 & 8) == 0)
            {
              v13 = 0;
              v72 = 0;
              goto LABEL_191;
            }

            v42 = v76;
            v41 = v77;
          }

          v38 = *v42;
          v13 = v41 - *v42;
          if (v13 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v13 >= 0x17)
          {
            operator new();
          }

          v72 = v41 - *v42;
          if (v13)
          {
            goto LABEL_190;
          }

          goto LABEL_191;
        }

LABEL_14:
        v5 = 1;
      }

      ++v15;
      result = 1;
      if (v15 == v14)
      {
        return result;
      }
    }

    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "Surcharge reference legs in non-increasing order. Previous surcharge at index ", 78);
    v51 = std::ostream::operator<<();
    sub_4A5C(v51, " has start leg ", 15);
    v52 = std::ostream::operator<<();
    sub_4A5C(v52, " and range length ", 18);
    v53 = std::ostream::operator<<();
    sub_4A5C(v53, "; surcharge at index ", 21);
    v54 = std::ostream::operator<<();
    sub_4A5C(v54, " has start leg ", 15);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v67 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v67 = v79;
      }

      v68 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v68 = v76;
      v67 = v77;
    }

    v38 = *v68;
    v13 = v67 - *v68;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v67 - *v68;
    if (v13)
    {
      goto LABEL_190;
    }

    goto LABEL_191;
  }

  v28 = 0;
  v29 = v4 - 1;
  while (1)
  {
    v30 = *(a2 + 40) + 8 * v28;
    v31 = *(v30 + 16);
    v32 = *(v31 + 72);
    if (*(*(v30 + 8) + 76) + *(*(v30 + 8) + 72) > v32)
    {
      break;
    }

    if (!*(v31 + 76))
    {
      goto LABEL_59;
    }

    if (sub_96AE18(v32) >= *(a1 + 32))
    {
      goto LABEL_63;
    }

    if (sub_96AE18((*(v31 + 76) + *(v31 + 72))) > *(a1 + 32))
    {
      goto LABEL_7;
    }

    v33 = *(v31 + 56);
    if (!v33)
    {
      v33 = &off_2779808;
    }

    if (v8 != *(v33 + 6))
    {
      goto LABEL_73;
    }

    if (v29 == ++v28)
    {
      goto LABEL_12;
    }
  }

  result = sub_7E7E4(1u);
  if (result)
  {
    sub_19594F8(&v73);
    sub_4A5C(&v73, "Base fare reference legs in non-increasing order. Previous base fare at index ", 78);
    v63 = std::ostream::operator<<();
    sub_4A5C(v63, " has start leg ", 15);
    v64 = std::ostream::operator<<();
    sub_4A5C(v64, " and range length ", 18);
    v65 = std::ostream::operator<<();
    sub_4A5C(v65, "; base fare at index ", 21);
    v66 = std::ostream::operator<<();
    sub_4A5C(v66, " has start leg ", 15);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v69 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v69 = v79;
      }

      v70 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v13 = 0;
        v72 = 0;
        goto LABEL_191;
      }

      v70 = v76;
      v69 = v77;
    }

    v38 = *v70;
    v13 = v69 - *v70;
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v72 = v69 - *v70;
    if (!v13)
    {
      goto LABEL_191;
    }

    goto LABEL_190;
  }

  return result;
}

void sub_11CCBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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

uint64_t sub_11CCD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32))
  {
    if (*(*(*(a1 + 40) + 8) + 56))
    {
      v4 = *(*(*(a1 + 40) + 8) + 56);
    }

    else
    {
      v4 = &off_2779808;
    }

    sub_15DD818(v15, v4);
    v5 = *(a1 + 32);
    if (v5 < 2)
    {
LABEL_11:
      *a2 = 1;
      sub_11CD70C((a2 + 8), v15);
    }

    else
    {
      v6 = v18;
      v7 = v16 | 2;
      v8 = *(a1 + 40) + 16;
      v9 = v5 - 1;
      while (1)
      {
        v10 = *(*v8 + 56);
        if (!v10)
        {
          v10 = &off_2779808;
        }

        if (*(v10 + 6) != v17)
        {
          break;
        }

        v6 += *(v10 + 7);
        v16 = v7;
        v18 = v6;
        v8 += 8;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

      v13 = sub_11CF7A4(3);
      *a2 = 0;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14;
    }

    return sub_15DD88C(v15);
  }

  else
  {
    result = sub_11CF7A4(1);
    *a2 = 0;
    *(a2 + 8) = result;
    *(a2 + 16) = v12;
  }

  return result;
}

double sub_11CCE90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string **a4@<X8>)
{
  v7 = sub_39881C(*(*(*(a2 + 40) + 8 + 8 * (*(a1 + 56) + *(a1 + 60) - 1)) + 64) - *(*(*(a2 + 40) + 8 + 8 * *(a1 + 56)) + 56));
  if (v7 < 0)
  {
    v18 = v7;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v23, v18);
    sub_23E08("Surcharge covers a trip with a negative duration of ", &v23, &v24);
    sub_30F54(" sec", &v24, &v25);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v25;
    }

    else
    {
      v20 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v22 = sub_2D390(exception, v20, size);
  }

  v8 = 10 * v7;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = v9 + 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 32);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_11CD7AC(a4, v10, v10 + 8 * v11, v11);
  sub_11D178C(&v24, (a3 + 1), v8);
  v12 = *a4;
  v13 = a4[1];
  v14 = 126 - 2 * __clz((v13 - *a4) >> 6);
  v15 = v13 == *a4;
  LODWORD(v25.__r_.__value_.__l.__data_) = v24.__r_.__value_.__l.__data_;
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  return sub_11CD928(v12, v13, &v25, v16, 1);
}

void sub_11CCFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void **sub_11CD098(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_15DFD6C(v3 - 64);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_11CD0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 56))
  {
    result = sub_11CF7A4(2);
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 16) = v18;
    return result;
  }

  sub_15DD73C(v26, 0, 0);
  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 56);
  if (!v10)
  {
LABEL_17:
    *a4 = 1;
    sub_11CD70C((a4 + 8), v26);
    return sub_15DD88C(v26);
  }

  v11 = &v9[v10];
  while (1)
  {
    sub_11CCE90(*v9, a1, a3, &__p);
    v12 = __p;
    v13 = *(__p + 6);
    if (!v13)
    {
      v13 = &off_2779808;
    }

    if (HIDWORD(v28))
    {
      break;
    }

    v27 |= 3u;
    v28 = v13[3];
    v15 = v25;
    v16 = __p;
    if (v25 != __p)
    {
      do
      {
LABEL_15:
        v15 = sub_15DFD6C(v15 - 64);
      }

      while (v15 != v12);
      v16 = __p;
    }

LABEL_7:
    v25 = v12;
    operator delete(v16);
    if (++v9 == v11)
    {
      goto LABEL_17;
    }
  }

  if (*(v13 + 6) == v28)
  {
    v14 = *(v13 + 7) + HIDWORD(v28);
    v27 |= 2u;
    HIDWORD(v28) = v14;
    v15 = v25;
    v16 = __p;
    if (v25 != __p)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v19 = sub_11CF7A4(3);
  *a4 = 0;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  v21 = __p;
  if (__p)
  {
    v22 = v25;
    v23 = __p;
    if (v25 != __p)
    {
      do
      {
        v22 = sub_15DFD6C(v22 - 64);
      }

      while (v22 != v21);
      v23 = __p;
    }

    v25 = v21;
    operator delete(v23);
  }

  return sub_15DD88C(v26);
}

void sub_11CD2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_15DD88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11CD2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_11CCD78(a2, v14);
  v9 = v14[0];
  if (v14[0] != 1)
  {
    goto LABEL_6;
  }

  result = sub_11CD0F4(a1, a2, a3, v12);
  if (v12[0] != 1)
  {
LABEL_5:
    v9 = v14[0];
LABEL_6:
    *a4 = v9;
    v10 = (a4 + 8);
    if (v9)
    {
      result = sub_11CD70C(v10, &v15);
    }

    else
    {
      *&v10->__r_.__value_.__l.__data_ = v15;
    }

    goto LABEL_9;
  }

  if (v13[6] == v17)
  {
    v16 |= 2u;
    v18 += v13[7];
    result = sub_15DD88C(v13);
    goto LABEL_5;
  }

  result = sub_11CF7A4(3);
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 16) = v11;
  if (v12[0] == 1)
  {
    result = sub_15DD88C(v13);
  }

LABEL_9:
  if (v14[0] == 1)
  {
    return sub_15DD88C(&v15);
  }

  return result;
}

void sub_11CD40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  if (a14)
  {
    sub_15DD88C(&a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11CD42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 40);
  v5 = (v4 + 8);
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = 8 * v6;
    while (1)
    {
      v8 = *v5;
      if (*(*v5 + 72) == a2)
      {
        break;
      }

      ++v5;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    *a3 = 1;

    return sub_15DDFE4(a3 + 8, v8);
  }

  else
  {
LABEL_7:
    result = sub_11CF7A4(1);
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 16) = v10;
  }

  return result;
}

void sub_11CD4C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = 8 * v8;
    while (1)
    {
      v10 = *v7;
      if (*(*v7 + 56) == a4)
      {
        break;
      }

      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v13 = sub_11CCE90(v10, a1, a3, &__p);
    sub_15DF0B0(v26, v10, v13);
    v14 = v29;
    if (v29 >= 1)
    {
      v15 = (v30 + 2);
      do
      {
        sub_15DFDA8(*v15++);
        --v14;
      }

      while (v14);
      v29 = 0;
    }

    v16 = __p;
    v17 = v32;
    if (__p != v32)
    {
      do
      {
        if (v30 && v29 < *v30)
        {
          v18 = &v30[2 * v29++];
          v19 = *(v18 + 1);
        }

        else
        {
          v20 = sub_15E120C(v28);
          v19 = sub_19593CC(&v28, v20);
        }

        sub_15E06F0(v19, v16);
        v16 += 64;
      }

      while (v16 != v17);
    }

    *a5 = 1;
    sub_15DEEEC(a5 + 8, 0, 0);
    if ((a5 + 8) != v26)
    {
      v21 = *(a5 + 16);
      if ((v21 & 2) != 0)
      {
        v21 = 0;
      }

      else if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v22 = v27;
      if ((v27 & 2) != 0)
      {
        v22 = 0;
      }

      else if (v27)
      {
        v22 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v21 == v22)
      {
        sub_12D952C(a5 + 8, v26);
      }

      else
      {
        sub_15DFA64((a5 + 8), v26);
      }
    }

    sub_15DF174(v26);
    v23 = __p;
    if (__p)
    {
      v24 = v32;
      v25 = __p;
      if (v32 != __p)
      {
        do
        {
          v24 = sub_15DFD6C(v24 - 64);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v32 = v23;
      operator delete(v25);
    }
  }

  else
  {
LABEL_8:
    v11 = sub_11CF7A4(2);
    *a5 = 0;
    *(a5 + 8) = v11;
    *(a5 + 16) = v12;
  }
}

void sub_11CD6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_11CD098(va);
  _Unwind_Resume(a1);
}

void sub_11CD6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_15DF174(va);
  sub_11CD098(va1);
  _Unwind_Resume(a1);
}

std::string *sub_11CD70C(std::string *a1, uint64_t a2)
{
  sub_15DD73C(a1, 0, 0);
  if (a1 != a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v5)
    {
      sub_15DDDA8(a1, a2);
    }

    else
    {
      sub_15DDD54(a1, a2);
    }
  }

  return a1;
}

void sub_11CD7AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_11CD87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 64;
    v15 = -v12;
    do
    {
      v14 = sub_15DFD6C(v14) - 64;
      v15 += 64;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_11CD8B0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_11CD8B0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_15DFD6C(v4 - 64);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

double sub_11CD928(std::string *a1, std::string *a2, unsigned int *a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 6;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v22 = sub_11D17F8(a3, &a2[-3].__r_.__value_.__l.__size_, a1);
        if (&a2[-3].__r_.__value_.__r.__words[1] != a1 && v22)
        {
          size = a1->__r_.__value_.__l.__size_;
          if ((size & 2) != 0)
          {
            size = 0;
          }

          else if (size)
          {
            size = *(size & 0xFFFFFFFFFFFFFFFCLL);
          }

          v29 = a2[-3].__r_.__value_.__r.__words[2];
          if ((v29 & 2) != 0)
          {
            v29 = 0;
          }

          else if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFCLL);
          }

          p_size = &a2[-3].__r_.__value_.__l.__size_;
          if (size == v29)
          {

            *&result = sub_15E0744(a1, p_size).n128_u64[0];
          }

          else
          {

            sub_1956DC4(a1, p_size);
          }
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_11CE048(a1, &a1[2].__r_.__value_.__r.__words[2], &a1[5].__r_.__value_.__l.__size_, &a2[-3].__r_.__value_.__l.__size_, a3);
    }

    if (v12 == 5)
    {

      return sub_11CE244(a1, &a1[2].__r_.__value_.__r.__words[2], &a1[5].__r_.__value_.__l.__size_, &a1[8], &a2[-3].__r_.__value_.__l.__size_, a3);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_11CE4C8(a1, a2, a3);
      }

      else
      {

        sub_11CE680(a1, a2, a3);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v25 = (v12 - 2) >> 1;
        v26 = v25 + 1;
        v27 = (a1 + 64 * v25);
        do
        {
          sub_11CF13C(a1, a3, v12, v27);
          v27 = (v27 - 64);
          --v26;
        }

        while (v26);
        do
        {
          sub_11CF358(a1, a2, a3, v12);
          a2 = (a2 - 64);
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = a1 + 64 * (v12 >> 1);
    if (v12 < 0x81)
    {
      sub_11CDDDC(a1 + 64 * (v12 >> 1), a1, &a2[-3].__r_.__value_.__l.__size_, a3);
      if (a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_11CDDDC(a1, a1 + 64 * (v12 >> 1), &a2[-3].__r_.__value_.__l.__size_, a3);
      v15 = v13 << 6;
      v16 = &a1[-2] + 64 * v13 - 16;
      sub_11CDDDC(&a1[2].__r_.__value_.__r.__words[2], v16, &a2[-6].__r_.__value_.__r.__words[2], a3);
      sub_11CDDDC(&a1[5].__r_.__value_.__l.__size_, &a1[2].__r_.__value_.__r.__words[2] + v15, &a2[-8], a3);
      sub_11CDDDC(v16, v14, &a1[2].__r_.__value_.__r.__words[2] + v15, a3);
      v17 = a1->__r_.__value_.__l.__size_;
      if ((v17 & 2) != 0)
      {
        v17 = 0;
      }

      else if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v18 = *(v14 + 8);
      if ((v18 & 2) != 0)
      {
        v18 = 0;
      }

      else if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v17 == v18)
      {
        sub_15E0744(a1, v14);
        if (a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1956DC4(a1, v14);
        if (a5)
        {
          goto LABEL_28;
        }
      }
    }

    if ((sub_11D17F8(a3, &a1[-3].__r_.__value_.__l.__size_, a1) & 1) == 0)
    {
      v9 = sub_11CE80C(a1, a2, a3);
      goto LABEL_33;
    }

LABEL_28:
    v19 = sub_11CEAD4(a1, a2, a3);
    if ((v20 & 1) == 0)
    {
      goto LABEL_31;
    }

    v21 = sub_11CED94(a1, v19, a3);
    v9 = v19 + 64;
    if (sub_11CED94((v19 + 64), a2, a3))
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_31:
      sub_11CD928(a1, v19, a3, -v11, a5 & 1);
      v9 = v19 + 64;
LABEL_33:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_11CDDDC(a1, &a1[2].__r_.__value_.__r.__words[2], &a2[-3].__r_.__value_.__l.__size_, a3);
  return result;
}

uint64_t sub_11CDDDC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v8 = sub_11D17F8(a4, a2, a1);
  result = sub_11D17F8(a4, a3, a2);
  if ((v8 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    if (a3 != a2)
    {
      v11 = *(a2 + 8);
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v14 = *(a3 + 8);
      if ((v14 & 2) != 0)
      {
        v14 = 0;
      }

      else if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v11 == v14)
      {
        sub_15E0744(a2, a3);
      }

      else
      {
        sub_1956DC4(a2, a3);
      }
    }

    v18 = sub_11D17F8(a4, a2, a1);
    result = 1;
    if (a2 == a1 || !v18)
    {
      return result;
    }

    v19 = *(a1 + 8);
    if ((v19 & 2) != 0)
    {
      v19 = 0;
    }

    else if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v20 = *(a2 + 8);
    if ((v20 & 2) != 0)
    {
      v20 = 0;
    }

    else if (v20)
    {
      v16 = a1;
      v17 = a2;
      if (v19 != *(v20 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_50;
      }

LABEL_63:
      sub_15E0744(v16, v17);
      return 1;
    }

    v16 = a1;
    v17 = a2;
    if (v19 != v20)
    {
      goto LABEL_50;
    }

    goto LABEL_63;
  }

  if (result)
  {
    if (a3 == a1)
    {
      return 1;
    }

    v10 = *(a1 + 8);
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v13 = *(a3 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = a1;
    v17 = a3;
    if (v10 == v13)
    {
      goto LABEL_63;
    }

LABEL_50:
    sub_1956DC4(v16, v17);
    return 1;
  }

  if (a2 != a1)
  {
    v12 = *(a1 + 8);
    if ((v12 & 2) != 0)
    {
      v12 = 0;
    }

    else if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v15 = *(a2 + 8);
    if ((v15 & 2) != 0)
    {
      v15 = 0;
    }

    else if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v12 == v15)
    {
      sub_15E0744(a1, a2);
    }

    else
    {
      sub_1956DC4(a1, a2);
    }
  }

  v21 = sub_11D17F8(a4, a3, a2);
  result = 1;
  if (a3 != a2 && v21)
  {
    v22 = *(a2 + 8);
    if ((v22 & 2) != 0)
    {
      v22 = 0;
    }

    else if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v23 = *(a3 + 8);
    if ((v23 & 2) != 0)
    {
      v23 = 0;
    }

    else if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = a2;
    v17 = a3;
    if (v22 == v23)
    {
      goto LABEL_63;
    }

    goto LABEL_50;
  }

  return result;
}

double sub_11CE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  sub_11CDDDC(a1, a2, a3, a5);
  if (!sub_11D17F8(a5, a4, a3))
  {
    return result;
  }

  if (a4 != a3)
  {
    v11 = *(a3 + 8);
    if ((v11 & 2) != 0)
    {
      v11 = 0;
    }

    else if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v12 = *(a4 + 8);
    if ((v12 & 2) != 0)
    {
      v12 = 0;
    }

    else if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v11 == v12)
    {
      sub_15E0744(a3, a4);
      if (!sub_11D17F8(a5, a3, a2))
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_1956DC4(a3, a4);
  }

  if (!sub_11D17F8(a5, a3, a2))
  {
    return result;
  }

LABEL_14:
  if (a3 != a2)
  {
    v13 = *(a2 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = *(a3 + 8);
    if ((v14 & 2) != 0)
    {
      v14 = 0;
    }

    else if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v13 == v14)
    {
      sub_15E0744(a2, a3);
      v15 = sub_11D17F8(a5, a2, a1);
      if (a2 == a1)
      {
        return result;
      }

      goto LABEL_28;
    }

    sub_1956DC4(a2, a3);
  }

  v15 = sub_11D17F8(a5, a2, a1);
  if (a2 == a1)
  {
    return result;
  }

LABEL_28:
  if (v15)
  {
    v16 = *(a1 + 8);
    if ((v16 & 2) != 0)
    {
      v16 = 0;
    }

    else if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = *(a2 + 8);
    if ((v17 & 2) != 0)
    {
      v17 = 0;
    }

    else if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v16 == v17)
    {

      *&result = sub_15E0744(a1, a2).n128_u64[0];
    }

    else
    {

      sub_1956DC4(a1, a2);
    }
  }

  return result;
}

double sub_11CE244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  sub_11CE048(a1, a2, a3, a4, a6);
  if (!sub_11D17F8(a6, a5, a4))
  {
    return result;
  }

  if (a5 != a4)
  {
    v13 = *(a4 + 8);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = *(a5 + 8);
    if ((v14 & 2) != 0)
    {
      v14 = 0;
    }

    else if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v13 == v14)
    {
      sub_15E0744(a4, a5);
      if (!sub_11D17F8(a6, a4, a3))
      {
        return result;
      }

      goto LABEL_14;
    }

    sub_1956DC4(a4, a5);
  }

  if (!sub_11D17F8(a6, a4, a3))
  {
    return result;
  }

LABEL_14:
  if (a4 != a3)
  {
    v15 = *(a3 + 8);
    if ((v15 & 2) != 0)
    {
      v15 = 0;
    }

    else if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = *(a4 + 8);
    if ((v16 & 2) != 0)
    {
      v16 = 0;
    }

    else if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v15 == v16)
    {
      sub_15E0744(a3, a4);
      if (!sub_11D17F8(a6, a3, a2))
      {
        return result;
      }

      goto LABEL_28;
    }

    sub_1956DC4(a3, a4);
  }

  if (!sub_11D17F8(a6, a3, a2))
  {
    return result;
  }

LABEL_28:
  if (a3 != a2)
  {
    v17 = *(a2 + 8);
    if ((v17 & 2) != 0)
    {
      v17 = 0;
    }

    else if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v18 = *(a3 + 8);
    if ((v18 & 2) != 0)
    {
      v18 = 0;
    }

    else if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v17 == v18)
    {
      sub_15E0744(a2, a3);
      v19 = sub_11D17F8(a6, a2, a1);
      if (a2 == a1)
      {
        return result;
      }

      goto LABEL_42;
    }

    sub_1956DC4(a2, a3);
  }

  v19 = sub_11D17F8(a6, a2, a1);
  if (a2 == a1)
  {
    return result;
  }

LABEL_42:
  if (v19)
  {
    v20 = *(a1 + 8);
    if ((v20 & 2) != 0)
    {
      v20 = 0;
    }

    else if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v21 = *(a2 + 8);
    if ((v21 & 2) != 0)
    {
      v21 = 0;
    }

    else if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v20 == v21)
    {

      *&result = sub_15E0744(a1, a2).n128_u64[0];
    }

    else
    {

      sub_1956DC4(a1, a2);
    }
  }

  return result;
}

uint64_t sub_11CE4C8(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 64;
  if (result + 64 == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = result;
  while (2)
  {
    v9 = v8;
    v8 = v5;
    result = sub_11D17F8(a3, v5, v9);
    if (!result)
    {
      goto LABEL_6;
    }

    sub_11CF09C(v18, v8);
    v10 = v7;
    while (1)
    {
      v11 = v4 + v10;
      v12 = *(&v4[3].__r_.__value_.__l.__data_ + v10);
      if ((v12 & 2) != 0)
      {
        v12 = 0;
        v13 = *(v11 + 8);
        if ((v13 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v13 = *(v11 + 8);
        if ((v13 & 2) != 0)
        {
LABEL_16:
          v13 = 0;
          goto LABEL_17;
        }
      }

      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
      }

LABEL_17:
      if (v12 == v13)
      {
        sub_15E0744(v11 + 64, v11);
      }

      else
      {
        sub_15E06F0((v11 + 64), v11);
      }

      if (!v10)
      {
        break;
      }

      v14 = sub_11D17F8(a3, v18, &v4[-2] + v10 - 16);
      v10 -= 64;
      if ((v14 & 1) == 0)
      {
        v15 = (v4 + v10 + 64);
        if (v15 == v18)
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    v15 = v4;
    if (v4 == v18)
    {
      goto LABEL_5;
    }

LABEL_25:
    size = v15->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v17 = v18[0].__r_.__value_.__l.__size_;
    if ((v18[0].__r_.__value_.__s.__data_[8] & 2) != 0)
    {
      v17 = 0;
    }

    else if (v18[0].__r_.__value_.__s.__data_[8])
    {
      v17 = *(v18[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v17)
    {
      sub_15E0744(v15, v18);
    }

    else
    {
      sub_15E06F0(v15, v18);
    }

LABEL_5:
    result = sub_15DFD6C(v18);
LABEL_6:
    v5 = v8 + 64;
    v7 += 64;
    if (v8 + 64 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_11CE680(uint64_t result, uint64_t a2, unsigned int *a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 64;
  if (result + 64 == a2)
  {
    return result;
  }

  while (2)
  {
    v7 = v5;
    result = sub_11D17F8(a3, v5, v4);
    if (!result)
    {
      goto LABEL_6;
    }

    sub_11CF09C(v13, v7);
    do
    {
      v8 = *(v4 + 72);
      if ((v8 & 2) != 0)
      {
        v8 = 0;
        v9 = *(v4 + 8);
        if ((v9 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v9 = *(v4 + 8);
        if ((v9 & 2) != 0)
        {
LABEL_16:
          v9 = 0;
          goto LABEL_17;
        }
      }

      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
      }

LABEL_17:
      if (v8 == v9)
      {
        sub_15E0744(v4 + 64, v4);
      }

      else
      {
        sub_15E06F0((v4 + 64), v4);
      }

      v4 -= 64;
    }

    while ((sub_11D17F8(a3, v13, v4) & 1) != 0);
    v10 = (v4 + 64);
    if ((v4 + 64) != v13)
    {
      v11 = *(v4 + 72);
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      size = v13[0].__r_.__value_.__l.__size_;
      if ((v13[0].__r_.__value_.__s.__data_[8] & 2) != 0)
      {
        size = 0;
      }

      else if (v13[0].__r_.__value_.__s.__data_[8])
      {
        size = *(v13[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v11 == size)
      {
        sub_15E0744(v10, v13);
      }

      else
      {
        sub_15E06F0(v10, v13);
      }
    }

    result = sub_15DFD6C(v13);
LABEL_6:
    v5 = v7 + 64;
    v4 = v7;
    if (v7 + 64 != a2)
    {
      continue;
    }

    return result;
  }
}

unint64_t sub_11CE80C(std::string *a1, unint64_t a2, unsigned int *a3)
{
  sub_11CF09C(v16, a1);
  if (sub_11D17F8(a3, v16, a2 - 64))
  {
    v6 = a1;
    do
    {
      v6 += 64;
    }

    while ((sub_11D17F8(a3, v16, v6) & 1) == 0);
  }

  else
  {
    v7 = &a1[2].__r_.__value_.__r.__words[2];
    do
    {
      v6 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = sub_11D17F8(a3, v16, v7);
      v7 = v6 + 64;
    }

    while (!v8);
  }

  if (v6 < a2)
  {
    do
    {
      a2 -= 64;
    }

    while ((sub_11D17F8(a3, v16, a2) & 1) != 0);
  }

  while (v6 < a2)
  {
    v9 = *(v6 + 8);
    if ((v9 & 2) != 0)
    {
      v9 = 0;
    }

    else if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v10 = *(a2 + 8);
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v9 == v10)
    {
      sub_15E0744(v6, a2);
    }

    else
    {
      sub_1956DC4(v6, a2);
    }

    do
    {
      v6 += 64;
    }

    while (!sub_11D17F8(a3, v16, v6));
    do
    {
      a2 -= 64;
    }

    while ((sub_11D17F8(a3, v16, a2) & 1) != 0);
  }

  if ((v6 - 64) != a1)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v12 = *(v6 - 56);
    if ((v12 & 2) != 0)
    {
      v12 = 0;
    }

    else if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v12)
    {
      sub_15E0744(a1, v6 - 64);
    }

    else
    {
      sub_15E06F0(a1, v6 - 64);
    }
  }

  if ((v6 - 64) != v16)
  {
    v13 = *(v6 - 56);
    if ((v13 & 2) != 0)
    {
      v13 = 0;
    }

    else if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = v16[0].__r_.__value_.__l.__size_;
    if ((v16[0].__r_.__value_.__s.__data_[8] & 2) != 0)
    {
      v14 = 0;
    }

    else if (v16[0].__r_.__value_.__s.__data_[8])
    {
      v14 = *(v16[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v13 == v14)
    {
      sub_15E0744(v6 - 64, v16);
    }

    else
    {
      sub_15E06F0((v6 - 64), v16);
    }
  }

  sub_15DFD6C(v16);
  return v6;
}

unint64_t sub_11CEAD4(std::string *a1, unint64_t a2, unsigned int *a3)
{
  sub_11CF09C(v18, a1);
  v6 = 0;
  do
  {
    v7 = sub_11D17F8(a3, &a1[2].__r_.__value_.__r.__words[v6 + 2], v18);
    v6 += 8;
  }

  while ((v7 & 1) != 0);
  v8 = a1 + v6 * 8;
  if (v6 == 8)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 64;
    }

    while ((sub_11D17F8(a3, a2, v18) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 64;
    }

    while (!sub_11D17F8(a3, a2, v18));
  }

  v9 = a1 + v6 * 8;
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *(v9 + 8);
      if ((v11 & 2) != 0)
      {
        v11 = 0;
      }

      else if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v12 = *(v10 + 8);
      if ((v12 & 2) != 0)
      {
        v12 = 0;
      }

      else if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v11 == v12)
      {
        sub_15E0744(v9, v10);
      }

      else
      {
        sub_1956DC4(v9, v10);
      }

      do
      {
        v9 += 64;
      }

      while ((sub_11D17F8(a3, v9, v18) & 1) != 0);
      do
      {
        v10 -= 64;
      }

      while (!sub_11D17F8(a3, v10, v18));
    }

    while (v9 < v10);
  }

  if ((v9 - 64) != a1)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v14 = *(v9 - 56);
    if ((v14 & 2) != 0)
    {
      v14 = 0;
    }

    else if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v14)
    {
      sub_15E0744(a1, v9 - 64);
    }

    else
    {
      sub_15E06F0(a1, v9 - 64);
    }
  }

  if ((v9 - 64) != v18)
  {
    v15 = *(v9 - 56);
    if ((v15 & 2) != 0)
    {
      v15 = 0;
    }

    else if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v16 = v18[0].__r_.__value_.__l.__size_;
    if ((v18[0].__r_.__value_.__s.__data_[8] & 2) != 0)
    {
      v16 = 0;
    }

    else if (v18[0].__r_.__value_.__s.__data_[8])
    {
      v16 = *(v18[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v15 == v16)
    {
      sub_15E0744(v9 - 64, v18);
    }

    else
    {
      sub_15E06F0((v9 - 64), v18);
    }
  }

  sub_15DFD6C(v18);
  return v9 - 64;
}

BOOL sub_11CED94(std::string *a1, std::string *a2, unsigned int *a3)
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_11CDDDC(a1, &a1[2].__r_.__value_.__r.__words[2], &a2[-3].__r_.__value_.__l.__size_, a3);
        break;
      case 4:
        sub_11CE048(a1, &a1[2].__r_.__value_.__r.__words[2], &a1[5].__r_.__value_.__l.__size_, &a2[-3].__r_.__value_.__l.__size_, a3);
        break;
      case 5:
        sub_11CE244(a1, &a1[2].__r_.__value_.__r.__words[2], &a1[5].__r_.__value_.__l.__size_, &a1[8], &a2[-3].__r_.__value_.__l.__size_, a3);
        break;
      default:
LABEL_14:
        sub_11CDDDC(a1, &a1[2].__r_.__value_.__r.__words[2], &a1[5].__r_.__value_.__l.__size_, a3);
        v11 = &a1[8];
        if (&a1[8] != a2)
        {
          v12 = 0;
          v13 = 0;
          p_size = &a1[5].__r_.__value_.__l.__size_;
          while (1)
          {
            if (sub_11D17F8(a3, v11, p_size))
            {
              sub_11CF09C(v25, v11);
              v15 = v12;
              while (1)
              {
                v16 = (a1 + v15);
                v17 = *(&a1[8].__r_.__value_.__l.__size_ + v15);
                if ((v17 & 2) != 0)
                {
                  v17 = 0;
                }

                else if (v17)
                {
                  v17 = *(v17 & 0xFFFFFFFFFFFFFFFCLL);
                }

                v18 = v16[5].__r_.__value_.__r.__words[2];
                if ((v18 & 2) != 0)
                {
                  v18 = 0;
                }

                else if (v18)
                {
                  v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
                }

                if (v17 == v18)
                {
                  sub_15E0744(&v16[8], &v16[5].__r_.__value_.__l.__size_);
                }

                else
                {
                  sub_15E06F0(v16 + 8, &v16[5].__r_.__value_.__l.__size_);
                }

                if (v15 == -128)
                {
                  break;
                }

                v19 = sub_11D17F8(a3, v25, &a1[2].__r_.__value_.__r.__words[2] + v15);
                v15 -= 64;
                if ((v19 & 1) == 0)
                {
                  v20 = (a1 + v15 + 192);
                  if (v20 == v25)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_35;
                }
              }

              v20 = a1;
              if (a1 == v25)
              {
                goto LABEL_46;
              }

LABEL_35:
              size = v20->__r_.__value_.__l.__size_;
              if ((size & 2) != 0)
              {
                size = 0;
              }

              else if (size)
              {
                size = *(size & 0xFFFFFFFFFFFFFFFCLL);
              }

              v22 = v25[0].__r_.__value_.__l.__size_;
              if ((v25[0].__r_.__value_.__s.__data_[8] & 2) != 0)
              {
                v22 = 0;
              }

              else if (v25[0].__r_.__value_.__s.__data_[8])
              {
                v22 = *(v25[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
              }

              if (size == v22)
              {
                sub_15E0744(v20, v25);
              }

              else
              {
                sub_15E06F0(v20, v25);
              }

LABEL_46:
              if (++v13 == 8)
              {
                sub_15DFD6C(v25);
                return v11 + 64 == a2;
              }

              sub_15DFD6C(v25);
            }

            p_size = v11;
            v12 += 64;
            v11 += 64;
            if (v11 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
    goto LABEL_14;
  }

  v7 = (a2 - 64);
  v8 = sub_11D17F8(a3, &a2[-3].__r_.__value_.__l.__size_, a1);
  result = 1;
  if (v7 != a1 && v8)
  {
    v10 = a1->__r_.__value_.__l.__size_;
    if ((v10 & 2) != 0)
    {
      v10 = 0;
    }

    else if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v23 = a2[-3].__r_.__value_.__r.__words[2];
    if ((v23 & 2) != 0)
    {
      v23 = 0;
    }

    else if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v24 = &a2[-3].__r_.__value_.__l.__size_;
    if (v10 == v23)
    {
      sub_15E0744(a1, v24);
    }

    else
    {
      sub_1956DC4(a1, v24);
    }

    return 1;
  }

  return result;
}

std::string *sub_11CF09C(std::string *a1, uint64_t a2)
{
  sub_15DFAC8(a1, 0, 0);
  if (a1 != a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == v5)
    {
      sub_15E0744(a1, a2);
    }

    else
    {
      sub_15E06F0(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_11CF13C(uint64_t result, unsigned int *a2, uint64_t a3, std::string *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 6)
    {
      v10 = (a4 - result) >> 5;
      v11 = v10 + 1;
      v12 = result + ((v10 + 1) << 6);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && sub_11D17F8(a2, result + ((v10 + 1) << 6), v12 + 64))
      {
        v12 += 64;
        v11 = v13;
      }

      result = sub_11D17F8(a2, v12, v5);
      if ((result & 1) == 0)
      {
        sub_11CF09C(v20, v5);
        do
        {
          v14 = v12;
          if (v5 != v12)
          {
            size = v5->__r_.__value_.__l.__size_;
            if ((size & 2) != 0)
            {
              size = 0;
            }

            else if (size)
            {
              size = *(size & 0xFFFFFFFFFFFFFFFCLL);
            }

            v16 = *(v12 + 8);
            if ((v16 & 2) != 0)
            {
              v16 = 0;
            }

            else if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFCLL);
            }

            if (size == v16)
            {
              sub_15E0744(v5, v12);
            }

            else
            {
              sub_15E06F0(v5, v12);
            }
          }

          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = v6 + (v17 << 6);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if (sub_11D17F8(a2, v6 + (v17 << 6), v12 + 64))
          {
            v12 += 64;
          }

          else
          {
            v11 = v17;
          }

          v5 = v14;
        }

        while (!sub_11D17F8(a2, v12, v20));
        if (v14 != v20)
        {
          v18 = v14->__r_.__value_.__l.__size_;
          if ((v18 & 2) != 0)
          {
            v18 = 0;
          }

          else if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v19 = v20[0].__r_.__value_.__l.__size_;
          if ((v20[0].__r_.__value_.__s.__data_[8] & 2) != 0)
          {
            v19 = 0;
          }

          else if (v20[0].__r_.__value_.__s.__data_[8])
          {
            v19 = *(v20[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (v18 == v19)
          {
            sub_15E0744(v14, v20);
          }

          else
          {
            sub_15E06F0(v14, v20);
          }
        }

        return sub_15DFD6C(v20);
      }
    }
  }

  return result;
}

uint64_t sub_11CF358(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = result;
    sub_11CF09C(v25, result);
    v9 = 0;
    v10 = v4 >> 1;
    v11 = v8;
    do
    {
      v12 = v11;
      v13 = v11 + 64 * v9;
      v11 = (v13 + 64);
      v14 = 2 * v9;
      v9 = (2 * v9) | 1;
      v15 = v14 + 2;
      if (v14 + 2 < a4)
      {
        v16 = (v13 + 128);
        if (sub_11D17F8(a3, (v13 + 64), (v13 + 128)))
        {
          v11 = v16;
          v9 = v15;
        }
      }

      if (v12 != v11)
      {
        size = v12->__r_.__value_.__l.__size_;
        if ((size & 2) != 0)
        {
          size = 0;
        }

        else if (size)
        {
          size = *(size & 0xFFFFFFFFFFFFFFFCLL);
        }

        v18 = v11->__r_.__value_.__l.__size_;
        if ((v18 & 2) != 0)
        {
          v18 = 0;
        }

        else if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (size == v18)
        {
          sub_15E0744(v12, v11);
        }

        else
        {
          sub_15E06F0(v12, v11);
        }
      }
    }

    while (v9 <= v10);
    if (v11 == (a2 - 64))
    {
      if (v11 != v25)
      {
        v20 = v11->__r_.__value_.__l.__size_;
        if ((v20 & 2) != 0)
        {
          v20 = 0;
        }

        else if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v24 = v25[0].__r_.__value_.__l.__size_;
        if ((v25[0].__r_.__value_.__s.__data_[8] & 2) != 0)
        {
          v24 = 0;
        }

        else if (v25[0].__r_.__value_.__s.__data_[8])
        {
          v24 = *(v25[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v20 == v24)
        {
          sub_15E0744(v11, v25);
        }

        else
        {
          sub_15E06F0(v11, v25);
        }
      }
    }

    else
    {
      v19 = v11->__r_.__value_.__l.__size_;
      if ((v19 & 2) != 0)
      {
        v19 = 0;
      }

      else if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFCLL);
      }

      v21 = *(a2 - 56);
      if ((v21 & 2) != 0)
      {
        v21 = 0;
      }

      else if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      if (v19 == v21)
      {
        sub_15E0744(v11, a2 - 64);
      }

      else
      {
        sub_15E06F0(v11, a2 - 64);
      }

      if ((a2 - 64) != v25)
      {
        v22 = *(a2 - 56);
        if ((v22 & 2) != 0)
        {
          v22 = 0;
        }

        else if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v23 = v25[0].__r_.__value_.__l.__size_;
        if ((v25[0].__r_.__value_.__s.__data_[8] & 2) != 0)
        {
          v23 = 0;
        }

        else if (v25[0].__r_.__value_.__s.__data_[8])
        {
          v23 = *(v25[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v22 == v23)
        {
          sub_15E0744(a2 - 64, v25);
        }

        else
        {
          sub_15E06F0((a2 - 64), v25);
        }
      }

      sub_11CF618(v8, &v11[2].__r_.__value_.__r.__words[2], a3, (&v11[2].__r_.__value_.__r.__words[2] - v8) >> 6);
    }

    return sub_15DFD6C(v25);
  }

  return result;
}

uint64_t sub_11CF618(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + (v4 >> 1 << 6);
    v9 = a2 - 64;
    result = sub_11D17F8(a3, v8, a2 - 64);
    if (result)
    {
      sub_11CF09C(v17, v9);
      v10 = v9;
      do
      {
        v11 = v8;
        if (v10 != v8)
        {
          size = v10->__r_.__value_.__l.__size_;
          if ((size & 2) != 0)
          {
            size = 0;
          }

          else if (size)
          {
            size = *(size & 0xFFFFFFFFFFFFFFFCLL);
          }

          v13 = *(v8 + 8);
          if ((v13 & 2) != 0)
          {
            v13 = 0;
          }

          else if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFCLL);
          }

          if (size == v13)
          {
            sub_15E0744(v10, v8);
          }

          else
          {
            sub_15E06F0(v10, v8);
          }
        }

        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + (v7 << 6);
        v14 = sub_11D17F8(a3, v8, v17);
        v10 = v11;
      }

      while ((v14 & 1) != 0);
      if (v11 != v17)
      {
        v15 = v11->__r_.__value_.__l.__size_;
        if ((v15 & 2) != 0)
        {
          v15 = 0;
        }

        else if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
        }

        v16 = v17[0].__r_.__value_.__l.__size_;
        if ((v17[0].__r_.__value_.__s.__data_[8] & 2) != 0)
        {
          v16 = 0;
        }

        else if (v17[0].__r_.__value_.__s.__data_[8])
        {
          v16 = *(v17[0].__r_.__value_.__l.__size_ & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (v15 == v16)
        {
          sub_15E0744(v11, v17);
        }

        else
        {
          sub_15E06F0(v11, v17);
        }
      }

      return sub_15DFD6C(v17);
    }
  }

  return result;
}

void sub_11CF7B8(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_11CF7FC(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        a2[23] = 20;
        strcpy(a2, "currencies are mixed");
        return;
      }

      goto LABEL_8;
    }

    a2[23] = 21;
    strcpy(a2, "no surcharge provided");
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        a2[23] = 21;
        strcpy(a2, "no base fare provided");
        return;
      }

LABEL_8:
      a2[23] = 18;
      strcpy(a2, "unrecognised error");
      return;
    }

    a2[23] = 2;
    strcpy(a2, "OK");
  }
}

BOOL *sub_11CF8DC(BOOL *a1, void *a2)
{
  v7 = 21;
  strcpy(__p, "check_fare_enablement");
  v3 = sub_5F9D0(a2, __p);
  if (v7 < 0)
  {
    v5 = v3;
    operator delete(*__p);
    *a1 = v5;
  }

  else
  {
    *a1 = v3;
  }

  return a1;
}

void sub_11CF974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11CF990@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  sub_15D8B44(a5, 0, 0);
  v10 = sub_2C939C(*(a2 + 4072) + 24, 1u, 0);
  if (!v10 || (v11 = &v10[-*v10], *v11 < 0xDu) || (v12 = *(v11 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v32 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v13 = &v10[v12 + *&v10[v12]];
  v14 = &v13[-*v13];
  if (*v14 >= 5u && (v15 = *(v14 + 2)) != 0)
  {
    v16 = &v13[v15];
    v17 = *v16;
    v18 = *&v16[v17];
    if (v18 >= 0x17)
    {
      operator new();
    }

    v34 = *&v16[v17];
    if (v18)
    {
      memcpy(&__dst, &v16[v17 + 4], v18);
    }

    p_dst = (&__dst + v18);
  }

  else
  {
    v34 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  *(a5 + 16) |= 1u;
  v20 = *(a5 + 8);
  v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
  if (v20)
  {
    v21 = *v21;
  }

  sub_194EA30((a5 + 48), &__dst, v21);
  if (v34 < 0)
  {
    operator delete(__dst);
  }

  result = sub_585D8((a2 + 3896));
  v23 = *(a5 + 16);
  *(a5 + 56) = result;
  if (*a4 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  *(a5 + 16) = v23 | 6;
  *(a5 + 60) = v24;
  v26 = *(a3 + 8);
  for (i = *(a3 + 16); v26 != i; v26 += 296)
  {
    v27 = *(a5 + 40);
    if (v27 && (v28 = *(a5 + 32), v28 < *v27))
    {
      *(a5 + 32) = v28 + 1;
      v29 = *&v27[2 * v28 + 2];
    }

    else
    {
      v30 = sub_15E0CD4(*(a5 + 24));
      v29 = sub_19593CC(a5 + 24, v30);
    }

    result = sub_11CFC28(a1, v29, a2, v26, a4);
  }

  return result;
}

uint64_t sub_11CFC28(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(a2 + 16) |= 1u;
  result = *(a2 + 48);
  if (result)
  {
    v11 = a5[2];
    if (!a5[2])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *(a2 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      result = sub_15E12B4(*v13);
      *(a2 + 48) = result;
      v11 = a5[2];
      if (!a5[2])
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = sub_15E12B4(v13);
      *(a2 + 48) = result;
      v11 = a5[2];
      if (!a5[2])
      {
LABEL_7:
        *(result + 16) |= 1u;
        *(result + 24) = v11;
        goto LABEL_8;
      }
    }
  }

  if (v11 == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  v14 = *(a4 + 200);
  v15 = *(a4 + 208);
  while (v14 != v15)
  {
    if (!*(v14 + 24))
    {
      v16 = *v14;
      if (*v14 == *(v14 + 8))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v18 = sub_2D390(exception, "SPA journey has an empty public transport bundle", 0x30uLL);
      }

      if (*(v16 + 160))
      {
        sub_5AF20();
      }

      result = sub_11D0CC8(a1, a2, a3, a4, v16, a5);
      if (!result)
      {
        result = sub_15D9850(a2);
        break;
      }
    }

    v14 += 72;
  }

  if (!*(a2 + 32))
  {

    return sub_15D9850(a2);
  }

  return result;
}

uint64_t sub_11CFD9C@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  sub_15D8B44(a5, 0, 0);
  v10 = sub_3AFEE8(a2);
  v11 = sub_2C939C(v10, 1u, 0);
  if (!v11 || (v12 = &v11[-*v11], *v12 < 0xDu) || (v13 = *(v12 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v14 = &v11[v13 + *&v11[v13]];
  v15 = &v14[-*v14];
  if (*v15 >= 5u && (v16 = *(v15 + 2)) != 0)
  {
    v17 = &v14[v16];
    v18 = *v17;
    v19 = *&v17[v18];
    if (v19 >= 0x17)
    {
      operator new();
    }

    v35 = *&v17[v18];
    if (v19)
    {
      memcpy(&__dst, &v17[v18 + 4], v19);
    }

    p_dst = (&__dst + v19);
  }

  else
  {
    v35 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  *(a5 + 16) |= 1u;
  v21 = *(a5 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA30((a5 + 48), &__dst, v22);
  if (v35 < 0)
  {
    operator delete(__dst);
  }

  result = sub_3B0454(a2);
  v24 = *(a5 + 16);
  *(a5 + 56) = result;
  if (*a4 == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  *(a5 + 16) = v24 | 6;
  *(a5 + 60) = v25;
  v27 = *a3;
  for (i = a3[1]; v27 != i; v27 += 232)
  {
    v28 = *(a5 + 40);
    if (v28 && (v29 = *(a5 + 32), v29 < *v28))
    {
      *(a5 + 32) = v29 + 1;
      v30 = *&v28[2 * v29 + 2];
    }

    else
    {
      v31 = sub_15E0CD4(*(a5 + 24));
      v30 = sub_19593CC(a5 + 24, v31);
    }

    result = sub_11D0034(a1, v30, a2, v27, a4);
  }

  return result;
}

uint64_t sub_11D0034(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v107 = sub_3AFC64(a3);
  v108 = a3;
  v9 = sub_3AFEE8(a3);
  *(a2 + 16) |= 1u;
  result = *(a2 + 48);
  if (result)
  {
    v11 = a5[2];
    if (!a5[2])
    {
      goto LABEL_7;
    }

LABEL_6:
    if (v11 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(a2 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    result = sub_15E12B4(*v13);
    *(a2 + 48) = result;
    v11 = a5[2];
    if (!a5[2])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  result = sub_15E12B4(v13);
  *(a2 + 48) = result;
  v11 = a5[2];
  if (a5[2])
  {
    goto LABEL_6;
  }

LABEL_7:
  *(result + 16) |= 1u;
  *(result + 24) = v11;
LABEL_8:
  v103 = a5;
  v14 = *(a4 + 48);
  v98 = *(a4 + 56);
  if (v14 != v98)
  {
    v105 = v9 + 74;
    v101 = v9 + 77;
    v102 = a4;
    v99 = v9 + 80;
    v96 = v9 + 2;
    v97 = v9 + 83;
    while (1)
    {
      v100 = v14;
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = v15;
      if (v15 != v16)
      {
        while (*v17)
        {
          v17 += 144;
          if (v17 == v16)
          {
            goto LABEL_118;
          }
        }
      }

      if (v17 == v16)
      {
LABEL_118:
        exception = __cxa_allocate_exception(0x40uLL);
        v85 = sub_2D390(exception, "Journey has a segment bundle without a main segment", 0x33uLL);
      }

      v18 = *(v17 + 16) - *(v17 + 8);
      if (v18)
      {
        break;
      }

LABEL_10:
      v14 = v100 + 4;
      if (v100 + 4 == v98)
      {
        goto LABEL_113;
      }
    }

    v19 = 0;
    v20 = 0;
    v21 = 0x193D4BB7E327A977 * (v18 >> 4);
    v104 = v21;
    while (1)
    {
      v25 = (*(v17 + 8) + v19);
      if (v25[282])
      {
        goto LABEL_20;
      }

      v23 = sub_3A25A8(v107, v25[2] | (v25[1] << 32), 0, "trip");
      v26 = *(v23 + *(v23 - *v23 + 46));
      if (v26 > 0xFFFFFFFEFFFFFFFFLL || v26 == 0)
      {
        break;
      }

      v29 = a2;
      v30 = HIDWORD(v26);
      v115 = "fare_provider";
      LODWORD(v109) = v26;
      v116[0] = 0;
      v112 = v116;
      v113 = &v109;
      v31 = v9[482] + 1;
      v9[482] = v31;
      if (!*v9)
      {
        goto LABEL_119;
      }

      v32 = v9 + 74;
      if (*v105 == v26 || (v32 = v9 + 77, *v101 == v26) || (v32 = v9 + 80, *v99 == v26) || (v32 = v9 + 83, *v97 == v26))
      {
        ++v9[483];
        v32[1] = v31;
        v23 = v32[2];
        if (!v23)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v54 = v9[81];
        v55 = v9[78];
        v56 = v9[75];
        v57 = v56 >= v31;
        if (v56 < v31)
        {
          v31 = v9[75];
        }

        v58 = 24;
        if (v57)
        {
          v58 = 0;
        }

        v59 = v55 >= v31;
        if (v55 < v31)
        {
          v31 = v9[78];
        }

        v60 = 25;
        if (v59)
        {
          v60 = v58;
        }

        v61 = v54 >= v31;
        if (v54 >= v31)
        {
          v62 = v31;
        }

        else
        {
          v62 = v9[81];
        }

        v63 = v9[84];
        v64 = 26;
        if (v61)
        {
          v64 = v60;
        }

        v92 = v64;
        v94 = v62;
        v23 = sub_2D52A4(*v9, 6, v26, 1);
        v65 = 27;
        if (v63 >= v94)
        {
          v65 = v92;
        }

        v66 = &v96[3 * v65];
        *v66 = v109;
        v31 = v9[482];
        v66[1] = v31;
        v66[2] = v23;
        if (!v23)
        {
LABEL_119:
          sub_2C9894(&v112);
LABEL_120:
          v86 = __cxa_allocate_exception(0x40uLL);
          v111 = HIDWORD(v26);
          v116[0] = v26;
          v109 = sub_7FCF0(6u);
          v110 = v87;
          sub_2C956C("Failed to acquire entity ", &v115, " in quad node ", " at position ", " on layer ", &v109, &v112);
          if ((v114 & 0x80u) == 0)
          {
            v88 = &v112;
          }

          else
          {
            v88 = v112;
          }

          if ((v114 & 0x80u) == 0)
          {
            v89 = v114;
          }

          else
          {
            v89 = v113;
          }

          v90 = sub_2D390(v86, v88, v89);
        }
      }

      v33 = (v23 + *v23);
      v34 = (v33 - *v33);
      if (*v34 < 0x33u)
      {
        goto LABEL_120;
      }

      v35 = v34[25];
      if (!v35)
      {
        goto LABEL_120;
      }

      v36 = (v33 + v35 + *(v33 + v35));
      if (*v36 <= HIDWORD(v26))
      {
        goto LABEL_120;
      }

      v37 = (&v36[v30 + 1] + v36[v30 + 1]);
      v38 = (v37 - *v37);
      if (*v38 >= 9u && (v39 = v38[4]) != 0)
      {
        if ((*(v37 + v39) - 1) >= *v103)
        {
          goto LABEL_41;
        }
      }

      else if (!*v103)
      {
LABEL_41:
        v28 = 0;
        a2 = v29;
        a4 = v102;
        v21 = v104;
        if (*a1 != 1)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v115 = "fare_provider";
      LODWORD(v109) = v26;
      v116[0] = 0;
      v112 = v116;
      v113 = &v109;
      v40 = v31 + 1;
      v9[482] = v40;
      if (!*v9)
      {
        goto LABEL_105;
      }

      v41 = v9 + 74;
      if (*v105 == v26 || (v41 = v9 + 77, *v101 == v26) || (v41 = v9 + 80, *v99 == v26) || (v41 = v9 + 83, *v97 == v26))
      {
        ++v9[483];
        v41[1] = v40;
        v42 = v41[2];
        if (!v42)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v67 = v9[81];
        v68 = v9[78];
        v69 = v9[75];
        v70 = v69 >= v40;
        if (v69 < v40)
        {
          v40 = v9[75];
        }

        v71 = 24;
        if (v70)
        {
          v71 = 0;
        }

        v72 = v68 >= v40;
        if (v68 < v40)
        {
          v40 = v9[78];
        }

        v73 = 25;
        if (v72)
        {
          v73 = v71;
        }

        v74 = v67 >= v40;
        if (v67 >= v40)
        {
          v75 = v40;
        }

        else
        {
          v75 = v9[81];
        }

        v93 = v9[84];
        v95 = v75;
        v76 = 26;
        if (v74)
        {
          v76 = v73;
        }

        v91 = v76;
        v42 = sub_2D52A4(*v9, 6, v26, 1);
        v77 = 27;
        if (v93 >= v95)
        {
          v77 = v91;
        }

        v78 = &v96[3 * v77];
        *v78 = v109;
        v78[1] = v9[482];
        v78[2] = v42;
        if (!v42)
        {
LABEL_105:
          sub_2C9894(&v112);
LABEL_106:
          v79 = __cxa_allocate_exception(0x40uLL);
          v111 = HIDWORD(v26);
          v116[0] = v26;
          v109 = sub_7FCF0(6u);
          v110 = v80;
          sub_2C956C("Failed to acquire entity ", &v115, " in quad node ", " at position ", " on layer ", &v109, &v112);
          if ((v114 & 0x80u) == 0)
          {
            v81 = &v112;
          }

          else
          {
            v81 = v112;
          }

          if ((v114 & 0x80u) == 0)
          {
            v82 = v114;
          }

          else
          {
            v82 = v113;
          }

          v83 = sub_2D390(v79, v81, v82);
        }
      }

      v43 = (v42 + *v42);
      v44 = (v43 - *v43);
      if (*v44 < 0x33u)
      {
        goto LABEL_106;
      }

      v45 = v44[25];
      if (!v45)
      {
        goto LABEL_106;
      }

      v46 = (v43 + v45 + *(v43 + v45));
      if (*v46 <= HIDWORD(v26))
      {
        goto LABEL_106;
      }

      v47 = (&v46[v30 + 1] + v46[v30 + 1]);
      v48 = (v47 - *v47);
      if (*v48 < 7u)
      {
        v50 = 1;
        a2 = v29;
      }

      else
      {
        v49 = v48[3];
        a2 = v29;
        if (v49)
        {
          v50 = *(v47 + v49) == 0;
        }

        else
        {
          v50 = 1;
        }
      }

      a4 = v102;
      v23 = sub_3B0454(v108);
      v28 = v50 | v23;
      v21 = v104;
      if (*a1 == 1)
      {
        goto LABEL_59;
      }

LABEL_60:
      if (v20)
      {
        v51 = *(*(v17 + 8) + v19 - 8) == 0;
        v52 = *(a2 + 40);
        if (!v52)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v51 = 0;
        v52 = *(a2 + 40);
        if (!v52)
        {
          goto LABEL_18;
        }
      }

      v53 = *(a2 + 32);
      if (v53 < *v52)
      {
        *(a2 + 32) = v53 + 1;
        v24 = *&v52[2 * v53 + 2];
        goto LABEL_19;
      }

LABEL_18:
      sub_15E0DEC(*(a2 + 24));
      v23 = sub_19593CC(a2 + 24, v22);
      v24 = v23;
LABEL_19:
      result = sub_11D0834(v23, v24, v108, a4, v25, v51);
LABEL_20:
      ++v20;
      v19 += 1136;
      if (v21 == v20)
      {
        goto LABEL_10;
      }
    }

    v28 = 0;
    if (*a1 != 1)
    {
      goto LABEL_60;
    }

LABEL_59:
    if (!v28)
    {
      return sub_15D9850(a2);
    }

    goto LABEL_60;
  }

LABEL_113:
  if (!*(a2 + 32))
  {
    return sub_15D9850(a2);
  }

  return result;
}

void sub_11D07FC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_11D0834(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = sub_3AFC64(a3);
  v12 = sub_3AFB1C(a3);
  v13 = *(a5 + 4);
  v14 = *(a5 + 8) | (v13 << 32);
  v15 = sub_3A25A8(v11, v14, 0, "trip");
  v16 = (v15 - *v15);
  if (*v16 >= 5u && (v17 = v16[2]) != 0)
  {
    v18 = *(v15 + v17);
    v19 = sub_2C939C(v11, 1u, 0);
    if (!v19)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v18 = 0;
    v19 = sub_2C939C(v11, 1u, 0);
    if (!v19)
    {
      goto LABEL_53;
    }
  }

  v20 = &v19[-*v19];
  if (*v20 < 0xDu || (v21 = *(v20 + 6)) == 0)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x40uLL);
    v70 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v22 = &v19[v21 + *&v19[v21]];
  v23 = &v22[-*v22];
  if (*v23 >= 0xBu)
  {
    v24 = *(v23 + 5);
    if (v24)
    {
      if (v22[v24])
      {
        v18 = nullsub_1(v18);
      }
    }
  }

  *(a2 + 16) |= 2u;
  *(a2 + 32) = v18;
  v25 = *(a5 + 16);
  v26 = sub_3A231C(v11, v14, 0);
  v27 = &v26[-*v26];
  if (*v27 < 5u)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 2);
    if (*(v27 + 2))
    {
      v28 += &v26[*&v26[v28]];
    }
  }

  v29 = 4 * v13;
  v30 = (v28 + 4 * v13 + 4 + *(v28 + 4 * v13 + 4));
  v31 = (v30 - *v30);
  if (*v31 >= 0xDu && (v32 = v31[6]) != 0)
  {
    v33 = *(v30 + v32);
  }

  else
  {
    v33 = -1;
  }

  v72 = *&v26[24 * (v33 + v25) + 4 + *(v27 + 3) + *&v26[*(v27 + 3)]];
  v34 = sub_502230(v12, &v72);
  *(a2 + 16) |= 4u;
  *(a2 + 40) = v34;
  v35 = *(a5 + 20);
  v36 = sub_3A231C(v11, v14, 0);
  v37 = &v36[-*v36];
  if (*v37 < 5u)
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v37 + 2);
    if (*(v37 + 2))
    {
      v38 += &v36[*&v36[v38]];
    }
  }

  v39 = (v38 + v29 + 4 + *(v38 + v29 + 4));
  v40 = (v39 - *v39);
  if (*v40 >= 0xDu && (v41 = v40[6]) != 0)
  {
    v42 = *(v39 + v41);
  }

  else
  {
    v42 = -1;
  }

  v71 = *&v36[24 * (v42 + v35) + 4 + *(v37 + 3) + *&v36[*(v37 + 3)]];
  v43 = sub_502230(v12, &v71);
  v44 = *(a2 + 16);
  *(a2 + 48) = v43;
  *(a2 + 16) = v44 | 9;
  v45 = *(a2 + 24);
  if (!v45)
  {
    v46 = *(a2 + 8);
    v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
    if (v46)
    {
      v47 = *v47;
    }

    v45 = sub_15E0D70(v47);
    *(a2 + 24) = v45;
  }

  v48 = *(a5 + 4);
  v49 = *(a5 + 12);
  result = sub_3A231C(v11, *(a5 + 8) | (v48 << 32), 0);
  v51 = &result[-*result];
  v52 = *v51;
  if (v52 <= 4)
  {
    v55 = 0;
    v54 = (4 * v48 + 4 + dword_4[v48]);
    goto LABEL_40;
  }

  v53 = *(v51 + 2);
  if (*(v51 + 2))
  {
    v53 += &result[*&result[v53]];
  }

  v54 = (v53 + 4 * v48 + 4 + *(v53 + 4 * v48 + 4));
  if (v52 < 0xD)
  {
    v55 = 0;
    v56 = (v54 - *v54);
    if (*v56 < 0x15u)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v55 = *(v51 + 6);
  if (!v55)
  {
LABEL_40:
    v56 = (v54 - *v54);
    if (*v56 < 0x15u)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v55 += &result[*&result[v55]];
  v56 = (v54 - *v54);
  if (*v56 < 0x15u)
  {
    goto LABEL_44;
  }

LABEL_41:
  v57 = v56[10];
  if (v57)
  {
    v58 = *(v54 + v57);
    goto LABEL_45;
  }

LABEL_44:
  v58 = -1;
LABEL_45:
  v59 = v55 + 8 * (v58 + v49);
  v60 = *(v59 + 4);
  v61 = *(v59 + 6);
  LODWORD(v59) = *(v59 + 7);
  v62 = v45[4];
  v45[6] = v60;
  v45[7] = v61;
  v45[4] = v62 | 7;
  v45[8] = v59;
  v63 = *(a5 + 24);
  v64 = *(a2 + 16);
  *(a2 + 16) = v64 | 0x10;
  v65 = *(a5 + 36);
  v66 = v64 | 0x30;
  *(a2 + 16) = v64 | 0x30;
  *(a2 + 56) = v63;
  *(a2 + 64) = v65;
  if (*(a4 + 156) == 2)
  {
    v67 = *(a5 + 28);
    if (v67 != 0x7FFFFFFF && *(a5 + 32) == 1)
    {
      v66 = v64 | 0x70;
      *(a2 + 16) = v64 | 0x70;
      *(a2 + 72) = v67;
    }

    v68 = *(a5 + 40);
    if (v68 != 0x7FFFFFFF && *(a5 + 44) == 1)
    {
      v66 |= 0x80u;
      *(a2 + 80) = v68;
    }
  }

  *(a2 + 16) = v66 | 0x100;
  *(a2 + 88) = a6;
  return result;
}

unint64_t sub_11D0CC8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = a5;
  sub_A81424(a3, a5, &__p);
  v9 = __p;
  v94 = 0xCCCCCCCCCCCCCCCDLL * ((v97 - __p) >> 2);
  if (v97 == __p)
  {
LABEL_83:
    if (v9)
    {
      goto LABEL_84;
    }

    return v94;
  }

  v10 = 0;
  v11 = 0;
  v95 = a2;
  do
  {
    v17 = __p;
    v18 = sub_3A25A8(*(a3 + 4184) + 24, __ROR8__(*(__p + v10), 32), 0, "trip");
    v19 = (v18 - *v18);
    if (*v19 >= 0x2Fu)
    {
      v20 = v19[23];
      if (v20)
      {
        v22 = *(v18 + v20);
        v21 = *(v18 + v20 + 4);
        if (v21 != -1 && v22 != 0)
        {
          v24 = __ROR8__(v21 | (v22 << 32), 32);
          v25 = sub_11D1478(*(a3 + 4032) + 24, v24, 0, "fare_provider");
          v26 = (v25 - *v25);
          if (*v26 < 9u)
          {
            if (*a6)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v27 = v26[4];
            if (v27)
            {
              LOBYTE(v27) = *(v25 + v27) - 1;
            }

            if (v27 < *a6)
            {
LABEL_16:
              v28 = sub_11D1478(*(a3 + 4032) + 24, v24, 0, "fare_provider");
              v29 = (v28 - *v28);
              v31 = *v29 < 7u || (v30 = v29[3]) == 0 || *(v28 + v30) == 0;
              v32 = v31 | sub_585D8((a3 + 3896));
              if (*a1 != 1)
              {
                goto LABEL_22;
              }

              goto LABEL_21;
            }
          }
        }
      }
    }

    v32 = 0;
    if (*a1 != 1)
    {
      goto LABEL_22;
    }

LABEL_21:
    if ((v32 & 1) == 0)
    {
      v94 = 0;
      v9 = __p;
      goto LABEL_83;
    }

LABEL_22:
    v33 = *(a2 + 40);
    if (v33 && (v34 = *(a2 + 32), v34 < *v33))
    {
      *(a2 + 32) = v34 + 1;
      v35 = *&v33[2 * v34 + 2];
    }

    else
    {
      sub_15E0DEC(*(a2 + 24));
      v35 = sub_19593CC(a2 + 24, v36);
    }

    v37 = sub_3A25A8(*(a3 + 4184) + 24, __ROR8__(*&v17[v10], 32), 0, "trip");
    v38 = (v37 - *v37);
    if (*v38 >= 5u && (v39 = v38[2]) != 0)
    {
      v40 = *(v37 + v39);
    }

    else
    {
      v40 = 0;
    }

    v41 = sub_2C939C(*(a3 + 4184) + 24, 1u, 0);
    if (!v41 || (v42 = &v41[-*v41], *v42 < 0xDu) || (v43 = *(v42 + 6)) == 0)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v90 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
    }

    v44 = &v41[v43 + *&v41[v43]];
    v45 = &v44[-*v44];
    if (*v45 >= 0xBu)
    {
      v46 = *(v45 + 5);
      if (v46)
      {
        if (v44[v46])
        {
          v40 = nullsub_1(v40);
        }
      }
    }

    v47 = v6;
    *(v35 + 16) |= 2u;
    *(v35 + 32) = v40;
    v48 = *&v17[v10];
    v49 = *&v17[v10 + 12];
    v50 = sub_3A231C(*(a3 + 4184) + 24, __ROR8__(v48, 32), 0);
    v51 = &v50[-*v50];
    v52 = *v51;
    if (v52 <= 4)
    {
      v56 = 0;
      v54 = (4 * v48 + 4 + dword_4[v48]);
      v57 = (v54 - *v54);
      if (*v57 < 0xDu)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v53 = *(v51 + 2);
      if (*(v51 + 2))
      {
        v53 += &v50[*&v50[v53]];
      }

      v54 = (v53 + 4 * v48 + 4 + *(v53 + 4 * v48 + 4));
      if (v52 >= 7 && (v55 = *(v51 + 3)) != 0)
      {
        v56 = &v50[v55 + *&v50[v55]];
        v57 = (v54 - *v54);
        if (*v57 < 0xDu)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v56 = 0;
        v57 = (v54 - *v54);
        if (*v57 < 0xDu)
        {
          goto LABEL_49;
        }
      }
    }

    v58 = v57[6];
    if (v58)
    {
      v59 = *(v54 + v58);
      goto LABEL_50;
    }

LABEL_49:
    v59 = -1;
LABEL_50:
    v60 = sub_3A2E6C(v56, v59 + v49);
    v61 = sub_A4FC74((a3 + 4120), __ROR8__(*v60, 32));
    *(v35 + 16) |= 4u;
    *(v35 + 40) = v61;
    v62 = *&v17[v10];
    v63 = *&v17[v10 + 16];
    v64 = sub_3A231C(*(a3 + 4184) + 24, __ROR8__(v62, 32), 0);
    v65 = &v64[-*v64];
    v66 = *v65;
    if (v66 <= 4)
    {
      v70 = 0;
      v68 = (4 * v62 + 4 + dword_4[v62]);
      v71 = (v68 - *v68);
      if (*v71 < 0xDu)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v67 = *(v65 + 2);
      if (*(v65 + 2))
      {
        v67 += &v64[*&v64[v67]];
      }

      v68 = (v67 + 4 * v62 + 4 + *(v67 + 4 * v62 + 4));
      if (v66 >= 7 && (v69 = *(v65 + 3)) != 0)
      {
        v70 = &v64[v69 + *&v64[v69]];
        v71 = (v68 - *v68);
        if (*v71 < 0xDu)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v70 = 0;
        v71 = (v68 - *v68);
        if (*v71 < 0xDu)
        {
          goto LABEL_62;
        }
      }
    }

    v72 = v71[6];
    if (v72)
    {
      v73 = *(v68 + v72);
      goto LABEL_63;
    }

LABEL_62:
    v73 = -1;
LABEL_63:
    v74 = sub_3A2E6C(v70, v73 + v63);
    v75 = sub_A4FC74((a3 + 4120), __ROR8__(*v74, 32));
    v76 = *(v35 + 16);
    *(v35 + 48) = v75;
    *(v35 + 16) = v76 | 9;
    v77 = *(v35 + 24);
    v6 = v47;
    a2 = v95;
    if (!v77)
    {
      v78 = *(v35 + 8);
      v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
      if (v78)
      {
        v79 = *v79;
      }

      v77 = sub_15E0D70(v79);
      *(v35 + 24) = v77;
    }

    v80 = sub_BD5C90((a3 + 4184), &v17[v10]);
    v81 = v77[4];
    v77[6] = v80;
    v77[7] = BYTE2(v80);
    v77[4] = v81 | 7;
    v77[8] = HIBYTE(v80);
    if (v6[11] != -1)
    {
      v12 = v6[2];
      v13 = *(v35 + 16);
      *(v35 + 16) = v13 | 0x10;
      *(v35 + 56) = v12;
      v14 = v6[5];
      v15 = v13 | 0x30;
      v16 = 64;
LABEL_4:
      *(v35 + 16) = v15;
      *(v35 + v16) = v14;
      goto LABEL_5;
    }

    v82 = sub_A56700((a3 + 4184), &v17[v10], *&v17[v10 + 12], 0x7FFFFFFF);
    v84 = v83;
    v85 = sub_A56A5C((a3 + 4184), &v17[v10], *&v17[v10 + 16], 0x7FFFFFFF);
    v87 = *(v35 + 16);
    v15 = v87 | 0x30;
    *(v35 + 16) = v87 | 0x30;
    *(v35 + 56) = v82;
    *(v35 + 64) = v85;
    if (*(a4 + 4) != 2)
    {
      a2 = v95;
      goto LABEL_5;
    }

    if (HIDWORD(v82) == 0x7FFFFFFF)
    {
      a2 = v95;
      if (HIDWORD(v85) == 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    else
    {
      a2 = v95;
      if (v84 == 1)
      {
        v15 = v87 | 0x70;
        *(v35 + 16) = v87 | 0x70;
        *(v35 + 72) = v82 >> 32;
      }

      if (HIDWORD(v85) == 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    if (v86 == 1)
    {
      v14 = v85 >> 32;
      v15 |= 0x80u;
      v16 = 80;
      goto LABEL_4;
    }

LABEL_5:
    *(v35 + 16) = v15 | 0x100;
    *(v35 + 88) = v11++ != 0;
    v10 += 20;
  }

  while (v94 != v11);
  v9 = __p;
  v94 = 0xCCCCCCCCCCCCCCCDLL * ((v97 - __p) >> 2);
  if (!__p)
  {
    return v94;
  }

LABEL_84:
  v97 = v9;
  operator delete(v9);
  return v94;
}