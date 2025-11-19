void sub_215934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a56 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a49 & 0x80000000) == 0)
    {
LABEL_11:
      sub_22EEE0(v58 - 184);
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a44);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a51);
  if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_215C64(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 64);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 7)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_22F358(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 8);
  }

  return v106;
}

void sub_217464(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x21745CLL);
}

uint64_t sub_217474(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  memset(&v155, 0, 64);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 8)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_2305A8(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 9);
  }

  return v106;
}

void sub_218C78(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x218C70);
}

uint64_t sub_218C88(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 80);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 9)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_231934(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 10);
  }

  return v106;
}

void sub_21A48C(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x21A484);
}

uint64_t sub_21A49C(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  memset(&v155, 0, 80);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 10)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_232DF8(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 11);
  }

  return v106;
}

void sub_21BCA4(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x21BC9CLL);
}

uint64_t sub_21BCB4(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 96);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 11)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_2343F8(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 12);
  }

  return v106;
}

void sub_21D4B8(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x21D4B0);
}

uint64_t sub_21D4C8(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  memset(&v155, 0, 96);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 12)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_235624(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 13);
  }

  return v106;
}

void sub_21ECD0(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x21ECC8);
}

uint64_t sub_21ECE0(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 112);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 13)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_236918(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 14);
  }

  return v106;
}

void sub_2204E8(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x2204E0);
}

uint64_t sub_2204F8(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  memset(&v155, 0, 112);
  v152 = 1;
  v153 = a1;
  v154 = &v155;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v135 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v142, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v142[48], v19, v18);
    v142[v18 + 48] = 0;
    v20 = std::string::append(v142, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v142[48] = *(&v20->__r_.__value_.__l + 2);
    *&v142[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v140, 0, sizeof(v140));
    while (1)
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v27)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v140.__r_.__value_.__l.__size_;
        v24 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v140;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
      if (!v26)
      {
        v28 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        v29 = &v140;
        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v140.__r_.__value_.__l.__size_;
          v29 = v140.__r_.__value_.__r.__words[0];
        }

        if (v28)
        {
          v30 = (v29 + v28 - 1);
          if (v30 > v29)
          {
            v31 = &v29->__r_.__value_.__s.__data_[1];
            do
            {
              v32 = *(v31 - 1);
              *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
              v30->__r_.__value_.__s.__data_[0] = v32;
              v30 = (v30 - 1);
              v33 = v31++ >= v30;
            }

            while (!v33);
          }
        }

        v34 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
        v36 = *(a1 + 568);
        v37 = *(a1 + 560);
        v38 = 30 * ((v36 - v37) >> 3) - 1;
        if (v36 == v37)
        {
          v38 = 0;
        }

        if (v38 == *(a1 + 592) + *(a1 + 584))
        {
          sub_C35C4((a1 + 552));
          v37 = *(a1 + 560);
          v36 = *(a1 + 568);
        }

        if (v36 == v37)
        {
          v40 = 0;
        }

        else
        {
          v39 = *(a1 + 592) + *(a1 + 584);
          v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
        }

        goto LABEL_184;
      }
    }
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }

