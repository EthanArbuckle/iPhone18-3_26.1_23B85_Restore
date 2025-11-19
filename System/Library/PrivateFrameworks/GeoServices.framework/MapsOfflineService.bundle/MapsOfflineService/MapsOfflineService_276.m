void sub_10FB478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  sub_454784(v71 - 200);
  sub_1AB28(&a25);
  if (__p)
  {
    a62 = __p;
    operator delete(__p);
  }

  sub_34BE0(&a71);
  v73 = a19;
  v74 = *(v71 - 248);
  if (v74)
  {
    operator delete(v74);
    v73 = a19;
    if (!a19)
    {
LABEL_5:
      if (!a20)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!a19)
  {
    goto LABEL_5;
  }

  operator delete(v73);
  if (!a20)
  {
LABEL_6:
    v75 = *(v71 - 224);
    if (!v75)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a20);
  v75 = *(v71 - 224);
  if (!v75)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v71 - 216) = v75;
  operator delete(v75);
  _Unwind_Resume(a1);
}

void sub_10FB648(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E9A4(v5);
  if (*(a1 + 9768))
  {
    sub_681D7C(a2);
    sub_1103420();
  }

  *(a1 + 4320) = sub_7EA60(v4);
}

void sub_10FC914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
    v38 = a22;
    if (!a22)
    {
LABEL_3:
      v39 = a32;
      if (!a32)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v38 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v38);
  v39 = a32;
  if (!a32)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v39);
  _Unwind_Resume(exception_object);
}

void sub_10FCA0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(a3 + 16) != 1 || (v8 = sub_45AC50(a4), v9 = sub_588D8(v4), v8 == v9))
  {
LABEL_6:
    *(a1 + 10064) = *(a1 + 10056);
    *(a1 + 10040) = *(a1 + 10032);
    *(a1 + 10080) = 0;
    v11 = sub_1107EE0(a2);
    if (v11)
    {
      v12 = 0;
      v13 = *(a1 + 9936);
      do
      {
        *(v13 + 16) = *(v13 + 8);
        *(v13 + 40) = 0x7FFFFFFF;
        *(v13 + 48) = -NAN;
        *(v13 + 56) = 0x7FFFFFFFFFFFFFFFLL;
        *(v13 + 72) = 0;
        *v13 = v12;
        *(v13 + 4) = -1;
        v13 += 88;
        ++v12;
      }

      while (v11 != v12);
    }

    v14 = sub_73EDC(a2);
    v15 = *v14;
    v16 = *(v14 + 8);
    if (*v14 != v16)
    {
      do
      {
        while (1)
        {
          v17 = *v15;
          *(*(a1 + 9936) + 88 * v17 + 40) = 0;
          v18 = *(a1 + 9936) + 88 * v17;
          *(v18 + 48) = 0;
          *(v18 + 56) = 0;
          LODWORD(__p[0]) = 0;
          v19 = *(a1 + 10056);
          if (v17 < (*(a1 + 10064) - v19) >> 2 && *(v19 + 4 * v17) != -1)
          {
            break;
          }

          sub_F8B720(a1 + 10032, v17, __p);
          v15 += 50;
          if (v15 == v16)
          {
            goto LABEL_15;
          }
        }

        sub_F8B8B0((a1 + 10032), v17, __p);
        v15 += 50;
      }

      while (v15 != v16);
    }

LABEL_15:
    v89 = 0;
    v90 = 0;
    v91 = 0;
    if (!*(a1 + 10080))
    {
      goto LABEL_70;
    }

    v74 = v4;
    while (1)
    {
      v20 = *(a1 + 10032);
      v21 = *v20;
      v22 = v20[1];
      v87 = v21;
      v88 = v21;
      *(*(a1 + 10056) + 4 * v21) = -1;
      v23 = *(a1 + 10080) - 1;
      *(a1 + 10080) = v23;
      if (v23)
      {
        *v20 = *&v20[2 * v23];
        v24 = *(a1 + 10032);
        *(*(a1 + 10056) + 4 * *v24) = 0;
        v25 = *(a1 + 10080);
        if (v25 >= 2)
        {
          v26 = 0;
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v26 + 5;
            if (v29 >= v25)
            {
              v30 = v25;
            }

            else
            {
              v30 = v29;
            }

            if (v29 <= v28)
            {
              break;
            }

            v31 = v27;
            v32 = v24[2 * v27 + 1];
            v33 = &v24[2 * v28 + 1];
            v27 = -1;
            v34 = v32;
            do
            {
              v36 = *v33;
              v33 += 2;
              v35 = v36;
              if (v36 < v34)
              {
                v34 = v35;
                v27 = v28;
              }

              ++v28;
            }

            while (v28 < v30);
            if (v27 >= v25)
            {
              break;
            }

            v37 = 2 * v27;
            v38 = &v24[v37];
            v39 = 8 * v31;
            v40 = *&v24[v37];
            *v38 = *(v24 + v39);
            v38[1] = v32;
            *(v24 + v39) = v40;
            v24 = *(a1 + 10032);
            v41 = v24[v37];
            v42 = *(a1 + 10056);
            v43 = *(v24 + v39);
            LODWORD(v39) = *(v42 + 4 * v41);
            *(v42 + 4 * v41) = *(v42 + 4 * v43);
            *(v42 + 4 * v43) = v39;
            v26 = 4 * v27;
            v28 = (4 * v27) | 1;
            v25 = *(a1 + 10080);
          }

          while (v28 < v25);
        }
      }

      *(a1 + 10040) -= 8;
      if (sub_1108134(a2, v88))
      {
        break;
      }

      sub_110802C(a2, &v88, &v89);
      v44 = v89;
      v45 = v90;
      while (v44 != v45)
      {
        v51 = *v44;
        if (*(*v44 + 156) != 0x7FFFFFFF && *(v51 + 120) != -1 && *(v51 + 124) != 0x7FFFFFFF && *(v51 + 128) != 0x7FFFFFFFFFFFFFFFLL && (*a3 & *(v51 + 136)) == 0 && !(*(a3 + 8) & *(v51 + 144) | *(v51 + 136) & 0x800) && (sub_1100E44(a1, v51) & 1) == 0)
        {
          v52 = *v44;
          if ((*a3 & 1) == 0 || !*(*(a1 + 11824) + *v52))
          {
            v53 = v52[2];
            v54 = 39;
            if (*(a3 + 17))
            {
              v54 = 31;
            }

            v55 = v52[v54] + v22;
            LODWORD(__p[0]) = v55;
            v56 = *(a1 + 9936) + 88 * v53;
            v57 = *(v56 + 40);
            if (v57 == 0x7FFFFFFF || v55 < v57)
            {
              v59 = *(a1 + 10056);
              if (v53 >= (*(a1 + 10064) - v59) >> 2 || *(v59 + 4 * v53) == -1)
              {
                sub_F8B720(a1 + 10032, v53, __p);
              }

              else
              {
                sub_F8B8B0((a1 + 10032), v53, __p);
              }

              *(v56 + 40) = __p[0];
              v46 = v87;
              v47 = *(a1 + 9936) + 88 * v87;
              v48 = (*(v47 + 48) + *(*v44 + 120));
              v49 = (*(*v44 + 124) + *(v47 + 52));
              v50 = *(*v44 + 128) + *(v47 + 56);
              *(v56 + 48) = v48 | (v49 << 32);
              *(v56 + 56) = v50;
              *(v56 + 4) = v46;
              *(v56 + 32) = *v44;
              *v56 = v53;
            }

            v4 = v74;
          }
        }

        ++v44;
      }

      if (!*(a1 + 10080))
      {
        goto LABEL_70;
      }
    }

    *(v86 + 3) = 0;
    v86[0] = 0;
    if (*(a1 + 9872) != 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      goto LABEL_59;
    }

    sub_D7B0(__p);
    v65 = *a3;
    v66 = *(a3 + 8);
    sub_F62E04(v65, 0, ",", &v75);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v75;
    }

    else
    {
      v67 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v75.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v85, v67, size);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    sub_1102FF0(v66, 0, ",", &v75);
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v75;
    }

    else
    {
      v69 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v75.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v85, v69, v70);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    sub_DAE4(__p, &v75);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      v73 = v75.__r_.__value_.__l.__size_;
      operator delete(v75.__r_.__value_.__l.__data_);
      if (v73)
      {
        goto LABEL_94;
      }
    }

    else if (*(&v75.__r_.__value_.__s + 23))
    {
LABEL_94:
      sub_DAE4(__p, v81);
      if ((v82 & 0x80u) == 0)
      {
        v71 = v81;
      }

      else
      {
        v71 = v81[0];
      }

      if ((v82 & 0x80u) == 0)
      {
        v72 = v82;
      }

      else
      {
        v72 = v81[1];
      }

      v80 = 44;
      sub_1100D60(v71, v72, &v80, &v83);
      sub_23E08("AvoidedFeatures=", &v83, &v75);
      v61 = v75.__r_.__value_.__l.__size_;
      v62 = v75.__r_.__value_.__r.__words[0];
      v86[0] = v75.__r_.__value_.__r.__words[2];
      *(v86 + 3) = *(&v75.__r_.__value_.__r.__words[2] + 3);
      v60 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
      *(&v75.__r_.__value_.__s + 23) = 0;
      v75.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v82 < 0)
      {
        operator delete(v81[0]);
      }

      goto LABEL_106;
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
LABEL_106:
    sub_DBE4(__p);
LABEL_59:
    sub_10FF428(a1, &v87, __p);
    strcpy(&v75, "AvoidPath");
    *(&v75.__r_.__value_.__s + 23) = 9;
    if (v60 < 0)
    {
      sub_325C(v76, v62, v61);
    }

    else
    {
      v76[0] = v62;
      v76[1] = v61;
      *v77 = v86[0];
      *&v77[3] = *(v86 + 3);
      v78 = v60;
    }

    v79 = -1;
    v63 = sub_11000CC(a1, __p, a2, v4, 0, 1, &v75);
    if (v78 < 0)
    {
      operator delete(v76[0]);
      if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_64:
        v64 = __p[0];
        if (!__p[0])
        {
LABEL_66:
          if (v63)
          {
            ++*(a1 + 4364);
            ++*(a1 + 4344);
          }

          if (v60 < 0)
          {
            operator delete(v62);
          }

LABEL_70:
          if (v89)
          {
            v90 = v89;
            operator delete(v89);
          }

          return;
        }

LABEL_65:
        __p[1] = v64;
        operator delete(v64);
        goto LABEL_66;
      }
    }

    else if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    operator delete(v75.__r_.__value_.__l.__data_);
    v64 = __p[0];
    if (!__p[0])
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v10 = v9;
  while ((*a3 & sub_F63EFC(v8)) != 0)
  {
    v8 += 6;
    if (v8 == v10)
    {
      goto LABEL_6;
    }
  }
}

void sub_10FD128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_DBE4(&a33);
  v36 = *(v34 - 112);
  if (!v36)
  {
    _Unwind_Resume(a1);
  }

  *(v34 - 104) = v36;
  operator delete(v36);
  _Unwind_Resume(a1);
}

void sub_10FD23C()
{
  v1 = 0u;
  v2 = 0u;
  v3 = 1065353216;
  sub_5C0C0(v0);
}

void sub_10FF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, void *a61)
{
  sub_3DB9A4(&a48);
  v62 = a61;
  if (a61)
  {
    do
    {
      v64 = *v62;
      v65 = v62[9];
      if (v65)
      {
        v62[10] = v65;
        operator delete(v65);
      }

      v66 = v62[6];
      if (v66)
      {
        v62[7] = v66;
        operator delete(v66);
      }

      v67 = v62[3];
      if (v67)
      {
        v62[4] = v67;
        operator delete(v67);
      }

      operator delete(v62);
      v62 = v64;
    }

    while (v64);
  }

  v63 = __p;
  __p = 0;
  if (v63)
  {
    operator delete(v63);
  }

  _Unwind_Resume(a1);
}

void sub_10FF428(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = -1;
  *(a3 + 52) = 0x7FFFFFFF;
  *(a3 + 56) = 0;
  v5 = *a2;
  v6 = *(a1 + 9936) + 88 * v5;
  *(a3 + 48) = *(v6 + 40);
  *(a3 + 32) = *(v6 + 48);
  do
  {
    v29 = *(v6 + 32);
    sub_4C7358(a3, &v29);
    v7 = *(a1 + 9936);
    LODWORD(v5) = *(v7 + 88 * v5 + 4);
    v6 = v7 + 88 * v5;
  }

  while (*(v6 + 4) != -1);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = (v9 - 8);
  if (*a3 != v9 && v10 > v8)
  {
    v12 = (v9 - 16);
    v13 = &v8->i8[8];
    if (v9 - 16 > &v8->u64[1])
    {
      v13 = (v9 - 16);
    }

    v14 = (v13 - 8);
    if (v14 == v8)
    {
      v15 = *a3;
    }

    else
    {
      v15 = &v8->i8[1];
    }

    v16 = v14 == v8;
    v17 = (v14 - v15) >> 4;
    if (!v16)
    {
      ++v17;
    }

    if (v17 < 0x13 || v8 < v9 && v9 - 8 * v17 - 8 < &v8->u64[v17 + 1])
    {
      goto LABEL_21;
    }

    v18 = v17 + 1;
    v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v10 - 8 * v19);
    v20 = (v8 + 8 * v19);
    v21 = v8 + 1;
    v22 = v19;
    do
    {
      v23 = v21[-1];
      v24 = *v21;
      v25 = vextq_s8(v12[-1], v12[-1], 8uLL);
      v21[-1] = vextq_s8(*v12, *v12, 8uLL);
      *v21 = v25;
      v12[-1] = vextq_s8(v24, v24, 8uLL);
      *v12 = vextq_s8(v23, v23, 8uLL);
      v21 += 2;
      v12 -= 2;
      v22 -= 4;
    }

    while (v22);
    v8 = v20;
    if (v18 != v19)
    {
LABEL_21:
      v26 = &v8->u64[1];
      do
      {
        v27 = *(v26 - 8);
        *(v26 - 8) = v10->i64[0];
        v10->i64[0] = v27;
        v10 = (v10 - 8);
        v28 = v26 >= v10;
        v26 += 8;
      }

      while (!v28);
    }

    v8 = *a3;
  }

  *(a3 + 24) = *(v8->i64[0] + 4);
  *(a3 + 28) = *(*(*(a3 + 8) - 8) + 8);
  sub_10FF5FC(a1, a3);
}

void sub_10FF5DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10FF5FC(uint64_t a1, unsigned int ***a2)
{
  v3 = *(a1 + 10008);
  v4 = *(a1 + 10016);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      *(*(a1 + 9984) + ((v5 >> 3) & 0x1FF8)) &= ~(1 << v5);
      *(*(a1 + 9960) + 4 * v5) = 0x7FFFFFFF;
    }

    while (v3 != v4);
    v3 = *(a1 + 10008);
  }

  *(a1 + 10016) = v3;
  v6 = *a2;
  v40 = a2[1];
  if (*a2 != v40)
  {
    do
    {
      v7 = *(a1 + 10136) + 24 * **v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      while (v9 != v8)
      {
        v10 = *v9;
        v15 = *(a1 + 9968);
        v16 = *(a1 + 9960);
        v17 = (v15 - v16) >> 2;
        if (v17 <= v10)
        {
          v18 = v10 + 1;
          v19 = v18 - v17;
          v20 = *(a1 + 9976);
          if (v19 > (v20 - v15) >> 2)
          {
            v21 = v20 - v16;
            if (v21 >> 1 > v18)
            {
              v18 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v18 = 0x3FFFFFFFFFFFFFFFLL;
            }

            if (!(v18 >> 62))
            {
              operator new();
            }

            goto LABEL_46;
          }

          memset_pattern16(*(a1 + 9968), &unk_2266850, 4 * v19);
          *(a1 + 9968) = v15 + 4 * v19;
          sub_4D9168(a1 + 9984, *v9 + 1, 0);
          v10 = *v9;
        }

        v11 = *(a1 + 9984);
        v12 = *(v11 + 8 * (v10 >> 6));
        if (((1 << v10) & v12) == 0)
        {
          *(v11 + 8 * (v10 >> 6)) = (1 << v10) | v12;
          v22 = *(a1 + 10016);
          v23 = *(a1 + 10024);
          if (v22 >= v23)
          {
            v25 = *(a1 + 10008);
            v26 = v22 - v25;
            v27 = (v22 - v25) >> 1;
            if (v27 <= -2)
            {
              sub_1794();
            }

            v28 = v23 - v25;
            if (v28 <= v27 + 1)
            {
              v29 = v27 + 1;
            }

            else
            {
              v29 = v28;
            }

            if (v28 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v30 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v29;
            }

            if (v30)
            {
              if ((v30 & 0x8000000000000000) == 0)
              {
                operator new();
              }

LABEL_46:
              sub_1808();
            }

            v31 = (v22 - v25) >> 1;
            v32 = (2 * v27);
            v33 = (2 * v27 - 2 * v31);
            *v32 = v10;
            v24 = v32 + 1;
            memcpy(v33, v25, v26);
            *(a1 + 10008) = v33;
            *(a1 + 10016) = v24;
            *(a1 + 10024) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v22 = v10;
            v24 = v22 + 2;
          }

          *(a1 + 10016) = v24;
          v10 = *v9;
        }

        v13 = *(a1 + 9960);
        v14 = *(v13 + 4 * v10);
        if (v14 == 0x7FFFFFFF)
        {
          v14 = 0;
        }

        *(v13 + 4 * v10) = v14 + (*v6)[39];
        ++v9;
      }

      ++v6;
    }

    while (v6 != v40);
  }

  *(a2 + 13) = 0;
  v34 = *(a1 + 10008);
  v35 = *(a1 + 10016);
  if (v34 != v35)
  {
    v36 = 0;
    do
    {
      v37 = *(*(a1 + 9960) + 4 * *v34);
      if (v37 != 0x7FFFFFFF)
      {
        if (v36 >= v37)
        {
          v38 = a2 + 13;
        }

        else
        {
          v38 = (*(a1 + 9960) + 4 * *v34);
        }

        v36 = *v38;
        *(a2 + 13) = v36;
      }

      ++v34;
    }

    while (v34 != v35);
  }
}

uint64_t sub_10FF980(uint64_t a1, void *a2)
{
  v12 = a1;
  v2 = a2[1] - *a2;
  if (v2)
  {
    v5 = 0;
    v6 = v2 >> 3;
    do
    {
      v7 = *(*a2 + 8 * v5);
      v8 = *(a1 + 11800) + 2 * *v7;
      if (*(v7 + 40) == 1)
      {
        *v8 = 257;
      }

      else
      {
        if ((*(v8 + 1) & 1) == 0)
        {
          ++*(a1 + 4372);
          *(a1 + 4376) += *(v7 + 16);
          sub_10FFAA4(&v12, a2, v5, v11);
          v9 = sub_10FFF54(a1, v11);
          *v8 = v9 ^ 1 | 0x100;
          *(a1 + 4384) += v9;
          sub_4547F0(v11);
        }

        if (*v8 != 1)
        {
          return 0;
        }
      }

      ++v5;
    }

    while (v6 != v5);
  }

  return 1;
}

