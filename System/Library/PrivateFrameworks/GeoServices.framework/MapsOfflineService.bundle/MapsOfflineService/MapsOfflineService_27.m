void sub_221D04(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x221CFCLL);
}

uint64_t sub_221D14(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 128);
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
    if (v43 == 15)
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
            v106 = sub_239150(a1 + 344, a2, &v155);
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

    while (v107 != 16);
  }

  return v106;
}

void sub_22351C(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x223514);
}

uint64_t sub_22352C(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  memset(&v155, 0, 128);
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
    if (v43 == 16)
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
            v106 = sub_23A604(a1 + 344, a2, &v155);
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

    while (v107 != 17);
  }

  return v106;
}

void sub_224D38(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x224D30);
}

uint64_t sub_224D48(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 144);
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
    if (v43 == 17)
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
            v106 = sub_23BB84(a1 + 344, a2, &v155);
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

    while (v107 != 18);
  }

  return v106;
}

void sub_226554(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x22654CLL);
}

uint64_t sub_226564(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  memset(&v155, 0, 144);
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
    if (v43 == 18)
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
            v106 = sub_23D1C0(a1 + 344, a2, &v155);
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

    while (v107 != 19);
  }

  return v106;
}

void sub_227D74(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x227D6CLL);
}

uint64_t sub_227D84(uint64_t a1, uint64_t a2, const void **a3)
{
  memset(&v155, 0, 160);
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
    if (v43 == 19)
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
            v106 = sub_23E8B4(a1 + 344, a2, &v155);
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

    while (v107 != 20);
  }

  return v106;
}

void sub_229590(void *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  JUMPOUT(0x229588);
}

double sub_2295B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return NAN;
  }

  (*(*v1 + 16))();
  return result;
}

uint64_t sub_2295F8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_229950(uint64_t result)
{
  *result = off_265B8D8;
  v1 = *(result + 24);
  if (v1)
  {
    if (*(result + 32) == 1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
      *(v2 + 24) = 0;
    }
  }

  return result;
}

void sub_2299D4(uint64_t a1)
{
  *a1 = off_265B8D8;
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 32) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 24) = 0;
  }

  operator delete();
}

double sub_229A74(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  (*(**(a1 + 8) + 24))(*(a1 + 8), &v3);
  return result;
}

uint64_t sub_229B54(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 16);
    if (*v1)
    {
      v2 = result;
      v3 = (*(**v1 + 32))(*v1) == 17;
      result = v2;
      if (!v3)
      {
        if (*v1)
        {
          v3 = (*(**v1 + 32))(*v1) == 18;
          result = v2;
          if (v3)
          {
            return result;
          }

          if (*v1)
          {
            (*(**v1 + 8))(*v1);
            result = v2;
          }
        }

        *v1 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_229C38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_229F7C(a1, a2, a3);
  if (result)
  {
    v7 = result;
    if ((*(*result + 32))(result) == 2)
    {
      return v7;
    }

    result = 0;
    v8 = *a3;
    if (*a3)
    {
      if (a3[1])
      {
        if (*(a2 + 32) != 2)
        {
          sub_12A2C0(*(a1 + 8), a3);
          return 0;
        }

        if ((*(*v8 + 32))(*a3) == 17)
        {
          result = *a3;
          *(v7 + 24) = *a3;
          *(v7 + 32) = 0;
          v9 = a3[1];
          if (v9)
          {
LABEL_10:
            v10 = (*(*v9 + 32))(v9) != 17 && (*(*v9 + 32))(v9) != 18;
            *(v7 + 40) = a3[1];
            *(v7 + 48) = v10;
            return v7;
          }
        }

        else
        {
          v11 = (*(*v8 + 32))(v8) != 18;
          result = *a3;
          *(v7 + 24) = *a3;
          *(v7 + 32) = v11;
          v9 = a3[1];
          if (v9)
          {
            goto LABEL_10;
          }
        }

        if (!result)
        {
          return result;
        }

        if ((*(*result + 32))(result) != 17)
        {
          if (*a3)
          {
            if ((*(**a3 + 32))(*a3) == 18)
            {
              goto LABEL_21;
            }

            if (*a3)
            {
              (*(**a3 + 8))(*a3);
            }
          }

          *a3 = 0;
        }

LABEL_21:
        result = a3[1];
        if (!result)
        {
          return result;
        }

        if ((*(*result + 32))(result) == 17)
        {
          return 0;
        }

        v12 = a3[1];
        if (v12)
        {
          if ((*(*v12 + 32))(v12) == 18)
          {
            return 0;
          }

          v13 = a3[1];
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        result = 0;
        a3[1] = 0;
      }
    }
  }

  return result;
}

uint64_t sub_229F7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a3;
  result = a3[1];
  if (*a3)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    operator new();
  }

  if (v5)
  {
    if ((*(*v5 + 32))(*a3) != 17)
    {
      if (!*a3)
      {
LABEL_12:
        *a3 = 0;
        goto LABEL_13;
      }

      if ((*(**a3 + 32))(*a3) != 18)
      {
        if (*a3)
        {
          (*(**a3 + 8))(*a3);
        }

        goto LABEL_12;
      }
    }

LABEL_13:
    result = a3[1];
  }

  if (result)
  {
    if ((*(*result + 32))(result) == 17)
    {
      return 0;
    }

    v8 = a3[1];
    if (v8)
    {
      if ((*(*v8 + 32))(v8) == 18)
      {
        return 0;
      }

      v7 = a3[1];
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    result = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_22A588(uint64_t result)
{
  *result = off_265B928;
  v1 = *(result + 24);
  if (v1 && *(result + 32) == 1)
  {
    v2 = result;
    (*(*v1 + 8))(*(result + 24));
    result = v2;
    *(v2 + 24) = 0;
  }

  v3 = *(result + 40);
  if (v3)
  {
    if (*(result + 48) == 1)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 40));
      result = v4;
      *(v4 + 40) = 0;
    }
  }

  return result;
}

