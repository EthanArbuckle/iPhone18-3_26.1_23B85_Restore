void sub_100069938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006997C(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 == *(a1 + 128))
  {
    sub_10011C4B4();
  }

  v12 = *(a1 + 136);
  v3 = sub_1000685D0(*(a1 + 8), &v12, (v1 + 1), 10);
  if (!v3 || (*(*a1 + 40) & 0x103) == 0x100)
  {
    v4 = sub_1000692C8(a1);
    sub_10006919C(a1, v4);
    return 1;
  }

  v6 = v3;
  if (v3 > 0)
  {
    *(a1 + 136) = v12;
    v7 = sub_100064468(a1, 13, 0x18uLL);
    v7[4] = v6;
    *(v7 + 20) = (*(*a1 + 40) & 0x100000) != 0;
    if (v6 > *(a1 + 184))
    {
      *(a1 + 184) = v6;
    }

    return 1;
  }

  v8 = **(a1 + 8) + 32;
  v9 = *(a1 + 136);
  v10 = (v9 - 1);
  do
  {
    *(a1 + 136) = v10;
    v11 = *v10--;
    --v9;
  }

  while (*(v8 + v11) != 12);
  sub_100063EB4(a1, 6, v9 - *(a1 + 120));
  return 0;
}

uint64_t sub_100069AC0(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = (v2 + 1);
  *(a1 + 136) = v2 + 1;
  v5 = 1;
  while (1)
  {
    if (v2 + v5 == v3)
    {
      goto LABEL_10;
    }

    v6 = **(a1 + 8) + 32;
    v7 = v5;
    while (1)
    {
      v8 = v2 + v7 + 1;
      v9 = *(v6 + *(v2 + v7));
      v5 = v7 + 1;
      *(a1 + 136) = v8;
      if (v9 == 12)
      {
        break;
      }

      ++v7;
      if (v2 + v5 == v3)
      {
        goto LABEL_10;
      }
    }

    if (v8 == v3)
    {
      break;
    }

    if (*(v6 + *(v2 + v7 + 1)) == 47)
    {
      *(a1 + 136) = v2 + v7 + 2;
      v5 = v7;
LABEL_10:
      v10 = v5 - 1;
      if (v5 != 1)
      {
        do
        {
          v11 = *v4++;
          sub_10006919C(a1, v11);
          --v10;
        }

        while (v10);
      }

      return 1;
    }
  }

  v13 = *(a1 + 120);
  sub_10000459C(__p, "Unterminated \\Q...\\E sequence.");
  sub_100064770(a1, 5, v3 - v13, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100069C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100069C28(unsigned int **a1, signed int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (v3 - *a1) >> 3;
  do
  {
    v5 = v4 >> 1;
    v6 = &v2[2 * (v4 >> 1)];
    v7 = v6[1];
    v8 = v6 + 2;
    v4 += ~(v4 >> 1);
    if (v7 < a2)
    {
      v2 = v8;
    }

    else
    {
      v4 = v5;
    }
  }

  while (v4);
  if (v2 == v3 || v2[1] != a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *v2;
  }
}

char *sub_100069C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064468(a1, 14, 0x28uLL);
  v5 = (a2 + 8);
  v6 = *a2;
  if (*a2 == a2 + 8)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *a2;
    do
    {
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      ++v7;
      v8 = v10;
    }

    while (v10 != v5);
  }

  v4[4] = v7;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v4[5] = (&v13[-v12] >> 2) & 0x7FFFFFFF;
  v14 = *(a2 + 64);
  v15 = (a2 + 72);
  if (v14 == (a2 + 72))
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = v14[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14[2];
          v11 = *v18 == v14;
          v14 = v18;
        }

        while (!v11);
      }

      ++v16;
      v14 = v18;
    }

    while (v18 != v15);
  }

  v4[6] = v16;
  v19 = *(a2 + 52);
  v4[7] = v19;
  v20 = *(a2 + 56);
  v4[8] = v20;
  v21 = *a1;
  if ((*(*a1 + 42) & 0x10) != 0)
  {
    v22 = *(a1 + 88);
    if ((v22 & ~v19) == 0 || (*(a1 + 92) & ~v19) == 0)
    {
      v4[7] = *(a1 + 96) | v19;
    }

    if ((v22 & ~v20) == 0 || (*(a1 + 92) & ~v20) == 0)
    {
      v4[8] = *(a1 + 96) | v20;
    }
  }

  *(v4 + 36) = *(a2 + 48);
  *(v4 + 37) = *(a2 + 49) ^ 1;
  v90 = *(v21 + 352);
  v91 = v4;
  v92 = a2;
  if (v6 != v5)
  {
    do
    {
      if (*(v6 + 25))
      {
        if (*(v6 + 26))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 1;
      }

      v24 = sub_10006AE00((*a1 + 344), v23);
      v25 = *(v6 + 25);
      if (*(a1 + 24) == 1)
      {
        v26 = *(**(a1 + 8) + 8);
        LOBYTE(v25) = (*(*v26 + 40))(v26, v25);
      }

      *v24 = v25;
      if (*(v6 + 25))
      {
        v27 = *(v6 + 26);
        if (v27)
        {
          if (*(a1 + 24) == 1)
          {
            v28 = *(**(a1 + 8) + 8);
            v27 = (*(*v28 + 40))(v28);
          }

          v24[1] = v27;
          v24 += 2;
        }

        else
        {
          ++v24;
        }
      }

      *v24 = 0;
      v29 = v6[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v6[2];
          v11 = *v30 == v6;
          v6 = v30;
        }

        while (!v11);
      }

      v6 = v30;
    }

    while (v30 != v5);
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
  }

  if (v12 == v13)
  {
LABEL_144:
    v78 = *(v92 + 64);
    if (v78 != v15)
    {
      do
      {
        memset(&v98, 0, sizeof(v98));
        v79 = *(v78 + 26);
        v80 = v78 + 25;
        if (v79)
        {
          v104.__r_.__value_.__s.__data_[0] = *v80;
          *(&v104.__r_.__value_.__l.__data_ + 1) = v79;
          sub_10006AE58(**(a1 + 8), &v104, &v104.__r_.__value_.__s.__data_[2], &__p);
        }

        else
        {
          sub_10006AE58(**(a1 + 8), v80, v78 + 26, &__p);
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }
        }

        v98 = __p;
        v81 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v82 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v98.__r_.__value_.__l.__size_;
          if (!v98.__r_.__value_.__l.__size_)
          {
            goto LABEL_171;
          }
        }

        else
        {
          if (!*(&__p.__r_.__value_.__s + 23))
          {
            return 0;
          }

          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        v84 = sub_10006AE00((*a1 + 344), size + 1);
        v85 = v84;
        if (v82 < 0)
        {
          v81 = v98.__r_.__value_.__l.__size_;
        }

        if (v81)
        {
          if (v82 >= 0)
          {
            v86 = &v98;
          }

          else
          {
            v86 = v98.__r_.__value_.__r.__words[0];
          }

          memmove(v84, v86, v81);
        }

        v85[v81] = 0;
        v87 = v78[1];
        if (v87)
        {
          do
          {
            v88 = v87;
            v87 = *v87;
          }

          while (v87);
        }

        else
        {
          do
          {
            v88 = v78[2];
            v11 = *v88 == v78;
            v78 = v88;
          }

          while (!v11);
        }

        if (v82 < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        v78 = v88;
      }

      while (v88 != v15);
    }

    result = v91 + *(*a1 + 352) - v90;
    *(a1 + 16) = result;
    return result;
  }

  v31 = (v12 + 3);
  v96 = v13;
  while (1)
  {
    v33 = v31 - 3;
    v32 = *(v31 - 3);
    v34 = *(v31 - 2);
    if (*(a1 + 24) == 1 && (v35 = *(**(a1 + 8) + 8), v32 = (*(*v35 + 40))(v35, *(v31 - 3)), (*(a1 + 24) & 1) != 0))
    {
      v36 = *(**(a1 + 8) + 8);
      LODWORD(v34) = (*(*v36 + 40))(v36, v34);
      v37 = *(v31 - 1);
      v38 = *v31;
      if (*(a1 + 24))
      {
        v39 = *(**(a1 + 8) + 8);
        v37 = (*(*v39 + 40))(v39, *(v31 - 1));
        if (*(a1 + 24))
        {
          v40 = *(**(a1 + 8) + 8);
          LOBYTE(v38) = (*(*v40 + 40))(v40, v38);
        }
      }
    }

    else
    {
      v37 = *(v31 - 1);
      LOBYTE(v38) = *v31;
    }

    memset(&v98, 0, sizeof(v98));
    memset(&__p, 0, sizeof(__p));
    if ((*(*a1 + 42) & 0x20) == 0)
    {
      if (v34)
      {
        v41.__i_ = &v98;
        std::string::insert(&v98, v41, v32);
        v42 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v98;
        }

        else
        {
          v43 = v98.__r_.__value_.__r.__words[0];
        }

        if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v98.__r_.__value_.__l.__size_;
        }

        v44.__i_ = v43 + v42;
        std::string::insert(&v98, v44, v34);
      }

      else
      {
        v95 &= 0xFFFFFFFFFFFF0000;
        v98.__r_.__value_.__r.__words[0] = v95 & 0xFFFFFFFFFFFFFF00 | v32;
        *(&v98.__r_.__value_.__s + 23) = 1;
      }

      v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = __p.__r_.__value_.__l.__size_;
      }

      else
      {
        p_p = &__p;
      }

      if (v38)
      {
        v49.__i_ = p_p + v47;
        std::string::insert(&__p, v49, v37);
        v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &__p;
        }

        else
        {
          v51 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = __p.__r_.__value_.__l.__size_;
        }

        v52.__i_ = v51 + v50;
        std::string::insert(&__p, v52, v38);
      }

      else
      {
        v53.__i_ = p_p + v47;
        std::string::insert(&__p, v53, v37);
      }

      goto LABEL_99;
    }

    v101[1] = v32;
    v102 = v34;
    v103 = 0;
    v99 = v37;
    v100 = v38;
    v101[0] = 0;
    if (v34)
    {
      v45 = &v103;
    }

    else
    {
      v45 = &v102;
    }

    sub_100061E44(**(a1 + 8), v45, &v104);
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    v98 = v104;
    if (v100)
    {
      v46 = v101;
    }

    else
    {
      v46 = &v100;
    }

    sub_100061E44(**(a1 + 8), v46, &v104);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v104;
    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v98.__r_.__value_.__l.__size_)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
LABEL_92:
        v94 &= 0xFFFFFFFFFFFF0000;
        v98.__r_.__value_.__r.__words[0] = v94;
        v98.__r_.__value_.__l.__size_ = v104.__r_.__value_.__r.__words[0];
        *(&v98.__r_.__value_.__r.__words[1] + 7) = *(v104.__r_.__value_.__r.__words + 7);
        *(&v98.__r_.__value_.__s + 23) = 1;
      }
    }

    else if (!*(&v98.__r_.__value_.__s + 23))
    {
      goto LABEL_92;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_99;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_99;
    }

    v93 &= 0xFFFFFFFFFFFF0000;
    __p.__r_.__value_.__r.__words[0] = v93;
    __p.__r_.__value_.__l.__size_ = v104.__r_.__value_.__r.__words[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v104.__r_.__value_.__r.__words + 7);
    *(&__p.__r_.__value_.__s + 23) = 1;
LABEL_99:
    v54 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    v55 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v56 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &__p;
    }

    else
    {
      v58 = __p.__r_.__value_.__r.__words[0];
    }

    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v98.__r_.__value_.__l.__size_;
    }

    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v98;
    }

    else
    {
      v60 = v98.__r_.__value_.__r.__words[0];
    }

    if (v59 >= v57)
    {
      v61 = v57;
    }

    else
    {
      v61 = v59;
    }

    v62 = memcmp(v58, v60, v61);
    v63 = v57 < v59;
    if (v62)
    {
      v63 = v62 < 0;
    }

    if (v63)
    {
      break;
    }

    v64 = sub_10006AE00((*a1 + 344), v59 + v57 + 2);
    v65 = v64;
    v66 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    v67 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    v68 = v98.__r_.__value_.__l.__size_;
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v98.__r_.__value_.__l.__size_;
    }

    if (v69)
    {
      if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v70 = &v98;
      }

      else
      {
        v70 = v98.__r_.__value_.__r.__words[0];
      }

      memmove(v64, v70, v69);
      v66 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
      v68 = v98.__r_.__value_.__l.__size_;
      v67 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    }

    if (v67 < 0)
    {
      v66 = v68;
    }

    v65[v66] = 0;
    v71 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
    if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v71 = v98.__r_.__value_.__l.__size_;
    }

    v72 = &v65[v71 + 1];
    v73 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v74 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v75 = __p.__r_.__value_.__l.__size_;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = __p.__r_.__value_.__l.__size_;
    }

    if (v76)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v77 = &__p;
      }

      else
      {
        v77 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v72, v77, v76);
      v73 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v75 = __p.__r_.__value_.__l.__size_;
      v74 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    if (v74 < 0)
    {
      v73 = v75;
    }

    v72[v73] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    v31 += 4;
    if (v33 + 4 == v96)
    {
      goto LABEL_144;
    }
  }

  if (v55 < 0)
  {
    operator delete(v56);
    if ((*(&v98.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_171:
      operator delete(v98.__r_.__value_.__l.__data_);
    }
  }

  else if (v54 < 0)
  {
    goto LABEL_171;
  }

  return 0;
}

void sub_10006A5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_10006A624(uint64_t a1, uint64_t a2)
{
  v4 = sub_100064468(a1, 15, 0x110uLL);
  v64 = *(a2 + 48);
  v4[1] = 0u;
  v5 = v4 + 1;
  v4[15] = 0u;
  v4[16] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v65 = v4;
  v4[2] = 0u;
  v6 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      for (i = 0; i != 256; ++i)
      {
        v8 = i;
        if (*(a1 + 24) == 1)
        {
          v9 = *(**(a1 + 8) + 8);
          v8 = (*(*v9 + 40))(v9, i);
          v10 = *(v6 + 25);
          if (*(a1 + 24))
          {
            v11 = *(**(a1 + 8) + 8);
            LOBYTE(v10) = (*(*v11 + 40))(v11, v10);
          }
        }

        else
        {
          LOBYTE(v10) = *(v6 + 25);
        }

        if (v8 == v10)
        {
          *(v5 + i) = 1;
        }
      }

      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != (a2 + 8));
  }

  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  if (v16 == v15)
  {
LABEL_84:
    v46 = *(a2 + 52);
    v47 = *(*a1 + 40);
    if ((v47 & 0x100000) != 0 && ((*(a1 + 88) & ~v46) == 0 || (*(a1 + 92) & ~v46) == 0))
    {
      v46 |= *(a1 + 96);
    }

    if (v46)
    {
      for (j = 0; j != 256; ++j)
      {
        if (sub_10006B248(*(a1 + 8), j, v46))
        {
          *(v5 + j) = 1;
        }
      }

      v47 = *(*a1 + 40);
    }

    v49 = *(a2 + 56);
    if ((v47 & 0x100000) != 0 && ((*(a1 + 88) & ~v49) == 0 || (*(a1 + 92) & ~v49) == 0))
    {
      v49 |= *(a1 + 96);
    }

    if (v49)
    {
      for (k = 0; k != 256; ++k)
      {
        if (!sub_10006B248(*(a1 + 8), k, v49))
        {
          *(v5 + k) = 1;
        }
      }
    }

    v51 = *(a2 + 64);
    v66 = (a2 + 72);
    if (v51 == (a2 + 72))
    {
LABEL_138:
      if (!v64)
      {
        return v65;
      }

      v61 = 1;
      v62.i64[0] = 0x101010101010101;
      v62.i64[1] = 0x101010101010101;
      result = v65;
      do
      {
        v65[v61] = vandq_s8(vceqzq_s8(v65[v61]), v62);
        ++v61;
      }

      while (v61 != 17);
      return result;
    }

LABEL_104:
    memset(&v71, 0, sizeof(v71));
    if (*(v51 + 26))
    {
      __assert_rtn("append_set", "basic_regex_creator.hpp", 635, "static_cast<charT>(0) == sfirst->second");
    }

    sub_10006AE58(**(a1 + 8), v51 + 25, v51 + 26, &__p);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    v71 = __p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      size = v71.__r_.__value_.__l.__size_;
      if (!v71.__r_.__value_.__l.__size_)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        return 0;
      }

      size = v71.__r_.__value_.__l.__size_;
    }

    v53 = 0;
    v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = size;
    }

    v67 = v71.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v71;
    }

    else
    {
      v55 = v71.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      LOWORD(v72.__r_.__value_.__l.__data_) = v53;
      memset(&__p, 170, sizeof(__p));
      sub_10006AE58(**(a1 + 8), &v72, &v72.__r_.__value_.__s.__data_[1], &__p);
      v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v57 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v56 = __p.__r_.__value_.__l.__size_;
      }

      if (v54 == v56)
      {
        v58 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        if (!memcmp(v55, v58, v54))
        {
          break;
        }
      }

      if (v57 < 0)
      {
        goto LABEL_125;
      }