uint64_t sub_10FFAA4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  sub_F6BEE8(v47);
  if (a3)
  {
    v6 = *(v5 + 9856);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3;
      do
      {
        --v7;
        v8 = *(*a2 + 8 * v7);
        if (*(v8 + 40))
        {
          break;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v9 != v10)
        {
          operator new();
        }
      }

      while (v7 && v6 >= 0);
    }
  }

  v11 = a3;
  sub_F6C6A0(v47, (*(*(*a2 + 8 * a3) + 24) - *(*(*a2 + 8 * a3) + 16)) >> 3);
  v12 = *(*a2 + 8 * a3);
  v13 = *(v12 + 16);
  for (i = *(v12 + 24); v13 != i; ++v13)
  {
    sub_F6C3B8(v47, *v13, 0);
  }

  v15 = *(v5 + 9856);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    do
    {
      if (++v11 >= ((a2[1] - *a2) >> 3))
      {
        break;
      }

      v17 = *(*a2 + 8 * v11);
      if (*(v17 + 40))
      {
        break;
      }

      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v18 != v19)
      {
        v20 = v18 + 8;
        do
        {
          while (1)
          {
            sub_F6C3B8(v47, *(v20 - 8), 0);
            v22 = **(v20 - 8);
            v23 = (v22 - *v22);
            if (*v23 < 9u)
            {
              break;
            }

            v24 = v23[4];
            if (!v24)
            {
              break;
            }

            v16 += *(v22 + v24);
            v15 = *(v5 + 9856);
            v25 = v16 > v15 || v20 == v19;
            v20 += 8;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          v15 = *(v5 + 9856);
          v21 = v16 > v15 || v20 == v19;
          v20 += 8;
        }

        while (!v21);
      }

LABEL_13:
      ;
    }

    while (v16 <= v15);
  }

  *a4 = *v47;
  *(a4 + 16) = *&v47[16];
  memset(v47, 0, sizeof(v47));
  *(a4 + 24) = v48;
  *(a4 + 40) = v49;
  v48 = 0u;
  v49 = 0;
  *(a4 + 96) = v53;
  v26 = v52;
  *(a4 + 64) = v51;
  *(a4 + 80) = v26;
  *(a4 + 48) = v50;
  *(a4 + 104) = v54;
  *(a4 + 120) = v55;
  v54 = 0u;
  v55 = 0;
  *(a4 + 128) = v56;
  v27 = v59;
  *(a4 + 144) = v57;
  v56 = 0u;
  *(a4 + 152) = v58;
  *(a4 + 168) = v27;
  v58 = 0u;
  v57 = 0;
  v59 = 0;
  v28 = v60;
  v29 = v61;
  v30 = v64;
  *(a4 + 208) = v62;
  *(a4 + 176) = v28;
  *(a4 + 192) = v29;
  *(a4 + 216) = v63;
  *(a4 + 232) = v30;
  v63 = 0u;
  v64 = 0;
  *(a4 + 240) = v65;
  v31 = v82;
  *(a4 + 256) = v66;
  v65 = 0u;
  v32 = v67;
  v33 = v69;
  *(a4 + 280) = v68;
  *(a4 + 296) = v33;
  *(a4 + 264) = v32;
  v34 = v70;
  v35 = v71;
  v36 = v73;
  *(a4 + 344) = v72;
  *(a4 + 360) = v36;
  *(a4 + 312) = v34;
  *(a4 + 328) = v35;
  v37 = v74;
  v38 = v75;
  v39 = v77;
  *(a4 + 408) = v76;
  *(a4 + 424) = v39;
  *(a4 + 376) = v37;
  *(a4 + 392) = v38;
  v40 = v78;
  v41 = v79;
  v42 = v81;
  *(a4 + 472) = v80;
  *(a4 + 488) = v42;
  *(a4 + 440) = v40;
  *(a4 + 456) = v41;
  *(a4 + 504) = v31;
  v66 = 0;
  v82 = 0;
  v43 = v84;
  *(a4 + 512) = v83;
  *(a4 + 528) = v43;
  *(a4 + 544) = v85;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  return sub_4547F0(v47);
}

void sub_10FFF20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  sub_4547F0(&a13);
  _Unwind_Resume(a1);
}

