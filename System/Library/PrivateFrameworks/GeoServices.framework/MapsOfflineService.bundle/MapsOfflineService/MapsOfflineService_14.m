void sub_CEDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_C0260(&a35);
  if (a28 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      if ((a34 & 0x80000000) == 0)
      {
LABEL_9:
        if (*(v40 - 137) < 0)
        {
          operator delete(*(v40 - 160));
          v42 = *(v40 - 120);
          if (v42)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v42 = *(v40 - 120);
          if (v42)
          {
LABEL_11:
            *(v40 - 112) = v42;
            operator delete(v42);
            _Unwind_Resume(a1);
          }
        }

        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a29);
      goto LABEL_9;
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  if ((a34 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

BOOL sub_CF014(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if ((v2 - 10) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  if (a1[27])
  {
    v5 = a1 + 26;
    v6 = a1;
    v7 = sub_BC284((a1 + 25), a2);
    a1 = v6;
    if (v5 != v7)
    {
      return 0;
    }
  }

  v8 = a1 + 89;
  v9 = a1[89];
  if (!v9)
  {
    goto LABEL_71;
  }

  v10 = a1 + 89;
  do
  {
    v11 = *(v9 + 55);
    v15 = v11;
    v16 = v9[5];
    if ((v11 & 0x80u) == 0)
    {
      v17 = *(v9 + 55);
    }

    else
    {
      v17 = v9[5];
    }

    v18 = *(a2 + 23);
    v19 = v18;
    v20 = *(a2 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v21 >= v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      v23 = 0;
      while (1)
      {
        if (*(v9 + 55) >= 0)
        {
          v24 = v9 + 4;
        }

        else
        {
          v24 = v9[4];
        }

        v25 = __tolower(*(v24 + v23));
        if (*(a2 + 23) >= 0)
        {
          v26 = a2;
        }

        else
        {
          v26 = *a2;
        }

        v27 = __tolower(*(v26 + v23));
        if (v25 > v27)
        {
          v10 = v9;
          goto LABEL_19;
        }

        if (v25 < v27)
        {
          break;
        }

        if (v22 == ++v23)
        {
          v11 = *(v9 + 55);
          v16 = v9[5];
          v18 = *(a2 + 23);
          v20 = *(a2 + 8);
          v19 = *(a2 + 23);
          v15 = *(v9 + 55);
          goto LABEL_10;
        }
      }

      ++v9;
    }

    else
    {
LABEL_10:
      if (v15 < 0)
      {
        v11 = v16;
      }

      if (v19 >= 0)
      {
        v12 = v18;
      }

      else
      {
        v12 = v20;
      }

      v13 = v11 >= v12;
      v14 = v11 < v12;
      if (v13)
      {
        v10 = v9;
      }

      v9 += v14;
    }

LABEL_19:
    v9 = *v9;
  }

  while (v9);
  if (v10 == v8)
  {
    goto LABEL_71;
  }

  v28 = *(a2 + 23);
  v29 = v28;
  v30 = *(a2 + 8);
  if ((v28 & 0x80u) == 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = *(a2 + 8);
  }

  v32 = *(v10 + 55);
  v33 = v32;
  v34 = v10[5];
  if ((v32 & 0x80u) == 0)
  {
    v35 = *(v10 + 55);
  }

  else
  {
    v35 = v10[5];
  }

  if (v35 >= v31)
  {
    v36 = v31;
  }

  else
  {
    v36 = v35;
  }

  if (v36)
  {
    v37 = 0;
    while (1)
    {
      v38 = *(a2 + 23) >= 0 ? a2 : *a2;
      v39 = __tolower(*(v38 + v37));
      v40 = *(v10 + 55) >= 0 ? (v10 + 4) : v10[4];
      v41 = __tolower(*(v40 + v37));
      if (v39 > v41)
      {
        return v8 != v10;
      }

      if (v39 < v41)
      {
        goto LABEL_71;
      }

      if (v36 == ++v37)
      {
        v28 = *(a2 + 23);
        v30 = *(a2 + 8);
        v32 = *(v10 + 55);
        v34 = v10[5];
        v33 = *(v10 + 55);
        v29 = *(a2 + 23);
        break;
      }
    }
  }

  if (v29 < 0)
  {
    v28 = v30;
  }

  v42 = v33 >= 0 ? v32 : v34;
  if (v28 < v42)
  {
LABEL_71:
    v10 = v8;
  }

  return v8 != v10;
}

uint64_t sub_CF288(uint64_t a1)
{
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    v71 = *(a1 + 112);
    v72 = *(a1 + 128);
    v67 = *(a1 + 104);
LABEL_4:
    v68 = *(a1 + 112);
    v69 = *(a1 + 128);
    goto LABEL_5;
  }

  sub_325C(&v71, *(a1 + 112), *(a1 + 120));
  v2 = *(a1 + 135);
  v67 = *(a1 + 104);
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  sub_325C(&v68, *(a1 + 112), *(a1 + 120));
LABEL_5:
  v70 = *(a1 + 136);
  v3 = sub_F011C(a1 + 704, &v71);
  v5 = v4;
  if (v3 == v4)
  {
    if (v72 >= 0)
    {
      v6 = HIBYTE(v72);
    }

    else
    {
      v6 = *(&v71 + 1);
    }

    if (v6 + 44 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 + 44 > 0x16)
    {
      operator new();
    }

    qmemcpy(v75, "ERR027 - No entry found for base operation: ", sizeof(v75));
    if (v72 >= 0)
    {
      v12 = &v71;
    }

    else
    {
      v12 = v71;
    }

    memmove(v76, v12, v6);
    v76[v6] = 0;
    v13 = 21330;
    memset(v59, 0, 24);
    do
    {
      if ((v59[23] & 0x80000000) != 0)
      {
        v18 = (*&v59[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (*&v59[8] == v18)
        {
          if ((*&v59[16] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_67:
          operator new();
        }

        v14 = *&v59[8];
        v15 = *v59;
        ++*&v59[8];
      }

      else
      {
        if (v59[23] == 22)
        {
          goto LABEL_67;
        }

        v14 = v59[23];
        v59[23] = (v59[23] + 1) & 0x7F;
        v15 = v59;
      }

      v16 = &v15[v14];
      *v16 = (v13 % 0xA) | 0x30;
      v16[1] = 0;
      v17 = v13 > 9;
      v13 /= 0xAu;
    }

    while (v17);
    v19 = v59[23];
    v20 = v59;
    if (v59[23] < 0)
    {
      v19 = *&v59[8];
      v20 = *v59;
    }

    if (v19)
    {
      v21 = &v20[v19 - 1];
      if (v21 > v20)
      {
        v22 = v20 + 1;
        do
        {
          v23 = *(v22 - 1);
          *(v22 - 1) = *v21;
          *v21-- = v23;
          v24 = v22++ >= v21;
        }

        while (!v24);
      }
    }

    v25 = std::string::insert(v59, 0, "exprtk.hpp:", 0xBuLL);
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&v74 = *(&v25->__r_.__value_.__l + 2);
    v73 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, &v67, v75, &v73, &v59[32]);
    v27 = *(a1 + 568);
    v28 = *(a1 + 560);
    v29 = 30 * ((v27 - v28) >> 3) - 1;
    if (v27 == v28)
    {
      v29 = 0;
    }

    if (v29 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v28 = *(a1 + 560);
      v27 = *(a1 + 568);
    }

    if (v27 == v28)
    {
      v31 = 0;
    }

    else
    {
      v30 = *(a1 + 592) + *(a1 + 584);
      v31 = *(v28 + 8 * (v30 / 0x1E)) + 136 * (v30 % 0x1E);
    }

    sub_C398C(v31, &v59[32]);
    ++*(a1 + 592);
    if (v66 < 0)
    {
      operator delete(__p);
      if ((v64 & 0x80000000) == 0)
      {
LABEL_85:
        if ((v62 & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_93;
      }
    }

    else if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    operator delete(v63);
    if ((v62 & 0x80000000) == 0)
    {
LABEL_86:
      if ((v59[63] & 0x80000000) == 0)
      {
        goto LABEL_87;
      }

      goto LABEL_94;
    }

LABEL_93:
    operator delete(v61);
    if ((v59[63] & 0x80000000) == 0)
    {
LABEL_87:
      if ((SBYTE7(v74) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_95;
    }

LABEL_94:
    operator delete(*&v59[40]);
    if ((SBYTE7(v74) & 0x80000000) == 0)
    {
LABEL_88:
      if ((v59[23] & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_96;
    }

LABEL_95:
    operator delete(v73.i64[0]);
    if ((v59[23] & 0x80000000) == 0)
    {
LABEL_89:
      if ((v75[23] & 0x80000000) == 0)
      {
        goto LABEL_145;
      }

LABEL_97:
      v32 = *v75;
LABEL_144:
      operator delete(v32);
      goto LABEL_145;
    }

LABEL_96:
    operator delete(*v59);
    if ((v75[23] & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_97;
  }

  memset(v75, 0, 32);
  v7 = sub_EDF78(a1, v75, &v71);
  if ((v7 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_13:
    if (*v75 && (*(**v75 + 32))(*v75) != 17)
    {
      if (!*v75)
      {
LABEL_19:
        *v75 = 0;
        goto LABEL_20;
      }

      if ((*(**v75 + 32))(*v75) != 18)
      {
        if (*v75)
        {
          (*(**v75 + 8))(*v75);
        }

        goto LABEL_19;
      }
    }

LABEL_20:
    if (*&v75[8] && (*(**&v75[8] + 32))(*&v75[8]) != 17)
    {
      if (!*&v75[8])
      {
LABEL_26:
        *&v75[8] = 0;
        goto LABEL_27;
      }

      if ((*(**&v75[8] + 32))(*&v75[8]) != 18)
      {
        if (*&v75[8])
        {
          (*(**&v75[8] + 8))(*&v75[8]);
        }

        goto LABEL_26;
      }
    }

LABEL_27:
    if (*&v75[16] && (*(**&v75[16] + 32))(*&v75[16]) != 17)
    {
      if (!*&v75[16])
      {
LABEL_33:
        *&v75[16] = 0;
        goto LABEL_34;
      }

      if ((*(**&v75[16] + 32))(*&v75[16]) != 18)
      {
        if (*&v75[16])
        {
          (*(**&v75[16] + 8))(*&v75[16]);
        }

        goto LABEL_33;
      }
    }

LABEL_34:
    if (*&v75[24] && (*(**&v75[24] + 32))(*&v75[24]) != 17)
    {
      if (!*&v75[24])
      {
LABEL_40:
        *&v75[24] = 0;
        goto LABEL_41;
      }

      if ((*(**&v75[24] + 32))(*&v75[24]) != 18)
      {
        if (*&v75[24])
        {
          (*(**&v75[24] + 8))(*&v75[24]);
        }

        goto LABEL_40;
      }
    }

LABEL_41:
    if (v72 >= 0)
    {
      v8 = HIBYTE(v72);
    }

    else
    {
      v8 = *(&v71 + 1);
    }

    if (v8 + 67 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v8 + 67 > 0x16)
    {
      operator new();
    }

    qmemcpy(v59, "ERR028 - Invalid number of input parameters for call to function: '", sizeof(v59));
    if (v72 >= 0)
    {
      v33 = &v71;
    }

    else
    {
      v33 = v71;
    }

    memmove(v60, v33, v8);
    v60[v8] = 0;
    v34 = std::string::append(v59, "'", 1uLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    *&v74 = *(&v34->__r_.__value_.__l + 2);
    v73 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = 21377;
    memset(&v56, 0, sizeof(v56));
    do
    {
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        v40 = (v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v56.__r_.__value_.__l.__size_ == v40)
        {
          if ((v56.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_110:
          operator new();
        }

        size = v56.__r_.__value_.__l.__size_;
        v38 = v56.__r_.__value_.__r.__words[0];
        ++v56.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v56.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_110;
        }

        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        *(&v56.__r_.__value_.__s + 23) = (*(&v56.__r_.__value_.__s + 23) + 1) & 0x7F;
        v38 = &v56;
      }

      v39 = v38 + size;
      *v39 = (v36 % 0xA) | 0x30;
      v39[1] = 0;
      v17 = v36 > 9;
      v36 /= 0xAu;
    }

    while (v17);
    v41 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    v42 = &v56;
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v56.__r_.__value_.__l.__size_;
      v42 = v56.__r_.__value_.__r.__words[0];
    }

    if (v41)
    {
      v43 = (v42 + v41 - 1);
      if (v43 > v42)
      {
        v44 = &v42->__r_.__value_.__s.__data_[1];
        do
        {
          v45 = *(v44 - 1);
          *(v44 - 1) = v43->__r_.__value_.__s.__data_[0];
          v43->__r_.__value_.__s.__data_[0] = v45;
          v43 = (v43 - 1);
          v24 = v44++ >= v43;
        }

        while (!v24);
      }
    }

    v46 = std::string::insert(&v56, 0, "exprtk.hpp:", 0xBuLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v58 = v46->__r_.__value_.__r.__words[2];
    *v57 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, &v67, &v73, v57, &v59[32]);
    v48 = *(a1 + 568);
    v49 = *(a1 + 560);
    v50 = 30 * ((v48 - v49) >> 3) - 1;
    if (v48 == v49)
    {
      v50 = 0;
    }

    if (v50 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v49 = *(a1 + 560);
      v48 = *(a1 + 568);
    }

    if (v48 == v49)
    {
      v52 = 0;
    }

    else
    {
      v51 = *(a1 + 592) + *(a1 + 584);
      v52 = *(v49 + 8 * (v51 / 0x1E)) + 136 * (v51 % 0x1E);
    }

    sub_C398C(v52, &v59[32]);
    ++*(a1 + 592);
    if (v66 < 0)
    {
      operator delete(__p);
      if ((v64 & 0x80000000) == 0)
      {
LABEL_129:
        if ((v62 & 0x80000000) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_138;
      }
    }

    else if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

    operator delete(v63);
    if ((v62 & 0x80000000) == 0)
    {
LABEL_130:
      if ((v59[63] & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_139;
    }

LABEL_138:
    operator delete(v61);
    if ((v59[63] & 0x80000000) == 0)
    {
LABEL_131:
      if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_140;
    }

LABEL_139:
    operator delete(*&v59[40]);
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
LABEL_132:
      if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_141;
    }

LABEL_140:
    operator delete(v57[0]);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_133:
      if ((SBYTE7(v74) & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_142;
    }

LABEL_141:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SBYTE7(v74) & 0x80000000) == 0)
    {
LABEL_134:
      if ((v59[23] & 0x80000000) == 0)
      {
        goto LABEL_145;
      }

LABEL_143:
      v32 = *v59;
      goto LABEL_144;
    }

LABEL_142:
    operator delete(v73.i64[0]);
    if ((v59[23] & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_143;
  }

  while (v7 != *(v3 + 15))
  {
    v9 = v3[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v3[2];
        v11 = *v10 == v3;
        v3 = v10;
      }

      while (!v11);
    }

    v3 = v10;
    if (v10 == v5)
    {
      goto LABEL_13;
    }
  }

  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v73.i64[0] = *v75;
      if (*(a1 + 473) == 1)
      {
        if (SHIBYTE(v72) < 0)
        {
          sub_325C(&v59[32], v71, *(&v71 + 1));
        }

        else
        {
          *&v59[32] = v71;
          *&v59[48] = v72;
        }

        *&v59[56] = 5;
        sub_E5D1C(a1 + 480, &v59[32]);
        if ((v59[55] & 0x80000000) != 0)
        {
          operator delete(*&v59[32]);
        }
      }

      v55 = sub_EF888(a1 + 344, v3 + 14, v73.i64);
    }

    else
    {
      v73 = *v75;
      if (*(a1 + 473) == 1)
      {
        if (SHIBYTE(v72) < 0)
        {
          sub_325C(&v59[32], v71, *(&v71 + 1));
        }

        else
        {
          *&v59[32] = v71;
          *&v59[48] = v72;
        }

        *&v59[56] = 5;
        sub_E5D1C(a1 + 480, &v59[32]);
        if ((v59[55] & 0x80000000) != 0)
        {
          operator delete(*&v59[32]);
        }
      }

      v55 = sub_EFB10(a1 + 344, v3 + 14, v73.i64);
    }

    goto LABEL_184;
  }

  if (v7 == 3)
  {
    v73 = *v75;
    *&v74 = *&v75[16];
    if (*(a1 + 473) == 1)
    {
      if (SHIBYTE(v72) < 0)
      {
        sub_325C(&v59[32], v71, *(&v71 + 1));
      }

      else
      {
        *&v59[32] = v71;
        *&v59[48] = v72;
      }

      *&v59[56] = 5;
      sub_E5D1C(a1 + 480, &v59[32]);
      if ((v59[55] & 0x80000000) != 0)
      {
        operator delete(*&v59[32]);
      }
    }

    if (v73.i64[0] && v73.i64[1] && v74)
    {
      if (sub_1CD244(a1 + 344, v3 + 14, &v73))
      {
        goto LABEL_145;
      }

      if (!sub_1CD474(a1 + 344, v3 + 14, &v73))
      {
        v55 = sub_1CD5F4(a1 + 344, v3 + 14, &v73);
        goto LABEL_184;
      }
    }

    sub_1CD05C(*(a1 + 352), &v73);
LABEL_145:
    v53 = 0;
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
      goto LABEL_146;
    }

LABEL_185:
    operator delete(v68);
    if ((SHIBYTE(v72) & 0x80000000) == 0)
    {
      return v53;
    }

LABEL_186:
    operator delete(v71);
    return v53;
  }

  v73 = *v75;
  v74 = *&v75[16];
  if (*(a1 + 473) == 1)
  {
    if (SHIBYTE(v72) < 0)
    {
      sub_325C(&v59[32], v71, *(&v71 + 1));
    }

    else
    {
      *&v59[32] = v71;
      *&v59[48] = v72;
    }

    *&v59[56] = 5;
    sub_E5D1C(a1 + 480, &v59[32]);
    if ((v59[55] & 0x80000000) != 0)
    {
      operator delete(*&v59[32]);
    }
  }

  v55 = sub_1CDD84(a1 + 344, v3 + 14, &v73);
LABEL_184:
  v53 = v55;
  if (SHIBYTE(v69) < 0)
  {
    goto LABEL_185;
  }

LABEL_146:
  if (SHIBYTE(v72) < 0)
  {
    goto LABEL_186;
  }

  return v53;
}

void sub_D0174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (*(v56 - 185) < 0)
  {
    operator delete(*(v56 - 208));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D0328(std::string::size_type a1)
{
  v2 = *(a1 + 24);
  if (*(a1 + 8) != v2)
  {
    v3 = (v2 + 8);
    *(a1 + 104) = *v2;
    v4 = a1 + 104;
    *(a1 + 24) = v2 + 40;
    if (a1 + 104 == v2)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if ((v5 & 0x80u) == 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    if ((v5 & 0x80u) == 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *(v2 + 16);
    }

    sub_13B38(a1 + 112, v8, v9);
LABEL_15:
    *(v4 + 32) = *(v2 + 32);
    v7 = (a1 + 104);
    if (*(a1 + 104) == 40)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

  v2 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v4 = a1 + 104;
  v3 = (a1 + 48);
  v5 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v3, *(v2 + 16));
    *(v4 + 32) = *(v2 + 32);
    v7 = (a1 + 104);
    if (*(a1 + 104) == 40)
    {
      goto LABEL_16;
    }

LABEL_37:
    if (*(a1 + 135) >= 0)
    {
      v19 = *(a1 + 135);
    }

    else
    {
      v19 = *(a1 + 120);
    }

    if (v19 + 62 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v19 + 62 > 0x16)
    {
      operator new();
    }

    qmemcpy(v51, "ERR043 - Expected '(' at start of if-statement, instead got: '", sizeof(v51));
    if (*(a1 + 135) >= 0)
    {
      v20 = (a1 + 112);
    }

    else
    {
      v20 = *(a1 + 112);
    }

    memmove(v52, v20, v19);
    v48 = v7;
    v52[v19] = 0;
    v21 = std::string::append(v51, "'", 1uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    *&v51[48] = *(&v21->__r_.__value_.__l + 2);
    *&v51[32] = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = 21638;
    memset(&v49, 0, sizeof(v49));
    do
    {
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        v28 = (v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v49.__r_.__value_.__l.__size_ == v28)
        {
          if ((v49.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_55:
          operator new();
        }

        size = v49.__r_.__value_.__l.__size_;
        v25 = v49.__r_.__value_.__r.__words[0];
        ++v49.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v49.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_55;
        }

        size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
        *(&v49.__r_.__value_.__s + 23) = (*(&v49.__r_.__value_.__s + 23) + 1) & 0x7F;
        v25 = &v49;
      }

      v26 = v25 + size;
      *v26 = (v23 % 0xA) | 0x30;
      v26[1] = 0;
      v27 = v23 > 9;
      v23 /= 0xAu;
    }

    while (v27);
    v29 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    v30 = &v49;
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = v49.__r_.__value_.__l.__size_;
      v30 = v49.__r_.__value_.__r.__words[0];
    }

    if (v29)
    {
      v31 = (v30 + v29 - 1);
      if (v31 > v30)
      {
        v32 = &v30->__r_.__value_.__s.__data_[1];
        do
        {
          v33 = *(v32 - 1);
          *(v32 - 1) = v31->__r_.__value_.__s.__data_[0];
          v31->__r_.__value_.__s.__data_[0] = v33;
          v31 = (v31 - 1);
        }

        while (v32++ < v31);
      }
    }

    v35 = std::string::insert(&v49, 0, "exprtk.hpp:", 0xBuLL);
    v36 = *&v35->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v48, &v51[32], &v50.__r_.__value_.__l.__data_, v53);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    sub_C398C(v41, v53);
    ++*(a1 + 592);
    if (v61 < 0)
    {
      operator delete(__p);
      if ((v59 & 0x80000000) == 0)
      {
LABEL_73:
        if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_74;
        }

        goto LABEL_82;
      }
    }

    else if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    operator delete(v58);
    if ((v57 & 0x80000000) == 0)
    {
LABEL_74:
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_83;
    }

LABEL_82:
    operator delete(v56);
    if ((v55 & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_84;
    }

LABEL_83:
    operator delete(v54);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_76:
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_85;
    }

LABEL_84:
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_77:
      if ((v51[55] & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_86;
    }

LABEL_85:
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((v51[55] & 0x80000000) == 0)
    {
LABEL_78:
      if ((v51[23] & 0x80000000) != 0)
      {
        goto LABEL_87;
      }

      return 0;
    }

LABEL_86:
    operator delete(*&v51[32]);
    if ((v51[23] & 0x80000000) != 0)
    {
LABEL_87:
      operator delete(*v51);
    }

    return 0;
  }

  v6 = *v3;
  *(a1 + 128) = v3[2];
  *(a1 + 112) = v6;
  *(v4 + 32) = *(v2 + 32);
  v7 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    goto LABEL_37;
  }

LABEL_16:
  v10 = *(a1 + 24);
  if (*(a1 + 8) != v10)
  {
    *(a1 + 24) = v10 + 40;
    v11 = (v10 + 8);
    *(a1 + 104) = *v10;
    if (v7 == v10)
    {
      goto LABEL_30;
    }

    v12 = *(v10 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    if ((v12 & 0x80u) == 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if ((v12 & 0x80u) == 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *(v10 + 16);
    }

    sub_13B38(a1 + 112, v15, v16);
LABEL_30:
    *(a1 + 136) = *(v10 + 32);
    v14 = sub_C5A5C(a1, 0);
    if (!v14)
    {
      goto LABEL_95;
    }

    goto LABEL_31;
  }

  v10 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v11 = (a1 + 48);
  v12 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((v12 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v11, *(v10 + 16));
    *(a1 + 136) = *(v10 + 32);
    v14 = sub_C5A5C(a1, 0);
    if (!v14)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v13 = *v11;
    *(a1 + 128) = v11[2];
    *(a1 + 112) = v13;
    *(a1 + 136) = *(v10 + 32);
    v14 = sub_C5A5C(a1, 0);
    if (!v14)
    {
LABEL_95:
      operator new();
    }
  }

LABEL_31:
  v17 = v14;
  if (*v7 != 41)
  {
    if (*v7 != 44)
    {
      operator new();
    }

    return sub_1CE7C0(a1, v14);
  }

  v42 = *(a1 + 24);
  if (*(a1 + 8) == v42)
  {
    v42 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v43 = a1 + 48;
    v44 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_91:
      if ((v44 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v43, *(v42 + 16));
      }

      else
      {
        v45 = *v43;
        *(a1 + 128) = *(v43 + 16);
        *(a1 + 112) = v45;
      }

      goto LABEL_106;
    }

LABEL_97:
    if ((v44 & 0x80u) == 0)
    {
      v46 = v43;
    }

    else
    {
      v46 = *v43;
    }

    if ((v44 & 0x80u) == 0)
    {
      v47 = v44;
    }

    else
    {
      v47 = *(v42 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
    goto LABEL_106;
  }

  *(a1 + 24) = v42 + 40;
  v43 = v42 + 8;
  *(a1 + 104) = *v42;
  if (v7 != v42)
  {
    v44 = *(v42 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_97;
  }

LABEL_106:
  *(a1 + 136) = *(v42 + 32);

  return sub_1CFE24(a1, v17);
}

void sub_D1260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a32);
      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a37 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_D13DC(std::string::size_type a1)
{
  v31 = 0;
  v32 = 0;
  v2 = *(a1 + 24);
  if (*(a1 + 8) != v2)
  {
    v3 = (v2 + 8);
    *(a1 + 104) = *v2;
    v4 = a1 + 104;
    *(a1 + 24) = v2 + 40;
    if (a1 + 104 == v2)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if ((v5 & 0x80u) == 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    if ((v5 & 0x80u) == 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = *(v2 + 16);
    }

    sub_13B38(a1 + 112, v8, v9);
LABEL_15:
    *(v4 + 32) = *(v2 + 32);
    v7 = (a1 + 104);
    if (*(a1 + 104) == 40)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v2 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v4 = a1 + 104;
  v3 = (a1 + 48);
  v5 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v3, *(v2 + 16));
    *(v4 + 32) = *(v2 + 32);
    v7 = (a1 + 104);
    if (*(a1 + 104) == 40)
    {
      goto LABEL_16;
    }

LABEL_6:
    operator new();
  }

  v6 = *v3;
  *(a1 + 128) = v3[2];
  *(a1 + 112) = v6;
  *(v4 + 32) = *(v2 + 32);
  v7 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    goto LABEL_6;
  }

LABEL_16:
  v10 = *(a1 + 24);
  if (*(a1 + 8) == v10)
  {
    v10 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v11 = a1 + 48;
    v12 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v12 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v11, *(v10 + 16));
      }

      else
      {
        v13 = *v11;
        *(a1 + 128) = *(v11 + 16);
        *(a1 + 112) = v13;
      }

      goto LABEL_32;
    }
  }

  else
  {
    *(a1 + 24) = v10 + 40;
    v11 = v10 + 8;
    *(a1 + 104) = *v10;
    if (v7 == v10)
    {
      goto LABEL_32;
    }

    v12 = *(v10 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v12 & 0x80u) == 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = *v11;
  }

  if ((v12 & 0x80u) == 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v10 + 16);
  }

  sub_13B38(a1 + 112, v14, v15);
LABEL_32:
  *(a1 + 136) = *(v10 + 32);
  v32 = sub_C5A5C(a1, 0);
  if (!v32)
  {
    operator new();
  }

  if (*v7 != 41)
  {
    operator new();
  }

  v16 = *(a1 + 24);
  if (*(a1 + 8) != v16)
  {
    *(a1 + 24) = v16 + 40;
    v17 = (v16 + 8);
    *(a1 + 104) = *v16;
    if (v7 == v16)
    {
      goto LABEL_50;
    }

    v18 = *(v16 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_43:
    if ((v18 & 0x80u) == 0)
    {
      v21 = v17;
    }

    else
    {
      v21 = *v17;
    }

    if ((v18 & 0x80u) == 0)
    {
      v22 = v18;
    }

    else
    {
      v22 = *(v16 + 16);
    }

    sub_13B38(a1 + 112, v21, v22);
LABEL_50:
    *(a1 + 136) = *(v16 + 32);
    v20 = *(a1 + 632);
    if (v20)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v16 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v17 = (a1 + 48);
  v18 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  if ((v18 & 0x80) == 0)
  {
    v19 = *v17;
    *(a1 + 128) = v17[2];
    *(a1 + 112) = v19;
    *(a1 + 136) = *(v16 + 32);
    v20 = *(a1 + 632);
    if (v20)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  sub_13A68((a1 + 112), *v17, *(v16 + 16));
  *(a1 + 136) = *(v16 + 32);
  v20 = *(a1 + 632);
  if (!v20)
  {
LABEL_51:
    sub_1D2C0C(a1 + 600);
    v20 = *(a1 + 632);
  }

LABEL_52:
  v23 = *(a1 + 608);
  v24 = (v23 + 8 * (v20 >> 12));
  if (*(a1 + 616) == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = *v24 + (v20 & 0xFFF);
  }

  if (v25 == *v24)
  {
    v25 = *(v24 - 1) + 4096;
  }

  *(v25 - 1) = 0;
  *(a1 + 632) = v20 - 1;
  ++*(a1 + 640);
  v30 = 10;
  strcpy(v29, "while-loop");
  v26 = sub_E14E0(a1, v29);
  v31 = v26;
  if ((v30 & 0x80000000) == 0)
  {
    if (v26)
    {
      goto LABEL_59;
    }

LABEL_62:
    operator new();
  }

  v28 = v26;
  operator delete(v29[0]);
  if (!v28)
  {
    goto LABEL_62;
  }

LABEL_59:
  result = sub_1D2764(a1 + 344, &v32, &v31, *(*(*(a1 + 608) + ((*(a1 + 632) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 632) & 0xFFFLL)));
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_D27DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D28B8(uint64_t a1)
{
  v169 = 0;
  v170 = 0;
  v2 = *(a1 + 24);
  if (*(a1 + 8) == v2)
  {
    v2 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v4 = a1 + 104;
    v3 = a1 + 48;
    v5 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v5 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v3, *(v2 + 16));
      }

      else
      {
        v6 = *v3;
        *(a1 + 128) = *(v3 + 16);
        *(a1 + 112) = v6;
      }

      goto LABEL_15;
    }

LABEL_7:
    if ((v5 & 0x80u) == 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    if ((v5 & 0x80u) == 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = *(v2 + 16);
    }

    sub_13B38(a1 + 112, v7, v8);
    goto LABEL_15;
  }

  v3 = v2 + 8;
  *(a1 + 104) = *v2;
  v4 = a1 + 104;
  *(a1 + 24) = v2 + 40;
  if (a1 + 104 != v2)
  {
    v5 = *(v2 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 32) = *(v2 + 32);
  v166 = 0;
  v167 = 0;
  v168 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v160 = 1;
  v161 = a1;
  v162 = &v166;
  v140 = (a1 + 632);
  v9 = *(a1 + 632);
  if (!v9)
  {
    sub_1D2C0C(a1 + 600);
    v9 = v140->i64[0];
  }

  v10 = *(a1 + 608);
  v11 = (v10 + 8 * (v9 >> 12));
  if (*(a1 + 616) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + (v9 & 0xFFF);
  }

  if (v12 == *v11)
  {
    v12 = *(v11 - 1) + 4096;
  }

  *(v12 - 1) = 0;
  *(a1 + 632) = v9 - 1;
  ++*(a1 + 640);
  v141 = (a1 + 104);
  v151 = 5;
  strcpy(v149, "until");
  v13 = (a1 + 112);
  v14 = *(a1 + 135);
  v15 = *(a1 + 120);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = *(a1 + 135);
  }

  if (v15 == 5)
  {
    v16 = 0;
    v17 = v14 >> 63;
    do
    {
      if (v17)
      {
        v18 = *v13;
      }

      else
      {
        v18 = a1 + 112;
      }

      v19 = __tolower(*(v18 + v16));
      if (v19 != __tolower(v149[v16]))
      {
        goto LABEL_38;
      }

      ++v16;
      v20 = *(a1 + 135);
      v17 = v20 >> 63;
      if ((v20 & 0x80000000) != 0)
      {
        v20 = *(a1 + 120);
      }
    }

    while (v16 < v20);
    v21 = *(a1 + 24);
    if (*(a1 + 8) == v21)
    {
      v21 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v22 = a1 + 48;
      v23 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_36:
        if ((v23 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v22, *(v21 + 16));
        }

        else
        {
          v24 = *v22;
          *(a1 + 128) = *(v22 + 16);
          *v13 = v24;
        }

        goto LABEL_201;
      }
    }

    else
    {
      *(a1 + 24) = v21 + 40;
      v22 = v21 + 8;
      *(a1 + 104) = *v21;
      if (v141 == v21)
      {
        goto LABEL_201;
      }

      v23 = *(v21 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }
    }

    if ((v23 & 0x80u) == 0)
    {
      v79 = v22;
    }

    else
    {
      v79 = *v22;
    }

    if ((v23 & 0x80u) == 0)
    {
      v80 = v23;
    }

    else
    {
      v80 = *(v21 + 16);
    }

    sub_13B38(a1 + 112, v79, v80);
LABEL_201:
    *(a1 + 136) = *(v21 + 32);
    operator new();
  }

LABEL_38:
  v159 = a1;
  ++*(a1 + 656);
  v25 = a1 + 40;
  v26 = (a1 + 48);
  v139 = *(a1 + 651);
  do
  {
LABEL_39:
    *(a1 + 651) = 0;
    v27 = sub_C5A5C(a1, 0);
    if (!v27)
    {
      goto LABEL_164;
    }

    v28 = v167;
    if (v167 >= v168)
    {
      v30 = v166;
      v31 = v167 - v166;
      v32 = (v167 - v166) >> 3;
      v33 = v32 + 1;
      if ((v32 + 1) >> 61)
      {
        sub_1794();
      }

      v34 = v168 - v166;
      if ((v168 - v166) >> 2 > v33)
      {
        v33 = v34 >> 2;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        if (!(v35 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v32) = v27;
      v29 = 8 * v32 + 8;
      memcpy(0, v30, v31);
      v166 = 0;
      v167 = v29;
      v168 = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v167 = v27;
      v29 = (v28 + 8);
    }

    v167 = v29;
    v36 = v164;
    if (v164 == v165 << 6)
    {
      if ((v164 + 1) < 0)
      {
        sub_1794();
      }

      v37 = v165 << 7;
      if (v165 << 7 <= (v164 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v37 = (v164 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      if (v164 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_3D41C(&v163, v38);
      v36 = v164;
    }

    v164 = v36 + 1;
    v39 = v36 >> 6;
    v40 = 1 << v36;
    if (*(a1 + 651) == 1)
    {
      v41 = v163[v39] | v40;
    }

    else
    {
      v41 = v163[v39] & ~v40;
    }

    v163[v39] = v41;
    v151 = 5;
    strcpy(v149, "until");
    v42 = *(a1 + 135);
    v43 = *(a1 + 120);
    if ((v42 & 0x80000000) == 0)
    {
      v43 = *(a1 + 135);
    }

    if (v43 == 5)
    {
      v44 = 0;
      v45 = v42 >> 63;
      do
      {
        if (v45)
        {
          v46 = *v13;
        }

        else
        {
          v46 = a1 + 112;
        }

        v47 = __tolower(*(v46 + v44));
        if (v47 != __tolower(v149[v44]))
        {
          goto LABEL_76;
        }

        ++v44;
        v48 = *(a1 + 135);
        v45 = v48 >> 63;
        if ((v48 & 0x80000000) != 0)
        {
          v48 = *(a1 + 120);
        }
      }

      while (v44 < v48);
      v74 = *(a1 + 24);
      if (*(a1 + 8) == v74)
      {
        *v141 = *v25;
        v75 = *(a1 + 71);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_133:
          if ((v75 & 0x80) != 0)
          {
            goto LABEL_158;
          }

LABEL_134:
          v76 = *v26;
          *(a1 + 128) = v26[2];
          *v13 = v76;
          goto LABEL_159;
        }
      }

      else
      {
        *(a1 + 24) = v74 + 40;
        v26 = (v74 + 8);
        *(a1 + 104) = *v74;
        v25 = v74;
        if (v141 == v74)
        {
          goto LABEL_159;
        }

        v75 = *(v74 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_133;
        }
      }

      if ((v75 & 0x80u) == 0)
      {
        v77 = v26;
      }

      else
      {
        v77 = *v26;
      }

      if ((v75 & 0x80u) == 0)
      {
        v78 = v75;
      }

      else
      {
        v78 = *(v25 + 16);
      }

LABEL_142:
      sub_13B38(a1 + 112, v77, v78);
      goto LABEL_159;
    }

LABEL_76:
    if (*(a1 + 8) == *(a1 + 24))
    {
      v49 = a1 + 40;
    }

    else
    {
      v49 = *(a1 + 24);
    }

    if (*v49 == 8)
    {
      v151 = 5;
      strcpy(v149, "until");
      v50 = *(v49 + 31);
      v51 = *(v49 + 16);
      if ((v50 & 0x80000000) == 0)
      {
        v51 = *(v49 + 31);
      }

      if (v51 == 5)
      {
        v52 = 0;
        v53 = v50 >> 63;
        while (1)
        {
          v54 = (v53 & 1) != 0 ? *(v49 + 8) : v49 + 8;
          v55 = __tolower(*(v54 + v52));
          v56 = __tolower(v149[v52]);
          v57 = v55 == v56;
          if (v55 != v56)
          {
            break;
          }

          ++v52;
          v58 = *(v49 + 31);
          v53 = v58 >> 63;
          if ((v58 & 0x80000000) != 0)
          {
            v58 = *(v49 + 16);
          }

          if (v52 >= v58)
          {
            v57 = 1;
            break;
          }
        }

        if (*v141 == 6)
        {
LABEL_97:
          v59 = *(a1 + 24);
          if (*(a1 + 8) == v59)
          {
            *v141 = *v25;
            v60 = a1 + 48;
            v59 = a1 + 40;
            v61 = *(a1 + 71);
            if ((*(a1 + 135) & 0x80000000) == 0)
            {
              goto LABEL_100;
            }
          }

          else
          {
            *(a1 + 24) = v59 + 40;
            v60 = v59 + 8;
            *(a1 + 104) = *v59;
            if (v141 == v59)
            {
LABEL_113:
              *(a1 + 136) = *(v59 + 32);
              goto LABEL_114;
            }

            v61 = *(v59 + 31);
            if ((*(a1 + 135) & 0x80000000) == 0)
            {
LABEL_100:
              if ((v61 & 0x80) != 0)
              {
                sub_13A68((a1 + 112), *v60, *(v59 + 16));
              }

              else
              {
                v62 = *v60;
                *(a1 + 128) = *(v60 + 16);
                *v13 = v62;
              }

              goto LABEL_113;
            }
          }

          if ((v61 & 0x80u) == 0)
          {
            v63 = v60;
          }

          else
          {
            v63 = *v60;
          }

          if ((v61 & 0x80u) == 0)
          {
            v64 = v61;
          }

          else
          {
            v64 = *(v59 + 16);
          }

          sub_13B38(a1 + 112, v63, v64);
          goto LABEL_113;
        }
      }

      else
      {
        v57 = 0;
        if (*v141 == 6)
        {
          goto LABEL_97;
        }
      }

      if (v57)
      {
        *(&v145.__r_.__value_.__s + 23) = 3;
        LODWORD(v145.__r_.__value_.__l.__data_) = 4607813;
        v116 = std::string::insert(&v145, 0, "ERR057 - Expected '", 0x13uLL);
        v117 = *&v116->__r_.__value_.__l.__data_;
        v146.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
        *&v146.__r_.__value_.__l.__data_ = v117;
        v116->__r_.__value_.__l.__size_ = 0;
        v116->__r_.__value_.__r.__words[2] = 0;
        v116->__r_.__value_.__r.__words[0] = 0;
        v118 = std::string::append(&v146, "' in body of repeat until loop", 0x1EuLL);
        v119 = *&v118->__r_.__value_.__l.__data_;
        v148 = v118->__r_.__value_.__r.__words[2];
        *v147 = v119;
        v118->__r_.__value_.__l.__size_ = 0;
        v118->__r_.__value_.__r.__words[2] = 0;
        v118->__r_.__value_.__r.__words[0] = 0;
        v120 = 21922;
        memset(&v142, 0, sizeof(v142));
        do
        {
          if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
          {
            v125 = (v142.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v142.__r_.__value_.__l.__size_ == v125)
            {
              if ((v142.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_3244();
              }

LABEL_246:
              operator new();
            }

            size = v142.__r_.__value_.__l.__size_;
            v122 = v142.__r_.__value_.__r.__words[0];
            ++v142.__r_.__value_.__l.__size_;
          }

          else
          {
            if (HIBYTE(v142.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_246;
            }

            size = HIBYTE(v142.__r_.__value_.__r.__words[2]);
            *(&v142.__r_.__value_.__s + 23) = (*(&v142.__r_.__value_.__s + 23) + 1) & 0x7F;
            v122 = &v142;
          }

          v123 = v122 + size;
          *v123 = (v120 % 0xA) | 0x30;
          v123[1] = 0;
          v124 = v120 > 9;
          v120 /= 0xAu;
        }

        while (v124);
        v126 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
        v127 = &v142;
        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v126 = v142.__r_.__value_.__l.__size_;
          v127 = v142.__r_.__value_.__r.__words[0];
        }

        if (v126)
        {
          v128 = (v127 + v126 - 1);
          if (v128 > v127)
          {
            v129 = &v127->__r_.__value_.__s.__data_[1];
            do
            {
              v130 = *(v129 - 1);
              *(v129 - 1) = v128->__r_.__value_.__s.__data_[0];
              v128->__r_.__value_.__s.__data_[0] = v130;
              v128 = (v128 - 1);
            }

            while (v129++ < v128);
          }
        }

        v132 = std::string::insert(&v142, 0, "exprtk.hpp:", 0xBuLL);
        v133 = *&v132->__r_.__value_.__l.__data_;
        v144 = v132->__r_.__value_.__r.__words[2];
        *v143 = v133;
        v132->__r_.__value_.__l.__size_ = 0;
        v132->__r_.__value_.__r.__words[2] = 0;
        v132->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v141, v147, v143, v149);
        v134 = *(a1 + 568);
        v135 = *(a1 + 560);
        v136 = 30 * ((v134 - v135) >> 3) - 1;
        if (v134 == v135)
        {
          v136 = 0;
        }

        if (v136 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v135 = *(a1 + 560);
          v134 = *(a1 + 568);
        }

        if (v134 == v135)
        {
          v138 = 0;
        }

        else
        {
          v137 = *(a1 + 592) + *(a1 + 584);
          v138 = *(v135 + 8 * (v137 / 0x1E)) + 136 * (v137 % 0x1E);
        }

        sub_C398C(v138, v149);
        ++*(a1 + 592);
        if (v158 < 0)
        {
          operator delete(__p);
          if ((v156 & 0x80000000) == 0)
          {
LABEL_264:
            if ((v154 & 0x80000000) == 0)
            {
              goto LABEL_265;
            }

            goto LABEL_274;
          }
        }

        else if ((v156 & 0x80000000) == 0)
        {
          goto LABEL_264;
        }

        operator delete(v155);
        if ((v154 & 0x80000000) == 0)
        {
LABEL_265:
          if ((v152 & 0x80000000) == 0)
          {
            goto LABEL_266;
          }

          goto LABEL_275;
        }

LABEL_274:
        operator delete(v153);
        if ((v152 & 0x80000000) == 0)
        {
LABEL_266:
          if ((SHIBYTE(v144) & 0x80000000) == 0)
          {
            goto LABEL_267;
          }

          goto LABEL_276;
        }

LABEL_275:
        operator delete(v150);
        if ((SHIBYTE(v144) & 0x80000000) == 0)
        {
LABEL_267:
          if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_268;
          }

          goto LABEL_277;
        }

LABEL_276:
        operator delete(v143[0]);
        if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_268:
          if ((SHIBYTE(v148) & 0x80000000) == 0)
          {
            goto LABEL_269;
          }

          goto LABEL_278;
        }

LABEL_277:
        operator delete(v142.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v148) & 0x80000000) == 0)
        {
LABEL_269:
          if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_270;
          }

          goto LABEL_279;
        }

LABEL_278:
        operator delete(v147[0]);
        if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_270:
          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_280;
          }

          goto LABEL_164;
        }

LABEL_279:
        operator delete(v146.__r_.__value_.__l.__data_);
        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_280:
          operator delete(v145.__r_.__value_.__l.__data_);
        }

LABEL_164:
        v81 = 0;
        goto LABEL_165;
      }
    }

    else if (*v141 == 6)
    {
      goto LABEL_97;
    }

LABEL_114:
    v151 = 5;
    strcpy(v149, "until");
    v65 = *(a1 + 135);
    v66 = *(a1 + 120);
    if ((v65 & 0x80000000) == 0)
    {
      v66 = *(a1 + 135);
    }
  }

  while (v66 != 5);
  v67 = 0;
  v68 = v65 >> 63;
  do
  {
    if (v68)
    {
      v69 = *v13;
    }

    else
    {
      v69 = a1 + 112;
    }

    v70 = __tolower(*(v69 + v67));
    if (v70 != __tolower(v149[v67]))
    {
      goto LABEL_39;
    }

    ++v67;
    v71 = *(a1 + 135);
    v68 = v71 >> 63;
    if ((v71 & 0x80000000) != 0)
    {
      v71 = *(a1 + 120);
    }
  }

  while (v67 < v71);
  v72 = *(a1 + 24);
  if (*(a1 + 8) != v72)
  {
    *(a1 + 24) = v72 + 40;
    v26 = (v72 + 8);
    *(a1 + 104) = *v72;
    v25 = v72;
    if (v141 == v72)
    {
      goto LABEL_159;
    }

    v73 = *(v72 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

LABEL_144:
    if ((v73 & 0x80u) == 0)
    {
      v77 = v26;
    }

    else
    {
      v77 = *v26;
    }

    if ((v73 & 0x80u) == 0)
    {
      v78 = v73;
    }

    else
    {
      v78 = *(v25 + 16);
    }

    goto LABEL_142;
  }

  *v141 = *v25;
  v73 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_144;
  }

LABEL_128:
  if ((v73 & 0x80) == 0)
  {
    goto LABEL_134;
  }

LABEL_158:
  sub_13A68((a1 + 112), *v26, *(v25 + 16));
LABEL_159:
  *(a1 + 136) = *(v25 + 32);
  v169 = sub_C80D0(a1, &v166, &v163);
  v160 = v169 == 0;
  if (!v169)
  {
    v82 = *(a1 + 608);
    v83 = vaddq_s64(*v140, xmmword_22664B0);
    *v140 = v83;
    if (v83.i64[0] >= 0x2000uLL)
    {
      operator delete(*v82);
      *(a1 + 608) += 8;
      *(a1 + 632) -= 4096;
    }

    operator new();
  }

  v81 = 1;
LABEL_165:
  *(a1 + 651) = (*(a1 + 651) | v139) & 1;
  v84 = v159;
  v85 = v159[110];
  v86 = v159[82];
  v87 = v159[111] - v85;
  if (v87)
  {
    v88 = 0xAAAAAAAAAAAAAAABLL * (v87 >> 5);
    if (v88 <= 1)
    {
      v88 = 1;
    }

    v89 = (v85 + 68);
    do
    {
      if (*v89 == 1 && *(v89 - 28) >= v86)
      {
        *v89 = 0;
      }

      v89 += 96;
      --v88;
    }

    while (v88);
  }

  v84[82] = v86 - 1;
  if ((v81 & 1) == 0)
  {
    v106 = 0;
    goto LABEL_219;
  }

  if (*v141 != 40)
  {
    v102 = *(a1 + 608);
    v103 = vaddq_s64(*v140, xmmword_22664B0);
    *v140 = v103;
    if (v103.i64[0] >= 0x2000uLL)
    {
      operator delete(*v102);
      *(a1 + 608) += 8;
      *(a1 + 632) -= 4096;
    }

    operator new();
  }

  v90 = *(a1 + 24);
  if (*(a1 + 8) == v90)
  {
    v90 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v91 = a1 + 48;
    v92 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }
  }

  else
  {
    *(a1 + 24) = v90 + 40;
    v91 = v90 + 8;
    *(a1 + 104) = *v90;
    if (v141 == v90)
    {
      goto LABEL_189;
    }

    v92 = *(v90 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_178:
      if ((v92 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v91, *(v90 + 16));
      }

      else
      {
        v93 = *v91;
        *(a1 + 128) = *(v91 + 16);
        *v13 = v93;
      }

      goto LABEL_189;
    }
  }

  if ((v92 & 0x80u) == 0)
  {
    v94 = v91;
  }

  else
  {
    v94 = *v91;
  }

  if ((v92 & 0x80u) == 0)
  {
    v95 = v92;
  }

  else
  {
    v95 = *(v90 + 16);
  }

  sub_13B38(a1 + 112, v94, v95);
LABEL_189:
  *(a1 + 136) = *(v90 + 32);
  v170 = sub_C5A5C(a1, 0);
  if (!v170)
  {
    v100 = *(a1 + 608);
    v101 = vaddq_s64(*v140, xmmword_22664B0);
    *v140 = v101;
    if (v101.i64[0] >= 0x2000uLL)
    {
      operator delete(*v100);
      *(a1 + 608) += 8;
      *(a1 + 632) -= 4096;
    }

    operator new();
  }

  if (*v141 != 41)
  {
    operator new();
  }

  v96 = *(a1 + 24);
  if (*(a1 + 8) == v96)
  {
    v96 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v97 = a1 + 48;
    v98 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_194;
    }
  }

  else
  {
    *(a1 + 24) = v96 + 40;
    v97 = v96 + 8;
    *(a1 + 104) = *v96;
    if (v141 == v96)
    {
      goto LABEL_214;
    }

    v98 = *(v96 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_194:
      if ((v98 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v97, *(v96 + 16));
      }

      else
      {
        v99 = *v97;
        *(a1 + 128) = *(v97 + 16);
        *v13 = v99;
      }

      goto LABEL_214;
    }
  }

  if ((v98 & 0x80u) == 0)
  {
    v104 = v97;
  }

  else
  {
    v104 = *v97;
  }

  if ((v98 & 0x80u) == 0)
  {
    v105 = v98;
  }

  else
  {
    v105 = *(v96 + 16);
  }

  sub_13B38(a1 + 112, v104, v105);
LABEL_214:
  *(a1 + 136) = *(v96 + 32);
  v106 = sub_1D35A8(a1 + 344, &v170, &v169, *(*(*(a1 + 608) + ((*(a1 + 632) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 632) & 0xFFFLL)));
  if (!v106)
  {
    operator new();
  }

  v107 = *(a1 + 608);
  v108 = vaddq_s64(*v140, xmmword_22664B0);
  *v140 = v108;
  if (v108.i64[0] < 0x2000uLL)
  {
LABEL_219:
    if (!v160)
    {
      goto LABEL_231;
    }

LABEL_220:
    v109 = v162;
    v110 = *v162;
    if (*v162 == v162[1])
    {
      goto LABEL_231;
    }

    v111 = 0;
    while (1)
    {
      v112 = v110[v111];
      if (!v112 || (*(*v112 + 32))(v112) == 17)
      {
        goto LABEL_223;
      }

      v113 = v110[v111];
      if (v113)
      {
        if ((*(*v113 + 32))(v113) == 18)
        {
          goto LABEL_223;
        }

        v114 = v110[v111];
        if (v114)
        {
          (*(*v114 + 8))(v114);
        }
      }

      v110[v111] = 0;
LABEL_223:
      ++v111;
      v110 = *v109;
      if (v111 >= (v109[1] - *v109) >> 3)
      {
        v109[1] = v110;
        goto LABEL_231;
      }
    }
  }

  operator delete(*v107);
  *(a1 + 608) += 8;
  *(a1 + 632) -= 4096;
  if (v160)
  {
    goto LABEL_220;
  }

LABEL_231:
  if (v163)
  {
    operator delete(v163);
  }

  if (v166)
  {
    v167 = v166;
    operator delete(v166);
  }

  return v106;
}

void sub_D4E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if (a18 < 0)
    {
LABEL_5:
      operator delete(a13);
      if ((a43 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (a18 < 0)
  {
    goto LABEL_5;
  }

  if ((a43 & 0x80000000) == 0)
  {
LABEL_6:
    if (a36 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a38);
  if (a36 < 0)
  {
LABEL_7:
    operator delete(a31);
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    operator delete(a25);
LABEL_15:
    *(v45 + 651) = (*(v45 + 651) | a10) & 1;
    sub_E510C((v46 - 184));
    sub_2446A0(v46 - 176);
    v49 = *(v46 - 152);
    if (v49)
    {
      operator delete(v49);
      v48 = *(v46 - 128);
      if (v48)
      {
LABEL_17:
        *(v46 - 120) = v48;
        operator delete(v48);
        _Unwind_Resume(a1);
      }
    }

    else
    {
      v48 = *(v46 - 128);
      if (v48)
      {
        goto LABEL_17;
      }
    }

    _Unwind_Resume(a1);
  }

LABEL_11:
  if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  goto LABEL_12;
}

uint64_t sub_D51BC(std::string::size_type a1)
{
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v122 = 0;
  v2 = *(a1 + 24);
  if (*(a1 + 8) == v2)
  {
    v2 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v4 = a1 + 104;
    v3 = a1 + 48;
    v5 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v5 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v3, *(v2 + 16));
      }

      else
      {
        v6 = *v3;
        *(a1 + 128) = *(v3 + 16);
        *(a1 + 112) = v6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = v2 + 8;
    *(a1 + 104) = *v2;
    v4 = a1 + 104;
    *(a1 + 24) = v2 + 40;
    if (a1 + 104 == v2)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v5 & 0x80u) == 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = *v3;
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v2 + 16);
  }

  sub_13B38(a1 + 112, v7, v8);
LABEL_15:
  *(v4 + 32) = *(v2 + 32);
  v120 = a1;
  ++*(a1 + 656);
  v9 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    operator new();
  }

  v10 = *(a1 + 24);
  if (*(a1 + 8) != v10)
  {
    *(a1 + 24) = v10 + 40;
    v11 = (v10 + 8);
    v12 = *v10;
    *(a1 + 104) = *v10;
    if (v9 == v10)
    {
      goto LABEL_32;
    }

    v13 = *(v10 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_23:
    if ((v13 & 0x80u) == 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    if ((v13 & 0x80u) == 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = *(v10 + 16);
    }

    sub_13B38(a1 + 112, v15, v16);
    goto LABEL_31;
  }

  v10 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v11 = (a1 + 48);
  v13 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((v13 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v11, *(v10 + 16));
  }

  else
  {
    v14 = *v11;
    *(a1 + 128) = v11[2];
    *(a1 + 112) = v14;
  }

LABEL_31:
  v12 = *v9;
LABEL_32:
  *(a1 + 136) = *(v10 + 32);
  if (v12 == 8)
  {
    goto LABEL_53;
  }

  if (v12 != 6)
  {
    v119 = 3;
    strcpy(v118, "var");
    v21 = *(a1 + 135);
    v22 = *(a1 + 120);
    if ((v21 & 0x80000000) == 0)
    {
      v22 = *(a1 + 135);
    }

    if (v22 != 3)
    {
      goto LABEL_53;
    }

    v23 = 0;
    v24 = (a1 + 112);
    v25 = v21 >> 63;
    do
    {
      if (v25)
      {
        v26 = *v24;
      }

      else
      {
        v26 = a1 + 112;
      }

      v27 = __tolower(*(v26 + v23));
      if (v27 != __tolower(*(v118 + v23)))
      {
        goto LABEL_53;
      }

      ++v23;
      v28 = *(a1 + 135);
      v25 = v28 >> 63;
      if ((v28 & 0x80000000) != 0)
      {
        v28 = *(a1 + 120);
      }
    }

    while (v23 < v28);
    v29 = *(a1 + 24);
    if (*(a1 + 8) == v29)
    {
      v29 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v30 = (a1 + 48);
    }

    else
    {
      *(a1 + 24) = v29 + 40;
      v30 = (v29 + 8);
      v31 = *v29;
      *(a1 + 104) = *v29;
      if (v9 == v29)
      {
        goto LABEL_184;
      }
    }

    v59 = *(v29 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v59 >= 0)
      {
        v78 = v30;
      }

      else
      {
        v78 = *v30;
      }

      if (v59 >= 0)
      {
        v79 = *(v29 + 31);
      }

      else
      {
        v79 = *(v29 + 16);
      }

      sub_13B38(a1 + 112, v78, v79);
    }

    else if ((*(v29 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v30, *(v29 + 16));
    }

    else
    {
      v60 = *v30;
      *(a1 + 128) = v30[2];
      *v24 = v60;
    }

    v31 = *v9;
LABEL_184:
    *(a1 + 136) = *(v29 + 32);
    if (v31 != 8)
    {
      operator new();
    }

    if (*(a1 + 8) == *(a1 + 24))
    {
      v80 = (a1 + 40);
    }

    else
    {
      v80 = *(a1 + 24);
    }

    if (*v80 != 10)
    {
      operator new();
    }

    if (*(a1 + 135) < 0)
    {
      sub_325C(&__str, *(a1 + 112), *(a1 + 120));
    }

    else
    {
      *&__str.__r_.__value_.__l.__data_ = *v24;
      __str.__r_.__value_.__r.__words[2] = *(a1 + 128);
    }

    v81 = *(a1 + 880);
    if (*(a1 + 888) != v81)
    {
      v82 = 0;
      v83 = *(*(a1 + 872) + 656);
      do
      {
        v84 = v81 + 96 * v82;
        if (*(v84 + 40) <= v83)
        {
          v85 = *(v84 + 23);
          v86 = *(v84 + 8);
          if ((v85 & 0x80000000) == 0)
          {
            v87 = *(v84 + 23);
          }

          else
          {
            v87 = *(v84 + 8);
          }

          size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if (v87 == size)
          {
            if (v87)
            {
              v89 = 0;
              v90 = v85 >> 63;
              while (1)
              {
                v91 = *v84;
                if ((v90 & 1) == 0)
                {
                  v91 = v84;
                }

                v92 = __tolower(v91[v89]);
                v93 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
                if (v92 != __tolower(v93->__r_.__value_.__s.__data_[v89]))
                {
                  break;
                }

                ++v89;
                v94 = *(v84 + 23);
                v90 = v94 >> 63;
                v86 = *(v84 + 8);
                if ((v94 & 0x80000000) == 0)
                {
                  v95 = *(v84 + 23);
                }

                else
                {
                  v95 = *(v84 + 8);
                }

                if (v89 >= v95)
                {
                  LOBYTE(v85) = *(v84 + 23);
                  goto LABEL_196;
                }
              }
            }

            else
            {
LABEL_196:
              if (*(v84 + 32) == -1)
              {
                goto LABEL_219;
              }
            }
          }
        }

        ++v82;
        v81 = *(a1 + 880);
      }

      while (v82 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - v81) >> 5));
    }

    v84 = a1 + 904;
    LOBYTE(v85) = *(a1 + 927);
    v86 = *(a1 + 912);
LABEL_219:
    v96 = v85;
    if ((v85 & 0x80u) == 0)
    {
      v97 = v85;
    }

    else
    {
      v97 = v86;
    }

    v98 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v98 = __str.__r_.__value_.__l.__size_;
    }

    if (v97 != v98 || (v96 >= 0 ? (v99 = v84) : (v99 = *v84), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_str = &__str) : (p_str = __str.__r_.__value_.__r.__words[0]), memcmp(v99, p_str, v97) || *(v84 + 68) != 1))
    {
      v103 = *(a1 + 440);
      v102 = *(a1 + 448);
      if (v102 != v103)
      {
        for (i = 0; i < (v102 - v103) >> 3; ++i)
        {
          v105 = *(v103 + 8 * i);
          if (v105)
          {
            v106 = *(v105 + 8);
            if (v106)
            {
              v107 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v107 = __str.__r_.__value_.__l.__size_;
              }

              if (v107)
              {
                if ((v106 + 8) != sub_BC284(v106, &__str))
                {
                  goto LABEL_253;
                }

                v103 = *(a1 + 440);
                v102 = *(a1 + 448);
              }
            }
          }
        }
      }

      if ((*(v84 + 68) & 1) != 0 || !sub_BB4E4(v84, &__str) || *(v84 + 64) != 1)
      {
        *(&v108.__r_.__value_.__s + 23) = 3;
        LODWORD(v108.__r_.__value_.__l.__data_) = 4144959;
        v109 = -1;
        v110 = -1;
        v111 = -1;
        v112 = 0;
        memset(v113, 0, 13);
        memset(&v113[2], 0, 24);
        std::string::operator=(&v108, &__str);
        BYTE4(v113[1]) = 1;
        LODWORD(v113[1]) = 1;
        v111 = *(a1 + 656);
        v112 = 1;
        operator new();
      }

      *(v84 + 68) = 1;
      ++*(v84 + 48);
LABEL_253:
      v101 = 1;
LABEL_254:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if ((v101 & 1) == 0)
      {
        result = 0;
        goto LABEL_165;
      }

LABEL_53:
      v124 = sub_C5A5C(a1, 0);
      if (!v124)
      {
        operator new();
      }

      if (*v9 != 6)
      {
        operator new();
      }

      v32 = *(a1 + 24);
      if (*(a1 + 8) == v32)
      {
        v32 = a1 + 40;
        *(a1 + 104) = *(a1 + 40);
        v33 = a1 + 48;
        v34 = *(a1 + 71);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_58:
          if ((v34 & 0x80) != 0)
          {
            sub_13A68((a1 + 112), *v33, *(v32 + 16));
          }

          else
          {
            v35 = *v33;
            *(a1 + 128) = *(v33 + 16);
            *(a1 + 112) = v35;
          }

          goto LABEL_143;
        }
      }

      else
      {
        *(a1 + 24) = v32 + 40;
        v33 = v32 + 8;
        *(a1 + 104) = *v32;
        if (v9 == v32)
        {
          goto LABEL_143;
        }

        v34 = *(v32 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_58;
        }
      }

      if ((v34 & 0x80u) == 0)
      {
        v38 = v33;
      }

      else
      {
        v38 = *v33;
      }

      if ((v34 & 0x80u) == 0)
      {
        v39 = v34;
      }

      else
      {
        v39 = *(v32 + 16);
      }

      sub_13B38(a1 + 112, v38, v39);
LABEL_143:
      *(a1 + 136) = *(v32 + 32);
      if (*v9 != 6)
      {
        goto LABEL_93;
      }

      goto LABEL_78;
    }

    std::operator+<char>();
    sub_30F54("' is being shadowed by a previous declaration", &v116, &v108);
    sub_C00FC(0x5647u, &v114);
    sub_23E08("exprtk.hpp:", &v114, &v115);
    sub_C3328(1, a1 + 104, &v108.__r_.__value_.__l.__data_, &v115.__r_.__value_.__l.__data_, v118);
    sub_C003C(a1, v118);
    sub_C0260(v118);
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_235:
        if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_260;
      }
    }

    else if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    operator delete(v114.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_236:
      if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_237:
        v101 = 0;
        goto LABEL_254;
      }

LABEL_261:
      operator delete(v116.__r_.__value_.__l.__data_);
      goto LABEL_237;
    }

LABEL_260:
    operator delete(v108.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_261;
  }

  v17 = *(a1 + 24);
  if (*(a1 + 8) == v17)
  {
    v17 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v18 = a1 + 48;
    v19 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_37:
      if ((v19 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v18, *(v17 + 16));
      }

      else
      {
        v20 = *v18;
        *(a1 + 128) = *(v18 + 16);
        *(a1 + 112) = v20;
      }

      goto LABEL_92;
    }
  }

  else
  {
    *(a1 + 24) = v17 + 40;
    v18 = v17 + 8;
    *(a1 + 104) = *v17;
    if (v9 == v17)
    {
      goto LABEL_92;
    }

    v19 = *(v17 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  if ((v19 & 0x80u) == 0)
  {
    v36 = v18;
  }

  else
  {
    v36 = *v18;
  }

  if ((v19 & 0x80u) == 0)
  {
    v37 = v19;
  }

  else
  {
    v37 = *(v17 + 16);
  }

  sub_13B38(a1 + 112, v36, v37);
LABEL_92:
  *(a1 + 136) = *(v17 + 32);
  if (*v9 != 6)
  {
LABEL_93:
    v123 = sub_C5A5C(a1, 0);
    if (!v123)
    {
      operator new();
    }

    if (*v9 != 6)
    {
      operator new();
    }

    v40 = *(a1 + 24);
    if (*(a1 + 8) == v40)
    {
      v40 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v41 = a1 + 48;
      v45 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      *(a1 + 24) = v40 + 40;
      v41 = v40 + 8;
      *(a1 + 104) = *v40;
      if (v9 == v40)
      {
        goto LABEL_100;
      }

      v45 = *(v40 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_98:
        if ((v45 & 0x80) == 0)
        {
          goto LABEL_99;
        }

LABEL_82:
        sub_13A68((a1 + 112), *v41, *(v40 + 16));
        goto LABEL_100;
      }
    }

    if ((v45 & 0x80u) == 0)
    {
      v43 = v41;
    }

    else
    {
      v43 = *v41;
    }

    if ((v45 & 0x80u) == 0)
    {
      v44 = v45;
    }

    else
    {
      v44 = *(v40 + 16);
    }

LABEL_90:
    sub_13B38(a1 + 112, v43, v44);
    goto LABEL_100;
  }

LABEL_78:
  v40 = *(a1 + 24);
  if (*(a1 + 8) == v40)
  {
    v40 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v41 = a1 + 48;
    v42 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_84:
    if ((v42 & 0x80u) == 0)
    {
      v43 = v41;
    }

    else
    {
      v43 = *v41;
    }

    if ((v42 & 0x80u) == 0)
    {
      v44 = v42;
    }

    else
    {
      v44 = *(v40 + 16);
    }

    goto LABEL_90;
  }

  *(a1 + 24) = v40 + 40;
  v41 = v40 + 8;
  *(a1 + 104) = *v40;
  if (v9 == v40)
  {
    goto LABEL_100;
  }

  v42 = *(v40 + 31);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_84;
  }

LABEL_81:
  if ((v42 & 0x80) != 0)
  {
    goto LABEL_82;
  }

LABEL_99:
  v46 = *v41;
  *(a1 + 128) = *(v41 + 16);
  *(a1 + 112) = v46;
LABEL_100:
  *(a1 + 136) = *(v40 + 32);
  if (*v9 == 41)
  {
    v47 = *(a1 + 24);
    if (*(a1 + 8) == v47)
    {
      v47 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v48 = a1 + 48;
      v49 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      *(a1 + 24) = v47 + 40;
      v48 = v47 + 8;
      *(a1 + 104) = *v47;
      if (v9 == v47)
      {
LABEL_117:
        *(a1 + 136) = *(v47 + 32);
        goto LABEL_152;
      }

      v49 = *(v47 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_104:
        if ((v49 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v48, *(v47 + 16));
        }

        else
        {
          v50 = *v48;
          *(a1 + 128) = *(v48 + 16);
          *(a1 + 112) = v50;
        }

        goto LABEL_117;
      }
    }

    if ((v49 & 0x80u) == 0)
    {
      v51 = v48;
    }

    else
    {
      v51 = *v48;
    }

    if ((v49 & 0x80u) == 0)
    {
      v52 = v49;
    }

    else
    {
      v52 = *(v47 + 16);
    }

    sub_13B38(a1 + 112, v51, v52);
    goto LABEL_117;
  }

  v122 = sub_C5A5C(a1, 0);
  if (!v122)
  {
    operator new();
  }

  if (*v9 != 41)
  {
    operator new();
  }

  v53 = *(a1 + 24);
  if (*(a1 + 8) == v53)
  {
    v53 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v54 = a1 + 48;
    v55 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_130:
      if ((v55 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v54, *(v53 + 16));
      }

      else
      {
        v56 = *v54;
        *(a1 + 128) = *(v54 + 16);
        *(a1 + 112) = v56;
      }

      goto LABEL_151;
    }

LABEL_135:
    if ((v55 & 0x80u) == 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = *v54;
    }

    if ((v55 & 0x80u) == 0)
    {
      v58 = v55;
    }

    else
    {
      v58 = *(v53 + 16);
    }

    sub_13B38(a1 + 112, v57, v58);
    goto LABEL_151;
  }

  *(a1 + 24) = v53 + 40;
  v54 = v53 + 8;
  *(a1 + 104) = *v53;
  if (v9 != v53)
  {
    v55 = *(v53 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_135;
  }

LABEL_151:
  *(a1 + 136) = *(v53 + 32);
LABEL_152:
  v61 = (a1 + 632);
  v62 = *(a1 + 632);
  if (!v62)
  {
    sub_1D2C0C(a1 + 600);
    v62 = v61->i64[0];
  }

  v63 = *(a1 + 608);
  v64 = (v63 + 8 * (v62 >> 12));
  if (*(a1 + 616) == v63)
  {
    v65 = 0;
  }

  else
  {
    v65 = *v64 + (v62 & 0xFFF);
  }

  if (v65 == *v64)
  {
    v65 = *(v64 - 1) + 4096;
  }

  *(v65 - 1) = 0;
  *(a1 + 632) = v62 - 1;
  ++*(a1 + 640);
  v119 = 8;
  strcpy(v118, "for-loop");
  v66 = sub_E14E0(a1, v118);
  v121 = v66;
  if ((v119 & 0x80000000) == 0)
  {
    if (v66)
    {
      goto LABEL_161;
    }

LABEL_164:
    operator new();
  }

  v71 = v66;
  operator delete(v118[0]);
  if (!v71)
  {
    goto LABEL_164;
  }

LABEL_161:
  result = sub_1D4180(a1 + 344, &v124, &v123, &v122, &v121, *(*(*(a1 + 608) + ((*(a1 + 632) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 632) & 0xFFFLL)));
  v68 = *(a1 + 608);
  v69 = vaddq_s64(*v61, xmmword_22664B0);
  *v61 = v69;
  if (v69.i64[0] >= 0x2000uLL)
  {
    v70 = result;
    operator delete(*v68);
    result = v70;
    *(a1 + 608) += 8;
    *(a1 + 632) -= 4096;
    v72 = v120;
    v73 = v120[110];
    v74 = v120[82];
    v75 = v120[111] - v73;
    if (!v75)
    {
      goto LABEL_174;
    }

    goto LABEL_166;
  }

LABEL_165:
  v72 = v120;
  v73 = v120[110];
  v74 = v120[82];
  v75 = v120[111] - v73;
  if (!v75)
  {
    goto LABEL_174;
  }

LABEL_166:
  v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 5);
  if (v76 <= 1)
  {
    v76 = 1;
  }

  v77 = (v73 + 68);
  do
  {
    if (*v77 == 1 && *(v77 - 28) >= v74)
    {
      *v77 = 0;
    }

    v77 += 96;
    --v76;
  }

  while (v76);
LABEL_174:
  v72[82] = v74 - 1;
  return result;
}

void sub_D82A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_C0260(&a58);
  if (a45 < 0)
  {
    operator delete(__p);
    if (a39 < 0)
    {
LABEL_5:
      operator delete(a34);
      if ((a24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a39 < 0)
  {
    goto LABEL_5;
  }

  if ((a24 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a51 & 0x80000000) == 0)
    {
LABEL_11:
      if (a57 < 0)
      {
        operator delete(a52);
        sub_E510C((v63 - 128));
        _Unwind_Resume(a1);
      }

      sub_E510C((v63 - 128));
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a46);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a19);
  if ((a51 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_D88D4(std::string::size_type a1)
{
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v133 = (a1 + 104);
  v136 = 6;
  strcpy(v135, "switch");
  v1 = *(a1 + 135);
  v2 = *(a1 + 120);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = *(a1 + 135);
  }

  if (v2 != 6)
  {
LABEL_17:
    operator new();
  }

  v4 = 0;
  v5 = a1 + 112;
  v6 = v1 >> 63;
  do
  {
    if (v6)
    {
      v7 = *v5;
    }

    else
    {
      v7 = v5;
    }

    v8 = __tolower(*(v7 + v4));
    if (v8 != __tolower(*(v135 + v4)))
    {
      goto LABEL_17;
    }

    ++v4;
    v9 = *(a1 + 135);
    v6 = v9 >> 63;
    if ((v9 & 0x80000000) != 0)
    {
      v9 = *(a1 + 120);
    }
  }

  while (v4 < v9);
  v10 = *(a1 + 24);
  if (*(a1 + 8) != v10)
  {
    *(a1 + 24) = v10 + 40;
    v11 = (v10 + 8);
    v12 = *v10;
    *(a1 + 104) = *v10;
    v13 = v133;
    if (v133 == v10)
    {
      goto LABEL_31;
    }

    v14 = *(v10 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_22:
    if ((v14 & 0x80u) == 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = *v11;
    }

    if ((v14 & 0x80u) == 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = *(v10 + 16);
    }

    sub_13B38(v5, v17, v18);
    goto LABEL_30;
  }

  v10 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v11 = (a1 + 48);
  v13 = v133;
  v14 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  if ((v14 & 0x80) != 0)
  {
    sub_13A68(v5, *v11, *(v10 + 16));
  }

  else
  {
    v15 = *v11;
    *(v5 + 16) = v11[2];
    *v5 = v15;
  }

LABEL_30:
  v12 = *v13;
LABEL_31:
  *(a1 + 136) = *(v10 + 32);
  if (v12 != 123)
  {
    operator new();
  }

  v19 = *(a1 + 24);
  if (*(a1 + 8) == v19)
  {
    v19 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v20 = a1 + 48;
    v21 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_35:
      if ((v21 & 0x80) != 0)
      {
        sub_13A68(v5, *v20, *(v19 + 16));
      }

      else
      {
        v22 = *v20;
        *(v5 + 16) = *(v20 + 16);
        *v5 = v22;
      }

      goto LABEL_47;
    }

LABEL_39:
    if ((v21 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *v20;
    }

    if ((v21 & 0x80u) == 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = *(v19 + 16);
    }

    sub_13B38(v5, v23, v24);
    goto LABEL_47;
  }

  *(a1 + 24) = v19 + 40;
  v20 = v19 + 8;
  *(a1 + 104) = *v19;
  if (v13 != v19)
  {
    v21 = *(v19 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_47:
  *(a1 + 136) = *(v19 + 32);
  v25 = *(a1 + 135);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a1 + 120);
  }

  if (v25 != 4)
  {
LABEL_185:
    operator new();
  }

  v26 = (a1 + 40);
  v27 = (a1 + 48);
  while (1)
  {
    v29 = __tolower(99);
    if (*(a1 + 135) >= 0)
    {
      v30 = v5;
    }

    else
    {
      v30 = *(a1 + 112);
    }

    if (v29 != __tolower(*v30))
    {
      goto LABEL_185;
    }

    v31 = __tolower(97);
    v32 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
    if (v31 != __tolower(*(v32 + 1)))
    {
      goto LABEL_185;
    }

    v33 = __tolower(115);
    v34 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
    if (v33 != __tolower(*(v34 + 2)))
    {
      goto LABEL_185;
    }

    v35 = __tolower(101);
    v36 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
    if (v35 != __tolower(*(v36 + 3)))
    {
      goto LABEL_185;
    }

    v37 = *(a1 + 24);
    if (*(a1 + 8) == v37)
    {
      *v13 = *v26;
      v38 = a1 + 48;
      v37 = a1 + 40;
      v39 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      *(a1 + 24) = v37 + 40;
      v38 = v37 + 8;
      *(a1 + 104) = *v37;
      if (v13 == v37)
      {
        goto LABEL_84;
      }

      v39 = *(v37 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_73:
        if ((v39 & 0x80) != 0)
        {
          sub_13A68(v5, *v38, *(v37 + 16));
        }

        else
        {
          v40 = *v38;
          *(v5 + 16) = *(v38 + 16);
          *v5 = v40;
        }

        goto LABEL_84;
      }
    }

    v41 = (v39 & 0x80u) == 0 ? v38 : *v38;
    v42 = (v39 & 0x80u) == 0 ? v39 : *(v37 + 16);
    sub_13B38(v5, v41, v42);
LABEL_84:
    *(a1 + 136) = *(v37 + 32);
    v43 = sub_C5A5C(a1, 0);
    if (!v43)
    {
      goto LABEL_266;
    }

    if (*v13 != 58)
    {
      operator new();
    }

    v44 = *(a1 + 24);
    if (*(a1 + 8) == v44)
    {
      *v13 = *v26;
      v45 = a1 + 48;
      v44 = a1 + 40;
      v46 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
      *(a1 + 24) = v44 + 40;
      v45 = v44 + 8;
      *(a1 + 104) = *v44;
      if (v13 == v44)
      {
        goto LABEL_100;
      }

      v46 = *(v44 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_89:
        if ((v46 & 0x80) != 0)
        {
          sub_13A68(v5, *v45, *(v44 + 16));
        }

        else
        {
          v47 = *v45;
          *(v5 + 16) = *(v45 + 16);
          *v5 = v47;
        }

        goto LABEL_100;
      }
    }

    v48 = (v46 & 0x80u) == 0 ? v45 : *v45;
    v49 = (v46 & 0x80u) == 0 ? v46 : *(v44 + 16);
    sub_13B38(v5, v48, v49);
LABEL_100:
    *(a1 + 136) = *(v44 + 32);
    v50 = sub_C5A5C(a1, 0);
    if (!v50)
    {
      goto LABEL_266;
    }

    if (*v133 != 6)
    {
      operator new();
    }

    v51 = *(a1 + 24);
    if (*(a1 + 8) == v51)
    {
      *v133 = *v26;
      v52 = a1 + 48;
      v51 = a1 + 40;
      v53 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      *(a1 + 24) = v51 + 40;
      v52 = v51 + 8;
      *(a1 + 104) = *v51;
      if (v133 == v51)
      {
        goto LABEL_116;
      }

      v53 = *(v51 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_105:
        if ((v53 & 0x80) != 0)
        {
          sub_13A68(v5, *v52, *(v51 + 16));
        }

        else
        {
          v54 = *v52;
          *(v5 + 16) = *(v52 + 16);
          *v5 = v54;
        }

        goto LABEL_116;
      }
    }

    v55 = (v53 & 0x80u) == 0 ? v52 : *v52;
    v56 = (v53 & 0x80u) == 0 ? v53 : *(v51 + 16);
    sub_13B38(v5, v55, v56);
LABEL_116:
    *(a1 + 136) = *(v51 + 32);
    if ((*(*v43 + 32))(v43) != 2 || (*(*v43 + 16))(v43) != 0.0)
    {
      v57 = v138;
      v58 = v139;
      if (v138 >= v139)
      {
        v61 = v137;
        v62 = v138 - v137;
        v63 = v138 - v137;
        v64 = v63 + 1;
        if ((v63 + 1) >> 61)
        {
          goto LABEL_288;
        }

        if ((v139 - v137) >> 2 > v64)
        {
          v64 = (v139 - v137) >> 2;
        }

        if (v139 - v137 >= 0x7FFFFFFFFFFFFFF8)
        {
          v65 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v65 = v64;
        }

        if (v65)
        {
          if (!(v65 >> 61))
          {
            operator new();
          }

LABEL_289:
          sub_1808();
        }

        v66 = (8 * v63);
        v58 = 0;
        v67 = &v66[-(v138 - v137)];
        *v66 = v43;
        v59 = v66 + 1;
        memcpy(v67, v61, v62);
        v137 = v67;
        v138 = v59;
        v139 = 0;
        if (v61)
        {
          operator delete(v61);
          v58 = v139;
        }

        v138 = v59;
        if (v59 < v58)
        {
          goto LABEL_126;
        }
      }

      else
      {
        *v138 = v43;
        v59 = v57 + 1;
        v138 = v59;
        if (v59 < v58)
        {
LABEL_126:
          *v59 = v50;
          v60 = v59 + 1;
LABEL_150:
          v138 = v60;
          goto LABEL_151;
        }
      }

      v68 = v137;
      v69 = v59 - v137;
      v70 = v59 - v137;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
LABEL_288:
        sub_1794();
      }

      if ((v58 - v137) >> 2 > v71)
      {
        v71 = (v58 - v137) >> 2;
      }

      if (v58 - v137 >= 0x7FFFFFFFFFFFFFF8)
      {
        v72 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v72 = v71;
      }

      if (v72)
      {
        if (!(v72 >> 61))
        {
          operator new();
        }

        goto LABEL_289;
      }

      v73 = v70;
      v74 = (8 * v70);
      v75 = &v74[-v73];
      *v74 = v50;
      v60 = v74 + 1;
      memcpy(v75, v68, v69);
      v137 = v75;
      v138 = v60;
      v139 = 0;
      if (v68)
      {
        operator delete(v68);
      }

      goto LABEL_150;
    }

    if ((*(*v43 + 32))(v43) != 17 && (*(*v43 + 32))(v43) != 18)
    {
      (*(*v43 + 8))(v43);
    }

    if ((*(*v50 + 32))(v50) != 17 && (*(*v50 + 32))(v50) != 18)
    {
      (*(*v50 + 8))(v50);
    }

LABEL_151:
    v13 = v133;
    v76 = *(a1 + 135);
    if ((v76 & 0x80u) != 0)
    {
      v76 = *(a1 + 120);
    }

    if (v76 == 7)
    {
      v77 = __tolower(100);
      v78 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
      if (v77 == __tolower(*v78))
      {
        v79 = __tolower(101);
        v80 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
        if (v79 == __tolower(*(v80 + 1)))
        {
          v81 = __tolower(102);
          v82 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
          if (v81 == __tolower(*(v82 + 2)))
          {
            v83 = __tolower(97);
            v84 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
            if (v83 == __tolower(*(v84 + 3)))
            {
              v85 = __tolower(117);
              v86 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
              if (v85 == __tolower(*(v86 + 4)))
              {
                v87 = __tolower(108);
                v88 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
                if (v87 == __tolower(*(v88 + 5)))
                {
                  v89 = __tolower(116);
                  v90 = *(a1 + 135) >= 0 ? v5 : *(a1 + 112);
                  if (v89 == __tolower(*(v90 + 6)))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }

    v28 = *(a1 + 135);
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a1 + 120);
    }

    if (v28 != 4)
    {
      goto LABEL_185;
    }
  }

  v91 = *(a1 + 24);
  if (*(a1 + 8) == v91)
  {
    *v133 = *v26;
    v92 = (a1 + 48);
    v91 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v91 + 40;
    v92 = (v91 + 8);
    v93 = *v91;
    *(a1 + 104) = *v91;
    if (v133 == v91)
    {
      goto LABEL_201;
    }
  }

  v94 = *(v91 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v94 >= 0)
    {
      v96 = v92;
    }

    else
    {
      v96 = *v92;
    }

    if (v94 >= 0)
    {
      v97 = *(v91 + 31);
    }

    else
    {
      v97 = *(v91 + 16);
    }

    sub_13B38(v5, v96, v97);
  }

  else if ((*(v91 + 31) & 0x80) != 0)
  {
    sub_13A68(v5, *v92, *(v91 + 16));
  }

  else
  {
    v95 = *v92;
    *(v5 + 16) = v92[2];
    *v5 = v95;
  }

  v93 = *v133;
LABEL_201:
  *(a1 + 136) = *(v91 + 32);
  if (v93 != 58)
  {
    operator new();
  }

  v98 = *(a1 + 24);
  if (*(a1 + 8) == v98)
  {
    *v133 = *v26;
    v99 = (a1 + 48);
    v98 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v98 + 40;
    v99 = (v98 + 8);
    v100 = *v98;
    *(a1 + 104) = *v98;
    if (v133 == v98)
    {
      goto LABEL_219;
    }
  }

  v101 = *(v98 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v101 >= 0)
    {
      v103 = v99;
    }

    else
    {
      v103 = *v99;
    }

    if (v101 >= 0)
    {
      v104 = *(v98 + 31);
    }

    else
    {
      v104 = *(v98 + 16);
    }

    sub_13B38(v5, v103, v104);
  }

  else if ((*(v98 + 31) & 0x80) != 0)
  {
    sub_13A68(v5, *v99, *(v98 + 16));
  }

  else
  {
    v102 = *v99;
    *(v5 + 16) = v99[2];
    *v5 = v102;
  }

  v100 = *v133;
LABEL_219:
  *(a1 + 136) = *(v98 + 32);
  if (v100 == 123)
  {
    v136 = 14;
    strcpy(v135, "switch-default");
    v105 = sub_E14E0(a1, v135);
    if (v136 < 0)
    {
      operator delete(v135[0]);
    }
  }

  else
  {
    v105 = sub_C5A5C(a1, 0);
  }

  if (!v105)
  {
LABEL_266:
    v125 = 0;
    goto LABEL_267;
  }

  if (*v133 != 6)
  {
    if ((*(*v105 + 32))(v105) != 17 && (*(*v105 + 32))(v105) != 18)
    {
      (*(*v105 + 8))(v105);
    }

    operator new();
  }

  v106 = *(a1 + 24);
  if (*(a1 + 8) == v106)
  {
    *v133 = *v26;
    v107 = (a1 + 48);
    v106 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v106 + 40;
    v107 = (v106 + 8);
    *(a1 + 104) = *v106;
    if (v133 == v106)
    {
      goto LABEL_244;
    }
  }

  v108 = *(v106 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v108 >= 0)
    {
      v110 = v107;
    }

    else
    {
      v110 = *v107;
    }

    if (v108 >= 0)
    {
      v111 = *(v106 + 31);
    }

    else
    {
      v111 = *(v106 + 16);
    }

    sub_13B38(v5, v110, v111);
  }

  else if ((*(v106 + 31) & 0x80) != 0)
  {
    sub_13A68(v5, *v107, *(v106 + 16));
  }

  else
  {
    v109 = *v107;
    *(v5 + 16) = v107[2];
    *v5 = v109;
  }

LABEL_244:
  *(a1 + 136) = *(v106 + 32);
  v112 = v138;
  if (v138 >= v139)
  {
    v114 = v137;
    v115 = v138 - v137;
    v116 = v138 - v137;
    v117 = v116 + 1;
    if ((v116 + 1) >> 61)
    {
      sub_1794();
    }

    v118 = v139 - v137;
    if ((v139 - v137) >> 2 > v117)
    {
      v117 = v118 >> 2;
    }

    if (v118 >= 0x7FFFFFFFFFFFFFF8)
    {
      v119 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v119 = v117;
    }

    if (v119)
    {
      if (!(v119 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v120 = (8 * v116);
    v121 = &v120[-(v138 - v137)];
    *v120 = v105;
    v113 = v120 + 1;
    memcpy(v121, v114, v115);
    v137 = v121;
    v138 = v113;
    v139 = 0;
    if (v114)
    {
      operator delete(v114);
    }
  }

  else
  {
    *v138 = v105;
    v113 = v112 + 1;
  }

  v138 = v113;
  if (*v133 != 125)
  {
    operator new();
  }

  v122 = *(a1 + 24);
  if (*(a1 + 8) == v122)
  {
    *v133 = *v26;
  }

  else
  {
    *(a1 + 24) = v122 + 10;
    v27 = (v122 + 2);
    *(a1 + 104) = *v122;
    v26 = v122;
    if (v133 == v122)
    {
      goto LABEL_286;
    }
  }

  v123 = *(v26 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v123 >= 0)
    {
      v131 = v27;
    }

    else
    {
      v131 = *v27;
    }

    if (v123 >= 0)
    {
      v132 = *(v26 + 31);
    }

    else
    {
      v132 = *(v26 + 2);
    }

    sub_13B38(v5, v131, v132);
  }

  else if ((*(v26 + 31) & 0x80) != 0)
  {
    sub_13A68(v5, *v27, *(v26 + 2));
  }

  else
  {
    v124 = *v27;
    *(v5 + 16) = v27[2];
    *v5 = v124;
  }

LABEL_286:
  *(a1 + 136) = *(v26 + 4);
  v125 = sub_1D869C(a1 + 344, &v137);
  if (v125 == 0)
  {
LABEL_267:
    v126 = v137;
    if (v137 == v138)
    {
      goto LABEL_18;
    }

    v127 = 0;
    while (1)
    {
      v128 = v126[v127];
      if (!v128 || (*(*v128 + 32))(v128) == 17)
      {
        goto LABEL_270;
      }

      v129 = v126[v127];
      if (v129)
      {
        if ((*(*v129 + 32))(v129) == 18)
        {
          goto LABEL_270;
        }

        v130 = v126[v127];
        if (v130)
        {
          (*(*v130 + 8))(v130);
        }
      }

      v126[v127] = 0;
LABEL_270:
      ++v127;
      v126 = v137;
      if (v127 >= v138 - v137)
      {
        v138 = v137;
        break;
      }
    }
  }

LABEL_18:
  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  return v125;
}

void sub_DB15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_2446A0(&a32);
  v45 = *(v43 - 112);
  if (v45)
  {
    *(v43 - 104) = v45;
    operator delete(v45);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_DB490(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    sub_325C(&v40, *(a1 + 112), *(a1 + 120));
    v2 = SHIBYTE(v41);
    if ((SHIBYTE(v41) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = *(a1 + 112);
    v41 = *(a1 + 128);
    v2 = SHIBYTE(v41);
    if ((SHIBYTE(v41) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v3 = BYTE2(v40);
      if (BYTE2(v40) - 48 > 9)
      {
        goto LABEL_13;
      }

      v4 = BYTE3(v40);
      if (BYTE3(v40) - 48 >= 0xA)
      {
        goto LABEL_13;
      }

LABEL_9:
      v5 = v4 + 10 * v3;
      if (v5 > 0x23F)
      {
        result = sub_1DBC58(a1, v5 + 472, &v40);
      }

      else
      {
        result = sub_1DAA50(a1, v5 + 472, &v40);
      }

      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_55;
      }

      return result;
    }
  }

  v3 = *(v40 + 2);
  if ((v3 - 48) < 0xA)
  {
    v4 = *(v40 + 3);
    if ((v4 - 48) < 0xA)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  if ((v2 & 0x80000000) == 0)
  {
    v7 = v2;
  }

  else
  {
    v7 = *(&v40 + 1);
  }

  if (v7 + 38 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 38 > 0x16)
  {
    operator new();
  }

  qmemcpy(v32, "ERR132 - Invalid special function[1]: ", 38);
  if (v41 >= 0)
  {
    v8 = &v40;
  }

  else
  {
    v8 = v40;
  }

  memmove(&v32[4] + 6, v8, v7);
  *(&v32[4] + v7 + 6) = 0;
  v9 = 24019;
  memset(&v29, 0, sizeof(v29));
  do
  {
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      v14 = (v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v29.__r_.__value_.__l.__size_ == v14)
      {
        if ((v29.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_31:
        operator new();
      }

      size = v29.__r_.__value_.__l.__size_;
      v11 = v29.__r_.__value_.__r.__words[0];
      ++v29.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v29.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_31;
      }

      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      *(&v29.__r_.__value_.__s + 23) = (*(&v29.__r_.__value_.__s + 23) + 1) & 0x7F;
      v11 = &v29;
    }

    v12 = v11 + size;
    *v12 = (v9 % 0xA) | 0x30;
    v12[1] = 0;
    v13 = v9 > 9;
    v9 /= 0xAu;
  }

  while (v13);
  v15 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  v16 = &v29;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v29.__r_.__value_.__l.__size_;
    v16 = v29.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    v17 = (v16 + v15 - 1);
    if (v17 > v16)
    {
      v18 = &v16->__r_.__value_.__s.__data_[1];
      do
      {
        v19 = *(v18 - 1);
        *(v18 - 1) = v17->__r_.__value_.__s.__data_[0];
        v17->__r_.__value_.__s.__data_[0] = v19;
        v17 = (v17 - 1);
      }

      while (v18++ < v17);
    }
  }

  v21 = std::string::insert(&v29, 0, "exprtk.hpp:", 0xBuLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v31 = v21->__r_.__value_.__r.__words[2];
  *v30 = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(2, a1 + 104, v32, v30, &v32[3]);
  v23 = *(a1 + 568);
  v24 = *(a1 + 560);
  v25 = 30 * ((v23 - v24) >> 3) - 1;
  if (v23 == v24)
  {
    v25 = 0;
  }

  if (v25 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v24 = *(a1 + 560);
    v23 = *(a1 + 568);
  }

  if (v23 == v24)
  {
    v27 = 0;
  }

  else
  {
    v26 = *(a1 + 592) + *(a1 + 584);
    v27 = *(v24 + 8 * (v26 / 0x1E)) + 136 * (v26 % 0x1E);
  }

  sub_C398C(v27, &v32[3]);
  ++*(a1 + 592);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_49:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_51:
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(v32[4]);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
LABEL_52:
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

LABEL_60:
  operator delete(v30[0]);
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_53:
    if ((SHIBYTE(v32[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_62:
    operator delete(v32[0]);
    result = 0;
    if (SHIBYTE(v41) < 0)
    {
      goto LABEL_55;
    }

    return result;
  }

LABEL_61:
  operator delete(v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v32[2]) < 0)
  {
    goto LABEL_62;
  }

LABEL_54:
  result = 0;
  if (SHIBYTE(v41) < 0)
  {
LABEL_55:
    v28 = result;
    operator delete(v40);
    return v28;
  }

  return result;
}

void sub_DB9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DBAD8(std::string::size_type a1)
{
  if (*(a1 + 194) == 1)
  {
    operator new();
  }

  v114 = 3;
  LODWORD(v112) = 7496054;
  v2 = *(a1 + 135);
  v3 = *(a1 + 120);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(a1 + 135);
  }

  if (v3 != 3)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 104);
  v6 = (a1 + 112);
  v7 = v2 >> 63;
  do
  {
    if (v7)
    {
      v8 = *v6;
    }

    else
    {
      v8 = a1 + 112;
    }

    v9 = __tolower(*(v8 + v4));
    if (v9 != __tolower(*(&v112 + v4)))
    {
      return 0;
    }

    ++v4;
    v10 = *(a1 + 135);
    v7 = v10 >> 63;
    if ((v10 & 0x80000000) != 0)
    {
      v10 = *(a1 + 120);
    }
  }

  while (v4 < v10);
  v11 = *(a1 + 24);
  if (*(a1 + 8) != v11)
  {
    *(a1 + 24) = v11 + 40;
    v12 = (v11 + 8);
    *(a1 + 104) = *v11;
    if (v5 == v11)
    {
      goto LABEL_33;
    }

    v13 = *(v11 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    if ((v13 & 0x80u) == 0)
    {
      v18 = v12;
    }

    else
    {
      v18 = *v12;
    }

    if ((v13 & 0x80u) == 0)
    {
      v19 = v13;
    }

    else
    {
      v19 = *(v11 + 16);
    }

    sub_13B38(a1 + 112, v18, v19);
LABEL_33:
    *(a1 + 136) = *(v11 + 32);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v11 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v12 = (a1 + 48);
  v13 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v13 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v12, *(v11 + 16));
    *(a1 + 136) = *(v11 + 32);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_19:
    sub_325C(&v111[32], *(a1 + 112), *(a1 + 120));
    v110 = 0;
    v99 = (a1 + 104);
    if (*v5 == 8)
    {
      goto LABEL_20;
    }

LABEL_35:
    operator new();
  }

  v14 = *v12;
  *(a1 + 128) = v12[2];
  *v6 = v14;
  *(a1 + 136) = *(v11 + 32);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_19;
  }

LABEL_34:
  *&v111[32] = *v6;
  *&v111[48] = *(a1 + 128);
  v110 = 0;
  v99 = (a1 + 104);
  if (*v5 != 8)
  {
    goto LABEL_35;
  }

LABEL_20:
  v15 = *(a1 + 24);
  if (*(a1 + 8) == v15)
  {
    v15 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v16 = (a1 + 48);
LABEL_37:
    v20 = *(v15 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v20 >= 0)
      {
        v23 = v16;
      }

      else
      {
        v23 = *v16;
      }

      if (v20 >= 0)
      {
        v24 = *(v15 + 31);
      }

      else
      {
        v24 = *(v15 + 16);
      }

      sub_13B38(a1 + 112, v23, v24);
    }

    else if ((*(v15 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v16, *(v15 + 16));
    }

    else
    {
      v21 = *v16;
      *(a1 + 128) = v16[2];
      *v6 = v21;
    }

    goto LABEL_56;
  }

  *(a1 + 24) = v15 + 40;
  v16 = (v15 + 8);
  *(a1 + 104) = *v15;
  if (v5 != v15)
  {
    goto LABEL_37;
  }

LABEL_56:
  v25 = 0;
  *(a1 + 136) = *(v15 + 32);
  v26 = 1;
  while (1)
  {
    v27 = &aAbs[24 * v25];
    v28 = *&v111[40];
    if (v111[55] >= 0)
    {
      v28 = v111[55];
    }

    v29 = v27[23];
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v27 + 1);
    }

    if (v28 == v29)
    {
      break;
    }

LABEL_57:
    v26 = v25++ < 0x56;
    if (v25 == 87)
    {
      goto LABEL_74;
    }
  }

  if (v28)
  {
    v31 = 0;
    v32 = v111[55] >> 63;
    do
    {
      if (v32)
      {
        v33 = *&v111[32];
      }

      else
      {
        v33 = &v111[32];
      }

      v34 = __tolower(v33[v31]);
      v35 = *v27;
      if (v30 >= 0)
      {
        v35 = &aAbs[24 * v25];
      }

      if (v34 != __tolower(v35[v31]))
      {
        goto LABEL_57;
      }

      ++v31;
      v36 = v111[55];
      v32 = v111[55] >> 63;
      if (v111[55] < 0)
      {
        v36 = *&v111[40];
      }
    }

    while (v31 < v36);
  }

LABEL_74:
  if (v26)
  {
    if (v111[55] >= 0)
    {
      v37 = v111[55];
    }

    else
    {
      v37 = *&v111[40];
    }

    if (v37 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v37 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v111, "ERR158 - Illegal redefinition of reserved keyword: '", 52);
    if (v111[55] >= 0)
    {
      v51 = &v111[32];
    }

    else
    {
      v51 = *&v111[32];
    }

    memmove(&v111[52], v51, v37);
    v100 = a1;
    v111[v37 + 52] = 0;
    v52 = std::string::append(v111, "'", 1uLL);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v102.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v102.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = 24600;
    memset(&v108, 0, sizeof(v108));
    do
    {
      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        v59 = (v108.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v108.__r_.__value_.__l.__size_ == v59)
        {
          if ((v108.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_120:
          operator new();
        }

        size = v108.__r_.__value_.__l.__size_;
        v56 = v108.__r_.__value_.__r.__words[0];
        ++v108.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v108.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_120;
        }

        size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
        *(&v108.__r_.__value_.__s + 23) = (*(&v108.__r_.__value_.__s + 23) + 1) & 0x7F;
        v56 = &v108;
      }

      v57 = v56 + size;
      *v57 = (v54 % 0xA) | 0x30;
      v57[1] = 0;
      v58 = v54 > 9;
      v54 /= 0xAu;
    }

    while (v58);
    v60 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
    v61 = &v108;
    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v60 = v108.__r_.__value_.__l.__size_;
      v61 = v108.__r_.__value_.__r.__words[0];
    }

    if (v60)
    {
      v62 = (v61 + v60 - 1);
      if (v62 > v61)
      {
        v63 = &v61->__r_.__value_.__s.__data_[1];
        do
        {
          v64 = *(v63 - 1);
          *(v63 - 1) = v62->__r_.__value_.__s.__data_[0];
          v62->__r_.__value_.__s.__data_[0] = v64;
          v62 = (v62 - 1);
          v65 = v63++ >= v62;
        }

        while (!v65);
      }
    }

    v66 = std::string::insert(&v108, 0, "exprtk.hpp:", 0xBuLL);
    v67 = v100;
    v68 = *&v66->__r_.__value_.__l.__data_;
    v109.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v109.__r_.__value_.__l.__data_ = v68;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v99, &v102.__r_.__value_.__l.__data_, &v109.__r_.__value_.__l.__data_, &v112);
    v69 = v100[71];
    v70 = v100[70];
    v71 = 30 * ((v69 - v70) >> 3) - 1;
    if (v69 == v70)
    {
      v71 = 0;
    }

    if (v71 == v100[74] + v100[73])
    {
      sub_C35C4(v100 + 69);
      v70 = v100[70];
      v69 = v100[71];
    }

    if (v69 == v70)
    {
      v73 = 0;
    }

    else
    {
      v72 = v100[74] + v100[73];
      v73 = *(v70 + 8 * (v72 / 0x1E)) + 136 * (v72 % 0x1E);
    }

    goto LABEL_173;
  }

  v39 = *(a1 + 440);
  v38 = *(a1 + 448);
  if (v38 == v39)
  {
LABEL_105:
    if (sub_1FC3BC(a1, &v111[32]))
    {
      std::operator+<char>();
      sub_30F54("'", v111, &v102);
      sub_C00FC(0x602Cu, &v108);
      sub_23E08("exprtk.hpp:", &v108, &v109);
      sub_C3328(1, v99, &v102.__r_.__value_.__l.__data_, &v109.__r_.__value_.__l.__data_, &v112);
      sub_C003C(a1, &v112);
      sub_C0260(&v112);
      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_186;
      }

      goto LABEL_178;
    }

    if (*v99 == 123)
    {
      result = sub_1FE7A8(a1, &v111[32]);
      goto LABEL_192;
    }

    if (*v99 == 91)
    {
      result = sub_1FC56C(a1, &v111[32]);
      goto LABEL_192;
    }

    LODWORD(v112) = 10;
    if (!sub_C7FD4(a1, &v112, 1) || (v110 = sub_C5A5C(a1, 0)) != 0)
    {
      v95 = *v99;
      if (*v99 > 92)
      {
        if (v95 != 93 && v95 != 125)
        {
LABEL_214:
          sub_3608D0(&v102, "ERR162 - Expected ';' after variable definition");
          sub_C00FC(0x6052u, &v109);
          sub_23E08("exprtk.hpp:", &v109, v111);
          sub_C3328(1, v99, &v102.__r_.__value_.__l.__data_, v111, &v112);
          sub_C003C(a1, &v112);
          sub_C0260(&v112);
          if ((v111[23] & 0x80000000) != 0)
          {
            operator delete(*v111);
            if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_216:
              if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_211;
              }

              goto LABEL_230;
            }
          }

          else if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_216;
          }

          operator delete(v109.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_211;
          }

LABEL_230:
          operator delete(v102.__r_.__value_.__l.__data_);
          goto LABEL_211;
        }
      }

      else if (v95 != 6 && v95 != 41)
      {
        goto LABEL_214;
      }

      if (v110 && (sub_12835C(v110) & 1) != 0)
      {
        goto LABEL_191;
      }

      v96 = sub_1D3D4C((a1 + 872), &v111[32], -1);
      if (sub_BB4E4(v96, &v111[32]))
      {
        if (*(v96 + 68) == 1)
        {
          std::operator+<char>();
          sub_30F54("'", v111, &v102);
          sub_C00FC(0x606Eu, &v108);
          sub_23E08("exprtk.hpp:", &v108, &v109);
          sub_C3328(1, v99, &v102.__r_.__value_.__l.__data_, &v109.__r_.__value_.__l.__data_, &v112);
          sub_C003C(a1, &v112);
          sub_C0260(&v112);
          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v109.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_209:
              if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_210;
              }

              goto LABEL_233;
            }
          }

          else if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_209;
          }

          operator delete(v108.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_210:
            if ((v111[23] & 0x80000000) == 0)
            {
LABEL_211:
              sub_C9D74(a1 + 432, &v110, 0);
              goto LABEL_191;
            }

LABEL_234:
            operator delete(*v111);
            goto LABEL_211;
          }

LABEL_233:
          operator delete(v102.__r_.__value_.__l.__data_);
          if ((v111[23] & 0x80000000) == 0)
          {
            goto LABEL_211;
          }

          goto LABEL_234;
        }

        if (*(v96 + 16) == 1)
        {
          v97 = v96[10];
          *(v96 + 68) = 1;
          v98 = v96[6] + 1;
          v96[5] = *(a1 + 656);
          v96[6] = v98;
          if (v97)
          {
            sub_3608D0(&v112, "parse_define_var_statement()");
            if ((*(a1 + 651) & 1) == 0)
            {
              *(a1 + 651) = 1;
            }

            if (v114 < 0)
            {
              operator delete(v112);
            }

            sub_E5BE0(a1 + 464, &v111[32], 6u);
            v112 = v97;
            if (!v110)
            {
              operator new();
            }

            v113 = v110;
            LODWORD(v102.__r_.__value_.__l.__data_) = 81;
            result = sub_EFB10(a1 + 344, &v102, &v112);
            goto LABEL_192;
          }
        }
      }

      *(&v102.__r_.__value_.__s + 23) = 3;
      LODWORD(v102.__r_.__value_.__l.__data_) = 4144959;
      v103 = -1;
      v104 = -1;
      v105 = -1;
      v106 = 0;
      memset(v107, 0, 13);
      memset(&v107[2], 0, 24);
      std::string::operator=(&v102, &v111[32]);
      BYTE4(v107[1]) = 1;
      LODWORD(v107[1]) = 1;
      v105 = *(a1 + 656);
      v106 = 1;
      operator new();
    }

    sub_3608D0(&v102, "ERR161 - Failed to parse initialisation expression");
    sub_C00FC(0x6040u, &v109);
    sub_23E08("exprtk.hpp:", &v109, v111);
    sub_C3328(1, v99, &v102.__r_.__value_.__l.__data_, v111, &v112);
    sub_C003C(a1, &v112);
    sub_C0260(&v112);
    if ((v111[23] & 0x80000000) != 0)
    {
      operator delete(*v111);
      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_44:
        operator delete(v109.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_191;
        }

        goto LABEL_45;
      }
    }

    else if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_44;
    }

    if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_45:
    v22 = v102.__r_.__value_.__r.__words[0];
    goto LABEL_190;
  }

  v40 = 0;
  while (1)
  {
    v41 = *(v39 + 8 * v40);
    if (!v41)
    {
      goto LABEL_83;
    }

    v42 = *(v41 + 8);
    if (!v42)
    {
      goto LABEL_83;
    }

    v43 = v111[55];
    v44 = v111[55];
    v45 = *&v111[40];
    if (v111[55] >= 0)
    {
      v46 = v111[55];
    }

    else
    {
      v46 = *&v111[40];
    }

    if (v46)
    {
      if ((v42 + 8) != sub_BC284(*(v41 + 8), &v111[32]))
      {
        break;
      }

      v43 = v111[55];
      v45 = *&v111[40];
      v41 = *(v39 + 8 * v40);
      v44 = v111[55];
    }

    if (v44 >= 0)
    {
      v47 = v43;
    }

    else
    {
      v47 = v45;
    }

    if (v47)
    {
      v48 = *(v41 + 8);
      if ((v48 + 200) != sub_BC284(v48 + 192, &v111[32]))
      {
        break;
      }

      v43 = v111[55];
      v45 = *&v111[40];
      v41 = *(v39 + 8 * v40);
      v44 = v111[55];
    }

    if (v44 < 0)
    {
      v43 = v45;
    }

    if (v43)
    {
      v49 = *(v41 + 8);
      if ((v49 + 40) != sub_BC284(v49 + 32, &v111[32]))
      {
        break;
      }

      v41 = *(v39 + 8 * v40);
    }

    v50 = *(v41 + 8);
    if ((v50 + 280) != sub_BC168(v50 + 272, &v111[32]))
    {
      break;
    }

    v39 = *(a1 + 440);
    v38 = *(a1 + 448);
LABEL_83:
    if (++v40 >= ((v38 - v39) >> 3))
    {
      goto LABEL_105;
    }
  }

  if (v111[55] >= 0)
  {
    v74 = v111[55];
  }

  else
  {
    v74 = *&v111[40];
  }

  if (v74 + 43 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v74 + 43 > 0x16)
  {
    operator new();
  }

  qmemcpy(v111, "ERR159 - Illegal redefinition of variable '", 43);
  if (v111[55] >= 0)
  {
    v75 = &v111[32];
  }

  else
  {
    v75 = *&v111[32];
  }

  memmove(&v111[43], v75, v74);
  v101 = a1;
  v111[v74 + 43] = 0;
  v76 = std::string::append(v111, "'", 1uLL);
  v77 = *&v76->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = 24610;
  memset(&v108, 0, sizeof(v108));
  do
  {
    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      v82 = (v108.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v108.__r_.__value_.__l.__size_ == v82)
      {
        if ((v108.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_157:
        operator new();
      }

      v79 = v108.__r_.__value_.__l.__size_;
      v80 = v108.__r_.__value_.__r.__words[0];
      ++v108.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v108.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_157;
      }

      v79 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      *(&v108.__r_.__value_.__s + 23) = (*(&v108.__r_.__value_.__s + 23) + 1) & 0x7F;
      v80 = &v108;
    }

    v81 = v80 + v79;
    *v81 = (v78 % 0xA) | 0x30;
    v81[1] = 0;
    v58 = v78 > 9;
    v78 /= 0xAu;
  }

  while (v58);
  v83 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
  v84 = &v108;
  if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v83 = v108.__r_.__value_.__l.__size_;
    v84 = v108.__r_.__value_.__r.__words[0];
  }

  if (v83)
  {
    v85 = (v84 + v83 - 1);
    if (v85 > v84)
    {
      v86 = &v84->__r_.__value_.__s.__data_[1];
      do
      {
        v87 = *(v86 - 1);
        *(v86 - 1) = v85->__r_.__value_.__s.__data_[0];
        v85->__r_.__value_.__s.__data_[0] = v87;
        v85 = (v85 - 1);
        v65 = v86++ >= v85;
      }

      while (!v65);
    }
  }

  v88 = std::string::insert(&v108, 0, "exprtk.hpp:", 0xBuLL);
  v67 = v101;
  v89 = *&v88->__r_.__value_.__l.__data_;
  v109.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
  *&v109.__r_.__value_.__l.__data_ = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v99, &v102.__r_.__value_.__l.__data_, &v109.__r_.__value_.__l.__data_, &v112);
  v90 = v101[71];
  v91 = v101[70];
  v92 = 30 * ((v90 - v91) >> 3) - 1;
  if (v90 == v91)
  {
    v92 = 0;
  }

  if (v92 == v101[74] + v101[73])
  {
    sub_C35C4(v101 + 69);
    v91 = v101[70];
    v90 = v101[71];
  }

  if (v90 == v91)
  {
    v73 = 0;
  }

  else
  {
    v93 = v101[74] + v101[73];
    v73 = *(v91 + 8 * (v93 / 0x1E)) + 136 * (v93 % 0x1E);
  }