void sub_22A650(uint64_t a1)
{
  *a1 = off_265B928;
  v1 = *(a1 + 24);
  if (v1 && *(a1 + 32) == 1)
  {
    v2 = a1;
    (*(*v1 + 8))(*(a1 + 24));
    a1 = v2;
    *(v2 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    v4 = a1;
    (*(*v3 + 8))(*(a1 + 40));
    *(v4 + 40) = 0;
  }

  operator delete();
}

double sub_22A738(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  (*(**(a1 + 8) + 32))(*(a1 + 8), &v3, &v4);
  return result;
}

uint64_t sub_22A84C(uint64_t a1)
{
  if (*a1 != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (*v2 && (*(**v2 + 32))(*v2) != 17)
  {
    if (!*v2)
    {
LABEL_8:
      *v2 = 0;
      goto LABEL_9;
    }

    if ((*(**v2 + 32))(*v2) != 18)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
LABEL_15:
      *(v3 + 8) = 0;
      return a1;
    }

    if ((*(*v5 + 32))(v5) != 18)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_22A9B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v3 = a3[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && a3[2] != 0)
  {
    operator new();
  }

  sub_1CD05C(*(a1 + 8), a3);
  return 0;
}

uint64_t sub_22AC8C(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v9 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v9;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  v10 = (*(*v7 + 32))(v7) != 17 && (*(*v7 + 32))(v7) != 18;
  *(a1 + 56) = a2[2];
  *(a1 + 64) = v10;
  return 1;
}

uint64_t sub_22AE68(uint64_t a1)
{
  *a1 = off_265B978;
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 32) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 64) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 56) = 0;
  }

  return a1;
}

void sub_22AF5C(uint64_t a1)
{
  *a1 = off_265B978;
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 32) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 64) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 56) = 0;
  }

  operator delete();
}

double sub_22B070(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  (*(**(a1 + 8) + 40))(*(a1 + 8), &v3, &v4, &v5);
  return result;
}

uint64_t sub_22B1B4(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])))) & 1) == 0)
  {
    operator new();
  }

  sub_1CE09C(*(a1 + 8), a3);
  return 0;
}

uint64_t sub_22B4D4(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) != 17)
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (v7)
    {
      goto LABEL_10;
    }

    return 0;
  }

  *(a1 + 40) = a2[1];
  *(a1 + 48) = 0;
  v7 = a2[2];
  if (!v7)
  {
    return 0;
  }

LABEL_10:
  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v11 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v11;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  v12 = (*(*v9 + 32))(v9) != 17 && (*(*v9 + 32))(v9) != 18;
  *(a1 + 72) = a2[3];
  *(a1 + 80) = v12;
  return 1;
}

uint64_t sub_22B740(uint64_t a1)
{
  *a1 = off_265B9C8;
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 32) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 64) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 72);
  if (v5 && *(a1 + 80) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 72) = 0;
  }

  return a1;
}

void sub_22B870(uint64_t a1)
{
  *a1 = off_265B9C8;
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 32) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 64) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 72);
  if (v5 && *(a1 + 80) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 72) = 0;
  }

  operator delete();
}

double sub_22B9C0(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  (*(**(a1 + 8) + 48))(*(a1 + 8), &v3, &v4, &v5, &v6);
  return result;
}

uint64_t sub_22BB34(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])))) & 1) == 0 && a3[2].i64[0])
  {
    operator new();
  }

  sub_22BE90(*(a1 + 8), a3);
  return 0;
}