unint64_t sub_10FFF54(uint64_t a1, void *a2)
{
  result = sub_F6D024(a2);
  if (result)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = sub_F6D17C(a2, v7);
      if (*(a1 + 9417) != 1 || (v9 = v8[1]) == 0 || (v10 = (v9 - *v9), *v10 < 0x11u) || (v11 = v10[8]) == 0 || (*(v9 + v11) & 4) == 0)
      {
        if (*(a1 + 9416) != 1 || (v12 = (*v8 - **v8), *v12 < 0x2Fu) || (v13 = v12[23]) == 0 || ((v14 = *(*v8 + v13), v15 = v14 > 0x2A, v16 = (1 << v14) & 0x50426810004, !v15) ? (v17 = v16 == 0) : (v17 = 1), v17))
        {
          if (v6 >= *(a1 + 9408))
          {
            if (sub_1102008(a1, a2, v7))
            {
              return 1;
            }

            v6 = 0;
          }

          else
          {
            v18 = (*v8 - **v8);
            if (*v18 >= 9u)
            {
              v19 = v18[4];
              if (v19)
              {
                v6 += *(*v8 + v19);
              }
            }
          }
        }
      }

      if (v5 == ++v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_11000CC(uint64_t a1, unsigned int ***a2, void *a3, uint64_t *a4, char a5, int a6, uint64_t a7)
{
  v9 = sub_F73E78(a4);
  v11 = *a2;
  v10 = a2[1];
  v65 = a2;
  if (*a2 != v10)
  {
    v12 = v9;
    do
    {
      v14 = *(a1 + 10136) + 24 * **v11;
      v16 = *(v14 + 8);
      v15 = *(v14 + 16);
      if (v16 < v15)
      {
        *v16 = v12;
        v13 = (v16 + 1);
      }

      else
      {
        v17 = *v14;
        v18 = v16 - *v14;
        v19 = v18 >> 1;
        if (v18 >> 1 <= -2)
        {
          sub_1794();
        }

        v20 = v15 - v17;
        if (v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = v20;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1808();
        }

        *(2 * v19) = v12;
        v13 = 2 * v19 + 2;
        memcpy(0, v17, v18);
        *v14 = 0;
        *(v14 + 8) = v13;
        *(v14 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      *(v14 + 8) = v13;
      ++v11;
    }

    while (v11 != v10);
  }

  sub_1100700(a1, v65, a3, &v77);
  if (*(a1 + 9801))
  {
    sub_D7B0(&v70);
    v38 = *(a7 + 47);
    if (v38 >= 0)
    {
      v39 = a7 + 24;
    }

    else
    {
      v39 = *(a7 + 24);
    }

    if (v38 >= 0)
    {
      v40 = *(a7 + 47);
    }

    else
    {
      v40 = *(a7 + 32);
    }

    v41 = sub_4A5C(&v72, v39, v40);
    v42 = sub_4A5C(v41, " PathGraphExtStg=", 17);
    v43 = *(a7 + 23);
    if (v43 >= 0)
    {
      v44 = a7;
    }

    else
    {
      v44 = *a7;
    }

    if (v43 >= 0)
    {
      v45 = *(a7 + 23);
    }

    else
    {
      v45 = *(a7 + 8);
    }

    sub_4A5C(v42, v44, v45);
    if (*(a7 + 48) == -1)
    {
      sub_4A5C(&v72, "-", 1);
      std::ostream::operator<<();
    }

    v46 = sub_4A5C(&v72, " reference_cost=", 16);
    v47 = sub_706EC(v46, v65[4], v65[5]);
    v48 = sub_4A5C(v47, " time=", 6);
    sub_72140(v48, *(v65 + 12));
    sub_DAE4(&v70, v68);
    v49 = sub_58BBC(&v77);
    if ((v69 & 0x80u) == 0)
    {
      v50 = v68;
    }

    else
    {
      v50 = v68[0];
    }

    if ((v69 & 0x80u) == 0)
    {
      v51 = v69;
    }

    else
    {
      v51 = v68[1];
    }

    std::string::append(v49, v50, v51);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }

    sub_DBE4(&v70);
    if (a5)
    {
LABEL_41:
      if (*(a1 + 9872) == 1)
      {
        v52 = sub_F73E78(a4);
        sub_F74004(a4, &v77, a6);
        if (v52 != sub_F73E78(a4))
        {
          sub_D7B0(&v70);
          v53 = *(a7 + 47);
          if (v53 >= 0)
          {
            v54 = a7 + 24;
          }

          else
          {
            v54 = *(a7 + 24);
          }

          if (v53 >= 0)
          {
            v55 = *(a7 + 47);
          }

          else
          {
            v55 = *(a7 + 32);
          }

          v56 = sub_4A5C(&v72, v54, v55);
          v57 = sub_4A5C(v56, " reference_cost=", 16);
          v58 = sub_706EC(v57, v65[4], v65[5]);
          v59 = sub_4A5C(v58, " time=", 6);
          sub_72140(v59, *(v65 + 12));
          sub_DAE4(&v70, v66);
          sub_10F7F1C(v68, a7, v66, *(a7 + 48));
          sub_11D4B54(&v77, (a1 + 9880), v68, 0);
          sub_1AB28(v68);
          if (v67 < 0)
          {
            operator delete(v66[0]);
          }

          sub_DBE4(&v70);
          v33 = 1;
          if (v80 < 0)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        }
      }

      else
      {
        sub_F74288(a4, &v77, a6);
      }

      v33 = 1;
      if (v80 < 0)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else if (a5)
  {
    goto LABEL_41;
  }

  v23 = nullsub_1(&v77);
  v24 = *v23;
  v25 = *(v23 + 8);
  if (*v23 == v25)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_1168CF4(a1 + 4432, v24, &v70);
    if (v70 == v71)
    {
      v27 = __p;
      if (v73 == v74)
      {
        v26 = __p != v76;
        if (!__p)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v26 = 1;
        if (!__p)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v26 = 1;
      v27 = __p;
      if (!__p)
      {
        goto LABEL_35;
      }
    }

    v28 = v76;
    v29 = v27;
    if (v76 != v27)
    {
      v30 = v76;
      do
      {
        v32 = *(v30 - 3);
        v30 -= 24;
        v31 = v32;
        if (v32)
        {
          *(v28 - 2) = v31;
          operator delete(v31);
        }

        v28 = v30;
      }

      while (v30 != v27);
      v29 = __p;
    }

    v76 = v27;
    operator delete(v29);
LABEL_35:
    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }

    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v26)
    {
      break;
    }

    v24 += 69;
    if (v24 == v25)
    {
      goto LABEL_41;
    }
  }

  if (*(a1 + 9872) == 1)
  {
    sub_3608D0(v68, "maneuver-closure");
    sub_10F7F1C(&v70, a7, v68, *(a7 + 48));
    sub_11D4B54(&v77, (a1 + 9880), &v70, 1);
    sub_1AB28(&v70);
    if (v69 < 0)
    {
      operator delete(v68[0]);
    }
  }

  v33 = 0;
  if (v80 < 0)
  {
LABEL_44:
    operator delete(v79);
  }

LABEL_45:
  v34 = v77;
  if (v77)
  {
    v35 = v78;
    v36 = v77;
    if (v78 != v77)
    {
      do
      {
        v35 = sub_4547F0(v35 - 552);
      }

      while (v35 != v34);
      v36 = v77;
    }

    v78 = v34;
    operator delete(v36);
  }

  return v33;
}

void sub_110062C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_1AB28(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
    sub_454784(v31 - 136);
    _Unwind_Resume(a1);
  }

  sub_454784(v31 - 136);
  _Unwind_Resume(a1);
}

void sub_1100700(uint64_t a1@<X0>, unsigned int ***a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v57 = 0;
  v56[0] = &v57 + 1;
  v56[1] = &v57;
  v56[2] = a1;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v8 = sub_49E278(&v53);
  v9 = *(a2 + 6);
  v54 = v8;
  v10 = sub_11081F4(a3, v9);
  sub_F68F20(v8 - 552, v10);
  v12 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

  if (v11 - 1 == v12)
  {
    v13 = 0;
    v14 = *a2;
    do
    {
LABEL_8:
      v20 = *v14++;
      v13 += (*(v20 + 24) - *(v20 + 16)) >> 3;
    }

    while (v14 != v11);
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0;
  v17 = (((v11 - 1) - v12) >> 3) + 1;
  v14 = &v12[8 * (v17 & 0x3FFFFFFFFFFFFFFELL)];
  v18 = v12 + 8;
  v19 = v17 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    v15 += (*(*(v18 - 1) + 24) - *(*(v18 - 1) + 16)) >> 3;
    v16 += (*(*v18 + 24) - *(*v18 + 16)) >> 3;
    v18 += 2;
    v19 -= 2;
  }

  while (v19);
  v13 = v16 + v15;
  if (v17 != (v17 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_F6C6A0(v54 - 552, v13);
  v21 = *a2;
  v22 = a2[1];
  if (*a2 != v22)
  {
    do
    {
      v23 = *v21;
      v24 = (*v21)[2];
      if (*(*v21 + 40) == 1)
      {
        v25 = v23[1];
        sub_1100B5C(v56, v54 - 552);
        v26 = sub_1108230(a3, v25);
        v27 = *(v26 + 16);
        v51[0] = *v26;
        v51[1] = v27;
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        v30 = *(v26 + 64);
        v52 = *(v26 + 80);
        v51[3] = v29;
        v51[4] = v30;
        v51[2] = v28;
        sub_F6901C(v54 - 552, v51);
        v31 = v54;
        if (v54 >= v55)
        {
          v32 = sub_49E278(&v53);
        }

        else
        {
          sub_F6BEE8(v54);
          v32 = v31 + 552;
        }

        v54 = v32;
        v37 = sub_1108260(a3, v24);
        v38 = *(v37 + 16);
        v49[0] = *v37;
        v49[1] = v38;
        v39 = *(v37 + 32);
        v40 = *(v37 + 48);
        v41 = *(v37 + 64);
        v50 = *(v37 + 80);
        v49[3] = v40;
        v49[4] = v41;
        v49[2] = v39;
        sub_F68F20(v54 - 552, v49);
        v57 = 0;
      }

      else
      {
        sub_F6E648(v54 - 552, *(v23 + 17) & 0xFFFFFFFFFFF9FFFCLL);
        v33 = *v21;
        v34 = **v21;
        HIBYTE(v57) = (HIBYTE(v57) | *(*(a1 + 11824) + v34)) != 0;
        LOBYTE(v57) = (v57 | *(*(a1 + 11848) + v34)) != 0;
        if (v33[20] && *(v33 + 6) && *(v33 + 7))
        {
          sub_F6C100(v54 - 552, *(v33 + 11), v33 + 6, *(v33 + 23) != *(v33 + 24));
          sub_1100B5C(v56, v54 - 552);
          if (sub_1108134(a3, v24))
          {
            v47 = v54;
            v48 = sub_110820C(a3, v24);
            sub_F6901C(v47 - 552, v48);
            sub_F63300(a4, &v53);
            goto LABEL_26;
          }
        }

        else
        {
          v35 = *(v33 + 2);
          for (i = *(v33 + 3); v35 != i; ++v35)
          {
            sub_F6C3B8((v54 - 552), *v35, *(*v21 + 23) != *(*v21 + 24));
          }
        }
      }

      ++v21;
    }

    while (v21 != v22);
  }

  sub_1100B5C(v56, v54 - 552);
  v42 = v54;
  v43 = sub_110820C(a3, *(a2 + 7));
  sub_F6901C(v42 - 552, v43);
  sub_F63300(a4, &v53);
LABEL_26:
  v44 = v53;
  if (v53)
  {
    v45 = v54;
    v46 = v53;
    if (v54 != v53)
    {
      do
      {
        v45 = sub_4547F0(v45 - 552);
      }

      while (v45 != v44);
      v46 = v53;
    }

    v54 = v44;
    operator delete(v46);
  }
}

void sub_1100AE0(_Unwind_Exception *a1)
{
  *(v2 - 128) = v1;
  sub_487EC4((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_1100B5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (**a1 == 1)
  {
    sub_F6BA80(a2, 0);
    if (**(a1 + 8) != 1)
    {
LABEL_3:
      if (!sub_F6E658(a2, 0))
      {
        goto LABEL_8;
      }

LABEL_7:
      if (sub_F6E658(a2, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }
  }

  else if (**(a1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_F6BA80(a2, 1);
  if (sub_F6E658(a2, 0))
  {
    goto LABEL_7;
  }

LABEL_8:
  v5 = sub_F6C814(a2);
  sub_43ECB4(v4 + 4392, v5, &__p);
  v6 = __p;
  v7 = __p != v22;
  if (__p == v22)
  {
    v7 = 0;
  }

  else
  {
    while (*(**v6 + 464 * v6[1] + 352) != 1)
    {
      v6 += 2;
      if (v6 == v22)
      {
        goto LABEL_14;
      }
    }

    v7 |= 2uLL;
  }

LABEL_14:
  sub_F6E648(a2, v7);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

LABEL_16:
  v8 = sub_73F1C(a2);
  v9 = *(v4 + 9928);
  if (*(v8 + 82))
  {
    v10 = 0x40000;
  }

  else
  {
    v10 = 0;
  }

  v13 = v9 > -1 && ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v9 - 1) < 0xFFFFFFFFFFFFFLL || (v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v13 && *(v8 + 73) == 1 && *(v8 + 72) == 1)
  {
    v14 = *(v8 + 24);
    if ((*&v14 > -1 && ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL || (*&v14 & 0x7FFFFFFFFFFFFFFFLL) == 0) && v14 > 0.0 && v14 > *(v4 + 9928))
    {
      v10 |= 0x20000uLL;
    }
  }

  return sub_F6E648(a2, v10);
}

void sub_1100D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1100D60@<X0>(char *__src@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = __src;
  while (a2)
  {
    v7 = __src[--a2];
    if (v7 != *a3)
    {
      v5 = &__src[a2 + 1];
      break;
    }
  }

  v8 = v5 - __src;
  if ((v5 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    __src = memmove(a4, __src, v8);
    a4[v8] = 0;
  }

  else
  {
    *a4 = 0;
  }

  return __src;
}

uint64_t sub_1100E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a2 + 24))
  {
    v3 = *v2;
    v4 = (*v2)[1];
    if (v4)
    {
      v5 = (v4 - *v4);
      if (*v5 >= 0x11u)
      {
        v6 = v5[8];
        if (v6)
        {
          if ((*(v4 + v6) & 4) != 0)
          {
            if ((v8 = (*v3 - **v3), *v8 < 0x2Fu) || (v9 = v8[23]) == 0 || ((v10 = *(*v3 + v9), v11 = v10 > 0x36, v12 = (1 << v10) & 0x44000000000008, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13))
            {
              sub_311544(v3);
              operator new();
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_11012E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1101310(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*a4 == 1)
  {
    v43 = *(*(a1 + 9936) + 88 * a3);
    if (sub_1108008(a2, &v43) >= 2)
    {
      v8 = *(a1 + 9936) + 88 * a3;
      v37 = *(v8 + 52);
      v38 = *(v8 + 48);
      v9 = *(v8 + 56);
      v10 = *(v8 + 64);
      v11 = sub_1107E10(a2, &v43);
      v12 = *(a1 + 9936);
      v13 = *(v12 + 88 * a3 + 4);
      if (v13 != -1)
      {
        v15 = v11;
        v16 = *(*(v12 + 88 * a3 + 32) + 152);
        while (1)
        {
          v17 = v12 + 88 * v13;
          v42 = *v17;
          v18 = *(v17 + 32);
          if (*(v18 + 40) == 1)
          {
            return 0xFFFFFFFFLL;
          }

          v16 &= *(v18 + 152);
          if (sub_1107FA0(a2, &v42) > 1)
          {
            break;
          }

LABEL_7:
          v12 = *(a1 + 9936);
          v13 = *(v12 + 88 * v13 + 4);
          if (v13 == -1)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v19 = *(a1 + 9936) + 88 * v13;
        v20 = v38 - *(v19 + 48);
        v21 = v37 - *(v19 + 52);
        v22 = v9 - *(v19 + 56);
        if (!(v16 & 1 | ((*(a4 + 3) & 1) == 0)))
        {
          sub_1101960(a1, a2, v42, 1, *(a4 + 1), *(a4 + 2));
          v39 = v42 | (v43 << 32);
          sub_1101B58(a1 + 11032, &v39, v40);
          if (v40[0])
          {
            v23 = *(v41 + 16);
            if (v23 < *(a4 + 64))
            {
              v24 = *(v41 + 8);
              if (v24 == v20)
              {
                v25 = *(v41 + 12);
                if (v25 == v21)
                {
                  if (v23 >= v22)
                  {
                    goto LABEL_34;
                  }
                }

                else if (v25 >= v21)
                {
                  goto LABEL_34;
                }

LABEL_20:
                v26 = *(a4 + 48) * v23;
                if (v26 >= 0.0)
                {
                  if (v26 >= 4.50359963e15)
                  {
                    goto LABEL_26;
                  }

                  v27 = (v26 + v26) + 1;
                }

                else
                {
                  if (v26 <= -4.50359963e15)
                  {
                    goto LABEL_26;
                  }

                  v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
                }

                v26 = (v27 >> 1);
LABEL_26:
                if (*(v41 + 32) <= v26)
                {
                  goto LABEL_34;
                }

                v28 = *(a4 + 40) * v22;
                if (v28 >= 0.0)
                {
                  if (v28 >= 4.50359963e15)
                  {
                    goto LABEL_33;
                  }

                  v29 = (v28 + v28) + 1;
                }

                else
                {
                  if (v28 <= -4.50359963e15)
                  {
                    goto LABEL_33;
                  }

                  v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
                }

                v28 = (v29 >> 1);
LABEL_33:
                if (v23 < v28)
                {
                  return v13;
                }

                goto LABEL_34;
              }

              if (v24 < v20)
              {
                goto LABEL_20;
              }
            }
          }
        }

LABEL_34:
        sub_1101960(a1, a2, v42, 0, *(a4 + 1), *(a4 + 2));
        v39 = v42 | (v43 << 32);
        sub_1101B58(a1 + 10264, &v39, v40);
        if (v40[0] && *(v41 + 12) < *(a4 + 56))
        {
          v31 = sub_108CF40((v41 + 8), *(a4 + 8), v30);
          if (v20 == v31)
          {
            if (v21 == HIDWORD(v31))
            {
              if (v32 < v22)
              {
                return v13;
              }
            }

            else if (v21 > SHIDWORD(v31))
            {
              return v13;
            }
          }

          else if (v20 > v31)
          {
            return v13;
          }

          v33 = v22 <= 1 ? 1 : v22;
          v34 = (v10 - *(*(a1 + 9936) + 88 * v13 + 64)) / v33;
          if (v34 < *(a4 + 16))
          {
            v35 = sub_1107E10(a2, &v42);
            if (v15 < v35)
            {
              v35 = v15;
            }

            if (v34 < *(a4 + 32) * v35)
            {
              v36 = *(v41 + 16);
              if (v36 <= 1)
              {
                v36 = 1;
              }

              if (*(a4 + 24) * (*(v41 + 24) / v36) > v34)
              {
                return v13;
              }
            }
          }
        }

        goto LABEL_7;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_11016EC(__int128 *a1)
{
  v18 = *a1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v4 = *(a1 + 5);
  v3 = *(a1 + 6);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = a1[4];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v6 = *(a1 + 10);
  v5 = *(a1 + 11);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  v8 = *(a1 + 13);
  v7 = *(a1 + 14);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = sub_11038B0(&v18, &v11);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v9;
}

void sub_1101918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_1101934(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_1101960(uint64_t result, uint64_t a2, unsigned int a3, int a4, char a5, char a6)
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v6 = a3 >> 6;
  v7 = 1 << a3;
  if (a4)
  {
    v8 = (*(result + 10112) + 8 * v6);
    v9 = *v8;
    if ((*v8 & v7) == 0)
    {
      v10 = 11032;
      v11 = 9868;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = (*(result + 10088) + 8 * v6);
    v9 = *v8;
    if ((*v8 & v7) == 0)
    {
      v10 = 10264;
      v11 = 9864;
LABEL_6:
      *v8 = v9 | v7;
      ++*(result + 4368);
      v12 = result + v10;
      v28 = *(result + v11);
      v13 = result;
      v26 = sub_681D7C(a2);
      sub_1103C34(v27, 0x400u);
      v24 = v12;
      v25 = &v28;
      v22 = &v32;
      v23 = a2;
      v18 = &v31;
      v19 = &v30;
      v20 = &v29;
      v21 = v13;
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      operator new();
    }
  }

  return result;
}

void sub_1101B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v18 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v18;
    operator delete(v18);
    sub_404190(va);
    _Unwind_Resume(a1);
  }

  sub_404190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1101B58@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = v5 + (v6 << 6) + (v6 >> 2) + 2654435769u;
  v8 = (v7 ^ ~v6) + ((v7 ^ v6) << 21);
  v9 = 21 * ((265 * (v8 ^ (v8 >> 24))) ^ ((265 * (v8 ^ (v8 >> 24))) >> 14));
  v10 = 2147483649u * (v9 ^ (v9 >> 28));
  v11 = (result + 48 * (((((v9 ^ (v9 >> 28)) >> 8) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 16)) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 24)) & 0xF));
  v12 = v10 >> 7;
  v13 = v11[3];
  v14 = *v11;
  v15 = 0x101010101010101 * (v10 & 0x7F);
  while (1)
  {
    v16 = v12 & v13;
    v17 = *(v14 + v16);
    v18 = ((v17 ^ v15) - 0x101010101010101) & ~(v17 ^ v15) & 0x8080808080808080;
    if (v18)
    {
      break;
    }

LABEL_8:
    if ((v17 & (~v17 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v12 = v3 + v16;
  }

  while (1)
  {
    v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v13;
    v20 = (v11[1] + 48 * v19);
    if (*v20 == v4 && *(v20 + 1) == v5)
    {
      break;
    }

    v18 &= v18 - 1;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  if (v13 == v19)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v11;
  a3[1] = (result + 768);
  a3[2] = (v14 + v19);
  a3[3] = v20;
  a3[4] = (v14 + v13);
  return result;
}

uint64_t sub_1101CA4(__int128 *a1, __int128 *a2)
{
  v19 = *a1;
  v2 = *(a1 + 3);
  v20 = *(a1 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 4);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  v5 = *(a1 + 6);
  v4 = *(a1 + 7);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *a2;
  v6 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = *(a2 + 4);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_1101F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

BOOL sub_1102008(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_3B1348(*a1);
  if (sub_F6D024(a2) <= a3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0.0;
  v9 = a3;
  while (v7 < *(a1 + 9400))
  {
    v11 = sub_F6D17C(a2, v9);
    v12 = v11;
    if (*(a1 + 9417) == 1)
    {
      v13 = v11[1];
      if (v13)
      {
        v14 = (v13 - *v13);
        if (*v14 >= 0x11u)
        {
          v15 = v14[8];
          if (v15)
          {
            if ((*(v13 + v15) & 4) != 0)
            {
              goto LABEL_5;
            }
          }
        }
      }
    }

    if (*(a1 + 9416) == 1)
    {
      v16 = &(*v11)[-**v11];
      if (*v16 >= 0x2Fu)
      {
        v17 = *(v16 + 23);
        if (v17)
        {
          v18 = (*v11)[v17];
          v19 = v18 > 0x2A;
          v20 = (1 << v18) & 0x50426810004;
          if (!v19 && v20 != 0)
          {
            goto LABEL_5;
          }
        }
      }
    }

    v22 = sub_36383C(v6, v11[4] & 0xFFFFFFFFFFFFFFLL);
    v23 = 0.0;
    v24 = 0.0;
    if (!v22)
    {
      goto LABEL_33;
    }

    v25 = &v22[-*v22];
    v26 = *v25;
    if (v26 >= 0xB && *(v25 + 5))
    {
      v27 = *&v22[*(v25 + 5)];
      v28 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0xFFFF;
      v28 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_30;
      }
    }

    if (v26 >= 0x11)
    {
      v29 = *(v25 + 8);
      if (v29)
      {
        v30 = &v22[v29 + *&v22[v29]];
        if (*v30 >= v28)
        {
          v31 = *&v30[2 * v28 + 2];
          if ((v31 + 1) > 1u)
          {
            v32 = v31;
            goto LABEL_32;
          }
        }
      }
    }

LABEL_30:
    if (v27 != 0xFFFF)
    {
      v32 = v27;
LABEL_32:
      v24 = v32 / 1000.0;
LABEL_33:
      v33 = *v12;
      v34 = &(*v12)[-**v12];
      if (*v34 < 9u)
      {
        goto LABEL_3;
      }

      goto LABEL_34;
    }

    v24 = 0.3;
    v33 = *v12;
    v34 = &(*v12)[-**v12];
    if (*v34 < 9u)
    {
      goto LABEL_3;
    }

LABEL_34:
    v35 = *(v34 + 4);
    if (v35)
    {
      v10 = *&v33[v35];
      v23 = v10;
      goto LABEL_4;
    }

LABEL_3:
    v10 = 0;
LABEL_4:
    v8 = v8 + v24 * v23;
    v7 += v10;
LABEL_5:
    if (++v9 >= sub_F6D024(a2))
    {
      break;
    }
  }

  if (!v7)
  {
    return 0;
  }

  v36 = v8 / v7;
  if (v36 > *(a1 + 9424))
  {
    return 0;
  }

  v37 = sub_F6D024(a2);
  v38 = v36;
  if (v9 <= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v9;
  }

  if (v9 < v37)
  {
    v40 = 0;
    v41 = v39 - 1;
    v38 = v36;
    while (1)
    {
      v44 = sub_F6D17C(a2, v9);
      v45 = sub_36383C(v6, *(v44 + 32) & 0xFFFFFFFFFFFFFFLL);
      if (v45)
      {
        break;
      }

      v42 = 0.0;
LABEL_47:
      if (v38 < v42)
      {
        v38 = v42;
      }

      v40 += sub_F6D254(a2, v9);
      if (v40 > *(a1 + 9392) || v41 == v9++)
      {
        goto LABEL_68;
      }
    }

    v46 = &v45[-*v45];
    v47 = *v46;
    if (v47 >= 0xB && *(v46 + 5))
    {
      v48 = *&v45[*(v46 + 5)];
      v49 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_63;
      }
    }

    else
    {
      v48 = 0xFFFF;
      v49 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_63;
      }
    }

    if (v47 >= 0x11)
    {
      v50 = *(v46 + 8);
      if (v50)
      {
        v51 = &v45[v50 + *&v45[v50]];
        if (*v51 >= v49)
        {
          v52 = *&v51[2 * v49 + 2];
          if ((v52 + 1) > 1u)
          {
            v53 = v52;
LABEL_65:
            v42 = v53 / 1000.0;
            goto LABEL_47;
          }
        }
      }
    }

LABEL_63:
    if (v48 == 0xFFFF)
    {
      v42 = 0.3;
      goto LABEL_47;
    }

    v53 = v48;
    goto LABEL_65;
  }

LABEL_68:
  v54 = *(a1 + 9432);
  if (v38 < v54)
  {
    return 0;
  }

  v55 = v36;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_96;
  }

  v56 = 0;
  v57 = a3 & 0x7FFFFFFF;
  v58 = a3;
  if (a3 >= -1)
  {
    v58 = -1;
  }

  v59 = v58 + 1;
  v55 = v36;
  do
  {
    v62 = sub_F6D17C(a2, v57);
    v63 = sub_36383C(v6, *(v62 + 32) & 0xFFFFFFFFFFFFFFLL);
    if (!v63)
    {
      v60 = 0.0;
      goto LABEL_74;
    }

    v64 = &v63[-*v63];
    v65 = *v64;
    if (v65 >= 0xB && *(v64 + 5))
    {
      v66 = *&v63[*(v64 + 5)];
      v67 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_90;
      }
    }

    else
    {
      v66 = 0xFFFF;
      v67 = *(v6 + 3880);
      if (!*(v6 + 3880))
      {
        goto LABEL_90;
      }
    }

    if (v65 >= 0x11)
    {
      v68 = *(v64 + 8);
      if (v68)
      {
        v69 = &v63[v68 + *&v63[v68]];
        if (*v69 >= v67)
        {
          v70 = *&v69[2 * v67 + 2];
          if ((v70 + 1) > 1u)
          {
            v71 = v70;
            goto LABEL_92;
          }
        }
      }
    }

LABEL_90:
    if (v66 != 0xFFFF)
    {
      v71 = v66;
LABEL_92:
      v60 = v71 / 1000.0;
      goto LABEL_74;
    }

    v60 = 0.3;
LABEL_74:
    if (v55 < v60)
    {
      v55 = v60;
    }

    v56 += sub_F6D254(a2, v57);
  }

  while (v56 <= *(a1 + 9392) && v59 != v57--);
  v54 = *(a1 + 9432);
LABEL_96:
  if (v55 < v54)
  {
    return 0;
  }

  if (v38 >= v55)
  {
    v73 = v55;
  }

  else
  {
    v73 = v38;
  }

  return v36 < v73 * *(a1 + 9440);
}

void sub_1102514(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    sub_10F475C(8 * ((a1[1] - *a1) >> 3), a2);
  }

  sub_1794();
}

void sub_1102628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1102640(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v11;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13 = *(a2 + 168);
  v12 = *(a2 + 176);
  if (v12 != v13)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  v17 = *(a2 + 256);
  v18 = *(a2 + 272);
  v19 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v19;
  *(a1 + 256) = v17;
  *(a1 + 272) = v18;
  v20 = *(a2 + 320);
  v21 = *(a2 + 336);
  v22 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v22;
  *(a1 + 320) = v20;
  *(a1 + 336) = v21;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  v24 = *(a2 + 392);
  v23 = *(a2 + 400);
  if (v23 != v24)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 416) = *(a2 + 416);
  if (*(a2 + 447) < 0)
  {
    sub_325C((a1 + 424), *(a2 + 424), *(a2 + 432));
  }

  else
  {
    v25 = *(a2 + 424);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 424) = v25;
  }

  if (*(a2 + 471) < 0)
  {
    sub_325C((a1 + 448), *(a2 + 448), *(a2 + 456));
  }

  else
  {
    v26 = *(a2 + 448);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 448) = v26;
  }

  *(a1 + 472) = *(a2 + 472);
  return a1;
}

void sub_1102834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 447) < 0)
  {
    operator delete(*v2);
    v5 = *(v1 + 392);
    if (!v5)
    {
LABEL_3:
      v6 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(v1 + 392);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 400) = v5;
  operator delete(v5);
  v6 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 176) = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_11028A4()
{
  if (!*v0)
  {
    JUMPOUT(0x1102858);
  }

  JUMPOUT(0x1102850);
}

void sub_11028B4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_1102AB0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      bzero(*(a1 + 8), 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    bzero(v11, 2 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1102BF8(void *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = *(a2 + 80);
  v8 = 88 * v2 + 88;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = v6 + v11;
  if (*a1 != v10)
  {
    v13 = v6 + v11;
    v14 = *a1;
    do
    {
      *v13 = *v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v14 + 1);
      *(v13 + 24) = v14[3];
      v14[1] = 0;
      v14[2] = 0;
      v14[3] = 0;
      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v17 = *(v14 + 4);
      *(v13 + 80) = v14[10];
      *(v13 + 48) = v16;
      *(v13 + 64) = v17;
      *(v13 + 32) = v15;
      v14 += 11;
      v13 += 88;
    }

    while (v14 != v10);
    do
    {
      v18 = v9[1];
      if (v18)
      {
        v9[2] = v18;
        operator delete(v18);
      }

      v9 += 11;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_1102DC0(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v3 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v3 = v2;
    }

    if (v3)
    {
      if (v3 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    if (*(a2 + 8) != 5)
    {
      sub_5AF20();
    }

    sub_10F554C(8 * ((a1[1] - *a1) >> 3), *a2);
  }

  sub_1794();
}

void sub_1102EEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1102F04(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_1102FCC(_Unwind_Exception *a1)
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

uint64_t sub_1102FF0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v14);
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      if (v8 != a1)
      {
        v9 = strlen(a3);
        sub_4A5C(&v14, a3, v9);
      }

      sub_F93A08(&v14, __clz(__rbit64(v8)));
      v8 &= v8 - 1;
    }

    while (v8 != a2);
  }

  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19;
    v10 = v11 - v19;
    if (v11 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_17;
    }

    v12 = v17;
    v10 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_17:
  a4[v10] = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1103250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_1103264(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void *sub_1103278(void *result, unint64_t a2)
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

void sub_11033F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

void sub_1103558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  v11 = *(v9 - 96);
  if (v11)
  {
    *(v9 - 88) = v11;
    operator delete(v11);
    v12 = *(v9 - 72);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v12 = *(v9 - 72);
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  *(v9 - 64) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_11035B8(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_11036A8(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11036DC(uint64_t result, void *a2, void *a3)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    if (((v4 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_110387C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11038B0(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a1[5];
  v4 = a1[6];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[2];
  v6 = a2[3];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_1103BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete(v9);
    sub_334D18(&a9);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a9);
  _Unwind_Resume(a1);
}

void sub_1103C1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1103C34(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_1102F04((v5 + 103), a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[98] - a1[96]) >> 4) < v4)
  {
    operator new();
  }

  return a1;
}

void sub_1103D38(_Unwind_Exception *a1)
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

void sub_1103D98(uint64_t a1, unsigned int **a2, unsigned int **a3, unsigned int **a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  *(a1 + 864) = *(a1 + 856);
  *(a1 + 840) = *(a1 + 832);
  *(a1 + 880) = 0;
  *(a1 + 784) = *(a1 + 776);
  do
  {
    v12 = a1 + v10;
    if (*(a1 + v10 + 24))
    {
      v13 = *(v12 + 32);
      if (v13 >= 0x80)
      {
        v11 = (a1 + v10);
        operator delete(*(v12 + 8));
        *(v12 + 8) = &unk_2290750;
        v11[6] = 0;
        v11[3] = 0;
        v11[4] = 0;
        v11[2] = 0;
      }

      else if (v13)
      {
        *(v12 + 24) = 0;
        memset(*(v12 + 8), 128, v13 + 8);
        *(*(v12 + 8) + v13) = -1;
        v14 = *(v12 + 32);
        if (v14 == 7)
        {
          v15 = 6;
        }

        else
        {
          v15 = v14 - (v14 >> 3);
        }

        *(a1 + v10 + 48) = v15 - *(v12 + 24);
      }
    }

    v10 += 48;
  }

  while (v10 != 768);
  *(a1 + 808) = *(a1 + 800);
  *(a1 + 824) = 0;
  v16 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    do
    {
      v18 = *v16++;
      v19 = *(a6 + 16);
      v22[0] = *a6;
      v22[1] = v19;
      v23 = *(a6 + 32);
      v24 = v18;
      sub_110429C(a1 + 8, &v24, v22);
    }

    while (v16 != v17);
  }

  sub_1103F04(a1, a3, a4, a5);
}

void sub_1103F04(uint64_t a1, unsigned int **a2, unsigned int **a3, uint64_t a4)
{
  while (*(a1 + 880))
  {
    v6 = *(a1 + 832);
    v7 = (*(a1 + 776) + 48 * *v6);
    v8 = *v7;
    v9 = *(v7 + 2);
    v47 = *(v7 + 3);
    v10 = v7[3];
    v45 = *(v7 + 4);
    v46 = *(v7 + 2);
    v44 = *(v7 + 5);
    sub_DD38(a1 + 800, v6);
    v11 = *(a1 + 832);
    *(*(a1 + 856) + 4 * *v11) = -1;
    v12 = *(a1 + 880) - 1;
    *(a1 + 880) = v12;
    if (v12)
    {
      v13 = &v11[12 * v12];
      *v11 = *v13;
      *(v11 + 2) = *(v13 + 2);
      *(v11 + 6) = *(v13 + 6);
      *(v11 + 5) = *(v13 + 5);
      *(*(a1 + 856) + 4 * **(a1 + 832)) = 0;
      sub_1104AF0((a1 + 832), 0);
    }

    *(a1 + 840) -= 48;
    if (v9 > **a2)
    {
      break;
    }

    v54 = v8;
    if (**a3 != v8 && sub_1108008(a3[1], &v54) >= 2)
    {
      v14 = a3[2];
      v53 = **a3 | (v54 << 32);
      sub_1105004(v14, &v53, &v48);
      v15 = v48;
      if (LOBYTE(v50) == 1)
      {
        v16 = v48[1] + 48 * v49;
        *v16 = v53;
        *(v16 + 8) = -NAN;
        *(v16 + 16) = 0x7FFFFFFFFFFFFFFFLL;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 40) = 0;
      }

      v17 = v15[1] + 48 * v49;
      *(v17 + 8) = v9;
      *(v17 + 12) = v47;
      *(v17 + 16) = v46;
      *(v17 + 24) = v10;
      *(v17 + 32) = v45;
      *(v17 + 40) = v44;
    }

    v43 = v9;
    v18 = (v8 + 1);
    v19 = *(*a1 + 48);
    if (v18 >= (*(*a1 + 56) - v19) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v40 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v20 = *(v19 + 4 * v8);
    v21 = *(v19 + 4 * v18);
    if (v20 != v21)
    {
      v22 = *(*a1 + 72);
      v23 = v22 + 208 * v21;
      v24 = v22 + 208 * v20;
      do
      {
        v29 = *(a4 + 24);
        if (**a4 != 1 || *(v24 + 153) == 1)
        {
          v30 = *(v24 + 120);
          v31 = *(v24 + 124);
          v32 = *(v24 + 128);
          v33 = v30 == -1 || v31 == 0x7FFFFFFF;
          v34 = v33 || v32 == 0x7FFFFFFFFFFFFFFFLL;
          if (!v34 && ((**(a4 + 8) & 1) != 0 || (*(v24 + 137) & 0x20) == 0) && ((**(a4 + 16) & 1) != 0 || (*(v24 + 137) & 0x10) == 0) && (*(v24 + 40) & 1) == 0)
          {
            v35 = *(v24 + 16);
            v36 = *(v24 + 24);
            if (v35 == v36)
            {
LABEL_15:
              LODWORD(v53) = *(v24 + 8);
              v25 = ((v30 + v43) | ((v31 + v47) << 32));
              v26 = v10 + *(v24 + 160);
              v27 = *(v24 + 168) + v45;
              v28 = *(v24 + 176) + v44;
              v48 = v25;
              v49 = (v32 + v46);
              v50 = v26;
              v51 = v27;
              v52 = v28;
              sub_1104C98(a1 + 8, &v53, &v48);
            }

            else
            {
              while (1)
              {
                sub_438BE4(v29 + 4392, *(*v35 + 32) & 0xFFFFFFFFFFFFFFLL, &v48);
                v37 = v48;
                v38 = v49;
                if (v48)
                {
                  v49 = v48;
                  operator delete(v48);
                }

                if (v37 != v38)
                {
                  break;
                }

                v35 += 8;
                if (v35 == v36)
                {
                  v30 = *(v24 + 120);
                  v31 = *(v24 + 124);
                  v32 = *(v24 + 128);
                  goto LABEL_15;
                }
              }
            }
          }
        }

        v24 += 208;
      }

      while (v24 != v23);
    }
  }
}

void sub_110429C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0;
  ++*(a1 + 816);
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    v19 = -1431655765 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_F8B0C4(a1, a2, &v39);
    v20 = v40;
    v21 = *(v39 + 8);
    if (v41 == 1)
    {
      *(v21 + 8 * v40) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v27 = *(a1 + 768);
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v27) >> 4) + 1;
      if (v28 > 0x555555555555555)
      {
        sub_1794();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 4);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x2AAAAAAAAAAAAAALL)
      {
        v30 = 0x555555555555555;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v36 = 16 * ((v22 - v27) >> 4);
      *v36 = *a2;
      v37 = *(a3 + 16);
      *(v36 + 8) = *a3;
      *(v36 + 24) = v37;
      *(v36 + 40) = *(a3 + 32);
      v26 = v36 + 48;
      v38 = (v36 - (v22 - v27));
      memcpy(v38, v27, v22 - v27);
      *(a1 + 768) = v38;
      *(a1 + 776) = v26;
      *(a1 + 784) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v22 = *a2;
      v24 = *a3;
      v25 = *(a3 + 16);
      *(v22 + 40) = *(a3 + 32);
      *(v22 + 24) = v25;
      *(v22 + 8) = v24;
      v26 = v22 + 48;
    }

    *(a1 + 776) = v26;
    sub_11045B4((a1 + 824), v19, a3);
    return;
  }

  v31 = v17 + 8 * v18;
  v32 = *(a1 + 768) + 48 * *(v31 + 4);
  v33 = *a3;
  v34 = *(a3 + 16);
  *(v32 + 40) = *(a3 + 32);
  *(v32 + 24) = v34;
  *(v32 + 8) = v33;
  v35 = *(v31 + 4);

  sub_11045B4((a1 + 824), v35, a3);
}

void sub_11045B4(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = a1[3];
  if (a2 >= ((a1[4] - v4) >> 2) || (v5 = *(v4 + 4 * a2), v5 == -1))
  {
    sub_1104778(a1, a2, a3);
    return;
  }

  v6 = *a1 + 48 * v5;
  v8 = *(v6 + 8);
  v7 = *(v6 + 12);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = *(v6 + 32);
  v11 = *(v6 + 40);
  v13 = *(a3 + 32);
  v14 = *(a3 + 16);
  *(v6 + 8) = *a3;
  *(v6 + 24) = v14;
  *(v6 + 40) = v13;
  if (*a3 != v8)
  {
    if (*a3 < v8)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

  v15 = *(a3 + 4);
  v16 = v15 < v7;
  if (v15 != v7 || (v17 = *(a3 + 8), v16 = v17 < v9, v17 != v9))
  {
LABEL_29:
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_30:
    sub_1104AF0(a1, v5);
    return;
  }

  v18 = *(a3 + 16);
  if (v18 == v10)
  {
    v48 = *(a3 + 24);
    v16 = v48 < v12;
    if (v48 == v12)
    {
      v16 = *(a3 + 32) < v11;
    }

    goto LABEL_29;
  }

  if (v18 >= v10)
  {
    goto LABEL_30;
  }

LABEL_11:
  if (v5)
  {
    v19 = *a1;
    do
    {
      v30 = v5 - 1;
      v31 = (v5 - 1) >> 2;
      v32 = v19 + 48 * v31;
      v33 = v32 + 8;
      v34 = *(v32 + 8);
      v35 = v19 + 48 * v5;
      v37 = *(v35 + 8);
      v36 = v35 + 8;
      v38 = v34 >= v37;
      if (v34 != v37)
      {
        if (!v38)
        {
          return;
        }

        goto LABEL_15;
      }

      v39 = *(v32 + 12);
      v40 = *(v35 + 12);
      v41 = v39 < v40;
      if (v39 == v40)
      {
        v42 = *(v32 + 16);
        v43 = *(v35 + 16);
        v41 = v42 < v43;
        if (v42 == v43)
        {
          v44 = *(v32 + 24);
          v45 = *(v35 + 24);
          if (v44 != v45)
          {
            if (v44 < v45)
            {
              return;
            }

            goto LABEL_15;
          }

          v46 = *(v32 + 32);
          v47 = *(v35 + 32);
          v41 = v46 < v47;
          if (v46 == v47)
          {
            v41 = *(v32 + 40) < *(v35 + 40);
          }
        }
      }

      if (v41)
      {
        return;
      }

LABEL_15:
      v20 = *v35;
      *v35 = *v32;
      *v32 = v20;
      v21 = *v36;
      v22 = *(v35 + 24);
      v23 = *(v35 + 40);
      v24 = *(v33 + 32);
      v25 = *(v33 + 16);
      *v36 = *v33;
      *(v36 + 16) = v25;
      *(v36 + 32) = v24;
      *(v33 + 32) = v23;
      *v33 = v21;
      *(v33 + 16) = v22;
      v19 = *a1;
      v26 = *(*a1 + 48 * v5);
      v27 = a1[3];
      v28 = *(*a1 + 48 * v31);
      v29 = *(v27 + 4 * v26);
      *(v27 + 4 * v26) = *(v27 + 4 * v28);
      *(v27 + 4 * v28) = v29;
      LODWORD(v5) = v30 >> 2;
    }

    while (v30 >= 4);
  }
}

void sub_1104778(uint64_t a1, unsigned int a2, __int128 *a3)
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
      v15 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v15 - v11);
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v10 = v9 - v8;
        v16 = (v9 - v8) >> 2;
        if (v11 < v16)
        {
LABEL_12:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else if (v15 >= v11)
      {
        v10 = v9 - v8;
        v16 = (v9 - v8) >> 2;
        if (v11 < v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = v8 + 4 * v15;
        *(a1 + 32) = v9;
        v10 = 4 * v15;
        v16 = (4 * v15) >> 2;
        if (v11 < v16)
        {
          goto LABEL_12;
        }
      }

      v11 = v16;
    }

    while (v16 <= v6);
  }

  v44 = a2;
  v12 = a3[1];
  v45 = *a3;
  v46 = v12;
  v47 = *(a3 + 4);
  sub_11049A4(a1, &v44);
  v13 = *(a1 + 48);
  *(*(a1 + 24) + 4 * v6) = v13;
  *(a1 + 48) = v13 + 1;
  if (v13)
  {
    v14 = *a1;
    do
    {
      v26 = v13 - 1;
      v27 = (v13 - 1) >> 2;
      v28 = (v14 + 48 * v27);
      v29 = (v28 + 2);
      v30 = v28[2];
      v31 = (v14 + 48 * v13);
      v33 = v31[2];
      v32 = (v31 + 2);
      v34 = v30 >= v33;
      if (v30 != v33)
      {
        if (!v34)
        {
          return;
        }

        goto LABEL_15;
      }

      v35 = v28[3];
      v36 = v31[3];
      v37 = v35 < v36;
      if (v35 == v36)
      {
        v38 = *(v28 + 2);
        v39 = *(v31 + 2);
        v37 = v38 < v39;
        if (v38 == v39)
        {
          v40 = *(v28 + 3);
          v41 = *(v31 + 3);
          if (v40 != v41)
          {
            if (v40 < v41)
            {
              return;
            }

            goto LABEL_15;
          }

          v42 = *(v28 + 4);
          v43 = *(v31 + 4);
          v37 = v42 < v43;
          if (v42 == v43)
          {
            v37 = *(v28 + 5) < *(v31 + 5);
          }
        }
      }

      if (v37)
      {
        return;
      }

LABEL_15:
      v17 = *v31;
      *v31 = *v28;
      *v28 = v17;
      v18 = *v32;
      v19 = *(v31 + 6);
      v20 = *(v31 + 5);
      v21 = *(v29 + 4);
      v22 = v29[1];
      *v32 = *v29;
      v32[1] = v22;
      *(v32 + 4) = v21;
      *(v29 + 4) = v20;
      *v29 = v18;
      v29[1] = v19;
      v14 = *a1;
      v23 = *(*a1 + 48 * v13);
      v24 = *(a1 + 24);
      v25 = *(*a1 + 48 * v27);
      LODWORD(v21) = *(v24 + 4 * v23);
      *(v24 + 4 * v23) = *(v24 + 4 * v25);
      *(v24 + 4 * v25) = v21;
      v13 = v26 >> 2;
    }

    while (v26 > 3);
  }
}

void sub_11049A4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
  v10 = v9 + 1;
  if (v9 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x2AAAAAAAAAAAAAALL)
  {
    v12 = 0x555555555555555;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (16 * (&v3[-*a1] >> 4));
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v13[2] = a2[2];
  v7 = 48 * v9 + 48;
  v15 = 48 * v9 - (v3 - v8);
  memcpy(v13 - (v3 - v8), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

uint64_t sub_1104AF0(uint64_t *a1, uint64_t a2)
{
  v2 = (4 * a2) | 1u;
  v3 = *(a1 + 12);
  if (v2 < v3)
  {
    v4 = 4 * a2;
    while (1)
    {
      v5 = v4 + 5;
      if (v5 >= v3)
      {
        v6 = v3;
      }

      else
      {
        v6 = v5;
      }

      if (v5 <= v2)
      {
        return a2;
      }

      v7 = *a1;
      v8 = *a1 + 48 * a2;
      v10 = *(v8 + 8);
      v9 = *(v8 + 12);
      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = *a1 + 48 * v2 + 24;
      v16 = 0xFFFFFFFFLL;
      do
      {
        v17 = *(v15 - 16);
        if (v17 == v10)
        {
          v18 = *(v15 - 12);
          if (v18 == v9)
          {
            v19 = *(v15 - 8);
            v20 = v19 < v11;
            if (v19 != v11)
            {
              goto LABEL_23;
            }

            if (*v15 != v12)
            {
              v18 = v9;
              if (*v15 < v12)
              {
                goto LABEL_8;
              }

              goto LABEL_9;
            }

            v21 = *(v15 + 8);
            v20 = v21 < v13;
            if (v21 == v13)
            {
              v18 = v9;
              if (*(v15 + 16) < v14)
              {
                goto LABEL_8;
              }
            }

            else
            {
LABEL_23:
              v18 = v9;
              if (v20)
              {
                goto LABEL_8;
              }
            }
          }

          else if (v18 < v9)
          {
            goto LABEL_8;
          }
        }

        else if (v17 < v10)
        {
          v18 = *(v15 - 12);
LABEL_8:
          v11 = *(v15 - 8);
          v12 = *v15;
          v9 = v18;
          v10 = *(v15 - 16);
          v16 = v2;
          v13 = *(v15 + 8);
          v14 = *(v15 + 16);
        }

LABEL_9:
        v2 = (v2 + 1);
        v15 += 48;
      }

      while (v2 < v6);
      if (v16 < v3)
      {
        v22 = (v7 + 48 * v16);
        v23 = 48 * a2;
        v24 = (v7 + v23);
        v25 = *v22;
        *v22 = *v24;
        *v24 = v25;
        v26 = *(v22 + 2);
        v27 = *(v22 + 6);
        v28 = *(v22 + 5);
        v29 = *(v24 + 5);
        v30 = *(v24 + 6);
        *(v22 + 2) = *(v24 + 2);
        *(v22 + 6) = v30;
        *(v22 + 5) = v29;
        *(v24 + 5) = v28;
        *(v24 + 6) = v27;
        *(v24 + 2) = v26;
        v31 = *(*a1 + 48 * v16);
        v32 = a1[3];
        v33 = *(*a1 + v23);
        LODWORD(v23) = *(v32 + 4 * v31);
        *(v32 + 4 * v31) = *(v32 + 4 * v33);
        *(v32 + 4 * v33) = v23;
        v4 = 4 * v16;
        v2 = (4 * v16) | 1u;
        v3 = *(a1 + 12);
        a2 = v16;
        if (v2 < v3)
        {
          continue;
        }
      }

      return a2;
    }
  }

  return a2;
}

uint64_t sub_1104C98(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = -1431655765 * ((*(a1 + 776) - *(a1 + 768)) >> 4);
    sub_F8B0C4(a1, a2, &v55);
    v20 = v56;
    v21 = *(v55 + 8);
    if (v57 == 1)
    {
      *(v21 + 8 * v56) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v27 = *(a1 + 768);
      v28 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v27) >> 4) + 1;
      if (v28 > 0x555555555555555)
      {
        sub_1794();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v27) >> 4);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x2AAAAAAAAAAAAAALL)
      {
        v30 = 0x555555555555555;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v45 = 16 * ((v22 - v27) >> 4);
      *v45 = *a2;
      v46 = *(a3 + 16);
      *(v45 + 8) = *a3;
      *(v45 + 24) = v46;
      *(v45 + 40) = *(a3 + 32);
      v26 = v45 + 48;
      v47 = (v45 - (v22 - v27));
      memcpy(v47, v27, v22 - v27);
      *(a1 + 768) = v47;
      *(a1 + 776) = v26;
      *(a1 + 784) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v22 = *a2;
      v24 = *a3;
      v25 = *(a3 + 16);
      *(v22 + 40) = *(a3 + 32);
      *(v22 + 24) = v25;
      *(v22 + 8) = v24;
      v26 = v22 + 48;
    }

    *(a1 + 776) = v26;
    v48 = (a1 + 824);
    v49 = v19;
    goto LABEL_31;
  }

  v31 = v17 + 8 * v18;
  v33 = *(v31 + 4);
  v32 = (v31 + 4);
  v34 = *(a1 + 768) + 48 * v33;
  v36 = *(v34 + 8);
  v35 = v34 + 8;
  v37 = *a3 >= v36;
  if (*a3 == v36)
  {
    v38 = *(a3 + 4);
    v39 = *(v35 + 4);
    v40 = v38 < v39;
    if (v38 == v39)
    {
      v41 = *(a3 + 8);
      v42 = *(v35 + 8);
      v40 = v41 < v42;
      if (v41 == v42)
      {
        v43 = *(a3 + 16);
        v44 = *(v35 + 16);
        if (v43 != v44)
        {
          if (v43 >= v44)
          {
            return 0;
          }

LABEL_33:
          ++*(a1 + 816);
          v51 = *a3;
          v52 = *(a3 + 16);
          *(v35 + 32) = *(a3 + 32);
          *v35 = v51;
          *(v35 + 16) = v52;
          v49 = *v32;
          v48 = (a1 + 824);
LABEL_31:
          sub_11045B4(v48, v49, a3);
          return 1;
        }

        v53 = *(a3 + 24);
        v54 = *(v35 + 24);
        v40 = v53 < v54;
        if (v53 == v54)
        {
          v40 = *(a3 + 32) < *(v35 + 32);
        }
      }
    }

    if (v40)
    {
      goto LABEL_33;
    }
  }

  else if (!v37)
  {
    goto LABEL_33;
  }

  return 0;
}

unint64_t sub_1105004@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v4 + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = v5 + (v6 << 6) + (v6 >> 2) + 2654435769u;
  v8 = (v7 ^ ~v6) + ((v7 ^ v6) << 21);
  v9 = 21 * ((265 * (v8 ^ (v8 >> 24))) ^ ((265 * (v8 ^ (v8 >> 24))) >> 14));
  v10 = 2147483649u * (v9 ^ (v9 >> 28));
  v11 = (a1 + 48 * (((((v9 ^ (v9 >> 28)) >> 8) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 16)) ^ ((-2147483647 * (v9 ^ (v9 >> 28))) >> 24)) & 0xF));
  v12 = v10 >> 7;
  v13 = v11[3];
  while (1)
  {
    v14 = v12 & v13;
    v15 = *(*v11 + v14);
    v16 = ((v15 ^ (0x101010101010101 * ((v9 ^ (v9 >> 28)) & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * ((v9 ^ (v9 >> 28)) & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_8:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1105158(v11, v10);
      *a3 = v11;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v12 = v3 + v14;
  }

  while (1)
  {
    result = (v14 + (__clz(__rbit64(v16)) >> 3)) & v13;
    v18 = (v11[1] + 48 * result);
    v20 = *v18;
    v19 = v18[1];
    if (v20 == v4 && v19 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  *a3 = v11;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1105158(void *a1, unint64_t a2)
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
      sub_1105250(a1);
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

uint64_t sub_1105250(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_1105280();
  }

  return sub_1105470(a1);
}

uint64_t sub_1105470(uint64_t result)
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
        v18 = (*(result + 8) + 48 * i);
        v19 = (*v18 + 0x388152A534) ^ 0xDEADBEEFLL;
        v20 = v18[1] + (v19 << 6) + (v19 >> 2) + 2654435769u;
        v21 = (v20 ^ ~v19) + ((v20 ^ v19) << 21);
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
            v29 = (v28 + 48 * v16);
            v30 = (v28 + 48 * i);
            v31 = *v30;
            v32 = v30[2];
            v29[1] = v30[1];
            v29[2] = v32;
            *v29 = v31;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v33 = (v28 + 48 * i);
            v34 = *v33;
            v43 = v33[1];
            v35 = v33[2];
            v36 = (v28 + 48 * v16);
            v38 = v36[1];
            v37 = v36[2];
            *v33 = *v36;
            v33[1] = v38;
            v33[2] = v37;
            v39 = (*(result + 8) + 48 * v16);
            *v39 = v34;
            v39[1] = v43;
            v39[2] = v35;
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
  }

  else
  {
    v42 = 0;
  }

  *(result + 40) = v42 - *(result + 16);
  return result;
}

void *sub_110578C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_1105AFC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1105B54(void *a1, void *a2)
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

void sub_1105ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1105EE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1105EE8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[9];
      if (v3)
      {
        v2[10] = v3;
        operator delete(v3);
      }

      v4 = v2[6];
      if (v4)
      {
        v2[7] = v4;
        operator delete(v4);
      }

      v5 = v2[3];
      if (v5)
      {
        v2[4] = v5;
        operator delete(v5);
      }
    }

    operator delete(v2);
  }

  return a1;
}

double sub_1105F5C()
{
  *v0 = -1;
  *(v0 + 8) = -1;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0x1000000000000;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  result = -NAN;
  *(v0 + 120) = -NAN;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 156) = 0x7FFFFFFF;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

void sub_1105FC4()
{
  byte_27C298F = 3;
  LODWORD(qword_27C2978) = 5136193;
  byte_27C29A7 = 3;
  LODWORD(qword_27C2990) = 5136194;
  byte_27C29BF = 3;
  LODWORD(qword_27C29A8) = 5136195;
  byte_27C29D7 = 15;
  strcpy(&qword_27C29C0, "vehicle_mass_kg");
  byte_27C29EF = 21;
  strcpy(&xmmword_27C29D8, "vehicle_cargo_mass_kg");
  byte_27C2A07 = 19;
  strcpy(&qword_27C29F0, "vehicle_aux_power_w");
  byte_27C2A1F = 15;
  strcpy(&qword_27C2A08, "dcdc_efficiency");
  strcpy(&qword_27C2A20, "drive_train_efficiency");
  HIBYTE(word_27C2A36) = 22;
  operator new();
}

void sub_11061A0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2A36) < 0)
  {
    sub_21E81DC();
  }

  sub_21E81E8();
  _Unwind_Resume(a1);
}

uint64_t sub_11061C0(uint64_t result)
{
  *result = -1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0x3FF0000000000000;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 2359296000;
  *(result + 95) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 120) = 0;
  *(result + 152) = 0x3FF0000000000000;
  *(result + 160) = 1;
  *(result + 168) = 0;
  *(result + 176) = 0;
  *(result + 184) = 2359296000;
  *(result + 191) = 0;
  return result;
}

__n128 sub_1106228(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  v6 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v6;
  v7 = *(a4 + 32);
  v8 = *(a4 + 48);
  v9 = *(a4 + 64);
  *(a1 + 96) = *(a4 + 80);
  *(a1 + 64) = v8;
  *(a1 + 80) = v9;
  *(a1 + 48) = v7;
  *(a1 + 104) = *a5;
  v10 = *(a6 + 16);
  *(a1 + 112) = *a6;
  *(a1 + 128) = v10;
  result = *(a6 + 32);
  v12 = *(a6 + 48);
  v13 = *(a6 + 64);
  *(a1 + 192) = *(a6 + 80);
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 144) = result;
  return result;
}

BOOL sub_1106280(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || !sub_F71798(a1 + 16, a2 + 16) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  return sub_F71798(a1 + 112, a2 + 112);
}

unint64_t sub_11062FC(uint64_t a1, uint64_t a2)
{
  v2 = 0x2127599BF4325C37 * (*(a2 + 8) ^ (*(a2 + 8) >> 23));
  v3 = 0x2127599BF4325C37 * (*(a2 + 104) ^ (*(a2 + 104) >> 23));
  return ((v3 ^ (v3 >> 47)) + ((((v2 ^ (v2 >> 47)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v2 ^ (v2 >> 47)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v2 ^ (v2 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
}

uint64_t sub_1106364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;
  v167 = a1 + 8;
  sub_1109E54(a1 + 8, 0);
  *(a1 + 128) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 200) = 0x7FFFFFFF;
  v5 = sub_10E2904(a2);
  v199 = 0;
  v200 = 0;
  v201 = 0;
  v174 = a2;
  if (v5)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v198 = 0;
  v6 = sub_10E2904(a2);
  if (v6)
  {
    if (!(v6 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v7 = sub_3068E4(a2);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    v172 = 0;
  }

  else
  {
    v172 = 0;
    do
    {
      v13 = v172;
      v14 = v172 >> 2;
      if (((v172 >> 2) + 1) >> 62)
      {
        sub_1794();
      }

      if (v172 >> 2 != -1)
      {
        if (!(((v172 >> 2) + 1) >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v14) = *v8;
      v172 = 4 * v14 + 4;
      memcpy(0, 0, v13);
      v194[0] = 0;
      LODWORD(v179) = 0;
      v180 = 0;
      v181 = 0;
      *(&v179 + 1) = 0;
      v182 = 0;
      v183 = 0x3FF0000000000000;
      v184 = 1;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = -29536;
      v189[0] = 0;
      *(v189 + 3) = 0;
      v15 = *(a1 + 136);
      if (v15 >= *(a1 + 144))
      {
        v10 = sub_1109678(a1 + 128, &v198, v194, &v179, v8 + 13, (v8 + 28));
      }

      else
      {
        sub_1106228(*(a1 + 136), v198, v194, &v179, v8 + 13, (v8 + 28));
        v10 = v15 + 200;
        *(a1 + 136) = v15 + 200;
      }

      *(a1 + 136) = v10;
      v11 = *v8;
      v8 += 50;
      v12 = v198;
      v199[v11] = v198;
      v198 = v12 + 1;
    }

    while (v8 != v9);
  }

  v16 = sub_10E2C84(v174);
  v17 = *v16;
  v18 = v16[1];
  if (*v16 != v18)
  {
    do
    {
      v22 = v172;
      v23 = v172 >> 2;
      if (((v172 >> 2) + 1) >> 62)
      {
        sub_1794();
      }

      if (v172 >> 2 != -1)
      {
        if (!(((v172 >> 2) + 1) >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v23) = *v17;
      v172 = 4 * v23 + 4;
      memcpy(0, 0, v22);
      v194[0] = 0;
      LODWORD(v179) = 0;
      v180 = 0;
      v181 = 0;
      *(&v179 + 1) = 0;
      v182 = 0;
      v183 = 0x3FF0000000000000;
      v184 = 1;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = -29536;
      v189[0] = 0;
      *(v189 + 3) = 0;
      v24 = *(a1 + 160);
      if (v24 >= *(a1 + 168))
      {
        v19 = sub_11097EC(a1 + 152, &v198, v17 + 1, (v17 + 4), v194, &v179);
      }

      else
      {
        sub_1106228(*(a1 + 160), v198, v17 + 1, (v17 + 4), v194, &v179);
        v19 = v24 + 200;
        *(a1 + 160) = v24 + 200;
      }

      *(a1 + 160) = v19;
      v20 = *v17;
      v17 += 50;
      v21 = v198;
      v199[v20] = v198;
      v198 = v21 + 1;
    }

    while (v17 != v18);
  }

  v25 = sub_10E2C8C(v174);
  v26 = v25;
  v27 = *(v25 + 456);
  v28 = *(v25 + 248);
  v29 = v27 + 200 * v28;
  if (v28)
  {
    v30 = 200 * v28;
    while (sub_1106280((v26 + 32), v27) || v26[29] && sub_1106280((v26 + 4), v27))
    {
      v27 += 200;
      v30 -= 200;
      if (!v30)
      {
        v27 = v29;
        break;
      }
    }

    v31 = v27;
    v27 = v26[57];
    v28 = v26[31];
  }

  else
  {
    v31 = *(v25 + 456);
  }

  v32 = v27 + 200 * v28;
  while (v31 != v32)
  {
    v33 = v172;
    v34 = v172 >> 2;
    if (((v172 >> 2) + 1) >> 62)
    {
      sub_1794();
    }

    if (v172 >> 2 != -1)
    {
      if (!(((v172 >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    *(4 * v34) = *v31;
    v172 = 4 * v34 + 4;
    memcpy(0, 0, v33);
    v35 = *(a1 + 184);
    if (v35 >= *(a1 + 192))
    {
      v36 = sub_1109960(a1 + 176, &v198, (v31 + 8), v31 + 16, (v31 + 104), v31 + 112);
    }

    else
    {
      sub_1106228(*(a1 + 184), v198, (v31 + 8), v31 + 16, (v31 + 104), v31 + 112);
      v36 = v35 + 200;
      *(a1 + 184) = v35 + 200;
    }

    *(a1 + 184) = v36;
    v37 = *v31;
    v31 += 200;
    v38 = v198;
    v199[v37] = v198;
    v198 = v38 + 1;
    while (v31 != v29 && (sub_1106280((v26 + 32), v31) || v26[29] && sub_1106280((v26 + 4), v31)))
    {
      v31 += 200;
    }
  }

  v39 = sub_10E2904(v174);
  if (v39)
  {
    v40 = 0;
    v41 = v174;
    do
    {
      LODWORD(v179) = v40;
      if (v199[v40] == -1)
      {
        if (sub_10E2994(v41, &v179) == 1 && sub_10E29C4(v174, &v179) == 1 && (v43 = sub_10E2AB8(v174, &v179), v43 == sub_10E2B58(v174, &v179)))
        {
          v41 = v174;
        }

        else
        {
          v44 = v172;
          v45 = v172 >> 2;
          if (((v172 >> 2) + 1) >> 62)
          {
            sub_1794();
          }

          if (v172 >> 2 != -1)
          {
            if (!(((v172 >> 2) + 1) >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          *(4 * v45) = v40;
          v172 = 4 * v45 + 4;
          memcpy(0, 0, v44);
          v41 = v174;
          v42 = v198;
          v199[v40] = v198;
          v198 = v42 + 1;
        }
      }

      ++v40;
    }

    while (v39 != v40);
  }

  v168 = sub_3B1348(*a1);
  v46 = v198;
  v47 = *(a1 + 56);
  if (v198 >= ((*(a1 + 64) - v47) >> 2) && v198 >= ((*(a1 + 72) - v47) >> 2))
  {
    operator new();
  }

  v48 = (a1 + 80);
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 88) - *(a1 + 80)) >> 4) < v198)
  {
    sub_1109F6C((a1 + 80), v198);
  }

  v170 = (a1 + 104);
  if (v46 > (*(a1 + 120) - *(a1 + 104)) >> 4)
  {
    operator new();
  }

  if (v172)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      v197 = *v50;
      v51 = v199[v197];
      v52 = *(a1 + 56);
      v53 = *(a1 + 64);
      v54 = v53 - v52;
      if (((v53 - v52) >> 2) - 1 <= v51)
      {
        v55 = (v51 + 2);
        v56 = *(a1 + 8);
        v57 = *(a1 + 16);
        v58 = (v57 - v56) >> 2;
        if (v55 <= v58)
        {
          if (v55 < v58)
          {
            *(a1 + 16) = v56 + 4 * v55;
          }
        }

        else
        {
          sub_569AC(v167, v55 - v58, (v57 - 4));
          v52 = *(a1 + 56);
          v53 = *(a1 + 64);
          v54 = v53 - v52;
        }

        v59 = v54 >> 2;
        if (v55 <= v59)
        {
          if (v55 < v59)
          {
            *(a1 + 64) = v52 + 4 * v55;
          }
        }

        else
        {
          sub_569AC(a1 + 56, v55 - v59, (v53 - 4));
        }
      }

      v60 = v174;
      sub_10E2B7C(v174, &v197);
      v61 = *(a1 + 104);
      v62 = (*(a1 + 112) - v61) >> 4;
      if (v62 <= v51)
      {
        v63 = (v51 + 1);
        LOWORD(v179) = 0;
        *(&v179 + 1) = 0;
        if (v63 <= v62)
        {
          if (v63 < v62)
          {
            *(a1 + 112) = v61 + 16 * v63;
          }
        }

        else
        {
          sub_110A21C(v170, v63 - v62, &v179);
        }
      }

      v64 = sub_10E2E2C(v174, &v197);
      v65 = sub_36383C(v168, (HIDWORD(v64) & 0xFFFE0000FFFFFFFFLL | (WORD1(v64) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v64 >> 1) & 1) << 48)) ^ 0x1000000000000);
      if (!v65)
      {
        v74 = 0.0;
        v75 = *(a1 + 104);
        v76 = (*(a1 + 112) - v75) >> 4;
        if (v76 > v51)
        {
          goto LABEL_112;
        }

        goto LABEL_108;
      }

      v66 = &v65[-*v65];
      v67 = *v66;
      if (v67 >= 0xB && *(v66 + 5))
      {
        v68 = *&v65[*(v66 + 5)];
        v69 = *(v168 + 3880);
        if (!*(v168 + 3880))
        {
          goto LABEL_101;
        }
      }

      else
      {
        v68 = 0xFFFF;
        v69 = *(v168 + 3880);
        if (!*(v168 + 3880))
        {
          goto LABEL_101;
        }
      }

      if (v67 >= 0x11)
      {
        v70 = *(v66 + 8);
        if (v70)
        {
          v71 = &v65[v70 + *&v65[v70]];
          if (*v71 >= v69)
          {
            v72 = *&v71[2 * v69 + 2];
            if ((v72 + 1) > 1u)
            {
              v73 = v72;
LABEL_103:
              v74 = v73 / 1000.0;
              v75 = *(a1 + 104);
              v76 = (*(a1 + 112) - v75) >> 4;
              if (v76 > v51)
              {
                goto LABEL_112;
              }

              goto LABEL_108;
            }
          }
        }
      }

LABEL_101:
      if (v68 != 0xFFFF)
      {
        v73 = v68;
        goto LABEL_103;
      }

      v74 = 0.3;
      v75 = *(a1 + 104);
      v76 = (*(a1 + 112) - v75) >> 4;
      if (v76 > v51)
      {
        goto LABEL_112;
      }

LABEL_108:
      v77 = (v51 + 1);
      LOWORD(v179) = 0;
      *(&v179 + 1) = 0;
      if (v77 <= v76)
      {
        if (v77 < v76)
        {
          *(a1 + 112) = v75 + 16 * v77;
        }
      }

      else
      {
        sub_110A21C(v170, v77 - v76, &v179);
        v75 = *v170;
      }

LABEL_112:
      *(v75 + 16 * v51 + 8) = v74;
      sub_10E2918(v174, &v197, v194);
      v169 = v50;
      v78 = v195;
      v178 = v196;
      if (v195 != v196)
      {
        v176 = v194[1];
        v177 = v194[0];
        v79 = (v51 + 1);
        v175 = (v51 + 2);
        v171 = 4 * v175 - 4;
        v173 = v51;
        while (2)
        {
          sub_1107924(a1, v60, v51, *v177 + 176 * v78, &v199, &v179);
          v80 = DWORD2(v179);
          if (DWORD1(v179) == -1 || DWORD2(v179) == -1)
          {
            goto LABEL_208;
          }

          v82 = v49;
          LODWORD(v179) = v49;
          v83 = *(a1 + 56);
          v84 = *(a1 + 64);
          v85 = v84->i64 - v83;
          v86 = ((v84 - v83) >> 2) - 1;
          if (v79 < v86)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v166 = sub_2D390(exception, "outgoing arc cannot be inserted because vertices with higher index are already present in the graph", 0x63uLL);
          }

          if (v86 > v51)
          {
            goto LABEL_166;
          }

          v87 = *(a1 + 8);
          v88 = *(a1 + 16);
          v89 = v88 - v87;
          v90 = (v88 - v87) >> 2;
          v91 = v175 - v90;
          if (v175 <= v90)
          {
            if (v175 < v90)
            {
              *(a1 + 16) = v87 + 4 * v175;
            }

            v48 = (a1 + 80);
            v97 = v175 >= v85 >> 2;
            v98 = v175 - (v85 >> 2);
            if (v175 <= v85 >> 2)
            {
              goto LABEL_130;
            }
          }

          else
          {
            v92 = *(a1 + 24);
            if (v91 > (v92 - v88) >> 2)
            {
              v93 = v92 - v87;
              v94 = v93 >> 1;
              if (v93 >> 1 <= v175)
              {
                v94 = v175;
              }

              if (v93 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v95 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v95 = v94;
              }

              if (!(v95 >> 62))
              {
                operator new();
              }

              goto LABEL_223;
            }

            v104 = &v88[v91];
            v105 = *(v88 - 1);
            v48 = (a1 + 80);
            if ((v171 - v89) < 0x1C)
            {
              goto LABEL_238;
            }

            v106 = ((v171 - v89) >> 2) + 1;
            v107 = vdupq_n_s32(v105);
            v108 = (v88 + 4);
            v109 = v106 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v108[-1] = v107;
              *v108 = v107;
              v108 += 2;
              v109 -= 8;
            }

            while (v109);
            v88 += v106 & 0x7FFFFFFFFFFFFFF8;
            if (v106 != (v106 & 0x7FFFFFFFFFFFFFF8))
            {
LABEL_238:
              do
              {
                *v88++ = v105;
              }

              while (v88 != v104);
            }

            *(a1 + 16) = v104;
            v83 = *(a1 + 56);
            v84 = *(a1 + 64);
            v85 = v84->i64 - v83;
            v110 = (v84->i64 - v83) >> 2;
            v97 = v175 >= v110;
            v98 = v175 - v110;
            if (v175 <= v110)
            {
LABEL_130:
              LODWORD(v51) = v173;
              if (!v97)
              {
                v96 = (v83 + 4 * v175);
                goto LABEL_158;
              }

LABEL_166:
              v128 = *(a1 + 88);
              v127 = *(a1 + 96);
              if (v128 >= v127)
              {
                v130 = 0x4EC4EC4EC4EC4EC5 * ((v128 - *v48) >> 4);
                v131 = v130 + 1;
                if ((v130 + 1) > 0x13B13B13B13B13BLL)
                {
                  sub_1794();
                }

                v132 = 0x4EC4EC4EC4EC4EC5 * ((v127 - *v48) >> 4);
                if (2 * v132 > v131)
                {
                  v131 = 2 * v132;
                }

                if (v132 >= 0x9D89D89D89D89DLL)
                {
                  v133 = 0x13B13B13B13B13BLL;
                }

                else
                {
                  v133 = v131;
                }

                v206 = v48;
                if (v133)
                {
                  if (v133 <= 0x13B13B13B13B13BLL)
                  {
                    operator new();
                  }

                  goto LABEL_223;
                }

                v202 = 0;
                v203 = 208 * v130;
                v204 = 208 * v130;
                v205 = 0;
                sub_110A370(208 * v130, &v179);
                v129 = v204 + 208;
                v204 += 208;
                v134 = *(a1 + 80);
                v135 = *(a1 + 88);
                v136 = (v203 + v134 - v135);
                if (v134 != v135)
                {
                  v137 = *(a1 + 80);
                  v138 = (v203 + v134 - v135);
                  do
                  {
                    v139 = *v137;
                    *(v138 + 2) = *(v137 + 2);
                    *v138 = v139;
                    *(v138 + 3) = 0;
                    *(v138 + 4) = 0;
                    *(v138 + 2) = 0;
                    *(v138 + 1) = *(v137 + 1);
                    *(v138 + 4) = *(v137 + 4);
                    *(v137 + 2) = 0;
                    *(v137 + 3) = 0;
                    *(v137 + 4) = 0;
                    v140 = *(v137 + 40);
                    v141 = *(v137 + 56);
                    v142 = *(v137 + 11);
                    *(v138 + 72) = *(v137 + 72);
                    *(v138 + 56) = v141;
                    *(v138 + 40) = v140;
                    *(v138 + 11) = v142;
                    *(v138 + 12) = 0;
                    *(v138 + 13) = 0;
                    *(v138 + 14) = 0;
                    *(v138 + 6) = *(v137 + 6);
                    *(v138 + 14) = *(v137 + 14);
                    *(v137 + 12) = 0;
                    *(v137 + 13) = 0;
                    *(v137 + 14) = 0;
                    v143 = *(v137 + 120);
                    v144 = *(v137 + 136);
                    v145 = *(v137 + 152);
                    *(v138 + 168) = *(v137 + 168);
                    *(v138 + 152) = v145;
                    *(v138 + 136) = v144;
                    *(v138 + 120) = v143;
                    *(v138 + 24) = 0;
                    *(v138 + 25) = 0;
                    *(v138 + 23) = 0;
                    *(v138 + 184) = *(v137 + 184);
                    *(v138 + 25) = *(v137 + 25);
                    *(v137 + 23) = 0;
                    *(v137 + 24) = 0;
                    *(v137 + 25) = 0;
                    v137 += 208;
                    v138 += 208;
                  }

                  while (v137 != v135);
                  do
                  {
                    v146 = *(v134 + 23);
                    if (v146)
                    {
                      *(v134 + 24) = v146;
                      operator delete(v146);
                    }

                    v147 = *(v134 + 12);
                    if (v147)
                    {
                      *(v134 + 13) = v147;
                      operator delete(v147);
                    }

                    v148 = *(v134 + 2);
                    if (v148)
                    {
                      *(v134 + 3) = v148;
                      operator delete(v148);
                    }

                    v134 += 208;
                  }

                  while (v134 != v135);
                }

                v149 = *(a1 + 80);
                *(a1 + 80) = v136;
                *(a1 + 88) = v129;
                *(a1 + 96) = v205;
                if (v149)
                {
                  operator delete(v149);
                }

                LODWORD(v51) = v173;
              }

              else
              {
                sub_110A370(*(a1 + 88), &v179);
                v129 = v128 + 208;
                *(a1 + 88) = v129;
              }

              *(a1 + 88) = v129;
              ++*(*(a1 + 56) + 4 * v79);
              v150 = *(a1 + 104);
              v151 = *(a1 + 112);
              v152 = (v151 - v150) >> 4;
              if (v152 <= v80)
              {
                v154 = (v80 + 1);
                v155 = v154 - v152;
                if (v154 <= v152)
                {
                  v60 = v174;
                  v153 = v82;
                  if (v154 < v152)
                  {
                    *(a1 + 112) = v150 + 16 * v154;
                  }
                }

                else
                {
                  v156 = *(a1 + 120);
                  if (v155 > (v156 - v151) >> 4)
                  {
                    v157 = v156 - v150;
                    v158 = v157 >> 3;
                    if (v157 >> 3 <= v154)
                    {
                      v158 = (v80 + 1);
                    }

                    if (v157 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v159 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v159 = v158;
                    }

                    if (!(v159 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_223;
                  }

                  v160 = v151 + 16 * v155;
                  do
                  {
                    *v151 = 0;
                    *(v151 + 8) = 0;
                    v151 += 16;
                  }

                  while (v151 != v160);
                  *(a1 + 112) = v160;
                  v153 = v82;
                  v150 = *v170;
                  v60 = v174;
                }
              }

              else
              {
                v60 = v174;
                v153 = v82;
              }

              v49 = v153 + 1;
              ++*(v150 + 16 * v80);
LABEL_208:
              if (__p)
              {
                v193 = __p;
                operator delete(__p);
              }

              if (v190)
              {
                v191 = v190;
                operator delete(v190);
              }

              if (v180)
              {
                v181 = v180;
                operator delete(v180);
              }

              v78 = *(*v176 + 4 * v78);
              if (v78 == v178)
              {
                goto LABEL_76;
              }

              continue;
            }
          }

          break;
        }

        v99 = *(a1 + 72);
        if (v98 > (v99 - v84) >> 2)
        {
          v100 = (v84->i64 - v83) >> 2;
          if ((v100 + v98) >> 62)
          {
            sub_1794();
          }

          v101 = v99 - v83;
          v102 = v101 >> 1;
          if (v101 >> 1 <= v100 + v98)
          {
            v102 = v100 + v98;
          }

          if (v101 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v103 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v103 = v102;
          }

          if (v103)
          {
            if (!(v103 >> 62))
            {
              operator new();
            }

LABEL_223:
            sub_1808();
          }

          v117 = 4 * v100;
          v118 = 4 * v100 + 4 * v98;
          v119 = v84[-1].u32[3];
          v120 = v117;
          if ((v171 - v85) < 0x1C)
          {
            goto LABEL_239;
          }

          v121 = ((v171 - v85) >> 2) + 1;
          v120 = (v117 + 4 * (v121 & 0x7FFFFFFFFFFFFFF8));
          v122 = vdupq_n_s32(v119);
          v123 = (v117 + 16);
          v124 = v121 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v123[-1] = v122;
            *v123 = v122;
            v123 += 2;
            v124 -= 8;
          }

          while (v124);
          if (v121 != (v121 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_239:
            do
            {
              *v120++ = v119;
            }

            while (v120 != v118);
          }

          v125 = *(a1 + 56);
          v126 = *(a1 + 64) - v125;
          v51 = v117 - v126;
          memcpy((v117 - v126), v125, v126);
          *(a1 + 56) = v51;
          *(a1 + 64) = v118;
          *(a1 + 72) = 0;
          v48 = (a1 + 80);
          LODWORD(v51) = v173;
          if (v125)
          {
            operator delete(v125);
          }

          goto LABEL_166;
        }

        v96 = v84 + v98;
        v111 = v84[-1].u32[3];
        if ((v171 - v85) < 0x1C)
        {
          v112 = v84;
          LODWORD(v51) = v173;
          goto LABEL_157;
        }

        v113 = ((v171 - v85) >> 2) + 1;
        v112 = v84 + (v113 & 0x7FFFFFFFFFFFFFF8);
        v114 = vdupq_n_s32(v111);
        v115 = v84 + 1;
        v116 = v113 & 0x7FFFFFFFFFFFFFF8;
        LODWORD(v51) = v173;
        do
        {
          v115[-1] = v114;
          *v115 = v114;
          v115 += 2;
          v116 -= 8;
        }

        while (v116);
        if (v113 != (v113 & 0x7FFFFFFFFFFFFFF8))
        {
          do
          {
LABEL_157:
            *v112++ = v111;
          }

          while (v112 != v96);
        }

LABEL_158:
        *(a1 + 64) = v96;
        goto LABEL_166;
      }

LABEL_76:
      v50 = v169 + 1;
    }

    while (v169 + 1 != v172);
  }

  v161 = ((*(a1 + 64) - *(a1 + 56)) >> 2) - 1;
  v162 = *(a1 + 104);
  v163 = (*(a1 + 112) - v162) >> 4;
  if (v161 <= v163)
  {
    if (v161 < v163)
    {
      *(a1 + 112) = v162 + 16 * v161;
    }
  }

  else
  {
    sub_110A570(v170, v161 - v163);
  }

  if (v199)
  {
    v200 = v199;
    operator delete(v199);
  }

  return a1;
}

void sub_1107798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v28)
  {
    operator delete(v28);
  }

  v31 = *(v29 - 168);
  if (v31)
  {
    *(v29 - 160) = v31;
    operator delete(v31);
  }

  v32 = *a12;
  if (*a12)
  {
    v27[23] = v32;
    operator delete(v32);
    v33 = *(a13 + 24);
    if (!v33)
    {
LABEL_7:
      v34 = *a13;
      if (!*a13)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v33 = *(a13 + 24);
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  v27[20] = v33;
  operator delete(v33);
  v34 = *a13;
  if (!*a13)
  {
LABEL_8:
    sub_10DF174(a11);
    _Unwind_Resume(a1);
  }

LABEL_11:
  v27[17] = v34;
  operator delete(v34);
  sub_10DF174(a11);
  _Unwind_Resume(a1);
}

void sub_1107924(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void **a5@<X4>, uint64_t a6@<X8>)
{
  v12 = 1000000000;
  v13 = sub_3B1348(*a1);
  v63 = -1;
  v64 = -1;
  v61 = 0;
  v62 = 0.0;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  v57 = 1;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 1;
  v52[0] = &v54;
  v52[1] = &v53;
  v52[2] = &v63;
  v52[3] = &v64;
  v52[4] = a5;
  v52[5] = &v62;
  v52[6] = v13;
  v52[7] = &v59;
  v52[8] = &v58;
  v52[9] = &v57;
  v52[10] = &v61;
  v52[11] = &v60;
  if (a3 != 0xFFFFFFFFLL)
  {
    v14 = *(a1 + 128);
    v15 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - v14) >> 3);
    if (v15 > a3)
    {
      v16 = v14 + 200 * a3;
LABEL_7:
      v12 = 1000000000 - *(v16 + 112);
      goto LABEL_8;
    }

    v17 = v15 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
    if (a3 >= v17)
    {
      v18 = *(a1 + 176);
      if (v17 - 0x70A3D70A3D70A3D7 * ((*(a1 + 184) - v18) >> 3) > a3)
      {
        v16 = v18 + 200 * (a3 - v17);
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  sub_1109100(v52, a4, v12);
  for (i = v64; v64 == -1; i = v64)
  {
    sub_10E2918(a2, &v63, &v50);
    sub_1109100(v52, (*v50 + 176 * v51), 0x3B9ACA00u);
  }

  v20 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - *(a1 + 128)) >> 3);
  v21 = v20 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  v22 = v21 <= i && v21 - 0x70A3D70A3D70A3D7 * ((*(a1 + 184) - *(a1 + 176)) >> 3) > i;
  if (v22 || (v20 <= i ? (v23 = v21 > i) : (v23 = 0), v23))
  {
    v24 = *(v55 - 1);
    v25 = sub_36383C(v13, *(v24 + 72) & 0xFFFFFFFFFFFFFFLL);
    v26 = 0.0;
    v27 = 0.0;
    if (!v25)
    {
      goto LABEL_32;
    }

    v28 = &v25[-*v25];
    v29 = *v28;
    if (v29 >= 0xB && *(v28 + 5))
    {
      v30 = *&v25[*(v28 + 5)];
      v31 = *(v13 + 3880);
      if (!*(v13 + 3880))
      {
        goto LABEL_29;
      }
    }

    else
    {
      v30 = 0xFFFF;
      v31 = *(v13 + 3880);
      if (!*(v13 + 3880))
      {
        goto LABEL_29;
      }
    }

    if (v29 >= 0x11)
    {
      v32 = *(v28 + 8);
      if (v32)
      {
        v33 = &v25[v32 + *&v25[v32]];
        if (*v33 >= v31)
        {
          v34 = *&v33[2 * v31 + 2];
          if ((v34 + 1) > 1u)
          {
            v35 = v34;
LABEL_31:
            v27 = v35 / 1000.0;
LABEL_32:
            v36 = *(v24 + 40);
            v37 = (v36 - *v36);
            if (*v37 >= 9u)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }
      }
    }

LABEL_29:
    if (v30 == 0xFFFF)
    {
      v27 = 0.3;
      v36 = *(v24 + 40);
      v37 = (v36 - *v36);
      if (*v37 >= 9u)
      {
LABEL_33:
        v38 = v37[4];
        if (v38)
        {
          LODWORD(v26) = *(v36 + v38);
          v26 = *&v26;
        }
      }

LABEL_36:
      i = v64;
      v39 = *(a1 + 128);
      v40 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - v39) >> 3);
      v41 = v64 - v40;
      if (v64 >= v40)
      {
        v43 = *(a1 + 152);
        v44 = v40 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - v43) >> 3);
        v45 = v64 >= v44;
        v46 = v64 - v44;
        if (v45)
        {
          v42 = *(a1 + 176) + 200 * v46;
        }

        else
        {
          v42 = v43 + 200 * v41;
        }
      }

      else
      {
        v42 = v39 + 200 * v64;
      }

      v47 = v27 * v26;
      LODWORD(v27) = *(v42 + 16);
      v62 = v62 + v47 * (*&v27 / 1000000000.0);
      goto LABEL_42;
    }

    v35 = v30;
    goto LABEL_31;
  }

LABEL_42:
  if (v53)
  {
    *&v50 = -NAN;
    *(&v50 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    sub_1109B28(a6, -1, a3, i, &v54, (a4 + 112), &v50, &v59, v62, (a4 + 144), v58, v57, v49, 0x7FFFFFFF, v61, v60, (a4 + 152));
    v48 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_44;
  }

  *(a6 + 8) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 72) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 152) = 0;
  *(a6 + 136) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 88) = 0u;
  *a6 = -1;
  *(a6 + 8) = -1;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 80) = 0x1000000000000;
  *(a6 + 104) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 120) = -NAN;
  *(a6 + 128) = 0x7FFFFFFFFFFFFFFFLL;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  *(a6 + 156) = 0x7FFFFFFF;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 160) = 0u;
  v48 = v54;
  if (v54)
  {
LABEL_44:
    v55 = v48;
    operator delete(v48);
  }
}

void sub_1107DD8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1107E34(void *a1, unsigned int a2)
{
  v2 = a1[7] - a1[6];
  if (a2 + 1 >= (v2 >> 2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v3 = (v2 >> 2) - 1;
  v4 = a1[12];
  if (v3 > (a1[13] - v4) >> 4)
  {
    v8 = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(v8, "no or incomplete vertex data stored", 0x23uLL);
  }

  return v4 + 16 * a2;
}

void *sub_1107F28@<X0>(void *result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = (v3 + 1);
  v5 = result[7];
  if (v4 >= (result[8] - v5) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v6 = result[10];
  v7 = v6 + 208 * *(v5 + 4 * v4);
  *a3 = v6 + 208 * *(v5 + 4 * v3);
  a3[1] = v7;
  return result;
}

uint64_t sub_1107FA0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = (v2 + 1);
  v4 = *(a1 + 56);
  if (v3 >= (*(a1 + 64) - v4) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  return (*(v4 + 4 * v3) - *(v4 + 4 * v2));
}

void sub_110802C(void *a1, unsigned int *a2, void *a3)
{
  a3[1] = *a3;
  v3 = *a2;
  v4 = (v3 + 1);
  v5 = a1[7];
  if (v4 >= (a1[8] - v5) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v13 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v6 = *(v5 + 4 * v3);
  v7 = *(v5 + 4 * v4);
  if (v6 != v7)
  {
    v9 = a1[10];
    v10 = v9 + 208 * v7;
    v11 = v9 + 208 * v6;
    do
    {
      v14 = v11;
      sub_4C7358(a3, &v14);
      v11 += 208;
    }

    while (v11 != v10);
  }
}

BOOL sub_1108134(void *a1, unsigned int a2)
{
  if (a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v3 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3);
  return v3 <= a2 && v3 - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3) > a2;
}

BOOL sub_110818C(void *a1, unsigned int a2)
{
  if (a2 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  v3 = 0x8F5C28F5C28F5C29 * ((a1[17] - a1[16]) >> 3) - 0x70A3D70A3D70A3D7 * ((a1[20] - a1[19]) >> 3);
  return v3 <= a2 && v3 - 0x70A3D70A3D70A3D7 * ((a1[23] - a1[22]) >> 3) > a2;
}

void sub_1108290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, char a6, uint64_t a7)
{
  v27 = a6;
  *(a1 + 200) = 0x7FFFFFFF;
  v26 = 0x7FFFFFFF;
  v25[0] = a1;
  v25[1] = &v26;
  v25[2] = a5;
  v24[0] = a1;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = &v26;
  v24[4] = &v27;
  v24[5] = a7;
  v8 = *(a1 + 128);
  v9 = *(a1 + 136);
  if (v8 != v9)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v22 = _Q0;
    do
    {
      v28 = 0u;
      v29 = 0u;
      v30 = v22;
      v31 = 0x3FF0000000000000;
      v32 = 1;
      sub_10AFB6C(a3, &v28, (v8 + 26), (v8 + 28), a4, 0);
      if (v32)
      {
        v17 = sub_F8634C(&v28, &v30, v16);
        if (v29 + v17 != -1 && DWORD1(v29) + HIDWORD(v17) != 0x7FFFFFFF && *(&v29 + 1) + v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = *v8;
          v23 = DWORD1(v29) + HIDWORD(v17);
          LODWORD(v28) = v21;
          sub_110A6C4(a2 + 8, &v28, &v23);
        }
      }

      v8 += 50;
    }

    while (v8 != v9);
  }

  sub_11083EC(a2, v25, &v28, v24);
}

void sub_11083EC(uint64_t a1, _DWORD **a2, uint64_t a3, uint64_t a4)
{
  while (*(a1 + 880))
  {
    v7 = *(a1 + 832);
    v8 = (*(a1 + 776) + 8 * *v7);
    v10 = *v8;
    v9 = v8[1];
    sub_DD38(a1 + 800, v7);
    v11 = *(a1 + 832);
    *(*(a1 + 856) + 4 * *v11) = -1;
    v12 = *(a1 + 880) - 1;
    *(a1 + 880) = v12;
    if (v12)
    {
      *v11 = v11[v12];
      v13 = *(a1 + 832);
      *(*(a1 + 856) + 4 * *v13) = 0;
      v14 = *(a1 + 880);
      if (v14 >= 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = v15 + 5;
          if (v18 >= v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v18;
          }

          if (v18 <= v17)
          {
            break;
          }

          v20 = v16;
          v21 = v13[2 * v16 + 1];
          v22 = &v13[2 * v17 + 1];
          v16 = -1;
          v23 = v21;
          do
          {
            v25 = *v22;
            v22 += 2;
            v24 = v25;
            if (v25 < v23)
            {
              v23 = v24;
              v16 = v17;
            }

            ++v17;
          }

          while (v17 < v19);
          if (v16 >= v14)
          {
            break;
          }

          v26 = 2 * v16;
          v27 = &v13[v26];
          v28 = 8 * v20;
          v29 = *&v13[v26];
          *v27 = *(v13 + v28);
          v27[1] = v21;
          *(v13 + v28) = v29;
          v13 = *(a1 + 832);
          v30 = v13[v26];
          v31 = *(a1 + 856);
          v32 = *(v13 + v28);
          LODWORD(v28) = *(v31 + 4 * v30);
          *(v31 + 4 * v30) = *(v31 + 4 * v32);
          *(v31 + 4 * v32) = v28;
          v15 = 4 * v16;
          v17 = (4 * v16) | 1;
          v14 = *(a1 + 880);
        }

        while (v17 < v14);
      }
    }

    *(a1 + 840) -= 8;
    if (v10 != -1)
    {
      v33 = *a2;
      v34 = 0x8F5C28F5C28F5C29 * ((*(*a2 + 17) - *(*a2 + 16)) >> 3);
      if (v34 <= v10 && v34 - 0x70A3D70A3D70A3D7 * ((*(*a2 + 20) - *(*a2 + 19)) >> 3) > v10)
      {
        v36 = *(v33 + 50);
        if (v36 == 0x7FFFFFFF || v9 < v36)
        {
          *(v33 + 50) = v9;
        }
      }
    }

    v37 = *a2[2];
    v38 = 0x7FFFFFFF;
    if (v37 != 0x7FFFFFFF)
    {
      if (v9 < 0)
      {
        v39 = -5;
      }

      else
      {
        v39 = 5;
      }

      v38 = v9 / 10 + v37 + (((103 * (v39 + v9 % 10)) >> 15) & 1) + ((103 * (v39 + v9 % 10)) >> 10);
    }

    *a2[1] = v38;
    v40 = (v10 + 1);
    v41 = *(*a1 + 48);
    if (v40 >= (*(*a1 + 56) - v41) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v54 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v42 = *(v41 + 4 * v10);
    v43 = *(v41 + 4 * v40);
    if (v42 != v43)
    {
      v44 = *(*a1 + 72);
      v45 = (v44 + 208 * v43);
      v46 = (v44 + 208 * v42 + 8);
      do
      {
        v47 = v46 - 2;
        v48 = sub_110872C(*a4, *(*a4 + 80) + 208 * *(v46 - 2), *(a4 + 8), *(a4 + 16), *(a4 + 24), **(a4 + 32), v9, *(a4 + 40));
        v46[37] = HIDWORD(v48);
        if (v48 != -1 && HIDWORD(v48) != 0x7FFFFFFF && v49 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v52 = *v46;
          v55 = v9 + HIDWORD(v48);
          v56 = v52;
          sub_110AA14(a1 + 8, &v56, &v55);
        }

        v46 += 52;
      }

      while (v47 + 52 != v45);
    }
  }
}

unint64_t sub_110872C(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, unsigned int *a5, int a6, int a7, uint64_t a8)
{
  v12 = *(a2 + 4);
  if (v12 == -1)
  {
    v14 = 0;
    v15 = *(a2 + 8);
    if (v15 == -1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - *(a1 + 128)) >> 3);
    if (v13 <= v12)
    {
      v23 = v13 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
      v14 = v23 <= v12 && v23 - 0x70A3D70A3D70A3D7 * ((*(a1 + 184) - *(a1 + 176)) >> 3) > v12;
      v15 = *(a2 + 8);
      if (v15 == -1)
      {
LABEL_31:
        v20 = 0;
        if (*(a2 + 80))
        {
          v25 = *(a2 + 48) == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25 && *(a2 + 56) != 0)
        {
          goto LABEL_49;
        }

LABEL_39:
        if (v14)
        {
          v27 = *(a1 + 128);
          v28 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - v27) >> 3);
          v29 = v12 - v28;
          if (v12 >= v28)
          {
            v48 = *(a1 + 152);
            v49 = v28 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - v48) >> 3);
            _CF = v12 >= v49;
            v50 = v12 - v49;
            if (_CF)
            {
              v30 = *(a1 + 176) + 200 * v50;
            }

            else
            {
              v30 = v48 + 200 * v29;
            }
          }

          else
          {
            v30 = v27 + 200 * v12;
          }

          v38 = (1000000000 - *(v30 + 112));
          if (v20)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v38 = 1000000000;
          if (v20)
          {
LABEL_69:
            v60 = *(a1 + 128);
            v61 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - v60) >> 3);
            if (v15 >= v61)
            {
              v63 = *(a1 + 152);
              v64 = v61 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - v63) >> 3);
              _CF = v15 >= v64;
              v65 = v15 - v64;
              if (_CF)
              {
                v62 = *(a1 + 176) + 200 * v65;
              }

              else
              {
                v62 = v63 + 200 * (v15 - v61);
              }
            }

            else
            {
              v62 = v60 + 200 * v15;
            }

            v39 = *(v62 + 16);
            return sub_117F22C(*(a2 + 16), *(a2 + 24), 0, 0, a3, a4, a6, *a5, a7, 0, v38, SHIDWORD(v38), v39, a8, *a1);
          }
        }

        v39 = 0;
        return sub_117F22C(*(a2 + 16), *(a2 + 24), 0, 0, a3, a4, a6, *a5, a7, 0, v38, SHIDWORD(v38), v39, a8, *a1);
      }
    }

    else
    {
      v14 = 1;
      v15 = *(a2 + 8);
      if (v15 == -1)
      {
        goto LABEL_31;
      }
    }
  }

  v16 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - *(a1 + 128)) >> 3);
  v17 = v16 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - *(a1 + 152)) >> 3);
  if (v17 <= v15 && v17 - 0x70A3D70A3D70A3D7 * ((*(a1 + 184) - *(a1 + 176)) >> 3) > v15)
  {
    v20 = 1;
    if (*(a2 + 80))
    {
      v31 = *(a2 + 48) == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31 || *(a2 + 56) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v20 = v16 <= v15 && v17 > v15;
    if (*(a2 + 80))
    {
      _ZF = *(a2 + 48) == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF || *(a2 + 56) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_49:
  v33 = *(a1 + 128);
  v34 = 0x8F5C28F5C28F5C29 * ((*(a1 + 136) - v33) >> 3);
  v35 = v15 - v34;
  if (v15 >= v34)
  {
    v40 = *(a1 + 152);
    v41 = v34 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - v40) >> 3);
    _CF = v15 >= v41;
    v43 = v15 - v41;
    if (_CF)
    {
      v36 = (*(a1 + 176) + 200 * v43 + 16);
      v37 = v12 - v34;
      if (v12 >= v34)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v36 = (v40 + 200 * v35 + 16);
      v37 = v12 - v34;
      if (v12 >= v34)
      {
        goto LABEL_56;
      }
    }

LABEL_61:
    v47 = v33 + 200 * v12;
    goto LABEL_63;
  }

  v36 = (v33 + 200 * v15 + 16);
  v37 = v12 - v34;
  if (v12 < v34)
  {
    goto LABEL_61;
  }

LABEL_56:
  v44 = *(a1 + 152);
  v45 = v34 - 0x70A3D70A3D70A3D7 * ((*(a1 + 160) - v44) >> 3);
  _CF = v12 >= v45;
  v46 = v12 - v45;
  if (_CF)
  {
    v47 = *(a1 + 176) + 200 * v46;
  }

  else
  {
    v47 = v44 + 200 * v37;
  }

LABEL_63:
  v51 = *v36 - *(v47 + 112);
  sub_35CC(v66, *a5);
  v52 = *(*(a2 + 24) - 8);
  v67 = 0u;
  v68 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v69 = _Q0;
  v70 = 0x3FF0000000000000;
  v71 = 1;
  sub_10B0E88(a3, &v67, (v52 + 40), v51, a4, v66, a6);
  if (v71 == 1)
  {
    v57 = sub_F8634C(&v67, &v69, v56);
    v58 = (v68 + v57) | ((DWORD1(v68) + HIDWORD(v57)) << 32);
  }

  else
  {
    v58 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_3874(v66);
  return v58;
}

void sub_1108B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void *sub_1108B54()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  sub_10B73A8(v65, *v0, 0);
  v10 = ((v9[8] - v9[7]) >> 2) - 1;
  v55 = v9 + 1;
  sub_1109D08(v56, v10);
  sub_1108290(v9, &v55, v65, v8, v4, v2, &v68);
  v49 = (((v9[8] - v9[7]) << 30) - 0x100000000) >> 32;
  if (v49)
  {
    v12 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    v50 = _Q0;
    while (v12 != 0xFFFFFFFF)
    {
      v17 = v9[16];
      if (0x8F5C28F5C28F5C29 * ((v9[17] - v17) >> 3) <= v12)
      {
        break;
      }

      v69 = 0u;
      v68 = 0u;
      v70 = v50;
      v71 = 1.0;
      v72 = 1;
      sub_10AFB6C(v65, &v68, v17 + 200 * v12 + 104, v17 + 200 * v12 + 112, v6, 0);
      if (v72)
      {
        v19 = sub_F8634C(&v68, &v70, v18);
        v53 = v69 + v19;
        if (v69 + v19 != -1)
        {
          v52 = DWORD1(v69) + HIDWORD(v19);
          if (DWORD1(v69) + HIDWORD(v19) != 0x7FFFFFFF)
          {
            v51 = *(&v69 + 1) + v20;
            if (*(&v69 + 1) + v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_23;
            }
          }
        }
      }

LABEL_14:
      if (++v12 == v49)
      {
        goto LABEL_2;
      }
    }

    v52 = 0;
    v53 = 0;
    v51 = 0;
LABEL_23:
    v21 = (v12 + 1);
    v22 = v9[7];
    if (v21 >= (v9[8] - v22) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v48 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v23 = *(v22 + 4 * v12);
    v24 = *(v22 + 4 * v21);
    if (v23 == v24)
    {
      goto LABEL_14;
    }

    v25 = v9[10];
    v26 = v25 + 208 * v24;
    v27 = v25 + 208 * v23;
    while (1)
    {
      v28 = *(v27 + 8);
      if (v28 == -1 || ((v29 = v9[17] - v9[16], v30 = 0x8F5C28F5C28F5C29 * (v29 >> 3), v31 = v9[19], v30 <= v28) ? (v32 = v30 - 0x70A3D70A3D70A3D7 * ((v9[20] - v31) >> 3) > v28) : (v32 = 0), !v32))
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
LABEL_33:
        LODWORD(v68) = 0x7FFFFFFF;
        v36 = sub_110872C(v9, v27, v65, v6, &v68, v2, 0, &v54);
        if (v36 != -1 && (v36 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v37 != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(v27 + 120) = (v33 + v53 + v36) | ((v34 + v52 + HIDWORD(v36)) << 32);
          *(v27 + 128) = v35 + v51 + v37;
        }

        goto LABEL_26;
      }

      v68 = 0u;
      v69 = 0u;
      v70 = v50;
      v71 = 1.0;
      v72 = 1;
      sub_10AFB6C(v65, &v68, v31 - v29 + 200 * v28 + 8, v31 - v29 + 200 * v28 + 16, v6, 0);
      if (v72)
      {
        break;
      }

LABEL_26:
      v27 += 208;
      if (v27 == v26)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v38) = v68;
    v39 = *&v70 * v38;
    if (v39 >= 0.0)
    {
      if (v39 >= 4.50359963e15)
      {
        goto LABEL_44;
      }

      v40 = (v39 + v39) + 1;
    }

    else
    {
      if (v39 <= -4.50359963e15)
      {
        goto LABEL_44;
      }

      v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
    }

    v39 = (v40 >> 1);
LABEL_44:
    v41 = *(&v70 + 1) * SDWORD1(v68);
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_50;
      }

      v42 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_50;
      }

      v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v42 >> 1);