LABEL_126:
      if (++v53 == 256)
      {
        v59 = v51[1];
        v60 = v51;
        if (v59)
        {
          do
          {
            v51 = v59;
            v59 = *v59;
          }

          while (v59);
        }

        else
        {
          do
          {
            v51 = v60[2];
            v14 = *v51 == v60;
            v60 = v51;
          }

          while (!v14);
        }

        if (v69 < 0)
        {
          operator delete(v67);
        }

        if (v51 == v66)
        {
          goto LABEL_138;
        }

        goto LABEL_104;
      }
    }

    *(v5 + v53) = 1;
    if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_125:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_126;
  }

  v68 = *(a2 + 32);
  while (1)
  {
    v17 = *v16;
    if (*(a1 + 24) == 1)
    {
      v18 = *(**(a1 + 8) + 8);
      v17 = (*(*v18 + 40))(v18, *v16);
      v19 = v16[2];
      if (*(a1 + 24))
      {
        v20 = *(**(a1 + 8) + 8);
        v19 = (*(*v20 + 40))(v20, v16[2]);
      }
    }

    else
    {
      v19 = v16[2];
    }

    if ((*(*a1 + 42) & 0x20) == 0)
    {
      if (v19 < v17)
      {
        return 0;
      }

      memset(v5 + v17, 1, (v19 - v17) + 1);
      goto LABEL_83;
    }

    v73 = v17;
    v74 = 0;
    memset(&v71, 170, sizeof(v71));
    sub_100061E44(**(a1 + 8), &v74, &v71);
    v73 = v19;
    memset(&__p, 170, sizeof(__p));
    sub_100061E44(**(a1 + 8), &v74, &__p);
    v21 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v23 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v71.__r_.__value_.__l.__size_;
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v71;
    }

    else
    {
      v27 = v71.__r_.__value_.__r.__words[0];
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(p_p, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      break;
    }

    if (v74)
    {
      __assert_rtn("append_set", "basic_regex_creator.hpp", 570, "c3[1] == charT(0)");
    }

    for (m = 0; m != 256; ++m)
    {
      v73 = m;
      memset(&v72, 170, sizeof(v72));
      sub_100061E44(**(a1 + 8), &v74, &v72);
      v32 = SHIBYTE(v72.__r_.__value_.__r.__words[2]);
      v33 = v72.__r_.__value_.__r.__words[0];
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v72.__r_.__value_.__l.__size_;
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v71.__r_.__value_.__l.__size_;
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v71;
      }

      else
      {
        v37 = v71.__r_.__value_.__r.__words[0];
      }

      if (v36 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v36;
      }

      v39 = memcmp(v35, v37, v38);
      v40 = v34 >= v36;
      if (v39)
      {
        v40 = v39 >= 0;
      }

      if (v40)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &__p;
        }

        else
        {
          v42 = __p.__r_.__value_.__r.__words[0];
        }

        if (v34 >= v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = v34;
        }

        v44 = memcmp(v42, v35, v43);
        v45 = v41 >= v34;
        if (v44)
        {
          v45 = v44 >= 0;
        }

        if (v45)
        {
          *(v5 + m) = 1;
        }
      }

      if (v32 < 0)
      {
        operator delete(v33);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v15 = v68;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

LABEL_83:
    v16 += 4;
    if (v16 == v15)
    {
      goto LABEL_84;
    }
  }

  if (v22 < 0)
  {
    operator delete(v23);
    v21 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  if (v21 < 0)
  {
LABEL_146:
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_10006AD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006AE00(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  result = a1[2];
  if (v4 - result < a2)
  {
    sub_100068F60(a1, result + a2 - a1[1]);
    result = a1[2];
  }

  a1[2] = result + a2;
  return result;
}

void sub_10006AE58(uint64_t a1@<X0>, std::string::value_type *a2@<X1>, std::string::value_type *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  if (*a3)
  {
    sub_10011C4E0();
  }

  *(a4 + 1) = 0;
  v6 = (a4 + 8);
  *a4 = 0;
  *(a4 + 2) = 0;
  v7 = *(a1 + 360);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      (*(**(a1 + 24) + 32))(&v18);
      if (a4[23] < 0)
      {
        operator delete(*a4);
      }

      *a4 = v18;
      v12 = v19;
      *(a4 + 2) = v19;
      v13 = HIBYTE(v12);
      v14 = v13;
      v15 = 0;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(a4 + 1);
      }

      if (v13)
      {
        if (v14 >= 0)
        {
          v16 = a4;
        }

        else
        {
          v16 = *a4;
        }

        do
        {
          if (v16[v15] == *(a1 + 364))
          {
            goto LABEL_32;
          }

          ++v15;
        }

        while (v13 != v15);
        v15 = v13;
      }

LABEL_32:
      std::string::erase(a4, v15, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_33;
    }

    if (v7 != 3)
    {
      goto LABEL_33;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      (*(**(a1 + 24) + 32))(&v18);
      if (a4[23] < 0)
      {
        operator delete(*a4);
      }

      *a4 = v18;
      *(a4 + 2) = v19;
      std::string::erase(a4, *(a1 + 364), 0xFFFFFFFFFFFFFFFFLL);
    }

    goto LABEL_33;
  }

  sub_10006B17C(a4, a2, a3, a3 - a2);
  v8 = a4[23];
  if ((v8 & 0x80u) == 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 1);
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v9, &v9[v8]);
  if ((a4[23] & 0x80u) == 0)
  {
    v11 = a4[23];
  }

  else
  {
    v10 = *a4;
    v11 = *(a4 + 1);
  }

  (*(**(a1 + 24) + 32))(&v18);
  if (a4[23] < 0)
  {
    operator delete(*a4);
  }

  *a4 = v18;
  *(a4 + 2) = v19;