LABEL_173:
  sub_C398C(v73, &v112);
  ++v67[74];
  if (v121 < 0)
  {
    operator delete(v120);
    if (v119 < 0)
    {
      goto LABEL_183;
    }

LABEL_175:
    if ((v117 & 0x80000000) == 0)
    {
      goto LABEL_176;
    }

LABEL_184:
    operator delete(v116);
    if (v115 < 0)
    {
      goto LABEL_185;
    }

LABEL_177:
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

LABEL_186:
    operator delete(v109.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_187;
  }

  if ((v119 & 0x80000000) == 0)
  {
    goto LABEL_175;
  }

LABEL_183:
  operator delete(v118);
  if (v117 < 0)
  {
    goto LABEL_184;
  }

LABEL_176:
  if ((v115 & 0x80000000) == 0)
  {
    goto LABEL_177;
  }

LABEL_185:
  operator delete(v113);
  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_186;
  }

LABEL_178:
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_187:
    operator delete(v108.__r_.__value_.__l.__data_);
    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_188;
    }

LABEL_180:
    if ((v111[23] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_189:
    v22 = *v111;
LABEL_190:
    operator delete(v22);
    goto LABEL_191;
  }

LABEL_179:
  if ((SHIBYTE(v102.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_188:
  operator delete(v102.__r_.__value_.__l.__data_);
  if ((v111[23] & 0x80000000) != 0)
  {
    goto LABEL_189;
  }

LABEL_191:
  result = 0;
LABEL_192:
  if ((v111[55] & 0x80000000) != 0)
  {
    v94 = result;
    operator delete(*&v111[32]);
    return v94;
  }

  return result;
}

void sub_DD4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_DD8C0(uint64_t a1)
{
  HIBYTE(v122) = 4;
  strcpy(v121, "swap");
  v1 = *(a1 + 135);
  v2 = *(a1 + 120);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = *(a1 + 135);
  }

  if (v2 != 4)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 104);
  v6 = a1 + 112;
  v7 = v1 >> 63;
  do
  {
    if (v7)
    {
      v8 = *v6;
    }

    else
    {
      v8 = v6;
    }

    v9 = __tolower(*(v8 + v4));
    if (v9 != __tolower(*(v121 + v4)))
    {
      return 0;
    }

    ++v4;
    v10 = *(a1 + 135);
    v7 = v10 >> 63;
    if ((v10 & 0x80000000) != 0)
    {
      v10 = *(a1 + 120);
    }
  }

  while (v4 < v10);
  v11 = *(a1 + 24);
  if (*(a1 + 8) != v11)
  {
    *(a1 + 24) = v11 + 40;
    v12 = (v11 + 8);
    v13 = *v11;
    *(a1 + 104) = *v11;
    if (v5 == v11)
    {
      goto LABEL_27;
    }

    v14 = *(v11 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    if ((v14 & 0x80u) == 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *v12;
    }

    if ((v14 & 0x80u) == 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = *(v11 + 16);
    }

    sub_13B38(v6, v16, v17);
    goto LABEL_26;
  }

  v11 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v12 = (a1 + 48);
  v14 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v14 & 0x80) != 0)
  {
    sub_13A68(v6, *v12, *(v11 + 16));
  }

  else
  {
    v15 = *v12;
    *(v6 + 16) = v12[2];
    *v6 = v15;
  }

LABEL_26:
  v13 = *v5;
LABEL_27:
  *(a1 + 136) = *(v11 + 32);
  v112 = v5;
  if (v13 != 40)
  {
    operator new();
  }

  v18 = *(a1 + 24);
  if (*(a1 + 8) == v18)
  {
    v18 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v19 = (a1 + 48);
    v20 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

  *(a1 + 24) = v18 + 40;
  v19 = (v18 + 8);
  *(a1 + 104) = *v18;
  if (v5 == v18)
  {
    goto LABEL_44;
  }

  v20 = *(v18 + 31);
  if (*(a1 + 135) < 0)
  {
LABEL_37:
    if ((v20 & 0x80u) == 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = *v19;
    }

    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = *(v18 + 16);
    }

    sub_13B38(v6, v22, v23);
LABEL_44:
    *(a1 + 136) = *(v18 + 32);
    v116 = 0;
    lpsrc = 0;
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

LABEL_31:
  if ((v20 & 0x80) == 0)
  {
    v21 = *v19;
    *(v6 + 16) = v19[2];
    *v6 = v21;
    *(a1 + 136) = *(v18 + 32);
    v116 = 0;
    lpsrc = 0;
    if (*(a1 + 135) < 0)
    {
      goto LABEL_33;
    }

LABEL_45:
    *v119 = *v6;
    v120 = *(v6 + 16);
    if (*v5 != 8)
    {
LABEL_34:
      operator new();
    }

    goto LABEL_46;
  }

  sub_13A68(v6, *v19, *(v18 + 16));
  *(a1 + 136) = *(v18 + 32);
  v116 = 0;
  lpsrc = 0;
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_33:
  sub_325C(v119, *(a1 + 112), *(a1 + 120));
  if (*v5 != 8)
  {
    goto LABEL_34;
  }

LABEL_46:
  v24 = (a1 + 40);
  if (*(a1 + 8) == *(a1 + 24))
  {
    v25 = (a1 + 40);
  }

  else
  {
    v25 = *(a1 + 24);
  }

  v111 = *v25;
  if (*v25 == 91)
  {
    lpsrc = sub_200930(a1);
    if (lpsrc)
    {
      goto LABEL_213;
    }

    if (v120 >= 0)
    {
      v26 = HIBYTE(v120);
    }

    else
    {
      v26 = v119[1];
    }

    if (v26 + 64 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v26 + 64 > 0x16)
    {
      operator new();
    }

    qmemcpy(v118, "ERR171 - First parameter to swap is an invalid vector element: '", sizeof(v118));
    if (v120 >= 0)
    {
      v34 = v119;
    }

    else
    {
      v34 = v119[0];
    }

    memmove(v119, v34, v26);
    *(v119 + v26) = 0;
    v35 = std::string::append(v118, "'", 1uLL);
    v36 = *&v35->__r_.__value_.__l.__data_;
    *&v118[48] = *(&v35->__r_.__value_.__l + 2);
    *&v118[32] = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    v37 = 24876;
    memset(&v114, 0, sizeof(v114));
    do
    {
      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        v42 = (v114.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v114.__r_.__value_.__l.__size_ == v42)
        {
          if ((v114.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_82:
          operator new();
        }

        size = v114.__r_.__value_.__l.__size_;
        v39 = v114.__r_.__value_.__r.__words[0];
        ++v114.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v114.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_82;
        }

        size = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        *(&v114.__r_.__value_.__s + 23) = (*(&v114.__r_.__value_.__s + 23) + 1) & 0x7F;
        v39 = &v114;
      }

      v40 = v39 + size;
      *v40 = (v37 % 0xA) | 0x30;
      v40[1] = 0;
      v41 = v37 > 9;
      v37 /= 0xAu;
    }

    while (v41);
    v43 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
    v44 = &v114;
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v43 = v114.__r_.__value_.__l.__size_;
      v44 = v114.__r_.__value_.__r.__words[0];
    }

    if (v43)
    {
      v45 = (v44 + v43 - 1);
      if (v45 > v44)
      {
        v46 = &v44->__r_.__value_.__s.__data_[1];
        do
        {
          v47 = *(v46 - 1);
          *(v46 - 1) = v45->__r_.__value_.__s.__data_[0];
          v45->__r_.__value_.__s.__data_[0] = v47;
          v45 = (v45 - 1);
          v48 = v46++ >= v45;
        }

        while (!v48);
      }
    }

    v49 = std::string::insert(&v114, 0, "exprtk.hpp:", 0xBuLL);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v115.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v115.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v112, &v118[32], &v115.__r_.__value_.__l.__data_, v121);
    v51 = *(a1 + 568);
    v52 = *(a1 + 560);
    v53 = 30 * ((v51 - v52) >> 3) - 1;
    if (v51 == v52)
    {
      v53 = 0;
    }

    if (v53 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v52 = *(a1 + 560);
      v51 = *(a1 + 568);
    }

    if (v51 == v52)
    {
      v55 = 0;
    }

    else
    {
      v54 = *(a1 + 592) + *(a1 + 584);
      v55 = *(v52 + 8 * (v54 / 0x1E)) + 136 * (v54 % 0x1E);
    }

LABEL_194:
    sub_C398C(v55, v121);
    ++*(a1 + 592);
    if (v130 < 0)
    {
      operator delete(__p);
      if ((v128 & 0x80000000) == 0)
      {
LABEL_196:
        if ((v126 & 0x80000000) == 0)
        {
          goto LABEL_197;
        }

        goto LABEL_205;
      }
    }

    else if ((v128 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    operator delete(v127);
    if ((v126 & 0x80000000) == 0)
    {
LABEL_197:
      if ((v124 & 0x80000000) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_206;
    }

LABEL_205:
    operator delete(v125);
    if ((v124 & 0x80000000) == 0)
    {
LABEL_198:
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_207;
    }

LABEL_206:
    operator delete(v121[1]);
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_199:
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_208;
    }

LABEL_207:
    operator delete(v115.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_200:
      if ((v118[55] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_209;
    }

LABEL_208:
    operator delete(v114.__r_.__value_.__l.__data_);
    if ((v118[55] & 0x80000000) == 0)
    {
LABEL_201:
      if ((v118[23] & 0x80000000) == 0)
      {
        goto LABEL_222;
      }

LABEL_210:
      operator delete(*v118);
      goto LABEL_222;
    }

LABEL_209:
    operator delete(*&v118[32]);
    if ((v118[23] & 0x80000000) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_210;
  }

  v29 = *(a1 + 440);
  v28 = *(a1 + 448);
  if (v28 == v29)
  {
    goto LABEL_99;
  }

  v30 = 0;
  while (1)
  {
    v31 = *(v29 + 8 * v30);
    if (!v31)
    {
      goto LABEL_60;
    }

    v32 = *(v31 + 8);
    if (!v32)
    {
      goto LABEL_60;
    }

    v33 = HIBYTE(v120);
    if (v120 < 0)
    {
      v33 = v119[1];
    }

    if (!v33)
    {
      goto LABEL_60;
    }

    if ((v32 + 8) != sub_BC284(v32, v119))
    {
      break;
    }

    v29 = *(a1 + 440);
    v28 = *(a1 + 448);
LABEL_60:
    if (++v30 >= ((v28 - v29) >> 3))
    {
      goto LABEL_99;
    }
  }

  lpsrc = sub_202340((a1 + 440), v119);
LABEL_99:
  v56 = *(a1 + 880);
  if (*(a1 + 888) != v56)
  {
    v57 = 0;
    v58 = *(*(a1 + 872) + 656);
    do
    {
      v59 = v56 + 96 * v57;
      if (*(v59 + 40) <= v58)
      {
        v60 = *(v59 + 23);
        v61 = *(v59 + 8);
        if ((v60 & 0x80000000) == 0)
        {
          v61 = *(v59 + 23);
        }

        v62 = HIBYTE(v120);
        if (v120 < 0)
        {
          v62 = v119[1];
        }

        if (v61 == v62)
        {
          if (v61)
          {
            v63 = 0;
            v64 = v60 >> 63;
            while (1)
            {
              v65 = (v64 & 1) != 0 ? *v59 : v59;
              v66 = __tolower(*(v65 + v63));
              v67 = v120 >= 0 ? v119 : v119[0];
              if (v66 != __tolower(*(v67 + v63)))
              {
                break;
              }

              ++v63;
              v68 = *(v59 + 23);
              v64 = v68 >> 63;
              if ((v68 & 0x80000000) != 0)
              {
                v68 = *(v59 + 8);
              }

              if (v63 >= v68)
              {
                goto LABEL_101;
              }
            }
          }

          else
          {
LABEL_101:
            if (*(v59 + 32) == -1)
            {
              goto LABEL_123;
            }
          }
        }
      }

      ++v57;
      v56 = *(a1 + 880);
    }

    while (v57 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - v56) >> 5));
  }

  v59 = a1 + 904;
LABEL_123:
  if (*(v59 + 68) == 1)
  {
    v69 = *(v59 + 23);
    if (v69 >= 0)
    {
      v70 = *(v59 + 23);
    }

    else
    {
      v70 = *(v59 + 8);
    }

    v71 = HIBYTE(v120);
    if (v120 < 0)
    {
      v71 = v119[1];
    }

    if (v70 == v71)
    {
      v72 = v69 >= 0 ? v59 : *v59;
      v73 = v120 >= 0 ? v119 : v119[0];
      if (!memcmp(v72, v73, v70) && *(v59 + 64) == 1)
      {
        lpsrc = *(v59 + 80);
      }
    }
  }

  v24 = (a1 + 40);
  if (*(a1 + 472) == 1)
  {
    if (SHIBYTE(v120) < 0)
    {
      sub_325C(v121, v119[0], v119[1]);
    }

    else
    {
      *v121 = *v119;
      v122 = v120;
    }

    v123 = 1;
    sub_E5D1C(a1 + 480, v121);
    if (SHIBYTE(v122) < 0)
    {
      operator delete(v121[0]);
    }
  }

  if (!lpsrc)
  {
    if (v120 >= 0)
    {
      v76 = HIBYTE(v120);
    }

    else
    {
      v76 = v119[1];
    }

    if (v76 + 58 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v76 + 58 > 0x16)
    {
      operator new();
    }

    qmemcpy(v118, "ERR172 - First parameter to swap is an invalid variable: '", 58);
    if (v120 >= 0)
    {
      v79 = v119;
    }

    else
    {
      v79 = v119[0];
    }

    memmove(&v118[58], v79, v76);
    v118[v76 + 58] = 0;
    v80 = std::string::append(v118, "'", 1uLL);
    v81 = *&v80->__r_.__value_.__l.__data_;
    *&v118[48] = *(&v80->__r_.__value_.__l + 2);
    *&v118[32] = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    v82 = 24909;
    memset(&v114, 0, sizeof(v114));
    do
    {
      if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
      {
        v86 = (v114.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v114.__r_.__value_.__l.__size_ == v86)
        {
          if ((v114.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_171:
          operator new();
        }

        v83 = v114.__r_.__value_.__l.__size_;
        v84 = v114.__r_.__value_.__r.__words[0];
        ++v114.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v114.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_171;
        }

        v83 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
        *(&v114.__r_.__value_.__s + 23) = (*(&v114.__r_.__value_.__s + 23) + 1) & 0x7F;
        v84 = &v114;
      }

      v85 = v84 + v83;
      *v85 = (v82 % 0xA) | 0x30;
      v85[1] = 0;
      v41 = v82 > 9;
      v82 /= 0xAu;
    }

    while (v41);
    v87 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
    v88 = &v114;
    if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v87 = v114.__r_.__value_.__l.__size_;
      v88 = v114.__r_.__value_.__r.__words[0];
    }

    if (v87)
    {
      v89 = (v88 + v87 - 1);
      if (v89 > v88)
      {
        v90 = &v88->__r_.__value_.__s.__data_[1];
        do
        {
          v91 = *(v90 - 1);
          *(v90 - 1) = v89->__r_.__value_.__s.__data_[0];
          v89->__r_.__value_.__s.__data_[0] = v91;
          v89 = (v89 - 1);
          v48 = v90++ >= v89;
        }

        while (!v48);
      }
    }

    v92 = std::string::insert(&v114, 0, "exprtk.hpp:", 0xBuLL);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v115.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v115.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v112, &v118[32], &v115.__r_.__value_.__l.__data_, v121);
    v94 = *(a1 + 568);
    v95 = *(a1 + 560);
    v96 = 30 * ((v94 - v95) >> 3) - 1;
    if (v94 == v95)
    {
      v96 = 0;
    }

    if (v96 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v95 = *(a1 + 560);
      v94 = *(a1 + 568);
    }

    if (v94 == v95)
    {
      v55 = 0;
    }

    else
    {
      v97 = *(a1 + 592) + *(a1 + 584);
      v55 = *(v95 + 8 * (v97 / 0x1E)) + 136 * (v97 % 0x1E);
    }

    goto LABEL_194;
  }

  v74 = *(a1 + 24);
  if (*(a1 + 8) == v74)
  {
    *(a1 + 104) = *(a1 + 40);
    v75 = (a1 + 48);
    v74 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v74 + 40;
    v75 = (v74 + 8);
    *(a1 + 104) = *v74;
    if (v5 == v74)
    {
      goto LABEL_212;
    }
  }

  v77 = *(v74 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v77 >= 0)
    {
      v98 = v75;
    }

    else
    {
      v98 = *v75;
    }

    if (v77 >= 0)
    {
      v99 = *(v74 + 31);
    }

    else
    {
      v99 = *(v74 + 16);
    }

    sub_13B38(v6, v98, v99);
  }

  else if ((*(v74 + 31) & 0x80) != 0)
  {
    sub_13A68(v6, *v75, *(v74 + 16));
  }

  else
  {
    v78 = *v75;
    *(v6 + 16) = v75[2];
    *v6 = v78;
  }

LABEL_212:
  *(a1 + 136) = *(v74 + 32);
LABEL_213:
  if (*v5 != 44)
  {
    operator new();
  }

  v100 = *(a1 + 24);
  if (*(a1 + 8) == v100)
  {
    *(a1 + 104) = *(a1 + 40);
    v101 = (a1 + 48);
    v100 = v24;
  }

  else
  {
    *(a1 + 24) = v100 + 10;
    v101 = (v100 + 2);
    *(a1 + 104) = *v100;
    if (v5 == v100)
    {
      goto LABEL_232;
    }
  }

  v102 = *(v100 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v102 >= 0)
    {
      v104 = v101;
    }

    else
    {
      v104 = *v101;
    }

    if (v102 >= 0)
    {
      v105 = *(v100 + 31);
    }

    else
    {
      v105 = *(v100 + 2);
    }

    sub_13B38(v6, v104, v105);
  }

  else if ((*(v100 + 31) & 0x80) != 0)
  {
    sub_13A68(v6, *v101, *(v100 + 2));
  }

  else
  {
    v103 = *v101;
    *(v6 + 16) = v101[2];
    *v6 = v103;
  }