LABEL_50:
    v43 = v71 * *(&v68 + 1);
    if (v43 >= 0.0)
    {
      if (v43 >= 4.50359963e15)
      {
        goto LABEL_56;
      }

      v44 = (v43 + v43) + 1;
    }

    else
    {
      if (v43 <= -4.50359963e15)
      {
        goto LABEL_56;
      }

      v44 = (v43 + v43) - 1 + (((v43 + v43) - 1) >> 63);
    }

    v43 = (v44 >> 1);
LABEL_56:
    v33 = v69 + v39;
    v34 = DWORD1(v69) + v41;
    v35 = *(&v69 + 1) + v43;
    if (v33 != -1 && v34 != 0x7FFFFFFF && v35 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_2:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  result = sub_360988(v56);
  if (v67 == 1)
  {
    return sub_3E3DF0(v66);
  }

  return result;
}

void sub_11090B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_404190(va);
  if (LOBYTE(STACK[0x18C0]) == 1)
  {
    sub_3E3DF0(&STACK[0x400]);
  }

  _Unwind_Resume(a1);
}

void sub_1109100(void ***a1, unsigned int *a2, unsigned int a3)
{
  v7 = **a1;
  v6 = (*a1)[1];
  while (v6 != v7)
  {
    v8 = *(v6 - 1);
    v6 -= 8;
    v9 = (((*(v8 + 72) >> 16) & 0xFFFF0000 | (*(v8 + 72) << 32) | (2 * ((*(v8 + 72) & 0xFF000000000000) == 0))) + 4 * *(v8 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v8 + 88) >> 1) & 1;
    v10 = sub_10DF6C4(a2);
    if (v9 == ((((*(v10 + 72) >> 16) & 0xFFFF0000 | (*(v10 + 72) << 32) | (2 * ((*(v10 + 72) & 0xFF000000000000) == 0))) + 4 * *(v10 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(v10 + 88) >> 1) & 1))
    {
      *a1[1] = 0;
      break;
    }
  }

  v11 = *a2;
  v12 = a1[3];
  *a1[2] = v11;
  *v12 = *(*a1[4] + v11);
  v13 = sub_10DF6C4(a2);
  v14 = v13;
  v15 = 3;
  if (!*(v13 + 38))
  {
    v15 = 2;
  }

  v16 = v13[v15];
  v17 = 0.0;
  v18 = 0.0;
  if (!v16)
  {
LABEL_20:
    v28 = *v13;
    v29 = &(*v13)[-**v13];
    if (*v29 < 9u)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v19 = a1[6];
  v20 = (v16 - *v16);
  v21 = *v20;
  if (v21 >= 0xB && v20[5])
  {
    v22 = *(v16 + v20[5]);
    v23 = *(v19 + 1940);
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = 0xFFFF;
    v23 = *(v19 + 1940);
    if (!v23)
    {
      goto LABEL_17;
    }
  }

  if (v21 >= 0x11)
  {
    v24 = v20[8];
    if (v24)
    {
      v25 = (v16 + v24 + *(v16 + v24));
      if (*v25 >= v23)
      {
        v26 = *(v25 + v23 + 1);
        if ((v26 + 1) > 1u)
        {
          v27 = v26;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_17:
  if (v22 != 0xFFFF)
  {
    v27 = v22;
LABEL_19:
    v18 = v27 / 1000.0;
    goto LABEL_20;
  }

  v18 = 0.3;
  v28 = *v13;
  v29 = &(*v13)[-**v13];
  if (*v29 < 9u)
  {
    goto LABEL_24;
  }

LABEL_21:
  v30 = *(v29 + 4);
  if (v30)
  {
    LODWORD(v17) = *(v28 + v30);
    v17 = *&v17;
  }

LABEL_24:
  v31 = a3 / 1000000000.0;
  *a1[5] = *a1[5] + v31 * (v18 * v17);
  *a1[7] = (*a1[7] | sub_F6D98C(v13, 1, 1));
  v33 = *v14;
  v34 = **v14;
  v35 = -v34;
  v36 = &(*v14)[-v34];
  if (*v36 < 0x2Fu || (v37 = *(v36 + 23), !*(v36 + 23)))
  {
    v42 = a1[9];
    *a1[8] = 0;
    *v42 = 0;
    goto LABEL_57;
  }

  v41 = !v33[v37] && (v38 = v14[5], v39 = (v38 - *v38), *v39 >= 0x2Fu) && (v40 = v39[23]) != 0 && *(v38 + v40) == 0;
  *a1[8] &= v41;
  v43 = v33[v37];
  v44 = v43 > 0x1A;
  v45 = (1 << v43) & 0x4810001;
  if (v44 || v45 == 0)
  {
    goto LABEL_46;
  }

  v47 = v14[5];
  v48 = (v47 - *v47);
  if (*v48 < 0x2Fu)
  {
    goto LABEL_46;
  }

  v49 = v48[23];
  if (!v49)
  {
    goto LABEL_46;
  }

  v50 = *(v47 + v49);
  v51 = 1;
  if (v50 > 22)
  {
    if (v50 != 23 && v50 != 26)
    {
      goto LABEL_46;
    }
  }

  else if (v50 && v50 != 16)
  {
LABEL_46:
    v51 = 0;
  }

  *a1[9] &= v51;
  if (v33[v37])
  {
    goto LABEL_57;
  }

  if (*(v36 + 4))
  {
    LODWORD(v32) = *&v33[*(v36 + 4)];
    v32 = v31 * *&v32;
    if (v32 < 0.0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v32 = v31 * 0.0;
    if (v31 * 0.0 < 0.0)
    {
LABEL_50:
      if (v32 > -4.50359963e15)
      {
        v53 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
LABEL_55:
        v32 = (v53 >> 1);
        goto LABEL_56;
      }

      goto LABEL_56;
    }
  }

  if (v32 < 4.50359963e15)
  {
    v53 = (v32 + v32) + 1;
    goto LABEL_55;
  }

LABEL_56:
  *a1[10] = *a1[10] + v32;
  v33 = *v14;
  v35 = -**v14;
LABEL_57:
  v54 = &v33[v35];
  if (*v54 >= 0x2Fu && *(v54 + 23))
  {
    v55 = v33[*(v54 + 23)];
    v44 = v55 > 0x1A;
    v56 = (1 << v55) & 0x4810000;
    if (!v44 && v56 != 0)
    {
      v58 = *(v54 + 4);
      if (v58)
      {
        LODWORD(v32) = *&v33[v58];
        v59 = v31 * *&v32;
        if (v59 < 0.0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v59 = v31 * 0.0;
        if (v31 * 0.0 < 0.0)
        {
LABEL_65:
          if (v59 > -4.50359963e15)
          {
            v60 = (v59 + v59) - 1 + (((v59 + v59) - 1) >> 63);
LABEL_70:
            v59 = (v60 >> 1);
            goto LABEL_71;
          }

          goto LABEL_71;
        }
      }

      if (v59 < 4.50359963e15)
      {
        v60 = (v59 + v59) + 1;
        goto LABEL_70;
      }

LABEL_71:
      *a1[11] = *a1[11] + v59;
    }
  }

  v61 = *a1;
  v63 = (*a1)[1];
  v62 = (*a1)[2];
  if (v63 >= v62)
  {
    v65 = *v61;
    v66 = v63 - *v61;
    v67 = v66 >> 3;
    v68 = (v66 >> 3) + 1;
    if (v68 >> 61)
    {
      sub_1794();
    }

    v69 = v62 - v65;
    if (v69 >> 2 > v68)
    {
      v68 = v69 >> 2;
    }

    if (v69 >= 0x7FFFFFFFFFFFFFF8)
    {
      v70 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v70 = v68;
    }

    if (v70)
    {
      if (!(v70 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v67) = v14;
    v64 = 8 * v67 + 8;
    memcpy(0, v65, v66);
    *v61 = 0;
    v61[1] = v64;
    v61[2] = 0;
    if (v65)
    {
      operator delete(v65);
    }
  }

  else
  {
    *v63 = v14;
    v64 = (v63 + 8);
  }

  v61[1] = v64;
}

uint64_t sub_1109678(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_11097D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11097EC(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1109948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1109960(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v6 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v8 = 0x147AE147AE147AELL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  sub_1106228(8 * ((*(a1 + 8) - *a1) >> 3), *a2, a3, a4, a5, a6);
  v10 = v9 + 200;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v9 - v12;
  memcpy((v9 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_1109ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1109AD4(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1109B28(uint64_t result, int a2, int a3, int a4, uint64_t a5, void *a6, _OWORD *a7, void *a8, double a9, uint64_t *a10, char a11, char a12, int a13, int a14, uint64_t a15, uint64_t a16, void *a17)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = *a5;
  *(result + 32) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0x1000000000000;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  v17 = a6[1];
  if (v17 != *a6)
  {
    if (((v17 - *a6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 120) = *a7;
  *(result + 136) = *a8;
  v18 = *a10;
  *(result + 184) = 0;
  *(result + 144) = v18;
  *(result + 152) = a11;
  *(result + 153) = a12;
  *(result + 156) = a14;
  *(result + 160) = a9;
  *(result + 168) = a15;
  *(result + 176) = a16;
  *(result + 192) = 0;
  *(result + 200) = 0;
  v19 = a17[1];
  if (v19 != *a17)
  {
    if (((v19 - *a17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1109CA4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    v1[24] = v5;
    operator delete(v5);
    v6 = v1[12];
    if (!v6)
    {
LABEL_3:
      v7 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = v1[12];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v1[13] = v6;
  operator delete(v6);
  v7 = *v3;
  if (!*v3)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[3] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void *sub_1109D08(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C((v5 + 103), a2);
  if (v4 > (a1[98] - a1[96]) >> 3)
  {
    operator new();
  }

  return a1;
}

void sub_1109DF4(_Unwind_Exception *a1)
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

uint64_t sub_1109E54(uint64_t result, int a2)
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

void sub_1109F30(_Unwind_Exception *a1)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  sub_10DF1D8(v2);
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_1109F6C(void *result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x13B13B13B13B13CLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_110A04C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_110A060(va);
  _Unwind_Resume(a1);
}

uint64_t sub_110A060(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 112);
    if (v5)
    {
      *(i - 104) = v5;
      operator delete(v5);
    }

    v6 = *(i - 192);
    if (v6)
    {
      *(i - 184) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_110A0E8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 2);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v6[4];
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = 0;
      v8 = *(v6 + 5);
      v9 = *(v6 + 7);
      v10 = v6[11];
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 56) = v9;
      *(a4 + 40) = v8;
      *(a4 + 88) = v10;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      v11 = *(v6 + 15);
      v12 = *(v6 + 17);
      v13 = *(v6 + 19);
      *(a4 + 168) = *(v6 + 21);
      *(a4 + 152) = v13;
      *(a4 + 136) = v12;
      *(a4 + 120) = v11;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 184) = 0;
      *(a4 + 184) = *(v6 + 23);
      *(a4 + 200) = v6[25];
      v6[23] = 0;
      v6[24] = 0;
      v6[25] = 0;
      v6 += 26;
      a4 += 208;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v14 = v5[23];
      if (v14)
      {
        v5[24] = v14;
        operator delete(v14);
      }

      v15 = v5[12];
      if (v15)
      {
        v5[13] = v15;
        operator delete(v15);
      }

      v16 = v5[2];
      if (v16)
      {
        v5[3] = v16;
        operator delete(v16);
      }

      v5 += 26;
    }
  }
}

void sub_110A21C(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      v11 = &v4[a2];
      do
      {
        *v4++ = *a3;
        v10 -= 16;
      }

      while (v10);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 16 * v6;
    v13 = 16 * a2;
    v14 = 16 * v6 + 16 * a2;
    v15 = (16 * v6);
    do
    {
      *v15++ = *a3;
      v13 -= 16;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_110A370(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = a2[2];
  v3 = a2[3];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = *(a2 + 5);
  v6 = *(a2 + 7);
  v7 = *(a2 + 9);
  v8 = a2[11];
  *(result + 96) = 0;
  *(result + 88) = v8;
  *(result + 72) = v7;
  *(result + 56) = v6;
  *(result + 40) = v5;
  *(result + 104) = 0;
  *(result + 112) = 0;
  v10 = a2[12];
  v9 = a2[13];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a2 + 15);
  v12 = *(a2 + 17);
  v13 = *(a2 + 19);
  v14 = *(a2 + 21);
  *(result + 184) = 0;
  *(result + 152) = v13;
  *(result + 168) = v14;
  *(result + 120) = v11;
  *(result + 136) = v12;
  *(result + 192) = 0;
  *(result + 200) = 0;
  v16 = a2[23];
  v15 = a2[24];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_110A500(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[24] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[13] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[3] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_110A560()
{
  if (!*v0)
  {
    JUMPOUT(0x110A524);
  }

  JUMPOUT(0x110A51CLL);
}

void sub_110A570(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_110A6C4(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = 0;
  ++*(a1 + 816);
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    v19 = *(a1 + 776) - *(a1 + 768);
    sub_F8B0C4(a1, a2, &v40);
    v20 = v41;
    v21 = *(v40 + 8);
    if (v42 == 1)
    {
      *(v21 + 8 * v41) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 3;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 3;
      v28 = v27 + 1;
      if ((v27 + 1) >> 61)
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

      v34 = v27;
      v35 = (8 * v27);
      v36 = *a3;
      *v35 = *a2;
      v35[1] = v36;
      v24 = 8 * v27 + 8;
      v37 = &v35[-2 * v34];
      memcpy(v37, v25, v26);
      *(a1 + 768) = v37;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      v22[1] = *a3;
      v24 = (v22 + 2);
    }

    *(a1 + 776) = v24;
    v38 = (v19 >> 3);
    v39 = *(a1 + 848);
    if (v38 >= (*(a1 + 856) - v39) >> 2 || *(v39 + 4 * v38) == -1)
    {
      sub_F8B720(a1 + 824, v19 >> 3, a3);
    }

    else
    {
      sub_F8B8B0((a1 + 824), v19 >> 3, a3);
    }

    return;
  }

  v31 = v17 + 8 * v18;
  *(*(a1 + 768) + 8 * *(v31 + 4) + 4) = *a3;
  v32 = *(v31 + 4);
  v33 = *(a1 + 848);
  if (v32 >= (*(a1 + 856) - v33) >> 2 || *(v33 + 4 * v32) == -1)
  {

    sub_F8B720(a1 + 824, v32, a3);
  }

  else
  {

    sub_F8B8B0((a1 + 824), v32, a3);
  }
}

uint64_t sub_110AA14(uint64_t a1, unsigned int *a2, int *a3)
{
  v6 = 0;
  v7 = *a2;
  v8 = 265 * ((~v7 + (v7 << 21)) ^ ((~v7 + (v7 << 21)) >> 24));
  v9 = 2147483649u * ((21 * (v8 ^ (v8 >> 14))) ^ ((21 * (v8 ^ (v8 >> 14))) >> 28));
  v10 = (a1 + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(*v10 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_6:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_9;
    }

    v6 += 8;
    v11 = v6 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    if (*(v17 + 8 * v18) == v7)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v18)
  {
LABEL_9:
    ++*(a1 + 816);
    v19 = *(a1 + 776) - *(a1 + 768);
    sub_F8B0C4(a1, a2, &v48);
    v20 = v49;
    v21 = *(v48 + 8);
    if (v50 == 1)
    {
      *(v21 + 8 * v49) = *a2;
    }

    *(v21 + 8 * v20 + 4) = v19 >> 3;
    v22 = *(a1 + 776);
    v23 = *(a1 + 784);
    if (v22 >= v23)
    {
      v25 = *(a1 + 768);
      v26 = v22 - v25;
      v27 = (v22 - v25) >> 3;
      v28 = v27 + 1;
      if ((v27 + 1) >> 61)
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

      v40 = v27;
      v41 = (8 * v27);
      v42 = *a3;
      *v41 = *a2;
      v41[1] = v42;
      v24 = 8 * v27 + 8;
      v43 = &v41[-2 * v40];
      memcpy(v43, v25, v26);
      *(a1 + 768) = v43;
      *(a1 + 776) = v24;
      *(a1 + 784) = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v22 = *a2;
      v22[1] = *a3;
      v24 = (v22 + 2);
    }

    *(a1 + 776) = v24;
    v44 = (v19 >> 3);
    v45 = *(a1 + 848);
    if (v44 < (*(a1 + 856) - v45) >> 2 && *(v45 + 4 * v44) != -1)
    {
      v39 = (a1 + 824);
      v37 = v19 >> 3;
      goto LABEL_31;
    }

    v46 = a1 + 824;
    v37 = v19 >> 3;
    goto LABEL_33;
  }

  v31 = v17 + 8 * v18;
  v33 = *(v31 + 4);
  v32 = (v31 + 4);
  v34 = *(a1 + 768) + 8 * v33;
  v36 = *(v34 + 4);
  v35 = (v34 + 4);
  if (*a3 < v36)
  {
    ++*(a1 + 816);
    *v35 = *a3;
    v37 = *v32;
    v38 = *(a1 + 848);
    if (v37 < (*(a1 + 856) - v38) >> 2 && *(v38 + 4 * v37) != -1)
    {
      v39 = (a1 + 824);
LABEL_31:
      sub_F8B8B0(v39, v37, a3);
      return 1;
    }

    v46 = a1 + 824;
LABEL_33:
    sub_F8B720(v46, v37, a3);
    return 1;
  }

  return 0;
}

void sub_110AD34()
{
  byte_27C2A97 = 3;
  LODWORD(qword_27C2A80) = 5136193;
  byte_27C2AAF = 3;
  LODWORD(qword_27C2A98) = 5136194;
  byte_27C2AC7 = 3;
  LODWORD(qword_27C2AB0) = 5136195;
  byte_27C2ADF = 15;
  strcpy(&qword_27C2AC8, "vehicle_mass_kg");
  byte_27C2AF7 = 21;
  strcpy(&xmmword_27C2AE0, "vehicle_cargo_mass_kg");
  byte_27C2B0F = 19;
  strcpy(&qword_27C2AF8, "vehicle_aux_power_w");
  byte_27C2B27 = 15;
  strcpy(&qword_27C2B10, "dcdc_efficiency");
  strcpy(&qword_27C2B28, "drive_train_efficiency");
  HIBYTE(word_27C2B3E) = 22;
  operator new();
}

void sub_110AF10(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2B3E) < 0)
  {
    sub_21E82B8();
  }

  sub_21E82C4();
  _Unwind_Resume(a1);
}

double sub_110AF30(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = -1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void *sub_110AF4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a5;
  *(a1 + 8) = 0;
  v102 = (((a2[7] - a2[6]) << 30) - 0x100000000) >> 32;
  if (v102)
  {
    v18 = 0;
    v101 = (a1 + 40);
    while (1)
    {
      v103 = v18;
      v108 = v18;
      v106 = sub_F75E1C(a2, v18) && *sub_F75E48(a2, v108) == 3;
      if (sub_F75E1C(a2, v108))
      {
        v19 = sub_F75E48(a2, v108);
        v20 = *(v19 + 160);
        v129 = *(v19 + 144);
        v130 = v20;
        *v131 = *(v19 + 176);
        *&v131[16] = *(v19 + 192);
        v21 = *(v19 + 128);
        v127 = *(v19 + 112);
        v128 = v21;
      }

      else
      {
        LODWORD(v127) = 0;
        v128 = 0uLL;
        *(&v127 + 1) = 0;
        LOBYTE(v129) = 0;
        *(&v129 + 1) = 0x3FF0000000000000;
        LOBYTE(v130) = 1;
        *(&v130 + 1) = 0;
        *v131 = 0;
        *&v131[8] = 0;
        *&v131[10] = -29536;
        *&v131[12] = 0;
        *&v131[15] = 0;
      }

      v22 = (v108 + 1);
      v23 = a2[6];
      if (v22 >= (a2[7] - v23) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v100 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v24 = *(v23 + 4 * v108);
      v25 = *(v23 + 4 * v22);
      if (v24 != v25)
      {
        break;
      }

LABEL_21:
      v18 = v103 + 1;
      if (v103 + 1 == v102)
      {
        goto LABEL_2;
      }
    }

    v26 = a2[9];
    v109 = (v26 + 80 * v25);
    v27 = (v26 + 80 * v24);
    while (1)
    {
      v28 = *v27;
      v29 = sub_5FC5C();
      v30 = sub_F75E1C(a2, v28) && *sub_F75E48(a2, v28) == 4;
      if (sub_F75E1C(a2, v28))
      {
        v31 = sub_F75E48(a2, v28);
        v32 = *(v31 + 64);
        v124 = *(v31 + 48);
        v125 = v32;
        *v126 = *(v31 + 80);
        *&v126[16] = *(v31 + 96);
        v33 = *(v31 + 32);
        v122 = *(v31 + 16);
        v123 = v33;
      }

      else
      {
        LODWORD(v122) = 0;
        v123 = 0uLL;
        *(&v122 + 1) = 0;
        LOBYTE(v124) = 0;
        *(&v124 + 1) = 0x3FF0000000000000;
        LOBYTE(v125) = 1;
        *(&v125 + 1) = 0;
        *v126 = 0;
        *&v126[8] = 0;
        *&v126[10] = -29536;
        *&v126[12] = 0;
        *&v126[15] = 0;
      }

      if (sub_F85894((v27 + 2)) && sub_38EC(v27 + 14))
      {
        break;
      }

LABEL_31:
      v27 += 20;
      if (v27 == v109)
      {
        goto LABEL_21;
      }
    }

    if (v106 && v30)
    {
      v34 = *v27;
      v35 = *(a1 + 8);
      v137 = 0u;
      v138 = 0u;
      *v132 = 0xFFFFFFFFLL;
      *&v132[8] = 0u;
      v133 = 0u;
      v134 = 0x1000000000000;
      v135 = 0u;
      v136 = 0u;
      *&v137 = 0x1000000000000;
      WORD6(v137) = 640;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v120 = 0;
      v119 = 0;
      v121 = 0;
      sub_111B734((v27 + 2), v27 + 14, v108, v34, v35, v132, &v119, &v110);
      if (v119)
      {
        v120 = v119;
        operator delete(v119);
      }

      if (*(&v141 + 1))
      {
        *&v142 = *(&v141 + 1);
        operator delete(*(&v141 + 1));
      }

      if (v139)
      {
        *(&v139 + 1) = v139;
        operator delete(v139);
      }

      v114 = 1;
    }

    else
    {
      v36 = *a4;
      v37 = *v27;
      v38 = sub_F75E1C(a2, v108);
      v39 = sub_F75E1C(a2, v28);
      sub_111A560(v27, v36 + 2464 * v29, a3, v108, v37, v38, &v127, &v110, v39, &v122, *(a1 + 8));
    }

    if (HIDWORD(v110) == -1 || v111 == -1)
    {
      sub_110BC98(a1, a2, a3, v108, v27, *a4 + 2464 * v29);
      v43 = v117;
      if (!v117)
      {
LABEL_55:
        v7 = a5;
        if (__p)
        {
          v116 = __p;
          operator delete(__p);
        }

        if (v112)
        {
          v113 = v112;
          operator delete(v112);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v41 = *(a1 + 24);
      v40 = *(a1 + 32);
      if (v41 >= v40)
      {
        v44 = *(a1 + 16);
        v45 = v41 - v44;
        v46 = (v41 - v44) >> 2;
        v47 = v46 + 1;
        if ((v46 + 1) >> 62)
        {
          sub_1794();
        }

        v48 = v40 - v44;
        if (v48 >> 1 > v47)
        {
          v47 = v48 >> 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v49 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (!(v49 >> 62))
          {
            operator new();
          }

LABEL_123:
          sub_1808();
        }

        v50 = (v41 - v44) >> 2;
        v51 = (4 * v46);
        v52 = (4 * v46 - 4 * v50);
        *v51 = v103;
        v42 = v51 + 1;
        memcpy(v52, v44, v45);
        *(a1 + 16) = v52;
        *(a1 + 24) = v42;
        *(a1 + 32) = 0;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v41 = v103;
        v42 = v41 + 4;
      }

      *(a1 + 24) = v42;
      v54 = *(a1 + 48);
      v53 = *(a1 + 56);
      if (v54 >= v53)
      {
        v56 = 0x4EC4EC4EC4EC4EC5 * ((v54 - *v101) >> 4);
        v57 = v56 + 1;
        if ((v56 + 1) > 0x13B13B13B13B13BLL)
        {
          sub_1794();
        }

        v58 = 0x4EC4EC4EC4EC4EC5 * ((v53 - *v101) >> 4);
        if (2 * v58 > v57)
        {
          v57 = 2 * v58;
        }

        if (v58 >= 0x9D89D89D89D89DLL)
        {
          v59 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v59 = v57;
        }

        *(&v133 + 1) = v101;
        if (v59)
        {
          if (v59 <= 0x13B13B13B13B13BLL)
          {
            operator new();
          }

          goto LABEL_123;
        }

        *v132 = 0;
        *&v132[8] = 208 * v56;
        *&v132[16] = 208 * v56;
        *&v133 = 0;
        sub_110A370(208 * v56, &v110);
        v55 = *&v132[16] + 208;
        *&v132[16] += 208;
        v61 = *(a1 + 40);
        v60 = *(a1 + 48);
        v62 = (*&v132[8] + v61 - v60);
        if (v61 != v60)
        {
          v63 = *(a1 + 40);
          v64 = (*&v132[8] + v61 - v60);
          do
          {
            v65 = *v63;
            *(v64 + 2) = *(v63 + 2);
            *v64 = v65;
            *(v64 + 3) = 0;
            *(v64 + 4) = 0;
            *(v64 + 2) = 0;
            *(v64 + 1) = *(v63 + 1);
            *(v64 + 4) = *(v63 + 4);
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            *(v63 + 4) = 0;
            v66 = *(v63 + 40);
            v67 = *(v63 + 56);
            v68 = *(v63 + 11);
            *(v64 + 72) = *(v63 + 72);
            *(v64 + 56) = v67;
            *(v64 + 40) = v66;
            *(v64 + 11) = v68;
            *(v64 + 12) = 0;
            *(v64 + 13) = 0;
            *(v64 + 14) = 0;
            *(v64 + 6) = *(v63 + 6);
            *(v64 + 14) = *(v63 + 14);
            *(v63 + 12) = 0;
            *(v63 + 13) = 0;
            *(v63 + 14) = 0;
            v69 = *(v63 + 120);
            v70 = *(v63 + 136);
            v71 = *(v63 + 152);
            *(v64 + 168) = *(v63 + 168);
            *(v64 + 152) = v71;
            *(v64 + 136) = v70;
            *(v64 + 120) = v69;
            *(v64 + 24) = 0;
            *(v64 + 25) = 0;
            *(v64 + 23) = 0;
            *(v64 + 184) = *(v63 + 184);
            *(v64 + 25) = *(v63 + 25);
            *(v63 + 23) = 0;
            *(v63 + 24) = 0;
            *(v63 + 25) = 0;
            v63 += 208;
            v64 += 208;
          }

          while (v63 != v60);
          do
          {
            v72 = *(v61 + 23);
            if (v72)
            {
              *(v61 + 24) = v72;
              operator delete(v72);
            }

            v73 = *(v61 + 12);
            if (v73)
            {
              *(v61 + 13) = v73;
              operator delete(v73);
            }

            v74 = *(v61 + 2);
            if (v74)
            {
              *(v61 + 3) = v74;
              operator delete(v74);
            }

            v61 += 208;
          }

          while (v61 != v60);
        }

        v75 = *(a1 + 40);
        *(a1 + 40) = v62;
        *(a1 + 48) = v55;
        *(a1 + 56) = v133;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        sub_110A370(*(a1 + 48), &v110);
        v55 = v54 + 208;
        *(a1 + 48) = v54 + 208;
      }

      *(a1 + 48) = v55;
      ++*(a1 + 8);
      v43 = v117;
      if (!v117)
      {
        goto LABEL_55;
      }
    }

    v118 = v43;
    operator delete(v43);
    goto LABEL_55;
  }

LABEL_2:
  sub_10DFDAC(&v110, 0);
  sub_1107E04(v7, &v110, **a1);
  sub_110C4E4(a1, a2, v132);
  sub_110C7F4((v7 + 1), v132);
  sub_10DF174(v132);
  v119 = a2;
  sub_F75FFC(a2, &v122);
  v127 = v122;
  sub_110C8D4(&v127, v132);
  v8 = v7[16];
  if (v8)
  {
    v7[17] = v8;
    operator delete(v8);
  }

  *(v7 + 8) = *v132;
  v7[18] = *&v132[16];
  sub_F76020(a2, &v122);
  v127 = v122;
  sub_110C8D4(&v127, v132);
  v9 = v7[19];
  if (v9)
  {
    v7[20] = v9;
    operator delete(v9);
  }

  *(v7 + 19) = *v132;
  v7[21] = *&v132[16];
  sub_F76050(a2, &v122);
  v127 = v122;
  sub_110C8D4(&v127, v132);
  v10 = v7[22];
  if (v10)
  {
    v7[23] = v10;
    operator delete(v10);
  }

  *(v7 + 11) = *v132;
  v7[24] = *&v132[16];
  *v132 = a2;
  sub_1117C5C(&v132[8], 0x400u);
  v11 = sub_F76014(a2);
  v12 = v11;
  v13 = HIDWORD(v11);
  if (v11 != HIDWORD(v11))
  {
    do
    {
      LODWORD(v122) = 0;
      LODWORD(v127) = v12;
      sub_110A6C4(&v132[8], &v127, &v122);
      ++v12;
    }

    while (v13 != v12);
  }

  sub_110CA08(v132);
  LODWORD(v127) = 0x7FFFFFFF;
  v14 = sub_F7603C(a2);
  v15 = HIDWORD(v14);
  v16 = 0x7FFFFFFF;
  if (v14 != HIDWORD(v14))
  {
    do
    {
      v81 = 0;
      v87 = ~v14 + (v14 << 21);
      v88 = 21 * ((265 * (v87 ^ (v87 >> 24))) ^ ((265 * (v87 ^ (v87 >> 24))) >> 14));
      v89 = 2147483649u * (v88 ^ (v88 >> 28));
      v90 = &v132[48 * (((((v88 ^ (v88 >> 28)) >> 8) ^ ((-2147483647 * (v88 ^ (v88 >> 28))) >> 16)) ^ ((-2147483647 * (v88 ^ (v88 >> 28))) >> 24)) & 0xF) + 8];
      v91 = v89 >> 7;
      v92 = v90[3];
      v93 = *v90;
      v94 = 0x101010101010101 * (v89 & 0x7F);
      for (i = v91; ; i = v81 + v76)
      {
        v76 = i & v92;
        v77 = *(v93 + (i & v92));
        v78 = ((v77 ^ v94) - 0x101010101010101) & ~(v77 ^ v94) & 0x8080808080808080;
        if (v78)
        {
          break;
        }

LABEL_101:
        if ((v77 & (~v77 << 6) & 0x8080808080808080) != 0)
        {
          goto LABEL_104;
        }

        v81 += 8;
      }

      v79 = v90[1];
      while (1)
      {
        v80 = (v76 + (__clz(__rbit64(v78)) >> 3)) & v92;
        if (*(v79 + 8 * v80) == v14)
        {
          break;
        }

        v78 &= v78 - 1;
        if (!v78)
        {
          goto LABEL_101;
        }
      }

      if (v92 == v80)
      {
LABEL_104:
        v83 = 0x7FFFFFFF;
        goto LABEL_105;
      }

      for (j = 0; ; v91 = j + v96)
      {
        v96 = v91 & v92;
        v97 = ((*(v93 + v96) ^ v94) - 0x101010101010101) & ~(*(v93 + v96) ^ v94) & 0x8080808080808080;
        if (v97)
        {
          break;
        }

LABEL_117:
        j += 8;
      }

      while (1)
      {
        v98 = (v96 + (__clz(__rbit64(v97)) >> 3)) & v92;
        if (*(v79 + 8 * v98) == v14)
        {
          break;
        }

        v97 &= v97 - 1;
        if (!v97)
        {
          goto LABEL_117;
        }
      }

      v83 = v143[2 * *(v79 + 8 * v98 + 4) + 1];
LABEL_105:
      LODWORD(v122) = v83;
      if (v83 >= v16)
      {
        v84 = &v127;
      }

      else
      {
        v84 = &v122;
      }

      if (v83 == 0x7FFFFFFF)
      {
        v85 = &v127;
      }

      else
      {
        v85 = v84;
      }

      if (v16 == 0x7FFFFFFF)
      {
        v86 = &v122;
      }

      else
      {
        v86 = v85;
      }

      v16 = *v86;
      LODWORD(v127) = v16;
      LODWORD(v14) = v14 + 1;
    }

    while (v14 != v15);
  }

  *(a5 + 200) = v16;
  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  if (v147)
  {
    v148 = v147;
    operator delete(v147);
  }

  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v143)
  {
    v144 = v143;
    operator delete(v143);
  }

  sub_360988(&v132[8]);
  return sub_FE90B8(&v110);
}