LABEL_33:
  while (1)
  {
    v17 = a4[23];
    if (v17 < 0)
    {
      break;
    }

    if (!a4[23])
    {
      goto LABEL_41;
    }

    if (a4[v17 - 1])
    {
      return;
    }

LABEL_39:
    std::string::erase(a4, v17 - 1, 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = *v6;
  if (*v6)
  {
    if (*(*a4 + v17 - 1))
    {
      return;
    }

    goto LABEL_39;
  }

  operator delete(*a4);
LABEL_41:
  *a4 = 0;
  *v6 = v18;
  *(a4 + 15) = *(&v18 + 7);
  a4[23] = 1;
}

void sub_10006B128(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x10006B084);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006B17C(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

BOOL sub_10006B248(uint64_t a1, int a2, int a3)
{
  if ((a2 & 0x80000000) == 0 && (a3 & 0x5F700) != 0 && (*(*(*(*a1 + 8) + 16) + 4 * a2) & a3 & 0x5F700) != 0 || a2 == 95 && (a3 & 0x2000000) != 0)
  {
    return 1;
  }

  if ((a2 & 0x80) != 0 || (a3 & 0x1000000) == 0 || (*(*(*(*a1 + 8) + 16) + 4 * a2) & 0x4000) == 0 || (v3 = 1, a2 <= 0xDu) && ((1 << a2) & 0x3400) != 0)
  {
    if (a2 - 10 <= 3 && (a3 & 0x10000000) != 0)
    {
      return 1;
    }

    v3 = 0;
    if ((a2 & 0x80) == 0 && (a3 & 0x8000000) != 0)
    {
      return (*(*(*(*a1 + 8) + 16) + 4 * a2) & 0x4000) != 0 && a2 - 14 < 0xFFFFFFFC;
    }
  }

  return v3;
}

void sub_10006B310(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10006B310(a1, *a2);
    sub_10006B310(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_10006B364(unsigned __int8 *__src@<X1>, uint64_t a2@<X0>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 352))
  {
    v8 = a3 - __src;
    goto LABEL_8;
  }

  v8 = a3 - __src;
  sub_100052DF0(__p, __src, a3, a3 - __src);
  v9 = sub_10000F260(a2 + 336, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 344 == v9)
  {
LABEL_8:
    memset(__p, 170, sizeof(__p));
    sub_100052DF0(__p, __src, a3, v8);
    sub_10006B53C(__p, &v15);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    __p[2] = v16;
    *__p = v15;
    v11 = HIBYTE(v16);
    if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
    {
      v13 = __p[1];
      if (__p[1])
      {
        v12 = __p[0];
LABEL_15:
        sub_100052DF0(a4, v12, v12 + v13, v13);
        if ((HIBYTE(__p[2]) & 0x80) == 0)
        {
          return;
        }

LABEL_22:
        operator delete(__p[0]);
        return;
      }
    }

    else if (HIBYTE(v16))
    {
      v12 = __p;
      v13 = SHIBYTE(v16);
      goto LABEL_15;
    }

    if (v8 == 1)
    {
      v14 = *__src;
      *(a4 + 23) = 1;
      *a4 = v14;
      if ((v11 & 0x80) == 0)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      if ((v11 & 0x80) == 0)
      {
        return;
      }
    }

    goto LABEL_22;
  }

  if (*(v9 + 79) < 0)
  {
    sub_1000078D8(a4, *(v9 + 56), *(v9 + 64));
  }

  else
  {
    v10 = *(v9 + 56);
    *(a4 + 16) = *(v9 + 72);
    *a4 = v10;
  }
}

void sub_10006B510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_10006B53C@<X0>(size_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = off_100191E38[0];
  if (*off_100191E38[0])
  {
    v5 = 0;
    v6 = *(result + 23);
    v8 = *result;
    v7 = *(result + 8);
    do
    {
      result = strlen(v4);
      v9 = result;
      if ((v6 & 0x80) != 0)
      {
        if (result == v7)
        {
          result = v8;
          if (v7 == -1)
          {
            sub_10002EAB0();
          }

LABEL_8:
          result = memcmp(result, v4, v9);
          if (!result)
          {
            *(a2 + 23) = 1;
            *a2 = v5;
            *(a2 + 1) = 0;
            return result;
          }
        }
      }

      else
      {
        result = v2;
        if (v9 == v6)
        {
          goto LABEL_8;
        }
      }

      v4 = off_100191E38[++v5];
    }

    while (*v4);
  }

  v10 = off_100192240[0];
  if (!*off_100192240[0])
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v11 = *(v2 + 23);
  v12 = 1;
  v14 = *v2;
  v13 = *(v2 + 8);
  while (1)
  {
    result = strlen(v10);
    v15 = result;
    if ((v11 & 0x80) == 0)
    {
      break;
    }

    if (result == v13)
    {
      result = v14;
      if (v13 == -1)
      {
        sub_10002EAB0();
      }

      goto LABEL_17;
    }

LABEL_18:
    v10 = off_100192240[v12++];
    if (!*v10)
    {
      goto LABEL_19;
    }
  }

  result = v2;
  if (v15 != v11)
  {
    goto LABEL_18;
  }

LABEL_17:
  result = memcmp(result, v10, v15);
  if (result)
  {
    goto LABEL_18;
  }

  return sub_10000459C(a2, v10);
}

void sub_10006B6C4(uint64_t a1, uint64_t a2)
{
  v15 = -21846;
  sub_10006BDBC(a1, a2, &v15);
  v5 = *(a1 + 128);
  v4 = *(a1 + 136);
  if (v5 == v4)
  {
    goto LABEL_9;
  }

  v6 = **(a1 + 8) + 32;
  if (*(v6 + *v4) == 14)
  {
    *(a1 + 136) = v4 + 1;
    if (v5 != v4 + 1)
    {
      if (*(v6 + v4[1]) == 10)
      {
        *(a1 + 136) = v4;
        goto LABEL_6;
      }

      v14 = -21846;
      sub_10006BDBC(a1, a2, &v14);
      sub_10006C0C8(a2, &v15, &v14);
      v10 = *(a1 + 136);
      v11 = **(a1 + 8) + 32;
      if (*(v11 + *v10) != 14)
      {
        return;
      }

      v12 = *(a1 + 128);
      v13 = v10 + 1;
      *(a1 + 136) = v10 + 1;
      if (v12 != v10 + 1)
      {
        if (*(v11 + *v13) == 10)
        {
          *(a1 + 136) = v10;
          return;
        }

        v7 = &v13[-*(a1 + 120)];
        v8 = a1;
        v9 = 11;
        goto LABEL_11;
      }

      v7 = &v12[-*(a1 + 120)];
LABEL_10:
      v8 = a1;
      v9 = 7;
LABEL_11:
      sub_100063EB4(v8, v9, v7);
      return;
    }

LABEL_9:
    v7 = &v5[-*(a1 + 120)];
    goto LABEL_10;
  }

LABEL_6:
  sub_10006C394(a2, &v15);
  if (HIBYTE(v15))
  {
    *(a2 + 49) = 1;
  }

  *(a2 + 60) = 0;
}

BOOL sub_10006B848(std::string *a1, uint64_t a2)
{
  size = a1[5].__r_.__value_.__l.__size_;
  v3 = a1[5].__r_.__value_.__r.__words[2];
  a1[5].__r_.__value_.__r.__words[2] = (v3 + 1);
  if (size == v3 + 1)
  {
    data = a1[5].__r_.__value_.__l.__data_;
    sub_10000459C(__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
    sub_100064770(a1, 7, size - data, __p);
    goto LABEL_7;
  }

  v6 = a1->__r_.__value_.__l.__size_;
  v7 = *v6;
  v8 = *v6 + 32;
  v9 = *(v8 + v3[1]);
  if (v9 == 37)
  {
    v18 = v3 + 2;
    a1[5].__r_.__value_.__r.__words[2] = (v3 + 2);
    if (size == v3 + 2 || (a1[5].__r_.__value_.__r.__words[2] = (v3 + 3), size == v3 + 3))
    {
LABEL_24:
      v21 = a1[5].__r_.__value_.__l.__data_;
      sub_10000459C(__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
      sub_100064770(a1, 7, size - v21, __p);
      goto LABEL_7;
    }

    v19 = v3 + 4;
    v14 = -4 - v3;
    while (1)
    {
      v20 = *(v8 + *(v19 - 1));
      a1[5].__r_.__value_.__r.__words[2] = v19;
      if (v20 == 37)
      {
        break;
      }

      --v14;
      v17 = v19++ == size;
      if (v17)
      {
        goto LABEL_24;
      }
    }

    if (v19 == size || *(v8 + *v19) != 10)
    {
      goto LABEL_33;
    }

    memset(__p, 170, sizeof(__p));
    sub_10006B364(v18, *v6, v19 - 1, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      if (__p[1] - 3 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v36 = 0;
        v22 = __p[0];
        v35 = *__p[0];
        if (__p[1] > 1)
        {
          goto LABEL_54;
        }

        goto LABEL_55;
      }
    }

    else if (HIBYTE(__p[2]) - 3 > 0xFFFFFFFD)
    {
      v36 = 0;
      v35 = __p[0];
      if (HIBYTE(__p[2]) >= 2u)
      {
        v22 = __p;
LABEL_54:
        v34 = *(v22 + 1);
LABEL_56:
        v36 = v34;
        sub_10006C4C8(a2, &v35);
        v27 = 0;
        ++a1[5].__r_.__value_.__r.__words[2];
LABEL_57:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        return (v27 & 1) == 0;
      }

LABEL_55:
      v34 = 0;
      goto LABEL_56;
    }

    sub_100063EB4(a1, 3, &v18[-a1[5].__r_.__value_.__r.__words[0]]);
    v27 = 1;
    goto LABEL_57;
  }

  if (v9 != 36 || (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x103) == 0x101)
  {
    a1[5].__r_.__value_.__r.__words[2] = v3;
    sub_10006B6C4(a1, a2);
    return 1;
  }

  v12 = v3 + 2;
  a1[5].__r_.__value_.__r.__words[2] = (v3 + 2);
  if (size == v3 + 2)
  {
    goto LABEL_24;
  }

  v13 = v3 + 3;
  a1[5].__r_.__value_.__r.__words[2] = (v3 + 3);
  if (size == v3 + 3)
  {
    goto LABEL_24;
  }

  v14 = -4 - v3;
  v15 = v3 + 4;
  while (1)
  {
    v16 = *(v8 + *(v15 - 1));
    a1[5].__r_.__value_.__r.__words[2] = v15;
    if (v16 == 36)
    {
      break;
    }

    --v14;
    v17 = v15++ == size;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  if (v15 == size || *(v8 + *v15) != 10)
  {
LABEL_33:
    v23 = a1[5].__r_.__value_.__l.__data_;
    sub_10000459C(__p, "Character class declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
    sub_100064770(a1, 7, -v14 - v23, __p);
LABEL_7:
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v24 = *(v8 + *v12);
  if (v24 == 4)
  {
    v25 = v13;
  }

  else
  {
    v25 = v12;
  }

  v26 = sub_100062EC4(v7, v25, v15 - 1);
  if (v26)
  {
    if (v24 == 4)
    {
      *(a2 + 56) |= v26;
    }

    else
    {
      *(a2 + 52) |= v26;
    }

    *(a2 + 60) = 0;
    ++a1[5].__r_.__value_.__r.__words[2];
    return 1;
  }

  if (&v25[v14] == -2 && (*(a2 + 60) & 1) != 0)
  {
    v29 = a1[5].__r_.__value_.__l.__size_;
    v28 = a1[5].__r_.__value_.__r.__words[2];
    a1[5].__r_.__value_.__r.__words[2] = v28 + 1;
    if (v28 + 1 != v29)
    {
      v30 = *a1->__r_.__value_.__l.__size_ + 32;
      if (*(v30 + *(v28 + 1)) == 10)
      {
        v31 = *(v30 + *v25);
        if (v31 == 21)
        {
          a1[5].__r_.__value_.__r.__words[2] = v28 + 2;
          v32 = a1;
          v33 = 10;
          goto LABEL_65;
        }

        if (v31 == 20)
        {
          a1[5].__r_.__value_.__r.__words[2] = v28 + 2;
          v32 = a1;
          v33 = 9;
LABEL_65:
          sub_100064468(v32, v33, 0x10uLL);
          return 0;
        }
      }
    }
  }

  sub_100063EB4(a1, 4, &v25[-a1[5].__r_.__value_.__r.__words[0]]);
  return 0;
}

void sub_10006BD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006BDBC(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  v5 = a1[5].__r_.__value_.__r.__words[2];
  v6 = *a1->__r_.__value_.__l.__size_;
  v7 = v6 + 32;
  v8 = *(v6 + 32 + *v5);
  if (v8 != 9)
  {
    if (v8 == 12)
    {
      v10 = *(a1->__r_.__value_.__r.__words[0] + 40);
      a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
      if ((v10 & 0x10000) == 0)
      {
        *a3 = sub_1000692C8(a1);
        return;
      }

      goto LABEL_11;
    }

    if (v8 != 14 || (*(a2 + 60) & 1) != 0)
    {
LABEL_8:
      a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
LABEL_11:
      *a3 = *v5;
      return;
    }

    v9 = v5 + 1;
    a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
    if (v5 + 1 != a1[5].__r_.__value_.__l.__size_ && *(v7 + *v9) == 10)
    {
      a1[5].__r_.__value_.__r.__words[2] = v5;
      goto LABEL_8;
    }

    v18 = &v9[-a1[5].__r_.__value_.__r.__words[0]];
    v19 = a1;
    v20 = 11;
    goto LABEL_32;
  }

  size = a1[5].__r_.__value_.__l.__size_;
  v12 = v5 + 1;
  a1[5].__r_.__value_.__r.__words[2] = (v5 + 1);
  if (size == v5 + 1)
  {
    goto LABEL_21;
  }

  if (*(v7 + *v12) != 5)
  {
    a1[5].__r_.__value_.__r.__words[2] = v5;
    *a3 = *v5;
    a1[5].__r_.__value_.__r.__words[2] = v12;
    return;
  }

  v13 = v5 + 2;
  a1[5].__r_.__value_.__r.__words[2] = (v5 + 2);
  if (size == v5 + 2)
  {
LABEL_21:
    v18 = &size[-a1[5].__r_.__value_.__r.__words[0]];
LABEL_31:
    v19 = a1;
    v20 = 3;
LABEL_32:

    sub_100063EB4(v19, v20, v18);
    return;
  }

  v14 = v5 + 3;
  a1[5].__r_.__value_.__r.__words[2] = (v5 + 3);
  if (size == v5 + 3)
  {
    goto LABEL_30;
  }

  v15 = v5 + 3;
  while (1)
  {
    v16 = *v15++;
    v17 = *(v7 + v16);
    a1[5].__r_.__value_.__r.__words[2] = v15;
    if (v17 == 5)
    {
      break;
    }

    v14 = v15;
    if (v15 == size)
    {
      goto LABEL_30;
    }
  }

  if (v14 + 1 == size || *(v7 + v14[1]) != 10)
  {
LABEL_30:
    v18 = &v13[-a1[5].__r_.__value_.__r.__words[0]];
    goto LABEL_31;
  }

  a1[5].__r_.__value_.__r.__words[2] = (v14 + 2);
  memset(__p, 170, sizeof(__p));
  sub_10006B364(v13, v6, v14, __p);
  v21 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v23 = __p[1];
    if (__p[1] - 3 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v22 = __p[0];
      *a3 = *__p[0];
      if (v23 > 1)
      {
        goto LABEL_38;
      }

LABEL_39:
      v24 = 0;
      goto LABEL_40;
    }

LABEL_36:
    sub_100063EB4(a1, 3, &v13[-a1[5].__r_.__value_.__r.__words[0]]);
    LOBYTE(v21) = HIBYTE(__p[2]);
    goto LABEL_41;
  }

  if (HIBYTE(__p[2]) - 3 <= 0xFFFFFFFD)
  {
    goto LABEL_36;
  }

  *a3 = __p[0];
  if (v21 < 2)
  {
    goto LABEL_39;
  }

  v22 = __p;
LABEL_38:
  v24 = *(v22 + 1);
LABEL_40:
  *(a3 + 1) = v24;
LABEL_41:
  if ((v21 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10006C0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006C0C8(uint64_t a1, char *a2, char *a3)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v7 >= v6)
  {
    v8 = sub_10006C1C0((a1 + 24), a2);
    v6 = *(a1 + 40);
  }

  else
  {
    *v7 = *a2;
    v7[1] = a2[1];
    v8 = v7 + 2;
  }

  *(a1 + 32) = v8;
  if (v8 >= v6)
  {
    result = sub_10006C1C0((a1 + 24), a3);
  }

  else
  {
    *v8 = *a3;
    v8[1] = a3[1];
    result = (v8 + 2);
  }

  *(a1 + 32) = result;
  if (a2[1])
  {
    *(a1 + 49) = 1;
    result = sub_10006C394(a1, a2);
    if (a2[1])
    {
      *(a1 + 49) = 1;
    }

    *(a1 + 60) = 0;
  }

  if (a3[1])
  {
    *(a1 + 49) = 1;
    result = sub_10006C394(a1, a3);
    if (a3[1])
    {
      *(a1 + 49) = 1;
    }
  }

  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_10006C1C0(void *a1, _BYTE *a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (v2 <= -2)
  {
    sub_10002C63C();
  }

  v5 = a1[2] - *a1;
  if (v5 <= v2 + 1)
  {
    v6 = v2 + 1;
  }

  else
  {
    v6 = a1[2] - *a1;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  v13 = a1;
  if (v7)
  {
    sub_100054D7C(a1, v7);
  }

  v12 = 0u;
  v8 = (2 * v2);
  __p[0] = 0;
  __p[1] = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v12 = (2 * v2 + 2);
  sub_10006C318(a1, __p);
  if (v12 != __p[1])
  {
    *&v12 = v12 + ((__p[1] - v12 + 1) & 0xFFFFFFFFFFFFFFFELL);
  }

  v9 = a1[1];
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_10006C2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10006C318(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_10006C394(uint64_t a1, char *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *sub_10006C460(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_10006C460(uint64_t a1, void *a2, char *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 25);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 26);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_10006C4C8(uint64_t a1, char *a2)
{
  result = sub_10006C394(a1 + 64, a2);
  if (a2[1])
  {
    *(a1 + 49) = 1;
    result = sub_10006C394(a1, a2);
    if (a2[1])
    {
      *(a1 + 49) = 1;
    }
  }

  *(a1 + 60) = 0;
  return result;
}

uint64_t sub_10006C530(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = (v2 + 1);
  *(a1 + 136) = v2 + 1;
  if (v2 + 1 == v3)
  {
    sub_100063EB4(a1, 8, &v4[-*(a1 + 120)]);
  }

  else
  {
    v5 = *v4;
    v6 = 0;
    switch(*(**(a1 + 8) + v5 + 32))
    {
      case 1:

        return sub_100064D38(a1);
      case 2:
        return v6;
      case 7:
        if ((*(*a1 + 41) & 4) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v9 = 1;
        v10 = -1;
        goto LABEL_28;
      case 8:
        if ((*(*a1 + 41) & 4) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v9 = 0;
        v10 = 1;
LABEL_28:

        return sub_100065990(a1, v9, v10);
      case 0xB:
        if ((*(*a1 + 41) & 8) == 0)
        {
          goto LABEL_43;
        }

        return sub_1000663E4(a1);
      case 0xF:
        if ((*(*a1 + 41) & 2) != 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;

        return sub_100065E18(a1, 1);
      case 0x10:
        if ((*(*a1 + 41) & 2) != 0)
        {
          goto LABEL_43;
        }

        v11 = *(a1 + 120);
        sub_10000459C(&__p, "Found a closing repetition operator } with no corresponding {.");
        sub_100064770(a1, 9, &v4[-v11], &__p);
        goto LABEL_58;
      case 0x11:

        return sub_10006997C(a1);
      case 0x12:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 7;
        goto LABEL_40;
      case 0x13:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 8;
        goto LABEL_40;
      case 0x14:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 9;
        goto LABEL_40;
      case 0x15:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 10;
        goto LABEL_40;
      case 0x18:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 11;
        goto LABEL_40;
      case 0x19:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        *(a1 + 136) = v2 + 2;
        v8 = 12;
LABEL_40:
        sub_100064468(a1, v8, 0x10uLL);
        return 1;
      default:
        if ((*(*a1 + 41) & 0x10) == 0)
        {
          goto LABEL_43;
        }

        HIDWORD(v13) = v5 - 67;
        LODWORD(v13) = HIDWORD(v13);
        v12 = v13 >> 2;
        if (v12 > 7)
        {
          if (v12 != 8)
          {
            if (v12 != 12)
            {
              if (v12 == 13)
              {
                v24 = 0xAAAAAAAAAAAA0000;
                v20 = 0;
                v21 = 0;
                __p = &v19;
                v19 = 0;
                v22 = 0;
                v23 = 0;
                v27 = 0;
                v28 = 0;
                v26 = &v27;
                v25 = 0xAAAAAAAA00000000;
                goto LABEL_55;
              }

              goto LABEL_43;
            }

            v17 = 0;
            goto LABEL_62;
          }
        }

        else if (v12)
        {
          if (v12 != 4)
          {
            if (v12 == 5)
            {
              v24 = 0xAAAAAAAAAAAA0001;
              v20 = 0;
              v21 = 0;
              __p = &v19;
              v19 = 0;
              v22 = 0;
              v23 = 0;
              v27 = 0;
              v28 = 0;
              v26 = &v27;
              v25 = 0xAAAAAAAA00000000;
LABEL_55:
              HIDWORD(v24) = *(a1 + 80);
              BYTE4(v25) = 0;
              v14 = sub_100069134(a1, &__p);
              v6 = v14 != 0;
              v15 = *(a1 + 136);
              if (v14)
              {
                *(a1 + 136) = v15 + 1;
              }

              else
              {
                sub_100063EB4(a1, 4, v15 - *(a1 + 120));
              }

              sub_100069150(&__p);
              return v6;
            }

LABEL_43:

            return sub_100064700(a1);
          }

          v17 = 1;
LABEL_62:

          return sub_10006CAC8(a1, v17);
        }

        v16 = *(a1 + 120);
        sub_10000459C(&__p, "The \\c and \\C escape sequences are not supported by POSIX basic regular expressions: try the Perl syntax instead.");
        sub_100064770(a1, 5, &v4[-v16], &__p);
LABEL_58:
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p);
        }

        break;
    }
  }

  return 0;
}

void sub_10006CA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10006CAC8(uint64_t a1, int a2)
{
  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  v5 = v3 + 1;
  *(a1 + 136) = v3 + 1;
  if (v3 + 1 == v4)
  {
    v7 = **(a1 + 8) + 32;
    do
    {
      *(a1 + 136) = v3;
      v8 = *v3--;
      --v5;
    }

    while (*(v7 + v8) != 12);
    sub_100063EB4(a1, 5, &v5[-*(a1 + 120)]);
    return 0;
  }

  v16 = 0u;
  v15 = &v16;
  v19 = 0;
  __p = 0;
  v18 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v20 = 2863267840;
  v21 = 0xAAAAAA0100000000;
  if (a2)
  {
    LOBYTE(v20) = 1;
  }

  v6 = *v5;
  if (v6 <= 0x2D)
  {
    if (*v5 > 0x26u)
    {
      switch(v6)
      {
        case '\'':
          v14 = 39;
          sub_10006C394(&v15, &v14);
          if (HIBYTE(v14))
          {
            BYTE1(v20) = 1;
          }

          BYTE4(v21) = 0;
          v14 = 44;
          sub_10006C394(&v15, &v14);
          if (HIBYTE(v14))
          {
            BYTE1(v20) = 1;
          }

          BYTE4(v21) = 0;
          v14 = 35;
          sub_10006C394(&v15, &v14);
          goto LABEL_65;
        case '(':
          v14 = 40;
          sub_10006C394(&v15, &v14);
          if (HIBYTE(v14))
          {
            BYTE1(v20) = 1;
          }

          BYTE4(v21) = 0;
          v14 = 91;
          sub_10006C394(&v15, &v14);
          if (HIBYTE(v14))
          {
            BYTE1(v20) = 1;
          }

          BYTE4(v21) = 0;
          v14 = 123;
          sub_10006C394(&v15, &v14);
          goto LABEL_65;
        case ')':
          v14 = 41;
          sub_10006C394(&v15, &v14);
          if (HIBYTE(v14))
          {
            BYTE1(v20) = 1;
          }

          BYTE4(v21) = 0;
          v14 = 93;
          sub_10006C394(&v15, &v14);
          if (HIBYTE(v14))
          {
            BYTE1(v20) = 1;
          }

          BYTE4(v21) = 0;
          v14 = 125;
          sub_10006C394(&v15, &v14);
          goto LABEL_65;
      }

      goto LABEL_72;
    }

    if (v6 != 32)
    {
      if (v6 == 34)
      {
        v14 = 34;
        sub_10006C394(&v15, &v14);
        if (HIBYTE(v14))
        {
          BYTE1(v20) = 1;
        }

        BYTE4(v21) = 0;
        v14 = 39;
        sub_10006C394(&v15, &v14);
        if (HIBYTE(v14))
        {
          BYTE1(v20) = 1;
        }

        BYTE4(v21) = 0;
        v14 = 96;
        sub_10006C394(&v15, &v14);
        goto LABEL_65;
      }

      goto LABEL_72;
    }

    goto LABEL_35;
  }

  if (*v5 > 0x5Eu)
  {
    if (v6 == 95)
    {
      v14 = 36;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 38;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 42;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 43;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 45;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 95;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 60;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 62;
      sub_10006C394(&v15, &v14);
      goto LABEL_65;
    }

    if (v6 == 119)
    {
      v10 = *(a1 + 80);
      goto LABEL_49;
    }

    if (v6 != 115)
    {
      goto LABEL_72;
    }

LABEL_35:
    v10 = *(a1 + 84);
LABEL_49:
    HIDWORD(v20) = v10;
    goto LABEL_67;
  }

  if (v6 == 46)
  {
    v11 = sub_100062EC4(**(a1 + 8), "punctN5boost11regex_errorE", "N5boost11regex_errorE");
    v10 = HIDWORD(v20) | v11;
    goto LABEL_49;
  }

  if (v6 != 60)
  {
    if (v6 == 62)
    {
      v14 = 10;
      sub_10006C394(&v15, &v14);
      if (HIBYTE(v14))
      {
        BYTE1(v20) = 1;
      }

      BYTE4(v21) = 0;
      v14 = 12;
      sub_10006C394(&v15, &v14);
      goto LABEL_65;
    }

LABEL_72:
    sub_100063EB4(a1, 4, &v5[-*(a1 + 120)]);
    v9 = 0;
    goto LABEL_73;
  }

  v14 = 59;
  sub_10006C394(&v15, &v14);
LABEL_65:
  if (HIBYTE(v14))
  {
    BYTE1(v20) = 1;
  }

LABEL_67:
  BYTE4(v21) = 0;
  if (BYTE1(v20) == 1)
  {
    v12 = sub_100069C88(a1, &v15);
  }

  else
  {
    v12 = sub_10006A624(a1, &v15);
  }

  v5 = *(a1 + 136);
  if (!v12)
  {
    goto LABEL_72;
  }

  *(a1 + 136) = v5 + 1;
  v9 = 1;
LABEL_73:
  sub_10006B310(&v22, v23[0]);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  sub_10006B310(&v15, v16);
  return v9;
}

void sub_10006D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100069150(va);
  _Unwind_Resume(a1);
}

std::string *sub_10006D0F8(std::string *result, int a2, uint64_t a3, std::string *this, uint64_t a5)
{
  v8 = result;
  v9 = result->__r_.__value_.__r.__words[0];
  if (!*(result->__r_.__value_.__r.__words[0] + 44))
  {
    *(v9 + 44) = a2;
  }

  data = result[5].__r_.__value_.__l.__data_;
  size = result[5].__r_.__value_.__l.__size_;
  result[5].__r_.__value_.__r.__words[2] = size;
  v12 = 10;
  if (a3 > 10)
  {
    v12 = a3;
  }

  v13 = v12 - 10;
  if (a5 == a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = a5;
  }

  v15 = size - data;
  if (v15 >= a3 + 10)
  {
    v16 = a3 + 10;
  }

  else
  {
    v16 = v15;
  }

  if (a2 != 17)
  {
    if (v15 <= a3 + 10 && v14 == 0)
    {
      v18 = "  The error occurred while parsing the regular expression: '";
    }

    else
    {
      v18 = "  The error occurred while parsing the regular expression fragment: '";
    }

    std::string::append(this, v18);
    if (v14 != v16)
    {
      sub_100052DF0(__p, (v8[5].__r_.__value_.__r.__words[0] + v14), (v8[5].__r_.__value_.__r.__words[0] + a3), a3 - v14);
      if ((SBYTE7(v25) & 0x80u) == 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if ((SBYTE7(v25) & 0x80u) == 0)
      {
        v20 = BYTE7(v25);
      }

      else
      {
        v20 = __p[1];
      }

      std::string::append(this, v19, v20);
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::append(this, ">>>HERE>>>");
      sub_100052DF0(__p, (v8[5].__r_.__value_.__r.__words[0] + a3), (v8[5].__r_.__value_.__r.__words[0] + v16), v16 - a3);
      if ((SBYTE7(v25) & 0x80u) == 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      if ((SBYTE7(v25) & 0x80u) == 0)
      {
        v22 = BYTE7(v25);
      }

      else
      {
        v22 = __p[1];
      }

      std::string::append(this, v21, v22);
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = std::string::append(this, "'.");
    v9 = v8->__r_.__value_.__r.__words[0];
  }

  if ((*(v9 + 42) & 4) == 0)
  {
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v23;
    v25 = v23;
    std::runtime_error::runtime_error(__p, this);
    __p[0] = &off_100183F08;
    LODWORD(v25) = a2;
    *(&v25 + 1) = a3;
    sub_10006D364(__p);
  }

  return result;
}

void sub_10006D2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006D32C(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10006D364(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_10006D3C0(exception, a1);
}

uint64_t sub_10006D3C4(uint64_t a1)
{
  *(a1 + 40) = &off_100183638;
  sub_10005A594((a1 + 48));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t sub_10006D418(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &off_100183F08;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = -1;
  *a1 = &off_100183F90;
  *(a1 + 8) = off_100183FC0;
  *(a1 + 40) = off_100183FE8;
  *(a1 + 48) = 0;
  return a1;
}

void sub_10006D6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_10006D758(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_10006D9C8(exception, a1);
}

void sub_10006D7B4(uint64_t a1)
{
  *(a1 + 40) = &off_100183638;
  sub_10005A594((a1 + 48));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_10006D828(uint64_t a1)
{
  *(a1 + 32) = &off_100183638;
  sub_10005A594((a1 + 40));

  std::runtime_error::~runtime_error(a1);
}

void sub_10006D884(uint64_t a1)
{
  *(a1 + 32) = &off_100183638;
  sub_10005A594((a1 + 40));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10006D8FC(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 4);
  sub_10005A594(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_10006D954(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 4);
  sub_10005A594(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_10006D9C8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_100183F08;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = &off_100183638;
  *(a1 + 48) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *a1 = &off_100183F90;
  *(a1 + 8) = off_100183FC0;
  *(a1 + 40) = off_100183FE8;
  return a1;
}

uint64_t sub_10006DB0C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    while (1)
    {
      v2 = *a2;
      if (*a2 <= 21)
      {
        switch(v2)
        {
          case 16:
            goto LABEL_6;
          case 17:
            goto LABEL_5;
          case 18:
LABEL_4:
            v3 = *(result + 28);
            *(result + 28) = v3 + 1;
            *(a2 + 304) = v3;
LABEL_5:
            *(a2 + 24) = 0uLL;
            *(a2 + 280) = 0;
            *(a2 + 248) = 0uLL;
            *(a2 + 264) = 0uLL;
            *(a2 + 216) = 0uLL;
            *(a2 + 232) = 0uLL;
            *(a2 + 184) = 0uLL;
            *(a2 + 200) = 0uLL;
            *(a2 + 152) = 0uLL;
            *(a2 + 168) = 0uLL;
            *(a2 + 120) = 0uLL;
            *(a2 + 136) = 0uLL;
            *(a2 + 88) = 0uLL;
            *(a2 + 104) = 0uLL;
            *(a2 + 56) = 0uLL;
            *(a2 + 72) = 0uLL;
            *(a2 + 40) = 0uLL;
LABEL_6:
            *(a2 + 16) += a2;
            break;
        }
      }

      else
      {
        if ((v2 - 22) < 4)
        {
          goto LABEL_4;
        }

        if (v2 == 29)
        {
          *(result + 48) = 1;
        }
      }

      v4 = *(a2 + 8);
      if (!v4)
      {
        *(a2 + 8) = 0;
        return result;
      }

      *(a2 + 8) = a2 + v4;
      a2 += v4;
    }
  }

  return result;
}

uint64_t sub_10006DBC8(uint64_t result, int *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = a2;
    do
    {
      if (*v4 == 29)
      {
        v7 = *(v4 + 2);
        if (v7 >= 0x40000000)
        {
          result = sub_100069C28(*v3, v7);
          v7 = result;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          v8 = a2;
          while (*v8 || v7 != v8[4])
          {
            v8 = *(v8 + 1);
            if (!v8)
            {
              goto LABEL_18;
            }
          }

          *(v4 + 2) = v8;
          while (1)
          {
            v8 = *(v8 + 1);
            if (!v8)
            {
              goto LABEL_21;
            }

            v10 = *v8;
            if ((*v8 - 22) >= 4)
            {
              if (v10 == 1)
              {
                if (v7 == v8[4])
                {
                  goto LABEL_21;
                }

                continue;
              }

              if (v10 != 18)
              {
                continue;
              }
            }

            v11 = v8[76];
            if (v11)
            {
              if (v11 >= 1)
              {
                v4[6] = v11 - 1;
              }

              goto LABEL_21;
            }
          }
        }

LABEL_18:
        v9 = *v3;
        if (!*(*v3 + 11))
        {
          *(v9 + 11) = 2;
        }

        v9[6] = 0;
        v9[7] = 0;
        if ((*(v9 + 42) & 4) == 0)
        {
          memset(&v16, 170, sizeof(v16));
          sub_10000459C(&v16, "Encountered a forward reference to a recursive sub-expression that does not exist.");
          v12.__vftable = 0xAAAAAAAAAAAAAAAALL;
          v12.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
          v14 = v12;
          v15 = v12;
          std::runtime_error::runtime_error(&v14, &v16);
          v14.__vftable = &off_100183F08;
          LODWORD(v15.__vftable) = 2;
          v15.__imp_.__imp_ = 0;
          sub_10006D364(&v14);
        }
      }

      else if (*v4 == 27)
      {
        v5 = v4[4];
        if (v5 <= -1073741825)
        {
          result = sub_100069C28(*v3, ~v5);
          if (result <= 0)
          {
            v6 = *v3;
            if (!*(*v3 + 11))
            {
              *(v6 + 11) = 2;
            }

            v6[6] = 0;
            v6[7] = 0;
            if ((*(v6 + 42) & 4) == 0)
            {
              memset(&v16, 170, sizeof(v16));
              sub_10000459C(&v16, "Encountered a forward reference to a marked sub-expression that does not exist.");
              v13.__vftable = 0xAAAAAAAAAAAAAAAALL;
              v13.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
              v14 = v13;
              v15 = v13;
              std::runtime_error::runtime_error(&v14, &v16);
              v14.__vftable = &off_100183F08;
              LODWORD(v15.__vftable) = 2;
              v15.__imp_.__imp_ = 0;
              sub_10006D364(&v14);
            }
          }
        }
      }

LABEL_21:
      v4 = *(v4 + 1);
    }

    while (v4);
  }

  return result;
}

void sub_10006DE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::runtime_error::~runtime_error(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10006DE68(uint64_t a1, int *a2)
{
  v2 = *(a1 + 24);
  __p = 0;
  v30 = 0;
  v31 = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      v5 = *v3;
      if (*v3 <= 0x1C)
      {
        if (((1 << v5) & 0x3C60000) != 0)
        {
          v6 = *(a1 + 24);
          v7 = v30;
          if (v30 >= v31)
          {
            v9 = (v30 - __p) >> 4;
            v10 = v9 + 1;
            if ((v9 + 1) >> 60)
            {
              sub_10002C63C();
            }

            v11 = v31 - __p;
            if ((v31 - __p) >> 3 > v10)
            {
              v10 = v11 >> 3;
            }

            if (v11 >= 0x7FFFFFFFFFFFFFF0)
            {
              v12 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v10;
            }

            if (v12)
            {
              sub_10006EF20(&__p, v12);
            }

            v13 = 16 * v9;
            *v13 = v6;
            *(v13 + 8) = v3;
            v8 = 16 * v9 + 16;
            v14 = (v13 - (v30 - __p));
            memcpy(v14, __p, v30 - __p);
            v15 = __p;
            __p = v14;
            v30 = v8;
            v31 = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v30 = v6;
            *(v7 + 1) = v3;
            v8 = (v7 + 16);
          }

          v30 = v8;
        }

        else if (v5 == 26)
        {
          v16 = sub_10006ECE4(a1, *(v3 + 1));
          v3[4] = v16;
          if (v16 < 0)
          {
            v17 = *a1;
            if (!*(*a1 + 44))
            {
              *(v17 + 44) = 2;
            }

            *(v17 + 48) = 0;
            *(v17 + 56) = 0;
            if ((*(v17 + 42) & 4) == 0)
            {
              memset(&v28, 170, sizeof(v28));
              sub_10000459C(&v28, "Invalid lookbehind assertion encountered in the regular expression.");
              v18.__vftable = 0xAAAAAAAAAAAAAAAALL;
              v18.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
              v26 = v18;
              v27 = v18;
              std::runtime_error::runtime_error(&v26, &v28);
              v26.__vftable = &off_100183F08;
              LODWORD(v27.__vftable) = 2;
              v27.__imp_.__imp_ = 0;
              sub_10006D364(&v26);
            }
          }
        }

        else if (v5 == 28)
        {
          *(a1 + 24) = *(v3 + 16);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3);
    while (1)
    {
      v25 = __p;
      v20 = v30;
      if (__p == v30)
      {
        break;
      }

      if (*(a1 + 48) == 1)
      {
        v19 = *(*a1 + 64);
        LOBYTE(v26.__vftable) = 0;
        sub_10006E1AC((a1 + 56), v19 + 1, &v26);
        v20 = v30;
      }

      v22 = *(v20 - 16);
      v21 = v20 - 16;
      *(a1 + 24) = v22;
      v23 = *(v21 + 1);
      v30 = v21;
      *(a1 + 40) = 0;
      sub_10006E29C(a1, *(v23 + 8), (v23 + 24), (v23 + 280), 1);
      *(a1 + 40) = 0;
      if (*(a1 + 48) == 1)
      {
        v24 = *(*a1 + 64);
        LOBYTE(v26.__vftable) = 0;
        sub_10006E1AC((a1 + 56), v24 + 1, &v26);
      }

      sub_10006E29C(a1, *(v23 + 16), (v23 + 24), (v23 + 280), 2);
      *v23 = sub_10006EEA8(a1, v23);
    }

    *(a1 + 24) = v2;
    if (v25)
    {
      v30 = v25;
      operator delete(v25);
    }
  }
}

void sub_10006E150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::runtime_error a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  std::runtime_error::~runtime_error(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void *sub_10006E1AC(void **a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      sub_1000310A0(a1, v9);
    }

    sub_10002C63C();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = &v15[v14];
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

void sub_10006E29C(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4, uint64_t a5)
{
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = (a1 + 56);
  v63 = 0;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0;
  v62 = 0;
  sub_100031024(&v61, v9, v10, v10 - v9);
  v64 = v11;
  if (!a2)
  {
    goto LABEL_139;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 24);
  v16 = vdupq_n_s8(a5);
  v17 = 1;
  while (1)
  {
    v18 = *a2;
    switch(*a2)
    {
      case 0:
        if (*(a2 + 16) != -3)
        {
          goto LABEL_32;
        }

        v19 = *(*(a2 + 8) + 8);
        goto LABEL_33;
      case 1:
        v24 = *(a2 + 16);
        if ((v24 & 0x80000000) != 0)
        {
          if (!a3)
          {
            goto LABEL_111;
          }

          if (*a3)
          {
            for (i = 0; i != 256; i += 16)
            {
              *&a3[i] = vorrq_s8(*&a3[i], v16);
            }

LABEL_108:
            v48 = *a3;
LABEL_110:
            *a3 = v48 | 4;
LABEL_111:
            if (!a4)
            {
              goto LABEL_139;
            }

LABEL_112:
            *a4 |= a5;
            goto LABEL_139;
          }

LABEL_109:
          *(a3 + 15) = v16;
          *(a3 + 225) = v16;
          *(a3 + 209) = v16;
          *(a3 + 193) = v16;
          *(a3 + 177) = v16;
          *(a3 + 161) = v16;
          *(a3 + 145) = v16;
          *(a3 + 129) = v16;
          *(a3 + 113) = v16;
          *(a3 + 97) = v16;
          *(a3 + 81) = v16;
          *(a3 + 65) = v16;
          *(a3 + 49) = v16;
          *(a3 + 33) = v16;
          *(a3 + 17) = v16;
          v48 = a5;
          *(a3 + 1) = v16;
          goto LABEL_110;
        }

        if (v12 && v14 && v14 == v24)
        {
          v12 = 0;
          v19 = v13;
        }

        else
        {
          if (v24)
          {
            if (*(*a1 + 400))
            {
              v25 = *(*a1 + 72);
              if (v25)
              {
                while (1)
                {
                  if (*v25 == 29)
                  {
                    v26 = *(v25 + 16);
                    if (!*v26 && v26[4] == v24)
                    {
                      break;
                    }
                  }

                  v25 = *(v25 + 8);
                  if (!v25)
                  {
                    goto LABEL_32;
                  }
                }

                if ((*(*v11 + v24) & 2) == 0)
                {
                  *(*v11 + v24) |= 2u;
                  v56 = v16;
                  sub_10006E29C(a1, *(v25 + 8), a3, a4, a5);
                  v16 = v56;
                }
              }
            }
          }

LABEL_32:
          v19 = *(a2 + 8);
        }

LABEL_33:
        ++v17;
        a2 = v19;
        if (!v19)
        {
          goto LABEL_139;
        }

        break;
      case 2:
        if (a3)
        {
          v41 = 0;
          *a3 |= 4u;
          v42 = *(a2 + 24);
          do
          {
            v43 = v41;
            if (v15)
            {
              v44 = *(**(a1 + 8) + 8);
              LOBYTE(v43) = (*(*v44 + 40))(v44, v43);
            }

            if (v42 == v43)
            {
              a3[v41] |= a5;
            }

            ++v41;
          }

          while (v41 != 256);
        }

        goto LABEL_139;
      case 4:
        if (a3)
        {
          *a3 |= 4u;
          a3[10] |= a5;
          a3[13] |= a5;
          a3[12] |= a5;
          a3[133] |= a5;
        }

        if (a4)
        {
          sub_10006E29C(a1, *(a2 + 8), 0, a4, a5);
        }

        goto LABEL_139;
      case 5:
        goto LABEL_120;
      case 6:
      case 0x1F:
        if (!a3)
        {
          goto LABEL_111;
        }

        if (!*a3)
        {
          goto LABEL_109;
        }

        for (j = 0; j != 256; j += 16)
        {
          *&a3[j] = vorrq_s8(*&a3[j], v16);
        }

        goto LABEL_108;
      case 9:
        sub_10006E29C(a1, *(a2 + 8), a3, a4, a5);
        if (a3)
        {
          v39 = 0;
          *a3 |= 4u;
          v40 = ~a5;
          do
          {
            if (!sub_10006B248(*(a1 + 8), v39, *(a1 + 80)))
            {
              a3[v39] &= v40;
            }

            ++v39;
          }

          while (v39 != 256);
        }

        goto LABEL_139;
      case 0xA:
        sub_10006E29C(a1, *(a2 + 8), a3, a4, a5);
        if (a3)
        {
          v45 = 0;
          *a3 |= 4u;
          v46 = ~a5;
          do
          {
            if (sub_10006B248(*(a1 + 8), v45, *(a1 + 80)))
            {
              a3[v45] &= v46;
            }

            ++v45;
          }

          while (v45 != 256);
        }

        goto LABEL_139;
      case 0xC:
        goto LABEL_111;
      case 0xD:
        goto LABEL_118;
      case 0xE:
        if (!a3)
        {
          goto LABEL_139;
        }

        if (*(a2 + 37) == 1)
        {
          v38 = 0;
          *a3 |= 4u;
          do
          {
            LOBYTE(v58.__vftable) = v38;
            if (&v58 != sub_10006EF68(&v58, &v58.__vftable + 1, a2, *a1, v15 & 1))
            {
              a3[v38] |= a5;
            }

            ++v38;
          }

          while (v38 != 256);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        for (k = 0; k != 256; k += 16)
        {
          *&a3[k] = vorrq_s8(*&a3[k], v16);
        }

        goto LABEL_124;
      case 0xF:
        if (a3)
        {
          v34 = 0;
          *a3 |= 4u;
          v35 = a2 + 16;
          do
          {
            v36 = v34;
            if (v15)
            {
              v37 = *(**(a1 + 8) + 8);
              LOBYTE(v36) = (*(*v37 + 40))(v37, v36);
            }

            if (*(v35 + v36))
            {
              a3[v34] |= a5;
            }

            ++v34;
          }

          while (v34 != 256);
        }

        goto LABEL_139;
      case 0x10:
        v19 = *(a2 + 16);
        v17 = -1;
        goto LABEL_33;
      case 0x11:
      case 0x12:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x19:
        if ((*(a2 + 24) & 4) != 0)
        {
          if (a3)
          {
            v32 = 0;
            *a3 |= 4u;
            do
            {
              if ((*(a2 + 24 + v32) & 3) != 0)
              {
                a3[v32] |= a5;
              }

              ++v32;
            }

            while (v32 != 256);
          }

          if (!a4 || (*(a2 + 280) & 3) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_112;
        }

        if ((v18 - 22) >= 4 && v18 != 18)
        {
          goto LABEL_128;
        }

        v28 = *(a2 + 304);
        if (v28 <= 0x3F)
        {
          v29 = *(a1 + 40);
          v30 = 1 << v28;
          if ((v29 & v30) == 0)
          {
            if ((v18 - 22) < 4 || v18 == 18)
            {
              *(a1 + 40) = v29 | v30;
            }

LABEL_128:
            sub_10006E29C(a1, *(a2 + 8), a3, a4, a5);
            if (*a2 == 17 || !*(a2 + 288) || !v17)
            {
              sub_10006E29C(a1, *(a2 + 16), a3, a4, a5);
            }

            goto LABEL_139;
          }
        }

        if (!a3)
        {
          goto LABEL_111;
        }

        if (*a3)
        {
          for (m = 0; m != 256; m += 16)
          {
            *&a3[m] = vorrq_s8(*&a3[m], v16);
          }

          goto LABEL_108;
        }

        goto LABEL_109;
      case 0x14:
        if (a3)
        {
          *a3 |= 4u;
          a3[10] |= a5;
          a3[13] |= a5;
        }

        goto LABEL_111;
      case 0x1C:
        v15 = *(a2 + 16);
        goto LABEL_32;
      case 0x1D:
        v19 = *(a2 + 16);
        if (*v19)
        {
          __assert_rtn("create_startmap", "basic_regex_creator.hpp", 1128, "static_cast<const re_jump*>(state)->alt.p->type == syntax_element_startmark");
        }

        v14 = v19[4];
        v22 = *v11;
        v23 = *(*v11 + v14);
        if ((v23 & 1) == 0)
        {
          if (v12)
          {
            goto LABEL_117;
          }

          v13 = *(a2 + 8);
          v22[v14] = v23 | 1;
          v12 = a2;
          goto LABEL_33;
        }

        v49 = *a1;
        if (!*(*a1 + 44))
        {
          *(v49 + 44) = 2;
        }

        *(v49 + 48) = 0;
        *(v49 + 56) = 0;
        if ((*(v49 + 42) & 4) == 0)
        {
          memset(&v60, 170, sizeof(v60));
          sub_10000459C(&v60, "Encountered an infinite recursion.");
          v55.__vftable = 0xAAAAAAAAAAAAAAAALL;
          v55.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
          v58 = v55;
          v59 = v55;
          std::runtime_error::runtime_error(&v58, &v60);
          v58.__vftable = &off_100183F08;
          LODWORD(v59.__vftable) = 2;
          v59.__imp_.__imp_ = 0;
          sub_10006D364(&v58);
        }

        v23 = v22[v14];
LABEL_117:
        v22[v14] = v23 | 1;
LABEL_118:
        if (a4)
        {
          *a4 |= a5;
        }

LABEL_120:
        if (a3)
        {
          if (*a3)
          {
            for (n = 0; n != 256; n += 16)
            {
              *&a3[n] = vorrq_s8(*&a3[n], v16);
            }

LABEL_124:
            LOBYTE(a5) = *a3;
          }

          else
          {
LABEL_137:
            *(a3 + 15) = v16;
            *(a3 + 225) = v16;
            *(a3 + 209) = v16;
            *(a3 + 193) = v16;
            *(a3 + 177) = v16;
            *(a3 + 161) = v16;
            *(a3 + 145) = v16;
            *(a3 + 129) = v16;
            *(a3 + 113) = v16;
            *(a3 + 97) = v16;
            *(a3 + 81) = v16;
            *(a3 + 65) = v16;
            *(a3 + 49) = v16;
            *(a3 + 33) = v16;
            *(a3 + 17) = v16;
            *(a3 + 1) = v16;
          }

          *a3 = a5 | 4;
        }

LABEL_139:
        v52 = v64;
        v53 = *v64;
        *v64 = v61;
        v52[1] = v62;
        v54 = v52[2];
        v52[2] = v63;
        v61 = v53;
        v63 = v54;
        if (v53)
        {
          v62 = v53;
          operator delete(v53);
        }

        return;
      case 0x20:
        if (a3)
        {
          if (*a3)
          {
            for (ii = 0; ii != 256; ii += 16)
            {
              *&a3[ii] = vorrq_s8(*&a3[ii], v16);
            }

            v21 = *a3;
          }

          else
          {
            *(a3 + 15) = v16;
            *(a3 + 225) = v16;
            *(a3 + 209) = v16;
            *(a3 + 193) = v16;
            *(a3 + 177) = v16;
            *(a3 + 161) = v16;
            *(a3 + 145) = v16;
            *(a3 + 129) = v16;
            *(a3 + 113) = v16;
            *(a3 + 97) = v16;
            *(a3 + 81) = v16;
            *(a3 + 65) = v16;
            *(a3 + 49) = v16;
            *(a3 + 33) = v16;
            *(a3 + 17) = v16;
            v21 = a5;
            *(a3 + 1) = v16;
          }

          *a3 = v21 | 4;
        }

        goto LABEL_32;
      default:
        goto LABEL_32;
    }
  }
}

void sub_10006EB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, void *a23, void *a24, void **a25)
{
  std::runtime_error::~runtime_error(&a13);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v26 = a25;
  v27 = *a25;
  *a25 = a22;
  v26[1] = a23;
  v28 = v26[2];
  v26[2] = a24;
  a22 = v27;
  a24 = v28;
  if (v27)
  {
    a23 = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10006EBEC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    v2 = *a2;
    if (*a2 >= 2u)
    {
      break;
    }

    a2 = *(a2 + 8);
    if (!a2)
    {
      return 0;
    }
  }

  if (v2 > 10)
  {
    if (v2 == 11)
    {
      return 3;
    }

    else
    {
      if (v2 != 21)
      {
        return 0;
      }

      return 4;
    }
  }

  else
  {
    if (v2 != 3)
    {
      return v2 == 9;
    }

    return 2;
  }
}

uint64_t sub_10006EC54(uint64_t result, int *a2)
{
  do
  {
    v2 = *a2;
    if (*a2 > 0x19)
    {
      break;
    }

    if (((1 << v2) & 0x201F9A) == 0)
    {
      if (v2)
      {
        if (((1 << v2) & 0x3C00000) != 0 && (*(result + 32) & 1) == 0)
        {
          *(a2 + 308) = 1;
        }

        return result;
      }

      v3 = a2[4];
      if ((v3 & 0x80000000) != 0)
      {
        if (v3 < 0xFFFFFFFE)
        {
          if (v3 != -3)
          {
            return result;
          }

          v4 = (a2 + 2);
        }

        else
        {
          v4 = (*(a2 + 1) + 16);
        }

        a2 = *v4;
      }
    }

    a2 = *(a2 + 1);
  }

  while (a2);
  return result;
}

uint64_t sub_10006ECE4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  v4 = 0;
  while (1)
  {
    while (1)
    {
      v5 = *v2;
      if (*v2 > 13)
      {
        break;
      }

      if (v5 <= 0)
      {
        if (!v5)
        {
          v7 = *(v2 + 16);
          if (v7 < 0xFFFFFFFE)
          {
            if (v7 != -3)
            {
              goto LABEL_38;
            }

            v8 = *(v2 + 8);
          }

          else
          {
            v8 = *(*(v2 + 8) + 16);
          }

          v6 = (v8 + 8);
          goto LABEL_14;
        }

LABEL_38:
        v12 = (v2 + 8);
        goto LABEL_39;
      }

      if (v5 <= 4)
      {
        if (v5 == 1)
        {
          if (*(v2 + 16) > 0xFFFFFFFD)
          {
            return v4;
          }
        }

        else if (v5 == 2)
        {
          v4 = (*(v2 + 16) + v4);
        }

        goto LABEL_38;
      }

      if (v5 == 5)
      {
        goto LABEL_37;
      }

      if (v5 != 13)
      {
        goto LABEL_38;
      }

LABEL_17:
      v9 = sub_10006EEA8(a1, v2);
      *v2 = v9;
      if ((v9 - 22) >= 3)
      {
        if (v9 != 25)
        {
          return 0xFFFFFFFFLL;
        }

        v10 = *(v2 + 8);
        if (*v10 != 14)
        {
          sub_10011C50C();
        }

        if (!*(v10 + 37))
        {
          return 0xFFFFFFFFLL;
        }
      }

      v11 = *(v2 + 296);
      if (v11 != *(v2 + 288))
      {
        return 0xFFFFFFFFLL;
      }

      v12 = (v2 + 16);
      v4 = (v4 + v11);
LABEL_39:
      v2 = *v12;
      if (!*v12)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (v5 > 0x1A)
    {
      goto LABEL_31;
    }

    if (v5 != 16)
    {
      break;
    }

    v6 = (v2 + 16);
LABEL_14:
    v2 = *v6;
    if (!*v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((1 << v5) & 0x7CC0000) != 0)
  {
    goto LABEL_17;
  }

  if (v5 != 17)
  {
LABEL_31:
    if (v5 == 14)
    {
      if (!*(v2 + 37))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (v5 != 15)
    {
      goto LABEL_38;
    }

LABEL_37:
    v4 = (v4 + 1);
    goto LABEL_38;
  }

  v14 = sub_10006ECE4(a1, *(v2 + 8));
  if (v14 != sub_10006ECE4(a1, *(v2 + 16)) || v14 <= -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v14 + v4);
  }
}

uint64_t sub_10006EEA8(uint64_t a1, unsigned int *a2)
{
  result = *a2;
  if (result == 18)
  {
    v3 = *(a2 + 1);
    if (*(*(v3 + 8) + 8) == *(a2 + 2))
    {
      v4 = *v3;
      if (*v3 > 13)
      {
        if (v4 == 14)
        {
          if (*(v3 + 37))
          {
            return 25;
          }
        }

        else if (v4 == 15)
        {
          return 24;
        }
      }

      else if (v4 == 2)
      {
        return 23;
      }

      else if (v4 == 5)
      {
        return 22;
      }
    }
  }

  return result;
}

void sub_10006EF20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100025BBC();
}

char *sub_10006EF68(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  if (a1 == a2)
  {
    return v5;
  }

  v9 = (a3 + 40);
  v10 = *(a4 + 24);
  if (*(a3 + 16))
  {
    v12 = 0;
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = v5;
        do
        {
          v15 = *v14;
          if (a5)
          {
            LOBYTE(v15) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v15);
            v13 = *v9;
          }

          if (v15 != v13)
          {
            break;
          }

          v16 = *++v9;
          v13 = v16;
          ++v14;
        }

        while (v16 && v14 != a2);
        if (!v13)
        {
          if (v14 == v5)
          {
            v36 = v5 + 1;
          }

          else
          {
            v36 = v14;
          }

          if ((*(a3 + 36) & 1) == 0)
          {
            return v36;
          }

          return v5;
        }

          ;
        }
      }

      else
      {
        v19 = *v5;
        if (a5)
        {
          LODWORD(v19) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v19);
        }

        if (!v19)
        {
          goto LABEL_93;
        }

        ++v9;
      }

      ++v12;
    }

    while (v12 < *(a3 + 16));
  }

  v20 = *v5;
  if (a5)
  {
    v20 = (*(**(*v10 + 8) + 40))(*(*v10 + 8), *v5);
  }

  if (!*(a3 + 20))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_89;
    }

    memset(&v39, 0, sizeof(v39));
    goto LABEL_64;
  }

  memset(&v39, 0, sizeof(v39));
  if ((*(a4 + 42) & 0x20) != 0)
  {
    v40 = v20;
    v41 = 0;
    sub_100061E44(*v10, &v41, &v38);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v39 = v38;
  }

  else
  {
    std::string::assign(&v39, 1uLL, v20);
  }

  if (!*(a3 + 20))
  {
LABEL_64:
    if (!*(a3 + 24))
    {
      goto LABEL_83;
    }

    v40 = v20;
    v41 = 0;
    sub_10006AE58(*v10, &v40, &v41, &v38);
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v39 = v38;
    if (!*(a3 + 24))
    {
LABEL_83:
      v33 = 1;
      goto LABEL_85;
    }

    v29 = 0;
    while (1)
    {
      if (!*v9)
      {
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v30 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v39.__r_.__value_.__r.__words[2]) == 1)
          {
            v31 = &v39;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v39.__r_.__value_.__l.__size_ == 1)
        {
          v31 = v39.__r_.__value_.__r.__words[0];
LABEL_77:
          v30 = v31->__r_.__value_.__s.__data_[0];
LABEL_78:
          if (!v30)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }

        if (!v39.__r_.__value_.__l.__size_)
        {
          goto LABEL_84;
        }
      }

LABEL_79:
      if (!std::string::compare(&v39, v9))
      {
        goto LABEL_84;
      }

      ++v9;
        ;
      }

      if (++v29 >= *(a3 + 24))
      {
        goto LABEL_83;
      }
    }
  }

  v21 = 0;
  while (1)
  {
    if (!*v9)
    {
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v39.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        if (v39.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_35;
        }

        v26 = v39.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }

      if (!*(&v39.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      if (HIBYTE(v39.__r_.__value_.__r.__words[2]) == 1)
      {
        v26 = &v39;
LABEL_52:
        if (!v26->__r_.__value_.__s.__data_[0])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    if (std::string::compare(&v39, v9) < 0)
    {
      v22 = v9 + 1;
        ;
      }

      goto LABEL_61;
    }

LABEL_36:
    v22 = v9 + 1;
      ;
    }

    if (*v22)
    {
      goto LABEL_60;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v39.__r_.__value_.__l.__size_ != 1)
      {
        if (!v39.__r_.__value_.__l.__size_)
        {
          break;
        }

        goto LABEL_60;
      }

      v25 = v39.__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      if (HIBYTE(v39.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_59;
      }

      v25 = &v39;
    }

    v24 = v25->__r_.__value_.__s.__data_[0];
LABEL_59:
    if (!v24)
    {
      break;
    }

LABEL_60:
    if (std::string::compare(&v39, v22) <= 0)
    {
      break;
    }

LABEL_61:
    v9 = v22 + 1;
      ;
    }

    if (++v21 >= *(a3 + 20))
    {
      goto LABEL_64;
    }
  }

LABEL_84:
  v33 = 0;
  v5 += *(a3 + 36) ^ 1;
LABEL_85:
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if (v33)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if ((v33 & 1) == 0)
    {
      return v5;
    }

LABEL_89:
    if (!sub_10006B248(v10, v20, *(a3 + 28)))
    {
      v34 = *(a3 + 32);
      if (!v34 || sub_10006B248(v10, v20, v34))
      {
        v35 = *(a3 + 36);
        goto LABEL_94;
      }
    }

LABEL_93:
    v35 = *(a3 + 36) ^ 1;
LABEL_94:
    v5 += v35;
  }

  return v5;
}

void sub_10006F3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10006F404(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10006F448(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10003C250(result, a4);
  }

  return result;
}

void sub_10006F4E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_10002DE40(va);
  _Unwind_Resume(a1);
}

char *sub_10006F500(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v9 = __dst;
  v10 = __dst;
  v11[0] = a1;
  v11[1] = &v9;
  v11[2] = &v10;
  v12 = 0xAAAAAAAAAAAAAA00;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_1000078D8(v4, *v6, *(v6 + 1));
        v4 = v10;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v10 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_10006F5F0(v11);
  return v4;
}

void sub_10006F5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10006F5F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006F5F0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10003C3C4(a1);
  }

  return a1;
}

void sub_10006F628()
{
  v0 = objc_autoreleasePoolPush();
  unk_100192B20 = 0;
  xmmword_100192B10 = 0uLL;
  __cxa_atexit(sub_10005D170, &xmmword_100192B10, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10006F68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_1000DF600(v9, a1);
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100072ACC(v8, a1);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100070F74(v7, a1);
  sub_1000DF670(v9, a2, a3);
  sub_100072B3C(v8, a2, a3);
  sub_100070FE4(v7, a2, a3);
  j_nullsub_13(v7);
  j_nullsub_13_0(v8);
  return j_nullsub_13_2(v9);
}

void sub_10006F770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  j_nullsub_13_0(va);
  j_nullsub_13_2(va1);
  _Unwind_Resume(a1);
}

void sub_10006F804(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10006F810(uint64_t a1@<X0>, const char **a2@<X1>, void *a3@<X8>)
{
  if (!*(a1 + 72))
  {
    *a2 = "no parent config candidate present to load for tasked config";
    goto LABEL_8;
  }

  sub_1000C1670((a1 + 32), a2, __p);
  v6 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v7 = *(a1 + 64);
  *(a1 + 56) = v6;
  if (!v7)
  {
    if (v6)
    {
      goto LABEL_10;
    }

LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  sub_10000786C(v7);
  if (__p[1])
  {
    sub_10000786C(__p[1]);
  }

  if (!*(a1 + 56))
  {
    goto LABEL_8;
  }

LABEL_10:
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 72);
  if (*(v8 + 55) < 0)
  {
    sub_1000078D8(__p, *(v8 + 32), *(v8 + 40));
  }

  else
  {
    *__p = *(v8 + 32);
    *&v51 = *(v8 + 48);
  }

  sub_1000C1670(__p, a2, &v43);
  if (SBYTE7(v51) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v43)
  {
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_50;
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(a1 + 56) + 16))(&v41);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v43 + 16))(&v39);
  v53 = "parentUuid";
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v9;
  v51 = v9;
  sub_10000BD10(&v41, &v53, __p);
  v45 = &v41;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0x8000000000000000;
  sub_10000DCFC(&v45);
  if (sub_10000DD7C(__p, &v45))
  {
    v10 = sub_100016CD8();
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = sub_10000DB44(__p);
  }

  if (*v10 == 3)
  {
    v11 = *(v10 + 8);
    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
LABEL_24:
  v53 = "uuid";
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v12;
  v51 = v12;
  sub_10000BD10(&v39, &v53, __p);
  v45 = &v39;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0x8000000000000000;
  sub_10000DCFC(&v45);
  if (sub_10000DD7C(__p, &v45))
  {
    v13 = sub_100016CD8();
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = sub_10000DB44(__p);
  }

  if (*v13 == 3)
  {
    v14 = *(v13 + 8);
    if (v11)
    {
      goto LABEL_32;
    }

LABEL_30:
    v15 = "tasked config does not have a parentUuid";
    goto LABEL_48;
  }

LABEL_31:
  v14 = 0;
  if (!v11)
  {
    goto LABEL_30;
  }

LABEL_32:
  if (!v14)
  {
    v15 = "parent config does not have a uuid?!";
    goto LABEL_48;
  }

  v16 = *(v11 + 23);
  if (v16 >= 0)
  {
    v17 = *(v11 + 23);
  }

  else
  {
    v17 = v11[1];
  }

  v18 = *(v14 + 23);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v14[1];
  }

  if (v17 != v18 || (v16 >= 0 ? (v20 = v11) : (v20 = *v11), v19 >= 0 ? (v21 = v14) : (v21 = *v14), memcmp(v20, v21, v17)))
  {
    v15 = "parent config uuid and tasked config parentUuid do not match";
    goto LABEL_48;
  }

  v53 = "builtOnDate";
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v22;
  v51 = v22;
  sub_10000BD10(&v41, &v53, __p);
  v45 = &v41;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0x8000000000000000;
  sub_10000DCFC(&v45);
  if (sub_10000DD7C(__p, &v45))
  {
    v23 = sub_100016CD8();
    if (!v23)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v23 = sub_10000DB44(__p);
  }

  if (*v23 == 3)
  {
    v24 = *(v23 + 8);
    goto LABEL_60;
  }

LABEL_59:
  v24 = 0;
LABEL_60:
  v53 = "builtOnDate";
  v52 = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v25;
  v51 = v25;
  sub_10000BD10(&v39, &v53, __p);
  v45 = &v39;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0x8000000000000000;
  sub_10000DCFC(&v45);
  if (sub_10000DD7C(__p, &v45))
  {
    v26 = sub_100016CD8();
    if (!v26)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v26 = sub_10000DB44(__p);
  }

  if (*v26 == 3)
  {
    v27 = *(v26 + 8);
    goto LABEL_67;
  }

LABEL_66:
  v27 = 0;
LABEL_67:
  if (v24)
  {
    if (v27)
    {
      if (*(v24 + 23) < 0)
      {
        sub_1000078D8(&__dst, *v24, *(v24 + 1));
      }

      else
      {
        v28 = *v24;
        __dst.__r_.__value_.__r.__words[2] = *(v24 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v28;
      }

      v29 = sub_100009600(&__dst);
      v31 = v30;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (*(v27 + 23) < 0)
      {
        sub_1000078D8(&v37, *v27, *(v27 + 1));
      }

      else
      {
        v32 = *v27;
        v37.__r_.__value_.__r.__words[2] = *(v27 + 2);
        *&v37.__r_.__value_.__l.__data_ = v32;
      }

      v33 = sub_100009600(&v37);
      v35 = v34;
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (v31)
      {
        if (v35)
        {
          if (v29 >= v33)
          {
            v36 = *(a1 + 64);
            *a3 = *(a1 + 56);
            a3[1] = v36;
            if (v36)
            {
              atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
            }

            goto LABEL_49;
          }

          v15 = "tasked config has an older builtOnDate than the parent config";
        }

        else
        {
          v15 = "parent config builtOnDate could not be parsed";
        }
      }

      else
      {
        v15 = "tasked config builtOnDate could not be parsed";
      }
    }

    else
    {
      v15 = "parent config does not have builtOnDate?!";
    }
  }

  else
  {
    v15 = "tasked config does not have builtOnDate?!";
  }

LABEL_48:
  *a2 = v15;
  *a3 = 0;
  a3[1] = 0;
LABEL_49:
  sub_10000298C(&v39);
  sub_1000048FC(&v40, v39);
  sub_10000298C(&v41);
  sub_1000048FC(&v42, v41);
LABEL_50:
  if (v44)
  {
    sub_10000786C(v44);
  }
}

void sub_10006FD84(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_10006FD90(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  *(a1 + 72) = v3;
  *(a1 + 80) = v2;
  if (v4)
  {
    sub_10000786C(v4);
  }
}

uint64_t sub_10006FDBC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v26 = 0;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    if (*(v1 + 55) < 0)
    {
      sub_1000078D8(__p, *(v1 + 32), *(v1 + 40));
    }

    else
    {
      *__p = *(v1 + 32);
      *&v33 = *(v1 + 48);
    }

    sub_1000C1670(__p, &v26, &v24);
    if (SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (v24)
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        goto LABEL_16;
      }

      sub_1000C1670((a1 + 32), &v26, __p);
      v5 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v6 = *(a1 + 64);
      *(a1 + 56) = v5;
      if (v6)
      {
        sub_10000786C(v6);
        if (__p[1])
        {
          sub_10000786C(__p[1]);
        }

        v4 = *(a1 + 56);
        if (v4)
        {
LABEL_16:
          v22 = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0xAAAAAAAAAAAAAAAALL;
          (*(*v4 + 16))(&v22);
          v20 = 0xAAAAAAAAAAAAAAAALL;
          v21 = 0xAAAAAAAAAAAAAAAALL;
          (*(*v24 + 16))(&v20);
          v35 = "parentUuid";
          v34 = 0xAAAAAAAAAAAAAAAALL;
          *&v7 = 0xAAAAAAAAAAAAAAAALL;
          *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *__p = v7;
          v33 = v7;
          sub_10000BD10(&v22, &v35, __p);
          v27 = &v22;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0x8000000000000000;
          sub_10000DCFC(&v27);
          if (sub_10000DD7C(__p, &v27))
          {
            v8 = sub_100016CD8();
            if (!v8)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v8 = sub_10000DB44(__p);
          }

          if (*v8 == 3)
          {
            v9 = *(v8 + 8);
            goto LABEL_26;
          }

LABEL_25:
          v9 = 0;
LABEL_26:
          v35 = "uuid";
          v34 = 0xAAAAAAAAAAAAAAAALL;
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *__p = v10;
          v33 = v10;
          sub_10000BD10(&v20, &v35, __p);
          v27 = &v20;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0x8000000000000000;
          sub_10000DCFC(&v27);
          if (sub_10000DD7C(__p, &v27))
          {
            v11 = sub_100016CD8();
            if (!v11)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v11 = sub_10000DB44(__p);
          }

          if (*v11 == 3)
          {
            v12 = *(v11 + 8);
LABEL_33:
            v13 = *(v9 + 23);
            if (v13 >= 0)
            {
              v14 = *(v9 + 23);
            }

            else
            {
              v14 = v9[1];
            }

            v15 = *(v12 + 23);
            v16 = v15;
            if (v15 < 0)
            {
              v15 = v12[1];
            }

            if (v14 == v15 && (v13 >= 0 ? (v17 = v9) : (v17 = *v9), v16 >= 0 ? (v18 = v12) : (v18 = *v12), !memcmp(v17, v18, v14)))
            {
              v3 = 1;
            }

            else
            {
              if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
              {
                sub_10011C538();
              }

              v3 = 0;
            }

            sub_10000298C(&v20);
            sub_1000048FC(&v21, v20);
            sub_10000298C(&v22);
            sub_1000048FC(&v23, v22);
            goto LABEL_50;
          }

LABEL_32:
          v12 = 0;
          goto LABEL_33;
        }
      }

      else
      {
        v4 = v5;
        if (v5)
        {
          goto LABEL_16;
        }
      }

      if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }
    }

    else if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      sub_10011C5A4(&v26);
    }

    v3 = 0;
LABEL_50:
    if (v25)
    {
      sub_10000786C(v25);
    }

    return v3;
  }

  if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
  {
    sub_10011C61C();
  }

  return 0;
}

void sub_10007018C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100070198(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000786C(v3);
  }

  return sub_100033CF4(a1);
}

