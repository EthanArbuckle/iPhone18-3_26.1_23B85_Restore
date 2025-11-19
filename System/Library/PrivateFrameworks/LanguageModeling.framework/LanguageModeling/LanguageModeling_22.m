uint64_t sub_1AE744570(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE74463C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_1AE7447C4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void sub_1AE744958(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v12 = *(a2 + 2);
  }

  sub_1AE744AD4(a1, &__dst);
  sub_1AE744CC4(a1, &__dst);
  if (SHIBYTE(v12) < 0)
  {
    sub_1AE5DBF1C(v8, __dst, *(&__dst + 1));
  }

  else
  {
    *v8 = __dst;
    v9 = v12;
  }

  v10 = 0;
  sub_1AE5CA7E0(__p, v8);
  v7 = v10;
  sub_1AE745280(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v12) & 0x80000000) == 0)
      {
        return;
      }

LABEL_13:
      operator delete(__dst);
      return;
    }
  }

  else if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v8[0]);
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_13;
  }
}

void sub_1AE744A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 - 25) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v21 - 48));
  _Unwind_Resume(exception_object);
}

void sub_1AE744AD4(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 360) == 1 && !sub_1AE70D964((a1 + 432), a2))
  {
    v4 = *(a2 + 23);
    if ((v4 & 0x8000000000000000) != 0)
    {
      v4 = *(a2 + 8);
      if (v4 <= 2)
      {
        return;
      }

      v5 = *a2;
      if (*(*a2 + v4 - 2) != 29479)
      {
        return;
      }
    }

    else
    {
      if (v4 <= 2 || *(a2 + v4 - 2) != 29479)
      {
        return;
      }

      v5 = a2;
    }

    if (v4 >= v4 - 2)
    {
      v6 = v4 - 2;
    }

    else
    {
      v6 = v4;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v6;
    memmove(&__p, v5, v6);
    __p.__r_.__value_.__s.__data_[v6] = 0;
    if ((*(a1 + 360) & 1) == 0)
    {
      sub_1AE64BF84();
    }

    v7 = *(a1 + 359);
    if (v7 >= 0)
    {
      v8 = (a1 + 336);
    }

    else
    {
      v8 = *(a1 + 336);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 359);
    }

    else
    {
      v9 = *(a1 + 344);
    }

    v10 = std::string::append(&__p, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[0];
    v15[0] = v10->__r_.__value_.__l.__size_;
    *(v15 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v13 = v15[0];
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 15) = *(v15 + 7);
    *(a2 + 23) = v12;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1AE744CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE744CC4(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a1 + 328) == 2)
  {
    v4 = *(a1 + 391);
    v5 = *(a1 + 368);
    v38 = (a1 + 368);
    if (v4 >= 0)
    {
      v5 = (a1 + 368);
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 391);
    }

    else
    {
      v6 = *(a1 + 376);
    }

    v7 = &v5[v6];
    v8 = *(a2 + 23);
    v9 = *a2;
    if (v8 >= 0)
    {
      v9 = a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = &v9[v10];
    if (v10)
    {
      if (v6)
      {
        v12 = v6 - 1;
        v13 = v10 - 1;
        v14 = v9;
        while (1)
        {
          v15 = v11;
          v16 = v5;
          if (v14 != v11)
          {
            v17 = v13;
            v18 = v12;
            v16 = v5;
            v15 = v14;
            do
            {
              if (*v15 != *v16)
              {
                break;
              }

              ++v15;
              ++v16;
              if (!v17)
              {
                break;
              }

              v19 = v18--;
              --v17;
            }

            while (v19);
          }

          if (v16 == v7)
          {
            break;
          }

          ++v14;
          --v13;
          if (v14 == v11)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        v15 = v11;
        v14 = v11;
      }

      v22 = v15 == v11 && v14 == v11 && v15 == v9;
    }

    else
    {
      v22 = 0;
      v14 = v9;
      v15 = v9;
    }

    *&v54 = off_1F2430DB8 + 1;
    *(&v54 + 1) = v5;
    v55 = v7;
    v56 = v9;
    v57 = v14;
    v58 = v15;
    v59 = v11;
    v60 = v22;
    v50 = 0;
    *&v51[24] = 0u;
    v52 = 0u;
    v53 = 1;
    v47 = off_1F2430DB8 + 1;
    v48[0] = v5;
    v48[1] = v7;
    v48[3] = v9;
    v48[4] = v14;
    v48[5] = v15;
    v48[6] = v11;
    v49 = v22;
    v43 = 0;
    v45 = 0u;
    *&v44[24] = 0u;
    v46 = 1;
    sub_1AE743654(&v42, &v47, &v43);
    if (v43)
    {
      if ((v43 & 1) == 0 && *v43)
      {
        (*v43)(v44, v44, 2);
      }

      v43 = 0;
    }

    if (v47)
    {
      if ((v47 & 1) == 0 && *v47)
      {
        (*v47)(v48, v48, 2);
      }

      v47 = 0;
    }

    v23 = v42;
    v41 = v42;
    if (v50 && (v50 & 1) == 0 && *v50)
    {
      v39 = v42;
      (*v50)(v51, v51, 2);
      v23 = v39;
    }

    if (v54 && (v54 & 1) == 0 && *v54)
    {
      v40 = v23;
      (*v54)(&v54 + 8, &v54 + 8, 2);
      v23 = v40;
    }

    v24 = *(&v23 + 1);
    v25 = v23;
    if (*(&v23 + 1) - v23 == 24)
    {
      sub_1AE745C0C(a1, a2);
      if (!v25)
      {
        return;
      }

      goto LABEL_96;
    }

    v37 = a2;
    v26 = 0;
    v27 = 0;
    do
    {
      sub_1AE745C0C(a1, &v25[v26]);
      v25 = v41;
      v28 = (v41 + v26 * 8);
      size = *(v41 + v26 * 8 + 23);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v28->__r_.__value_.__l.__size_;
      }

      if (*(a1 + 391) >= 0)
      {
        v30 = *(a1 + 391);
      }

      else
      {
        v30 = *(a1 + 376);
      }

      if (size)
      {
        v31 = v30 + 1;
      }

      else
      {
        v31 = v30;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AE5DB4F0();
      }

      if (v31 > 0x16)
      {
        operator new();
      }

      v55 = 0;
      v54 = 0uLL;
      HIBYTE(v55) = v31;
      if (size)
      {
        memcpy(&v54, " ", size != 0);
      }

      if (v30)
      {
        if (*(a1 + 391) >= 0)
        {
          v32 = v38;
        }

        else
        {
          v32 = *(a1 + 368);
        }

        memmove(&v54 + (size != 0), v32, v30);
      }

      *(&v54 + (size != 0) + v30) = 0;
      if (SHIBYTE(v55) >= 0)
      {
        v33 = &v54;
      }

      else
      {
        v33 = v54;
      }

      if (SHIBYTE(v55) >= 0)
      {
        v34 = HIBYTE(v55);
      }

      else
      {
        v34 = *(&v54 + 1);
      }

      std::string::append(v28, v33, v34);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(v54);
      }

      ++v27;
      v24 = *(&v41 + 1);
      v26 += 3;
    }

    while (-1 - 0x5555555555555555 * ((*(&v41 + 1) - v41) >> 3) > v27);
    if (*(*(&v41 + 1) - 1) < 0)
    {
      v35 = v37;
      if (!*(*(&v41 + 1) - 16))
      {
        operator delete(*(*(&v41 + 1) - 24));
LABEL_90:
        v24 = (*(&v41 + 1) - 24);
      }
    }

    else
    {
      v35 = v37;
      if (!*(*(&v41 + 1) - 1))
      {
        goto LABEL_90;
      }
    }

    sub_1AE743538(&v54, v41, v24);
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    *v35 = v54;
    *(v35 + 16) = v55;
LABEL_96:
    while (v24 != v25)
    {
      v36 = *(v24 - 1);
      v24 -= 3;
      if (v36 < 0)
      {
        operator delete(*v24);
      }
    }

    operator delete(v25);
    return;
  }

  sub_1AE745C0C(a1, a2);
}

void sub_1AE745200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a2)
  {
    sub_1AE6090F0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE745280(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 24);
  if (v3 <= 1)
  {
    if (!v3)
    {

      sub_1AE745984(a1, a2, a3);
      return;
    }

LABEL_7:
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    operator new();
  }

  if (v3 == 2)
  {
    goto LABEL_7;
  }

  sub_1AE745368(__p, a2);
  sub_1AE745984(a1, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE74534C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE745368(_BYTE *__dst, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 != 3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_1AE5DBF1C(__dst, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
    }

    else
    {
      *__dst = *a2;
      *(__dst + 2) = *(a2 + 16);
    }

    *(__dst + 6) = v4;
    return;
  }

  LODWORD(v5) = *(a2 + 23);
  if ((v5 & 0x80000000) == 0)
  {
    *__p = *a2;
    v63 = *(a2 + 16);
    v6 = language_modeling::v1::kClassLabelNumber;
    v7 = strlen(language_modeling::v1::kClassLabelNumber);
    goto LABEL_7;
  }

  sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  LODWORD(v5) = *(a2 + 23);
  v6 = language_modeling::v1::kClassLabelNumber;
  v8 = strlen(language_modeling::v1::kClassLabelNumber);
  v7 = v8;
  if ((v5 & 0x80000000) == 0)
  {
LABEL_7:
    if (v7 != -1)
    {
      v9 = 0;
      v10 = v5;
      v11 = a2;
      goto LABEL_9;
    }

LABEL_137:
    sub_1AE61F754();
  }

  if (v8 == -1)
  {
    goto LABEL_137;
  }

  v11 = *a2;
  v10 = *(a2 + 8);
  v9 = 1;
LABEL_9:
  if (v10 >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v11, v6, v12);
  if (v10 == v7 && v13 == 0)
  {
    goto LABEL_28;
  }

  v15 = strlen(language_modeling::v1::kClassLabelPluralNumber);
  v16 = v15;
  if (v9)
  {
    if (v15 != -1)
    {
      v17 = *a2;
      v18 = *(a2 + 8);
      goto LABEL_23;
    }

LABEL_138:
    sub_1AE61F754();
  }

  if (v15 == -1)
  {
    goto LABEL_138;
  }

  v18 = v5;
  v17 = a2;
LABEL_23:
  if (v18 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  if (!memcmp(v17, language_modeling::v1::kClassLabelPluralNumber, v19) && v18 == v16)
  {
LABEL_28:
    if (SHIBYTE(v63) < 0)
    {
      __p[1] = 1;
      v20 = __p[0];
    }

    else
    {
      HIBYTE(v63) = 1;
      v20 = __p;
    }

    v21 = 57;
LABEL_32:
    *v20 = v21;
    v22 = (v20 + 1);
    goto LABEL_33;
  }

  v32 = strlen(language_modeling::v1::kClassLabelSingularNumber);
  v33 = v32;
  if (v9)
  {
    if (v32 != -1)
    {
      v34 = *a2;
      v35 = *(a2 + 8);
      goto LABEL_64;
    }

LABEL_139:
    sub_1AE61F754();
  }

  if (v32 == -1)
  {
    goto LABEL_139;
  }

  v35 = v5;
  v34 = a2;
LABEL_64:
  if (v35 >= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v35;
  }

  if (!memcmp(v34, language_modeling::v1::kClassLabelSingularNumber, v36) && v35 == v33)
  {
    if (SHIBYTE(v63) < 0)
    {
      __p[1] = 1;
      v20 = __p[0];
    }

    else
    {
      HIBYTE(v63) = 1;
      v20 = __p;
    }

    v21 = 49;
    goto LABEL_32;
  }

  v37 = strlen(language_modeling::v1::kClassLabelPause);
  v38 = v37;
  if (v9)
  {
    if (v37 != -1)
    {
      v39 = *a2;
      v40 = *(a2 + 8);
      goto LABEL_79;
    }

LABEL_140:
    sub_1AE61F754();
  }

  if (v37 == -1)
  {
    goto LABEL_140;
  }

  v40 = v5;
  v39 = a2;
LABEL_79:
  if (v40 >= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v40;
  }

  if (!memcmp(v39, language_modeling::v1::kClassLabelPause, v41) && v40 == v38)
  {
    if (SHIBYTE(v63) < 0)
    {
      __p[1] = 3;
      v42 = __p[0];
    }

    else
    {
      HIBYTE(v63) = 3;
      v42 = __p;
    }

    *(v42 + 2) = 46;
    *v42 = 11822;
    v22 = (v42 + 3);
    goto LABEL_33;
  }

  v43 = strlen(language_modeling::v1::kClassLabelSentenceDelimiter);
  v44 = v43;
  if (v9)
  {
    if (v43 != -1)
    {
      v45 = *a2;
      v46 = *(a2 + 8);
      goto LABEL_93;
    }

LABEL_141:
    sub_1AE61F754();
  }

  if (v43 == -1)
  {
    goto LABEL_141;
  }

  v46 = v5;
  v45 = a2;
LABEL_93:
  if (v46 >= v44)
  {
    v47 = v44;
  }

  else
  {
    v47 = v46;
  }

  if (!memcmp(v45, language_modeling::v1::kClassLabelSentenceDelimiter, v47) && v46 == v44)
  {
    if (SHIBYTE(v63) < 0)
    {
      __p[1] = 1;
      v20 = __p[0];
    }

    else
    {
      HIBYTE(v63) = 1;
      v20 = __p;
    }

    v21 = 46;
    goto LABEL_32;
  }

  v48 = strlen(language_modeling::v1::kClassLabelReplacementCharacter);
  v49 = v48;
  if (v9)
  {
    if (v48 != -1)
    {
      v50 = *a2;
      v51 = *(a2 + 8);
      goto LABEL_107;
    }

LABEL_142:
    sub_1AE61F754();
  }

  if (v48 == -1)
  {
    goto LABEL_142;
  }

  v51 = v5;
  v50 = a2;
LABEL_107:
  if (v51 >= v49)
  {
    v52 = v49;
  }

  else
  {
    v52 = v51;
  }

  if (!memcmp(v50, language_modeling::v1::kClassLabelReplacementCharacter, v52) && v51 == v49)
  {
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
LABEL_113:
      HIBYTE(v63) = 0;
      v22 = __p;
      goto LABEL_33;
    }

LABEL_130:
    __p[1] = 0;
    v22 = __p[0];
    goto LABEL_33;
  }

  v53 = strlen(language_modeling::v1::kClassLabelUsername);
  v54 = v53;
  if (v9)
  {
    if (v53 != -1)
    {
      v55 = *a2;
      v5 = *(a2 + 8);
      goto LABEL_121;
    }

LABEL_143:
    sub_1AE61F754();
  }

  if (v53 == -1)
  {
    goto LABEL_143;
  }

  v5 = v5;
  v55 = a2;
LABEL_121:
  if (v5 >= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v5;
  }

  if (!memcmp(v55, language_modeling::v1::kClassLabelUsername, v56) && v5 == v54)
  {
    if (SHIBYTE(v63) < 0)
    {
      __p[1] = 4;
      v57 = __p[0];
    }

    else
    {
      HIBYTE(v63) = 4;
      v57 = __p;
    }

    *v57 = 1852337994;
    v22 = (v57 + 4);
  }

  else
  {
    if (std::string::compare(a2, language_modeling::v1::kClassLabelLink))
    {
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_130;
    }

    if (SHIBYTE(v63) < 0)
    {
      __p[1] = 7;
      v58 = __p[0];
    }

    else
    {
      HIBYTE(v63) = 7;
      v58 = __p;
    }

    *(v58 + 3) = 1836016430;
    *v58 = 779778424;
    v22 = (v58 + 7);
  }

LABEL_33:
  *v22 = 0;
  v23 = SHIBYTE(v63);
  v24 = __p[1];
  if (v63 >= 0)
  {
    v25 = HIBYTE(v63);
  }

  else
  {
    v25 = __p[1];
  }

  v26 = *(a2 + 23);
  v27 = v26;
  v28 = *(a2 + 8);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a2 + 8);
  }

  if (v25 == v26 && (v63 >= 0 ? (v29 = __p) : (v29 = __p[0]), (v30 = *a2, v27 >= 0) ? (v31 = a2) : (v31 = *a2), !memcmp(v29, v31, v25)))
  {
    if (v27 < 0)
    {
      sub_1AE5DBF1C(__dst, v30, v28);
    }

    else
    {
      *__dst = *a2;
      *(__dst + 2) = *(a2 + 16);
    }

    *(__dst + 6) = *(a2 + 24);
    if (SHIBYTE(v63) < 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v23 < 0)
    {
      sub_1AE5DBF1C(v59, __p[0], v24);
    }

    else
    {
      *v59 = *__p;
      v60 = v63;
    }

    v61 = 0;
    sub_1AE5CA7E0(__dst, v59);
    *(__dst + 6) = v61;
    if ((SHIBYTE(v60) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_51;
    }

    operator delete(v59[0]);
    if (SHIBYTE(v63) < 0)
    {
LABEL_51:
      operator delete(__p[0]);
    }
  }
}