LABEL_232:
  *(a1 + 136) = *(v100 + 4);
  if (*(a1 + 135) < 0)
  {
    sub_325C(&v118[32], *(a1 + 112), *(a1 + 120));
  }

  else
  {
    *&v118[32] = *v6;
    *&v118[48] = *(v6 + 16);
  }

  if (*v5 != 8)
  {
    sub_3608D0(v118, "ERR174 - Expected a symbol for variable or vector element definition");
    sub_C00FC(0x616Du, &v114);
    sub_23E08("exprtk.hpp:", &v114, &v115);
    sub_C3328(1, v5, v118, &v115.__r_.__value_.__l.__data_, v121);
    sub_C003C(a1, v121);
    sub_C0260(v121);
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_248:
        if ((v118[23] & 0x80000000) == 0)
        {
          goto LABEL_265;
        }

        goto LABEL_267;
      }
    }

    else if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_248;
    }

    operator delete(v114.__r_.__value_.__l.__data_);
    if ((v118[23] & 0x80000000) == 0)
    {
      goto LABEL_265;
    }

LABEL_267:
    operator delete(*v118);
    if (v111 == 91)
    {
      goto LABEL_268;
    }

    goto LABEL_288;
  }

  if (*(a1 + 8) == *(a1 + 24))
  {
    v106 = v24;
  }

  else
  {
    v106 = *(a1 + 24);
  }

  v107 = *v106;
  if (*v106 != 91)
  {
    if (sub_1D3E90((a1 + 440), &v118[32]))
    {
      v116 = sub_202340((a1 + 440), &v118[32]);
    }

    v108 = sub_1D3D4C((a1 + 872), &v118[32], -1);
    v109 = v108;
    if (*(v108 + 68) == 1 && sub_BB4E4(v108, &v118[32]) && *(v109 + 16) == 1)
    {
      v116 = v109[10];
    }

    sub_E5BE0(a1 + 464, &v118[32], 1u);
    if (v116)
    {
      sub_C26B0(a1);
LABEL_258:
      LODWORD(v121[0]) = 41;
      if (sub_C7FD4(a1, v121, 1))
      {
        {
          operator new();
        }

        sub_12D734();
      }

      sub_3608D0(v118, "ERR177 - Expected ')' at end of swap statement");
      sub_C00FC(0x61B7u, &v114);
      sub_23E08("exprtk.hpp:", &v114, &v115);
      sub_C3328(1, v5, v118, &v115.__r_.__value_.__l.__data_, v121);
      sub_C003C(a1, v121);
      sub_C0260(v121);
      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_271:
          if ((v118[23] & 0x80000000) == 0)
          {
            goto LABEL_272;
          }

          goto LABEL_283;
        }
      }

      else if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_271;
      }

      operator delete(v114.__r_.__value_.__l.__data_);
      if ((v118[23] & 0x80000000) == 0)
      {
LABEL_272:
        if (v111 != 91)
        {
          goto LABEL_285;
        }

        goto LABEL_284;
      }