void sub_1000701E4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_10000786C(v3);
  }

  sub_100033CF4(a1);

  operator delete();
}

uint64_t sub_1000702B8(uint64_t a1, __int128 *a2, __n128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100184048;
  sub_1000337AC(a1 + 24, a2, a3);
  *(a1 + 24) = off_100184008;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_100070358(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100184048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000703AC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_10000786C(v3);
  }

  return sub_100033CF4(a1 + 24);
}

void sub_100070474(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100070480(uint64_t a1)
{
  v2[0] = off_100184128;
  v2[1] = a1;
  v2[3] = v2;
  sub_100076F64(a1, v2);
  return sub_100070850(v2);
}

void sub_100070504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100070850(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070518(void *a1)
{
  *a1 = off_100184098;
  v2 = a1[13];
  if (v2)
  {
    sub_10000786C(v2);
  }

  return sub_1000705E4(a1);
}

void sub_100070574(void *a1)
{
  *a1 = off_100184098;
  v2 = a1[13];
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_1000705E4(a1);

  operator delete();
}

uint64_t sub_1000705E4(uint64_t a1)
{
  *a1 = off_100184550;
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_10000786C(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v4 = (a1 + 8);
  sub_1000131F8(&v4);
  return a1;
}

void *sub_100070720(void *a1, __int128 *a2, __int128 *a3, void *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001840D8;
  sub_100076E38((a1 + 3), a2, a3, a4);
  a1[3] = off_100184098;
  v7 = a5[1];
  a1[15] = *a5;
  a1[16] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1000707D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001840D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100070850(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100070940(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100184128;
  a2[1] = v2;
  return result;
}

void sub_10007096C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  memset(__dst, 170, sizeof(__dst));
  if (*(v3 + 55) < 0)
  {
    sub_1000078D8(__dst, *(v3 + 32), *(v3 + 40));
  }

  else
  {
    *__dst = *(v3 + 32);
    __dst[2] = *(v3 + 48);
  }

  memset(__p, 170, 24);
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  sub_10006F7AC();
}

void sub_100070ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100070B34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100070BFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001841A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100070C34(uint64_t result, uint64_t a2)
{
  if ((**(result + 8) & 1) == 0)
  {
    v3 = *(result + 16);
    memset(__dst, 170, 24);
    v4 = *(v3 + 96);
    if (*(v4 + 55) < 0)
    {
      sub_1000078D8(__dst, *(v4 + 32), *(v4 + 40));
    }

    else
    {
      *__dst = *(v4 + 32);
      __dst[2] = *(v4 + 48);
    }

    memset(__p, 170, 24);
    if (*(a2 + 23) < 0)
    {
      sub_1000078D8(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      __p[2] = *(a2 + 16);
    }

    v5 = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    sub_100082938();
  }

  return result;
}

void sub_100070E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100070EB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100070F04(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  result = sub_100084DA8(a1, a2, a3, a4, a5, a6, a7, a8);
  *result = off_100184238;
  return result;
}

void sub_100070F3C(void *a1)
{
  sub_100043FBC(a1);

  operator delete();
}

void *sub_100070F74(void *a1, uint64_t a2)
{
  result = sub_1000AC66C(a1, a2);
  *result = &off_100184290;
  return result;
}

void sub_100070FAC(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

uint64_t sub_100070FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000AC694(a1, "RegexCheckingConfigPass", a2, a3);
  if (result)
  {
    v5 = sub_1000071E4(a3, "transforms");
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v24[0] = v6;
    v24[1] = v6;
    v7 = sub_100016ED8(v24, v5);
    sub_10001D250(v7);
    v23 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[0] = v8;
    v22[1] = v8;
    sub_100016ED8(v22, v5);
    sub_1000137F8(v22);
    for (result = sub_100013878(v24, v22); (result & 1) == 0; result = sub_100013878(v24, v22))
    {
      v9 = sub_10001CF44(v24);
      if ((sub_1000ACAB8(v9) & 0xFFFFFFFD) == 0)
      {
        *&v20[0] = "inputs";
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v26[0].__locale_ = v10;
        v27 = v10;
        sub_10000BD10(v9, v20, v26);
        v31 = 0;
        v32 = 0;
        v30 = 0;
        v29 = v9;
        v33 = 0x8000000000000000;
        sub_10000DCFC(&v29);
        if (!sub_10000DD7C(v26, &v29))
        {
          v11 = sub_10000DB44(v26);
LABEL_11:
          v21 = 0xAAAAAAAAAAAAAAAALL;
          *&v12 = 0xAAAAAAAAAAAAAAAALL;
          *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v20[0] = v12;
          v20[1] = v12;
          sub_10000DEC4(v20, v11);
          sub_10000DF14(v20);
          v19 = 0xAAAAAAAAAAAAAAAALL;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v18[0] = v13;
          v18[1] = v13;
          sub_10000DEC4(v18, v11);
          sub_10000DCFC(v18);
          while (!sub_10000DD7C(v20, v18))
          {
            v14 = sub_10000DB44(v20);
            __p = "matching";
            *&v28 = 0xAAAAAAAAAAAAAAAALL;
            *&v15 = 0xAAAAAAAAAAAAAAAALL;
            *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v26[0].__locale_ = v15;
            v27 = v15;
            sub_10000BD10(v14, &__p, v26);
            v31 = 0;
            v32 = 0;
            v30 = 0;
            v29 = v14;
            v33 = 0x8000000000000000;
            sub_10000DCFC(&v29);
            if (!sub_10000DD7C(v26, &v29))
            {
              v16 = sub_10000DB44(v26);
LABEL_16:
              sub_10007172C(v16, "regex");
            }

            v16 = sub_100016CD8();
            if (v16)
            {
              goto LABEL_16;
            }

            sub_100012BFC(v20);
          }

          goto LABEL_5;
        }

        v11 = sub_100016CD8();
        if (v11)
        {
          goto LABEL_11;
        }
      }

LABEL_5:
      sub_100012BFC(v24);
    }
  }

  return result;
}

void sub_100071648()
{
  if (v1 < 0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x100071724);
}

void sub_100071650(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_10002C5F4(&a21);
  sub_10003E1D0((v30 - 136));
  v31 = (v30 - 176);
  v32 = -64;
  do
  {
    v31 = sub_10003E1D0(v31) - 32;
    v32 += 32;
  }

  while (v32);
  sub_10002C5F4(&a23);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1000716D8);
}

void sub_1000716F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000717BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

void sub_1000717C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a2;
  sub_10001AAEC(v5);
}

uint64_t sub_100071B44(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_10000298C(a1);
  sub_10000298C(a1);
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  return a1;
}

void *sub_100071BEC(void *a1, void *a2)
{
  v4 = dispatch_queue_create("analyticsd.DefaultQueriedStateCacheQueue", 0);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = v4;
  if (v4)
  {
    v5 = v4;
    dispatch_retain(v4);
    dispatch_release(v5);
  }

  *a1 = off_1001842D0;
  v6 = a2[1];
  a1[4] = *a2;
  a1[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return a1;
}

void sub_100071C84(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v4[0] = a1;
  v4[1] = a2;
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100072748;
  block[3] = &unk_1001843D8;
  block[4] = v2;
  block[5] = v4;
  dispatch_sync(v3, block);
}

void sub_100071D2C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v4, (a1 + 8));
  operator new();
}

void sub_100071E40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100071E50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v5, (a1 + 8));
  operator new();
}