void sub_1AE745924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1AE745984(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  *&v12.__r_.__value_.__r.__words[1] = 0uLL;
  v13 = 0;
  if (v15 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v15 >= 0)
  {
    v6 = HIBYTE(v15);
  }

  else
  {
    v6 = __p[1];
  }

  sub_1AE5E56F4(a1 + 128, v5, v6, &v12.__r_.__value_.__l.__size_, &v12);
  if (v12.__r_.__value_.__r.__words[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE608CE4(&v12, v10);
    if (v11 >= 0)
    {
      v9 = v10;
    }

    else
    {
      v9 = v10[0];
    }

    MEMORY[0x1B2705EB0](exception, v9);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE6089C0(&v12);
  v7 = *&v12.__r_.__value_.__r.__words[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (*(&v7 + 1) != v7)
  {
    if (((*(&v7 + 1) - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  if (v7)
  {
    v12.__r_.__value_.__r.__words[2] = v7;
    operator delete(v7);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AE745B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void sub_1AE745C0C(uint64_t a1, uint64_t a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 292) == 1 && sub_1AE73FDF4(a1, a2))
  {
    *(&v28.__r_.__value_.__s + 23) = 7;
    strcpy(&v28, "_U_CAP_");
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (v5)
    {
      if (v4 >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        v6 = *(a2 + 8);
      }

      v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
      v24 = v7;
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v7 = 0;
      v24 = 0;
    }

    v9 = *(a1 + 56);
    Length = CFStringGetLength(v7);
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], Length, v7);
    CFStringLowercase(MutableCopy, v9);
    cf = MutableCopy;
    if (!MutableCopy)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v22, "Could not construct");
      __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v12 = CFGetTypeID(MutableCopy);
    if (v12 != CFStringGetTypeID())
    {
      v23 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v23, "Could not construct");
      __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      sub_1AE621740(__p, cf);
      v15 = v27;
      v16 = __p[0];
      v14 = __p[1];
    }

    else
    {
      v16 = 0;
      v15 = 0;
      __p[0] = 0;
      v27 = 0;
    }

    if ((v15 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = v16;
    }

    if ((v15 & 0x80u) == 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = v14;
    }

    v19 = std::string::append(&v28, v17, v18);
    v20 = v19->__r_.__value_.__r.__words[0];
    v29[0] = v19->__r_.__value_.__l.__size_;
    *(v29 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
    v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v20;
    *(a2 + 8) = v29[0];
    *(a2 + 15) = *(v29 + 7);
    *(a2 + 23) = v21;
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    CFRelease(cf);
    if (v24)
    {
      CFRelease(v24);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1AE745EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE621E54(va);
  _Unwind_Resume(a1);
}

void sub_1AE745F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  sub_1AE621E54(&a11);
  sub_1AE63109C(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AE745FAC(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = a1[1];
    if (*a1 != v3)
    {
      while (1)
      {
        if (a2 == a3)
        {
          v4 = *a1;
        }

        else
        {
          v4 = *a1;
          v5 = a2;
          do
          {
            if (*v5 != *v4)
            {
              break;
            }

            ++v5;
            ++v4;
            if (v5 == a3)
            {
              break;
            }
          }

          while (v4 != v3);
        }

        if (v4 == v3)
        {
          break;
        }

        if (++a2 == a3)
        {
          return a3;
        }
      }

      return a2;
    }
  }

  return a3;
}

__int128 *sub_1AE746030(__int128 *result, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v3 = *result;
    a2[2] = *(result + 2);
    *a2 = v3;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      *a2 = &unk_1F2430DC8;
      *(a2 + 4) = 0;
      return result;
    }

    v4 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v4 == ("N5boost9algorithm6detail13first_finderFINSt3__111__wrap_iterIPKcEENS0_8is_equalEEE" & 0x7FFFFFFFFFFFFFFFLL) || (v5 = result, v6 = a2, v7 = strcmp(v4, ("N5boost9algorithm6detail13first_finderFINSt3__111__wrap_iterIPKcEENS0_8is_equalEEE" & 0x7FFFFFFFFFFFFFFFLL)), a2 = v6, v8 = v7, result = v5, !v8))
    {
      *a2 = result;
    }

    else
    {
      *v6 = 0;
    }
  }

  return result;
}

void sub_1AE7460E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a2 + 24);
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if (v4 < 0)
  {
    sub_1AE5DBF1C(&__dst, *a2, *(a2 + 8));
    v6 = *(a2 + 24);
  }

  else
  {
    __dst = *a2;
  }

  v27 = v6;
  if (v6 == 3)
  {
    sub_1AE745368(&v24, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v24;
    v27 = v25;
    v10 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__dst.__r_.__value_.__l.__size_)
      {
        goto LABEL_37;
      }
    }

    else if (!*(&v24.__r_.__value_.__s + 23))
    {
LABEL_37:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_35;
      }

      return;
    }
  }

  else
  {
    v10 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  v11 = *&__dst.__r_.__value_.__l.__data_;
  if ((v10 & 0x80u) == 0)
  {
    size = v10;
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if ((v10 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (size >= 5)
  {
    v14 = 5;
  }

  else
  {
    v14 = size;
  }

  v15 = memcmp(p_dst, "<unk>", v14);
  if (size == 5 && v15 == 0)
  {
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    operator new();
  }

  if ((v10 & 0x80) != 0)
  {
    sub_1AE5DBF1C(&v23, v11, *(&v11 + 1));
  }

  else
  {
    v23 = __dst;
  }

  if (*(a1 + 328) == 1)
  {
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_57;
      }

      if (LOWORD(v23.__r_.__value_.__l.__data_) != 11822 || v23.__r_.__value_.__s.__data_[2] != 46)
      {
        goto LABEL_57;
      }

      *(&v23.__r_.__value_.__s + 23) = 5;
      v18 = &v23;
LABEL_56:
      strcpy(v18, ". . .");
      goto LABEL_57;
    }

    if (v23.__r_.__value_.__l.__size_ == 3)
    {
      v18 = v23.__r_.__value_.__r.__words[0];
      if (*v23.__r_.__value_.__l.__data_ == 11822 && *(v23.__r_.__value_.__r.__words[0] + 2) == 46)
      {
        v23.__r_.__value_.__l.__size_ = 5;
        goto LABEL_56;
      }
    }
  }

LABEL_57:
  sub_1AE744AD4(a1, &v23);
  sub_1AE744CC4(a1, &v23);
  if (!v27)
  {
    std::string::append(&v23, " ", 1uLL);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1AE5DBF1C(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v23;
  }

  v22 = v27;
  sub_1AE5CA7E0(&v24, &__p);
  v20 = v22;
  v25 = v22;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v20 = v25;
  }

  __dst = v24;
  *(&v24.__r_.__value_.__s + 23) = 0;
  v24.__r_.__value_.__s.__data_[0] = 0;
  v27 = v20;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1AE745280(a1, &__dst, a3);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_35;
    }
  }

  else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_35:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1AE74641C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (*(v21 - 57) < 0)
    {
      goto LABEL_6;
    }
  }

  else if (*(v21 - 57) < 0)
  {
LABEL_6:
    operator delete(*(v21 - 80));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE74649C(uint64_t a1)
{
  sub_1AE7464D4(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE7464D4(uint64_t a1)
{
  *a1 = &unk_1F2430A78;
  v2 = *(a1 + 448);
  if (v2)
  {
    do
    {
      v11 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v11;
    }

    while (v11);
  }

  v3 = *(a1 + 432);
  *(a1 + 432) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 408);
  if (v4)
  {
    do
    {
      v12 = *v4;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v12;
    }

    while (v12);
  }

  v5 = *(a1 + 392);
  *(a1 + 392) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1 && *(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  *a1 = &unk_1F2430BC8;
  v6 = *(a1 + 296);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 264);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return sub_1AE746628(a1);
}

void *sub_1AE746628(void *a1)
{
  *a1 = &unk_1F2430CA8;
  sub_1AE5E1BBC(a1 + 16);
  v2 = a1[13];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[11];
  a1[11] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[7] = 0;
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[5];
    v8 = a1[4];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[4];
    }

    a1[5] = v6;
    operator delete(v8);
  }

  v10 = a1[1];
  if (v10)
  {
    v11 = a1[2];
    v12 = a1[1];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = a1[1];
    }

    a1[2] = v10;
    operator delete(v12);
  }

  return a1;
}

void *sub_1AE746754(void *result, CFArrayRef theArray)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (theArray)
  {
    v3 = result;
    for (i = 0; ; ++i)
    {
      result = CFArrayGetCount(theArray);
      if (i >= result)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      sub_1AE5CC874(ValueAtIndex, __p);
      sub_1AE67D6DC(v3, __p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return result;
}

void *sub_1AE746818(void *a1)
{
  *a1 = &unk_1F2430BC8;
  v2 = a1[37];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[33];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[31];
  a1[31] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return sub_1AE746628(a1);
}

uint64_t *sub_1AE74689C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    else if ((*(v2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 48));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(v2 + 23) & 0x80000000) == 0)
      {
LABEL_6:
        MEMORY[0x1B2706400](v2, 0x1012C4003C2D8E3);
        return a1;
      }

LABEL_11:
      operator delete(*v2);
      goto LABEL_6;
    }

LABEL_10:
    operator delete(*(v2 + 24));
    if ((*(v2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  return a1;
}

char *sub_1AE746940(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 6);
  *(__dst + 4) = 0;
  *(__dst + 6) = v5;
  if (*(a2 + 63) < 0)
  {
    sub_1AE5DBF1C(__dst + 40, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 40);
    *(__dst + 7) = *(a2 + 7);
    *(__dst + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_1AE5DBF1C(__dst + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = a2[4];
    *(__dst + 10) = *(a2 + 10);
    *(__dst + 4) = v7;
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  return __dst;
}

void sub_1AE746AA4(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v2 + 8));
  }

  sub_1AE74689C(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_1AE746B18(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(__dst + 5) = *(a2 + 5);
      *(__dst + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_1AE5DBF1C(__dst + 24, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    sub_1AE5DBF1C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_1AE5DBF1C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  return __dst;
}

void sub_1AE746BE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE746C58(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 40));
LABEL_3:
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (!v2)
  {
    goto LABEL_9;
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
    if ((*(v2 + 71) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_16:
      operator delete(*(v2 + 24));
      if ((*(v2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      operator delete(*v2);
      goto LABEL_8;
    }
  }

  else if ((*(v2 + 71) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(v2 + 48));
  if (*(v2 + 47) < 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (*(v2 + 23) < 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  MEMORY[0x1B2706400](v2, 0x1012C4003C2D8E3);
LABEL_9:
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AE746D38(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  std::mutex::~mutex(a1);
}

CFTypeID sub_1AE746D80(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    __cxa_allocate_exception(0x10uLL);
    sub_1AE65BA80();
  }

  CFRetain(ValueAtIndex);
  *a1 = v7;
  v8 = CFGetTypeID(v7);
  result = CFStringGetTypeID();
  if (v8 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AE746E64(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE621E54(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE746EAC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_1AE746EEC(uint64_t a1, uint64_t a2)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  sub_1AE746940((a1 + 88), (a2 + 88));
  v4 = *(a2 + 176);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *(a1 + 176) = v4;
  *(a1 + 184) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 244) = *(a2 + 244);
  v5 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 248) = v5;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  v7 = *(a2 + 264);
  v6 = *(a2 + 272);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 288) = *(a2 + 288);
  v8 = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 296) = v8;
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 348) = *(a2 + 348);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 356) = *(a2 + 356);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 388) = *(a2 + 388);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = 0;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 420) = *(a2 + 420);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 428) = *(a2 + 428);
  if (*(a2 + 455) < 0)
  {
    sub_1AE5DBF1C((a1 + 432), *(a2 + 432), *(a2 + 440));
  }

  else
  {
    v9 = *(a2 + 432);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 432) = v9;
  }

  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  if (*(a2 + 184))
  {
    operator new();
  }

  v10 = *(a2 + 408);
  if (*(a1 + 408) != v10)
  {
    CFRetain(v10);
    v11 = *(a1 + 408);
    if (v11)
    {
      CFRelease(v11);
    }

    *(a1 + 408) = v10;
  }

  return a1;
}

void sub_1AE747158(_Unwind_Exception *a1)
{
  sub_1AE636D70((v1 + 408));
  v3 = *(v1 + 264);
  if (v3)
  {
    *(v1 + 272) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 184);
  *(v1 + 184) = 0;
  if (v4)
  {
    sub_1AE631A28(v4);
  }

  sub_1AE67BE08((v1 + 176));
  sub_1AE746C58(v1 + 88);
  sub_1AE746D38(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE7471FC(uint64_t a1, CFStringRef theString1, __CFString *a3, CFErrorRef *a4)
{
  if (CFStringCompare(theString1, kLMLanguageModelAdaptationEnabledKey, 0) == kCFCompareEqualTo)
  {
    *(a1 + 192) = sub_1AE5CF094(a3, 0);
    return 1;
  }

  if (CFStringCompare(theString1, kLMLanguageModelAppContextKey, 0) == kCFCompareEqualTo)
  {
    if (!sub_1AE5CF80C(a1 + 88, a3, 0))
    {
      goto LABEL_34;
    }

    HIBYTE(__p[2]) = 17;
    strcpy(__p, "appContextChanged");
    sub_1AE7476B0(a1);
LABEL_50:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  if (CFStringCompare(theString1, kLMLanguageModelAppGenreKey, 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      if (CFEqual(a3, kLMLanguageModelInformalAppGenre))
      {
        v10 = 1;
      }

      else
      {
        if (!CFEqual(a3, kLMLanguageModelFormalAppGenre))
        {
          goto LABEL_34;
        }

        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 112) = v10;
    HIBYTE(__p[2]) = 15;
    strcpy(__p, "appGenreChanged");
    sub_1AE7476B0(a1);
    goto LABEL_50;
  }

  if (CFStringCompare(theString1, kLMLanguageModelRecipientContextKey, 0) == kCFCompareEqualTo)
  {
    if (sub_1AE5CFF6C(a1 + 88, a3))
    {
      operator new();
    }

    goto LABEL_34;
  }

  if (CFStringCompare(theString1, kLMLanguageModelSpatialTemporalContextKey, 0) == kCFCompareEqualTo)
  {
    if (a3)
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CFStringGetTypeID())
      {
        goto LABEL_34;
      }

      sub_1AE5CC874(a3, __p);
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 128) = *__p;
      *(a1 + 144) = __p[2];
    }

    else
    {
      if (*(a1 + 151) < 0)
      {
        *(a1 + 136) = 0;
        v16 = *(a1 + 128);
      }

      else
      {
        v16 = (a1 + 128);
        *(a1 + 151) = 0;
      }

      *v16 = 0;
    }

    operator new();
  }

  if (CFStringCompare(theString1, kLMLanguageModelDynamicNgramCountThresholdKey, 0))
  {
    if (CFStringCompare(theString1, kLMLanguageModelSwearWordPolicyEnabledKey, 0) == kCFCompareEqualTo)
    {
      *(a1 + 428) = sub_1AE5CF094(a3, 0);
      return 1;
    }

    if (CFStringCompare(theString1, kLMLanguageModelSupportsNormalizedNameTokenKey, 0) == kCFCompareEqualTo)
    {
      *(a1 + 429) = sub_1AE5CF094(a3, 0);
      return 1;
    }

    if (CFStringCompare(theString1, kLMLanguageModelLegacyGenericNameTokenKey, 0) == kCFCompareEqualTo)
    {
      sub_1AE5CC874(a3, __p);
      if (*(a1 + 455) < 0)
      {
        operator delete(*(a1 + 432));
      }

      *(a1 + 432) = *__p;
      *(a1 + 448) = __p[2];
      return 1;
    }

    v8 = CFStringCompare(theString1, kLMLanguageModelMontrealFullCacheSize, 0);
    if (a3)
    {
      if (v8 == kCFCompareEqualTo)
      {
        v9 = CFGetTypeID(a3);
        if (v9 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberCFIndexType, (a1 + 380));
          return 1;
        }
      }
    }
  }

  else if (a3)
  {
    v12 = CFGetTypeID(a3);
    if (v12 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a3, kCFNumberFloatType, (a1 + 256));
      return 1;
    }
  }

LABEL_34:
  if (a4)
  {
    sub_1AE5CC874(theString1, &v17);
    v13 = std::string::append(&v17, " cannot be set after creation", 0x1DuLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    __p[2] = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    *a4 = sub_1AE694018(__p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1AE74765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE7476B0(uint64_t a1)
{
  std::mutex::lock(a1);
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  std::mutex::unlock(a1);
}

float sub_1AE7477D4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return *(a1 + 228);
  }

  v4 = *(a1 + 348);
  v5 = a2 & 0x3F;
  if (v4 != 8)
  {
    v5 = (a2 >> 6);
  }

  v6 = a3 & 0x3F;
  if (v4 == 8)
  {
    v7 = 0;
  }

  else
  {
    v6 = (a3 >> 6);
    v7 = ((a3 ^ a2) & 0x3F) == 0;
  }

  if (v7)
  {
    v12 = v5 == v6;
    v13 = 240;
  }

  else
  {
    v8 = v4 - 2;
    v9 = a2 >> (v4 - 2);
    v10 = a3 >> v8;
    if (v9 != v10 && v5 != v6)
    {
      return *(a1 + 232);
    }

    v12 = v9 != v10 || v5 == v6;
    v13 = 224;
  }

  if (v12)
  {
    v13 = 236;
  }

  return *(a1 + v13);
}

float sub_1AE747864(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 348);
  v4 = v3 - 2;
  v5 = a3 >> (v3 - 2);
  result = 0.0;
  if (v5 != 1)
  {
    if (a2 == a3)
    {
      v7 = 228;
      return *(a1 + v7);
    }

    v8 = v3 == 8;
    if (v3 == 8)
    {
      v9 = a2 & 0x3F;
    }

    else
    {
      v9 = (a2 >> 6);
    }

    v10 = a3 & 0x3F;
    if (v8 || (v10 = (a3 >> 6), ((a3 ^ a2) & 0x3F) != 0))
    {
      v12 = a2 >> v4;
      if (v12 != v5 && v9 != v10)
      {
        v7 = 232;
        return *(a1 + v7);
      }

      v11 = v12 != v5 || v9 == v10;
      v7 = 224;
    }

    else
    {
      v11 = v9 == (a3 >> 6);
      v7 = 240;
    }

    if (v11)
    {
      v7 = 236;
    }

    return *(a1 + v7);
  }

  return result;
}

float sub_1AE7478F8(uint64_t a1, int a2, int a3)
{
  result = 0.0;
  if (a2 == a3)
  {
    return *(a1 + 228);
  }

  return result;
}

uint64_t sub_1AE74790C(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v3 = HIWORD(a2);
  v4 = *(a1 + 40);
  if (HIWORD(a2) >= v4)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = (*(a1 + 32) + 4 * v3);
  v7 = (v5 + 4 * *v6);
  if (v3 == v4 - 1)
  {
    v8 = (*(a1 + 8) + *(a1 + 16));
    if (v7 == v8)
    {
      return 0;
    }
  }

  else
  {
    v8 = (v5 + 4 * v6[1]);
    if (v7 == v8)
    {
      return 0;
    }
  }

  v9 = v8 - v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v7[v9 >> 1];
    v12 = *(v11 + 1);
    v13 = v11 + 1;
    v9 += ~(v9 >> 1);
    if (v12 < a2)
    {
      v7 = v13;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v7 >= v8)
  {
    return 0;
  }

  v14 = *v7;
  if ((v14 ^ (a2 << 16)) >> 16)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v14;
  }

  return 1;
}

void sub_1AE7479C8(uint64_t a1)
{
  *a1 = &unk_1F2432098;
  if (*(a1 + 8))
  {
    v1 = a1;
    munmap(*(a1 + 8), *(a1 + 16));
    a1 = v1;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE747A44(uint64_t result)
{
  *result = &unk_1F2432098;
  if (*(result + 8))
  {
    v1 = result;
    munmap(*(result + 8), *(result + 16));
    result = v1;
  }

  *(result + 16) = 0;
  return result;
}

void sub_1AE747CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v43 & 1) == 0)
    {
LABEL_8:
      sub_1AE5F2C0C(&a22, MEMORY[0x1E69E54D8]);
      MEMORY[0x1B2706340](&a41);
      sub_1AE6FCC0C(v41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v42);
  goto LABEL_8;
}

void sub_1AE747DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE747DB0);
}

uint64_t sub_1AE747DD8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (a3 >= v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = a3;
  }

  if (a3 >= v6)
  {
    v8 = a2 + 4 * a3 + 4 * (1 - v6);
  }

  else
  {
    v8 = a2;
  }

  if (v7 >= a4)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    v13 = (a1 + 24);
    v14 = *(a1 + 56);
    if (v7 > 7)
    {
      v15 = 0;
      v27 = v14 + 4 * v7;
      v29 = v14 < a1 + 28 && v13 < v27;
      if ((v8 >= v27 || v14 >= v8 + 4 * v7) && !v29)
      {
        v15 = v7 & 0xFFFFFFFFFFFFFFF8;
        v31 = vld1q_dup_f32(v13);
        v32 = (v8 + 16);
        v33 = (v14 + 16);
        v34 = v7 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v35 = vbicq_s8(*v32, vcgtq_u32(*v32, v31));
          v33[-1] = vbicq_s8(v32[-1], vcgtq_u32(v32[-1], v31));
          *v33 = v35;
          v32 += 2;
          v33 += 2;
          v34 -= 8;
        }

        while (v34);
        if (v7 == v15)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v7 - v15;
    v17 = 4 * v15;
    v18 = (v14 + v17);
    v19 = (v8 + v17);
    do
    {
      v21 = *v19++;
      v20 = v21;
      if (v21 > *v13)
      {
        v20 = 0;
      }

      *v18++ = v20;
      --v16;
    }

    while (v16);
LABEL_16:
    v22 = 0.0;
    if (v7 > a4)
    {
      v23 = 0;
      v24 = v7;
      do
      {
        if (sub_1AE7048D0(*(a1 + 80), (*(a1 + 56) + v23), v24, v37) != 2)
        {
          v22 = *(**(a1 + 96) + 8 * BYTE1(v37[0])) + v22;
        }

        --v24;
        v23 += 4;
      }

      while (v24 > a4);
    }

    if (!a4 && (a5 & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 88))
      {
        v37[0] = &unk_1F2430DF8;
        v37[1] = a1;
        v37[2] = a6;
        *&v37[3] = v22;
        *v38 = 0u;
        v39 = 0u;
        *__p = 0u;
        v41 = 0;
        v25 = *(**(a1 + 80) + 32);
        if (v25 != 5 && v25 != 3)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    operator new();
  }

  return 0;
}