LABEL_55:
    if ((v16 & 0x80u) == 0)
    {
      v41 = v15;
    }

    else
    {
      v41 = *v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v42 = v16;
    }

    else
    {
      v42 = *(v14 + 16);
    }

    sub_13B38(a1 + 112, v41, v42);
    goto LABEL_64;
  }

  *(a1 + 24) = v14 + 40;
  v15 = (v14 + 8);
  *(a1 + 104) = *v14;
  if (v13 != v14)
  {
    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_64:
  v43 = 0;
  *(a1 + 136) = *(v14 + 32);
  v44 = a1 + 40;
  v45 = (a1 + 48);
  while (1)
  {
    v48 = sub_C5A5C(a1, 0);
    v155.i64[v43] = v48;
    if (!v48)
    {
      sub_C00FC(v43, &v139);
      v54 = std::string::insert(&v139, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v140.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v140.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v140, " for function: '", 0x10uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      v58 = *(a3 + 23);
      if (v58 >= 0)
      {
        v59 = a3;
      }

      else
      {
        v59 = *a3;
      }

      if (v58 >= 0)
      {
        v60 = *(a3 + 23);
      }

      else
      {
        v60 = a3[1];
      }

      v61 = std::string::append(&v141, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      *&v142[16] = *(&v61->__r_.__value_.__l + 2);
      *v142 = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      v63 = std::string::append(v142, "'", 1uLL);
      v64 = *&v63->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v63->__r_.__value_.__l + 2);
      *&v142[32] = v64;
      v63->__r_.__value_.__l.__size_ = 0;
      v63->__r_.__value_.__r.__words[2] = 0;
      v63->__r_.__value_.__r.__words[0] = 0;
      v65 = 21178;
      memset(&v136, 0, sizeof(v136));
      do
      {
        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
        {
          v69 = (v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v136.__r_.__value_.__l.__size_ == v69)
          {
            if ((v136.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_99:
            operator new();
          }

          v66 = v136.__r_.__value_.__l.__size_;
          v67 = v136.__r_.__value_.__r.__words[0];
          ++v136.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v136.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_99;
          }

          v66 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
          *(&v136.__r_.__value_.__s + 23) = (*(&v136.__r_.__value_.__s + 23) + 1) & 0x7F;
          v67 = &v136;
        }

        v68 = v67 + v66;
        *v68 = (v65 % 0xA) | 0x30;
        v68[1] = 0;
        v26 = v65 > 9;
        v65 /= 0xAu;
      }

      while (v26);
      v70 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      v71 = &v136;
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v70 = v136.__r_.__value_.__l.__size_;
        v71 = v136.__r_.__value_.__r.__words[0];
      }

      if (v70)
      {
        v72 = (v71 + v70 - 1);
        if (v72 > v71)
        {
          v73 = &v71->__r_.__value_.__s.__data_[1];
          do
          {
            v74 = *(v73 - 1);
            *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
            v72->__r_.__value_.__s.__data_[0] = v74;
            v72 = (v72 - 1);
            v33 = v73++ >= v72;
          }

          while (!v33);
        }
      }

      v75 = std::string::insert(&v136, 0, "exprtk.hpp:", 0xBuLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      v138 = v75->__r_.__value_.__r.__words[2];
      *v137 = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], v137, v143);
      v77 = *(a1 + 568);
      v78 = *(a1 + 560);
      v79 = 30 * ((v77 - v78) >> 3) - 1;
      if (v77 == v78)
      {
        v79 = 0;
      }

      if (v79 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v78 = *(a1 + 560);
        v77 = *(a1 + 568);
      }

      if (v77 == v78)
      {
        v81 = 0;
      }

      else
      {
        v80 = *(a1 + 592) + *(a1 + 584);
        v81 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
      }

      sub_C398C(v81, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_162:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_174;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_163:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_175;
      }

LABEL_174:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_164:
        if ((SHIBYTE(v138) & 0x80000000) == 0)
        {
          goto LABEL_165;
        }

        goto LABEL_176;
      }

LABEL_175:
      operator delete(v144);
      if ((SHIBYTE(v138) & 0x80000000) == 0)
      {
LABEL_165:
        if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_166;
        }

        goto LABEL_177;
      }

LABEL_176:
      operator delete(v137[0]);
      if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_166:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_178;
      }

LABEL_177:
      operator delete(v136.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_167:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        goto LABEL_179;
      }

LABEL_178:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_169;
        }

        goto LABEL_180;
      }

LABEL_179:
      operator delete(*v142);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_169:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_170;
        }

        goto LABEL_181;
      }

LABEL_180:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_170:
        if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

LABEL_182:
        operator delete(v139.__r_.__value_.__l.__data_);
        goto LABEL_201;
      }