LABEL_283:
      operator delete(*v118);
      if (v111 != 91)
      {
LABEL_285:
        if (v107 != 91)
        {
          goto LABEL_288;
        }

        p_lpsrc = &v116;
        goto LABEL_287;
      }

LABEL_284:
      sub_C9D74(a1 + 432, &lpsrc, 0);
      goto LABEL_285;
    }

    std::operator+<char>();
    sub_30F54("'", &v115, v118);
    sub_C00FC(0x61A4u, &v113);
    sub_23E08("exprtk.hpp:", &v113, &v114);
    sub_C3328(1, v5, v118, &v114.__r_.__value_.__l.__data_, v121);
    sub_C003C(a1, v121);
    sub_C0260(v121);
    if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v114.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_277:
        if ((v118[23] & 0x80000000) == 0)
        {
          goto LABEL_278;
        }

        goto LABEL_297;
      }
    }

    else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_277;
    }

    operator delete(v113.__r_.__value_.__l.__data_);
    if ((v118[23] & 0x80000000) == 0)
    {
LABEL_278:
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_279;
      }

      goto LABEL_298;
    }

LABEL_297:
    operator delete(*v118);
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_279:
      if (v111 != 91)
      {
        goto LABEL_288;
      }

LABEL_299:
      sub_C9D74(a1 + 432, &lpsrc, 0);
      goto LABEL_288;
    }