void sub_1AE748254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x1B2706400](v2, 0x30C400D66AB62);
  sub_1AE748304(va);
  _Unwind_Resume(a1);
}

void sub_1AE748288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v20 = a15;
    if (!a15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v20 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  _Unwind_Resume(exception_object);
}

void sub_1AE7482C4(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    v2[9] = v5;
    operator delete(v5);
  }

  v6 = v2[5];
  if (v6)
  {
    v2[6] = v6;
    operator delete(v6);
  }

  MEMORY[0x1B2706400](v2, v3);
  _Unwind_Resume(a1);
}

void *sub_1AE748304(void *a1)
{
  *a1 = &unk_1F2430DF8;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_1AE748394(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72) - v3;
  v5 = v4 >> 4;
  if (!v4)
  {
    v7 = 0.0;
    goto LABEL_28;
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 >> 4;
  }

  if (!a2)
  {
    if (v5 >= 4)
    {
      v25 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = (v3 + 32);
      v27 = 0uLL;
      v28 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v29 = 0uLL;
      do
      {
        v30 = v26 + 2;
        v31.f64[0] = *(v26 - 4);
        v31.f64[1] = *(v26 - 2);
        v32 = *v26;
        v26 += 8;
        v33.f64[0] = v32;
        v33.f64[1] = *v30;
        v27 = vaddq_f64(v31, v27);
        v29 = vaddq_f64(v33, v29);
        v28 -= 4;
      }

      while (v28);
      v7 = vaddvq_f64(vaddq_f64(v29, v27));
      if (v5 == v25)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = 0;
      v7 = 0.0;
    }

    v34 = v6 - v25;
    v35 = (v3 + 16 * v25);
    do
    {
      v36 = *v35;
      v35 += 2;
      v7 = v36 + v7;
      --v34;
    }

    while (v34);
    goto LABEL_28;
  }

  v7 = 0.0;
  if (v5 <= 7 || (v3 + 16 * v6 - 4 > a2 ? (v8 = v3 + 8 >= a2 + 4 * v6) : (v8 = 1), !v8))
  {
    v9 = 0;
LABEL_18:
    v21 = v6 - v9;
    v22 = (a2 + 4 * v9);
    v23 = (v3 + 16 * v9 + 8);
    do
    {
      v7 = *(v23 - 1) + v7;
      v24 = *v23;
      v23 += 2;
      *v22++ = v24;
      --v21;
    }

    while (v21);
    goto LABEL_28;
  }

  v9 = v6 & 0xFFFFFFFFFFFFFFF8;
  v10 = (a2 + 16);
  v11 = v3 + 64;
  v12 = 0uLL;
  v13 = v6 & 0xFFFFFFFFFFFFFFF8;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  do
  {
    v17.f64[0] = *(v11 - 64);
    v18.f64[0] = *(v11 - 32);
    v17.f64[1] = *(v11 - 48);
    v18.f64[1] = *(v11 - 16);
    v19.f64[0] = *v11;
    v20.f64[0] = *(v11 + 32);
    v19.f64[1] = *(v11 + 16);
    v20.f64[1] = *(v11 + 48);
    v14 = vaddq_f64(v18, v14);
    v12 = vaddq_f64(v17, v12);
    v16 = vaddq_f64(v20, v16);
    LODWORD(v17.f64[0]) = *(v11 - 56);
    HIDWORD(v17.f64[0]) = *(v11 - 40);
    LODWORD(v17.f64[1]) = *(v11 - 24);
    HIDWORD(v17.f64[1]) = *(v11 - 8);
    LODWORD(v18.f64[0]) = *(v11 + 8);
    HIDWORD(v18.f64[0]) = *(v11 + 24);
    LODWORD(v18.f64[1]) = *(v11 + 40);
    HIDWORD(v18.f64[1]) = *(v11 + 56);
    v15 = vaddq_f64(v19, v15);
    v10[-1] = v17;
    *v10 = v18;
    v10 += 2;
    v11 += 128;
    v13 -= 8;
  }

  while (v13);
  v7 = vaddvq_f64(vaddq_f64(vaddq_f64(v15, v12), vaddq_f64(v16, v14)));
  if (v5 != v9)
  {
    goto LABEL_18;
  }

LABEL_28:
  if (a3)
  {
    *(a3 + 8) = 0xFFEFFFFFFFFFFFFFLL;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 64) = xmmword_1AE79A550;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0xFFEFFFFFFFFFFFFFLL;
    *a3 = v7;
    *(a3 + 116) = *(a1 + 96);
    *(a3 + 112) = 0;
    *(a3 + 104) = (*(**(a1 + 88) + 32))(*(a1 + 88));
  }

  return v5;
}

uint64_t sub_1AE7485E8(uint64_t a1)
{
  if ((*(a1 + 32) - 1) <= 2 && *(a1 + 16) >= 2uLL)
  {
    v2 = (*(a1 + 72) - *(a1 + 64)) >> 4;
    if (v2 < *(*(a1 + 8) + 16) - 1)
    {
      v3 = (*(a1 + 48) - *(a1 + 40)) >> 2;
      if (v3 > v2)
      {
        if (!(v3 >> 62))
        {
          operator new();
        }

        sub_1AE5CBB70();
      }
    }
  }

  *(a1 + 72) = *(a1 + 64);
  result = (***(a1 + 88))(*(a1 + 88));
  if (result)
  {
    LOBYTE(v17) = 0;
    v5 = (*(**(a1 + 88) + 8))(*(a1 + 88), &v17);
    v6 = *(**(*(a1 + 8) + 104) + 8 * v17) + *(a1 + 24);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
    if (v8 >= v7)
    {
      v10 = *(a1 + 64);
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 4;
      v13 = v12 + 1;
      if ((v12 + 1) >> 60)
      {
        sub_1AE5CBB70();
      }

      v14 = v7 - v10;
      if (v14 >> 3 > v13)
      {
        v13 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 60))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v16 = 16 * v12;
      *v16 = v6;
      *(v16 + 8) = v5;
      v9 = 16 * v12 + 16;
      memcpy(0, v10, v11);
      *(a1 + 64) = 0;
      *(a1 + 72) = v9;
      *(a1 + 80) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = v6;
      *(v8 + 8) = v5;
      v9 = v8 + 16;
    }

    *(a1 + 72) = v9;
    ++*(a1 + 32);
    return 1;
  }

  return result;
}

void sub_1AE748A48(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1AE5CBB70();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1AE748B54(void *a1)
{
  *a1 = &unk_1F2430DF8;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE748C04(void *a1)
{
  *a1 = &unk_1F2430DF8;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE748C94(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, double *a5, unint64_t *a6)
{
  v6 = *(a1 + 16);
  v7 = a3 + 4 * a4 + 4 * (1 - v6);
  if (a4 >= v6)
  {
    v8 = v6 - 1;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = (a1 + 24);
  v10 = *(a1 + 56);
  if (v8 > 7)
  {
    v11 = 0;
    v23 = v10 + 4 * v8;
    v25 = v10 < a1 + 28 && v9 < v23;
    if ((v7 >= v23 || v10 >= v7 + 4 * v8) && !v25)
    {
      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      v27 = vld1q_dup_f32(v9);
      v28 = (v7 + 16);
      v29 = (v10 + 16);
      v30 = v8 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v31 = vbicq_s8(*v28, vcgtq_u32(*v28, v27));
        v29[-1] = vbicq_s8(v28[-1], vcgtq_u32(v28[-1], v27));
        *v29 = v31;
        v28 += 2;
        v29 += 2;
        v30 -= 8;
      }

      while (v30);
      if (v8 == v11)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v8 - v11;
  v13 = 4 * v11;
  v14 = (v10 + v13);
  v15 = (v7 + v13);
  do
  {
    v17 = *v15++;
    v16 = v17;
    if (v17 > *v9)
    {
      v16 = 0;
    }

    *v14++ = v16;
    --v12;
  }

  while (v12);
LABEL_11:
  if (*(a1 + 24) >= a2)
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v21[v8] = a2;
    v18 = v21;
    v19 = 0.0;
  }

  else
  {
    v18 = *(a1 + 56);
    v18[v8] = 0;
    v19 = -*(a1 + 40);
    v20 = 0.0;
  }

  *a5 = sub_1AE748DF0(a1, v18, v8 + 1, a6, 1, v20) + v19;
  return 1;
}

double sub_1AE748DF0(uint64_t a1, unsigned int *a2, unint64_t a3, unint64_t *a4, uint64_t a5, double a6)
{
  v8 = *(a1 + 128) - a6;
  v9 = *(a1 + 80);
  if (v9)
  {
    v14 = sub_1AE7048D0(v9, a2, a3, v17);
    if (v14 == 1)
    {
      if (a3 >= 2)
      {
        v15 = 0.0;
        if (a5)
        {
          v15 = *(**(a1 + 96) + 8 * v17[1]);
        }

        return sub_1AE748DF0(a1, a2 + 1, a3 - 1, a4, a5, a6) + v15;
      }
    }

    else if (v14)
    {
      if (a3 >= 2)
      {
        return sub_1AE748DF0(a1, a2 + 1, a3 - 1, a4, a5, a6);
      }
    }

    else
    {
      v8 = *(**(a1 + 104) + 8 * v17[0]);
      if (a3 == 1 && !*a2)
      {
        v8 = v8 - a6;
      }

      if (a4)
      {
        *a4 = a3;
      }
    }
  }

  return v8;
}

void sub_1AE748F0C(void *a1)
{
  sub_1AE6B225C(a1);

  JUMPOUT(0x1B2706400);
}

void sub_1AE748F48(uint64_t a1, CFDictionaryRef *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*a2, @"Weight");
  if (Value)
  {
    valuePtr[0] = 0;
    CFNumberGetValue(Value, kCFNumberDoubleType, valuePtr);
    v7 = *valuePtr;
  }

  else
  {
    v7 = 1.0;
  }

  *(a1 + 8) = v7;
  *a1 = &unk_1F2432228;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a3 + 296);
  LODWORD(valuePtr[0]) = 0;
  v8 = CFDictionaryGetValue(*a2, @"Type");
  CFNumberGetValue(v8, kCFNumberIntType, valuePtr);
  v9 = valuePtr[0];
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 48) = v9;
  *(a1 + 104) = 0;
  *(a1 + 72) = 0u;
  CFDictionaryGetValue(*a2, @"URL");
  sub_1AE61D968();
}

void sub_1AE74968C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (a26 < 0)
  {
    operator delete(__p);
    if ((v37 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a27);
      sub_1AE6FCC0C(v33 + 56);
      sub_1AE749810(v35);
      sub_1AE749810((v33 + 40));
      sub_1AE749868(v34);
      sub_1AE7498D0((v33 + 24));
      v40 = *v33;
      if (!*v33)
      {
        _Unwind_Resume(a1);
      }

      *(v32 + 64) = v40;
      operator delete(v40);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v36);
  goto LABEL_8;
}

void *sub_1AE749810(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B2706400](v1, 0x1080C409A65DFB4);
    return v2;
  }

  return result;
}

void *sub_1AE749868(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    if (v3)
    {
      *(v1 + 32) = v3;
      operator delete(v3);
    }

    v4 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x1B2706400](v1, 0x30C400D66AB62);
    return v2;
  }

  return result;
}

uint64_t **sub_1AE7498D0(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        sub_1AE701454(v4 + 8);
        MEMORY[0x1B2706400](v4, 0x1020C403F824CD1);
        if (*v3)
        {
          free(*v3);
        }
      }

      MEMORY[0x1B2706400](v3, 0x1030C40FC63861FLL);
    }

    MEMORY[0x1B2706400](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

double sub_1AE749974(uint64_t a1, unsigned int *a2, unint64_t *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, int a8, double a9)
{
  if (!a4)
  {
    return 1.0;
  }

  v11 = *a3;
  if (a4 != 1 && v11 > 1)
  {
    a8 = 1;
  }

  if (!v11)
  {
    return 0.0;
  }

  v18 = a2;
  v35 = a4 - 1;
  if (a4 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = a8;
  }

  v21 = &a2[v11];
  if (v20)
  {
    v34 = a8;
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    do
    {
      a5[a6] = v18[v22];
      v25 = sub_1AE748DF0(a1, a5, a6 + 1, 0, 1, a9);
      v26 = __exp10(v25);
      v27 = sub_1AE749974(a1, v21, a3 + 1, v35, a5, a6 + 1, a7, v34, a9) * v26;
      if (a4 == 1)
      {
        v24 = 1.0;
        if (a7)
        {
          v27 = *(a7 + 8 * v22) * v27;
        }
      }

      else
      {
        v24 = v24 + v28 * v26;
      }

      v23 = v27 + v23;
      ++v22;
    }

    while (v11 != v22);
  }

  else
  {
    v23 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = *v18++;
      a5[a6] = v30;
      v31 = sub_1AE749974(a1, v21, a3 + 1, v35, a5, a6 + 1, a7, 0, a9);
      v29 = v32 + v29;
      v23 = v31 + v23;
      --v11;
    }

    while (v11);
  }

  return v23;
}

void sub_1AE749B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE6565A8(va);
  _Unwind_Resume(a1);
}

void sub_1AE749B9C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v131 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v6 = a3[1];
  v123 = 0;
  v124 = 0;
  v122 = 0;
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  sub_1AE74AC7C(&v122, 0, byte_1AE7A3DA0);
  if (*v122 != 1)
  {
    __assert_rtn("conditionalProbability", "CoreLMInferenceEngine.cpp", 177, "workingContext[0] == kMontrealTokenIDBeginningOfSentence");
  }

  v9 = *a2;
  v8 = a2[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = v8 - v9;
  if (v10)
  {
    v113 = 0;
    v107 = v10;
    v112 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
    v109 = vdupq_n_s64(4uLL);
    v108 = vdupq_n_s64(8uLL);
    v114 = a4;
    v121 = a1;
    while (1)
    {
      if (v123 == v122)
      {
        __assert_rtn("_bestConfigurationMatch", "CoreLMInferenceEngine.cpp", 91, "contextLength > 0");
      }

      v11 = v112 - v113;
      v13 = a1[45];
      v12 = a1[46];
      if (v12 == v13)
      {
        v13 = a1[46];
      }

      else
      {
        v14 = v12 - v13;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[v14 >> 1];
          v18 = *v16;
          v17 = v16 + 1;
          v14 += ~(v14 >> 1);
          if (v18 < v11)
          {
            v13 = v17;
          }

          else
          {
            v14 = v15;
          }
        }

        while (v14);
      }

      v19 = *a2;
      if (v13 == v12)
      {
        v20 = v12 - 1;
      }

      else
      {
        v20 = v13;
      }

      v21 = *v20;
      if (v11 >= *v20)
      {
        v22 = *v20;
      }

      else
      {
        v22 = v112 - v113;
      }

      if (!v22)
      {
        goto LABEL_41;
      }

      v23 = v123 - v122;
      if (v22 == 1)
      {
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        v28 = (v19 + 24 * v113 + 32);
        v29 = v22 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v30 = *(v28 - 1);
          if (v26 <= v23 + ((*(v28 - 3) - *(v28 - 4)) >> 2))
          {
            v26 = v23 + ((*(v28 - 3) - *(v28 - 4)) >> 2);
          }

          if (v27 <= v23 + ((*v28 - v30) >> 2))
          {
            v27 = v23 + ((*v28 - v30) >> 2);
          }

          v28 += 6;
          v29 -= 2;
        }

        while (v29);
        if (v26 <= v27)
        {
          v25 = v27;
        }

        else
        {
          v25 = v26;
        }

        if (v22 == v24)
        {
          goto LABEL_41;
        }
      }

      v31 = v22 - v24;
      v32 = (v19 + 24 * v24 + 24 * v113 + 8);
      do
      {
        if (v25 <= v23 + ((*v32 - *(v32 - 1)) >> 2))
        {
          v25 = v23 + ((*v32 - *(v32 - 1)) >> 2);
        }

        v32 += 3;
        --v31;
      }

      while (v31);
LABEL_41:
      v33 = a1[43];
      if (!v33)
      {
LABEL_149:
        sub_1AE5F1DA4("map::at:  key not found");
      }

      while (1)
      {
        while (1)
        {
          v34 = v33[4];
          if (v21 >= v34)
          {
            break;
          }

          v33 = *v33;
          if (!v33)
          {
            goto LABEL_149;
          }
        }

        if (v34 >= v21)
        {
          break;
        }

        v33 = v33[1];
        if (!v33)
        {
          goto LABEL_149;
        }
      }

      v115 = v21;
      v36 = v33[5];
      v35 = v33[6];
      if (v35 != v36)
      {
        if (((v35 - v36) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }

      v37 = MEMORY[0xFFFFFFFFFFFFFFF8];
      v38 = v121;
      v39 = v21;
      v119 = v19 + 24 * v113;
      v111 = MEMORY[0xFFFFFFFFFFFFFFF8] * v21;
      bzero(v121[52], 12 * MEMORY[0xFFFFFFFFFFFFFFF8] * v21);
      if (v115 + v113 <= v112)
      {
        v40 = v115;
      }

      else
      {
        v40 = v112 - v113;
      }

      v118 = v37;
      v120 = v40;
      if (v40)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = 3 * v37;
        v47 = v122;
        v46 = v123;
        v116 = 12 * v37;
        v48 = 60;
        while (1)
        {
          v49 = (v119 + 24 * v42);
          v50 = v37 - (v49[1] - *v49);
          v51 = v46 - v47;
          v52 = v51 - v50;
          if (v51 > v50)
          {
            if (v52 < v51)
            {
              do
              {
                if ((*(*v121[26] + 136))(v121[26], &v122, v52 - 1))
                {
                  break;
                }

                ++v52;
              }

              while (v52 < v123 - v122);
            }

            v53 = v44;
            if (qword_1EB5E0F40 != -1)
            {
              dispatch_once(&qword_1EB5E0F40, &unk_1F2430F20);
            }

            v54 = qword_1EB5E0F38;
            if (os_log_type_enabled(qword_1EB5E0F38, OS_LOG_TYPE_INFO))
            {
              *buf = 134218496;
              *&buf[4] = v123 - v122 - v52;
              *&buf[12] = 2048;
              *&buf[14] = v123 - v122;
              *&buf[22] = 2048;
              v129 = v52;
              _os_log_impl(&dword_1AE5C8000, v54, OS_LOG_TYPE_INFO, "limiting forward passes to %ld, with contextLength=%zu and priorContextLength=%zu", buf, 0x20u);
            }

            v51 = v123 - v122 - v52;
            v44 = v53;
          }

          if (v43 >= v44)
          {
            v55 = v43;
            v56 = (v43 >> 3) + 1;
            if (v56 >> 61)
            {
              sub_1AE5CBB70();
            }

            if (v44 >> 2 > v56)
            {
              v56 = v44 >> 2;
            }

            if (v56)
            {
              if (!(v56 >> 61))
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v57 = (8 * (v43 >> 3));
            *v57 = v51;
            v43 = (v57 + 1);
            memcpy(0, 0, v55);
            v38 = v121;
            v44 = 0;
          }

          else
          {
            *v43 = v51;
            v43 += 8;
            v38 = v121;
          }

          v47 = v122;
          v46 = v123;
          v58 = v45 * v42;
          v59 = v38[52];
          if (!v51)
          {
            goto LABEL_80;
          }

          v60 = v59 + 4 * v58;
          *(v60 + 8) = 0;
          *v60 = 1065353216;
          v61 = v51 - 1;
          if (v51 == 1)
          {
            goto LABEL_80;
          }

          v62 = v46 - v47;
          if (v51 <= 0x10 || (v70 = v59 + v116 * v42, v71 = !is_mul_ok(v51 - 2, 0xCuLL), v72 = 12 * (v51 - 2), v70 + 20 + v72 < (v70 + 20)) || v70 + 16 + v72 < (v70 + 16) || v70 + 12 + v72 < (v70 + 12))
          {
            v63 = 1;
          }

          else
          {
            v63 = 1;
            if (!v71)
            {
              v73 = v61 & 0xFFFFFFFFFFFFFFF8;
              v74 = (v59 + v48);
              v75 = &v47[v62 - v51 + 5];
              v76 = v61 & 0xFFFFFFFFFFFFFFF8;
              v77 = xmmword_1AE79A750;
              v78 = xmmword_1AE79A740;
              v79 = 0u;
              do
              {
                v80 = vcvtq_f32_u32(v75[-1]);
                v81 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v77)), vcvtq_f64_u64(v78));
                v132.val[0] = vcvtq_f32_u32(*v75);
                v132.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(v77, v109))), vcvtq_f64_u64(vaddq_s64(v78, v109)));
                v132.val[2] = 0u;
                v82 = v74 - 12;
                vst3q_f32(v82, *(&v79 - 2));
                vst3q_f32(v74, v132);
                v78 = vaddq_s64(v78, v108);
                v77 = vaddq_s64(v77, v108);
                v74 += 24;
                v75 += 2;
                v76 -= 8;
              }

              while (v76);
              if (v61 == v73)
              {
                goto LABEL_80;
              }

              v63 = v73 | 1;
            }
          }

          v64 = &v47[v62 - v51];
          v65 = v59 + v41 + 12 * v63;
          do
          {
            *v65 = v64[v63];
            *(v65 + 4) = v63;
            *(v65 + 8) = 0;
            ++v63;
            v65 += 12;
          }

          while (v51 != v63);