uint64_t sub_22BE90(uint64_t a1, void *a2)
{
  if (*a2 && (*(**a2 + 32))(*a2) != 17)
  {
    if (!*a2)
    {
LABEL_7:
      *a2 = 0;
      goto LABEL_8;
    }

    if ((*(**a2 + 32))(*a2) != 18)
    {
      if (*a2)
      {
        (*(**a2 + 8))(*a2);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v3 = a2[1];
  if (v3 && (*(*v3 + 32))(v3) != 17)
  {
    v4 = a2[1];
    if (!v4)
    {
LABEL_14:
      a2[1] = 0;
      goto LABEL_15;
    }

    if ((*(*v4 + 32))(v4) != 18)
    {
      v5 = a2[1];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v6 = a2[2];
  if (v6 && (*(*v6 + 32))(v6) != 17)
  {
    v7 = a2[2];
    if (!v7)
    {
LABEL_21:
      a2[2] = 0;
      goto LABEL_22;
    }

    if ((*(*v7 + 32))(v7) != 18)
    {
      v8 = a2[2];
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  v9 = a2[3];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a2[3];
    if (!v10)
    {
LABEL_28:
      a2[3] = 0;
      goto LABEL_29;
    }

    if ((*(*v10 + 32))(v10) != 18)
    {
      v11 = a2[3];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  result = a2[4];
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result != 17)
    {
      result = a2[4];
      if (result)
      {
        result = (*(*result + 32))(result);
        if (result == 18)
        {
          return result;
        }

        result = a2[4];
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      a2[4] = 0;
    }
  }

  return result;
}

uint64_t sub_22C1A8(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) != 17)
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (v9)
    {
      goto LABEL_14;
    }

    return 0;
  }

  *(a1 + 56) = a2[2];
  *(a1 + 64) = 0;
  v9 = a2[3];
  if (!v9)
  {
    return 0;
  }

LABEL_14:
  if ((*(*v9 + 32))(v9) == 17)
  {
    *(a1 + 72) = a2[3];
    *(a1 + 80) = 0;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v13 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v13;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  v14 = (*(*v11 + 32))(v11) != 17 && (*(*v11 + 32))(v11) != 18;
  *(a1 + 88) = a2[4];
  *(a1 + 96) = v14;
  return 1;
}

void sub_22C4A8(uint64_t a1)
{
  sub_22C684(a1);

  operator delete();
}

double sub_22C4E0(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  (*(**(a1 + 8) + 56))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7);
  return result;
}

uint64_t sub_22C684(uint64_t a1)
{
  *a1 = off_265BA18;
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 32) == 1)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3 && *(a1 + 48) == 1)
  {
    (*(*v3 + 8))(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 56);
  if (v4 && *(a1 + 64) == 1)
  {
    (*(*v4 + 8))(v4);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 72);
  if (v5 && *(a1 + 80) == 1)
  {
    (*(*v5 + 8))(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 88);
  if (v6 && *(a1 + 96) == 1)
  {
    (*(*v6 + 8))(v6);
    *(a1 + 88) = 0;
  }

  return a1;
}

uint64_t sub_22C7F0(uint64_t a1)
{
  if (*a1 != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (*v2 && (*(**v2 + 32))(*v2) != 17)
  {
    if (!*v2)
    {
LABEL_8:
      *v2 = 0;
      goto LABEL_9;
    }

    if ((*(**v2 + 32))(*v2) != 18)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
LABEL_15:
      *(v3 + 8) = 0;
      goto LABEL_16;
    }

    if ((*(*v5 + 32))(v5) != 18)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8 && (*(*v8 + 32))(v8) != 17)
  {
    v9 = *(v7 + 16);
    if (!v9)
    {
LABEL_22:
      *(v7 + 16) = 0;
      goto LABEL_23;
    }

    if ((*(*v9 + 32))(v9) != 18)
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  v11 = *(a1 + 16);
  v12 = *(v11 + 24);
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = *(v11 + 24);
    if (!v13)
    {
LABEL_29:
      *(v11 + 24) = 0;
      goto LABEL_30;
    }

    if ((*(*v13 + 32))(v13) != 18)
    {
      v14 = *(v11 + 24);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  v15 = *(a1 + 16);
  v16 = *(v15 + 32);
  if (v16 && (*(*v16 + 32))(v16) != 17)
  {
    v17 = *(v15 + 32);
    if (!v17)
    {
LABEL_36:
      *(v15 + 32) = 0;
      return a1;
    }

    if ((*(*v17 + 32))(v17) != 18)
    {
      v18 = *(v15 + 32);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      goto LABEL_36;
    }
  }

  return a1;
}

uint64_t sub_22CB30(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])))) & 1) == 0)
  {
    if (a3[2].i64[0])
    {
      v3 = a3[2].i64[1] == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      operator new();
    }
  }

  sub_22CED0(*(a1 + 8), a3);
  return 0;
}