LABEL_298:
    operator delete(v115.__r_.__value_.__l.__data_);
    if (v111 != 91)
    {
      goto LABEL_288;
    }

    goto LABEL_299;
  }

  v116 = sub_200930(a1);
  if (v116)
  {
    goto LABEL_258;
  }

  std::operator+<char>();
  sub_30F54("'", &v115, v118);
  sub_C00FC(0x617Eu, &v113);
  sub_23E08("exprtk.hpp:", &v113, &v114);
  sub_C3328(1, v5, v118, &v114.__r_.__value_.__l.__data_, v121);
  sub_C003C(a1, v121);
  sub_C0260(v121);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_291;
    }

LABEL_243:
    if ((v118[23] & 0x80000000) == 0)
    {
      goto LABEL_244;
    }

LABEL_292:
    operator delete(*v118);
    if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_265;
    }

LABEL_293:
    operator delete(v115.__r_.__value_.__l.__data_);
    if (v111 != 91)
    {
      goto LABEL_288;
    }

LABEL_268:
    p_lpsrc = &lpsrc;
LABEL_287:
    sub_C9D74(a1 + 432, p_lpsrc, 0);
    goto LABEL_288;
  }

  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_243;
  }

LABEL_291:
  operator delete(v113.__r_.__value_.__l.__data_);
  if ((v118[23] & 0x80000000) != 0)
  {
    goto LABEL_292;
  }