LABEL_80:
          v66 = *v49;
          v67 = v49[1] - *v49;
          if (v51 < v67 + v51)
          {
            v68 = v59 + v41 + 12 * v51;
            do
            {
              if (v51)
              {
                v69 = *v66;
              }

              else
              {
                v69 = 1.0;
              }

              *v68 = v69;
              *(v68 + 4) = v51;
              *(v68 + 8) = 0;
              ++v51;
              ++v66;
              v68 += 12;
              --v67;
            }

            while (v67);
          }

          if (*(v59 + 4 * v58) != 1.0)
          {
            __assert_rtn("_copyInput", "CoreLMInferenceEngine.cpp", 148, "m_inputs[offset] == kMontrealTokenIDBeginningOfSentence");
          }

          ++v42;
          v37 = v118;
          v48 += v116;
          v41 += v116;
          if (v42 >= v120)
          {
            v39 = v115;
            goto LABEL_98;
          }
        }
      }

      v43 = 0;
LABEL_98:
      if (v120 != v43 >> 3)
      {
        __assert_rtn("conditionalProbability", "CoreLMInferenceEngine.cpp", 208, "truncatedContextLengths.size() == numInputs");
      }

      v83 = v38[49];
      v84 = v37 * v37;
      if ((v111 * v37) >= 1)
      {
        memset_pattern16(v83, &unk_1AE79A810, 4 * v84 * v39);
      }

      if (v39 && v37)
      {
        v85 = 0;
        v86 = 4 * v84;
        do
        {
          v87 = 4 * v37;
          v88 = v83;
          v89 = v37;
          do
          {
            bzero(v88, v87);
            v88 += 4 * v37 + 4;
            v87 -= 4;
            --v89;
          }

          while (v89);
          ++v85;
          v83 += v86;
        }

        while (v85 != v115);
      }

      a1 = v121;
      v90 = v121[52];
      buf[23] = 5;
      strcpy(buf, "input");
      sub_1AE74AEBC(v121 + 28, v90, v37, buf, 3, v115);
      v91 = v114;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v92 = v121[49];
      buf[23] = 7;
      strcpy(buf, "qk_mask");
      sub_1AE74AEBC(v121 + 28, v92, v37, buf, v37, v115);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      *buf = 0;
      sub_1AE757424(v121 + 28, 0);
      v93 = v121[41];
      if (v93 != v121[25])
      {
        goto LABEL_145;
      }

      v127 = v93 * v111;
      v126 = 6;
      strcpy(bytes, "output");
      sub_1AE699FFC(buf, v121 + 28, &v127, bytes);
      if (v126 < 0)
      {
        operator delete(*bytes);
      }

      if (v121[41] != v121[25])
      {
LABEL_145:
        __assert_rtn("outputSize", "CoreLMInferenceEngine.cpp", 232, "m_coreOutputSize == MontrealInferenceEngine::outputSize()");
      }

      if (v120)
      {
        v94 = 0;
        do
        {
          v95 = a1[25];
          if (a1[41] != v95)
          {
            __assert_rtn("outputSize", "CoreLMInferenceEngine.cpp", 232, "m_coreOutputSize == MontrealInferenceEngine::outputSize()");
          }

          v117 = v94;
          if (*(v119 + 24 * v94 + 8) != *(v119 + 24 * v94))
          {
            v96 = a1[25];
            if (a1[41] == v96)
            {
              operator new();
            }

            __assert_rtn("outputSize", "CoreLMInferenceEngine.cpp", 232, "m_coreOutputSize == MontrealInferenceEngine::outputSize()");
          }

          v91 = v114;
          v98 = v114[1];
          v97 = v114[2];
          if (v98 >= v97)
          {
            v99 = 0xAAAAAAAAAAAAAAABLL * ((v98 - *v114) >> 3);
            v100 = v99 + 1;
            if (v99 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1AE5CBB70();
            }

            v101 = 0xAAAAAAAAAAAAAAABLL * ((v97 - *v114) >> 3);
            if (2 * v101 > v100)
            {
              v100 = 2 * v101;
            }

            if (v101 >= 0x555555555555555)
            {
              v102 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v102 = v100;
            }

            v130 = v114;
            if (v102)
            {
              if (v102 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1AE5CB09C();
            }

            v103 = 24 * v99;
            *buf = 0;
            *&buf[8] = v103;
            *&buf[16] = 24 * v99;
            v129 = 0;
            *(v103 + 8) = 0;
            *(v103 + 16) = 0;
            *v103 = 0;
            v104 = *v114;
            v105 = v114[1] - *v114;
            v106 = (24 * v99 - v105);
            memcpy(v106, *v114, v105);
            *v114 = v106;
            v114[1] = 24 * v99 + 24;
            v114[2] = 0;
            if (v104)
            {
              operator delete(v104);
            }

            a1 = v121;
            v114[1] = v103 + 24;
          }

          else
          {
            *v98 = 0;
            v98[1] = 0;
            v98[2] = 0;
            v114[1] = v98 + 3;
          }

          v94 = v117 + 1;
        }

        while (v117 + 1 < v120);
      }

      v113 += v120;
      if (v113 >= v112)
      {
        if (v91[1] - *v91 != v107)
        {
          __assert_rtn("conditionalProbability", "CoreLMInferenceEngine.cpp", 226, "conditionalProbabilities.size() == numQueries");
        }

        break;
      }
    }
  }

  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }
}

void sub_1AE74AABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v37 = *(v35 - 216);
  if (!v37)
  {
    _Unwind_Resume(exception_object);
  }

  *(v35 - 208) = v37;
  operator delete(v37);
  _Unwind_Resume(exception_object);
}

void sub_1AE74AC7C(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_1AE5CBB70();
    }

    v12 = v7 - v10;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 62))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v14 = __src - v10;
    v15 = (__src - v10) >> 2;
    v16 = (4 * v15);
    if (!v15)
    {
      if (v14 < 1)
      {
        v19 = v14 >> 1;
        if (v10 == __src)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        if (!(v20 >> 62))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v16 = (v16 - (((v14 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, *(a1 + 8) - __src);
    v21 = *a1;
    v22 = v16 + *(a1 + 8) - __src + 4;
    *(a1 + 8) = __src;
    v23 = (__src - v21);
    v24 = v16 - (__src - v21);
    memcpy(v24, v21, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v22;
    *(a1 + 16) = 0;
    if (v25)
    {

      operator delete(v25);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v17 = v9 <= a3 || __src > a3;
    v18 = 4;
    if (v17)
    {
      v18 = 0;
    }

    *__src = *&a3[v18];
  }
}

void sub_1AE74AEA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE74AEBC(uint64_t *a1, uint64_t a2, uint64_t a3, const void **a4, uint64_t a5, uint64_t a6)
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = a1[1];
  v12 = a1[2];
  if (v11 != v12)
  {
    v13 = *(a4 + 23);
    if (v13 >= 0)
    {
      v14 = *(a4 + 23);
    }

    else
    {
      v14 = a4[1];
    }

    if (v13 >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    while (1)
    {
      v16 = *(v11 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v11 + 8);
      }

      if (v16 == v14)
      {
        v18 = v17 >= 0 ? v11 : *v11;
        if (!memcmp(v18, v15, v14))
        {
          break;
        }
      }

      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_69;
      }
    }
  }

  if (v11 == v12)
  {
LABEL_69:
    if (qword_1ED9ACA10 != -1)
    {
      dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
    }

    v39 = qword_1ED9AC9E0;
    if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
    {
      if (*(a4 + 23) >= 0)
      {
        v40 = a4;
      }

      else
      {
        v40 = *a4;
      }

      LODWORD(v51) = 136315138;
      *(&v51 + 4) = v40;
      _os_log_error_impl(&dword_1AE5C8000, v39, OS_LOG_TYPE_ERROR, "%s() not found as neural network input", &v51, 0xCu);
    }

    __assert_rtn("setInputTensorANE", "NeuralNetwork.hpp", 204, "false");
  }

  v19 = a5 * a3 * a6;
  v20 = 4 * v19;
  if (v19)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *&v51 = a4;
  v21 = sub_1AE69A5B4((a1 + 7), a4);
  v22 = v21[7];
  if (v22)
  {
    v21[8] = v22;
    operator delete(v22);
    v21[7] = 0;
    v21[8] = 0;
    v21[9] = 0;
  }

  v21[7] = 0;
  v21[8] = 0;
  v21[9] = 0;
  *&v51 = a4;
  v23 = sub_1AE69A5B4((a1 + 7), a4)[7];
  sub_1AE74BC94(&v51, "ShapeDimension");
  LODWORD(valuePtr) = 5;
  *(&v51 + 1) = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!*(&v51 + 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE74BC94(&v52, "Width");
  valuePtr = a5;
  v53 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (!v53)
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v42, "Could not construct");
    __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE74BC94(&v54, "Height");
  LODWORD(valuePtr) = 1;
  v55 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v55)
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v43, "Could not construct");
    __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE74BC94(&v56, "Channel");
  valuePtr = a3;
  cf = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  if (!cf)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v44, "Could not construct");
    __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v46 = &v51;
  v47 = 4;
  v24 = sub_1AE66A370(&v46);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (*(&v51 + 1))
  {
    CFRelease(*(&v51 + 1));
  }

  if (v51)
  {
    CFRelease(v51);
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v25 = off_1EB5E0F50;
  v49 = off_1EB5E0F50;
  if (!off_1EB5E0F50)
  {
    *&v51 = MEMORY[0x1E69E9820];
    *(&v51 + 1) = 0x40000000;
    v52 = sub_1AE74BE14;
    v53 = &unk_1E7A2FA98;
    v54 = &v46;
    sub_1AE74BE14(&v51);
    v25 = *(v47 + 24);
  }

  _Block_object_dispose(&v46, 8);
  if (!v25)
  {
    goto LABEL_68;
  }

  v26 = v25(v24);
  CFRelease(v24);
  *&v51 = a4;
  v27 = sub_1AE69A75C((a1 + 10), a4);
  v28 = v27[7];
  if (v28)
  {
    CFRelease(v28);
  }

  v27[7] = v26;
  *&v51 = a4;
  v29 = sub_1AE69A75C((a1 + 10), a4)[7];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v30 = off_1EB5E0F58;
  v49 = off_1EB5E0F58;
  if (!off_1EB5E0F58)
  {
    *&v51 = MEMORY[0x1E69E9820];
    *(&v51 + 1) = 0x40000000;
    v52 = sub_1AE74B990;
    v53 = &unk_1E7A2FAC0;
    v54 = &v46;
    sub_1AE74B990(&v51);
    v30 = *(v47 + 24);
  }

  _Block_object_dispose(&v46, 8);
  if (!v30)
  {
    goto LABEL_68;
  }

  v30(v29, v23, v20);
  valuePtr = 0;
  v31 = *a1;
  v32 = *(a4 + 23);
  v33 = v32 >= 0 ? a4 : *a4;
  if (v33)
  {
    if (v32 >= 0)
    {
      v34 = *(a4 + 23);
    }

    else
    {
      v34 = a4[1];
    }

    v35 = CFStringCreateWithBytes(0, v33, v34, 0x8000100u, 0);
    v45 = v35;
    if (!v35)
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](v36, "Could not construct");
      __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v35 = 0;
    v45 = 0;
  }

  *&v51 = a4;
  v37 = sub_1AE69A75C((a1 + 10), a4)[7];
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v38 = off_1EB5E0F60;
  v49 = off_1EB5E0F60;
  if (!off_1EB5E0F60)
  {
    *&v51 = MEMORY[0x1E69E9820];
    *(&v51 + 1) = 0x40000000;
    v52 = sub_1AE74BAD8;
    v53 = &unk_1E7A2FAE8;
    v54 = &v46;
    sub_1AE74BAD8(&v51);
    v38 = *(v47 + 24);
  }

  _Block_object_dispose(&v46, 8);
  if (!v38)
  {
LABEL_68:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v38(v31, v35, v37, &valuePtr);
  if (v45)
  {
    CFRelease(v45);
  }

  if (valuePtr)
  {
    operator new();
  }
}

void sub_1AE74B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE631068(va);
  _Unwind_Resume(a1);
}

void sub_1AE74B784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  _Block_object_dispose(va1, 8);
  sub_1AE63109C(va);
  _Unwind_Resume(a1);
}