void sub_100071FBC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100071FCC(uint64_t a1, uint64_t *a2)
{
  v4 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_10011C688(a2, v4);
  }

  return (*(**(a1 + 32) + 40))(*(a1 + 32), a2);
}

void sub_100072054(uint64_t a1)
{
  v1[0] = 0xAAAAAAAAAAAAAAAALL;
  v1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100006028(v1, (a1 + 8));
  operator new();
}

void sub_100072150(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100072160(uint64_t a1)
{
  v2 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[StateCache] Invalidating all cache entries", v4, 2u);
  }

  return (*(**(a1 + 32) + 48))(*(a1 + 32));
}

void sub_100072224(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 + 8;
  v4 = a1;
  v3 = *(a1 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100072A1C;
  v5[3] = &unk_100184458;
  v5[4] = v2;
  v5[5] = &v4;
  v6 = v5;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100072A28;
  block[3] = &unk_100184478;
  block[4] = a2;
  block[5] = &v6;
  dispatch_sync(v3, block);
}

void sub_10007231C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; v3 += 16)
  {
    memset(v7, 170, sizeof(v7));
    (*(**v3 + 24))(v7);
    v5 = v7[0];
    v6 = v7[1];
    while (v5 != v6)
    {
      sub_1000544A8(a2, v5);
      v5 = (v5 + 24);
    }

    v8 = v7;
    sub_10002DE40(&v8);
  }
}