LABEL_244:
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_293;
  }

LABEL_265:
  if (v111 == 91)
  {
    goto LABEL_268;
  }

LABEL_288:
  if ((v118[55] & 0x80000000) != 0)
  {
    operator delete(*&v118[32]);
  }

LABEL_222:
  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119[0]);
  }

  return 0;
}

void sub_DF808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  sub_C0260(&a55);
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
LABEL_3:
    if ((a39 & 0x80000000) == 0)
    {
LABEL_8:
      if (a30 < 0)
      {
        operator delete(a25);
      }

      if (a46 < 0)
      {
        operator delete(a41);
      }

      if (a53 < 0)
      {
        operator delete(a48);
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(a34);
    goto LABEL_8;
  }

  operator delete(a13);
  if ((a39 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_DFB84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = (v2 - v1) >> 3;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  while (!*v1 || !*(*v1 + 8))
  {
    v1 += 8;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_DFBD0(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    sub_325C(&v129, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    v129 = *(a1 + 112);
    v130 = *(a1 + 128);
  }

  v2 = sub_202340((a1 + 440), &v129);
  if (v2)
  {
    v3 = *(a1 + 440);
    if (v3 == *(a1 + 448))
    {
      goto LABEL_90;
    }

    if ((SHIBYTE(v130) & 0x8000000000000000) != 0)
    {
      v4 = *(&v129 + 1);
      if (!*(&v129 + 1) || (*v129 & 0xDFu) - 65 >= 0x1A)
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (!HIBYTE(v130) || (v129 & 0xDF) - 65 >= 0x1A)
      {
        goto LABEL_90;
      }

      v4 = SHIBYTE(v130);
    }

    if (v4 >= 2)
    {
      v30 = v130 >= 0 ? SHIBYTE(v130) : *(&v129 + 1);
      if (v30 >= 2)
      {
        if (v130 >= 0)
        {
          v31 = &v129;
        }

        else
        {
          v31 = v129;
        }

        for (i = 1; v30 != i; ++i)
        {
          v35 = *(v31 + i);
          v36 = (v35 - 48) >= 0xA && (v35 & 0xFFFFFFDF) - 65 >= 0x1A;
          if (v36 && v35 != 95)
          {
            if (SHIBYTE(v130) < 0)
            {
              v34 = *(&v129 + 1);
              if (*(v129 + i) != 46)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v34 = SHIBYTE(v130);
              if (*(&v129 + i) != 46)
              {
                goto LABEL_90;
              }
            }

            if (i >= v34 - 1)
            {
              goto LABEL_90;
            }
          }
        }
      }
    }

    v37 = *(*v3 + 8);
    if ((v37 + 280) == sub_BC168(v37 + 272, &v129))
    {
      v67 = *(a1 + 440);
      if (*(a1 + 448) != v67)
      {
        v68 = 0;
        do
        {
          v69 = *(v67 + 8 * v68);
          if (v69)
          {
            v70 = *(v69 + 8);
            if (v70)
            {
              v71 = HIBYTE(v130);
              if (v130 < 0)
              {
                v71 = *(&v129 + 1);
              }

              if (v71)
              {
                v72 = sub_BC284(v70, &v129);
                if (v70 + 8) != v72 && (v72[7])
                {
                  (*(*v2 + 16))(v2);
                  operator new();
                }
              }
            }
          }

          ++v68;
          v67 = *(a1 + 440);
        }

        while (v68 < (*(a1 + 448) - v67) >> 3);
      }
    }

LABEL_90:
    if (sub_204034(a1, &v129))
    {
      if (*(a1 + 472) != 1)
      {
        goto LABEL_96;
      }

      if (SHIBYTE(v130) < 0)
      {
        sub_325C(__p, v129, *(&v129 + 1));
      }

      else
      {
        *__p = v129;
        v120 = v130;
      }

      v121 = 1;
      sub_E5D1C(a1 + 480, __p);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(__p[0]);
        v38 = *(a1 + 24);
        if (*(a1 + 8) != v38)
        {
LABEL_97:
          *(a1 + 24) = v38 + 40;
          v39 = v38 + 8;
          *(a1 + 104) = *v38;
          if (a1 + 104 == v38)
          {
LABEL_111:
            *(a1 + 136) = *(v38 + 32);
            goto LABEL_216;
          }

          v40 = *(v38 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_99:
            if ((v40 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v39, *(v38 + 16));
            }

            else
            {
              v41 = *v39;
              *(a1 + 128) = *(v39 + 16);
              *(a1 + 112) = v41;
            }

            goto LABEL_111;
          }

LABEL_103:
          if ((v40 & 0x80u) == 0)
          {
            v42 = v39;
          }

          else
          {
            v42 = *v39;
          }

          if ((v40 & 0x80u) == 0)
          {
            v43 = v40;
          }

          else
          {
            v43 = *(v38 + 16);
          }

          sub_13B38(a1 + 112, v42, v43);
          goto LABEL_111;
        }
      }

      else
      {
LABEL_96:
        v38 = *(a1 + 24);
        if (*(a1 + 8) != v38)
        {
          goto LABEL_97;
        }
      }

      v38 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v39 = a1 + 48;
      v40 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_103;
    }

    goto LABEL_215;
  }

  v5 = *(a1 + 880);
  if (v5 != *(a1 + 888))
  {
    v6 = 0;
    v7 = *(*(a1 + 872) + 656);
    do
    {
      v8 = v5 + 96 * v6;
      if (*(v8 + 40) <= v7)
      {
        v9 = *(v8 + 23);
        v10 = *(v8 + 8);
        if ((v9 & 0x80000000) == 0)
        {
          v10 = *(v8 + 23);
        }

        v11 = HIBYTE(v130);
        if (v130 < 0)
        {
          v11 = *(&v129 + 1);
        }

        if (v10 == v11)
        {
          if (v10)
          {
            v12 = 0;
            v13 = v9 >> 63;
            while (1)
            {
              v14 = (v13 & 1) != 0 ? *v8 : v8;
              v15 = __tolower(*(v14 + v12));
              v16 = v130 >= 0 ? &v129 : v129;
              if (v15 != __tolower(*(v16 + v12)))
              {
                break;
              }

              ++v12;
              v17 = *(v8 + 23);
              v13 = v17 >> 63;
              if ((v17 & 0x80000000) != 0)
              {
                v17 = *(v8 + 8);
              }

              if (v12 >= v17)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
LABEL_12:
            if (*(v8 + 32) == -1 && (*(v8 + 68) & 1) != 0)
            {
              v18 = (v8 + 68);
              goto LABEL_37;
            }
          }
        }
      }

      ++v6;
      v5 = *(a1 + 880);
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - v5) >> 5));
    if ((*(a1 + 972) & 1) == 0)
    {
      goto LABEL_58;
    }

    v8 = a1 + 904;
    v18 = (a1 + 972);
LABEL_37:
    v19 = *(v8 + 23);
    v20 = *(v8 + 8);
    if ((v19 & 0x80000000) == 0)
    {
      v20 = *(v8 + 23);
    }

    v21 = HIBYTE(v130);
    if (v130 < 0)
    {
      v21 = *(&v129 + 1);
    }

    if (v20 == v21)
    {
      if (v20)
      {
        v22 = 0;
        v23 = v19 >> 63;
        while (1)
        {
          v24 = (v23 & 1) != 0 ? *v8 : v8;
          v25 = __tolower(*(v24 + v22));
          v26 = v130 >= 0 ? &v129 : v129;
          if (v25 != __tolower(*(v26 + v22)))
          {
            break;
          }

          ++v22;
          v27 = *(v8 + 23);
          v23 = v27 >> 63;
          if ((v27 & 0x80000000) != 0)
          {
            v27 = *(v8 + 8);
          }

          if (v22 >= v27)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
LABEL_54:
        v28 = *(v8 + 64);
        if (v28 == 2)
        {
          v73 = sub_200930(a1);
          goto LABEL_205;
        }

        if (v28 == 1)
        {
          *v18 = 1;
          sub_E5BE0(a1 + 464, &v129, 6u);
          if (sub_204034(a1, &v129))
          {
            sub_C26B0(a1);
            v2 = *(v8 + 80);
            goto LABEL_216;
          }

          goto LABEL_215;
        }
      }
    }
  }

LABEL_58:
  v29 = sub_204658((a1 + 440), &v129);
  if (v29)
  {
    if (*(a1 + 473) == 1)
    {
      if (SHIBYTE(v130) < 0)
      {
        sub_325C(__p, v129, *(&v129 + 1));
      }

      else
      {
        *__p = v129;
        v120 = v130;
      }

      v121 = 5;
      sub_E5D1C(a1 + 480, __p);
      if (SHIBYTE(v120) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = sub_2047CC(a1, v29, &v129);
    if (!v2)
    {
      if (v130 >= 0)
      {
        v45 = HIBYTE(v130);
      }

      else
      {
        v45 = *(&v129 + 1);
      }

      if (v45 + 48 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v45 + 48 > 0x16)
      {
        operator new();
      }

      qmemcpy(v118, "ERR185 - Failed to generate node for function: '", 48);
      if (v130 >= 0)
      {
        v46 = &v129;
      }

      else
      {
        v46 = v129;
      }

      memmove(&v118[48], v46, v45);
      v118[v45 + 48] = 0;
      v47 = std::string::append(v118, "'", 1uLL);
      v48 = *&v47->__r_.__value_.__l.__data_;
      *&v118[48] = *(&v47->__r_.__value_.__l + 2);
      *&v118[32] = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = 25344;
      memset(&v116, 0, sizeof(v116));
      do
      {
        if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
        {
          v54 = (v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v116.__r_.__value_.__l.__size_ == v54)
          {
            if ((v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_138:
            operator new();
          }

          size = v116.__r_.__value_.__l.__size_;
          v51 = v116.__r_.__value_.__r.__words[0];
          ++v116.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v116.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_138;
          }

          size = HIBYTE(v116.__r_.__value_.__r.__words[2]);
          *(&v116.__r_.__value_.__s + 23) = (*(&v116.__r_.__value_.__s + 23) + 1) & 0x7F;
          v51 = &v116;
        }

        v52 = v51 + size;
        *v52 = (v49 % 0xA) | 0x30;
        v52[1] = 0;
        v53 = v49 > 9;
        v49 /= 0xAu;
      }

      while (v53);
      v55 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
      v56 = &v116;
      if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = v116.__r_.__value_.__l.__size_;
        v56 = v116.__r_.__value_.__r.__words[0];
      }

      if (v55)
      {
        v57 = (v56 + v55 - 1);
        if (v57 > v56)
        {
          v58 = &v56->__r_.__value_.__s.__data_[1];
          do
          {
            v59 = *(v58 - 1);
            *(v58 - 1) = v57->__r_.__value_.__s.__data_[0];
            v57->__r_.__value_.__s.__data_[0] = v59;
            v57 = (v57 - 1);
            v36 = v58++ >= v57;
          }

          while (!v36);
        }
      }

      v60 = std::string::insert(&v116, 0, "exprtk.hpp:", 0xBuLL);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v117.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v117.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, a1 + 104, &v118[32], &v117.__r_.__value_.__l.__data_, __p);
      v62 = *(a1 + 568);
      v63 = *(a1 + 560);
      v64 = 30 * ((v62 - v63) >> 3) - 1;
      if (v62 == v63)
      {
        v64 = 0;
      }

      if (v64 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v63 = *(a1 + 560);
        v62 = *(a1 + 568);
      }

      if (v62 == v63)
      {
        v66 = 0;
      }

      else
      {
        v65 = *(a1 + 592) + *(a1 + 584);
        v66 = *(v63 + 8 * (v65 / 0x1E)) + 136 * (v65 % 0x1E);
      }

      goto LABEL_207;
    }

    goto LABEL_216;
  }

  v33 = sub_205324((a1 + 440), &v129);
  if (!v33)
  {
    v44 = sub_2075A0((a1 + 440), &v129);
    if (v44)
    {
      if (*(a1 + 473) == 1)
      {
        if (SHIBYTE(v130) < 0)
        {
          sub_325C(__p, v129, *(&v129 + 1));
        }

        else
        {
          *__p = v129;
          v120 = v130;
        }

        v121 = 5;
        sub_E5D1C(a1 + 480, __p);
        if (SHIBYTE(v120) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v2 = sub_2078E0(a1, v44, &v129);
      if (v2)
      {
        goto LABEL_216;
      }

      std::operator+<char>();
      sub_30F54("'", v118, &v118[32]);
      sub_C00FC(0x6334u, &v116);
      sub_23E08("exprtk.hpp:", &v116, &v117);
      sub_C3328(1, a1 + 104, &v118[32], &v117.__r_.__value_.__l.__data_, __p);
      sub_C003C(a1, __p);
LABEL_242:
      sub_C0260(__p);
      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_223;
      }

LABEL_212:
      if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_213;
      }

      goto LABEL_224;
    }

    if (sub_2000B4((a1 + 440), &v129))
    {
      sub_E5BE0(a1 + 464, &v129, 2u);
      v73 = sub_200930(a1);
LABEL_205:
      v2 = v73;
      goto LABEL_216;
    }

    if (sub_1FC2B8(&v129) && (!*(a1 + 216) || (a1 + 208) == sub_BC284(a1 + 200, &v129) || !sub_209CB8(&v129)))
    {
      std::operator+<char>();
      sub_30F54("'", v118, &v118[32]);
      sub_C00FC(0x6383u, &v116);
      sub_23E08("exprtk.hpp:", &v116, &v117);
      sub_C3328(1, a1 + 104, &v118[32], &v117.__r_.__value_.__l.__data_, __p);
      sub_C003C(a1, __p);
      goto LABEL_242;
    }

    if (*(a1 + 664) != 1 || (v95 = *(a1 + 680)) == 0)
    {
LABEL_235:
      std::operator+<char>();
      sub_30F54("'", v118, &v118[32]);
      sub_C00FC(0x63E2u, &v116);
      sub_23E08("exprtk.hpp:", &v116, &v117);
      sub_C3328(1, a1 + 104, &v118[32], &v117.__r_.__value_.__l.__data_, __p);
      sub_C003C(a1, __p);
      goto LABEL_242;
    }

    if (*(a1 + 195) == 1)
    {
      if (sub_1FC2B8(&v129))
      {
        goto LABEL_235;
      }

      v95 = *(a1 + 680);
    }

    v96 = *(a1 + 440);
    memset(&v118[32], 0, 24);
    v97 = v95[2];
    if (v97 == 1)
    {
      if ((*(*v95 + 24))(v95, &v129, v96, &v118[32]))
      {
        v2 = sub_DFBD0(a1);
        if (v2)
        {
LABEL_291:
          if ((v118[55] & 0x80000000) != 0)
          {
            operator delete(*&v118[32]);
          }

          goto LABEL_216;
        }
      }

      std::operator+<char>();
      sub_30F54("'", &v116, &v117);
      v99 = v118[55];
      if (v118[55] < 0)
      {
        v99 = *&v118[40];
      }

      if (v99)
      {
        std::operator+<char>();
      }

      else
      {
        sub_3608D0(&v111, "");
      }

      if ((v113 & 0x80u) == 0)
      {
        v100 = &v111;
      }

      else
      {
        v100 = v111;
      }

      if ((v113 & 0x80u) == 0)
      {
        v101 = v113;
      }

      else
      {
        v101 = v112;
      }

      v102 = std::string::append(&v117, v100, v101);
      v103 = *&v102->__r_.__value_.__l.__data_;
      *&v118[16] = *(&v102->__r_.__value_.__l + 2);
      *v118 = v103;
      v102->__r_.__value_.__l.__size_ = 0;
      v102->__r_.__value_.__r.__words[2] = 0;
      v102->__r_.__value_.__r.__words[0] = 0;
      sub_C00FC(0x63D7u, &v109);
      sub_23E08("exprtk.hpp:", &v109, &v110);
      sub_C3328(5, a1 + 104, v118, &v110.__r_.__value_.__l.__data_, __p);
      sub_C003C(a1, __p);
LABEL_284:
      sub_C0260(__p);
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_286:
          if ((v118[23] & 0x80000000) == 0)
          {
            goto LABEL_287;
          }

          goto LABEL_295;
        }
      }

      else if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_286;
      }

      operator delete(v109.__r_.__value_.__l.__data_);
      if ((v118[23] & 0x80000000) == 0)
      {
LABEL_287:
        if ((v113 & 0x80000000) == 0)
        {
          goto LABEL_288;
        }

        goto LABEL_296;
      }

LABEL_295:
      operator delete(*v118);
      if ((v113 & 0x80000000) == 0)
      {
LABEL_288:
        if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_289;
        }

        goto LABEL_297;
      }

LABEL_296:
      operator delete(v111);
      if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_289:
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_290:
          v2 = 0;
          goto LABEL_291;
        }

LABEL_298:
        operator delete(v116.__r_.__value_.__l.__data_);
        goto LABEL_290;
      }

LABEL_297:
      operator delete(v117.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_290;
      }

      goto LABEL_298;
    }

    v2 = 0;
    if (v97)
    {
      goto LABEL_291;
    }

    v115 = 0;
    v114 = 0;
    if ((*(*v95 + 16))(v95, &v129, &v114, &v115, &v118[32]))
    {
      if (v114 == 1)
      {
        v98 = sub_209DBC(v96, &v129);
        goto LABEL_266;
      }

      if (v114 == 2)
      {
        v98 = sub_AFB9C(v96, &v129);
LABEL_266:
        if (v98)
        {
          v2 = sub_202340((a1 + 440), &v129);
          if (v2)
          {
            if (sub_203F78((a1 + 440), &v129))
            {
              (*(*v2 + 16))(v2);
              operator new();
            }

            sub_E5BE0(a1 + 464, &v129, 1u);
            if (sub_204034(a1, &v129))
            {
              sub_C26B0(a1);
              goto LABEL_291;
            }

            goto LABEL_290;
          }
        }
      }
    }

    std::operator+<char>();
    sub_30F54("'", &v116, &v117);
    v104 = v118[55];
    if (v118[55] < 0)
    {
      v104 = *&v118[40];
    }

    if (v104)
    {
      std::operator+<char>();
    }

    else
    {
      sub_3608D0(&v111, "");
    }

    if ((v113 & 0x80u) == 0)
    {
      v105 = &v111;
    }

    else
    {
      v105 = v111;
    }

    if ((v113 & 0x80u) == 0)
    {
      v106 = v113;
    }

    else
    {
      v106 = v112;
    }

    v107 = std::string::append(&v117, v105, v106);
    v108 = *&v107->__r_.__value_.__l.__data_;
    *&v118[16] = *(&v107->__r_.__value_.__l + 2);
    *v118 = v108;
    v107->__r_.__value_.__l.__size_ = 0;
    v107->__r_.__value_.__r.__words[2] = 0;
    v107->__r_.__value_.__r.__words[0] = 0;
    sub_C00FC(0x63C3u, &v109);
    sub_23E08("exprtk.hpp:", &v109, &v110);
    sub_C3328(5, a1 + 104, v118, &v110.__r_.__value_.__l.__data_, __p);
    sub_C003C(a1, __p);
    goto LABEL_284;
  }

  if (*(a1 + 473) == 1)
  {
    if (SHIBYTE(v130) < 0)
    {
      sub_325C(__p, v129, *(&v129 + 1));
    }

    else
    {
      *__p = v129;
      v120 = v130;
    }

    v121 = 5;
    sub_E5D1C(a1 + 480, __p);
    if (SHIBYTE(v120) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v2 = sub_205664(a1, v33, &v129);
  if (!v2)
  {
    if (v130 >= 0)
    {
      v74 = HIBYTE(v130);
    }

    else
    {
      v74 = *(&v129 + 1);
    }

    if (v74 + 55 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v74 + 55 > 0x16)
    {
      operator new();
    }

    qmemcpy(v118, "ERR186 - Failed to generate node for vararg function: '", 55);
    if (v130 >= 0)
    {
      v75 = &v129;
    }

    else
    {
      v75 = v129;
    }

    memmove(&v118[55], v75, v74);
    v118[v74 + 55] = 0;
    v76 = std::string::append(v118, "'", 1uLL);
    v77 = *&v76->__r_.__value_.__l.__data_;
    *&v118[48] = *(&v76->__r_.__value_.__l + 2);
    *&v118[32] = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = 25370;
    memset(&v116, 0, sizeof(v116));
    do
    {
      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        v82 = (v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v116.__r_.__value_.__l.__size_ == v82)
        {
          if ((v116.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_189:
          operator new();
        }

        v79 = v116.__r_.__value_.__l.__size_;
        v80 = v116.__r_.__value_.__r.__words[0];
        ++v116.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v116.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_189;
        }

        v79 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
        *(&v116.__r_.__value_.__s + 23) = (*(&v116.__r_.__value_.__s + 23) + 1) & 0x7F;
        v80 = &v116;
      }

      v81 = v80 + v79;
      *v81 = (v78 % 0xA) | 0x30;
      v81[1] = 0;
      v53 = v78 > 9;
      v78 /= 0xAu;
    }

    while (v53);
    v83 = HIBYTE(v116.__r_.__value_.__r.__words[2]);
    v84 = &v116;
    if ((v116.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v83 = v116.__r_.__value_.__l.__size_;
      v84 = v116.__r_.__value_.__r.__words[0];
    }

    if (v83)
    {
      v85 = (v84 + v83 - 1);
      if (v85 > v84)
      {
        v86 = &v84->__r_.__value_.__s.__data_[1];
        do
        {
          v87 = *(v86 - 1);
          *(v86 - 1) = v85->__r_.__value_.__s.__data_[0];
          v85->__r_.__value_.__s.__data_[0] = v87;
          v85 = (v85 - 1);
          v36 = v86++ >= v85;
        }

        while (!v36);
      }
    }

    v88 = std::string::insert(&v116, 0, "exprtk.hpp:", 0xBuLL);
    v89 = *&v88->__r_.__value_.__l.__data_;
    v117.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
    *&v117.__r_.__value_.__l.__data_ = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, a1 + 104, &v118[32], &v117.__r_.__value_.__l.__data_, __p);
    v90 = *(a1 + 568);
    v91 = *(a1 + 560);
    v92 = 30 * ((v90 - v91) >> 3) - 1;
    if (v90 == v91)
    {
      v92 = 0;
    }

    if (v92 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v91 = *(a1 + 560);
      v90 = *(a1 + 568);
    }

    if (v90 == v91)
    {
      v66 = 0;
    }

    else
    {
      v93 = *(a1 + 592) + *(a1 + 584);
      v66 = *(v91 + 8 * (v93 / 0x1E)) + 136 * (v93 % 0x1E);
    }

LABEL_207:
    sub_C398C(v66, __p);
    ++*(a1 + 592);
    if (v128 < 0)
    {
      operator delete(v127);
      if ((v126 & 0x80000000) == 0)
      {
LABEL_209:
        if ((v124 & 0x80000000) == 0)
        {
          goto LABEL_210;
        }

        goto LABEL_221;
      }
    }

    else if ((v126 & 0x80000000) == 0)
    {
      goto LABEL_209;
    }

    operator delete(v125);
    if ((v124 & 0x80000000) == 0)
    {
LABEL_210:
      if ((v122 & 0x80000000) == 0)
      {
        goto LABEL_211;
      }

LABEL_222:
      operator delete(__p[1]);
      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_223;
      }

      goto LABEL_212;
    }

LABEL_221:
    operator delete(v123);
    if ((v122 & 0x80000000) == 0)
    {
LABEL_211:
      if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_212;
      }

LABEL_223:
      operator delete(v117.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_213:
        if ((v118[55] & 0x80000000) == 0)
        {
          goto LABEL_214;
        }

        goto LABEL_225;
      }

LABEL_224:
      operator delete(v116.__r_.__value_.__l.__data_);
      if ((v118[55] & 0x80000000) == 0)
      {
LABEL_214:
        if ((v118[23] & 0x80000000) == 0)
        {
LABEL_215:
          v2 = 0;
          goto LABEL_216;
        }

LABEL_226:
        operator delete(*v118);
        goto LABEL_215;
      }

LABEL_225:
      operator delete(*&v118[32]);
      if ((v118[23] & 0x80000000) == 0)
      {
        goto LABEL_215;
      }

      goto LABEL_226;
    }

    goto LABEL_222;
  }