uint64_t sub_22CED0(uint64_t a1, void *a2)
{
  if (*a2 && (*(**a2 + 32))(*a2) != 17)
  {
    if (!*a2)
    {
LABEL_7:
      *a2 = 0;
      goto LABEL_8;
    }

    if ((*(**a2 + 32))(*a2) != 18)
    {
      if (*a2)
      {
        (*(**a2 + 8))(*a2);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v3 = a2[1];
  if (v3 && (*(*v3 + 32))(v3) != 17)
  {
    v4 = a2[1];
    if (!v4)
    {
LABEL_14:
      a2[1] = 0;
      goto LABEL_15;
    }

    if ((*(*v4 + 32))(v4) != 18)
    {
      v5 = a2[1];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v6 = a2[2];
  if (v6 && (*(*v6 + 32))(v6) != 17)
  {
    v7 = a2[2];
    if (!v7)
    {
LABEL_21:
      a2[2] = 0;
      goto LABEL_22;
    }

    if ((*(*v7 + 32))(v7) != 18)
    {
      v8 = a2[2];
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  v9 = a2[3];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a2[3];
    if (!v10)
    {
LABEL_28:
      a2[3] = 0;
      goto LABEL_29;
    }

    if ((*(*v10 + 32))(v10) != 18)
    {
      v11 = a2[3];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  v12 = a2[4];
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = a2[4];
    if (!v13)
    {
LABEL_35:
      a2[4] = 0;
      goto LABEL_36;
    }

    if ((*(*v13 + 32))(v13) != 18)
    {
      v14 = a2[4];
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_35;
    }
  }

LABEL_36:
  result = a2[5];
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result != 17)
    {
      result = a2[5];
      if (result)
      {
        result = (*(*result + 32))(result);
        if (result == 18)
        {
          return result;
        }

        result = a2[5];
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      a2[5] = 0;
    }
  }

  return result;
}

uint64_t sub_22D280(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  if ((*(*v9 + 32))(v9) != 17)
  {
    v12 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v12;
    v11 = a2[4];
    if (v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  *(a1 + 72) = a2[3];
  *(a1 + 80) = 0;
  v11 = a2[4];
  if (!v11)
  {
    return 0;
  }

LABEL_18:
  if ((*(*v11 + 32))(v11) == 17)
  {
    *(a1 + 88) = a2[4];
    *(a1 + 96) = 0;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v15 = (*(*v11 + 32))(v11) != 18;
    *(a1 + 88) = a2[4];
    *(a1 + 96) = v15;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  v16 = (*(*v13 + 32))(v13) != 17 && (*(*v13 + 32))(v13) != 18;
  *(a1 + 104) = a2[5];
  *(a1 + 112) = v16;
  return 1;
}

void *sub_22D60C(void *a1)
{
  *a1 = off_265BA68;
  sub_22D888(a1 + 3);
  return a1;
}

void sub_22D650(void *a1)
{
  *a1 = off_265BA68;
  sub_22D888(a1 + 3);

  operator delete();
}

double sub_22D6B4(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  (*(**(a1 + 8) + 64))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8);
  return result;
}

uint64_t sub_22D888(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  result = a1[10];
  if (result)
  {
    if (*(a1 + 88) == 1)
    {
      result = (*(*result + 8))(result);
      a1[10] = 0;
    }
  }

  return result;
}

uint64_t sub_22DA10(uint64_t a1)
{
  if (*a1 != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (*v2 && (*(**v2 + 32))(*v2) != 17)
  {
    if (!*v2)
    {
LABEL_8:
      *v2 = 0;
      goto LABEL_9;
    }

    if ((*(**v2 + 32))(*v2) != 18)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
LABEL_15:
      *(v3 + 8) = 0;
      goto LABEL_16;
    }

    if ((*(*v5 + 32))(v5) != 18)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8 && (*(*v8 + 32))(v8) != 17)
  {
    v9 = *(v7 + 16);
    if (!v9)
    {
LABEL_22:
      *(v7 + 16) = 0;
      goto LABEL_23;
    }

    if ((*(*v9 + 32))(v9) != 18)
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  v11 = *(a1 + 16);
  v12 = *(v11 + 24);
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = *(v11 + 24);
    if (!v13)
    {
LABEL_29:
      *(v11 + 24) = 0;
      goto LABEL_30;
    }

    if ((*(*v13 + 32))(v13) != 18)
    {
      v14 = *(v11 + 24);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  v15 = *(a1 + 16);
  v16 = *(v15 + 32);
  if (v16 && (*(*v16 + 32))(v16) != 17)
  {
    v17 = *(v15 + 32);
    if (!v17)
    {
LABEL_36:
      *(v15 + 32) = 0;
      goto LABEL_37;
    }

    if ((*(*v17 + 32))(v17) != 18)
    {
      v18 = *(v15 + 32);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      goto LABEL_36;
    }
  }

LABEL_37:
  v19 = *(a1 + 16);
  v20 = *(v19 + 40);
  if (v20 && (*(*v20 + 32))(v20) != 17)
  {
    v21 = *(v19 + 40);
    if (!v21)
    {
LABEL_43:
      *(v19 + 40) = 0;
      return a1;
    }

    if ((*(*v21 + 32))(v21) != 18)
    {
      v22 = *(v19 + 40);
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      goto LABEL_43;
    }
  }

  return a1;
}

uint64_t sub_22DDEC(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])))) & 1) == 0)
  {
    if (a3[2].i64[0])
    {
      v3 = a3[2].i64[1] == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3 && a3[3].i64[0] != 0)
    {
      operator new();
    }
  }

  sub_22E074(*(a1 + 8), a3);
  return 0;
}

uint64_t sub_22E074(uint64_t a1, void *a2)
{
  if (*a2 && (*(**a2 + 32))(*a2) != 17)
  {
    if (!*a2)
    {
LABEL_7:
      *a2 = 0;
      goto LABEL_8;
    }

    if ((*(**a2 + 32))(*a2) != 18)
    {
      if (*a2)
      {
        (*(**a2 + 8))(*a2);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v3 = a2[1];
  if (v3 && (*(*v3 + 32))(v3) != 17)
  {
    v4 = a2[1];
    if (!v4)
    {
LABEL_14:
      a2[1] = 0;
      goto LABEL_15;
    }

    if ((*(*v4 + 32))(v4) != 18)
    {
      v5 = a2[1];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v6 = a2[2];
  if (v6 && (*(*v6 + 32))(v6) != 17)
  {
    v7 = a2[2];
    if (!v7)
    {
LABEL_21:
      a2[2] = 0;
      goto LABEL_22;
    }

    if ((*(*v7 + 32))(v7) != 18)
    {
      v8 = a2[2];
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  v9 = a2[3];
  if (v9 && (*(*v9 + 32))(v9) != 17)
  {
    v10 = a2[3];
    if (!v10)
    {
LABEL_28:
      a2[3] = 0;
      goto LABEL_29;
    }

    if ((*(*v10 + 32))(v10) != 18)
    {
      v11 = a2[3];
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  v12 = a2[4];
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = a2[4];
    if (!v13)
    {
LABEL_35:
      a2[4] = 0;
      goto LABEL_36;
    }

    if ((*(*v13 + 32))(v13) != 18)
    {
      v14 = a2[4];
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_35;
    }
  }

LABEL_36:
  v15 = a2[5];
  if (v15 && (*(*v15 + 32))(v15) != 17)
  {
    v16 = a2[5];
    if (!v16)
    {
LABEL_42:
      a2[5] = 0;
      goto LABEL_43;
    }

    if ((*(*v16 + 32))(v16) != 18)
    {
      v17 = a2[5];
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      goto LABEL_42;
    }
  }

LABEL_43:
  result = a2[6];
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result != 17)
    {
      result = a2[6];
      if (result)
      {
        result = (*(*result + 32))(result);
        if (result == 18)
        {
          return result;
        }

        result = a2[6];
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      a2[6] = 0;
    }
  }

  return result;
}

uint64_t sub_22E4BC(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  if ((*(*v9 + 32))(v9) == 17)
  {
    *(a1 + 72) = a2[3];
    *(a1 + 80) = 0;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v12 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v12;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  if ((*(*v11 + 32))(v11) != 17)
  {
    v14 = (*(*v11 + 32))(v11) != 18;
    *(a1 + 88) = a2[4];
    *(a1 + 96) = v14;
    v13 = a2[5];
    if (v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  *(a1 + 88) = a2[4];
  *(a1 + 96) = 0;
  v13 = a2[5];
  if (!v13)
  {
    return 0;
  }

LABEL_22:
  if ((*(*v13 + 32))(v13) == 17)
  {
    *(a1 + 104) = a2[5];
    *(a1 + 112) = 0;
    v15 = a2[6];
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    v17 = (*(*v13 + 32))(v13) != 18;
    *(a1 + 104) = a2[5];
    *(a1 + 112) = v17;
    v15 = a2[6];
    if (!v15)
    {
      return 0;
    }
  }

  v18 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
  *(a1 + 120) = a2[6];
  *(a1 + 128) = v18;
  return 1;
}

uint64_t sub_22E8D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[6];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_22EA70(void *a1)
{
  *a1 = off_265BAB8;
  sub_22ED1C(a1 + 3);
  return a1;
}

void sub_22EAB4(void *a1)
{
  *a1 = off_265BAB8;
  sub_22ED1C(a1 + 3);

  operator delete();
}

double sub_22EB18(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  (*(**(a1 + 8) + 72))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9);
  return result;
}

uint64_t sub_22ED1C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  result = a1[12];
  if (result)
  {
    if (*(a1 + 104) == 1)
    {
      result = (*(*result + 8))(result);
      a1[12] = 0;
    }
  }

  return result;
}

uint64_t sub_22EEE0(uint64_t a1)
{
  if (*a1 != 1)
  {
    return a1;
  }

  v2 = *(a1 + 16);
  if (*v2 && (*(**v2 + 32))(*v2) != 17)
  {
    if (!*v2)
    {
LABEL_8:
      *v2 = 0;
      goto LABEL_9;
    }

    if ((*(**v2 + 32))(*v2) != 18)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  if (v4 && (*(*v4 + 32))(v4) != 17)
  {
    v5 = *(v3 + 8);
    if (!v5)
    {
LABEL_15:
      *(v3 + 8) = 0;
      goto LABEL_16;
    }

    if ((*(*v5 + 32))(v5) != 18)
    {
      v6 = *(v3 + 8);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8 && (*(*v8 + 32))(v8) != 17)
  {
    v9 = *(v7 + 16);
    if (!v9)
    {
LABEL_22:
      *(v7 + 16) = 0;
      goto LABEL_23;
    }

    if ((*(*v9 + 32))(v9) != 18)
    {
      v10 = *(v7 + 16);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  v11 = *(a1 + 16);
  v12 = *(v11 + 24);
  if (v12 && (*(*v12 + 32))(v12) != 17)
  {
    v13 = *(v11 + 24);
    if (!v13)
    {
LABEL_29:
      *(v11 + 24) = 0;
      goto LABEL_30;
    }

    if ((*(*v13 + 32))(v13) != 18)
    {
      v14 = *(v11 + 24);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      goto LABEL_29;
    }
  }

LABEL_30:
  v15 = *(a1 + 16);
  v16 = *(v15 + 32);
  if (v16 && (*(*v16 + 32))(v16) != 17)
  {
    v17 = *(v15 + 32);
    if (!v17)
    {
LABEL_36:
      *(v15 + 32) = 0;
      goto LABEL_37;
    }

    if ((*(*v17 + 32))(v17) != 18)
    {
      v18 = *(v15 + 32);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      goto LABEL_36;
    }
  }

LABEL_37:
  v19 = *(a1 + 16);
  v20 = *(v19 + 40);
  if (v20 && (*(*v20 + 32))(v20) != 17)
  {
    v21 = *(v19 + 40);
    if (!v21)
    {
LABEL_43:
      *(v19 + 40) = 0;
      goto LABEL_44;
    }

    if ((*(*v21 + 32))(v21) != 18)
    {
      v22 = *(v19 + 40);
      if (v22)
      {
        (*(*v22 + 8))(v22);
      }

      goto LABEL_43;
    }
  }

LABEL_44:
  v23 = *(a1 + 16);
  v24 = *(v23 + 48);
  if (v24 && (*(*v24 + 32))(v24) != 17)
  {
    v25 = *(v23 + 48);
    if (!v25)
    {
LABEL_50:
      *(v23 + 48) = 0;
      return a1;
    }

    if ((*(*v25 + 32))(v25) != 18)
    {
      v26 = *(v23 + 48);
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      goto LABEL_50;
    }
  }

  return a1;
}

uint64_t sub_22F358(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_22F590(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))() == 2)
  {
    return v6;
  }

  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))))
  {
    return 0;
  }

  if (*(a2 + 32) != 8)
  {
    v12 = 0;
    while (1)
    {
      v13 = a3->i64[v12];
      if (!v13 || (*(*v13 + 32))(v13) == 17)
      {
        goto LABEL_20;
      }

      v14 = a3->i64[v12];
      if (v14)
      {
        if ((*(*v14 + 32))(v14) == 18)
        {
          goto LABEL_20;
        }

        v15 = a3->i64[v12];
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      a3->i64[v12] = 0;
LABEL_20:
      if (++v12 == 8)
      {
        return 0;
      }
    }
  }

  v7 = sub_22F970(v6, a3);
  result = v6;
  if ((v7 & 1) == 0)
  {
    for (i = 0; i != 8; ++i)
    {
      v9 = a3->i64[i];
      if (!v9 || (*(*v9 + 32))(v9) == 17)
      {
        goto LABEL_11;
      }

      v10 = a3->i64[i];
      if (v10)
      {
        if ((*(*v10 + 32))(v10) == 18)
        {
          goto LABEL_11;
        }

        v11 = a3->i64[i];
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      a3->i64[i] = 0;
LABEL_11:
      result = 0;
    }
  }

  return result;
}

uint64_t sub_22F590(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0)
  {
    operator new();
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_3;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_3:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_22F970(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  if ((*(*v9 + 32))(v9) == 17)
  {
    *(a1 + 72) = a2[3];
    *(a1 + 80) = 0;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v12 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v12;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  if ((*(*v11 + 32))(v11) == 17)
  {
    *(a1 + 88) = a2[4];
    *(a1 + 96) = 0;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v14 = (*(*v11 + 32))(v11) != 18;
    *(a1 + 88) = a2[4];
    *(a1 + 96) = v14;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  if ((*(*v13 + 32))(v13) != 17)
  {
    v16 = (*(*v13 + 32))(v13) != 18;
    *(a1 + 104) = a2[5];
    *(a1 + 112) = v16;
    v15 = a2[6];
    if (v15)
    {
      goto LABEL_26;
    }

    return 0;
  }

  *(a1 + 104) = a2[5];
  *(a1 + 112) = 0;
  v15 = a2[6];
  if (!v15)
  {
    return 0;
  }

LABEL_26:
  v17 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
  *(a1 + 120) = a2[6];
  *(a1 + 128) = v17;
  v18 = a2[7];
  if (!v18)
  {
    return 0;
  }

  v19 = (*(*v18 + 32))(a2[7]) != 17 && (*(*v18 + 32))(v18) != 18;
  *(a1 + 136) = a2[7];
  *(a1 + 144) = v19;
  return 1;
}

uint64_t sub_22FE0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[7];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_22FFD8(void *a1)
{
  *a1 = off_265BB08;
  sub_2302B8(a1 + 3);
  return a1;
}

void sub_23001C(void *a1)
{
  *a1 = off_265BB08;
  sub_2302B8(a1 + 3);

  operator delete();
}

double sub_230080(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  v10 = (*(**(a1 + 136) + 16))(*(a1 + 136));
  (*(**(a1 + 8) + 80))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10);
  return result;
}

uint64_t sub_2302B8(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  result = a1[14];
  if (result)
  {
    if (*(a1 + 120) == 1)
    {
      result = (*(*result + 8))(result);
      a1[14] = 0;
    }
  }

  return result;
}

uint64_t sub_2304B8(uint64_t a1)
{
  if (*a1 == 1)
  {
    for (i = 0; i != 64; i += 8)
    {
      v3 = *(a1 + 16);
      v4 = *(v3 + i);
      if (!v4 || (*(*v4 + 32))(v4) == 17)
      {
        continue;
      }

      v5 = *(v3 + i);
      if (v5)
      {
        if ((*(*v5 + 32))(v5) == 18)
        {
          continue;
        }

        v6 = *(v3 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      *(v3 + i) = 0;
    }
  }

  return a1;
}

uint64_t sub_2305A8(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = sub_2307E8(a1, a2, a3);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((*(*result + 32))(result) == 2)
  {
    return v6;
  }

  result = 0;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) != 0 || !a3[4].i64[0])
  {
    return result;
  }

  if (*(a2 + 32) != 9)
  {
    v12 = 0;
    while (1)
    {
      v13 = a3->i64[v12];
      if (!v13 || (*(*v13 + 32))(v13) == 17)
      {
        goto LABEL_20;
      }

      v14 = a3->i64[v12];
      if (v14)
      {
        if ((*(*v14 + 32))(v14) == 18)
        {
          goto LABEL_20;
        }

        v15 = a3->i64[v12];
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }
      }

      a3->i64[v12] = 0;
LABEL_20:
      if (++v12 == 9)
      {
        return 0;
      }
    }
  }

  v7 = sub_230BD8(v6, a3);
  result = v6;
  if ((v7 & 1) == 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = a3->i64[v8];
      if (!v9 || (*(*v9 + 32))(v9) == 17)
      {
        goto LABEL_11;
      }

      v10 = a3->i64[v8];
      if (v10)
      {
        if ((*(*v10 + 32))(v10) == 18)
        {
          goto LABEL_11;
        }

        v11 = a3->i64[v8];
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      a3->i64[v8] = 0;
LABEL_11:
      if (++v8 == 9)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2307E8(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqzq_s64(*a3), vceqzq_s64(a3[1])), vuzp1q_s32(vceqzq_s64(a3[2]), vceqzq_s64(a3[3]))))) & 1) == 0 && a3[4].i64[0])
  {
    operator new();
  }

  for (i = 0; i != 9; ++i)
  {
    v5 = a3->i64[i];
    if (v5 && (*(*v5 + 32))(v5) != 17)
    {
      v6 = a3->i64[i];
      if (!v6)
      {
        goto LABEL_5;
      }

      if ((*(*v6 + 32))(v6) != 18)
      {
        v7 = a3->i64[i];
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

LABEL_5:
        a3->i64[i] = 0;
        continue;
      }
    }
  }

  return 0;
}

uint64_t sub_230BD8(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if ((*(*v2 + 32))(*a2) == 17)
  {
    *(a1 + 24) = *a2;
    *(a1 + 32) = 0;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = (*(*v2 + 32))(v2) != 18;
    *(a1 + 24) = *a2;
    *(a1 + 32) = v6;
    v5 = a2[1];
    if (!v5)
    {
      return 0;
    }
  }

  if ((*(*v5 + 32))(v5) == 17)
  {
    *(a1 + 40) = a2[1];
    *(a1 + 48) = 0;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v8 = (*(*v5 + 32))(v5) != 18;
    *(a1 + 40) = a2[1];
    *(a1 + 48) = v8;
    v7 = a2[2];
    if (!v7)
    {
      return 0;
    }
  }

  if ((*(*v7 + 32))(v7) == 17)
  {
    *(a1 + 56) = a2[2];
    *(a1 + 64) = 0;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v10 = (*(*v7 + 32))(v7) != 18;
    *(a1 + 56) = a2[2];
    *(a1 + 64) = v10;
    v9 = a2[3];
    if (!v9)
    {
      return 0;
    }
  }

  if ((*(*v9 + 32))(v9) == 17)
  {
    *(a1 + 72) = a2[3];
    *(a1 + 80) = 0;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    v12 = (*(*v9 + 32))(v9) != 18;
    *(a1 + 72) = a2[3];
    *(a1 + 80) = v12;
    v11 = a2[4];
    if (!v11)
    {
      return 0;
    }
  }

  if ((*(*v11 + 32))(v11) == 17)
  {
    *(a1 + 88) = a2[4];
    *(a1 + 96) = 0;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    v14 = (*(*v11 + 32))(v11) != 18;
    *(a1 + 88) = a2[4];
    *(a1 + 96) = v14;
    v13 = a2[5];
    if (!v13)
    {
      return 0;
    }
  }

  if ((*(*v13 + 32))(v13) != 17)
  {
    v16 = (*(*v13 + 32))(v13) != 18;
    *(a1 + 104) = a2[5];
    *(a1 + 112) = v16;
    v15 = a2[6];
    if (v15)
    {
      goto LABEL_26;
    }

    return 0;
  }

  *(a1 + 104) = a2[5];
  *(a1 + 112) = 0;
  v15 = a2[6];
  if (!v15)
  {
    return 0;
  }

LABEL_26:
  v17 = (*(*v15 + 32))(v15) != 17 && (*(*v15 + 32))(v15) != 18;
  *(a1 + 120) = a2[6];
  *(a1 + 128) = v17;
  v18 = a2[7];
  if (!v18)
  {
    return 0;
  }

  v19 = (*(*v18 + 32))(a2[7]) != 17 && (*(*v18 + 32))(v18) != 18;
  *(a1 + 136) = a2[7];
  *(a1 + 144) = v19;
  v20 = a2[8];
  if (!v20)
  {
    return 0;
  }

  v21 = (*(*v20 + 32))(a2[8]) != 17 && (*(*v20 + 32))(v20) != 18;
  *(a1 + 152) = a2[8];
  *(a1 + 160) = v21;
  return 1;
}

uint64_t sub_2310F0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[1];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[2];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[3];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[4];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[5];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[6];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) != 2)
    {
      return 0;
    }

    result = a2[7];
    if (!result)
    {
      return result;
    }

    if ((*(*result + 32))(result) == 2)
    {
      result = a2[8];
      if (result)
      {
        return (*(*result + 32))(result) == 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2312F0(void *a1)
{
  *a1 = off_265BB58;
  sub_231608(a1 + 3);
  return a1;
}

void sub_231334(void *a1)
{
  *a1 = off_265BB58;
  sub_231608(a1 + 3);

  operator delete();
}

double sub_231398(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return NAN;
  }

  v3 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v4 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  v5 = (*(**(a1 + 56) + 16))(*(a1 + 56));
  v6 = (*(**(a1 + 72) + 16))(*(a1 + 72));
  v7 = (*(**(a1 + 88) + 16))(*(a1 + 88));
  v8 = (*(**(a1 + 104) + 16))(*(a1 + 104));
  v9 = (*(**(a1 + 120) + 16))(*(a1 + 120));
  v10 = (*(**(a1 + 136) + 16))(*(a1 + 136));
  v11 = (*(**(a1 + 152) + 16))(*(a1 + 152));
  (*(**(a1 + 8) + 88))(*(a1 + 8), &v3, &v4, &v5, &v6, &v7, &v8, &v9, &v10, &v11);
  return result;
}

uint64_t sub_231608(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 8) == 1)
  {
    (*(*v2 + 8))(v2);
    *a1 = 0;
  }

  v3 = a1[2];
  if (v3 && *(a1 + 24) == 1)
  {
    (*(*v3 + 8))(v3);
    a1[2] = 0;
  }

  v4 = a1[4];
  if (v4 && *(a1 + 40) == 1)
  {
    (*(*v4 + 8))(v4);
    a1[4] = 0;
  }

  v5 = a1[6];
  if (v5 && *(a1 + 56) == 1)
  {
    (*(*v5 + 8))(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6 && *(a1 + 72) == 1)
  {
    (*(*v6 + 8))(v6);
    a1[8] = 0;
  }

  v7 = a1[10];
  if (v7 && *(a1 + 88) == 1)
  {
    (*(*v7 + 8))(v7);
    a1[10] = 0;
  }

  v8 = a1[12];
  if (v8 && *(a1 + 104) == 1)
  {
    (*(*v8 + 8))(v8);
    a1[12] = 0;
  }

  v9 = a1[14];
  if (v9 && *(a1 + 120) == 1)
  {
    (*(*v9 + 8))(v9);
    a1[14] = 0;
  }

  result = a1[16];
  if (result)
  {
    if (*(a1 + 136) == 1)
    {
      result = (*(*result + 8))(result);
      a1[16] = 0;
    }
  }

  return result;
}