void sub_100072410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002DE40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072440(uint64_t a1)
{
  *a1 = off_1001842D0;
  v4 = (a1 + 48);
  sub_1000131F8(&v4);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_100044430(a1 + 8);
  return a1;
}

void sub_1000724D8(uint64_t a1)
{
  *a1 = off_1001842D0;
  v3 = (a1 + 48);
  sub_1000131F8(&v3);
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000786C(v2);
  }

  sub_100044430(a1 + 8);
  operator delete();
}

unsigned __int8 *sub_100072584(unsigned __int8 *a1)
{
  if (a1[40] == 1)
  {
    sub_10000298C(a1);
    sub_1000048FC(a1 + 1, *a1);
  }

  return a1;
}

void sub_100072648(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10007271C);
  __cxa_rethrow();
}

void sub_100072688(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000726DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007271C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_100072778(void **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v3 = v1 + 1;
  v2 = v1[1];
  if (v2)
  {
    v4 = *v1;
    v5 = *(*v1 + 56);
    v6 = *(*v1 + 64);
    if (v5 >= v6)
    {
      v9 = v4[6];
      v10 = (v5 - v9) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        sub_10002C63C();
      }

      v12 = v6 - v9;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v24[4] = v4 + 6;
      if (v13)
      {
        sub_10000BED4((v4 + 6), v13);
      }

      v14 = (16 * v10);
      v15 = v1[2];
      *v14 = v2;
      v14[1] = v15;
      *v3 = 0;
      v1[2] = 0;
      v8 = 16 * v10 + 16;
      v16 = v4[6];
      v17 = v4[7] - v16;
      v18 = (16 * v10 - v17);
      memcpy(v18, v16, v17);
      v19 = v4[6];
      v4[6] = v18;
      v4[7] = v8;
      v20 = v4[8];
      v4[8] = 0;
      v24[2] = v19;
      v24[3] = v20;
      v24[0] = v19;
      v24[1] = v19;
      sub_10000BF70(v24);
    }

    else
    {
      v7 = v1[2];
      *v5 = v2;
      v5[1] = v7;
      *v3 = 0;
      v1[2] = 0;
      v8 = (v5 + 2);
    }

    v4[7] = v8;
    (*(**(v8 - 16) + 16))(*(v8 - 16));
  }

  sub_100046468(&v23);
  return sub_1000120B8(&v22);
}

void sub_1000728EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100046468(&a10);
  sub_1000120B8(&a9);
  _Unwind_Resume(a1);
}

void sub_100072908(uint64_t **a1)
{
  v2 = a1;
  v1 = *a1;
  sub_100071FCC(**a1, *a1 + 1);
  if (*(v1 + 31) < 0)
  {
    operator delete(v1[1]);
  }

  operator delete();
}

void sub_10007299C(uint64_t **a1)
{
  v1 = a1;
  sub_100072160(**a1);
  operator delete();
}

void sub_100072A28(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v3);
  v2 = *(a1 + 32);
  sub_1000336AC(v2);
  *v2 = v3;
  *(v2 + 16) = v4;
  v3 = 0uLL;
  v4 = 0;
  v5 = &v3;
  sub_10002DE40(&v5);
}

void *sub_100072ACC(void *a1, uint64_t a2)
{
  result = sub_1000AC66C(a1, a2);
  *result = &off_1001844A8;
  return result;
}

void sub_100072B04(uint64_t a1)
{
  nullsub_13(a1);

  operator delete();
}

void sub_100072B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v23, 170, sizeof(v23));
  sub_100075544(a3, v25);
  sub_100075B70(v25, v23);
  sub_100010440(v25, v25[1]);
  v3 = v23[0];
  v22 = v23[1];
  if (v23[0] != v23[1])
  {
    while ((*(v3 + 23) & 0x80000000) == 0)
    {
      v4 = *(v3 + 23);
      if (v4 <= 9)
      {
        v5 = v3;
        if (v4 != 5)
        {
          if (v4 != 6)
          {
            goto LABEL_49;
          }

          v6 = *(v3 + 2);
          v7 = *v3 == 1684104552;
          v8 = 29285;
LABEL_28:
          if (!v7 || v6 != v8)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }

LABEL_27:
        v13 = *v5;
        v6 = *(v5 + 4);
        v7 = v13 == 1802398067;
        v8 = 115;
        goto LABEL_28;
      }

      if (v4 == 10)
      {
        if (*v3 != 0x726F66736E617274 || *(v3 + 4) != 29549)
        {
LABEL_49:
          v18 = *(a1 + 8);
          sub_100048E34(v24);
        }

LABEL_52:
        sub_1000731F0(a1, a2, a3);
        goto LABEL_50;
      }

      if (v4 != 22)
      {
        goto LABEL_49;
      }

      v15 = *v3 == 0x6C616E7265747865 && v3[1] == 0x72756769666E6F43;
      if (!v15 || *(v3 + 14) != 0x736E6F6974617275)
      {
        goto LABEL_49;
      }

LABEL_50:
      v3 += 3;
      if (v3 == v22)
      {
        goto LABEL_53;
      }
    }

    if (v3[1] == 10 && **v3 == 0x726F66736E617274 && *(*v3 + 8) == 29549)
    {
      goto LABEL_52;
    }

    if (v3[1] == 6 && **v3 == 1684104552 && *(*v3 + 4) == 29285)
    {
      goto LABEL_50;
    }

    if (v3[1] == 22)
    {
      v11 = **v3 == 0x6C616E7265747865 && *(*v3 + 8) == 0x72756769666E6F43;
      if (v11 && *(*v3 + 14) == 0x736E6F6974617275)
      {
        goto LABEL_50;
      }
    }

    if (v3[1] != 5)
    {
      goto LABEL_49;
    }

    v5 = *v3;
    goto LABEL_27;
  }

LABEL_53:
  v25[0] = v23;
  sub_10002DE40(v25);
}

uint64_t sub_1000731F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000AC694(a1, "SyntaxCheckingConfigPass", a2, a3);
  if (result)
  {
    v5 = sub_1000071E4(a3, "transforms");
    v20 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19[0] = v6;
    v19[1] = v6;
    v7 = sub_100016ED8(v19, v5);
    sub_10001D250(v7);
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17[0] = v8;
    v17[1] = v8;
    sub_100016ED8(v17, v5);
    sub_1000137F8(v17);
    result = sub_100013878(v19, v17);
    if ((result & 1) == 0)
    {
      v9 = sub_10001CF44(v19);
      memset(&__p, 170, sizeof(__p));
      sub_10000459C(&v21, "uuid");
      sub_10000F13C("", v9, &v21, &__p);
      if (SBYTE7(v22) < 0)
      {
        operator delete(v21);
      }

      v15 = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14[0] = v10;
      v14[1] = v10;
      sub_10003EA28(v9, "type", v14);
      v23 = 0xAAAAAAAAAAAAAAAALL;
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21 = v11;
      v22 = v11;
      v12 = sub_100016ED8(&v21, v9);
      sub_1000137F8(v12);
      if (sub_100013878(v14, &v21))
      {
        sub_100006C9C(&v21);
      }

      v13 = sub_10001CF44(v14);
      sub_100073F04(v13, "aggregate");
    }
  }

  return result;
}

void sub_1000738B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_10002C5F4(&a21);
  sub_10002C5F4((v39 - 192));
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000739F0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t sub_100073A68(uint64_t a1, const void **a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_10002CB3C(a1);
    sub_10000459C(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use erase() with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(307, &v10, exception);
  }

  v3 = *(a1 + 8);

  return sub_100076088(v3, a2);
}

void sub_100073B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_100073BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a2;
  sub_10001AAEC(v5);
}