LABEL_216:
  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129);
  }

  return v2;
}

void sub_E111C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (*(v63 - 105) < 0)
  {
    operator delete(*(v63 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E14E0(std::string::size_type a1, const void **a2)
{
  v4 = *(a1 + 104);
  v130 = (a1 + 104);
  if (v4 != 40)
  {
    if (v4 == 123)
    {
      v5 = *(a1 + 24);
      if (*(a1 + 8) == v5)
      {
        v5 = a1 + 40;
        *(a1 + 104) = *(a1 + 40);
        v6 = a1 + 48;
        v8 = *(a1 + 71);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_6:
          if ((v8 & 0x80) != 0)
          {
            sub_13A68((a1 + 112), *v6, *(v5 + 16));
          }

          else
          {
            v9 = *v6;
            *(a1 + 128) = *(v6 + 16);
            *(a1 + 112) = v9;
          }

LABEL_96:
          v7 = *v130;
          goto LABEL_97;
        }
      }

      else
      {
        *(a1 + 24) = v5 + 40;
        v6 = v5 + 8;
        v7 = *v5;
        *(a1 + 104) = *v5;
        if (v130 == v5)
        {
LABEL_97:
          *(a1 + 136) = *(v5 + 32);
          if (v7 == 125)
          {
            v49 = *(a1 + 24);
            if (*(a1 + 8) == v49)
            {
              v49 = a1 + 40;
              *(a1 + 104) = *(a1 + 40);
              v50 = a1 + 48;
              v51 = *(a1 + 71);
              if ((*(a1 + 135) & 0x80000000) == 0)
              {
LABEL_101:
                if ((v51 & 0x80) != 0)
                {
                  sub_13A68((a1 + 112), *v50, *(v49 + 16));
                }

                else
                {
                  v52 = *v50;
                  *(a1 + 128) = *(v50 + 16);
                  *(a1 + 112) = v52;
                }

                goto LABEL_219;
              }
            }

            else
            {
              *(a1 + 24) = v49 + 40;
              v50 = v49 + 8;
              *(a1 + 104) = *v49;
              if (v130 == v49)
              {
                goto LABEL_219;
              }

              v51 = *(v49 + 31);
              if ((*(a1 + 135) & 0x80000000) == 0)
              {
                goto LABEL_101;
              }
            }

            if ((v51 & 0x80u) == 0)
            {
              v55 = v50;
            }

            else
            {
              v55 = *v50;
            }

            if ((v51 & 0x80u) == 0)
            {
              v56 = v51;
            }

            else
            {
              v56 = *(v49 + 16);
            }

            sub_13B38(a1 + 112, v55, v56);
LABEL_219:
            *(a1 + 136) = *(v49 + 32);
            operator new();
          }

          v128 = a2;
          v53 = 125;
          v54 = 6;
          goto LABEL_114;
        }

        v8 = *(v5 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      if ((v8 & 0x80u) == 0)
      {
        v19 = v6;
      }

      else
      {
        v19 = *v6;
      }

      if ((v8 & 0x80u) == 0)
      {
        v20 = v8;
      }

      else
      {
        v20 = *(v5 + 16);
      }

      sub_13B38(a1 + 112, v19, v20);
      goto LABEL_96;
    }

    sub_E4A98(125, &v138);
    v14 = std::string::insert(&v138, 0, "ERR094 - Expected '", 0x13uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v139.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v139.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v139, "' for call to multi-sequence", 0x1CuLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v140.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v140.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    if (v18)
    {
      if (v18 + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v18 + 12 > 0x16)
      {
        operator new();
      }

      memset(&v137, 0, sizeof(v137));
      *(&v137.__r_.__value_.__s + 23) = v18 + 12;
      LODWORD(v137.__r_.__value_.__r.__words[1]) = 543584032;
      v137.__r_.__value_.__r.__words[0] = *" section of ";
      if (*(a2 + 23) >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      memmove(&v137.__r_.__value_.__r.__words[1] + 4, v24, v18);
      *(&v137.__r_.__value_.__r.__words[1] + v18 + 4) = 0;
      v23 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = 0;
      *(&v137.__r_.__value_.__s + 23) = 0;
      v137.__r_.__value_.__s.__data_[0] = 0;
    }

    if ((v23 & 0x80u) == 0)
    {
      v25 = &v137;
    }

    else
    {
      v25 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      size = v23;
    }

    else
    {
      size = v137.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v140, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v142 = v27->__r_.__value_.__r.__words[2];
    v141 = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = 22768;
    memset(&v135, 0, sizeof(v135));
    do
    {
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        v34 = (v135.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v135.__r_.__value_.__l.__size_ == v34)
        {
          if ((v135.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_56:
          operator new();
        }

        v30 = v135.__r_.__value_.__l.__size_;
        v31 = v135.__r_.__value_.__r.__words[0];
        ++v135.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v135.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_56;
        }

        v30 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
        *(&v135.__r_.__value_.__s + 23) = (*(&v135.__r_.__value_.__s + 23) + 1) & 0x7F;
        v31 = &v135;
      }

      v32 = v31 + v30;
      *v32 = (v29 % 0xA) | 0x30;
      v32[1] = 0;
      v33 = v29 > 9;
      v29 /= 0xAu;
    }

    while (v33);
    v35 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
    v36 = &v135;
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v135.__r_.__value_.__l.__size_;
      v36 = v135.__r_.__value_.__r.__words[0];
    }

    if (v35)
    {
      v37 = (v36 + v35 - 1);
      if (v37 > v36)
      {
        v38 = &v36->__r_.__value_.__s.__data_[1];
        do
        {
          v39 = *(v38 - 1);
          *(v38 - 1) = v37->__r_.__value_.__s.__data_[0];
          v37->__r_.__value_.__s.__data_[0] = v39;
          v37 = (v37 - 1);
          v40 = v38++ >= v37;
        }

        while (!v40);
      }
    }

    v41 = std::string::insert(&v135, 0, "exprtk.hpp:", 0xBuLL);
    v42 = *&v41->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v130, &v141, &__p.__r_.__value_.__l.__data_, v143);
    v43 = *(a1 + 568);
    v44 = *(a1 + 560);
    v45 = 30 * ((v43 - v44) >> 3) - 1;
    if (v43 == v44)
    {
      v45 = 0;
    }

    if (v45 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v44 = *(a1 + 560);
      v43 = *(a1 + 568);
    }

    if (v43 == v44)
    {
      v47 = 0;
    }

    else
    {
      v46 = *(a1 + 592) + *(a1 + 584);
      v47 = *(v44 + 8 * (v46 / 0x1E)) + 136 * (v46 % 0x1E);
    }

    sub_C398C(v47, v143);
    ++*(a1 + 592);
    if (v151 < 0)
    {
      operator delete(v150);
      if ((v149 & 0x80000000) == 0)
      {
LABEL_74:
        if ((v147 & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_86;
      }
    }

    else if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    operator delete(v148);
    if ((v147 & 0x80000000) == 0)
    {
LABEL_75:
      if ((v145 & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_87;
    }

LABEL_86:
    operator delete(v146);
    if ((v145 & 0x80000000) == 0)
    {
LABEL_76:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_88;
    }

LABEL_87:
    operator delete(v144);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_77:
      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_89;
    }

LABEL_88:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_78:
      if ((SHIBYTE(v142) & 0x80000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_90;
    }

LABEL_89:
    operator delete(v135.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v142) & 0x80000000) == 0)
    {
LABEL_79:
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_91;
    }

LABEL_90:
    operator delete(v141);
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_80:
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_92;
    }

LABEL_91:
    operator delete(v137.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_93;
    }

LABEL_92:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_82:
      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_94:
      operator delete(v138.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_93:
    operator delete(v139.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_94;
  }

  v10 = *(a1 + 24);
  if (*(a1 + 8) == v10)
  {
    v10 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v11 = a1 + 48;
    v12 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_11:
      if ((v12 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v11, *(v10 + 16));
      }

      else
      {
        v13 = *v11;
        *(a1 + 128) = *(v11 + 16);
        *(a1 + 112) = v13;
      }

      goto LABEL_113;
    }

LABEL_29:
    if ((v12 & 0x80u) == 0)
    {
      v21 = v11;
    }

    else
    {
      v21 = *v11;
    }

    if ((v12 & 0x80u) == 0)
    {
      v22 = v12;
    }

    else
    {
      v22 = *(v10 + 16);
    }

    sub_13B38(a1 + 112, v21, v22);
    goto LABEL_113;
  }

  *(a1 + 24) = v10 + 40;
  v11 = v10 + 8;
  *(a1 + 104) = *v10;
  if (v130 != v10)
  {
    v12 = *(v10 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_113:
  v128 = a2;
  *(a1 + 136) = *(v10 + 32);
  v53 = 41;
  v54 = 44;
LABEL_114:
  v141 = 0uLL;
  v142 = 0;
  memset(&v140, 0, sizeof(v140));
  v139.__r_.__value_.__s.__data_[0] = 1;
  v139.__r_.__value_.__l.__size_ = a1;
  v139.__r_.__value_.__r.__words[2] = &v141;
  v134 = a1;
  ++*(a1 + 656);
  v57 = a1 + 40;
  v58 = (a1 + 48);
  v129 = *(a1 + 651);
  do
  {
    while (1)
    {
      *(a1 + 651) = 0;
      v60 = sub_C5A5C(a1, 0);
      if (!v60)
      {
        v48 = 0;
        goto LABEL_244;
      }

      v61 = *(&v141 + 1);
      if (*(&v141 + 1) >= v142)
      {
        v63 = v141;
        v64 = *(&v141 + 1) - v141;
        v65 = (*(&v141 + 1) - v141) >> 3;
        v66 = v65 + 1;
        if ((v65 + 1) >> 61)
        {
          sub_1794();
        }

        v67 = v142 - v141;
        if ((v142 - v141) >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          if (!(v68 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v69 = (8 * v65);
        v70 = &v69[-((*(&v141 + 1) - v141) >> 3)];
        *v69 = v60;
        v62 = v69 + 1;
        memcpy(v70, v63, v64);
        *&v141 = v70;
        *(&v141 + 1) = v62;
        v142 = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        **(&v141 + 1) = v60;
        v62 = (v61 + 8);
      }

      *(&v141 + 1) = v62;
      v71 = v140.__r_.__value_.__l.__size_;
      if (v140.__r_.__value_.__l.__size_ == v140.__r_.__value_.__r.__words[2] << 6)
      {
        if ((v140.__r_.__value_.__l.__size_ + 1) < 0)
        {
          sub_1794();
        }

        if (v140.__r_.__value_.__l.__size_ > 0x3FFFFFFFFFFFFFFELL)
        {
          v72 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v140.__r_.__value_.__r.__words[2] << 7 <= (v140.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v72 = (v140.__r_.__value_.__l.__size_ & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        else
        {
          v72 = v140.__r_.__value_.__r.__words[2] << 7;
        }

        sub_3D41C(&v140, v72);
        v71 = v140.__r_.__value_.__l.__size_;
      }

      v140.__r_.__value_.__l.__size_ = v71 + 1;
      v73 = v71 >> 6;
      v74 = 1 << v71;
      if (*(a1 + 651) != 1)
      {
        *(v140.__r_.__value_.__r.__words[0] + 8 * v73) &= ~v74;
        v75 = *(a1 + 104);
        v76 = *(a1 + 8);
        v77 = *(a1 + 24);
        if (v75 != v53)
        {
          goto LABEL_146;
        }

LABEL_168:
        if (v76 == v77)
        {
          *v130 = *v57;
          v85 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_171;
          }
        }

        else
        {
          *(a1 + 24) = v77 + 40;
          v58 = (v77 + 8);
          *(a1 + 104) = *v77;
          v57 = v77;
          if (v130 == v77)
          {
            goto LABEL_243;
          }

          v85 = *(v77 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_171:
            if ((v85 & 0x80) != 0)
            {
              goto LABEL_242;
            }

            goto LABEL_172;
          }
        }

        if ((v85 & 0x80u) == 0)
        {
          v113 = v58;
        }

        else
        {
          v113 = *v58;
        }

        if ((v85 & 0x80u) == 0)
        {
          v114 = v85;
        }

        else
        {
          v114 = *(v57 + 16);
        }

        goto LABEL_210;
      }

      *(v140.__r_.__value_.__r.__words[0] + 8 * v73) |= v74;
      v75 = *(a1 + 104);
      v76 = *(a1 + 8);
      v77 = *(a1 + 24);
      if (v75 == v53)
      {
        goto LABEL_168;
      }

LABEL_146:
      if (v75 == v54)
      {
        break;
      }

      if (v76 == v77)
      {
        v59 = (a1 + 40);
      }

      else
      {
        v59 = v77;
      }

      if (*v59 == v53)
      {
        sub_C00FC(v54, &v135);
        v87 = std::string::insert(&v135, 0, "ERR095 - Expected '", 0x13uLL);
        v88 = *&v87->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v88;
        v87->__r_.__value_.__l.__size_ = 0;
        v87->__r_.__value_.__r.__words[2] = 0;
        v87->__r_.__value_.__r.__words[0] = 0;
        v89 = std::string::append(&__p, "' for call to multi-sequence section of ", 0x28uLL);
        v90 = *&v89->__r_.__value_.__l.__data_;
        v137.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v137.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = *(v128 + 23);
        if (v91 >= 0)
        {
          v92 = v128;
        }

        else
        {
          v92 = *v128;
        }

        if (v91 >= 0)
        {
          v93 = *(v128 + 23);
        }

        else
        {
          v93 = v128[1];
        }

        v94 = std::string::append(&v137, v92, v93);
        v95 = *&v94->__r_.__value_.__l.__data_;
        v138.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
        *&v138.__r_.__value_.__l.__data_ = v95;
        v94->__r_.__value_.__l.__size_ = 0;
        v94->__r_.__value_.__r.__words[2] = 0;
        v94->__r_.__value_.__r.__words[0] = 0;
        v96 = 22814;
        memset(&v131, 0, sizeof(v131));
        do
        {
          if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
          {
            v100 = (v131.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v131.__r_.__value_.__l.__size_ == v100)
            {
              if ((v131.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
                sub_3244();
              }

LABEL_188:
              operator new();
            }

            v97 = v131.__r_.__value_.__l.__size_;
            v98 = v131.__r_.__value_.__r.__words[0];
            ++v131.__r_.__value_.__l.__size_;
          }

          else
          {
            if (HIBYTE(v131.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_188;
            }

            v97 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
            *(&v131.__r_.__value_.__s + 23) = (*(&v131.__r_.__value_.__s + 23) + 1) & 0x7F;
            v98 = &v131;
          }

          v99 = v98 + v97;
          *v99 = (v96 % 0xA) | 0x30;
          v99[1] = 0;
          v33 = v96 > 9;
          v96 /= 0xAu;
        }

        while (v33);
        v101 = HIBYTE(v131.__r_.__value_.__r.__words[2]);
        v102 = &v131;
        if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v101 = v131.__r_.__value_.__l.__size_;
          v102 = v131.__r_.__value_.__r.__words[0];
        }

        if (v101)
        {
          v103 = (v102 + v101 - 1);
          if (v103 > v102)
          {
            v104 = &v102->__r_.__value_.__s.__data_[1];
            do
            {
              v105 = *(v104 - 1);
              *(v104 - 1) = v103->__r_.__value_.__s.__data_[0];
              v103->__r_.__value_.__s.__data_[0] = v105;
              v103 = (v103 - 1);
              v40 = v104++ >= v103;
            }

            while (!v40);
          }
        }

        v106 = std::string::insert(&v131, 0, "exprtk.hpp:", 0xBuLL);
        v107 = *&v106->__r_.__value_.__l.__data_;
        v133 = v106->__r_.__value_.__r.__words[2];
        *v132 = v107;
        v106->__r_.__value_.__l.__size_ = 0;
        v106->__r_.__value_.__r.__words[2] = 0;
        v106->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v130, &v138.__r_.__value_.__l.__data_, v132, v143);
        v108 = *(a1 + 568);
        v109 = *(a1 + 560);
        v110 = 30 * ((v108 - v109) >> 3) - 1;
        if (v108 == v109)
        {
          v110 = 0;
        }

        if (v110 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v109 = *(a1 + 560);
          v108 = *(a1 + 568);
        }

        if (v108 == v109)
        {
          v112 = 0;
        }

        else
        {
          v111 = *(a1 + 592) + *(a1 + 584);
          v112 = *(v109 + 8 * (v111 / 0x1E)) + 136 * (v111 % 0x1E);
        }

        sub_C398C(v112, v143);
        ++*(a1 + 592);
        if (v151 < 0)
        {
          operator delete(v150);
          if (v149 < 0)
          {
            goto LABEL_233;
          }

LABEL_223:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_224;
          }

LABEL_234:
          operator delete(v146);
          if (v145 < 0)
          {
            goto LABEL_235;
          }

LABEL_225:
          if ((SHIBYTE(v133) & 0x80000000) == 0)
          {
            goto LABEL_226;
          }

LABEL_236:
          operator delete(v132[0]);
          if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_237;
          }

LABEL_227:
          if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_228;
          }

LABEL_238:
          operator delete(v138.__r_.__value_.__l.__data_);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_239;
          }

LABEL_229:
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_230;
          }

LABEL_240:
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_231:
            v48 = 0;
            v115 = v134;
            goto LABEL_245;
          }
        }

        else
        {
          if ((v149 & 0x80000000) == 0)
          {
            goto LABEL_223;
          }

LABEL_233:
          operator delete(v148);
          if (v147 < 0)
          {
            goto LABEL_234;
          }

LABEL_224:
          if ((v145 & 0x80000000) == 0)
          {
            goto LABEL_225;
          }

LABEL_235:
          operator delete(v144);
          if (SHIBYTE(v133) < 0)
          {
            goto LABEL_236;
          }

LABEL_226:
          if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_227;
          }

LABEL_237:
          operator delete(v131.__r_.__value_.__l.__data_);
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_238;
          }

LABEL_228:
          if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_229;
          }

LABEL_239:
          operator delete(v137.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_240;
          }

LABEL_230:
          if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_231;
          }
        }

        operator delete(v135.__r_.__value_.__l.__data_);
        goto LABEL_231;
      }

      if (v75 == v53)
      {
        goto LABEL_162;
      }
    }

    if (v76 == v77)
    {
      *v130 = *v57;
      v78 = a1 + 48;
      v77 = a1 + 40;
      v79 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_150;
      }
    }

    else
    {
      *(a1 + 24) = v77 + 40;
      v78 = v77 + 8;
      *(a1 + 104) = *v77;
      if (v130 == v77)
      {
        goto LABEL_161;
      }

      v79 = *(v77 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_150:
        if ((v79 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v78, *(v77 + 16));
        }

        else
        {
          v80 = *v78;
          *(a1 + 128) = *(v78 + 16);
          *(a1 + 112) = v80;
        }

        goto LABEL_161;
      }
    }

    if ((v79 & 0x80u) == 0)
    {
      v81 = v78;
    }

    else
    {
      v81 = *v78;
    }

    if ((v79 & 0x80u) == 0)
    {
      v82 = v79;
    }

    else
    {
      v82 = *(v77 + 16);
    }

    sub_13B38(a1 + 112, v81, v82);
LABEL_161:
    *(a1 + 136) = *(v77 + 32);
  }

  while (*(a1 + 104) != v53);
LABEL_162:
  v83 = *(a1 + 24);
  if (*(a1 + 8) == v83)
  {
    *v130 = *v57;
    v84 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_165;
    }
  }

  else
  {
    *(a1 + 24) = v83 + 40;
    v58 = (v83 + 8);
    *(a1 + 104) = *v83;
    v57 = v83;
    if (v130 == v83)
    {
      goto LABEL_243;
    }

    v84 = *(v83 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_165:
      if ((v84 & 0x80) != 0)
      {
LABEL_242:
        sub_13A68((a1 + 112), *v58, *(v57 + 16));
        goto LABEL_243;
      }

LABEL_172:
      v86 = *v58;
      *(a1 + 128) = v58[2];
      *(a1 + 112) = v86;
      goto LABEL_243;
    }
  }

  if ((v84 & 0x80u) == 0)
  {
    v113 = v58;
  }

  else
  {
    v113 = *v58;
  }

  if ((v84 & 0x80u) == 0)
  {
    v114 = v84;
  }

  else
  {
    v114 = *(v57 + 16);
  }

LABEL_210:
  sub_13B38(a1 + 112, v113, v114);
LABEL_243:
  *(a1 + 136) = *(v57 + 32);
  v48 = sub_C80D0(a1, &v141, &v140);
  v139.__r_.__value_.__s.__data_[0] = v48 == 0;
LABEL_244:
  v115 = a1;
LABEL_245:
  *(a1 + 651) = (*(a1 + 651) | v129) & 1;
  v116 = v115[110];
  v117 = v115[82];
  v118 = v115[111] - v116;
  if (v118)
  {
    v119 = 0xAAAAAAAAAAAAAAABLL * (v118 >> 5);
    if (v119 <= 1)
    {
      v119 = 1;
    }

    v120 = (v116 + 68);
    do
    {
      if (*v120 == 1 && *(v120 - 28) >= v117)
      {
        *v120 = 0;
      }

      v120 += 96;
      --v119;
    }

    while (v119);
  }

  v115[82] = v117 - 1;
  if (v139.__r_.__value_.__s.__data_[0] == 1)
  {
    v121 = v139.__r_.__value_.__r.__words[2];
    v122 = *v139.__r_.__value_.__r.__words[2];
    if (*v139.__r_.__value_.__r.__words[2] != *(v139.__r_.__value_.__r.__words[2] + 8))
    {
      v123 = 0;
      while (1)
      {
        v124 = *(v122 + 8 * v123);
        if (!v124 || (*(*v124 + 32))(v124) == 17)
        {
          goto LABEL_257;
        }

        v125 = *(v122 + 8 * v123);
        if (v125)
        {
          if ((*(*v125 + 32))(v125) == 18)
          {
            goto LABEL_257;
          }

          v126 = *(v122 + 8 * v123);
          if (v126)
          {
            (*(*v126 + 8))(v126);
          }
        }

        *(v122 + 8 * v123) = 0;
LABEL_257:
        ++v123;
        v122 = *v121;
        if (v123 >= (v121[1] - *v121) >> 3)
        {
          v121[1] = v122;
          break;
        }
      }
    }
  }

  if (v140.__r_.__value_.__r.__words[0])
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  if (v141)
  {
    *(&v141 + 1) = v141;
    operator delete(v141);
  }

  return v48;
}