void *sub_1AE74B990(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0F48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE74BC20;
    v6[4] = &unk_1E7A2FA70;
    v6[5] = v6;
    v7 = xmmword_1E7A2FA58;
    v8 = 0;
    qword_1EB5E0F48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0F48;
    if (qword_1EB5E0F48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0F48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkTensorAppendData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0F58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1AE74BAD8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0F48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE74BC20;
    v6[4] = &unk_1E7A2FA70;
    v6[5] = v6;
    v7 = xmmword_1E7A2FA58;
    v8 = 0;
    qword_1EB5E0F48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0F48;
    if (qword_1EB5E0F48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0F48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkSetInputTensor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0F60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1AE74BC20()
{
  result = _sl_dlopen();
  qword_1EB5E0F48 = result;
  return result;
}

CFStringRef *sub_1AE74BC94(CFStringRef *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AE5DB4F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *a1 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_1AE74BDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1AE69AFD0(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1AE74BE14(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB5E0F48)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = sub_1AE74BC20;
    v6[4] = &unk_1E7A2FA70;
    v6[5] = v6;
    v7 = xmmword_1E7A2FA58;
    v8 = 0;
    qword_1EB5E0F48 = _sl_dlopen();
    v3 = v6[0];
    v2 = qword_1EB5E0F48;
    if (qword_1EB5E0F48)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    v5 = v2;
    free(v3);
    v2 = v5;
    goto LABEL_5;
  }

  v2 = qword_1EB5E0F48;
LABEL_5:
  result = dlsym(v2, "MRLNeuralNetworkTensorCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB5E0F50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

os_log_t sub_1AE74BF5C()
{
  result = os_log_create("com.apple.LanguageModeling", "CoreLMInferenceEngine");
  qword_1EB5E0F38 = result;
  return result;
}

void sub_1AE74BF8C(uint64_t a1)
{
  sub_1AE757904((a1 + 16));

  sub_1AE757904((a1 + 224));
}

uint64_t sub_1AE74BFC8(uint64_t a1)
{
  result = sub_1AE698554((a1 + 224));
  if (result)
  {

    return sub_1AE698554((a1 + 16));
  }

  return result;
}

uint64_t sub_1AE74C014(uint64_t a1)
{
  result = sub_1AE698800((a1 + 224));
  if (result)
  {

    return sub_1AE698800((a1 + 16));
  }

  return result;
}

uint64_t sub_1AE74C060(uint64_t a1)
{
  result = *(a1 + 328);
  if (result != *(a1 + 200))
  {
    __assert_rtn("outputSize", "CoreLMInferenceEngine.cpp", 232, "m_coreOutputSize == MontrealInferenceEngine::outputSize()");
  }

  return result;
}

void sub_1AE74C0A4(uint64_t a1)
{
  sub_1AE74C0DC(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE74C0DC(uint64_t a1)
{
  *a1 = &unk_1F2430E50;
  v2 = *(a1 + 416);
  if (v2)
  {
    *(a1 + 424) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 392);
  if (v3)
  {
    *(a1 + 400) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 360);
  if (v4)
  {
    *(a1 + 368) = v4;
    operator delete(v4);
  }

  sub_1AE6E0FEC(*(a1 + 344));
  sub_1AE69B4C4(a1 + 224);
  v5 = *(a1 + 216);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  *a1 = &unk_1F2430ED8;
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(*(a1 + 144));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(*(a1 + 120));
    goto LABEL_13;
  }

  operator delete(*(a1 + 168));
  if (*(a1 + 167) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (*(a1 + 143) < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1AE69B4C4(a1 + 16);
  return a1;
}

void sub_1AE74C210(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1AE5CBB70();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1AE74C314(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 16;
  do
  {
    v3 = *(v2 + 8 * v1);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      sub_1AE74C314(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(v2 + 8 * v1) & 0xFFFFFFFFFFFFFFFCLL));
    }

    ++v1;
  }

  while (v1 != 256);
}

void sub_1AE74C398(uint64_t a1, float *a2)
{
  if (a2)
  {
    v4 = (a2 + 5);
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 2);
    v7 = *a2;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0.0;
  }

  if (!*(a1 + 2084))
  {
    v11[4] = v2;
    v11[5] = v3;
    v11[0] = 0;
    v11[1] = 0;
    v10 = 0;
    if (v6)
    {
      if ((v5 - 1) <= 0x3FE)
      {
        v9 = 0;
        sub_1AE74C450(a1, a1, v4, v5, 0, v6, &v9, &v10, v7, v11);
        if (v10 == 2)
        {
          ++*(a1 + 2064);
        }
      }
    }
  }
}

void sub_1AE74C450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, float *a7, _DWORD *a8, float a9, void *a10)
{
  if (a5 >= a4)
  {
    *a8 = 1;
    v14 = *(a2 + 8);
    if (v14 == 0.0)
    {
      *a8 = 2;
    }

    v15 = v14 + a9;
    *(a2 + 12) = a6;
    *(a2 + 4) = v15;
    *(a2 + 8) = v15;
    if (a10)
    {
      v16 = a10[1];
      if (v16)
      {
        v15 = v16(*a10, a4, a6);
      }
    }

    *(a2 + 4) = v15;
    *a7 = v15;
  }

  else
  {
    v12 = (a3 + a5);
    v13 = *(a2 + 16 + 8 * *v12);
    if ((v13 & 3) == 2)
    {
      v31 = v13 & 0xFFFFFFFFFFFFFFFCLL;
      sub_1AE74C65C(a1, &v31, a3, a4, a5 + 1, a6, a9, a7, a8, a10);
      if (v18 >= *(a1 + 2092))
      {
        v19 = sub_1AE74CAA4(a1, v31, a7, a10) | 1;
      }

      else
      {
        v19 = v31 | 2;
      }
    }

    else
    {
      if ((v13 & 3) == 1)
      {
        sub_1AE74C450(a1, v13 & 0xFFFFFFFFFFFFFFFCLL);
        goto LABEL_19;
      }

      v20 = a6;
      v22 = a9;
      if (a10)
      {
        v23 = a10[1];
        v22 = a9;
        if (v23)
        {
          v24 = a9;
          v25 = a4;
          v26 = a5;
          v27 = v23(*a10, a4, a6);
          a5 = v26;
          LODWORD(a4) = v25;
          v22 = v27;
          a9 = v24;
        }
      }

      *a7 = v22;
      v28 = ~a5 + a4;
      v29 = a9;
      v30 = malloc_type_calloc(1uLL, v28 + 27, 0x1020040CBE955A8uLL);
      memcpy((v30 + 26), v12 + 1, v28);
      *(v30 + 26 + v28) = 0;
      *(v30 + 24) = v28;
      *(v30 + 20) = v20;
      *(v30 + 12) = v22;
      *(v30 + 16) = v29;
      *(v30 + 8) = v22;
      *v30 = 0;
      v19 = v30 | 2;
      *a8 = 2;
    }

    *(a2 + 16 + 8 * *v12) = v19;
  }

LABEL_19:
  if (*a7 > *a2)
  {
    *a2 = *a7;
  }
}

void sub_1AE74C65C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, float a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *a2;
  if (*(a1 + 2092) != -1)
  {
    operator new();
  }

  v14 = (a3 + a5);
  if (v13)
  {
    v15 = *(v13 + 24);
    if (v15 + a5 == a4 && !memcmp(v14, (v13 + 26), v15))
    {
      *(v13 + 20) = a6;
      v16 = *(v13 + 16) + a7;
      *(v13 + 12) = v16;
      *(v13 + 16) = v16;
      if (a10)
      {
        v17 = a10[1];
        if (v17)
        {
          v16 = v17(*a10, a4, a6);
        }
      }

      *(v13 + 12) = v16;
    }

    operator new();
  }

  v18 = a7;
  if (a10)
  {
    v19 = a10[1];
    v18 = a7;
    if (v19)
    {
      v18 = v19(*a10, a4, a6, a7);
    }
  }

  v20 = a4 - a5;
  v21 = malloc_type_calloc(1uLL, v20 + 27, 0x1020040CBE955A8uLL);
  memcpy(v21 + 26, v14, v20);
  v21[v20 + 26] = 0;
  *(v21 + 12) = a4 - a5;
  *(v21 + 5) = a6;
  *(v21 + 3) = v18;
  *(v21 + 4) = a7;
  *(v21 + 2) = v18;
  *v21 = 0;
  operator new();
}

void sub_1AE74CA78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

float *sub_1AE74CAA4(uint64_t a1, unsigned __int16 *a2, float *a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x810uLL, 0x1000040A9A4BCADuLL);
  v9 = v8;
  *a3 = 0.0;
  if (a2)
  {
    v10 = (v8 + 4);
    do
    {
      v24 = 0.0;
      v12 = a2[12];
      v13 = *(a2 + 5);
      v15 = *(a2 + 3);
      v14 = *(a2 + 4);
      if (a2[12])
      {
        v16 = *&v10[8 * *(a2 + 26)];
        if (v16)
        {
          v25 = v16 & 0xFFFFFFFFFFFFFFFCLL;
          sub_1AE74C65C(a1, &v25, (a2 + 13), v12, 1u, v13, v14, &v24, 0, a4);
          v17 = v25;
          if (v18 >= *(a1 + 2092))
          {
            v17 = sub_1AE74CAA4(a1, v25, &v24, a4);
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          *&v10[8 * *(a2 + 26)] = v19 | v17;
          v15 = v24;
        }

        else
        {
          v20 = (v12 - 1);
          v21 = malloc_type_calloc(1uLL, v20 + 27, 0x1020040CBE955A8uLL);
          memcpy((v21 + 26), a2 + 27, v20);
          *(v21 + 26 + v20) = 0;
          *(v21 + 24) = v20;
          *(v21 + 20) = v13;
          *(v21 + 12) = v15;
          *(v21 + 16) = v14;
          *(v21 + 8) = v15;
          *v21 = 0;
          *&v10[8 * *(a2 + 26)] = v21 | 2;
        }
      }

      else
      {
        v9[1] = v15;
        v9[2] = v14;
        *(v9 + 3) = v13;
      }

      *a3 = fmaxf(v15, *a3);
      v11 = *a2;
      free(a2);
      a2 = v11;
    }

    while (v11);
    v22 = *a3;
  }

  else
  {
    v22 = 0.0;
  }

  *v9 = v22;
  return v9;
}

uint64_t sub_1AE74CC60(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v122 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(*v9, v10->i64[0]);
      if (result)
      {
        v77 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v80 = &v10->i64[1];
      v82 = v10 == a2 || v80 == a2;
      if (a5)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v10;
          do
          {
            v87 = *v84;
            v86 = v84[1];
            v84 = v80;
            result = (*a3)(v86, v87);
            if (result)
            {
              v88 = *v84;
              v89 = v83;
              do
              {
                *(&v10->i64[1] + v89) = *(v10->i64 + v89);
                if (!v89)
                {
                  v85 = v10;
                  goto LABEL_120;
                }

                result = (*a3)(v88, *(&v10->i64[-1] + v89));
                v89 -= 8;
              }

              while ((result & 1) != 0);
              v85 = (&v10->i64[1] + v89);
LABEL_120:
              *v85 = v88;
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v117 = v8->i64[0];
          v116 = v8->i64[1];
          v8 = v80;
          result = (*a3)(v116, v117);
          if (result)
          {
            v118 = v8->i64[0];
            v119 = v8;
            do
            {
              v120 = v119;
              v121 = *--v119;
              *v120 = v121;
              result = (*a3)(v118, *(v120 - 2));
            }

            while ((result & 1) != 0);
            *v119 = v118;
          }

          v80 = &v8->i64[1];
        }

        while (&v8->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v90 = v12 >> 1;
        v124 = v12 >> 1;
        do
        {
          if (v124 >= v90)
          {
            v92 = (2 * (v90 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v93 = &v8->i64[v92];
            if (2 * (v90 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11 && (*a3)(*v93, v93[1]))
            {
              ++v93;
              v92 = 2 * (v90 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v94 = &v8->i64[v90];
            result = (*a3)(*v93, *v94);
            if ((result & 1) == 0)
            {
              v95 = *v94;
              do
              {
                v96 = v93;
                *v94 = *v93;
                if (v124 < v92)
                {
                  break;
                }

                v97 = (2 * (v92 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v93 = &v8->i64[v97];
                v98 = 2 * v92 + 2;
                if (v98 < v11 && (*a3)(*v93, v93[1]))
                {
                  ++v93;
                  v97 = v98;
                }

                result = (*a3)(*v93, v95);
                v94 = v96;
                v92 = v97;
              }

              while (!result);
              *v96 = v95;
            }
          }

          v91 = v90-- <= 0;
        }

        while (!v91);
        v99 = v122;
        do
        {
          v100 = v99;
          v101 = 0;
          v125 = v8->i64[0];
          v102 = v8;
          do
          {
            v106 = &v102[v101];
            v105 = v106 + 1;
            v107 = (2 * v101) | 1;
            v108 = 2 * v101 + 2;
            if (v108 < v11)
            {
              v104 = v106[2];
              v103 = v106 + 2;
              result = (*a3)(*(v103 - 1), v104);
              if (result)
              {
                v105 = v103;
                v101 = v108;
              }

              else
              {
                v101 = v107;
              }
            }

            else
            {
              v101 = (2 * v101) | 1;
            }

            *v102 = *v105;
            v102 = v105;
          }

          while (v101 <= ((v11 - 2) >> 1));
          v99 = v100 - 1;
          if (v105 == v100 - 1)
          {
            *v105 = v125;
          }

          else
          {
            *v105 = *v99;
            *v99 = v125;
            v109 = (v105 - v8 + 8) >> 3;
            v91 = v109 < 2;
            v110 = v109 - 2;
            if (!v91)
            {
              v111 = v110 >> 1;
              v112 = &v8->i64[v110 >> 1];
              result = (*a3)(*v112, *v105);
              if (result)
              {
                v113 = *v105;
                do
                {
                  v114 = v112;
                  *v105 = *v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v8->i64[v111];
                  result = (*a3)(*v112, v113);
                  v105 = v114;
                }

                while ((result & 1) != 0);
                *v114 = v113;
              }
            }
          }

          v91 = v11-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = *a3;
    if (v11 < 0x81)
    {
      v18 = (v14)(v10->i64[0], v10->i64[v13]);
      v19 = (*a3)(*v9, v10->i64[0]);
      if (v18)
      {
        v20 = v10->i64[v13];
        if (v19)
        {
          v10->i64[v13] = *v9;
          *v9 = v20;
        }

        else
        {
          v10->i64[v13] = v10->i64[0];
          v10->i64[0] = v20;
          if ((*a3)(*v9))
          {
            v32 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v32;
          }
        }
      }

      else if (v19)
      {
        v23 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v23;
        if ((*a3)(v10->i64[0], v10->i64[v13]))
        {
          v24 = v10->i64[v13];
          v10->i64[v13] = v10->i64[0];
          v10->i64[0] = v24;
        }
      }

      goto LABEL_55;
    }

    v15 = (v14)(v10->i64[v13], v10->i64[0]);
    v16 = (*a3)(*v9, v10->i64[v13]);
    if (v15)
    {
      v17 = v10->i64[0];
      if (v16)
      {
        v10->i64[0] = *v9;
        *v9 = v17;
      }

      else
      {
        v10->i64[0] = v10->i64[v13];
        v10->i64[v13] = v17;
        if ((*a3)(*v9))
        {
          v25 = v10->i64[v13];
          v10->i64[v13] = *v9;
          *v9 = v25;
        }
      }
    }

    else if (v16)
    {
      v21 = v10->i64[v13];
      v10->i64[v13] = *v9;
      *v9 = v21;
      if ((*a3)(v10->i64[v13], v10->i64[0]))
      {
        v22 = v10->i64[0];
        v10->i64[0] = v10->i64[v13];
        v10->i64[v13] = v22;
      }
    }

    v26 = v13 - 1;
    v27 = (*a3)(v8->i64[v13 - 1], v8->i64[1]);
    v28 = (*a3)(a2[-1].i64[0], v8->i64[v13 - 1]);
    if (v27)
    {
      v29 = v8->i64[1];
      if (v28)
      {
        v8->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v29;
      }

      else
      {
        v8->i64[1] = v8->i64[v26];
        v8->i64[v26] = v29;
        if ((*a3)(a2[-1].i64[0]))
        {
          v33 = v8->i64[v26];
          v8->i64[v26] = a2[-1].i64[0];
          a2[-1].i64[0] = v33;
        }
      }
    }

    else if (v28)
    {
      v30 = v8->i64[v26];
      v8->i64[v26] = a2[-1].i64[0];
      a2[-1].i64[0] = v30;
      if ((*a3)(v8->i64[v26], v8->i64[1]))
      {
        v31 = v8->i64[1];
        v8->i64[1] = v8->i64[v26];
        v8->i64[v26] = v31;
      }
    }

    v34 = a2;
    v35 = v13 + 1;
    v36 = (*a3)(v8->i64[v13 + 1], v8[1].i64[0]);
    v37 = (*a3)(v34[-2].i64[1], v8->i64[v13 + 1]);
    if (v36)
    {
      v38 = v8[1].i64[0];
      if (v37)
      {
        v8[1].i64[0] = v122[-2].i64[1];
        v122[-2].i64[1] = v38;
      }

      else
      {
        v8[1].i64[0] = v8->i64[v35];
        v8->i64[v35] = v38;
        if ((*a3)(v122[-2].i64[1]))
        {
          v41 = v8->i64[v35];
          v8->i64[v35] = v122[-2].i64[1];
          v122[-2].i64[1] = v41;
        }
      }
    }

    else if (v37)
    {
      v39 = v8->i64[v35];
      v8->i64[v35] = v122[-2].i64[1];
      v122[-2].i64[1] = v39;
      if ((*a3)(v8->i64[v35], v8[1].i64[0]))
      {
        v40 = v8[1].i64[0];
        v8[1].i64[0] = v8->i64[v35];
        v8->i64[v35] = v40;
      }
    }

    v42 = (*a3)(v8->i64[v13], v8->i64[v26]);
    v43 = (*a3)(v8->i64[v35], v8->i64[v13]);
    if ((v42 & 1) == 0)
    {
      v45 = v8->i64[v13];
      if (!v43)
      {
        goto LABEL_54;
      }

      v8->i64[v13] = v8->i64[v35];
      v8->i64[v35] = v45;
      v46 = (*a3)();
      v45 = v8->i64[v13];
      if (!v46)
      {
        goto LABEL_54;
      }

      v47 = v8->i64[v26];
      v8->i64[v26] = v45;
      v8->i64[v13] = v47;
      goto LABEL_53;
    }

    v44 = v8->i64[v26];
    if (v43)
    {
      v8->i64[v26] = v8->i64[v35];
      v8->i64[v35] = v44;
      v45 = v8->i64[v13];
    }

    else
    {
      v8->i64[v26] = v8->i64[v13];
      v8->i64[v13] = v44;
      v48 = (*a3)(v8->i64[v35]);
      v45 = v8->i64[v13];
      if (v48)
      {
        v47 = v8->i64[v35];
        v8->i64[v13] = v47;
        v8->i64[v35] = v45;
LABEL_53:
        v45 = v47;
      }
    }

LABEL_54:
    a2 = v122;
    v49 = v8->i64[0];
    v8->i64[0] = v45;
    v8->i64[v13] = v49;
LABEL_55:
    --a4;
    v50 = v8->i64[0];
    if (a5 & 1) != 0 || (v51 = (*a3)(v8[-1].i64[1], v8->i64[0]), v50 = v8->i64[0], (v51))
    {
      v52 = v8;
      do
      {
        v53 = v52;
        v54 = v52->i64[1];
        v52 = (v52 + 8);
      }

      while (((*a3)(v54, v50) & 1) != 0);
      v55 = a2;
      if (v53 == v8)
      {
        v55 = a2;
        do
        {
          if (v52 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while (((*a3)(v57, v50) & 1) == 0);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (!(*a3)(v56, v50));
      }

      if (v52 < v55)
      {
        v58 = v52;
        v59 = v55;
        do
        {
          v60 = v58->i64[0];
          v58->i64[0] = v59->i64[0];
          v59->i64[0] = v60;
          do
          {
            v53 = v58;
            v61 = v58->i64[1];
            v58 = (v58 + 8);
          }

          while (((*a3)(v61, v50) & 1) != 0);
          do
          {
            v62 = v59[-1].i64[1];
            v59 = (v59 - 8);
          }

          while (!(*a3)(v62, v50));
        }

        while (v58 < v59);
      }

      if (v53 != v8)
      {
        v8->i64[0] = v53->i64[0];
      }

      v53->i64[0] = v50;
      a2 = v122;
      if (v52 < v55)
      {
        goto LABEL_76;
      }

      v63 = sub_1AE74D8B0(v8, v53, a3);
      v10 = &v53->u64[1];
      result = sub_1AE74D8B0(&v53->i64[1], v122, a3);
      if (result)
      {
        a2 = v53;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_76:
        result = sub_1AE74CC60(v8, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v53->u64[1];
      }
    }

    else
    {
      result = (*a3)(v8->i64[0], *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v50, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v8->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v50, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v50, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v50, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v50, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        v8->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v50;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return sub_1AE74D75C(v10, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      sub_1AE74D75C(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(*v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v75 = v10->i64[1];
      v74 = v10[1].i64[0];
      v76 = v10->i64[0];
      v10->i64[1] = v74;
      v10[1].i64[0] = v75;
      result = (*a3)(v74, v76);
      goto LABEL_162;
    }

    goto LABEL_10;
  }

  v78 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(*v9, v10->i64[1]);
  if ((v78 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v115 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v115;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_162:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v79 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v79;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v79;
    result = (*a3)(*v9);
    if (result)
    {
      v77 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t sub_1AE74D75C(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL sub_1AE74D8B0(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v16;
            if ((*a3)(*(a2 - 1)))
            {
              v23 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v23;
            }
          }

          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_1AE74D75C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1AE74D75C(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_16;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v24 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v24))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *v18))
    {
      v29 = *v25;
      v30 = v26;
      do
      {
        v31 = a1 + v30;
        *(a1 + v30 + 24) = *(a1 + v30 + 16);
        if (v30 == -16)
        {
          v28 = a1;
          goto LABEL_34;
        }

        v30 -= 8;
      }

      while (((*a3)(v29, *(v31 + 1)) & 1) != 0);
      v28 = (a1 + v30 + 24);
LABEL_34:
      *v28 = v29;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v18 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_1AE74DBB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a2 + 12);
  if (v2 == v3)
  {
    return *(a1 + 20) > *(a2 + 20);
  }

  else
  {
    return v2 > v3;
  }
}

uint64_t sub_1AE74DBE0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = 0xFFFFFFFF00000003;
  v7[2] = a2;
  v7[3] = a3;
  if (qword_1EB5E0AA8 != -1)
  {
    dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
  }

  v4 = pthread_getspecific(qword_1EB5E0AB0);
  if (!v4)
  {
    v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    pthread_setspecific(qword_1EB5E0AB0, v4);
  }

  v7[1] = 0;
  *v4 = 0;
  v5 = *(a1 + 2084);
  if (v5)
  {
    return sub_1AE74DCE0(a1, (*(v5 + 4) & 0xFFFFFFFC) + v5, v4, 0, 0, 0, v7);
  }

  else
  {
    return sub_1AE74E000(a1, v4, 0, 0, 0, v7);
  }
}

uint64_t sub_1AE74DCE0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7)
{
  v12 = (a1 + 2084);
  v13 = a5;
  if (a5 <= a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  if (v14 == a5)
  {
LABEL_7:
    v16 = *(a2 + 1024);
    if (v16)
    {
      v17 = *(a2 + 1032);
      v18 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v18[4] = a4;
      *(v18 + a4 + 20) = 0;
      memcpy(v18 + 5, a3, a4);
      v18[1] = 1065353216;
      v18[2] = v16;
      *v18 = v17;
      v18[3] = 1;
      if (a7)
      {
        if (*a7 == 1)
        {
          *(a7 + 4) = v16;
          *(a7 + 8) = v17;
          v20 = 1;
          v19 = a6;
        }

        else
        {
          v19 = a6;
          if (*a7)
          {
            v30 = 0;
            v25 = *(a7 + 24);
            if (v25)
            {
              v25(*(a7 + 16), v18, &v30);
              v19 = a6;
              v20 = v30;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            *(a7 + 4) = v16;
            *(a7 + 8) = v17;
            v20 = 1;
          }
        }
      }

      else
      {
        v20 = 0;
        v19 = a6;
      }

      v26 = v18[3] - 1;
      v18[3] = v26;
      if (!v26)
      {
        free(v18);
        v19 = a6;
      }

      if ((v20 | v19))
      {
        return v20 & 1;
      }
    }

    else if (a6)
    {
      goto LABEL_21;
    }

    v27 = 0;
    while (1)
    {
      v28 = *(a2 + 4 * v27);
      a3[v13] = v27;
      if ((v28 & 3u) > 1uLL)
      {
        if ((v28 & 3) == 2)
        {
          if (sub_1AE74E880(*(a1 + 2068), ((v28 & 0xFFFFFFFC) + *v12), a3, a4 + 1, v13 + 1, 0, a7))
          {
            goto LABEL_40;
          }
        }

        else if (sub_1AE74E448(a1, ((v28 & 0xFFFFFFFC) + *v12), a3, a4 + 1, v13 + 1, 0, a7))
        {
          goto LABEL_40;
        }
      }

      else if (v28 & 3) != 0 && (sub_1AE74DCE0(a1, (v28 & 0xFFFFFFFC) + *v12, a3, a4 + 1, (v13 + 1), 0, a7))
      {
LABEL_40:
        LOBYTE(v20) = 1;
        return v20 & 1;
      }

      if (++v27 == 256)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v15 = *(a2 + 4 * a3[v13]);
    if ((v15 & 3) != 1)
    {
      break;
    }

    a2 = (v15 & 0xFFFFFFFC) + *v12;
    if (v14 == ++v13)
    {
      goto LABEL_7;
    }
  }

  if ((v15 & 3) == 0)
  {
LABEL_21:
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  if ((v15 & 3) == 2)
  {
    v21 = *(a1 + 2068);
    v22 = ((v15 & 0xFFFFFFFC) + *v12);

    return sub_1AE74E880(v21, v22, a3, a4, v13 + 1, a6, a7);
  }

  else
  {
    v24 = ((v15 & 0xFFFFFFFC) + *v12);

    return sub_1AE74E448(a1, v24, a3, a4, v13 + 1, a6, a7);
  }
}

uint64_t sub_1AE74E000(unint64_t a1, _BYTE *a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  v9 = a4;
  if (a4 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (v10 == a4)
  {
LABEL_7:
    v12 = *(a1 + 12);
    if (!v12)
    {
      if (a5)
      {
        goto LABEL_17;
      }

      v14 = v9;
LABEL_26:
      v21 = 0;
      v22 = a1 + 16;
      while (1)
      {
        v23 = *(v22 + 8 * v21);
        a2[v14] = v21;
        if ((v23 & 3) == 1)
        {
          if (sub_1AE74E000(v23 & 0xFFFFFFFFFFFFFFFCLL, a2, a3 + 1, (v9 + 1), 0, a6))
          {
            goto LABEL_32;
          }
        }

        else if (v23 & 3) == 2 && (sub_1AE74E26C((v23 & 0xFFFFFFFFFFFFFFFCLL), a2, a3 + 1, v9 + 1, 0, a6))
        {
LABEL_32:
          LOBYTE(v18) = 1;
          return v18 & 1;
        }

        if (++v21 == 256)
        {
          goto LABEL_17;
        }
      }
    }

    v14 = v9;
    v15 = a1;
    v25 = *(a1 + 4);
    v16 = malloc_type_malloc(v9 + 21, 0x1000040A86A77D5uLL);
    v16[4] = v9;
    *(v16 + v9 + 20) = 0;
    memcpy(v16 + 5, a2, v9);
    *v16 = v25;
    v16[2] = v12;
    v16[3] = 1;
    if (a6)
    {
      if (*a6 != 1)
      {
        v17 = a5;
        a1 = v15;
        if (*a6)
        {
          v26 = 0;
          v24 = *(a6 + 24);
          if (v24)
          {
            v24(*(a6 + 16), v16, &v26);
            a1 = v15;
            v17 = a5;
            v18 = v26;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          *(a6 + 4) = v12;
          *(a6 + 8) = v25;
          v18 = 1;
        }

LABEL_23:
        v20 = v16[3] - 1;
        v16[3] = v20;
        if (!v20)
        {
          free(v16);
          a1 = v15;
          v17 = a5;
        }

        if ((v18 | v17))
        {
          return v18 & 1;
        }

        goto LABEL_26;
      }

      *(a6 + 4) = v12;
      *(a6 + 8) = v25;
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v17 = a5;
    a1 = v15;
    goto LABEL_23;
  }

  while (1)
  {
    v11 = *(a1 + 8 * a2[v9] + 16);
    if ((v11 & 3) != 1)
    {
      break;
    }

    a1 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    if (v10 == ++v9)
    {
      goto LABEL_7;
    }
  }

  if ((v11 & 3) != 2)
  {
LABEL_17:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  return sub_1AE74E26C((v11 & 0xFFFFFFFFFFFFFFFCLL), a2, a3, v9 + 1, a5, a6);
}

uint64_t sub_1AE74E26C(uint64_t *a1, _BYTE *a2, unsigned int a3, int a4, char a5, uint64_t a6)
{
  if (a1)
  {
    v6 = a5;
    v7 = a4;
    v8 = a1;
    v9 = 0;
    v10 = &a2[a4];
    v11 = (a3 - a4);
    v12 = a3;
    while (1)
    {
      v13 = *(v8 + 12);
      if (v11 > v13 || memcmp(v8 + 26, v10, v11) || v11 != v13 && (v6 & 1) != 0)
      {
        goto LABEL_4;
      }

      v14 = (v13 + v7);
      v15 = a3;
      v16 = v14 - a3;
      v17 = v12;
      if (v16 >= 1)
      {
        memcpy(&a2[v12], v8 + v13 - v16 + 26, v16);
        v17 = v14;
        v15 = v14;
      }

      a2[v17] = 0;
      v18 = *(v8 + 5);
      v28 = *(v8 + 12);
      v19 = malloc_type_malloc(v17 + 21, 0x1000040A86A77D5uLL);
      v19[4] = v15;
      *(v19 + v17 + 20) = 0;
      memcpy(v19 + 5, a2, v17);
      *v19 = v28;
      v19[2] = v18;
      v19[3] = 1;
      if (a6)
      {
        v6 = a5;
        if (*a6 == 1)
        {
          goto LABEL_15;
        }

        if (!*a6)
        {
          if (v11 != v13)
          {
            goto LABEL_20;
          }

LABEL_15:
          *(a6 + 4) = v18;
          *(a6 + 8) = v28;
          v9 = 1;
          goto LABEL_20;
        }

        v29 = 0;
        v20 = *(a6 + 24);
        if (v20)
        {
          v20(*(a6 + 16), v19, &v29);
          if (v29)
          {
            v9 = 1;
          }
        }
      }

      else
      {
        v6 = a5;
      }

LABEL_20:
      v21 = v19[3] - 1;
      v19[3] = v21;
      if (!v21)
      {
        free(v19);
      }

      v7 = a4;
      if (v9)
      {
        v9 = 1;
        return v9 & 1;
      }

LABEL_4:
      v8 = *v8;
      if (!v8)
      {
        return v9 & 1;
      }
    }
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1AE74E448(uint64_t a1, int8x8_t *a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7)
{
  v12 = (a1 + 2084);
  if (a5 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = a5;
  }

  if (v13 == a5)
  {
LABEL_13:
    v24 = a2[5].i32[0];
    if (v24)
    {
      v25 = a2[4].i32[1];
      v26 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
      v26[4] = a4;
      *(v26 + a4 + 20) = 0;
      memcpy(v26 + 5, a3, a4);
      v26[1] = 1065353216;
      v26[2] = v24;
      *v26 = v25;
      v26[3] = 1;
      if (a7)
      {
        if (*a7 == 1)
        {
          *(a7 + 4) = v24;
          *(a7 + 8) = v25;
          v28 = 1;
          v27 = a6;
        }

        else
        {
          v27 = a6;
          if (*a7)
          {
            v44 = 0;
            v33 = *(a7 + 24);
            if (v33)
            {
              v33(*(a7 + 16), v26, &v44);
              v27 = a6;
              v28 = v44;
            }

            else
            {
              v28 = 0;
            }
          }

          else
          {
            *(a7 + 4) = v24;
            *(a7 + 8) = v25;
            v28 = 1;
          }
        }
      }

      else
      {
        v28 = 0;
        v27 = a6;
      }

      v34 = v26[3] - 1;
      v26[3] = v34;
      if (!v34)
      {
        free(v26);
        v27 = a6;
      }

      if ((v28 | v27))
      {
        return v28 & 1;
      }
    }

    else if (a6)
    {
      goto LABEL_27;
    }

    v35 = 0;
    while (1)
    {
      v36 = a2[v35 >> 6];
      if ((*&v36 & (1 << v35)) != 0)
      {
        if (v35 > 0x3F)
        {
          v38 = vcnt_s8(*a2);
          v38.i16[0] = vaddlv_u8(v38);
          v37 = v38.i32[0];
          if (v35 >= 0x80)
          {
            v39 = vcnt_s8(a2[1]);
            v39.i16[0] = vaddlv_u8(v39);
            v37 += v39.i32[0];
            if (v35 >> 6 != 2)
            {
              v40 = vcnt_s8(a2[2]);
              v40.i16[0] = vaddlv_u8(v40);
              v37 += v40.i32[0];
            }
          }
        }

        else
        {
          v37 = 0;
        }

        v41 = vcnt_s8((*&v36 & ((1 << v35) - 1)));
        v41.i16[0] = vaddlv_u8(v41);
        v42 = a2[5].i32[v37 + v41.i32[0] + 1];
        a3[v13] = v35;
        if ((v42 & 3u) > 1)
        {
          if ((v42 & 3) == 2)
          {
            if (sub_1AE74E880(*(a1 + 2068), (*v12 + (v42 & 0xFFFFFFFC)), a3, a4 + 1, v13 + 1, 0, a7))
            {
              goto LABEL_52;
            }
          }

          else if (sub_1AE74E448(a1, *v12 + (v42 & 0xFFFFFFFC), a3, a4 + 1, v13 + 1, 0, a7))
          {
            goto LABEL_52;
          }
        }

        else if (v42 & 3) != 0 && (sub_1AE74DCE0(a1, *v12 + (v42 & 0xFFFFFFFC), a3, a4 + 1, v13 + 1, 0, a7))
        {
LABEL_52:
          LOBYTE(v28) = 1;
          return v28 & 1;
        }
      }

      if (++v35 == 256)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v14 = a3[a5];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    v17 = 1 << v14;
    if (((1 << v14) & *&v16) == 0)
    {
      goto LABEL_27;
    }

    if (v14 > 0x3F)
    {
      v19 = vcnt_s8(*a2);
      v19.i16[0] = vaddlv_u8(v19);
      v18 = v19.i32[0];
      if (v15 != 1)
      {
        v20 = vcnt_s8(a2[1]);
        v20.i16[0] = vaddlv_u8(v20);
        v18 += v20.i32[0];
        if (v15 != 2)
        {
          v21 = vcnt_s8(a2[2]);
          v21.i16[0] = vaddlv_u8(v21);
          v18 += v21.i32[0];
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v22 = vcnt_s8(((v17 - 1) & *&v16));
    v22.i16[0] = vaddlv_u8(v22);
    v23 = a2[5].i32[v18 + v22.i32[0] + 1];
    if ((v23 & 3) != 3)
    {
      break;
    }

    a2 = ((v23 & 0xFFFFFFFC) + *v12);
    if (v13 == ++a5)
    {
      goto LABEL_13;
    }
  }

  if ((v23 & 3) == 0)
  {
LABEL_27:
    LOBYTE(v28) = 0;
    return v28 & 1;
  }

  if ((v23 & 3) == 1)
  {

    return (sub_1AE74DCE0)();
  }

  else
  {
    v30 = *(a1 + 2068);
    v31 = ((v23 & 0xFFFFFFFC) + *v12);
    v32 = a5 + 1;

    return sub_1AE74E880(v30, v31, a3, a4, v32, a6, a7);
  }
}

uint64_t sub_1AE74E880(char a1, unsigned int *a2, char *a3, unsigned int a4, int a5, char a6, uint64_t a7)
{
  v7 = a5;
  v8 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v9 = a4 - a5;
  v10 = *a2;
  if ((a1 & 2) != 0)
  {
    memset(__s1, 0, sizeof(__s1));
    if (!v10)
    {
      LOBYTE(v11) = 0;
      return v11 & 1;
    }

    v27 = 0;
    v28 = 0;
    v11 = 0;
    v53 = a5 - a4;
    __s2a = &a3[a5];
    v64 = a2 + 2;
    __dst = &a3[a4];
    while (1)
    {
      v30 = v10;
      v31 = v28;
      v28 = v64 + v27;
      v32 = v28[10];
      if (v31)
      {
        v33 = v31[10];
        if (v32 > v33)
        {
          memcpy(__s1 + v33, v31 + 11, v32 - v33);
        }
      }

      v34 = *(v28 + 4);
      v35 = v34 + v32;
      if ((v34 + v32) >= v9)
      {
        if (v8 == v7 || (v32 >= v9 ? (v29 = v9) : (v29 = v32), !memcmp(__s1, __s2a, v29)))
        {
          v36 = v9 - v32;
          if (v9 - v32 < 0 || (v34 >= v36 ? (v37 = v36) : (v37 = v34), !memcmp(v28 + 11, &__s2a[v32], v37)))
          {
            if (v9 == v35 || (a6 & 1) == 0)
            {
              break;
            }
          }
        }
      }

      v10 = v30;
LABEL_32:
      v27 += v34 + 11;
      if (v27 >= v10)
      {
        return v11 & 1;
      }
    }

    v38 = v32 + v7;
    v39 = v8;
    v40 = v38 - v8;
    if (v40 < 1)
    {
      v38 = v39;
    }

    else
    {
      memcpy(__dst, __s1 + v32 - v40, v40);
      v34 = *(v28 + 4);
      LODWORD(v32) = v28[10];
    }

    v61 = v11;
    v41 = v53 + v34 + v32;
    if (v41 < 1)
    {
      v43 = a3;
    }

    else
    {
      v42 = v41 - (v40 & ~(v40 >> 31));
      v43 = a3;
      memcpy(&a3[v38], &v28[v34 - v42 + 11], v42);
      v38 += v42;
    }

    v43[v38] = 0;
    v44 = *(v28 + 1);
    v45 = *v28;
    v46 = malloc_type_malloc(v38 + 21, 0x1000040A86A77D5uLL);
    v46[4] = v38;
    *(v46 + v38 + 20) = 0;
    memcpy(v46 + 5, v43, v38);
    v46[1] = 1065353216;
    v46[2] = v44;
    *v46 = v45;
    v46[3] = 1;
    if (a7)
    {
      v7 = a5;
      v10 = v30;
      v11 = v61;
      if (*a7 == 1)
      {
        goto LABEL_55;
      }

      if (*a7)
      {
        v65 = 0;
        v47 = *(a7 + 24);
        if (v47)
        {
          v47(*(a7 + 16), v46, &v65);
          if (v65)
          {
            v11 = 1;
          }
        }

        goto LABEL_60;
      }

      if (v9 == v35)
      {
LABEL_55:
        *(a7 + 4) = v44;
        *(a7 + 8) = v45;
        v11 = 1;
      }
    }

    else
    {
      v7 = a5;
      v10 = v30;
      v11 = v61;
    }

LABEL_60:
    v48 = v46[3] - 1;
    v46[3] = v48;
    if (!v48)
    {
      free(v46);
    }

    if (v11)
    {
LABEL_66:
      LOBYTE(v11) = 1;
      return v11 & 1;
    }

    v34 = *(v28 + 4);
    v8 = a4;
    goto LABEL_32;
  }

  v11 = 0;
  if (v10)
  {
    v60 = 0;
    v12 = v9;
    v13 = a2 + 2;
    v14 = &a3[a5];
    v15 = a4;
    v51 = *a2;
    __s2 = v14;
    v52 = a2 + 2;
    while (1)
    {
      v16 = v13 + v11;
      v17 = *(v16 + 4);
      if (v9 <= v17 && !memcmp(v16 + 10, v14, v12) && (v9 == v17 || (a6 & 1) == 0))
      {
        break;
      }

LABEL_4:
      v11 += v17 + 10;
      if (v11 >= v10)
      {
        LOBYTE(v11) = v60;
        return v11 & 1;
      }
    }

    v18 = a4;
    v19 = v17 + a5 - a4;
    v20 = v15;
    if (v19 >= 1)
    {
      memcpy(&a3[v15], &v16[v17 - v19 + 10], v19);
      v20 = (v17 + a5);
      v18 = v17 + a5;
    }

    a3[v20] = 0;
    v21 = *(v16 + 1);
    v22 = *v16;
    v23 = malloc_type_malloc(v20 + 21, 0x1000040A86A77D5uLL);
    v23[4] = v18;
    *(v23 + v20 + 20) = 0;
    memcpy(v23 + 5, a3, v20);
    v23[1] = 1065353216;
    v23[2] = v21;
    *v23 = v22;
    v23[3] = 1;
    if (a7)
    {
      LODWORD(v10) = v51;
      v12 = v9;
      v13 = v52;
      if (*a7 == 1)
      {
LABEL_15:
        *(a7 + 4) = v21;
        *(a7 + 8) = v22;
        v24 = 1;
LABEL_20:
        v60 = v24;
        goto LABEL_21;
      }

      if (*a7)
      {
        LOBYTE(__s1[0]) = 0;
        v25 = *(a7 + 24);
        if (v25)
        {
          v25(*(a7 + 16), v23, __s1);
          v24 = v60;
          if (__s1[0])
          {
            v24 = 1;
          }

          goto LABEL_20;
        }
      }

      else if (v9 == v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      LODWORD(v10) = v51;
      v12 = v9;
      v13 = v52;
    }

LABEL_21:
    v26 = v23[3] - 1;
    v23[3] = v26;
    if (!v26)
    {
      free(v23);
    }

    v14 = __s2;
    if (v60)
    {
      goto LABEL_66;
    }

    LODWORD(v17) = *(v16 + 4);
    goto LABEL_4;
  }

  return v11 & 1;
}

uint64_t sub_1AE74ED88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 == v5)
    {
      v6 = memcmp((a1 + 20), (a2 + 20), v4);
    }

    else
    {
      v6 = v4 - v5;
    }

    v8 = -1;
    if (v6 <= 0)
    {
      v8 = 1;
    }

    if (v6)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else if (v2 <= v3)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_1AE74EDF0(int a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2[3] - 1;
    a2[3] = v2;
    if (!v2)
    {
      free(a2);
    }
  }
}

uint64_t sub_1AE74EE10(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    ++*(a2 + 12);
  }

  return result;
}

uint64_t sub_1AE74EE28(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    if (*a1 <= *a2)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = v2 - v3;
LABEL_14:
    if (v4 > 0)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v4 = *(a1 + 8) - *(a2 + 8);
  if (v4)
  {
    goto LABEL_14;
  }

  v5 = memcmp((a1 + 20), (a2 + 20), v2);
  v6 = -1;
  if (v5 <= 0)
  {
    v6 = 1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_1AE74EEB0(int a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2[3] - 1;
    a2[3] = v2;
    if (!v2)
    {
      free(a2);
    }
  }
}

uint64_t sub_1AE74EED0(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    ++*(a2 + 12);
  }

  return result;
}

float sub_1AE74EEE8(unint64_t a1, const void *a2, unsigned int a3, _DWORD *a4, _DWORD *a5)
{
  if (a3)
  {
    result = 0.0;
    v13[0] = xmmword_1AE7A3DC8;
    v13[1] = unk_1AE7A3DD8;
    if (a3 <= 0x3FF)
    {
      v9 = a4;
      v10 = a5;
      if (qword_1EB5E0AA8 != -1)
      {
        dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
      }

      v11 = pthread_getspecific(qword_1EB5E0AB0);
      if (!v11)
      {
        v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
        pthread_setspecific(qword_1EB5E0AB0, v11);
      }

      memcpy(v11, a2, a3);
      v11[a3] = 0;
      v12 = *(a1 + 2084);
      if (v12)
      {
        sub_1AE74DCE0(a1, (*(v12 + 4) & 0xFFFFFFFC) + v12, v11, a3, 0, 1, v13);
      }

      else
      {
        sub_1AE74E000(a1, v11, a3, 0, 1, v13);
      }

      a5 = v10;
      a4 = v9;
    }

    if ((DWORD1(v13[0]) & 0x80000000) == 0)
    {
      if (a4)
      {
        *a4 = DWORD1(v13[0]);
      }

      if (a5)
      {
        result = *(v13 + 2);
        *a5 = DWORD2(v13[0]);
      }
    }
  }

  return result;
}

uint64_t sub_1AE74F058(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7)
{
  v11 = a4 - a5;
  if (a4 <= a5)
  {
LABEL_5:
    if (qword_1EB5E0AA8 != -1)
    {
      dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
    }

    v16 = pthread_getspecific(qword_1EB5E0AB0);
    if (!v16)
    {
      v16 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      pthread_setspecific(qword_1EB5E0AB0, v16);
    }

    if ((a4 + 1) <= 1023)
    {
      memcpy(v16, a3, a4);
      v17 = 0;
      *(v16 + (a4 + 1)) = 0;
      do
      {
        v18 = *(a2 + 4 * v17);
        *(v16 + a4) = v17;
        sub_1AE74F758(*(a1 + 2084), v18, v16, a4 + 1, a6);
        ++v17;
      }

      while (v17 != 256);
    }

    v19 = *(a2 + 1024);
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = *(a2 + 1032);
    v21 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
    v21[4] = a4;
    *(v21 + a4 + 20) = 0;
    memcpy(v21 + 5, a3, a4);
    v21[1] = 1065353216;
    v21[2] = v19;
    *v21 = v20;
    v21[3] = 1;
    v22 = sub_1AE74F88C(v21, a6, a7);
    v23 = v22;
    v24 = v21[3] - 1;
    v21[3] = v24;
    if (v24)
    {
      if (v22)
      {
LABEL_15:
        sub_1AE74FA94(a1, a6, a7);
        return 1;
      }
    }

    else
    {
      free(v21);
      if (v23)
      {
        goto LABEL_15;
      }
    }

    return 0;
  }

  v12 = (a1 + 2084);
  v13 = a5;
  while (1)
  {
    v14 = *(a2 + 4 * a3[v13]);
    if ((v14 & 3) != 1)
    {
      break;
    }

    a2 = (v14 & 0xFFFFFFFC) + *v12;
    ++v13;
    if (!--v11)
    {
      goto LABEL_5;
    }
  }

  if ((v14 & 3) == 0)
  {
    return 1;
  }

  if ((v14 & 3) == 2)
  {
    v25 = ((v14 & 0xFFFFFFFC) + *v12);

    return sub_1AE7500AC(a1, v25, a3, a4, v13 + 1, a6, a7);
  }

  else
  {
    v27 = ((v14 & 0xFFFFFFFC) + *v12);

    return sub_1AE74FC88(a1, v27, a3, a4, v13 + 1, a6, a7);
  }
}

uint64_t sub_1AE74F30C(uint64_t a1, unint64_t a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7)
{
  v12 = a4 - a5;
  if (a4 <= a5)
  {
LABEL_5:
    if (qword_1EB5E0AA8 != -1)
    {
      v26 = a7;
      dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
      a7 = v26;
    }

    v28 = a7;
    v15 = pthread_getspecific(qword_1EB5E0AB0);
    if (!v15)
    {
      v15 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      pthread_setspecific(qword_1EB5E0AB0, v15);
    }

    memcpy(v15, a3, a4);
    v16 = 0;
    *(v15 + (a4 + 1)) = 0;
    v27 = a1;
    v17 = (a1 + 2084);
    do
    {
      v18 = *(a2 + 16 + 8 * v16);
      *(v15 + a4) = v16;
      sub_1AE74F758(*v17, v18, v15, a4 + 1, a6);
      ++v16;
    }

    while (v16 != 256);
    v19 = *(a2 + 12);
    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = *(a2 + 4);
    v21 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
    v21[4] = a4;
    *(v21 + a4 + 20) = 0;
    memcpy(v21 + 5, a3, a4);
    v21[1] = 1065353216;
    v21[2] = v19;
    *v21 = v20;
    v21[3] = 1;
    v22 = sub_1AE74F88C(v21, a6, v28);
    v23 = v22;
    v24 = v21[3] - 1;
    v21[3] = v24;
    if (v24)
    {
      if (v22)
      {
LABEL_14:

        return sub_1AE74FA94(v27, a6);
      }
    }

    else
    {
      free(v21);
      if (v23)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  v13 = a5;
  while (1)
  {
    v14 = *(a2 + 8 * a3[v13] + 16);
    if ((v14 & 3) != 1)
    {
      break;
    }

    a2 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    ++v13;
    if (!--v12)
    {
      goto LABEL_5;
    }
  }

  if ((v14 & 3) != 2)
  {
    return 1;
  }

  return sub_1AE74F590((v14 & 0xFFFFFFFFFFFFFFFCLL), a3, a4, v13 + 1, a6, a7);
}

uint64_t sub_1AE74F590(uint64_t *a1, char *a2, int a3, unsigned int a4, __CFBinaryHeap *a5, __CFBinaryHeap *a6)
{
  if (a4 <= 0x3FF)
  {
    if (qword_1EB5E0AA8 != -1)
    {
      dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
    }

    v11 = pthread_getspecific(qword_1EB5E0AB0);
    if (!v11)
    {
      v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      pthread_setspecific(qword_1EB5E0AB0, v11);
    }

    memcpy(v11, a2, a4);
    v11[a4] = 0;
    if (a1)
    {
      v12 = a3 - a4;
      v6 = 1;
      do
      {
        memcpy(&v11[a4], a1 + 26, *(a1 + 12));
        v13 = *(a1 + 12) + a4;
        v11[v13] = 0;
        if (v12 <= *(a1 + 12) && !memcmp(a1 + 26, &a2[a4], v12))
        {
          v14 = *(a1 + 5);
          v15 = *(a1 + 3);
          v16 = malloc_type_malloc(v13 + 21, 0x1000040A86A77D5uLL);
          v16[4] = v13;
          *(v16 + v13 + 20) = 0;
          memcpy(v16 + 5, v11, v13);
          v16[1] = 1065353216;
          v16[2] = v14;
          *v16 = v15;
          v16[3] = 1;
          v6 = sub_1AE74F88C(v16, a5, a6);
          v17 = v16[3] - 1;
          v16[3] = v17;
          if (!v17)
          {
            free(v16);
          }
        }

        a1 = *a1;
      }

      while (a1);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1AE74F758(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, __CFBinaryHeap *a5)
{
  v8 = a2 & 3;
  if (a1)
  {
    if ((a2 & 3u) > 1uLL)
    {
      v10 = v8 == 2;
      v11 = (a2 & 0xFFFFFFFFFFFFFFFCLL) + a1;
      v12 = (v11 + 4);
      v9 = (v11 + 32);
      if (v10)
      {
        v9 = v12;
      }
    }

    else
    {
      if ((a2 & 3) == 0)
      {
        return;
      }

      v9 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + a1 + 1028);
    }
  }

  else if (v8 == 2)
  {
    v9 = ((a2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  else
  {
    if (v8 != 1)
    {
      return;
    }

    v9 = (a2 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v13 = *v9;
  v14 = a4;
  v16 = malloc_type_malloc(a4 + 25, 0x10000400CE834B2uLL);
  *v16 = a2;
  v16[2] = v13;
  v16[3] = 1;
  v16[4] = a4;
  *(v16 + v14 + 20) = 0;
  memcpy(v16 + 5, a3, v14);
  CFBinaryHeapAddValue(a5, v16);
  v17 = v16[3] - 1;
  v16[3] = v17;
  if (!v17)
  {

    free(v16);
  }
}

uint64_t sub_1AE74F88C(float *value, __CFBinaryHeap *a2, CFBinaryHeapRef heap)
{
  if (CFBinaryHeapContainsValue(heap, value) || CFBinaryHeapGetCount(heap) < 10)
  {
    goto LABEL_13;
  }

  Minimum = CFBinaryHeapGetMinimum(heap);
  v7 = CFBinaryHeapGetMinimum(a2);
  v8 = 0.0;
  v9 = 0.0;
  if (value)
  {
    v9 = *value;
  }

  if (Minimum)
  {
    v8 = *Minimum;
  }

  if (v9 > v8 || v7 && (!Minimum ? (v10 = 0.0) : (v10 = *Minimum), v10 < v7[2]))
  {
LABEL_13:
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  if (!CFBinaryHeapContainsValue(heap, value))
  {
    if (CFBinaryHeapGetCount(heap) < 10)
    {
LABEL_24:
      CFBinaryHeapAddValue(heap, value);
      return v11;
    }

    v12 = CFBinaryHeapGetMinimum(heap);
    v13 = 0.0;
    v14 = 0.0;
    if (v12)
    {
      v14 = *v12;
    }

    if (value)
    {
      v13 = *value;
    }

    if (v14 < v13)
    {
      v15 = (4 * *(v12 + 2));
      v16 = *(v12 + 4);
      v17 = *v12;
      v18 = v12;
      v19 = malloc_type_malloc(v16 + 25, 0x10000400CE834B2uLL);
      *v19 = v15;
      v19[2] = v17;
      *(v19 + 3) = 1;
      *(v19 + 4) = v16;
      *(v19 + v16 + 20) = 0;
      memcpy(v19 + 5, v18 + 5, v16);
      CFBinaryHeapAddValue(a2, v19);
      v20 = *(v19 + 3) - 1;
      *(v19 + 3) = v20;
      if (!v20)
      {
        free(v19);
      }

      CFBinaryHeapRemoveMinimumValue(heap);
      goto LABEL_24;
    }

    v22 = (4 * *(value + 2));
    v23 = *(value + 4);
    v24 = *value;
    v25 = malloc_type_malloc(v23 + 25, 0x10000400CE834B2uLL);
    *v25 = v22;
    v25[2] = v24;
    *(v25 + 3) = 1;
    *(v25 + 4) = v23;
    *(v25 + v23 + 20) = 0;
    memcpy(v25 + 5, value + 5, v23);
    CFBinaryHeapAddValue(a2, v25);
    v26 = *(v25 + 3) - 1;
    *(v25 + 3) = v26;
    if (!v26)
    {
      free(v25);
    }
  }

  return v11;
}

BOOL sub_1AE74FA94(uint64_t a1, CFBinaryHeapRef heap, __CFBinaryHeap *a3)
{
  v6 = (a1 + 2084);
  do
  {
    Count = CFBinaryHeapGetCount(heap);
    if (!Count)
    {
      break;
    }

    Minimum = CFBinaryHeapGetMinimum(heap);
    v9 = Minimum;
    if (Minimum)
    {
      ++*(Minimum + 3);
    }

    CFBinaryHeapRemoveMinimumValue(heap);
    v10 = *v9;
    v11 = *v9 & 3;
    if (!v11)
    {
      v16 = v10 >> 2;
      v17 = *(v9 + 4);
      v18 = *(v9 + 2);
      v19 = malloc_type_malloc(v17 + 21, 0x1000040A86A77D5uLL);
      v19[4] = v17;
      *(v19 + v17 + 20) = 0;
      memcpy(v19 + 5, v9 + 20, v17);
      v19[1] = 1065353216;
      v19[2] = v16;
      *v19 = v18;
      v19[3] = 1;
      v20 = sub_1AE74F88C(v19, heap, a3);
      v21 = v19[3] - 1;
      v19[3] = v21;
      if (!v21)
      {
        free(v19);
      }

      goto LABEL_20;
    }

    if (*v6)
    {
      v12 = *(v9 + 4);
      v13 = ((v10 & 0xFFFFFFFFFFFFFFFCLL) + *v6);
      v14 = (v9 + 20);
      if (v11 == 3)
      {
        v15 = sub_1AE74FC88(a1, v13, v14, v12, v12, heap, a3);
      }

      else if (v11 == 1)
      {
        v15 = sub_1AE74F058(a1, v13);
      }

      else
      {
        v15 = sub_1AE7500AC(a1, v13, v14, v12, v12, heap, a3);
      }
    }

    else if (v11 == 2)
    {
      v15 = sub_1AE74F590((v10 & 0xFFFFFFFFFFFFFFFCLL), v9 + 20, *(v9 + 4), *(v9 + 4), heap, a3);
    }

    else
    {
      if (v11 != 1)
      {
        v20 = 1;
        goto LABEL_20;
      }

      v15 = sub_1AE74F30C(a1, v10 & 0xFFFFFFFFFFFFFFFCLL, v9 + 20, *(v9 + 4), *(v9 + 4), heap, a3);
    }

    v20 = v15;
LABEL_20:
    v22 = *(v9 + 3) - 1;
    *(v9 + 3) = v22;
    if (!v22)
    {
      free(v9);
    }
  }

  while ((v20 & 1) != 0);
  return Count == 0;
}

uint64_t sub_1AE74FC88(uint64_t a1, int8x8_t *a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7)
{
  if (a5 >= a4)
  {
LABEL_11:
    __n_4 = a1;
    if (qword_1EB5E0AA8 != -1)
    {
      dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
    }

    v25 = pthread_getspecific(qword_1EB5E0AB0);
    if (!v25)
    {
      v25 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      pthread_setspecific(qword_1EB5E0AB0, v25);
    }

    v26 = a4 + 1;
    if ((a4 + 1) <= 1023)
    {
      memcpy(v25, a3, a4);
      v33 = 0;
      *(v25 + v26) = 0;
      do
      {
        v37 = a2[v33 >> 6];
        if (((1 << v33) & *&v37) != 0)
        {
          if (v33 <= 0x3F)
          {
            v34 = 0;
          }

          else
          {
            v38 = vcnt_s8(*a2);
            v38.i16[0] = vaddlv_u8(v38);
            v34 = v38.i32[0];
            if (v33 >= 0x80)
            {
              v39 = vcnt_s8(a2[1]);
              v39.i16[0] = vaddlv_u8(v39);
              v34 += v39.i32[0];
              if (v33 >> 6 != 2)
              {
                v40 = vcnt_s8(a2[2]);
                v40.i16[0] = vaddlv_u8(v40);
                v34 += v40.i32[0];
              }
            }
          }

          v35 = vcnt_s8((((1 << v33) - 1) & *&v37));
          v35.i16[0] = vaddlv_u8(v35);
          v36 = a2[5].u32[v34 + v35.i32[0] + 1];
          *(v25 + a4) = v33;
          sub_1AE74F758(*(__n_4 + 2084), v36, v25, v26, a6);
        }

        ++v33;
      }

      while (v33 != 256);
    }

    v27 = a2[5].i32[0];
    if (!v27)
    {
      goto LABEL_19;
    }

    v28 = a2[4].i32[1];
    v29 = malloc_type_malloc(a4 + 21, 0x1000040A86A77D5uLL);
    v29[4] = a4;
    *(v29 + a4 + 20) = 0;
    memcpy(v29 + 5, a3, a4);
    v29[1] = 1065353216;
    v29[2] = v27;
    *v29 = v28;
    v29[3] = 1;
    v30 = sub_1AE74F88C(v29, a6, a7);
    v31 = v30;
    v32 = v29[3] - 1;
    v29[3] = v32;
    if (v32)
    {
      if (v30)
      {
LABEL_19:

        return sub_1AE74FA94(__n_4, a6);
      }
    }

    else
    {
      free(v29);
      if (v31)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

  v12 = (a1 + 2084);
  v13 = a5;
  while (1)
  {
    v14 = a3[v13];
    v15 = v14 >> 6;
    v16 = a2[v14 >> 6];
    result = 1;
    v18 = 1 << v14;
    if (((1 << v14) & *&v16) == 0)
    {
      return result;
    }

    if (v14 > 0x3F)
    {
      v20 = vcnt_s8(*a2);
      v20.i16[0] = vaddlv_u8(v20);
      v19 = v20.i32[0];
      if (v15 != 1)
      {
        v21 = vcnt_s8(a2[1]);
        v21.i16[0] = vaddlv_u8(v21);
        v19 += v21.i32[0];
        if (v15 != 2)
        {
          v22 = vcnt_s8(a2[2]);
          v22.i16[0] = vaddlv_u8(v22);
          v19 += v22.i32[0];
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = vcnt_s8(((v18 - 1) & *&v16));
    v23.i16[0] = vaddlv_u8(v23);
    v24 = a2[5].i32[v19 + v23.i32[0] + 1];
    if ((v24 & 3) != 3)
    {
      if ((v24 & 3) == 0)
      {
        return 1;
      }

      if ((v24 & 3) == 1)
      {
        v41 = (v24 & 0xFFFFFFFC) + *v12;

        return sub_1AE74F058(a1, v41);
      }

      else
      {
        v42 = ((v24 & 0xFFFFFFFC) + *v12);

        return sub_1AE7500AC(a1, v42, a3, a4, v13 + 1, a6, a7);
      }
    }

    a2 = ((v24 & 0xFFFFFFFC) + *v12);
    if (a4 == ++v13)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AE7500AC(uint64_t a1, _DWORD *a2, char *a3, unsigned int a4, unsigned int a5, __CFBinaryHeap *a6, __CFBinaryHeap *a7)
{
  v9 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v44 = *a2;
  if (qword_1EB5E0AA8 != -1)
  {
    dispatch_once(&qword_1EB5E0AA8, &unk_1F2430F40);
  }

  v11 = pthread_getspecific(qword_1EB5E0AB0);
  if (!v11)
  {
    v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    pthread_setspecific(qword_1EB5E0AB0, v11);
  }

  v12 = a4 - a5;
  if ((*(a1 + 2068) & 2) != 0)
  {
    if (a4 <= 0x3FF)
    {
      memcpy(v11, a3, a4);
      v11[a4] = 0;
      memset(__s1, 0, sizeof(__s1));
      if (v44)
      {
        v21 = 0;
        v22 = 0;
        v23 = v9 + 2;
        __srca = &a3[a5];
        v39 = v9 + 2;
        while (1)
        {
          v25 = v22;
          v22 = (v23 + v21);
          v26 = *(v22 + 10);
          if (v25)
          {
            v27 = *(v25 + 10);
            if (v26 > v27)
            {
              memcpy(__s1 + v27, v25 + 11, v26 - v27);
            }
          }

          v28 = *(v22 + 4);
          if (v28 + v26 >= v12)
          {
            if (a4 == a5 || (v26 >= v12 ? (v24 = a4 - a5) : (v24 = v26), !memcmp(__s1, __srca, v24)))
            {
              v29 = v12 - v26;
              if (v12 == v26)
              {
                goto LABEL_33;
              }

              if (v28 < v29)
              {
                v29 = v28;
              }

              if (!memcmp(v22 + 11, &__srca[v26], v29))
              {
LABEL_33:
                v30 = v26 + a5;
                v31 = v26 + a5 - a4;
                if (v31 < 1)
                {
                  v30 = a4;
                }

                else
                {
                  memcpy(&v11[a4], __s1 + v26 - v31, v30 - a4);
                  v28 = *(v22 + 4);
                  LODWORD(v26) = *(v22 + 10);
                }

                v32 = a5 - a4 + v28 + v26;
                if (v32 >= 1)
                {
                  v33 = v32 - (v31 & ~(v31 >> 31));
                  memcpy(&v11[v30], v22 + v28 - v33 + 11, v33);
                  v30 += v33;
                }

                v11[v30] = 0;
                v34 = v22[1];
                v35 = *v22;
                v36 = malloc_type_malloc(v30 + 21, 0x1000040A86A77D5uLL);
                v36[4] = v30;
                *(v36 + v30 + 20) = 0;
                memcpy(v36 + 5, v11, v30);
                v36[1] = 1065353216;
                v36[2] = v34;
                *v36 = v35;
                v36[3] = 1;
                LODWORD(v9) = sub_1AE74F88C(v36, a6, a7);
                v37 = v36[3] - 1;
                v36[3] = v37;
                if (!v37)
                {
                  free(v36);
                }

                if (!v9)
                {
                  return v9 & 1;
                }

                v28 = *(v22 + 4);
                v23 = v39;
              }
            }
          }

          v21 += v28 + 11;
          if (v21 >= v44)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_42;
    }

LABEL_16:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v13 = a3;
  if (a5 > 0x3FF)
  {
    goto LABEL_16;
  }

  memcpy(v11, a3, a5);
  v11[a5] = 0;
  if (!v44)
  {
LABEL_42:
    LOBYTE(v9) = 1;
    return v9 & 1;
  }

  v14 = 0;
  v15 = v9 + 2;
  LOBYTE(v9) = 1;
  do
  {
    v16 = (v15 + v14);
    memcpy(&v11[a5], v16 + 10, *(v16 + 4));
    v17 = *(v16 + 4) + a5;
    v11[v17] = 0;
    if (v12 <= *(v16 + 4) && !memcmp(v16 + 10, &v13[a5], v12))
    {
      LODWORD(v9) = v16[1];
      v18 = *v16;
      v19 = malloc_type_malloc(v17 + 21, 0x1000040A86A77D5uLL);
      v19[4] = v17;
      *(v19 + v17 + 20) = 0;
      memcpy(v19 + 5, v11, v17);
      v19[1] = 1065353216;
      v19[2] = v9;
      *v19 = v18;
      v19[3] = 1;
      LOBYTE(v9) = sub_1AE74F88C(v19, a6, a7);
      v20 = v19[3] - 1;
      v19[3] = v20;
      if (!v20)
      {
        free(v19);
      }

      v13 = a3;
    }

    v14 += *(v16 + 4) + 10;
  }

  while (v14 < v44);
  return v9 & 1;
}

uint64_t sub_1AE750500(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    if (*a1 >= *a2)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = v2 - v3;
LABEL_14:
    if (v4 < 0)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v4 = *(a1 + 8) - *(a2 + 8);
  if (v4)
  {
    goto LABEL_14;
  }

  v5 = memcmp((a1 + 20), (a2 + 20), v2);
  v6 = -1;
  if (v5 >= 0)
  {
    v6 = 1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE750588(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = a2 + 16;
  do
  {
    v9 = *(v8 + 8 * v7);
    if ((v9 & 3) == 2)
    {
      lseek(a4, 0, 1);
      if (*(v6 + 2092) <= 1u)
      {
        v10 = 1;
      }

      else
      {
        v10 = *(v6 + 2092);
      }

      malloc_type_malloc(1035 * v10 + 8, 0x100004077774924uLL);
      operator new();
    }

    if ((v9 & 3) == 1)
    {
      result = sub_1AE750588(v6, v9 & 0xFFFFFFFFFFFFFFFCLL, a3, a4);
    }

    ++v7;
  }

  while (v7 != 256);
  return result;
}

void sub_1AE750A58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE750A84(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int *a6)
{
  v11 = 0;
  v40 = *MEMORY[0x1E69E9840];
  v12 = 0uLL;
  v13 = 0uLL;
  do
  {
    v12 = vsubq_s32(v12, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a1[v11 + 4]), vceqzq_s64(*&a1[v11 + 8]))));
    v13 = vsubq_s32(v13, vmvnq_s8(vuzp1q_s32(vceqzq_s64(*&a1[v11 + 12]), vceqzq_s64(*&a1[v11 + 16]))));
    v11 += 16;
  }

  while (v11 != 512);
  v14 = vaddvq_s32(vaddq_s32(v13, v12));
  if (v14 > 0xC7)
  {
    a5 = 1;
  }

  v36 = a5;
  if (a5)
  {
    v16 = 0;
    v17 = *a6;
    *a6 = v17 + 1036;
    do
    {
      v18 = *&a1[2 * v16 + 4];
      if ((v18 & 3) == 1)
      {
        v19 = *a6;
        if (sub_1AE750A84(v18 & 0xFFFFFFFFFFFFFFFCLL, a2, a3, 1, 0, a6))
        {
          v20 = v19 | 1;
        }

        else
        {
          v20 = v19 | 3;
        }

        v38[v16] = v20;
      }

      else
      {
        v38[v16] = v18;
      }

      ++v16;
    }

    while (v16 != 256);
    v38[256] = a1[3];
    v39 = *a1;
    pwrite(a3, v38, 0x40CuLL, v17 + a2);
    if (a4)
    {
LABEL_26:
      free(a1);
    }
  }

  else
  {
    v37 = a3;
    v34 = a4;
    v35 = v14;
    v21 = 4 * v14 + 44;
    v22 = *a6;
    MEMORY[0x1EEE9AC00]();
    v24 = (&v32 - v23);
    bzero(&v32 - v23, v21);
    bzero(v24, v21);
    v25 = 0;
    v26 = 0;
    v32 = v22;
    v33 = v21;
    *a6 = v22 + v21;
    v27 = &v24[2].i8[12];
    do
    {
      v28 = *&a1[2 * v25 + 4];
      if (v28)
      {
        v24->i64[v25 >> 6] |= 1 << v25;
        if ((v28 & 3) == 1)
        {
          v29 = *a6;
          if (sub_1AE750A84(v28 & 0xFFFFFFFFFFFFFFFCLL, a2, v37, 1, 0, a6))
          {
            v30 = v29 | 1;
          }

          else
          {
            v30 = v29 | 3;
          }

          *&v27[4 * v26] = v30;
        }

        else
        {
          *&v27[4 * v26] = v28;
        }

        ++v26;
      }

      ++v25;
    }

    while (v25 != 256);
    if (vaddvq_s32(vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v24)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v24[1])))))) != v35)
    {
      __assert_rtn("completionTrieSerializeLevels", "LMCompletionTrie.cpp", 1734, "bitcount == count");
    }

    v24[2].i32[2] = a1[3];
    v24[2].i64[0] = *a1;
    pwrite(v37, v24, v33, v32 + a2);
    if (v34)
    {
      goto LABEL_26;
    }
  }

  return v36;
}

BOOL sub_1AE750DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 24);
  if (v2 >= v3)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = *(a2 + 24);
  }

  v5 = memcmp((a1 + 26), (a2 + 26), v4);
  if (v5)
  {
    return v5 < 0;
  }

  else
  {
    return v3 < v2;
  }
}

_DWORD *sub_1AE750DFC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return (a1 + 32);
  }

  v3 = *a2;
  v4 = *(a1 + 48);
  v5 = &v4[2 * v2];
  do
  {
    v6 = v2 >> 1;
    v7 = &v4[2 * (v2 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v2 += ~(v2 >> 1);
    if (v9 < v3)
    {
      v4 = v8;
    }

    else
    {
      v2 = v6;
    }
  }

  while (v2);
  if (v4 != v5 && *v4 == v3)
  {
    return v4 + 1;
  }

  else
  {
    return (a1 + 32);
  }
}

void sub_1AE750E6C(uint64_t a1)
{
  *a1 = &unk_1F2430F70;
  if (*(a1 + 8))
  {
    v1 = a1;
    munmap(*(a1 + 8), *(a1 + 16));
    a1 = v1;
  }

  *(a1 + 16) = 0;

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE750EE8(uint64_t result)
{
  *result = &unk_1F2430F70;
  if (*(result + 8))
  {
    v1 = result;
    munmap(*(result + 8), *(result + 16));
    result = v1;
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_1AE750F44(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2430F70;
  v3 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v40[0] = *(a2 + 16);
  }

  sub_1AE6AD3E0(v3, __p);
  if (SHIBYTE(v40[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 16);
  if (v4 <= 0x13)
  {
    sub_1AE5F2968(__p);
    v12 = sub_1AE5DB608(v40, "(file_size=", 11);
    v13 = MEMORY[0x1B2706120](v12, *(a1 + 16));
    v14 = sub_1AE5DB608(v13, ", offset=", 9);
    v15 = MEMORY[0x1B2706120](v14, 0);
    v16 = sub_1AE5DB608(v15, ", object_size=", 14);
    v17 = MEMORY[0x1B2706120](v16, 20);
    sub_1AE5DB608(v17, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&v37, __p);
    v19 = sub_1AE67B590(&__dst, "attempted to read beyond the end of the mapped file ", &v37);
    MEMORY[0x1B2705EC0](exception, &__dst, v19);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = *(a1 + 8);
  v6 = *(v5 + 16);
  *(a1 + 24) = *v5;
  *(a1 + 40) = v6;
  v7 = *(a1 + 36);
  v8 = v4 > v7;
  v9 = v4 - v7;
  if (!v8)
  {
    sub_1AE5F2968(__p);
    v20 = sub_1AE5DB608(v40, "(file_size=", 11);
    v21 = MEMORY[0x1B2706120](v20, *(a1 + 16));
    v22 = sub_1AE5DB608(v21, ", offset=", 9);
    v23 = MEMORY[0x1B2706120](v22, v7);
    sub_1AE5DB608(v23, ")", 1);
    v24 = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&v37, __p);
    v25 = sub_1AE67B590(&__dst, "attempted to read beyond the end of the mapped file ", &v37);
    MEMORY[0x1B2705EC0](v24, &__dst, v25);
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v9 >> 3;
  *(a1 + 48) = v5 + v7;
  *(a1 + 56) = v10;
  if (*(a1 + 24) != 952409662)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v26, "Invalid blocklistID map: mismatched magic number");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(a1 + 28) != 1)
  {
    sub_1AE5F2968(__p);
    v27 = sub_1AE5DB608(v40, "Unsupported blocklistID map version (recorded=", 46);
    v28 = MEMORY[0x1B2706110](v27, *(a1 + 28));
    v29 = sub_1AE5DB608(v28, ", required=", 11);
    v30 = MEMORY[0x1B2706110](v29, 1);
    sub_1AE5DB608(v30, ")", 1);
    v31 = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, __p);
    MEMORY[0x1B2705EC0](v31, &__dst);
    __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v10 != *(a1 + 40))
  {
    sub_1AE5F2968(__p);
    v32 = sub_1AE5DB608(v40, "Corrupt blocklistID map: entry count mismatch (recorded=", 56);
    v33 = MEMORY[0x1B2706110](v32, *(a1 + 40));
    v34 = sub_1AE5DB608(v33, ", actual=", 9);
    v35 = MEMORY[0x1B2706120](v34, *(a1 + 56));
    sub_1AE5DB608(v35, ")", 1);
    v36 = __cxa_allocate_exception(0x10uLL);
    sub_1AE6AD814(&__dst, __p);
    MEMORY[0x1B2705EC0](v36, &__dst);
    __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

void sub_1AE751348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1AE644C5C(&a21);
      sub_1AE6FCC0C(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_1AE75143C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1AE751434);
}

uint64_t sub_1AE751458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 272) + 72 * *(a1 + 80);
  if (*(v5 + 31) < 0)
  {
    sub_1AE5DBF1C(&v11, *(v5 + 8), *(v5 + 16));
  }

  else
  {
    v6 = *(v5 + 8);
    v12 = *(v5 + 24);
    v11 = v6;
  }

  v13 = *(v5 + 32);
  v15 = 0;
  v16 = 0;
  __p = 0;
  v8 = *(v5 + 48);
  v7 = *(v5 + 56);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  if (a3)
  {
    v9 = (*(a1 + 112) - *(a1 + 104)) >> 2;
    *(a3 + 96) = 0;
    *(a3 + 104) = v9;
    *(a3 + 8) = 0xFFEFFFFFFFFFFFFFLL;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    *(a3 + 40) = xmmword_1AE79A550;
    *(a3 + 56) = 0;
    *(a3 + 88) = 0;
    *a3 = -10.0;
    *(a3 + 116) = *(a1 + 72);
    *(a3 + 112) = 1;
    *(a3 + 72) = xmmword_1AE79A760;
    *(a3 + 64) = -10.0;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11);
  }

  return 0;
}

uint64_t sub_1AE751794(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL sub_1AE7517D8(void *a1)
{
  v1 = a1[10] + 1;
  a1[10] = v1;
  return v1 < 0x8E38E38E38E38E39 * ((a1[35] - a1[34]) >> 3);
}

void sub_1AE751810(uint64_t a1)
{
  sub_1AE751848(a1);

  JUMPOUT(0x1B2706400);
}

void *sub_1AE751848(uint64_t a1)
{
  *a1 = &unk_1F2430FD8;
  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = *(a1 + 280);
    v4 = *(a1 + 272);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        if (*(v3 - 41) < 0)
        {
          operator delete(*(v3 - 64));
        }

        v3 -= 72;
      }

      while (v3 != v2);
      v4 = *(a1 + 272);
    }

    *(a1 + 280) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 248);
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

  v8 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(a1 + 216);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (*(a1 + 192) == 1)
  {
    std::recursive_mutex::unlock(*(a1 + 184));
  }

  return sub_1AE75197C(a1);
}

void *sub_1AE75197C(void *a1)
{
  *a1 = &unk_1F2431F08;
  v2 = a1 + 19;
  v3 = a1[22];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[16];
    if (v4)
    {
LABEL_5:
      a1[17] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[16];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[6];
  a1[6] = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x1B2706400](v6, 0x1020C4016EE4530);
  }

  v8 = a1[5];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[3];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  return a1;
}

void sub_1AE751B0C(std::string *this, uint64_t a2, uint64_t a3)
{
  *(&this->__r_.__value_.__s + 23) = 12;
  strcpy(this, "Completion: ");
  v7 = *(a3 + 48);
  v6 = *(a3 + 56);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  std::string::append(this, "\n Prefix: ", 0xAuLL);
  if (*(a3 + 31) < 0)
  {
    sub_1AE5DBF1C(__p, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *__p = *(a3 + 8);
    v40 = *(a3 + 24);
  }

  if (v40 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v40 >= 0)
  {
    v9 = HIBYTE(v40);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(this, v8, v9);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = -10.0;
  if (*a3 > 0.0)
  {
    v12 = *(a3 + 48);
    v11 = *(a3 + 56);
    v13 = v11 - v12;
    if (v11 != v12)
    {
      v14 = log10f(*(v11 - 4) / *a3);
      v15 = v13 >> 3;
      v16 = 1.0;
      if (v13 >> 3 != 1)
      {
        if (!v15)
        {
          __assert_rtn("normalizationFactor", "LMDynamicInlineCompletionEnumerator.hpp", 78, "numWords >= 1");
        }

        v17 = 1.15368974 / (sqrtf(v15 + 0.1) * (v15 + 0.1));
        v16 = v17;
      }

      v10 = v16 * v14;
    }
  }

  std::to_string(&v38, v10);
  v18 = std::string::insert(&v38, 0, "\n Score (normalized log probability): ", 0x26uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v40 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if (v40 >= 0)
  {
    v21 = HIBYTE(v40);
  }

  else
  {
    v21 = __p[1];
  }

  std::string::append(this, v20, v21);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(v38.__r_.__value_.__l.__data_);
LABEL_29:
  std::string::append(this, "\n Context: ", 0xBuLL);
  v22 = *(a3 + 40);
  if (v22)
  {
    v23 = *(a3 + 32);
    v24 = 4 * v22;
    do
    {
      v25 = *(a2 + 208);
      if (*(a2 + 296))
      {
        sub_1AE7099D8(__p, *(v25 + 464), *v23);
      }

      else
      {
        sub_1AE657E48(v25, *v23, __p);
      }

      if (v40 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      if (v40 >= 0)
      {
        v27 = HIBYTE(v40);
      }

      else
      {
        v27 = __p[1];
      }

      std::string::append(this, v26, v27);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::append(this, " ", 1uLL);
      ++v23;
      v24 -= 4;
    }

    while (v24);
  }

  std::to_string(&v38, *a3);
  v28 = std::string::insert(&v38, 0, "\n Context count: ", 0x11uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v40 = v28->__r_.__value_.__r.__words[2];
  *__p = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if (v40 >= 0)
  {
    v31 = HIBYTE(v40);
  }

  else
  {
    v31 = __p[1];
  }

  std::string::append(this, v30, v31);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

  operator delete(v38.__r_.__value_.__l.__data_);
LABEL_51:
  v32 = *(a3 + 56);
  if (v32 == *(a3 + 48))
  {
    v33 = 0.0;
  }

  else
  {
    v33 = *(v32 - 4);
  }

  std::to_string(&v38, v33);
  v34 = std::string::insert(&v38, 0, "\n Completion count: ", 0x14uLL);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v40 = v34->__r_.__value_.__r.__words[2];
  *__p = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  if (v40 >= 0)
  {
    v37 = HIBYTE(v40);
  }

  else
  {
    v37 = __p[1];
  }

  std::string::append(this, v36, v37);
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(v38.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }
}