LABEL_181:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_182;
    }

    v49 = *v13;
    if (v43 == 14)
    {
      if (v49 == 41)
      {
        v82 = *(a1 + 24);
        if (*(a1 + 8) == v82)
        {
          *v13 = *v44;
          v83 = *(a1 + 71);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
            goto LABEL_118;
          }
        }

        else
        {
          *(a1 + 24) = v82 + 40;
          v45 = (v82 + 8);
          *(a1 + 104) = *v82;
          v44 = v82;
          if (v13 == v82)
          {
LABEL_266:
            *(a1 + 136) = *(v44 + 32);
            v106 = sub_237CD4(a1 + 344, a2, &v155);
            v152 = 0;
            return v106;
          }

          v83 = *(v82 + 31);
          if ((*(a1 + 135) & 0x80000000) == 0)
          {
LABEL_118:
            if ((v83 & 0x80) != 0)
            {
              sub_13A68((a1 + 112), *v45, *(v44 + 16));
            }

            else
            {
              v84 = *v45;
              *(a1 + 128) = *(v45 + 2);
              *(a1 + 112) = v84;
            }

            goto LABEL_266;
          }
        }

        if ((v83 & 0x80u) == 0)
        {
          v132 = v45;
        }

        else
        {
          v132 = *v45;
        }

        if ((v83 & 0x80u) == 0)
        {
          v133 = v83;
        }

        else
        {
          v133 = *(v44 + 16);
        }

        sub_13B38(a1 + 112, v132, v133);
        goto LABEL_266;
      }

      if (*(a3 + 23) >= 0)
      {
        v86 = *(a3 + 23);
      }

      else
      {
        v86 = a3[1];
      }

      if (v86 + 52 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v86 + 52 > 0x16)
      {
        operator new();
      }

      qmemcpy(v142, "ERR021 - Invalid number of arguments for function: '", 52);
      if (*(a3 + 23) >= 0)
      {
        v112 = a3;
      }

      else
      {
        v112 = *a3;
      }

      memmove(&v142[52], v112, v86);
      v142[v86 + 52] = 0;
      v113 = std::string::append(v142, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      *&v142[48] = *(&v113->__r_.__value_.__l + 2);
      *&v142[32] = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v115 = 21203;
      memset(&v140, 0, sizeof(v140));
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v119 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v119)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_223:
            operator new();
          }

          v116 = v140.__r_.__value_.__l.__size_;
          v117 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_223;
          }

          v116 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v117 = &v140;
        }

        v118 = v117 + v116;
        *v118 = (v115 % 0xA) | 0x30;
        v118[1] = 0;
        v26 = v115 > 9;
        v115 /= 0xAu;
      }

      while (v26);
      v120 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v121 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v120 = v140.__r_.__value_.__l.__size_;
        v121 = v140.__r_.__value_.__r.__words[0];
      }

      if (v120)
      {
        v122 = (v121 + v120 - 1);
        if (v122 > v121)
        {
          v123 = &v121->__r_.__value_.__s.__data_[1];
          do
          {
            v124 = *(v123 - 1);
            *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
            v122->__r_.__value_.__s.__data_[0] = v124;
            v122 = (v122 - 1);
            v33 = v123++ >= v122;
          }

          while (!v33);
        }
      }

      v125 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v126 = *&v125->__r_.__value_.__l.__data_;
      v141.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
      *&v141.__r_.__value_.__l.__data_ = v126;
      v125->__r_.__value_.__l.__size_ = 0;
      v125->__r_.__value_.__r.__words[2] = 0;
      v125->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
      v127 = *(a1 + 568);
      v128 = *(a1 + 560);
      v129 = 30 * ((v127 - v128) >> 3) - 1;
      if (v127 == v128)
      {
        v129 = 0;
      }

      if (v129 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v128 = *(a1 + 560);
        v127 = *(a1 + 568);
      }

      if (v127 == v128)
      {
        v131 = 0;
      }

      else
      {
        v130 = *(a1 + 592) + *(a1 + 584);
        v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
      }

      sub_C398C(v131, v143);
      ++*(a1 + 592);
      if (v151 < 0)
      {
        operator delete(__p);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_249:
          if ((v147 & 0x80000000) == 0)
          {
            goto LABEL_250;
          }

          goto LABEL_258;
        }
      }

      else if ((v149 & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      operator delete(v148);
      if ((v147 & 0x80000000) == 0)
      {
LABEL_250:
        if ((v145 & 0x80000000) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_259;
      }

LABEL_258:
      operator delete(v146);
      if ((v145 & 0x80000000) == 0)
      {
LABEL_251:
        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_260;
      }

LABEL_259:
      operator delete(v144);
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_252:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

        goto LABEL_261;
      }

LABEL_260:
      operator delete(v141.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_253:
        if ((v142[55] & 0x80000000) == 0)
        {
          goto LABEL_254;
        }

        goto LABEL_262;
      }

LABEL_261:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v142[55] & 0x80000000) == 0)
      {
LABEL_254:
        if ((v142[23] & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_263;
      }

LABEL_262:
      operator delete(*&v142[32]);
      if ((v142[23] & 0x80000000) == 0)
      {
        goto LABEL_201;
      }

LABEL_263:
      operator delete(*v142);
      v106 = 0;
      if (v152 == 1)
      {
        goto LABEL_202;
      }

      return v106;
    }

    if (v49 != 44)
    {
      break;
    }

    v50 = *(a1 + 24);
    if (*(a1 + 8) == v50)
    {
      *v13 = *v44;
      v51 = (a1 + 48);
      v50 = a1 + 40;
      v52 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *(a1 + 24) = v50 + 40;
      v51 = (v50 + 8);
      *(a1 + 104) = *v50;
      if (v13 == v50)
      {
        goto LABEL_72;
      }

      v52 = *(v50 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_81:
        if ((v52 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v51, *(v50 + 16));
        }

        else
        {
          v53 = *v51;
          *(a1 + 128) = *(v51 + 2);
          *(a1 + 112) = v53;
        }

        goto LABEL_72;
      }
    }

    if ((v52 & 0x80u) == 0)
    {
      v46 = v51;
    }

    else
    {
      v46 = *v51;
    }

    if ((v52 & 0x80u) == 0)
    {
      v47 = v52;
    }

    else
    {
      v47 = *(v50 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_72:
    *(a1 + 136) = *(v50 + 32);
    ++v43;
  }

  if (*(a3 + 23) >= 0)
  {
    v85 = *(a3 + 23);
  }

  else
  {
    v85 = a3[1];
  }

  if (v85 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v85 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v142, "ERR020 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v87 = a3;
  }

  else
  {
    v87 = *a3;
  }

  memmove(&v142[52], v87, v85);
  v142[v85 + 52] = 0;
  v88 = std::string::append(v142, "'", 1uLL);
  v89 = *&v88->__r_.__value_.__l.__data_;
  *&v142[48] = *(&v88->__r_.__value_.__l + 2);
  *&v142[32] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = 21190;
  memset(&v140, 0, sizeof(v140));
  do
  {
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      v94 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v140.__r_.__value_.__l.__size_ == v94)
      {
        if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_144:
        operator new();
      }

      v91 = v140.__r_.__value_.__l.__size_;
      v92 = v140.__r_.__value_.__r.__words[0];
      ++v140.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_144;
      }

      v91 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
      v92 = &v140;
    }

    v93 = v92 + v91;
    *v93 = (v90 % 0xA) | 0x30;
    v93[1] = 0;
    v26 = v90 > 9;
    v90 /= 0xAu;
  }

  while (v26);
  v95 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
  v96 = &v140;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v95 = v140.__r_.__value_.__l.__size_;
    v96 = v140.__r_.__value_.__r.__words[0];
  }

  if (v95)
  {
    v97 = (v96 + v95 - 1);
    if (v97 > v96)
    {
      v98 = &v96->__r_.__value_.__s.__data_[1];
      do
      {
        v99 = *(v98 - 1);
        *(v98 - 1) = v97->__r_.__value_.__s.__data_[0];
        v97->__r_.__value_.__s.__data_[0] = v99;
        v97 = (v97 - 1);
        v33 = v98++ >= v97;
      }

      while (!v33);
    }
  }

  v100 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v135, &v142[32], &v141.__r_.__value_.__l.__data_, v143);
  v102 = *(a1 + 568);
  v103 = *(a1 + 560);
  v104 = 30 * ((v102 - v103) >> 3) - 1;
  if (v102 == v103)
  {
    v104 = 0;
  }

  if (v104 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v103 = *(a1 + 560);
    v102 = *(a1 + 568);
  }

  if (v102 == v103)
  {
    v40 = 0;
  }

  else
  {
    v105 = *(a1 + 592) + *(a1 + 584);
    v40 = *(v103 + 8 * (v105 / 0x1E)) + 136 * (v105 % 0x1E);
  }