void sub_100073F94(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100073FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = "inputs";
  *&v39[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v39 = v5;
  *&v39[16] = v5;
  sub_10000BD10(a4, &v38, v39);
  *v45 = a4;
  *&v45[16] = 0uLL;
  *&v45[32] = 0x8000000000000000;
  sub_10000DCFC(v45);
  if (!sub_10000DD7C(v39, v45) && *sub_1000760D0(v39) == 2)
  {
    v6 = sub_1000760D0(v39);
    *&v37[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v37 = v7;
    *&v37[16] = v7;
    sub_10000DEC4(v37, v6);
    sub_10000DF14(v37);
    v8 = sub_1000760D0(v39);
    *&v36[32] = 0xAAAAAAAAAAAAAAAALL;
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v36 = v9;
    *&v36[16] = v9;
    sub_10000DEC4(v36, v8);
    sub_10000DCFC(v36);
    *v41 = *v37;
    *&v41[8] = *&v37[8];
    *&v41[24] = *&v37[24];
    *v40 = *v36;
    *&v40[8] = *&v36[8];
    *&v40[24] = *&v36[24];
    if (sub_10000DD7C(v41, v40))
    {
LABEL_4:
      *v37 = "outputs";
      *&v41[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v41 = v10;
      *&v41[16] = v10;
      sub_10000BD10(a4, v37, v41);
      *v45 = a4;
      *&v45[16] = 0uLL;
      *&v45[32] = 0x8000000000000000;
      sub_10000DCFC(v45);
      if (!sub_10000DD7C(v41, v45) && *sub_1000760D0(v41) == 2)
      {
        v11 = sub_1000760D0(v41);
        *&v40[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v12 = 0xAAAAAAAAAAAAAAAALL;
        *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v40 = v12;
        *&v40[16] = v12;
        sub_10000DEC4(v40, v11);
        sub_10000DF14(v40);
        v13 = sub_1000760D0(v41);
        *&v39[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v39 = v14;
        *&v39[16] = v14;
        sub_10000DEC4(v39, v13);
        sub_10000DCFC(v39);
        *v45 = *v40;
        *&v45[8] = *&v40[8];
        *&v45[24] = *&v40[24];
        v42 = *v39;
        v43 = *&v39[8];
        v44 = *&v39[24];
        if (sub_10000DD7C(v45, &v42))
        {
LABEL_11:
          *v36 = "dimensions";
          *&v41[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v16 = 0xAAAAAAAAAAAAAAAALL;
          *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v41 = v16;
          *&v41[16] = v16;
          sub_10000BD10(a4, v36, v41);
          *v45 = a4;
          *&v45[16] = 0uLL;
          *&v45[32] = 0x8000000000000000;
          sub_10000DCFC(v45);
          if (!sub_10000DD7C(v41, v45) && *sub_1000760D0(v41) == 2)
          {
            v17 = sub_1000760D0(v41);
            *&v40[32] = 0xAAAAAAAAAAAAAAAALL;
            *&v18 = 0xAAAAAAAAAAAAAAAALL;
            *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v40 = v18;
            *&v40[16] = v18;
            sub_10000DEC4(v40, v17);
            sub_10000DF14(v40);
            v19 = sub_1000760D0(v41);
            *&v39[32] = 0xAAAAAAAAAAAAAAAALL;
            *&v20 = 0xAAAAAAAAAAAAAAAALL;
            *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v39 = v20;
            *&v39[16] = v20;
            sub_10000DEC4(v39, v19);
            sub_10000DCFC(v39);
            *v45 = *v40;
            *&v45[8] = *&v40[8];
            *&v45[24] = *&v40[24];
            v42 = *v39;
            v43 = *&v39[8];
            v44 = *&v39[24];
            if (sub_10000DD7C(v45, &v42))
            {
LABEL_14:
              *v36 = "measures";
              *&v41[32] = 0xAAAAAAAAAAAAAAAALL;
              *&v21 = 0xAAAAAAAAAAAAAAAALL;
              *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *v41 = v21;
              *&v41[16] = v21;
              sub_10000BD10(a4, v36, v41);
              *v45 = a4;
              *&v45[16] = 0uLL;
              *&v45[32] = 0x8000000000000000;
              sub_10000DCFC(v45);
              if (!sub_10000DD7C(v41, v45) && *sub_1000760D0(v41) == 2)
              {
                v22 = sub_1000760D0(v41);
                *&v40[32] = 0xAAAAAAAAAAAAAAAALL;
                *&v23 = 0xAAAAAAAAAAAAAAAALL;
                *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *v40 = v23;
                *&v40[16] = v23;
                sub_10000DEC4(v40, v22);
                sub_10000DF14(v40);
                v24 = sub_1000760D0(v41);
                *&v39[32] = 0xAAAAAAAAAAAAAAAALL;
                *&v25 = 0xAAAAAAAAAAAAAAAALL;
                *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *v39 = v25;
                *&v39[16] = v25;
                sub_10000DEC4(v39, v24);
                sub_10000DCFC(v39);
                *v45 = *v40;
                *&v45[8] = *&v40[8];
                *&v45[24] = *&v40[24];
                v42 = *v39;
                v43 = *&v39[8];
                v44 = *&v39[24];
                if (sub_10000DD7C(v45, &v42))
                {
                  return 1;
                }

                v34 = sub_10000DB44(v45);
                if (sub_100076230(v34, "name") && sub_100076230(v34, "type") && sub_100076230(v34, "function"))
                {
                  v35 = sub_10000DFA0(v34, "function");
                  sub_100073F04(v35, "count");
                }
              }
            }

            else
            {
              while (1)
              {
                v29 = sub_10000DB44(v45);
                if (!sub_100076230(v29, "name") || !sub_100076230(v29, "type"))
                {
                  break;
                }

                LOBYTE(v46) = sub_100076230(v29, "field");
                BYTE1(v46) = sub_1000763B0(v29);
                sub_100076478(v37, &v46, 2);
                if (*&v37[8] <= 0x3FuLL && (v37[8] & 0x3F) == 0)
                {
                  if (*v37)
                  {
                    operator delete(*v37);
                  }

                  return 0;
                }

                v30 = 0;
                v31 = 0;
                v32 = *v37 + 8 * (*&v37[8] >> 6);
                v33 = *v37;
                do
                {
                  v31 += (*v33 >> v30) & 1;
                  if (v30 == 63)
                  {
                    v32 = *v37 + 8 * (*&v37[8] >> 6);
                  }

                  v33 += v30 == 63;
                  if (v30 == 63)
                  {
                    v30 = 0;
                  }

                  else
                  {
                    ++v30;
                  }
                }

                while (v30 != (v37[8] & 0x3F) || v33 != v32);
                if (*v37)
                {
                  operator delete(*v37);
                }

                if (v31 != 1)
                {
                  return 0;
                }

                sub_100012BFC(v45);
                if (sub_10000DD7C(v45, &v42))
                {
                  goto LABEL_14;
                }
              }
            }
          }
        }

        else
        {
          while (1)
          {
            v15 = sub_10000DB44(v45);
            if (!sub_100076230(v15, "event") && (!sub_100076230(v15, "message") || !sub_100076230(v15, "sink")))
            {
              break;
            }

            sub_100012BFC(v45);
            if (sub_10000DD7C(v45, &v42))
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v27 = sub_10000DB44(v41);
        if (!sub_100076230(v27, "event"))
        {
          break;
        }

        if (!sub_1000762F0(v27, "ignoreIf"))
        {
          break;
        }

        v46 = "transformation";
        *&v45[32] = 0xAAAAAAAAAAAAAAAALL;
        *&v28 = 0xAAAAAAAAAAAAAAAALL;
        *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v45 = v28;
        *&v45[16] = v28;
        sub_10000BD10(v27, &v46, v45);
        *&v44 = 0;
        v43 = 0uLL;
        v42 = v27;
        *(&v44 + 1) = 0x8000000000000000;
        sub_10000DCFC(&v42);
        if (!sub_10000DD7C(v45, &v42))
        {
          break;
        }

        sub_100012BFC(v41);
        if (sub_10000DD7C(v41, v40))
        {
          goto LABEL_4;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10007475C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = "inputs";
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v5;
  v36[1] = v5;
  sub_10000BD10(a4, &v38, v36);
  v51 = a4;
  v52 = 0uLL;
  *&v53 = 0;
  *(&v53 + 1) = 0x8000000000000000;
  sub_10000DCFC(&v51);
  if (sub_10000DD7C(v36, &v51) || *sub_1000760D0(v36) != 2)
  {
    return 0;
  }

  v6 = sub_1000760D0(v36);
  *&v35[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v35 = v7;
  *&v35[16] = v7;
  sub_10000DEC4(v35, v6);
  sub_10000DF14(v35);
  v8 = sub_1000760D0(v36);
  *&v34[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v34 = v9;
  *&v34[16] = v9;
  sub_10000DEC4(v34, v8);
  sub_10000DCFC(v34);
  v54 = *v35;
  v55 = *&v35[8];
  v56 = *&v35[24];
  v39 = *v34;
  v40 = *&v34[8];
  v41 = *&v34[24];
  while (!sub_10000DD7C(&v54, &v39))
  {
    v22 = sub_10000DB44(&v54);
    if (!sub_100076230(v22, "event") || !sub_1000762F0(v22, "transformation") || !sub_1000762F0(v22, "ignoreIf"))
    {
      return 0;
    }

    v42 = "queryStates";
    v47 = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v45 = v23;
    v46 = v23;
    sub_10000BD10(v22, &v42, &v45);
    *&v53 = 0;
    v52 = 0uLL;
    v51 = v22;
    *(&v53 + 1) = 0x8000000000000000;
    sub_10000DCFC(&v51);
    if (!sub_10000DD7C(&v45, &v51))
    {
      if (*sub_1000760D0(&v45) != 2)
      {
        return 0;
      }

      v24 = sub_1000760D0(&v45);
      *&v44[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v44 = v25;
      *&v44[16] = v25;
      sub_10000DEC4(v44, v24);
      sub_10000DF14(v44);
      v26 = sub_1000760D0(&v45);
      *&v43[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v27 = 0xAAAAAAAAAAAAAAAALL;
      *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v43 = v27;
      *&v43[16] = v27;
      sub_10000DEC4(v43, v26);
      sub_10000DCFC(v43);
      v51 = *v44;
      v52 = *&v44[8];
      v53 = *&v44[24];
      v48 = *v43;
      v49 = *&v43[8];
      v50 = *&v43[24];
      while (!sub_10000DD7C(&v51, &v48))
      {
        v28 = sub_10000DB44(&v51);
        if (!sub_100076230(v28, "state"))
        {
          return 0;
        }

        sub_100012BFC(&v51);
      }
    }

    sub_100012BFC(&v54);
  }

  v54 = "outputs";
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v10;
  v46 = v10;
  sub_10000BD10(a4, &v54, &v45);
  v51 = a4;
  v52 = 0uLL;
  *&v53 = 0;
  *(&v53 + 1) = 0x8000000000000000;
  sub_10000DCFC(&v51);
  if (sub_10000DD7C(&v45, &v51) || *sub_1000760D0(&v45) != 2)
  {
    return 0;
  }

  v11 = sub_1000760D0(&v45);
  *&v44[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v44 = v12;
  *&v44[16] = v12;
  sub_10000DEC4(v44, v11);
  sub_10000DF14(v44);
  v13 = sub_1000760D0(&v45);
  *&v43[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v14;
  *&v43[16] = v14;
  sub_10000DEC4(v43, v13);
  sub_10000DCFC(v43);
  v51 = *v44;
  v52 = *&v44[8];
  v53 = *&v44[24];
  v48 = *v43;
  v49 = *&v43[8];
  v50 = *&v43[24];
  while (!sub_10000DD7C(&v51, &v48))
  {
    v15 = sub_10000DB44(&v51);
    if (!sub_100076230(v15, "event") && (!sub_100076230(v15, "message") || !sub_100076230(v15, "sink")))
    {
      return 0;
    }

    sub_100012BFC(&v51);
  }

  *&v36[0] = "outputs";
  v47 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v16;
  v46 = v16;
  sub_10000BD10(a4, v36, &v45);
  v51 = a4;
  v52 = 0uLL;
  *&v53 = 0;
  *(&v53 + 1) = 0x8000000000000000;
  sub_10000DCFC(&v51);
  if (sub_10000DD7C(&v45, &v51) || *sub_1000760D0(&v45) != 2)
  {
    return 0;
  }

  v17 = sub_1000760D0(&v45);
  *&v44[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v44 = v18;
  *&v44[16] = v18;
  sub_10000DEC4(v44, v17);
  sub_10000DF14(v44);
  v19 = sub_1000760D0(&v45);
  *&v43[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v43 = v20;
  *&v43[16] = v20;
  sub_10000DEC4(v43, v19);
  sub_10000DCFC(v43);
  v51 = *v44;
  v52 = *&v44[8];
  v53 = *&v44[24];
  v48 = *v43;
  v49 = *&v43[8];
  v50 = *&v43[24];
  if (!sub_10000DD7C(&v51, &v48))
  {
    while (1)
    {
      v29 = sub_10000DB44(&v51);
      v30 = 0;
      v31 = 0;
      v54 = "event";
      *&v55 = "message";
      do
      {
        v39 = (&v54)[v31];
        if (*v29 == 1)
        {
          v32 = sub_100076578(*(v29 + 1), &v39);
        }

        else
        {
          v32 = 0;
        }

        v30 += v32;
        ++v31;
      }

      while (v31 != 2);
      if (v30 != 1 || !sub_100076230(v29, "event") && (!sub_100076230(v29, "message") || !sub_100076230(v29, "sink")))
      {
        break;
      }

      v21 = sub_1000762F0(v29, "transformation");
      if (v21)
      {
        sub_100012BFC(&v51);
        if (!sub_10000DD7C(&v51, &v48))
        {
          continue;
        }
      }

      return v21;
    }

    return 0;
  }

  return 1;
}

BOOL sub_100074DD0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v51 = "inputs";
  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v5;
  v57 = v5;
  sub_10000BD10(a4, &v51, &v56);
  v62 = a4;
  v63 = 0uLL;
  *&v64 = 0;
  *(&v64 + 1) = 0x8000000000000000;
  sub_10000DCFC(&v62);
  if (sub_10000DD7C(&v56, &v62) || *sub_1000760D0(&v56) != 2)
  {
    return 0;
  }

  v6 = sub_1000760D0(&v56);
  *&v55[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v55 = v7;
  *&v55[16] = v7;
  sub_10000DEC4(v55, v6);
  sub_10000DF14(v55);
  v8 = sub_1000760D0(&v56);
  *&v54[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v54 = v9;
  *&v54[16] = v9;
  sub_10000DEC4(v54, v8);
  sub_10000DCFC(v54);
  v62 = *v55;
  v63 = *&v55[8];
  v64 = *&v55[24];
  v59 = *v54;
  v60 = *&v54[8];
  v61 = *&v54[24];
  while (!sub_10000DD7C(&v62, &v59))
  {
    v10 = sub_10000DB44(&v62);
    if (!sub_100076230(v10, "event") || !sub_1000762F0(v10, "ignoreIf"))
    {
      return 0;
    }

    sub_100012BFC(&v62);
  }

  v51 = "states";
  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v11;
  v57 = v11;
  sub_10000BD10(a4, &v51, &v56);
  v62 = a4;
  v63 = 0uLL;
  *&v64 = 0;
  *(&v64 + 1) = 0x8000000000000000;
  sub_10000DCFC(&v62);
  if (sub_10000DD7C(&v56, &v62) || *sub_1000760D0(&v56) != 2)
  {
    return 0;
  }

  v12 = sub_1000760D0(&v56);
  *&v55[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v55 = v13;
  *&v55[16] = v13;
  sub_10000DEC4(v55, v12);
  sub_10000DF14(v55);
  v14 = sub_1000760D0(&v56);
  *&v54[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v54 = v15;
  *&v54[16] = v15;
  sub_10000DEC4(v54, v14);
  sub_10000DCFC(v54);
  v62 = *v55;
  v63 = *&v55[8];
  v64 = *&v55[24];
  v59 = *v54;
  v60 = *&v54[8];
  v61 = *&v54[24];
  if (sub_10000DD7C(&v62, &v59))
  {
LABEL_12:
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v36 = "edges";
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34[0] = v18;
    v34[1] = v18;
    sub_10000BD10(a4, &v36, v34);
    v62 = a4;
    v63 = 0uLL;
    *&v64 = 0;
    *(&v64 + 1) = 0x8000000000000000;
    sub_10000DCFC(&v62);
    if (!sub_10000DD7C(v34, &v62) && *sub_1000760D0(v34) == 2)
    {
      v19 = sub_1000760D0(v34);
      *&v33[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v33 = v20;
      *&v33[16] = v20;
      sub_10000DEC4(v33, v19);
      sub_10000DF14(v33);
      v21 = sub_1000760D0(v34);
      *&v32[32] = 0xAAAAAAAAAAAAAAAALL;
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v32 = v22;
      *&v32[16] = v22;
      sub_10000DEC4(v32, v21);
      sub_10000DCFC(v32);
      v40 = *v33;
      v41 = *&v33[8];
      v42 = *&v33[24];
      v37 = *v32;
      v38 = *&v32[8];
      v39 = *&v32[24];
      if (sub_10000DD7C(&v40, &v37))
      {
        return 1;
      }

      while (1)
      {
        v23 = sub_10000DB44(&v40);
        result = sub_10007669C(v23, "startingState");
        if (!result)
        {
          break;
        }

        result = sub_10007669C(v23, "targetState");
        if (!result)
        {
          break;
        }

        result = sub_10007669C(v23, "event");
        if (!result)
        {
          break;
        }

        v46 = 0xAAAAAAAAAAAAAAAALL;
        v47 = "actions";
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45[0] = v24;
        v45[1] = v24;
        sub_10000BD10(v23, &v47, v45);
        *&v64 = 0;
        v63 = 0uLL;
        v62 = v23;
        *(&v64 + 1) = 0x8000000000000000;
        sub_10000DCFC(&v62);
        if (!sub_10000DD7C(v45, &v62))
        {
          if (*sub_1000760D0(v45) != 2)
          {
            return 0;
          }

          v25 = sub_1000760D0(v45);
          *&v44[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v26 = 0xAAAAAAAAAAAAAAAALL;
          *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v44 = v26;
          *&v44[16] = v26;
          sub_10000DEC4(v44, v25);
          sub_10000DF14(v44);
          v27 = sub_1000760D0(v45);
          *&v43[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v28 = 0xAAAAAAAAAAAAAAAALL;
          *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v43 = v28;
          *&v43[16] = v28;
          sub_10000DEC4(v43, v27);
          sub_10000DCFC(v43);
          v51 = *v44;
          v52 = *&v44[8];
          v53 = *&v44[24];
          v48 = *v43;
          v49 = *&v43[8];
          v50 = *&v43[24];
          if (!sub_10000DD7C(&v51, &v48))
          {
            v29 = sub_10000DB44(&v51);
            v30 = v29;
            if (*v29 == 1 && sub_100076230(v29, "action"))
            {
              v31 = sub_10000DFA0(v30, "action");
              sub_100073F04(v31, "sendEvent");
            }

            return 0;
          }
        }

        sub_100012BFC(&v40);
        if (sub_10000DD7C(&v40, &v37))
        {
          return 1;
        }
      }

      return result;
    }

    return 0;
  }

  while (1)
  {
    v16 = sub_10000DB44(&v62);
    result = sub_100076230(v16, "name");
    if (!result)
    {
      return result;
    }

    sub_100012BFC(&v62);
    if (sub_10000DD7C(&v62, &v59))
    {
      goto LABEL_12;
    }
  }
}

void sub_100075544(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  sub_100075590(a1, a2);
}

void sub_100075590(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_10002CB3C(a1);
    sub_10000459C(&v11, v8);
    v9 = std::string::insert(&v11, 0, "type must be object, but is ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_10002C9C4(302, &v12, exception);
  }

  *(&v12 + 1) = 0;
  v13 = 0;
  *&v12 = &v12 + 8;
  sub_100075764(**(a1 + 8), (*(a1 + 8) + 8), &v12, &v12 + 1);
  v4 = a2 + 8;
  sub_100010440(a2, *(a2 + 8));
  v5 = *(&v12 + 1);
  *a2 = v12;
  *(a2 + 8) = v5;
  v6 = v13;
  *(a2 + 16) = v13;
  if (v6)
  {
    *(v5 + 16) = v4;
    *&v12 = &v12 + 8;
    *(&v12 + 1) = 0;
    v13 = 0;
    v5 = 0;
  }

  else
  {
    *a2 = v4;
  }

  sub_100010440(&v12, v5);
}

void *sub_100075764(void *a1, void *a2, void *a3, void *a4)
{
  v14[0] = a3;
  v14[1] = a4;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_10000FF70(v15, v5 + 56);
      sub_100075914(__p, v5 + 2, v15);
      sub_10000298C(v15);
      sub_1000048FC(&v16, v15[0]);
      sub_1000758A8(v14, __p);
      sub_10000298C(v12);
      sub_1000048FC(&v13, v12[0]);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
    return v14[0];
  }

  return a3;
}

void **sub_1000758A8(void **a1, const void **a2)
{
  v3 = sub_10007599C(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

_BYTE *sub_100075914(_BYTE *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  __dst[24] = *a3;
  *(__dst + 4) = *(a3 + 8);
  sub_10000298C(a3);
  *a3 = 0;
  *(a3 + 8) = 0;
  sub_10000298C(__dst + 24);
  return __dst;
}

const void *sub_10007599C(void *a1, uint64_t *a2, const void **a3)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100017504(a1, a2, v5, &v4, a3);
  if (!result)
  {
    memset(&v5[1], 170, 24);
    sub_100075A58();
  }

  return result;
}

void sub_100075AD0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100030F3C(v3, v2);
  _Unwind_Resume(a1);
}

_BYTE *sub_100075AEC(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v6 = *(a2 + 24);
  v5 = a2 + 24;
  __dst[24] = v6;
  *(__dst + 4) = *(v5 + 8);
  sub_10000298C(v5);
  *v5 = 0;
  *(v5 + 8) = 0;
  sub_10000298C(__dst + 24);
  return __dst;
}

uint64_t sub_100075B70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_100075C7C(a2, a1[2]);
  v7 = *a1;
  v5 = (a1 + 1);
  v6 = v7;
  if (v7 != v5)
  {
    v8 = a2[1];
    do
    {
      if (v8 >= a2[2])
      {
        result = sub_100075DC4(a2, v6 + 2);
        v8 = result;
      }

      else
      {
        result = sub_100075D64(a2, v6 + 2);
        v8 += 24;
      }

      a2[1] = v8;
      v9 = *(v6 + 1);
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
          v10 = *(v6 + 2);
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }

  return result;
}

void *sub_100075C7C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_10002E2FC(result, a2);
    }

    sub_10002C63C();
  }

  return result;
}

void *sub_100075D64(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1000078D8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100075DC4(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10002C63C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10002E2FC(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8(v7, *a2, *(a2 + 1));
    v7 = v18;
    v8 = *(&v19 + 1);
    v10 = v19;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v17 = v14;
  v18 = v14;
  sub_10002E354(&v17);
  return v11;
}

void sub_100075F38(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_100075F84();
}

void sub_100075FE0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  sub_10007602C();
}

uint64_t sub_100076088(uint64_t **a1, const void **a2)
{
  v3 = sub_10000F260(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_10004140C(a1, v3);
  return 1;
}

unsigned __int8 *sub_1000760D0(unsigned __int8 **a1)
{
  result = *a1;
  if (!result)
  {
    sub_10011B674();
  }

  v3 = *result;
  if (v3 == 2)
  {
    v5 = *(*(result + 1) + 8);
    result = a1[2];
    if (result == v5)
    {
      sub_10011B61C();
    }
  }

  else if (v3 == 1)
  {
    v4 = a1[1];
    if (v4 == (*(result + 1) + 8))
    {
      sub_10011B648();
    }

    return v4 + 56;
  }

  else if (a1[4])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000459C(v7, "cannot get value");
    sub_10002E87C(214, v7, exception);
  }

  return result;
}

void sub_1000761F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

BOOL sub_100076230(uint64_t a1, const std::string::value_type *a2)
{
  v10 = a2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  sub_10000BD10(a1, &v10, v8);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  sub_10000DEC4(v6, a1);
  sub_10000DCFC(v6);
  return !sub_10000DD7C(v8, v6) && *sub_1000760D0(v8) == 3;
}

BOOL sub_1000762F0(uint64_t a1, const std::string::value_type *a2)
{
  v10 = a2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  sub_10000BD10(a1, &v10, v8);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  sub_10000DEC4(v6, a1);
  sub_10000DCFC(v6);
  return sub_10000DD7C(v8, v6) || *sub_1000760D0(v8) == 2;
}

BOOL sub_1000763B0(uint64_t a1)
{
  v9 = "expression";
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v2;
  v7[1] = v2;
  sub_10000BD10(a1, &v9, v7);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = v3;
  v5[1] = v3;
  sub_10000DEC4(v5, a1);
  sub_10000DCFC(v5);
  return !sub_10000DD7C(v7, v5) && *sub_1000760D0(v7) == 2;
}

void *sub_100076478(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_100007BE8(result, a3);
  }

  return result;
}

void *sub_1000764D8(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t sub_100076578(uint64_t a1, const std::string::value_type **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  while (std::string::compare((v3 + 4), *a2) > 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (std::string::compare((v3 + 4), *a2) < 0)
  {
    ++v3;
    goto LABEL_6;
  }

  v6 = *v3;
  v7 = v3;
  if (*v3)
  {
    v7 = v3;
    do
    {
      v8 = std::string::compare((v6 + 4), *a2);
      if (v8 >= 0)
      {
        v7 = v6;
      }

      v6 = *(v6 + ((v8 >> 28) & 8));
    }

    while (v6);
  }

  for (i = v3[1]; i; i = *(i + 8 * (v10 < 1)))
  {
    v10 = std::string::compare((i + 32), *a2);
    if (v10 > 0)
    {
      v2 = i;
    }
  }

  if (v7 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v11 = v7[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v7[2];
        v13 = *v12 == v7;
        v7 = v12;
      }

      while (!v13);
    }

    ++result;
    v7 = v12;
  }

  while (v12 != v2);
  return result;
}

BOOL sub_10007669C(uint64_t a1, const std::string::value_type *a2)
{
  v10 = a2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  sub_10000BD10(a1, &v10, v8);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v4;
  v6[1] = v4;
  sub_10000DEC4(v6, a1);
  sub_10000DCFC(v6);
  if (sub_10000DD7C(v8, v6))
  {
    return 0;
  }

  if (*sub_1000760D0(v8) == 3)
  {
    return 1;
  }

  return *sub_1000760D0(v8) == 0;
}

void sub_100076A90(id a1, BPSCompletion *a2)
{
  v2 = a2;
  v3 = [(BPSCompletion *)v2 state];
  v4 = qword_100192D38;
  if (v3)
  {
    v5 = qword_100192D38;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(BPSCompletion *)v2 error];
      v7 = [v6 description];
      v8 = 136315138;
      v9 = [v7 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "HighEngagementDevices Error: %s\n", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100192D38, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "HighEngagementDevices Complete\n\n", &v8, 2u);
  }
}

void sub_100076C08(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 eventBody];
  v4 = [v3 topCategory1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_10018C2C8;
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"TopCategory1"];

  v7 = [v23 eventBody];
  v8 = [v7 topCategory2];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_10018C2C8;
  }

  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"TopCategory2"];

  v11 = [v23 eventBody];
  v12 = [v11 topCategory3];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_10018C2C8;
  }

  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"TopCategory3"];

  v15 = [v23 eventBody];
  v16 = [v15 highEngagementCategory1];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_10018C2C8;
  }

  [*(a1 + 32) setObject:v18 forKeyedSubscript:@"HighEngagementCategory1"];

  v19 = [v23 eventBody];
  v20 = [v19 highEngagementCategory2];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_10018C2C8;
  }

  [*(a1 + 32) setObject:v22 forKeyedSubscript:@"HighEngagementCategory2"];
}

void sub_100076E2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_100076E38(uint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  *a1 = off_100184550;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1000078D8((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_1000078D8((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v8;
  }

  v9 = a4[1];
  *(a1 + 80) = *a4;
  *(a1 + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100076F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 55) < 0)
  {
    operator delete(*(v9 + 32));
  }

  sub_1000131F8(&a9);
  _Unwind_Resume(a1);
}

void sub_100076F64(uint64_t a1, uint64_t a2)
{
  sub_100117660((a1 + 56), 0, __p);
  if (LODWORD(__p[0]) >= 2 && (sub_100117660((a1 + 56), 0, __p), LODWORD(__p[0]) == 3))
  {
    sub_100077800(&v14, a1 + 56, 0);
    v13 = v14;
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
    }

    v12 = 0;
    while (!sub_100077C24(&v13, &v12))
    {
      v4 = sub_100077A20(&v13);
      memset(v11, 170, sizeof(v11));
      sub_100118F88(v4, __p);
      if (SBYTE7(v16) < 0)
      {
        sub_1000078D8(v11, __p[0], __p[1]);
        if (SBYTE7(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *v11 = *__p;
        v11[2] = v16;
      }

      v18 = 0xAAAAAAAAAAAAAA00;
      v22 = -1431655935;
      *__p = 0u;
      v16 = 0u;
      v17 = 0u;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v5 = HIBYTE(v11[2]);
      if (SHIBYTE(v11[2]) >= 0)
      {
        v6 = v11;
      }

      else
      {
        v6 = v11[0];
      }

      if (SHIBYTE(v11[2]) < 0)
      {
        v5 = v11[1];
      }

      v7 = sub_100077C9C(v6, v5 + v6, __p, a1 + 80, 1024);
      sub_10007E4A8(__p);
      if (v7)
      {
        v8 = qword_100192D78;
        if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_DEBUG))
        {
          sub_10011C798(buf, v4, &v24, v8);
        }

        v9 = *(a2 + 24);
        if (!v9)
        {
          sub_10002B200();
        }

        (*(*v9 + 48))(v9, v4);
      }

      if (SHIBYTE(v11[2]) < 0)
      {
        operator delete(v11[0]);
      }

      sub_1001165F8(&v13, 0);
    }

    sub_100077844(&v12);
    sub_100077844(&v13);
    sub_100077844(&v14);
  }

  else
  {
    v10 = qword_100192D78;
    if (os_log_type_enabled(qword_100192D78, OS_LOG_TYPE_ERROR))
    {
      sub_10011C710(a1, (a1 + 56), v10);
    }
  }
}

void sub_1000771EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, atomic_uint *a15, atomic_uint *a16, atomic_uint *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100077844(&a15);
  sub_100077844(&a16);
  sub_100077844(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100077260@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 == v4)
  {
    (*(*a1 + 16))(a1);
    v3 = a1[1];
    v4 = a1[2];
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;

  return sub_10007E4E8(a2, v3, v4, (v4 - v3) >> 4);
}

uint64_t sub_1000772DC(uint64_t a1)
{
  v2[0] = off_100184AA8;
  v2[1] = a1;
  v2[3] = v2;
  sub_100076F64(a1, v2);
  return sub_100070850(v2);
}

void sub_100077360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100070850(va);
  _Unwind_Resume(a1);
}

void sub_100077374(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100013CA0(a1, 0, 0, 0, 1);
}

void sub_100077620(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10002C628(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100077630(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 79) >= 0)
  {
    v4 = *(a1 + 79);
  }

  else
  {
    v4 = *(a1 + 64);
  }

  memset(&v17, 170, sizeof(v17));
  v5 = &v17;
  sub_100048378(&v17, v4 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v17.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a1 + 79) >= 0)
    {
      v6 = (a1 + 56);
    }

    else
    {
      v6 = *(a1 + 56);
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
  v7 = *(a1 + 80);
  if (v7)
  {
    sub_100077910(v7, &__p);
    v8 = HIBYTE(v16);
    v10 = __p;
    v9 = v15;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    __p = 0;
    v15 = 0;
    v16 = 0;
  }

  if ((v8 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v10;
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  v13 = std::string::append(&v17, p_p, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_100077788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000777C8(uint64_t a1)
{
  sub_1000705E4(a1);

  operator delete();
}

uint64_t *sub_100077800(uint64_t *a1, uint64_t a2, char a3)
{
  *a1 = 0;
  sub_1001160EC(a1, a2, a3, 0);
  return a1;
}

atomic_uint **sub_100077844(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    sub_100077898(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_100077898(uint64_t a1)
{
  sub_100115FB8((a1 + 48), (a1 + 56), v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

double sub_100077910@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (!*(a1 + 44))
  {
    v3 = *(a1 + 56);
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000173E4();
    }

    v4 = *(a1 + 48);
    if (v3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v7) = *(a1 + 56);
    if (v3)
    {
      memmove(&v6, v4, v3);
    }

    *(&v6 + v3) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_100077A20(uint64_t *a1)
{
  if (!*a1 || !*(sub_100077A64(a1) + 48))
  {
    sub_10011C7F4();
  }

  return sub_100077A64(a1) + 8;
}

uint64_t sub_100077A64(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "intrusive_ptr.hpp", 199, "px != 0");
  }

  return result;
}

void *sub_100077B2C(void *a1, __int128 *a2, __int128 *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100184588;
  sub_100076E38((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100077BA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100184588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_100077C24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 == *a2)
  {
    return 1;
  }

  if (*a1)
  {
    if (*(sub_100077A64(a1) + 48))
    {
      return 0;
    }

    v2 = *a2;
  }

  return !v2 || *(sub_100077A64(a2) + 48) == 0;
}

BOOL sub_100077C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v5;
  v14[3] = v5;
  v14[0] = v5;
  v14[1] = v5;
  v12 = v5;
  v13 = v5;
  v11 = v5;
  v10[6] = v5;
  v10[7] = v5;
  v10[4] = v5;
  v10[5] = v5;
  v10[2] = v5;
  v10[3] = v5;
  v10[0] = v5;
  v10[1] = v5;
  sub_100077DB0(v10, a1, a2, a3, a4, a5, a1);
  v6 = sub_1000789C8(v10);
  v9 = v14 + 1;
  sub_100078940(&v9);
  if (v12)
  {
    **(&v11 + 1) = v12;
  }

  v7 = *(&v10[0] + 1);
  *(&v10[0] + 1) = 0;
  if (v7)
  {
    sub_10007E4A8(v7);
    operator delete();
  }

  return v6;
}

void sub_100077D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10007E424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100077DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *(a1 + 72) = a5;
  if (!*a5)
  {
    __assert_rtn("get_traits", "basic_regex.hpp", 604, "0 != m_pimpl.get()");
  }

  *(a1 + 80) = *(*a5 + 24);
  *(a1 + 123) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  sub_100077ED8(a1, a5, a6);
  return a1;
}

void sub_100077E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100078940(va);
  v6 = *(v4 + 144);
  if (v6)
  {
    **v5 = v6;
  }

  sub_1000781E0(v3, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_100077ED8(uint64_t a1, uint64_t a2, int a3)
{
  if (!*a2 || *(*a2 + 44))
  {
    v14.__vftable = 0xAAAAAAAAAAAAAAAALL;
    v14.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
    std::logic_error::logic_error(&v14, "Invalid regular expression object");
    sub_1000780D4(&v14);
  }

  v3 = a3;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  result = sub_100078130(a1);
  v7 = **(a1 + 72);
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 120) = (v8 & 0x100000) != 0;
  v9 = *(a1 + 96);
  if ((v9 & 0x30000) == 0)
  {
    if ((v8 & 3) == 2 || (v8 & 0x1003) == 4097 || (v8 & 0x203) == 0)
    {
      v12 = 0x10000;
    }

    else
    {
      v12 = 0x20000;
    }

    v9 |= v12;
    *(a1 + 96) = v9;
  }

  if ((v9 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 16) = *a1;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  if (!v7)
  {
    sub_10011C820();
  }

  *(a1 + 176) = *(v7 + 368);
  if ((v3 & 0x40) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  *(a1 + 180) = v13;
  if (!*a2)
  {
    sub_10011C820();
  }

  if (*(*a2 + 401) == 1)
  {
    *(a1 + 96) &= 0x3FFFFBFFu;
  }

  return result;
}

void sub_1000780D4(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10007822C(exception, a1);
}

uint64_t sub_100078130(uint64_t result)
{
  v1 = *(result + 32) - *(result + 24);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v2 = **(result + 72);
  if (v2)
  {
    v2 = *(v2 + 56);
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  if (0x7FFFFFFFFFFFFFFFLL / v2 < v2 || (v3 = v2 * v2, 0x7FFFFFFFFFFFFFFFLL / v1 < v3) || (v4 = v3 * v1, v4 > 0x7FFFFFFFFFFE795FLL) || (*(result + 112) = v4 + 100000, 0x7FFFFFFFFFFFFFFFLL / v1 < v1) || (v5 = v1 * v1, v5 > 0x7FFFFFFFFFFE795FLL))
  {
    v6 = 100000000;
LABEL_13:
    *(result + 112) = v6;
    return result;
  }

  if (v5 >= 0x5F45A60)
  {
    v5 = 99900000;
  }

  if (v5 > v4)
  {
    v6 = v5 + 100000;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1000781E0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10007E4A8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10007822C(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_100184620;
  *(a1 + 8) = off_100184650;
  *(a1 + 24) = off_100184678;
  return a1;
}

uint64_t sub_1000782D8(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::invalid_argument::~invalid_argument((a1 + 8));
  return a1;
}

void sub_100078528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_100078594(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100078804(exception, a1);
}

void sub_1000785F0(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::invalid_argument::~invalid_argument((a1 + 8));

  operator delete();
}

void sub_100078664(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));

  std::invalid_argument::~invalid_argument(a1);
}

void sub_1000786C0(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));
  std::invalid_argument::~invalid_argument(a1);

  operator delete();
}

void sub_100078738(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);

  std::invalid_argument::~invalid_argument(v1);
}

void sub_100078790(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);
  std::invalid_argument::~invalid_argument(v1);

  operator delete();
}

uint64_t sub_100078804(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100183638;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_100184620;
  *(a1 + 8) = off_100184650;
  *(a1 + 24) = off_100184678;
  return a1;
}

void sub_100078940(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 112;
        sub_10007E4A8((v4 - 96));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_1000789C8(uint64_t a1)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  sub_100078F70(&v15, (a1 + 208), (a1 + 216));
  *(a1 + 224) = 1024;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a1 + 40) = v3;
  *(a1 + 56) = v3;
  *(a1 + 104) = 0;
  v4 = *(a1 + 96);
  *(a1 + 96) = v4 | 0x8000;
  if ((v4 & 0x40000) != 0 || (v5 = **(a1 + 72)) == 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v5 + 64);
  }

  sub_100078C0C(v2, v6, v3, *(a1 + 32));
  *(*(a1 + 16) + 24) = *(a1 + 24);
  v7 = *(a1 + 16);
  v8 = *(a1 + 72);
  v9 = *v8;
  v10 = v8[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(v7 + 64);
  *(v7 + 56) = v9;
  *(v7 + 64) = v10;
  if (v11)
  {
    sub_10000786C(v11);
  }

  if (v10)
  {
    sub_10000786C(v10);
  }

  v12 = *(a1 + 96);
  if ((v12 & 0x20000) != 0)
  {
    sub_100078D8C(*a1, *(a1 + 16));
    v12 = *(a1 + 96);
  }

  if ((~v12 & 0xA0000) == 0)
  {
    v16.__vftable = 0xAAAAAAAAAAAAAAAALL;
    v16.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
    std::logic_error::logic_error(&v16, "Usage Error: Can't mix regular expression captures with POSIX matching rules");
    sub_10007962C(&v16);
  }

  v13 = sub_100078E34(a1) && sub_100078EF4(*a1, 0)[1] == *(a1 + 32) && *sub_100078EF4(*a1, 0) == *(a1 + 24);
  sub_10007E3BC(&v15);
  return v13;
}

void sub_100078B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::logic_error a10)
{
  if (a2)
  {
    std::logic_error::~logic_error(&a10);
    __cxa_begin_catch(exception_object);
    while (1)
    {
      *(v10 + 228) = 1;
      *(v10 + 230) = 0;
        ;
      }

      if (!*(v10 + 88))
      {
        __cxa_rethrow();
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_100078BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  __cxa_end_catch();
  sub_10007E3BC(&a9);
  _Unwind_Resume(a1);
}

void sub_100078BF4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100078BFCLL);
  }

  sub_10002C628(a1);
}

uint64_t *sub_100078C0C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v16[1] = a4;
  v16[2] = 0xAAAAAAAAAAAAAA00;
  v16[0] = a4;
  v6 = *result;
  v7 = result[1];
  v8 = v7 - *result;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  v10 = a2 + 2;
  if (a2 + 2 >= v9)
  {
    v14 = v7 != *result;
    if (v8 >= 1)
    {
      v15 = v8 / 0x18uLL + 1;
      do
      {
        *v6 = a4;
        *(v6 + 8) = a4;
        *(v6 + 16) = 0;
        v6 += 24;
        --v15;
      }

      while (v15 > 1);
    }

    if (v10 != v9)
    {
      result = sub_100079088(result, result[1], v10 - v9, v16);
    }
  }

  else
  {
    v11 = 24 * a2 + 48;
    if (v11 + v6 != v7)
    {
      v12 = result[1];
      result[1] = v6 + v11;
      v8 = 24 * a2 + 48;
    }

    if (v8 >= 1)
    {
      v13 = v8 / 0x18uLL + 1;
      do
      {
        *v6 = a4;
        *(v6 + 8) = a4;
        *(v6 + 16) = 0;
        v6 += 24;
        --v13;
      }

      while (v13 > 1);
    }
  }

  *(*v5 + 24) = a3;
  *(v5 + 18) = 0;
  return result;
}

uint64_t sub_100078D8C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100079484(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  }

  v5 = *(a2 + 56);
  v4 = *(a2 + 64);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 64);
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  if (v6)
  {
    sub_10000786C(v6);
  }

  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 76);
  *(a1 + 76) = v7;
  if ((v7 & 1) == 0)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t sub_100078E34(uint64_t a1)
{
  *(a1 + 121) = 0;
  v1 = **(a1 + 72);
  if (!v1)
  {
    sub_10011C84C();
  }

  *(a1 + 88) = *(v1 + 72);
  sub_100079D64(*(a1 + 16), *(a1 + 40));
  *(a1 + 48) = *(a1 + 40);
  sub_100079E20(a1, v3);
  if ((*(a1 + 122) & 1) == 0 && *(a1 + 121) == 1 && (*(a1 + 97) & 0x20) != 0)
  {
    *(a1 + 122) = 1;
    sub_100079FD8(*(a1 + 16), *(a1 + 32), 0, 0, 0);
    *(a1 + 40) = *(a1 + 32);
    if ((*(a1 + 98) & 2) != 0)
    {
      sub_10007A05C(*a1, *(a1 + 16));
    }
  }

  result = *(a1 + 122);
  if ((result & 1) == 0)
  {
    *(a1 + 40) = *(a1 + 48);
  }

  return result;
}

uint64_t *sub_100078EF4(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (*(a1 + 76) == 1 && v2 == a1[1])
  {
    sub_10007D510();
  }

  v3 = a2 + 2 >= (-1431655765 * ((a1[1] - v2) >> 3)) || a2 <= -3;
  v4 = v2 + 24 * (a2 + 2);
  if (v3)
  {
    return a1 + 4;
  }

  else
  {
    return v4;
  }
}