LABEL_184:
  sub_C398C(v40, v143);
  ++*(a1 + 592);
  if (v151 < 0)
  {
    operator delete(__p);
    if (v149 < 0)
    {
      goto LABEL_194;
    }

LABEL_186:
    if ((v147 & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_195:
    operator delete(v146);
    if (v145 < 0)
    {
      goto LABEL_196;
    }

LABEL_188:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_197:
    operator delete(v141.__r_.__value_.__l.__data_);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_198;
    }

LABEL_190:
    if ((v142[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

LABEL_199:
    operator delete(*&v142[32]);
    if ((v142[23] & 0x80000000) != 0)
    {
LABEL_200:
      operator delete(*v142);
    }
  }

  else
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_186;
    }

LABEL_194:
    operator delete(v148);
    if (v147 < 0)
    {
      goto LABEL_195;
    }

LABEL_187:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_196:
    operator delete(v144);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_197;
    }

LABEL_189:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

LABEL_198:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v142[55] & 0x80000000) != 0)
    {
      goto LABEL_199;
    }

LABEL_191:
    if ((v142[23] & 0x80000000) != 0)
    {
      goto LABEL_200;
    }
  }

LABEL_201:
  v106 = 0;
  if (v152 == 1)
  {
LABEL_202:
    v107 = 0;
    v108 = v154;
    do
    {
      v109 = v108->i64[v107];
      if (!v109 || (*(*v109 + 32))(v109) == 17)
      {
        goto LABEL_204;
      }

      v110 = v108->i64[v107];
      if (v110)
      {
        if ((*(*v110 + 32))(v110) == 18)
        {
          goto LABEL_204;
        }

        v111 = v108->i64[v107];
        if (v111)
        {
          (*(*v111 + 8))(v111);
        }
      }

      v108->i64[v107] = 0;
LABEL_204:
      ++v107;
    }

    while (v107 != 15);
  }

  return v106;
}