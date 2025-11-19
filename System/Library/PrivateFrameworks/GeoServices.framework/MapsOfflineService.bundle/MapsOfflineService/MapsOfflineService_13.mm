void *sub_C09BC(uint64_t a1)
{
  if (*(a1 + 189) != 1 || (*(a1 + 1128) = 0, v2 = *(a1 + 1080), *(a1 + 1088) == v2))
  {
LABEL_6:
    if (*(a1 + 185) != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + 8 * v3);
      (*(*v4 + 8))(v4);
      (*(*v4 + 24))(v4, a1);
      if (((*(*v4 + 16))(v4) & 1) == 0)
      {
        break;
      }

      ++v3;
      v2 = *(a1 + 1080);
      if (v3 >= (*(a1 + 1088) - v2) >> 3)
      {
        goto LABEL_6;
      }
    }

    *(a1 + 1128) = *(*(a1 + 1080) + 8 * v3);
    if (*(a1 + 185) != 1)
    {
      goto LABEL_13;
    }
  }

  *(a1 + 1120) = 0;
  v5 = *(a1 + 1056);
  if (*(a1 + 1064) != v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v5 + 8 * v6);
      (*(*v7 + 8))(v7);
      (*(*v7 + 24))(v7, a1);
      if (((*(*v7 + 16))(v7) & 1) == 0)
      {
        break;
      }

      ++v6;
      v5 = *(a1 + 1056);
      if (v6 >= (*(a1 + 1064) - v5) >> 3)
      {
        goto LABEL_13;
      }
    }

    *(a1 + 1120) = *(*(a1 + 1056) + 8 * v6);
    if (*(a1 + 184) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  if (*(a1 + 184) != 1)
  {
    goto LABEL_20;
  }

LABEL_14:
  *(a1 + 1112) = 0;
  v8 = *(a1 + 1032);
  if (*(a1 + 1040) != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(v8 + 8 * v9);
      (*(*v10 + 8))(v10);
      (*(*v10 + 24))(v10, a1);
      if (((*(*v10 + 16))(v10) & 1) == 0)
      {
        break;
      }

      ++v9;
      v8 = *(a1 + 1032);
      if (v9 >= (*(a1 + 1040) - v8) >> 3)
      {
        goto LABEL_20;
      }
    }

    *(a1 + 1112) = *(*(a1 + 1032) + 8 * v9);
    if (*(a1 + 186))
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (*(a1 + 186))
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((*(a1 + 187) & 1) == 0 && *(a1 + 188) != 1)
  {
    return (&dword_0 + 1);
  }

LABEL_25:
  *(a1 + 1104) = 0;
  v11 = *(a1 + 1008);
  if (*(a1 + 1016) == v11)
  {
    return (&dword_0 + 1);
  }

  v12 = 0;
  while (1)
  {
    v13 = *(v11 + 8 * v12);
    (*(*v13 + 8))(v13);
    (*(*v13 + 24))(v13, a1);
    if (!(*(*v13 + 16))(v13))
    {
      break;
    }

    ++v12;
    v11 = *(a1 + 1008);
    if (v12 >= (*(a1 + 1016) - v11) >> 3)
    {
      return (&dword_0 + 1);
    }
  }

  v15 = *(*(a1 + 1008) + 8 * v12);
  *(a1 + 1104) = v15;
  if (!v15)
  {
    return 0;
  }

  if (v16)
  {
    v17 = *(v16 + 18);
    v141 = v17;
    if (v16[103] < 0)
    {
      v50 = v16;
      sub_325C(&v142, *(v16 + 10), *(v16 + 11));
      v16 = v50;
      v51 = *(v50 + 18);
      v52 = v50[103];
      v18 = *(v50 + 13);
      v144 = v18;
      *&v149[32] = v51;
      if (v52 < 0)
      {
        sub_325C(&v149[40], *(v50 + 10), *(v50 + 11));
        v18 = *(v50 + 13);
        goto LABEL_104;
      }
    }

    else
    {
      v142 = *(v16 + 5);
      v18 = *(v16 + 13);
      v143 = *(v16 + 12);
      v144 = v18;
      *&v149[32] = v17;
    }

    *&v149[40] = *(v16 + 5);
    v150 = *(v16 + 12);
LABEL_104:
    v151 = v18;
    v53 = std::string::insert(&v149[40], 0, "ERR004 - Mismatched brackets: '", 0x1FuLL);
    v54 = *&v53->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    v55 = std::string::append(&__p, "'", 1uLL);
    v56 = *&v55->__r_.__value_.__l.__data_;
    v153[0].__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&v153[0].__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    v57 = 20313;
    memset(&v148, 0, sizeof(v148));
    do
    {
      if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
      {
        v61 = (v148.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v148.__r_.__value_.__l.__size_ == v61)
        {
          if ((v148.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_113:
          operator new();
        }

        size = v148.__r_.__value_.__l.__size_;
        v59 = v148.__r_.__value_.__r.__words[0];
        ++v148.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v148.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_113;
        }

        size = HIBYTE(v148.__r_.__value_.__r.__words[2]);
        *(&v148.__r_.__value_.__s + 23) = (*(&v148.__r_.__value_.__s + 23) + 1) & 0x7F;
        v59 = &v148;
      }

      v60 = v59 + size;
      *v60 = (v57 % 0xA) | 0x30;
      v60[1] = 0;
      v35 = v57 > 9;
      v57 /= 0xAu;
    }

    while (v35);
    v62 = HIBYTE(v148.__r_.__value_.__r.__words[2]);
    v63 = &v148;
    if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v62 = v148.__r_.__value_.__l.__size_;
      v63 = v148.__r_.__value_.__r.__words[0];
    }

    if (v62)
    {
      v64 = (v63 + v62 - 1);
      if (v64 > v63)
      {
        v65 = &v63->__r_.__value_.__s.__data_[1];
        do
        {
          v66 = *(v65 - 1);
          *(v65 - 1) = v64->__r_.__value_.__s.__data_[0];
          v64->__r_.__value_.__s.__data_[0] = v66;
          v64 = (v64 - 1);
          v42 = v65++ >= v64;
        }

        while (!v42);
      }
    }

    v67 = std::string::insert(&v148, 0, "exprtk.hpp:", 0xBuLL);
    v68 = *&v67->__r_.__value_.__l.__data_;
    *&v149[16] = *(&v67->__r_.__value_.__l + 2);
    *v149 = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(2, &v141, &v153[0].__r_.__value_.__l.__data_, v149, &v153[1]);
    v69 = *(a1 + 568);
    v70 = *(a1 + 560);
    v71 = 30 * ((v69 - v70) >> 3) - 1;
    if (v69 == v70)
    {
      v71 = 0;
    }

    if (v71 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v70 = *(a1 + 560);
      v69 = *(a1 + 568);
    }

    if (v69 == v70)
    {
      v73 = 0;
    }

    else
    {
      v72 = *(a1 + 592) + *(a1 + 584);
      v73 = *(v70 + 8 * (v72 / 0x1E)) + 136 * (v72 % 0x1E);
    }

    sub_C398C(v73, &v153[1]);
    ++*(a1 + 592);
    if (v160 < 0)
    {
      operator delete(v159);
      if ((v158 & 0x80000000) == 0)
      {
LABEL_131:
        if ((v156 & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

        goto LABEL_142;
      }
    }

    else if ((v158 & 0x80000000) == 0)
    {
      goto LABEL_131;
    }

    operator delete(v157);
    if ((v156 & 0x80000000) == 0)
    {
LABEL_132:
      if ((v154 & 0x80000000) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_143;
    }

LABEL_142:
    operator delete(v155);
    if ((v154 & 0x80000000) == 0)
    {
LABEL_133:
      if ((v149[23] & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_144;
    }

LABEL_143:
    operator delete(v153[1].__r_.__value_.__l.__size_);
    if ((v149[23] & 0x80000000) == 0)
    {
LABEL_134:
      if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_145;
    }

LABEL_144:
    operator delete(*v149);
    if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_135:
      if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_146;
    }

LABEL_145:
    operator delete(v148.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_136:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_147;
    }

LABEL_146:
    operator delete(v153[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_137:
      if ((SHIBYTE(v150) & 0x80000000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_148;
    }

LABEL_147:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v150) & 0x80000000) == 0)
    {
LABEL_138:
      if ((SHIBYTE(v143) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_149:
      operator delete(v142);
      return 0;
    }

LABEL_148:
    operator delete(*&v149[40]);
    if ((SHIBYTE(v143) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_149;
  }

  if (v19)
  {
    v20 = v19;
    v21 = v19[3];
    v22 = v19[4];
    if (v22 == v21)
    {
LABEL_100:
      if (v22 == v21)
      {
        return 0;
      }

      result = 0;
      v20[4] = v21;
      return result;
    }

    v23 = 0;
    v136 = v19;
    while (1)
    {
      v137 = v23;
      if (v23 >= (v22 - v21) >> 3)
      {
        v24 = -1;
      }

      else
      {
        v24 = *(v21 + 8 * v23);
      }

      if (v24 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3))
      {
        v25 = a1 + 40;
      }

      else
      {
        v25 = *a1 + 40 * v24;
      }

      v141 = *v25;
      if (*(v25 + 31) < 0)
      {
        sub_325C(&v142, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v26 = *(v25 + 8);
        v143 = *(v25 + 24);
        v142 = v26;
      }

      v144 = *(v25 + 32);
      if (v143 >= 0)
      {
        v27 = HIBYTE(v143);
      }

      else
      {
        v27 = *(&v142 + 1);
      }

      if (v27 + 33 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v27 + 33 > 0x16)
      {
        operator new();
      }

      qmemcpy(v153, "ERR005 - Invalid numeric token: '", 33);
      if (v143 >= 0)
      {
        v28 = &v142;
      }

      else
      {
        v28 = v142;
      }

      memmove(&v153[1].__r_.__value_.__r.__words[1] + 1, v28, v27);
      *(&v153[1].__r_.__value_.__r.__words[1] + v27 + 1) = 0;
      v29 = std::string::append(v153, "'", 1uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      *&v149[48] = *(&v29->__r_.__value_.__l + 2);
      *&v149[32] = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      memset(v149, 0, 24);
      v31 = 20325;
      do
      {
        if ((v149[23] & 0x80000000) != 0)
        {
          v36 = (*&v149[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (*&v149[8] == v36)
          {
            if ((*&v149[16] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_66:
            operator new();
          }

          v32 = *&v149[8];
          v33 = *v149;
          ++*&v149[8];
        }

        else
        {
          if (v149[23] == 22)
          {
            goto LABEL_66;
          }

          v32 = v149[23];
          v149[23] = (v149[23] + 1) & 0x7F;
          v33 = v149;
        }

        v34 = &v33[v32];
        *v34 = (v31 % 0xA) | 0x30;
        v34[1] = 0;
        v35 = v31 > 9;
        v31 /= 0xAu;
      }

      while (v35);
      v37 = v149[23];
      v38 = v149;
      if (v149[23] < 0)
      {
        v37 = *&v149[8];
        v38 = *v149;
      }

      if (v37)
      {
        v39 = &v38[v37 - 1];
        if (v39 > v38)
        {
          v40 = v38 + 1;
          do
          {
            v41 = *(v40 - 1);
            *(v40 - 1) = *v39;
            *v39-- = v41;
            v42 = v40++ >= v39;
          }

          while (!v42);
        }
      }

      v43 = std::string::insert(v149, 0, "exprtk.hpp:", 0xBuLL);
      v20 = v136;
      v44 = *&v43->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(2, &v141, &v149[32], &__p.__r_.__value_.__l.__data_, &v153[1]);
      v45 = *(a1 + 568);
      v46 = *(a1 + 560);
      v47 = 30 * ((v45 - v46) >> 3) - 1;
      if (v45 == v46)
      {
        v47 = 0;
      }

      if (v47 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v46 = *(a1 + 560);
        v45 = *(a1 + 568);
      }

      if (v45 == v46)
      {
        v49 = 0;
      }

      else
      {
        v48 = *(a1 + 592) + *(a1 + 584);
        v49 = *(v46 + 8 * (v48 / 0x1E)) + 136 * (v48 % 0x1E);
      }

      sub_C398C(v49, &v153[1]);
      ++*(a1 + 592);
      if (v160 < 0)
      {
        operator delete(v159);
        if (v158 < 0)
        {
          goto LABEL_92;
        }

LABEL_84:
        if ((v156 & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

LABEL_93:
        operator delete(v155);
        if (v154 < 0)
        {
          goto LABEL_94;
        }

LABEL_86:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_87;
        }

LABEL_95:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v149[23] & 0x80000000) != 0)
        {
          goto LABEL_96;
        }

LABEL_88:
        if ((v149[55] & 0x80000000) == 0)
        {
          goto LABEL_89;
        }

LABEL_97:
        operator delete(*&v149[32]);
        if (SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_37;
        }

LABEL_98:
        if ((SHIBYTE(v143) & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_99:
        operator delete(v142);
        v23 = v137 + 1;
        v21 = v136[3];
        v22 = v136[4];
        if (v137 + 1 >= (v22 - v21) >> 3)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if ((v158 & 0x80000000) == 0)
        {
          goto LABEL_84;
        }

LABEL_92:
        operator delete(v157);
        if (v156 < 0)
        {
          goto LABEL_93;
        }

LABEL_85:
        if ((v154 & 0x80000000) == 0)
        {
          goto LABEL_86;
        }

LABEL_94:
        operator delete(v153[1].__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_95;
        }

LABEL_87:
        if ((v149[23] & 0x80000000) == 0)
        {
          goto LABEL_88;
        }

LABEL_96:
        operator delete(*v149);
        if ((v149[55] & 0x80000000) != 0)
        {
          goto LABEL_97;
        }

LABEL_89:
        if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }

LABEL_37:
        operator delete(v153[0].__r_.__value_.__l.__data_);
        if (SHIBYTE(v143) < 0)
        {
          goto LABEL_99;
        }

LABEL_38:
        v23 = v137 + 1;
        v21 = v136[3];
        v22 = v136[4];
        if (v137 + 1 >= (v22 - v21) >> 3)
        {
          goto LABEL_100;
        }
      }
    }
  }

  if (v74)
  {
    v75 = v74;
    if (v74[6] == v74[5])
    {
      return 0;
    }

    v76 = 0;
    v135 = v74 + 5;
    while (1)
    {
      sub_C54A8(v75, v76, &v141);
      if (v143 >= 0)
      {
        v79 = HIBYTE(v143);
      }

      else
      {
        v79 = *(&v142 + 1);
      }

      if (v79 + 34 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v79 + 34 > 0x16)
      {
        operator new();
      }

      qmemcpy(v149, "ERR006 - Invalid token sequence: '", 34);
      if (v143 >= 0)
      {
        v80 = &v142;
      }

      else
      {
        v80 = v142;
      }

      memmove(&v149[34], v80, v79);
      v149[v79 + 34] = 0;
      v81 = std::string::append(v149, "' and '", 7uLL);
      v82 = *&v81->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      if ((v147 & 0x80u) == 0)
      {
        v83 = &v145;
      }

      else
      {
        v83 = v145;
      }

      if ((v147 & 0x80u) == 0)
      {
        v84 = v147;
      }

      else
      {
        v84 = v146;
      }

      v85 = std::string::append(&__p, v83, v84);
      v138 = v76;
      v86 = *&v85->__r_.__value_.__l.__data_;
      v153[0].__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v153[0].__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      v87 = std::string::append(v153, "'", 1uLL);
      v88 = *&v87->__r_.__value_.__l.__data_;
      *&v149[48] = *(&v87->__r_.__value_.__l + 2);
      *&v149[32] = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      memset(&v140, 0, sizeof(v140));
      v89 = 20345;
      do
      {
        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          v93 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v140.__r_.__value_.__l.__size_ == v93)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_181:
            operator new();
          }

          v90 = v140.__r_.__value_.__l.__size_;
          v91 = v140.__r_.__value_.__r.__words[0];
          ++v140.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_181;
          }

          v90 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
          *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
          v91 = &v140;
        }

        v92 = v91 + v90;
        *v92 = (v89 % 0xA) | 0x30;
        v92[1] = 0;
        v35 = v89 > 9;
        v89 /= 0xAu;
      }

      while (v35);
      v94 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      v95 = &v140;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v94 = v140.__r_.__value_.__l.__size_;
        v95 = v140.__r_.__value_.__r.__words[0];
      }

      if (v94)
      {
        v96 = (v95 + v94 - 1);
        if (v96 > v95)
        {
          v97 = &v95->__r_.__value_.__s.__data_[1];
          do
          {
            v98 = *(v97 - 1);
            *(v97 - 1) = v96->__r_.__value_.__s.__data_[0];
            v96->__r_.__value_.__s.__data_[0] = v98;
            v96 = (v96 - 1);
            v42 = v97++ >= v96;
          }

          while (!v42);
        }
      }

      v99 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
      v100 = *&v99->__r_.__value_.__l.__data_;
      v148.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
      *&v148.__r_.__value_.__l.__data_ = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(2, &v141, &v149[32], &v148.__r_.__value_.__l.__data_, &v153[1]);
      v101 = *(a1 + 568);
      v102 = *(a1 + 560);
      v103 = 30 * ((v101 - v102) >> 3) - 1;
      if (v101 == v102)
      {
        v103 = 0;
      }

      if (v103 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v102 = *(a1 + 560);
        v101 = *(a1 + 568);
      }

      if (v101 == v102)
      {
        v105 = 0;
      }

      else
      {
        v104 = *(a1 + 592) + *(a1 + 584);
        v105 = *(v102 + 8 * (v104 / 0x1E)) + 136 * (v104 % 0x1E);
      }

      sub_C398C(v105, &v153[1]);
      ++*(a1 + 592);
      if (v160 < 0)
      {
        operator delete(v159);
        if ((v158 & 0x80000000) == 0)
        {
LABEL_199:
          if ((v156 & 0x80000000) == 0)
          {
            goto LABEL_200;
          }

          goto LABEL_211;
        }
      }

      else if ((v158 & 0x80000000) == 0)
      {
        goto LABEL_199;
      }

      operator delete(v157);
      if ((v156 & 0x80000000) == 0)
      {
LABEL_200:
        if ((v154 & 0x80000000) == 0)
        {
          goto LABEL_201;
        }

        goto LABEL_212;
      }

LABEL_211:
      operator delete(v155);
      if ((v154 & 0x80000000) == 0)
      {
LABEL_201:
        if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_202;
        }

        goto LABEL_213;
      }

LABEL_212:
      operator delete(v153[1].__r_.__value_.__l.__size_);
      if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_202:
        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_203;
        }

        goto LABEL_214;
      }

LABEL_213:
      operator delete(v148.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_203:
        if ((v149[55] & 0x80000000) == 0)
        {
          goto LABEL_204;
        }

        goto LABEL_215;
      }

LABEL_214:
      operator delete(v140.__r_.__value_.__l.__data_);
      if ((v149[55] & 0x80000000) == 0)
      {
LABEL_204:
        if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_205;
        }

        goto LABEL_216;
      }

LABEL_215:
      operator delete(*&v149[32]);
      if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_205:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_206;
        }

        goto LABEL_217;
      }

LABEL_216:
      operator delete(v153[0].__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_206:
        if ((v149[23] & 0x80000000) == 0)
        {
          goto LABEL_207;
        }

        goto LABEL_218;
      }

LABEL_217:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v149[23] & 0x80000000) == 0)
      {
LABEL_207:
        if (v147 < 0)
        {
          goto LABEL_155;
        }

        goto LABEL_219;
      }

LABEL_218:
      operator delete(*v149);
      if (v147 < 0)
      {
LABEL_155:
        operator delete(v145);
        if (SHIBYTE(v143) < 0)
        {
          goto LABEL_220;
        }

        goto LABEL_156;
      }

LABEL_219:
      if (SHIBYTE(v143) < 0)
      {
LABEL_220:
        operator delete(v142);
      }

LABEL_156:
      ++v76;
      v78 = v75[5];
      v77 = v75[6];
      if (v138 + 1 >= 0xCCCCCCCCCCCCCCCDLL * ((v77 - v78) >> 4))
      {
        goto LABEL_291;
      }
    }
  }

  if (!result)
  {
    return result;
  }

  v106 = result;
  if (result[6] == result[5])
  {
    return 0;
  }

  v107 = 0;
  v135 = result + 5;
  do
  {
    sub_C56DC(v106, v107, &v141);
    if (v143 >= 0)
    {
      v108 = HIBYTE(v143);
    }

    else
    {
      v108 = *(&v142 + 1);
    }

    if (v108 + 34 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v108 + 34 > 0x16)
    {
      operator new();
    }

    qmemcpy(v149, "ERR007 - Invalid token sequence: '", 34);
    if (v143 >= 0)
    {
      v109 = &v142;
    }

    else
    {
      v109 = v142;
    }

    memmove(&v149[34], v109, v108);
    v149[v108 + 34] = 0;
    v110 = std::string::append(v149, "' and '", 7uLL);
    v111 = *&v110->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v111;
    v110->__r_.__value_.__l.__size_ = 0;
    v110->__r_.__value_.__r.__words[2] = 0;
    v110->__r_.__value_.__r.__words[0] = 0;
    if ((v147 & 0x80u) == 0)
    {
      v112 = &v145;
    }

    else
    {
      v112 = v145;
    }

    if ((v147 & 0x80u) == 0)
    {
      v113 = v147;
    }

    else
    {
      v113 = v146;
    }

    v114 = std::string::append(&__p, v112, v113);
    v139 = v107;
    v115 = *&v114->__r_.__value_.__l.__data_;
    v153[0].__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v153[0].__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    v116 = std::string::append(v153, "'", 1uLL);
    v117 = *&v116->__r_.__value_.__l.__data_;
    *&v149[48] = *(&v116->__r_.__value_.__l + 2);
    *&v149[32] = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    memset(&v140, 0, sizeof(v140));
    v118 = 20365;
    do
    {
      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        v122 = (v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v140.__r_.__value_.__l.__size_ == v122)
        {
          if ((v140.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_251:
          operator new();
        }

        v119 = v140.__r_.__value_.__l.__size_;
        v120 = v140.__r_.__value_.__r.__words[0];
        ++v140.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v140.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_251;
        }

        v119 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
        *(&v140.__r_.__value_.__s + 23) = (*(&v140.__r_.__value_.__s + 23) + 1) & 0x7F;
        v120 = &v140;
      }

      v121 = v120 + v119;
      *v121 = (v118 % 0xA) | 0x30;
      v121[1] = 0;
      v35 = v118 > 9;
      v118 /= 0xAu;
    }

    while (v35);
    v123 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
    v124 = &v140;
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v123 = v140.__r_.__value_.__l.__size_;
      v124 = v140.__r_.__value_.__r.__words[0];
    }

    if (v123)
    {
      v125 = (v124 + v123 - 1);
      if (v125 > v124)
      {
        v126 = &v124->__r_.__value_.__s.__data_[1];
        do
        {
          v127 = *(v126 - 1);
          *(v126 - 1) = v125->__r_.__value_.__s.__data_[0];
          v125->__r_.__value_.__s.__data_[0] = v127;
          v125 = (v125 - 1);
          v42 = v126++ >= v125;
        }

        while (!v42);
      }
    }

    v128 = std::string::insert(&v140, 0, "exprtk.hpp:", 0xBuLL);
    v129 = *&v128->__r_.__value_.__l.__data_;
    v148.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
    *&v148.__r_.__value_.__l.__data_ = v129;
    v128->__r_.__value_.__l.__size_ = 0;
    v128->__r_.__value_.__r.__words[2] = 0;
    v128->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(2, &v141, &v149[32], &v148.__r_.__value_.__l.__data_, &v153[1]);
    v130 = *(a1 + 568);
    v131 = *(a1 + 560);
    v132 = 30 * ((v130 - v131) >> 3) - 1;
    if (v130 == v131)
    {
      v132 = 0;
    }

    if (v132 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v131 = *(a1 + 560);
      v130 = *(a1 + 568);
    }

    if (v130 == v131)
    {
      v134 = 0;
    }

    else
    {
      v133 = *(a1 + 592) + *(a1 + 584);
      v134 = *(v131 + 8 * (v133 / 0x1E)) + 136 * (v133 % 0x1E);
    }

    sub_C398C(v134, &v153[1]);
    ++*(a1 + 592);
    if (v160 < 0)
    {
      operator delete(v159);
      if ((v158 & 0x80000000) == 0)
      {
LABEL_269:
        if ((v156 & 0x80000000) == 0)
        {
          goto LABEL_270;
        }

        goto LABEL_281;
      }
    }

    else if ((v158 & 0x80000000) == 0)
    {
      goto LABEL_269;
    }

    operator delete(v157);
    if ((v156 & 0x80000000) == 0)
    {
LABEL_270:
      if ((v154 & 0x80000000) == 0)
      {
        goto LABEL_271;
      }

      goto LABEL_282;
    }

LABEL_281:
    operator delete(v155);
    if ((v154 & 0x80000000) == 0)
    {
LABEL_271:
      if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_272;
      }

      goto LABEL_283;
    }

LABEL_282:
    operator delete(v153[1].__r_.__value_.__l.__size_);
    if ((SHIBYTE(v148.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_272:
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_284;
    }

LABEL_283:
    operator delete(v148.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_273:
      if ((v149[55] & 0x80000000) == 0)
      {
        goto LABEL_274;
      }

      goto LABEL_285;
    }

LABEL_284:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v149[55] & 0x80000000) == 0)
    {
LABEL_274:
      if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_286;
    }

LABEL_285:
    operator delete(*&v149[32]);
    if ((SHIBYTE(v153[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_275:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_276;
      }

      goto LABEL_287;
    }

LABEL_286:
    operator delete(v153[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_276:
      if ((v149[23] & 0x80000000) == 0)
      {
        goto LABEL_277;
      }

      goto LABEL_288;
    }

LABEL_287:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v149[23] & 0x80000000) == 0)
    {
LABEL_277:
      if ((v147 & 0x80000000) == 0)
      {
        goto LABEL_289;
      }

      goto LABEL_225;
    }

LABEL_288:
    operator delete(*v149);
    if ((v147 & 0x80000000) == 0)
    {
LABEL_289:
      if ((SHIBYTE(v143) & 0x80000000) == 0)
      {
        goto LABEL_226;
      }

      goto LABEL_290;
    }

LABEL_225:
    operator delete(v145);
    if ((SHIBYTE(v143) & 0x80000000) == 0)
    {
      goto LABEL_226;
    }

LABEL_290:
    operator delete(v142);
LABEL_226:
    ++v107;
    v78 = v106[5];
    v77 = v106[6];
  }

  while (v139 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((v77 - v78) >> 4));
LABEL_291:
  if (v77 != v78)
  {
    sub_C58B4(v135);
  }

  return 0;
}

void sub_C235C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_C26B0(uint64_t result)
{
  v1 = *(result + 24);
  if (*(result + 8) != v1)
  {
    v2 = (v1 + 8);
    *(result + 104) = *v1;
    v3 = result + 104;
    *(result + 24) = v1 + 40;
    if (result + 104 == v1)
    {
LABEL_6:
      *(v3 + 32) = *(v1 + 32);
      return result;
    }

    v4 = *(v1 + 31);
    if ((*(result + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if ((v4 & 0x80u) == 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *v2;
    }

    if ((v4 & 0x80u) == 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(v1 + 16);
    }

    result = sub_13B38(result + 112, v6, v7);
    *(v3 + 32) = *(v1 + 32);
    return result;
  }

  v1 = result + 40;
  *(result + 104) = *(result + 40);
  v3 = result + 104;
  v2 = (result + 48);
  v4 = *(result + 71);
  if (*(result + 135) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 0x80) == 0)
  {
    v5 = *v2;
    *(result + 128) = v2[2];
    *(result + 112) = v5;
    goto LABEL_6;
  }

  result = sub_13A68((result + 112), *v2, *(v1 + 16));
  *(v3 + 32) = *(v1 + 32);
  return result;
}

uint64_t sub_C279C(uint64_t a1)
{
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 1;
  v48 = a1;
  v49 = &v53;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  v46 = -1;
  v39 = 0;
  v2 = (a1 + 104);
  HIBYTE(v41) = 0;
  v3 = a1 + 112;
  v42 = -1;
  LOBYTE(v40) = 0;
  while (1)
  {
    *(a1 + 651) = 0;
    v43 = *(a1 + 104);
    if (&v43 != v2)
    {
      v6 = *(a1 + 135);
      if (SHIBYTE(v45) < 0)
      {
        if (v6 >= 0)
        {
          v7 = v3;
        }

        else
        {
          v7 = *(a1 + 112);
        }

        if (v6 >= 0)
        {
          v8 = *(a1 + 135);
        }

        else
        {
          v8 = *(a1 + 120);
        }

        sub_13B38(&v44, v7, v8);
      }

      else if ((*(a1 + 135) & 0x80) != 0)
      {
        sub_13A68(&v44, *(a1 + 112), *(a1 + 120));
      }

      else
      {
        v44 = *v3;
        v45 = *(v3 + 16);
      }
    }

    v46 = *(a1 + 136);
    v9 = sub_C5A5C(a1, 0);
    if (!v9)
    {
      break;
    }

    v10 = v54;
    if (v54 >= v55)
    {
      v12 = v53;
      v13 = v54 - v53;
      v14 = (v54 - v53) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v16 = v55 - v53;
      if ((v55 - v53) >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v14) = v9;
      v11 = 8 * v14 + 8;
      memcpy(0, v12, v13);
      v53 = 0;
      v54 = v11;
      v55 = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v54 = v9;
      v11 = (v10 + 8);
    }

    v54 = v11;
    v18 = v51;
    if (v51 == v52 << 6)
    {
      if ((v51 + 1) < 0)
      {
        sub_1794();
      }

      if (v51 > 0x3FFFFFFFFFFFFFFELL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v52 << 7 <= (v51 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v19 = (v51 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      else
      {
        v19 = v52 << 7;
      }

      sub_3D41C(&v50, v19);
      v18 = v51;
    }

    v51 = v18 + 1;
    v20 = v18 >> 6;
    v21 = 1 << v18;
    if (*(a1 + 651) == 1)
    {
      v50[v20] |= v21;
      v39 = *v2;
      if (&v39 == v2)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v50[v20] &= ~v21;
      v39 = *v2;
      if (&v39 == v2)
      {
        goto LABEL_59;
      }
    }

    v22 = *(a1 + 135);
    if (SHIBYTE(v41) < 0)
    {
      if (v22 >= 0)
      {
        v23 = v3;
      }

      else
      {
        v23 = *(a1 + 112);
      }

      if (v22 >= 0)
      {
        v24 = *(a1 + 135);
      }

      else
      {
        v24 = *(a1 + 120);
      }

      sub_13B38(&v40, v23, v24);
    }

    else if ((*(a1 + 135) & 0x80) != 0)
    {
      sub_13A68(&v40, *(a1 + 112), *(a1 + 120));
    }

    else
    {
      v40 = *v3;
      v41 = *(v3 + 16);
    }

LABEL_59:
    v42 = *(a1 + 136);
    sub_C7E80(a1, &v43, &v39, &__p);
    if (v38 < 0)
    {
      operator delete(__p);
    }

    v25 = *(a1 + 24);
    if (*(a1 + 8) == v25)
    {
      if (v53 != v54)
      {
        v28 = *(v54 - 1);
        if (v28)
        {
          if ((*(*v28 + 32))(v28) == 15)
          {
            *(a1 + 476) = 1;
          }
        }
      }

      v29 = sub_C80D0(a1, &v53, &v50);
      v47 = v29 == 0;
      if (SHIBYTE(v41) < 0)
      {
        goto LABEL_80;
      }

LABEL_77:
      if ((SHIBYTE(v45) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

LABEL_81:
      operator delete(v44);
      if (!v47)
      {
        goto LABEL_93;
      }

      goto LABEL_82;
    }

    if (*v2 == 6)
    {
      *(a1 + 24) = v25 + 40;
      *(a1 + 104) = *v25;
      if (v2 != v25)
      {
        v26 = *(v25 + 31);
        if (*(a1 + 135) < 0)
        {
          if (v26 >= 0)
          {
            v4 = (v25 + 8);
          }

          else
          {
            v4 = *(v25 + 8);
          }

          if (v26 >= 0)
          {
            v5 = *(v25 + 31);
          }

          else
          {
            v5 = *(v25 + 16);
          }

          sub_13B38(v3, v4, v5);
        }

        else if ((*(v25 + 31) & 0x80) != 0)
        {
          sub_13A68(v3, *(v25 + 8), *(v25 + 16));
        }

        else
        {
          v27 = *(v25 + 8);
          *(v3 + 16) = *(v25 + 24);
          *v3 = v27;
        }
      }

      *(a1 + 136) = *(v25 + 32);
    }
  }

  if (!*(a1 + 592))
  {
    operator new();
  }

  v29 = 0;
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_80:
  operator delete(v40);
  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_81;
  }

LABEL_78:
  if (v47)
  {
LABEL_82:
    v30 = v49;
    v31 = *v49;
    if (*v49 == v49[1])
    {
      goto LABEL_93;
    }

    v32 = 0;
    while (1)
    {
      v33 = v31[v32];
      if (!v33 || (*(*v33 + 32))(v33) == 17)
      {
        goto LABEL_85;
      }

      v34 = v31[v32];
      if (v34)
      {
        if ((*(*v34 + 32))(v34) == 18)
        {
          goto LABEL_85;
        }

        v35 = v31[v32];
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }
      }

      v31[v32] = 0;
LABEL_85:
      ++v32;
      v31 = *v30;
      if (v32 >= (v30[1] - *v30) >> 3)
      {
        v30[1] = v31;
        break;
      }
    }
  }

LABEL_93:
  if (v50)
  {
    operator delete(v50);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  return v29;
}

void sub_C3078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a28 & 0x80000000) == 0)
  {
LABEL_6:
    if (a52 < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a23);
  if (a52 < 0)
  {
LABEL_7:
    operator delete(a47);
    if ((*(v52 - 169) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((*(v52 - 169) & 0x80000000) == 0)
  {
LABEL_8:
    sub_2446A0(v52 - 160);
    v54 = *(v52 - 136);
    if (!v54)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v52 - 192));
  sub_2446A0(v52 - 160);
  v54 = *(v52 - 136);
  if (!v54)
  {
LABEL_9:
    v55 = *(v52 - 112);
    if (!v55)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v54);
  v55 = *(v52 - 112);
  if (!v55)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

LABEL_16:
  *(v52 - 104) = v55;
  operator delete(v55);
  _Unwind_Resume(a1);
}

void sub_C31A4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 880);
  if (*(a1 + 888) != v2)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v8 = *(v2 + v5 + 64);
      if (v8 == 3)
      {
        goto LABEL_8;
      }

      if (v8 != 2)
      {
        break;
      }

      if (*(v2 + v5 + 88))
      {
        v11 = *a2;
        if (*a2)
        {
          *&v13 = *(v2 + v5 + 88);
          DWORD2(v13) = 2;
          v14 = 0;
          sub_2447AC(v11 + 16, &v13);
        }
      }

      if (!*(v2 + v5 + 72))
      {
        goto LABEL_4;
      }

      v10 = *a2;
      if (!*a2)
      {
        goto LABEL_4;
      }

      v12 = *(v2 + v5 + 24);
      *&v13 = *(v2 + v5 + 72);
      DWORD2(v13) = 4;
      v14 = v12;
LABEL_3:
      sub_2447AC(v10 + 16, &v13);
LABEL_4:
      v7 = v2 + v5;
      *(v7 + 48) = 0;
      *(v7 + 68) = 0;
      ++v6;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      v2 = *(a1 + 880);
      v5 += 96;
      if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 888) - v2) >> 5))
      {
        return;
      }
    }

    if (v8 != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (*(v2 + v5 + 80))
    {
      v9 = *a2;
      if (*a2)
      {
        *&v13 = *(v2 + v5 + 80);
        DWORD2(v13) = 1;
        v14 = 0;
        sub_2447AC(v9 + 16, &v13);
      }
    }

    if (!*(v2 + v5 + 72))
    {
      goto LABEL_4;
    }

    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_4;
    }

    *&v13 = *(v2 + v5 + 72);
    DWORD2(v13) = 3;
    v14 = 1;
    goto LABEL_3;
  }
}

_BYTE *sub_C3328@<X0>(int a1@<W0>, uint64_t a2@<X1>, const void **a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = 0;
  v8 = (a5 + 8);
  *(a5 + 31) = 0;
  *(a5 + 48) = 0u;
  v9 = a5 + 48;
  *(a5 + 32) = -1;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 40) = a1;
  *a5 = *a2;
  if (a5 != a2)
  {
    if (*(a2 + 31) < 0)
    {
      v10 = a2;
      v11 = a3;
      sub_13A68(v8, *(a2 + 8), *(a2 + 16));
      a2 = v10;
      a3 = v11;
    }

    else
    {
      *v8 = *(a2 + 8);
      *(a5 + 24) = *(a2 + 24);
    }
  }

  *(a5 + 32) = *(a2 + 32);
  if (v9 != a3)
  {
    v12 = *(a3 + 23);
    if (*(a5 + 71) < 0)
    {
      if (v12 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v12 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = a3[1];
      }

      sub_13B38(v9, v13, v14);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      sub_13A68(v9, *a3, a3[1]);
    }

    else
    {
      *v9 = *a3;
      *(v9 + 16) = a3[2];
    }
  }

  result = (a5 + 72);
  if ((a5 + 72) != a4)
  {
    v16 = *(a4 + 23);
    if (*(a5 + 95) < 0)
    {
      if (v16 >= 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = *a4;
      }

      if (v16 >= 0)
      {
        v18 = *(a4 + 23);
      }

      else
      {
        v18 = a4[1];
      }

      return sub_13B38(result, v17, v18);
    }

    else if ((*(a4 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a4, a4[1]);
    }

    else
    {
      *result = *a4;
      *(a5 + 88) = a4[2];
    }
  }

  return result;
}

void sub_C34B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3 != 3)
  {
    if (v3 == 2)
    {
      if (*(a2 + 72))
      {
        operator delete[]();
      }

      if (*(a2 + 88))
      {
        operator delete();
      }

      goto LABEL_12;
    }

    if (v3 != 1)
    {
      return;
    }

    if (*(a2 + 72))
    {
      operator delete();
    }
  }

  v4 = *(a2 + 80);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

LABEL_12:
  if (*(a2 + 23) < 0)
  {
    *(a2 + 8) = 3;
    v5 = *a2;
  }

  else
  {
    *(a2 + 23) = 3;
    v5 = a2;
  }

  *v5 = 4144959;
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  *(a2 + 40) = -1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 61) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
}

void *sub_C35C4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1E;
  v3 = v1 - 30;
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

void sub_C3934(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_C398C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
LABEL_6:
  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    sub_325C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
  }

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_C3A94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 48));
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_C3B08(uint64_t a1, char *a2)
{
  if (a2[23] >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  *(a1 + 80) = v3;
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *(a1 + 88) = v4;
  v5 = a2[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  v7 = &v6[v5];
  *(a1 + 96) = &v6[v5];
  *(a1 + 40) = 6;
  sub_C3EC0((a1 + 48), &v6[v5], &v6[v5], 0);
  if (v3)
  {
    *(a1 + 72) = v7 - v3;
  }

  v8 = *a1;
  for (i = *(a1 + 8); i != v8; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  *(a1 + 8) = v8;
  while (*(a1 + 96) != *(a1 + 88))
  {
    sub_C3C14(a1);
    v10 = *(a1 + 8);
    if (*a1 != v10 && (*(v10 - 40) - 1) < 5)
    {
      return 0;
    }
  }

  return 1;
}

void sub_C3C14(uint64_t *a1)
{
  v1 = a1[11];
  v2 = *v1;
  if ((v2 - 8) < 6 || v2 == 32)
  {
    for (i = a1[12]; v1 != i; a1[11] = ++v1)
    {
      v4 = *v1;
      if ((v4 - 8) >= 6 && v4 != 32)
      {
        break;
      }
    }
  }

  else
  {
    if (v2 == 35 || (v5 = v1[1], a1[12] != v1 + 1) && (v5 != 47 ? (v6 = v5 == 42) : (v6 = 1), !v6 ? (v7 = 0) : (v7 = 1), v2 == 47 ? (v8 = v7 == 0) : (v8 = 1), !v8))
    {

      sub_C40C4(a1);
      return;
    }

    if (sub_C42E8(v2))
    {

      sub_C432C(a1);
      return;
    }

    v10 = a1[11];
    v11 = *v10;
    if ((v11 & 0xFFFFFFDF) - 65 <= 0x19)
    {

      sub_C47E0(a1);
      return;
    }

    if ((v11 - 48) < 0xA)
    {
      goto LABEL_34;
    }

    if (v11 == 36)
    {

      sub_C4F54(a1);
    }

    else
    {
      if (v11 == 126)
      {
        v16 = 0;
        LOBYTE(__p[0]) = 0;
        v17 = -1;
        v13 = a1[10];
        v14 = 8;
        sub_C3EC0(__p, v10, v10 + 1, 1uLL);
        if (v13)
        {
          v17 = &v10[-v13];
        }
      }

      else
      {
        if (v11 == 46)
        {
LABEL_34:

          sub_C49DC(a1);
          return;
        }

        v16 = 0;
        LOBYTE(__p[0]) = 0;
        v17 = -1;
        v12 = a1[10];
        v14 = 1;
        sub_C3EC0(__p, v10, v10 + 2, 2uLL);
        if (v12)
        {
          v17 = &v10[-v12];
        }
      }

      sub_C51C4(a1, &v14);
      ++a1[11];
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_C3EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_C3EC0(uint64_t *result, uint64_t a2, char *a3, unint64_t a4)
{
  if (*(result + 23) < 0)
  {
    v5 = result[2];
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (a4 > v6)
    {
      if (0x7FFFFFFFFFFFFFF8 - (v5 & 0x7FFFFFFFFFFFFFFFuLL) >= a4 - v6)
      {
        if (v6 >= 0x3FFFFFFFFFFFFFF3)
        {
          operator new();
        }

LABEL_8:
        operator new();
      }

LABEL_25:
      sub_3244();
    }

    v4 = result;
    if (v5 < 0)
    {
      v4 = *result;
    }
  }

  else
  {
    v4 = result;
    if (a4 >= 0x17)
    {
      if (a4 - 0x7FFFFFFFFFFFFFF8 >= 0x800000000000001ELL)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  if (a2 == a3)
  {
    v8 = v4;
  }

  else
  {
    v7 = &a3[-a2];
    if (&a3[-a2] < 0x20 || v4 - a2 < 0x20)
    {
      v8 = v4;
      v9 = a2;
    }

    else
    {
      v8 = v4 + (v7 & 0xFFFFFFFFFFFFFFE0);
      v9 = (a2 + (v7 & 0xFFFFFFFFFFFFFFE0));
      v10 = (a2 + 16);
      v11 = v4 + 2;
      v12 = v7 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 32;
      }

      while (v12);
      if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_22;
      }
    }

    do
    {
      v14 = *v9++;
      *v8++ = v14;
    }

    while (v9 != a3);
  }

LABEL_22:
  *v8 = 0;
  if (*(result + 23) < 0)
  {
    result[1] = a4;
  }

  else
  {
    *(result + 23) = a4 & 0x7F;
  }

  return result;
}

void sub_C40C4(uint64_t *a1)
{
  v2 = a1[11];
  v1 = a1[12];
  if (v1 != v2)
  {
    v3 = *v2;
    if (v3 == 35)
    {
      v6 = 0;
      v5 = 1;
      v7 = (v2 + 1);
      a1[11] = (v2 + 1);
      if (v1 != (v2 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v3 != 47)
      {
        return;
      }

      v4 = v2[1];
      if (v4 == 47)
      {
        v6 = 0;
        v5 = 1;
      }

      else
      {
        if (v4 != 42)
        {
          return;
        }

        v5 = 0;
        v6 = 1;
      }

      v7 = (v2 + 2);
      a1[11] = (v2 + 2);
      if (v1 != (v2 + 2))
      {
        do
        {
LABEL_19:
          if (v5)
          {
            if (*v7 == 10)
            {
              a1[11] = (v7 + 1);
              return;
            }
          }

          else if (v7 + 1 != v1 && *v7 == 42 && v7[1] == 47)
          {
            a1[11] = (v7 + 2);
            return;
          }

          a1[11] = ++v7;
        }

        while (v7 != v1);
      }
    }

    if (v6)
    {
      HIBYTE(v15) = 0;
      LOBYTE(__p) = 0;
      v16 = -1;
      v9 = a1[10];
      v13 = 1;
      sub_C3EC0(&__p, v2, v2 + 2, 2uLL);
      if (v9)
      {
        v16 = &v2[-v9];
      }

      v10 = a1[1];
      if (v10 >= a1[2])
      {
        a1[1] = sub_C526C(a1, &v13);
        if (SHIBYTE(v15) < 0)
        {
LABEL_29:
          operator delete(__p);
        }
      }

      else
      {
        *v10 = v13;
        v11 = (v10 + 8);
        if (SHIBYTE(v15) < 0)
        {
          sub_325C(v11, __p, *(&__p + 1));
        }

        else
        {
          v12 = __p;
          *(v10 + 24) = v15;
          *v11 = v12;
        }

        *(v10 + 32) = v16;
        a1[1] = v10 + 40;
        a1[1] = v10 + 40;
        if (SHIBYTE(v15) < 0)
        {
          goto LABEL_29;
        }
      }
    }
  }
}

void sub_C42BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v16;
  *(v17 + 8) = v18;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_C42E8(int a1)
{
  result = 1;
  if ((a1 - 33) > 0x3D || ((1 << (a1 - 33)) & 0x340000007E005FB1) == 0)
  {
    return (a1 - 123) < 3;
  }

  return result;
}

void sub_C432C(uint64_t *a1)
{
  HIBYTE(v29) = 0;
  LOBYTE(__p) = 0;
  v30 = -1;
  v3 = a1[11];
  v2 = a1[12];
  v4 = v3 + 1;
  v5 = *v3;
  if (v2 == v3 + 1)
  {
    goto LABEL_70;
  }

  v6 = v3[1];
  if (v2 == v3 + 2 || v5 != 60 || v6 != 61 || v3[2] != 62)
  {
    if (v5 == 60 && v6 == 61)
    {
      v11 = 18;
      goto LABEL_17;
    }

    if (v5 == 62 && v6 == 61)
    {
      v11 = 20;
      goto LABEL_17;
    }

    v18 = v5 == 33 && v6 == 61;
    v19 = v6 == 62 && v5 == 60;
    v11 = 19;
    if (v19 || v18)
    {
LABEL_17:
      v12 = a1[10];
      v27 = v11;
      sub_C3EC0(&__p, v3, v3 + 2, 2uLL);
      if (v12)
      {
        v30 = &v3[-v12];
      }

      v13 = a1[1];
      if (v13 >= a1[2])
      {
        v16 = sub_C526C(a1, &v27);
      }

      else
      {
        *v13 = v27;
        v14 = (v13 + 8);
        if (SHIBYTE(v29) < 0)
        {
          sub_325C(v14, __p, *(&__p + 1));
        }

        else
        {
          v15 = __p;
          *(v13 + 24) = v29;
          *v14 = v15;
        }

        *(v13 + 32) = v30;
        v16 = v13 + 40;
        a1[1] = v13 + 40;
      }

      a1[1] = v16;
      a1[11] += 2;
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_91;
      }

      return;
    }

    if (v5 == 61 && v6 == 61)
    {
      v11 = 61;
      goto LABEL_17;
    }

    if (v5 == 58 && v6 == 61)
    {
      v11 = 10;
      goto LABEL_17;
    }

    if (v5 == 60 && v6 == 60)
    {
      v11 = 17;
      goto LABEL_17;
    }

    if (v5 == 62 && v6 == 62)
    {
      v11 = 16;
      goto LABEL_17;
    }

    if (v5 == 43 && v6 == 61)
    {
      v11 = 11;
      goto LABEL_17;
    }

    if (v5 == 45 && v6 == 61)
    {
      v11 = 12;
      goto LABEL_17;
    }

    if (v5 == 42 && v6 == 61)
    {
      v11 = 13;
      goto LABEL_17;
    }

    if (v5 == 47 && v6 == 61)
    {
      v11 = 14;
      goto LABEL_17;
    }

    if (v5 == 37 && v6 == 61)
    {
      v11 = 15;
      goto LABEL_17;
    }

LABEL_70:
    v21 = *v3;
    if (v21 <= 0x3B)
    {
      if (v21 != 38)
      {
        if (v21 == 59)
        {
          v22 = a1[10];
          v27 = 6;
          sub_C3EC0(&__p, v3, v4, 1uLL);
          goto LABEL_82;
        }

        goto LABEL_81;
      }
    }

    else if (v21 != 124)
    {
      if (v21 == 62)
      {
        v22 = a1[10];
        v27 = 62;
        sub_C3EC0(&__p, v3, v4, 1uLL);
        goto LABEL_82;
      }

      if (v21 == 60)
      {
        v22 = a1[10];
        v27 = 60;
        sub_C3EC0(&__p, v3, v4, 1uLL);
        goto LABEL_82;
      }

LABEL_81:
      v22 = a1[10];
      v27 = *v3;
      sub_C3EC0(&__p, v3, v4, 1uLL);
LABEL_82:
      if (v22)
      {
        v30 = &v3[-v22];
      }

      v23 = a1[1];
      if (v23 >= a1[2])
      {
        v26 = sub_C526C(a1, &v27);
      }

      else
      {
        *v23 = v27;
        v24 = (v23 + 8);
        if (SHIBYTE(v29) < 0)
        {
          sub_325C(v24, __p, *(&__p + 1));
        }

        else
        {
          v25 = __p;
          *(v23 + 24) = v29;
          *v24 = v25;
        }

        *(v23 + 32) = v30;
        v26 = v23 + 40;
        a1[1] = v23 + 40;
      }

      a1[1] = v26;
      ++a1[11];
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_91;
      }

      return;
    }

    v22 = a1[10];
    v27 = 8;
    sub_C3EC0(&__p, v3, v4, 1uLL);
    goto LABEL_82;
  }

  v7 = a1[10];
  v27 = 21;
  sub_C3EC0(&__p, v3, v3 + 3, 3uLL);
  if (v7)
  {
    v30 = &v3[-v7];
  }

  v8 = a1[1];
  if (v8 >= a1[2])
  {
    v20 = sub_C526C(a1, &v27);
  }

  else
  {
    *v8 = v27;
    v9 = (v8 + 8);
    if (SHIBYTE(v29) < 0)
    {
      sub_325C(v9, __p, *(&__p + 1));
    }

    else
    {
      v10 = __p;
      *(v8 + 24) = v29;
      *v9 = v10;
    }

    *(v8 + 32) = v30;
    v20 = v8 + 40;
    a1[1] = v8 + 40;
  }

  a1[1] = v20;
  a1[11] += 3;
  if (SHIBYTE(v29) < 0)
  {
LABEL_91:
    operator delete(__p);
  }
}

void sub_C47A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 8) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C47E0(uint64_t *a1)
{
  v3 = a1[11];
  v2 = a1[12];
  v4 = v3;
  if (v2 != v3)
  {
    v5 = *v3;
    v6 = (v5 - 48) >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A;
    if (!v6 || v5 == 95 || (v4 = a1[11], v5 == 46))
    {
      v4 = (v3 + 1);
      a1[11] = (v3 + 1);
      if (v2 != v3 + 1)
      {
        v7 = v3 + 2;
        do
        {
          v10 = *(v7 - 1);
          v11 = (v10 - 48) >= 0xA && (v10 & 0xFFFFFFDF) - 65 >= 0x1A;
          if (v11 && v10 != 95)
          {
            if (v10 != 46)
            {
              goto LABEL_25;
            }

            if (v7 != v2)
            {
              v12 = *v7;
              if (v12 != 95 && (v12 - 48) >= 0xA && (v12 & 0xFFFFFFDF) - 65 > 0x19)
              {
                v4 = (v7 - 1);
                goto LABEL_25;
              }
            }
          }

          ++v4;
          a1[11] = v7;
          v8 = v7 + 1;
        }

        while (v7++ != v2);
        v4 = (v8 - 1);
      }
    }
  }

LABEL_25:
  HIBYTE(v19) = 0;
  LOBYTE(__p) = 0;
  v20 = -1;
  v13 = a1[10];
  v17 = 8;
  sub_C3EC0(&__p, v3, v4, v4 - v3);
  if (v13)
  {
    v20 = &v3[-v13];
  }

  v14 = a1[1];
  if (v14 >= a1[2])
  {
    a1[1] = sub_C526C(a1, &v17);
    if (SHIBYTE(v19) < 0)
    {
LABEL_34:
      operator delete(__p);
    }
  }

  else
  {
    *v14 = v17;
    v15 = (v14 + 8);
    if (SHIBYTE(v19) < 0)
    {
      sub_325C(v15, __p, *(&__p + 1));
    }

    else
    {
      v16 = __p;
      *(v14 + 24) = v19;
      *v15 = v16;
    }

    *(v14 + 32) = v20;
    a1[1] = v14 + 40;
    a1[1] = v14 + 40;
    if (SHIBYTE(v19) < 0)
    {
      goto LABEL_34;
    }
  }
}

void sub_C49B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v17;
  *(v16 + 8) = v18;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C49DC(uint64_t *a1)
{
  v31 = 0;
  HIBYTE(v33) = 0;
  LOBYTE(__p) = 0;
  v34 = -1;
  v3 = a1[11];
  v2 = a1[12];
  v4 = v3;
  if (v2 == v3)
  {
    goto LABEL_62;
  }

  v5 = 0;
  v6 = 0;
  v4 = a1[11];
  while (1)
  {
    v7 = 0;
    v8 = v6;
LABEL_4:
    if (v7)
    {
      break;
    }

    while ((v8 & 1) == 0)
    {
      while (1)
      {
        while (1)
        {
          v11 = *v4;
          if (v11 != 46)
          {
            break;
          }

          if (v5)
          {
LABEL_72:
            v27 = a1[10];
            v31 = 3;
            sub_C3EC0(&__p, v3, v4, &v4[-v3]);
            if (v27)
            {
              v34 = v3 - v27;
            }

            v23 = a1[1];
            if (v23 < a1[2])
            {
              *v23 = v31;
              v24 = v23 + 8;
              if (SHIBYTE(v33) < 0)
              {
                goto LABEL_68;
              }

              goto LABEL_66;
            }

            goto LABEL_94;
          }

          a1[11] = ++v4;
          v5 = 1;
          if (v2 == v4)
          {
            goto LABEL_62;
          }
        }

        if (__tolower(v11) == 101)
        {
          break;
        }

        v4 = a1[11];
        v12 = *v4;
        if (v12 == 46 || (v12 - 48) < 0xA)
        {
          a1[11] = ++v4;
          v2 = a1[12];
          if (v2 != v4)
          {
            continue;
          }
        }

        goto LABEL_62;
      }

LABEL_30:
      v14 = a1[11];
      v2 = a1[12];
      v4 = v14 + 1;
      if (v2 == v14 + 1)
      {
        goto LABEL_78;
      }

      v15 = *v4;
      if (v15 != 43 && v15 != 45 && (v15 - 48) >= 0xA)
      {
        goto LABEL_84;
      }

      a1[11] = v4;
      v8 = 1;
    }

    while (1)
    {
      while (1)
      {
        v9 = *v4;
        if (v9 != 46)
        {
          break;
        }

        if (v5)
        {
          goto LABEL_72;
        }

        a1[11] = ++v4;
        v5 = 1;
        if (v2 == v4)
        {
          goto LABEL_62;
        }
      }

      if (__tolower(v9) == 101)
      {
        goto LABEL_30;
      }

      v4 = a1[11];
      v10 = *v4;
      if (v10 == 43 || v10 == 45)
      {
        break;
      }

      if ((v10 - 48) < 0xA)
      {
LABEL_43:
        a1[11] = ++v4;
        v2 = a1[12];
        v7 = 1;
        v8 = 1;
        if (v2 == v4)
        {
          goto LABEL_62;
        }

        goto LABEL_4;
      }

      if (v10 == 46)
      {
        a1[11] = ++v4;
        v2 = a1[12];
        if (v2 != v4)
        {
          continue;
        }
      }

      goto LABEL_62;
    }

    if (v6)
    {
      v30 = a1[10];
      v31 = 3;
      sub_C3EC0(&__p, v3, v4, &v4[-v3]);
      if (v30)
      {
        v34 = v3 - v30;
      }

      v23 = a1[1];
      if (v23 < a1[2])
      {
        *v23 = v31;
        v24 = v23 + 8;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

LABEL_68:
        sub_325C(v24, __p, *(&__p + 1));
        goto LABEL_69;
      }

      goto LABEL_94;
    }

    a1[11] = ++v4;
    v2 = a1[12];
    v6 = 1;
    if (v2 == v4)
    {
LABEL_62:
      v22 = a1[10];
      v31 = 7;
      sub_C3EC0(&__p, v3, v4, &v4[-v3]);
      if (v22)
      {
        v34 = v3 - v22;
      }

      v23 = a1[1];
      if (v23 < a1[2])
      {
        *v23 = v31;
        v24 = v23 + 8;
        if (SHIBYTE(v33) < 0)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      goto LABEL_94;
    }
  }

  if (v8)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v19 = *v4;
    if (v19 == 46)
    {
      if (v5)
      {
        goto LABEL_72;
      }

      a1[11] = ++v4;
      v5 = 1;
      goto LABEL_50;
    }

    if (__tolower(v19) == 101)
    {
      break;
    }

    v4 = a1[11];
    v20 = *v4;
    if (v20 != 46 && (v20 - 48) > 9)
    {
      goto LABEL_62;
    }

    a1[11] = ++v4;
    v2 = a1[12];
LABEL_50:
    if (v2 == v4)
    {
      goto LABEL_62;
    }
  }

LABEL_45:
  v14 = a1[11];
  v2 = a1[12];
  v4 = v14 + 1;
  if (v2 == v14 + 1)
  {
LABEL_78:
    v28 = a1[10];
    v31 = 3;
    sub_C3EC0(&__p, v3, v14, &v14[-v3]);
    if (v28)
    {
      v34 = v3 - v28;
    }

    v23 = a1[1];
    if (v23 < a1[2])
    {
      *v23 = v31;
      v24 = v23 + 8;
      if (SHIBYTE(v33) < 0)
      {
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    goto LABEL_94;
  }

  v18 = *v4;
  if (v18 == 43 || v18 == 45 || (v18 - 48) <= 9)
  {
    a1[11] = v4;
    while (1)
    {
LABEL_36:
      v16 = *v4;
      if (v16 == 46)
      {
        if (v5)
        {
          goto LABEL_72;
        }

        a1[11] = ++v4;
        v5 = 1;
      }

      else
      {
        if (__tolower(v16) == 101)
        {
          goto LABEL_45;
        }

        v4 = a1[11];
        v17 = *v4;
        if ((v17 - 48) < 0xA)
        {
          goto LABEL_43;
        }

        if (v17 != 46)
        {
          goto LABEL_62;
        }

        a1[11] = ++v4;
        v2 = a1[12];
      }

      if (v2 == v4)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_84:
  v29 = a1[10];
  v31 = 3;
  sub_C3EC0(&__p, v3, v14, &v14[-v3]);
  if (v29)
  {
    v34 = v3 - v29;
  }

  v23 = a1[1];
  if (v23 >= a1[2])
  {
LABEL_94:
    v26 = sub_C526C(a1, &v31);
    goto LABEL_70;
  }

  *v23 = v31;
  v24 = v23 + 8;
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_68;
  }

LABEL_66:
  v25 = __p;
  *(v24 + 16) = v33;
  *v24 = v25;
LABEL_69:
  *(v23 + 32) = v34;
  v26 = v23 + 40;
  a1[1] = v23 + 40;
LABEL_70:
  a1[1] = v26;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }
}

void sub_C4F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 8) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C4F54(uint64_t *a1)
{
  v14 = 0;
  HIBYTE(v16) = 0;
  LOBYTE(__p) = 0;
  v17 = -1;
  v2 = a1[11];
  if (a1[12] - v2 > 10)
  {
    v6 = a1[11];
    if (*v2 == 36 && (v7 = v2[1], v8 = __tolower(102), v9 = __tolower(v7), v6 = a1[11], v8 == v9) && *(v6 + 2) - 48 <= 9 && *(v6 + 3) - 48 < 0xA)
    {
      v10 = (v6 + 4);
      a1[11] = v10;
      v11 = a1[10];
      v14 = 8;
      sub_C3EC0(&__p, v2, v10, v10 - v2);
      if (v11)
      {
        v17 = &v2[-v11];
      }

      v4 = a1[1];
      if (v4 < a1[2])
      {
        *v4 = v14;
        v5 = v4 + 8;
        if (SHIBYTE(v16) < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v12 = a1[10];
      v14 = 5;
      sub_C3EC0(&__p, v2, v6, v6 - v2);
      if (v12)
      {
        v17 = &v2[-v12];
      }

      v4 = a1[1];
      if (v4 < a1[2])
      {
        *v4 = v14;
        v5 = v4 + 8;
        if (SHIBYTE(v16) < 0)
        {
LABEL_24:
          sub_325C(v5, __p, *(&__p + 1));
LABEL_25:
          *(v4 + 32) = v17;
          a1[1] = v4 + 40;
          a1[1] = v4 + 40;
          if (SHIBYTE(v16) < 0)
          {
            goto LABEL_26;
          }

          return;
        }

LABEL_20:
        v13 = __p;
        *(v5 + 16) = v16;
        *v5 = v13;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v3 = a1[10];
    v14 = 5;
    sub_C3EC0(&__p, v2, v2, 0);
    if (v3)
    {
      v17 = &v2[-v3];
    }

    v4 = a1[1];
    if (v4 < a1[2])
    {
      *v4 = v14;
      v5 = v4 + 8;
      if (SHIBYTE(v16) < 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  a1[1] = sub_C526C(a1, &v14);
  if (SHIBYTE(v16) < 0)
  {
LABEL_26:
    operator delete(__p);
  }
}

void sub_C5194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 + 8) = v17;
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C51C4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_C526C(a1, a2);
    a1[1] = result;
  }

  else
  {
    *v3 = *a2;
    v4 = (v3 + 8);
    if (*(a2 + 31) < 0)
    {
      v7 = a2;
      sub_325C(v4, *(a2 + 8), *(a2 + 16));
      a2 = v7;
    }

    else
    {
      v5 = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *v4 = v5;
    }

    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
    a1[1] = v3 + 40;
    a1[1] = v3 + 40;
  }

  return result;
}

uint64_t sub_C526C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  v7 = (v6 + 8);
  if (*(a2 + 31) < 0)
  {
    sub_325C(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *v7 = *(a2 + 8);
    *(v6 + 24) = *(a2 + 24);
  }

  v8 = v6;
  *(v6 + 32) = *(a2 + 32);
  v9 = v6 + 40;
  v10 = *a1;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      *v14 = *v13;
      v15 = *(v13 + 8);
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 8) = v15;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      *(v14 + 32) = *(v13 + 32);
      v13 += 40;
      v14 += 40;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 31) < 0)
      {
        operator delete(*(v10 + 8));
      }

      v10 += 40;
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

void sub_C542C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C5440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C5440(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_C54A8@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((result[6] - v4) >> 4) <= a2)
  {
    if ((atomic_load_explicit(&qword_27326F8, memory_order_acquire) & 1) == 0)
    {
      sub_21E1158();
    }

    v8 = dword_27326D0;
    *a3 = dword_27326D0;
    if (byte_27326EF < 0)
    {
      sub_325C((a3 + 8), xmmword_27326D8, *(&xmmword_27326D8 + 1));
      v10 = dword_27326D0;
      v11 = byte_27326EF;
      v9 = qword_27326F0;
      *(a3 + 32) = qword_27326F0;
      *(a3 + 40) = v10;
      result = (a3 + 48);
      if (v11 < 0)
      {
        result = sub_325C(result, xmmword_27326D8, *(&xmmword_27326D8 + 1));
        *(a3 + 72) = qword_27326F0;
        return result;
      }
    }

    else
    {
      *(a3 + 8) = xmmword_27326D8;
      v9 = qword_27326F0;
      *(a3 + 24) = unk_27326E8;
      *(a3 + 32) = v9;
      *(a3 + 40) = v8;
      result = (a3 + 48);
    }

    *result = xmmword_27326D8;
    result[2] = unk_27326E8;
    *(a3 + 72) = v9;
    return result;
  }

  v5 = v4 + 80 * a2;
  *a3 = *v5;
  if (*(v5 + 31) < 0)
  {
    result = sub_325C((a3 + 8), *(v5 + 8), *(v5 + 16));
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 40) = *(v5 + 40);
    if ((*(v5 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *(v5 + 8);
    *(a3 + 24) = *(v5 + 24);
    *(a3 + 8) = v6;
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 40) = *(v5 + 40);
    if ((*(v5 + 71) & 0x80000000) == 0)
    {
LABEL_4:
      v7 = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 48) = v7;
      *(a3 + 72) = *(v5 + 72);
      return result;
    }
  }

  result = sub_325C((a3 + 48), *(v5 + 48), *(v5 + 56));
  *(a3 + 72) = *(v5 + 72);
  return result;
}

void sub_C5660(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C5680(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void *sub_C56DC@<X0>(void *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((result[6] - v4) >> 4) <= a2)
  {
    if ((atomic_load_explicit(&qword_2732728, memory_order_acquire) & 1) == 0)
    {
      sub_21E11A8();
    }

    v8 = dword_2732700;
    *a3 = dword_2732700;
    if (byte_273271F < 0)
    {
      sub_325C((a3 + 8), xmmword_2732708, *(&xmmword_2732708 + 1));
      v10 = dword_2732700;
      v11 = byte_273271F;
      v9 = qword_2732720;
      *(a3 + 32) = qword_2732720;
      *(a3 + 40) = v10;
      result = (a3 + 48);
      if (v11 < 0)
      {
        result = sub_325C(result, xmmword_2732708, *(&xmmword_2732708 + 1));
        *(a3 + 72) = qword_2732720;
        return result;
      }
    }

    else
    {
      *(a3 + 8) = xmmword_2732708;
      v9 = qword_2732720;
      *(a3 + 24) = unk_2732718;
      *(a3 + 32) = v9;
      *(a3 + 40) = v8;
      result = (a3 + 48);
    }

    *result = xmmword_2732708;
    result[2] = unk_2732718;
    *(a3 + 72) = v9;
    return result;
  }

  v5 = v4 + 80 * a2;
  *a3 = *v5;
  if (*(v5 + 31) < 0)
  {
    result = sub_325C((a3 + 8), *(v5 + 8), *(v5 + 16));
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 40) = *(v5 + 40);
    if ((*(v5 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *(v5 + 8);
    *(a3 + 24) = *(v5 + 24);
    *(a3 + 8) = v6;
    *(a3 + 32) = *(v5 + 32);
    *(a3 + 40) = *(v5 + 40);
    if ((*(v5 + 71) & 0x80000000) == 0)
    {
LABEL_4:
      v7 = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 48) = v7;
      *(a3 + 72) = *(v5 + 72);
      return result;
    }
  }

  result = sub_325C((a3 + 48), *(v5 + 48), *(v5 + 56));
  *(a3 + 72) = *(v5 + 72);
  return result;
}

void sub_C5894(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_C58B4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 49) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 49) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 72));
  }

  a1[1] = v2;
}

void ***sub_C5924(void ***result)
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
          v4 = sub_B3588(v4 - 1);
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

uint64_t sub_C599C(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (result == a2)
  {
    goto LABEL_5;
  }

  v3 = *(a2 + 31);
  if (*(result + 31) < 0)
  {
    if (v3 >= 0)
    {
      v5 = (a2 + 8);
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v3 >= 0)
    {
      v6 = *(a2 + 31);
    }

    else
    {
      v6 = *(a2 + 16);
    }

    v7 = result;
    sub_13B38(result + 8, v5, v6);
    result = v7;
    *(v7 + 32) = *(a2 + 32);
  }

  else
  {
    if ((*(a2 + 31) & 0x80) == 0)
    {
      v4 = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 8) = v4;
LABEL_5:
      *(result + 32) = *(a2 + 32);
      return result;
    }

    v8 = result;
    sub_13A68((result + 8), *(a2 + 8), *(a2 + 16));
    result = v8;
    *(v8 + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t sub_C5A5C(uint64_t a1, int a2)
{
  v3 = sub_C87BC(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v141 = (a1 + 104);
  v142 = v3;
  __dst = (a1 + 112);
  v139 = (a1 + 848);
  while (1)
  {
    memset(v155, 0, 12);
    switch(*v141)
    {
      case 8:
        v5 = *(a1 + 135);
        v6 = *(a1 + 120);
        if ((v5 & 0x80000000) == 0)
        {
          v7 = *(a1 + 135);
        }

        else
        {
          v7 = *(a1 + 120);
        }

        if (v7 != 3)
        {
          goto LABEL_44;
        }

        v8 = 0;
        v9 = v5 >> 63;
        break;
      case 0xA:
        v14 = 0;
        v15 = 0x5100000000;
        goto LABEL_27;
      case 0xB:
        v14 = 0;
        v15 = 0x5200000000;
LABEL_27:
        *(v155 + 4) = v15;
        goto LABEL_86;
      case 0xC:
        v14 = 0;
        *(v155 + 4) = 0x5300000000;
        goto LABEL_86;
      case 0xD:
        v14 = 0;
        *(v155 + 4) = 0x5400000000;
        goto LABEL_86;
      case 0xE:
        v14 = 0;
        *(v155 + 4) = 0x5500000000;
        goto LABEL_86;
      case 0xF:
        v14 = 0;
        *(v155 + 4) = 0x5600000000;
        goto LABEL_86;
      case 0x12:
        v155[0] = 0x600000005;
        v13 = 15;
        goto LABEL_37;
      case 0x13:
        v155[0] = 0x600000005;
        v13 = 18;
        goto LABEL_37;
      case 0x14:
        v155[0] = 0x600000005;
        v13 = 20;
        goto LABEL_37;
      case 0x15:
        v14 = 0;
        *(v155 + 4) = 0x5C00000000;
        goto LABEL_86;
      case 0x25:
        v155[0] = 0xB0000000ALL;
        v16 = 6;
        goto LABEL_39;
      case 0x2A:
        v155[0] = 0xB0000000ALL;
        v16 = 4;
        goto LABEL_39;
      case 0x2B:
        v155[0] = 0x800000007;
        v17 = 2;
        goto LABEL_42;
      case 0x2D:
        v155[0] = 0x800000007;
        v17 = 3;
LABEL_42:
        LODWORD(v155[1]) = v17;
        v14 = 7;
        goto LABEL_86;
      case 0x2F:
        v155[0] = 0xB0000000ALL;
        v16 = 5;
LABEL_39:
        LODWORD(v155[1]) = v16;
        v14 = 10;
        goto LABEL_86;
      case 0x3C:
        v155[0] = 0x600000005;
        v13 = 14;
        goto LABEL_37;
      case 0x3D:
        v155[0] = 0x600000005;
        v13 = 16;
        goto LABEL_37;
      case 0x3E:
        v155[0] = 0x600000005;
        v13 = 21;
LABEL_37:
        LODWORD(v155[1]) = v13;
        v14 = 5;
        goto LABEL_86;
      case 0x5E:
        v155[0] = 0xC0000000CLL;
        LODWORD(v155[1]) = 7;
        v14 = 12;
        goto LABEL_86;
      default:
        goto LABEL_332;
    }

    while (1)
    {
      v10 = (v9 & 1) != 0 ? *__dst : a1 + 112;
      v11 = __tolower(*(v10 + v8));
      if (v11 != __tolower(aAnd_4[v8]))
      {
        break;
      }

      ++v8;
      v12 = *(a1 + 135);
      v9 = v12 >> 63;
      if ((v12 & 0x80000000) != 0)
      {
        v12 = *(a1 + 120);
      }

      if (v8 >= v12)
      {
LABEL_55:
        v155[0] = 0x400000003;
        v24 = 22;
        goto LABEL_69;
      }
    }

    v5 = *(a1 + 135);
    v6 = *(a1 + 120);
LABEL_44:
    LOBYTE(v18) = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) == 0)
    {
      v19 = v5;
    }

    else
    {
      v19 = v6;
    }

    if (v19 == 1)
    {
      v20 = 0;
      while (1)
      {
        v21 = *__dst;
        if ((v18 & 1) == 0)
        {
          v21 = a1 + 112;
        }

        v22 = __tolower(*(v21 + v20));
        if (v22 != __tolower(byte_2268678[v20]))
        {
          break;
        }

        ++v20;
        v23 = *(a1 + 135);
        v18 = v23 >> 63;
        if ((v23 & 0x80000000) != 0)
        {
          v23 = *(a1 + 120);
        }

        if (v20 >= v23)
        {
          goto LABEL_55;
        }
      }

      v5 = *(a1 + 135);
      v6 = *(a1 + 120);
    }

    LOBYTE(v25) = (v5 & 0x80u) != 0;
    v26 = (v5 & 0x80u) == 0 ? v5 : v6;
    if (v26 != 4)
    {
      break;
    }

    v27 = 0;
    do
    {
      v28 = *__dst;
      if ((v25 & 1) == 0)
      {
        v28 = a1 + 112;
      }

      v29 = __tolower(*(v28 + v27));
      if (v29 != __tolower(aNand_0[v27]))
      {
        v5 = *(a1 + 135);
        v6 = *(a1 + 120);
        goto LABEL_71;
      }

      ++v27;
      v30 = *(a1 + 135);
      v25 = v30 >> 63;
      if ((v30 & 0x80000000) != 0)
      {
        v30 = *(a1 + 120);
      }
    }

    while (v27 < v30);
    v155[0] = 0x400000003;
    v24 = 23;
LABEL_69:
    LODWORD(v155[1]) = v24;
    v14 = 3;
LABEL_86:
    if (v14 < a2)
    {
      return v142;
    }

    v151 = *(a1 + 104);
    if (*(a1 + 135) < 0)
    {
      sub_325C(&v152, *(a1 + 112), *(a1 + 120));
    }

    else
    {
      v152 = *__dst;
      v153 = *(a1 + 128);
    }

    v154 = *(a1 + 136);
    v37 = *(a1 + 24);
    if (*(a1 + 8) == v37)
    {
      v37 = a1 + 40;
      *v141 = *(a1 + 40);
      v38 = a1 + 48;
      v39 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      *(a1 + 24) = v37 + 40;
      v38 = v37 + 8;
      *(a1 + 104) = *v37;
      if (v141 == v37)
      {
        goto LABEL_104;
      }

      v39 = *(v37 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_93:
        if ((v39 & 0x80) != 0)
        {
          sub_13A68(__dst, *v38, *(v37 + 16));
        }

        else
        {
          v40 = *v38;
          *(a1 + 128) = *(v38 + 16);
          *__dst = v40;
        }

        goto LABEL_104;
      }
    }

    if ((v39 & 0x80u) == 0)
    {
      v41 = v38;
    }

    else
    {
      v41 = *v38;
    }

    if ((v39 & 0x80u) == 0)
    {
      v42 = v39;
    }

    else
    {
      v42 = *(v37 + 16);
    }

    sub_13B38(__dst, v41, v42);
LABEL_104:
    *(a1 + 136) = *(v37 + 32);
    if (sub_24429C(a1 + 184, v155[1]))
    {
      if (!v142)
      {
        goto LABEL_109;
      }

      if ((*(*v142 + 32))(v142) != 17 && (*(*v142 + 32))(v142) != 18)
      {
        (*(*v142 + 8))(v142);
LABEL_109:
        v142 = 0;
      }

      sub_C9E48(LODWORD(v155[1]), &v147);
      v43 = std::string::insert(&v147, 0, "ERR009 - Invalid arithmetic operation '", 0x27uLL);
      v44 = *&v43->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v44;
      v43->__r_.__value_.__l.__size_ = 0;
      v43->__r_.__value_.__r.__words[2] = 0;
      v43->__r_.__value_.__r.__words[0] = 0;
      v45 = std::string::append(&__p, "'", 1uLL);
      v46 = *&v45->__r_.__value_.__l.__data_;
      v150 = v45->__r_.__value_.__r.__words[2];
      *v149 = v46;
      v45->__r_.__value_.__l.__size_ = 0;
      v45->__r_.__value_.__r.__words[2] = 0;
      v45->__r_.__value_.__r.__words[0] = 0;
      memset(&v144[1], 0, sizeof(std::string));
      v47 = 20791;
      do
      {
        if (SHIBYTE(v144[1].__r_.__value_.__r.__words[2]) < 0)
        {
          v52 = (v144[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v144[1].__r_.__value_.__l.__size_ == v52)
          {
            if ((v144[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_119:
            operator new();
          }

          size = v144[1].__r_.__value_.__l.__size_;
          data = v144[1].__r_.__value_.__l.__data_;
          ++v144[1].__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v144[1].__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_119;
          }

          size = HIBYTE(v144[1].__r_.__value_.__r.__words[2]);
          *(&v144[1].__r_.__value_.__s + 23) = (*(&v144[1].__r_.__value_.__s + 23) + 1) & 0x7F;
          data = &v144[1];
        }

        v50 = data + size;
        *v50 = (v47 % 0xA) | 0x30;
        v50[1] = 0;
        v51 = v47 > 9;
        v47 /= 0xAu;
      }

      while (v51);
      v62 = HIBYTE(v144[1].__r_.__value_.__r.__words[2]);
      v63 = &v144[1];
      if ((v144[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = v144[1].__r_.__value_.__l.__size_;
        v63 = v144[1].__r_.__value_.__l.__data_;
      }

      if (v62)
      {
        v64 = (v63 + v62 - 1);
        if (v64 > v63)
        {
          v65 = &v63->__r_.__value_.__s.__data_[1];
          do
          {
            v66 = *(v65 - 1);
            *(v65 - 1) = v64->__r_.__value_.__s.__data_[0];
            v64->__r_.__value_.__s.__data_[0] = v66;
            v64 = (v64 - 1);
            v67 = v65++ >= v64;
          }

          while (!v67);
        }
      }

      v68 = std::string::insert(&v144[1], 0, "exprtk.hpp:", 0xBuLL);
      v69 = *&v68->__r_.__value_.__l.__data_;
      v146 = v68->__r_.__value_.__r.__words[2];
      *v145 = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, &v151, v149, v145, &v156);
      v70 = *(a1 + 568);
      v71 = *(a1 + 560);
      v72 = 30 * ((v70 - v71) >> 3) - 1;
      if (v70 == v71)
      {
        v72 = 0;
      }

      if (v72 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v71 = *(a1 + 560);
        v70 = *(a1 + 568);
      }

      if (v70 == v71)
      {
        v74 = 0;
      }

      else
      {
        v73 = *(a1 + 592) + *(a1 + 584);
        v74 = *(v71 + 8 * (v73 / 0x1E)) + 136 * (v73 % 0x1E);
      }

LABEL_209:
      sub_C398C(v74, &v156);
      ++*(a1 + 592);
      if (v164 < 0)
      {
        operator delete(v163);
        if (v162 < 0)
        {
          goto LABEL_219;
        }

LABEL_211:
        if ((v160 & 0x80000000) == 0)
        {
          goto LABEL_212;
        }

LABEL_220:
        operator delete(v159);
        if (v158 < 0)
        {
          goto LABEL_221;
        }

LABEL_213:
        if ((SHIBYTE(v146) & 0x80000000) == 0)
        {
          goto LABEL_214;
        }

LABEL_222:
        operator delete(v145[0]);
        if (SHIBYTE(v144[1].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_223;
        }

LABEL_215:
        if ((SHIBYTE(v150) & 0x80000000) == 0)
        {
          goto LABEL_216;
        }

LABEL_224:
        operator delete(v149[0]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_225;
        }

LABEL_3:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_226:
          operator delete(v147.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if ((v162 & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

LABEL_219:
        operator delete(v161);
        if (v160 < 0)
        {
          goto LABEL_220;
        }

LABEL_212:
        if ((v158 & 0x80000000) == 0)
        {
          goto LABEL_213;
        }

LABEL_221:
        operator delete(v157);
        if (SHIBYTE(v146) < 0)
        {
          goto LABEL_222;
        }

LABEL_214:
        if ((SHIBYTE(v144[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_215;
        }

LABEL_223:
        operator delete(v144[1].__r_.__value_.__l.__data_);
        if (SHIBYTE(v150) < 0)
        {
          goto LABEL_224;
        }

LABEL_216:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_3;
        }

LABEL_225:
        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_226;
        }
      }

LABEL_4:
      v4 = 0;
      if ((SHIBYTE(v153) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_319:
      operator delete(v152);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      continue;
    }

    LODWORD(v156) = v155[1];
    if (sub_2443C8(a1 + 184, &v156))
    {
      if (!v142)
      {
        goto LABEL_126;
      }

      if ((*(*v142 + 32))(v142) != 17 && (*(*v142 + 32))(v142) != 18)
      {
        (*(*v142 + 8))(v142);
LABEL_126:
        v142 = 0;
      }

      sub_C9E48(LODWORD(v155[1]), &v147);
      v53 = std::string::insert(&v147, 0, "ERR010 - Invalid inequality operation '", 0x27uLL);
      v54 = *&v53->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      v55 = std::string::append(&__p, "'", 1uLL);
      v56 = *&v55->__r_.__value_.__l.__data_;
      v150 = v55->__r_.__value_.__r.__words[2];
      *v149 = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      memset(&v144[1], 0, sizeof(std::string));
      v57 = 20803;
      do
      {
        if (SHIBYTE(v144[1].__r_.__value_.__r.__words[2]) < 0)
        {
          v61 = (v144[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v144[1].__r_.__value_.__l.__size_ == v61)
          {
            if ((v144[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_136:
            operator new();
          }

          v58 = v144[1].__r_.__value_.__l.__size_;
          v59 = v144[1].__r_.__value_.__l.__data_;
          ++v144[1].__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v144[1].__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_136;
          }

          v58 = HIBYTE(v144[1].__r_.__value_.__r.__words[2]);
          *(&v144[1].__r_.__value_.__s + 23) = (*(&v144[1].__r_.__value_.__s + 23) + 1) & 0x7F;
          v59 = &v144[1];
        }

        v60 = v59 + v58;
        *v60 = (v57 % 0xA) | 0x30;
        v60[1] = 0;
        v51 = v57 > 9;
        v57 /= 0xAu;
      }

      while (v51);
      v84 = HIBYTE(v144[1].__r_.__value_.__r.__words[2]);
      v85 = &v144[1];
      if ((v144[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v84 = v144[1].__r_.__value_.__l.__size_;
        v85 = v144[1].__r_.__value_.__l.__data_;
      }

      if (v84)
      {
        v86 = (v85 + v84 - 1);
        if (v86 > v85)
        {
          v87 = &v85->__r_.__value_.__s.__data_[1];
          do
          {
            v88 = *(v87 - 1);
            *(v87 - 1) = v86->__r_.__value_.__s.__data_[0];
            v86->__r_.__value_.__s.__data_[0] = v88;
            v86 = (v86 - 1);
            v67 = v87++ >= v86;
          }

          while (!v67);
        }
      }

      v89 = std::string::insert(&v144[1], 0, "exprtk.hpp:", 0xBuLL);
      v90 = *&v89->__r_.__value_.__l.__data_;
      v146 = v89->__r_.__value_.__r.__words[2];
      *v145 = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, &v151, v149, v145, &v156);
      v91 = *(a1 + 568);
      v92 = *(a1 + 560);
      v93 = 30 * ((v91 - v92) >> 3) - 1;
      if (v91 == v92)
      {
        v93 = 0;
      }

      if (v93 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v92 = *(a1 + 560);
        v91 = *(a1 + 568);
      }

      if (v91 == v92)
      {
        v74 = 0;
      }

      else
      {
        v94 = *(a1 + 592) + *(a1 + 584);
        v74 = *(v92 + 8 * (v94 / 0x1E)) + 136 * (v94 % 0x1E);
      }

      goto LABEL_209;
    }

    if (sub_24455C(a1 + 184, v155[1]))
    {
      if (!v142)
      {
        goto LABEL_156;
      }

      if ((*(*v142 + 32))(v142) != 17 && (*(*v142 + 32))(v142) != 18)
      {
        (*(*v142 + 8))(v142);
LABEL_156:
        v142 = 0;
      }

      sub_C9E48(LODWORD(v155[1]), &v147);
      v75 = std::string::insert(&v147, 0, "ERR011 - Invalid assignment operation '", 0x27uLL);
      v76 = *&v75->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v76;
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      v77 = std::string::append(&__p, "'", 1uLL);
      v78 = *&v77->__r_.__value_.__l.__data_;
      v150 = v77->__r_.__value_.__r.__words[2];
      *v149 = v78;
      v77->__r_.__value_.__l.__size_ = 0;
      v77->__r_.__value_.__r.__words[2] = 0;
      v77->__r_.__value_.__r.__words[0] = 0;
      memset(&v144[1], 0, sizeof(std::string));
      v79 = 20815;
      do
      {
        if (SHIBYTE(v144[1].__r_.__value_.__r.__words[2]) < 0)
        {
          v83 = (v144[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v144[1].__r_.__value_.__l.__size_ == v83)
          {
            if ((v144[1].__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_166:
            operator new();
          }

          v80 = v144[1].__r_.__value_.__l.__size_;
          v81 = v144[1].__r_.__value_.__l.__data_;
          ++v144[1].__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v144[1].__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_166;
          }

          v80 = HIBYTE(v144[1].__r_.__value_.__r.__words[2]);
          *(&v144[1].__r_.__value_.__s + 23) = (*(&v144[1].__r_.__value_.__s + 23) + 1) & 0x7F;
          v81 = &v144[1];
        }

        v82 = v81 + v80;
        *v82 = (v79 % 0xA) | 0x30;
        v82[1] = 0;
        v51 = v79 > 9;
        v79 /= 0xAu;
      }

      while (v51);
      v97 = HIBYTE(v144[1].__r_.__value_.__r.__words[2]);
      v98 = &v144[1];
      if ((v144[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v97 = v144[1].__r_.__value_.__l.__size_;
        v98 = v144[1].__r_.__value_.__l.__data_;
      }

      if (v97)
      {
        v99 = (v98 + v97 - 1);
        if (v99 > v98)
        {
          v100 = &v98->__r_.__value_.__s.__data_[1];
          do
          {
            v101 = *(v100 - 1);
            *(v100 - 1) = v99->__r_.__value_.__s.__data_[0];
            v99->__r_.__value_.__s.__data_[0] = v101;
            v99 = (v99 - 1);
            v67 = v100++ >= v99;
          }

          while (!v67);
        }
      }

      v102 = std::string::insert(&v144[1], 0, "exprtk.hpp:", 0xBuLL);
      v103 = *&v102->__r_.__value_.__l.__data_;
      v146 = v102->__r_.__value_.__r.__words[2];
      *v145 = v103;
      v102->__r_.__value_.__l.__size_ = 0;
      v102->__r_.__value_.__r.__words[2] = 0;
      v102->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, &v151, v149, v145, &v156);
      v104 = *(a1 + 568);
      v105 = *(a1 + 560);
      v106 = 30 * ((v104 - v105) >> 3) - 1;
      if (v104 == v105)
      {
        v106 = 0;
      }

      if (v106 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v105 = *(a1 + 560);
        v104 = *(a1 + 568);
      }

      if (v104 == v105)
      {
        v74 = 0;
      }

      else
      {
        v107 = *(a1 + 592) + *(a1 + 584);
        v74 = *(v105 + 8 * (v107 / 0x1E)) + 136 * (v107 % 0x1E);
      }

      goto LABEL_209;
    }

    v95 = sub_C5A5C(a1, HIDWORD(v155[0]));
    if (!v95)
    {
      goto LABEL_239;
    }

    if (v142)
    {
      v134 = (*(*v142 + 32))(v142) == 15;
      v96 = v142;
      if (v134)
      {
        goto LABEL_187;
      }
    }

    if ((*(*v95 + 32))(v95) == 15)
    {
      v96 = v142;
      if (v142)
      {
LABEL_187:
        if ((*(*v96 + 32))(v96) != 17 && (*(*v142 + 32))(v142) != 18)
        {
          (*(*v142 + 8))(v142);
        }
      }

      if ((*(*v95 + 32))(v95) != 17 && (*(*v95 + 32))(v95) != 18)
      {
        (*(*v95 + 8))(v95);
      }

      operator new();
    }

    if (!v142)
    {
      v142 = 0;
LABEL_239:
      if (!*(a1 + 592))
      {
        goto LABEL_240;
      }

      goto LABEL_302;
    }

    v156 = v142;
    v157 = v95;
    v142 = sub_EFB10(a1 + 344, &v155[1], &v156);
    if (v142)
    {
      if (a2 || *v141 != 63 || (v142 = sub_CA254(a1, v142)) != 0)
      {
        if (!*(a1 + 592))
        {
          if ((v108 = (*(*v142 + 32))(v142), v108 <= 0x21) && ((1 << v108) & 0x388FC0000) != 0 || v108 == 123)
          {
            v109 = v142;
            if (*v141 == 91)
            {
              v109 = 0;
            }

            v142 = v109;
          }
        }
      }

      else
      {
        v142 = 0;
      }

      v4 = 1;
      if ((SHIBYTE(v153) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_319;
    }

    v95 = v157;
    v142 = v156;
    if (*(a1 + 592))
    {
      goto LABEL_302;
    }

LABEL_240:
    v137 = v95;
    if (*(a1 + 871) < 0)
    {
      v110 = *(a1 + 856);
      if (v110)
      {
        sub_325C(v149, *v139, v110);
        v138 = 0;
        goto LABEL_259;
      }

LABEL_245:
      if (v153 >= 0)
      {
        v111 = HIBYTE(v153);
      }

      else
      {
        v111 = *(&v152 + 1);
      }

      if (v111 + 42 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v111 + 42 > 0x16)
      {
        operator new();
      }

      qmemcpy(v144, "ERR013 - General parsing error at token: '", 42);
      if (v153 >= 0)
      {
        v112 = &v152;
      }

      else
      {
        v112 = v152;
      }

      memmove(&v144[1].__r_.__value_.__r.__words[2] + 2, v112, v111);
      *(&v144[1].__r_.__value_.__r.__words[2] + v111 + 2) = 0;
      v113 = std::string::append(v144, "'", 1uLL);
      v114 = *&v113->__r_.__value_.__l.__data_;
      v150 = v113->__r_.__value_.__r.__words[2];
      *v149 = v114;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      v113->__r_.__value_.__r.__words[0] = 0;
      v138 = 1;
      goto LABEL_259;
    }

    if (!*(a1 + 871))
    {
      goto LABEL_245;
    }

    v138 = 0;
    *v149 = *v139;
    v150 = *(a1 + 864);
LABEL_259:
    memset(&v147, 0, sizeof(v147));
    v115 = 20857;
    do
    {
      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        v119 = (v147.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v147.__r_.__value_.__l.__size_ == v119)
        {
          if ((v147.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_268:
          operator new();
        }

        v116 = v147.__r_.__value_.__l.__size_;
        v117 = v147.__r_.__value_.__r.__words[0];
        ++v147.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v147.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_268;
        }

        v116 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
        *(&v147.__r_.__value_.__s + 23) = (*(&v147.__r_.__value_.__s + 23) + 1) & 0x7F;
        v117 = &v147;
      }

      v118 = v117 + v116;
      *v118 = (v115 % 0xA) | 0x30;
      v118[1] = 0;
      v51 = v115 > 9;
      v115 /= 0xAu;
    }

    while (v51);
    v120 = HIBYTE(v147.__r_.__value_.__r.__words[2]);
    v121 = &v147;
    if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v120 = v147.__r_.__value_.__l.__size_;
      v121 = v147.__r_.__value_.__r.__words[0];
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
          v67 = v123++ >= v122;
        }

        while (!v67);
      }
    }

    v125 = std::string::insert(&v147, 0, "exprtk.hpp:", 0xBuLL);
    v95 = v137;
    v126 = *&v125->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, &v151, v149, &__p.__r_.__value_.__l.__data_, &v156);
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

    sub_C398C(v131, &v156);
    ++*(a1 + 592);
    if ((v164 & 0x80000000) == 0)
    {
      if ((v162 & 0x80000000) == 0)
      {
        goto LABEL_286;
      }

LABEL_294:
      operator delete(v161);
      if (v160 < 0)
      {
        goto LABEL_295;
      }

LABEL_287:
      if ((v158 & 0x80000000) == 0)
      {
        goto LABEL_288;
      }

LABEL_296:
      operator delete(v157);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_297;
      }

LABEL_289:
      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_290;
      }

LABEL_298:
      operator delete(v147.__r_.__value_.__l.__data_);
      if (SHIBYTE(v150) < 0)
      {
        goto LABEL_299;
      }

LABEL_291:
      if (!v138)
      {
        goto LABEL_302;
      }

LABEL_300:
      if (SHIBYTE(v144[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v144[0].__r_.__value_.__l.__data_);
      }

      goto LABEL_302;
    }

    operator delete(v163);
    if (v162 < 0)
    {
      goto LABEL_294;
    }

LABEL_286:
    if ((v160 & 0x80000000) == 0)
    {
      goto LABEL_287;
    }

LABEL_295:
    operator delete(v159);
    if (v158 < 0)
    {
      goto LABEL_296;
    }

LABEL_288:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_289;
    }

LABEL_297:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_298;
    }

LABEL_290:
    if ((SHIBYTE(v150) & 0x80000000) == 0)
    {
      goto LABEL_291;
    }

LABEL_299:
    operator delete(v149[0]);
    if (v138)
    {
      goto LABEL_300;
    }

LABEL_302:
    if (v142)
    {
      if ((*(*v142 + 32))(v142) == 17 || (*(*v142 + 32))(v142) == 18)
      {
        if (!v95)
        {
          goto LABEL_4;
        }

        goto LABEL_309;
      }

      (*(*v142 + 8))(v142);
    }

    v142 = 0;
    if (!v95)
    {
      goto LABEL_4;
    }

LABEL_309:
    if ((*(*v95 + 32))(v95) == 17 || (*(*v95 + 32))(v95) == 18)
    {
      goto LABEL_4;
    }

    (*(*v95 + 8))(v95);
    v4 = 0;
    if (SHIBYTE(v153) < 0)
    {
      goto LABEL_319;
    }

LABEL_5:
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_71:
  LOBYTE(v31) = (v5 & 0x80u) != 0;
  if ((v5 & 0x80u) != 0)
  {
    v5 = v6;
  }

  if (v5 == 2)
  {
    v32 = 0;
    while (1)
    {
      v33 = *__dst;
      if ((v31 & 1) == 0)
      {
        v33 = a1 + 112;
      }

      v34 = __tolower(*(v33 + v32));
      if (v34 != __tolower(byte_22685D0[v32]))
      {
        break;
      }

      ++v32;
      v35 = *(a1 + 135);
      v31 = v35 >> 63;
      if ((v35 & 0x80000000) != 0)
      {
        v35 = *(a1 + 120);
      }

      if (v32 >= v35)
      {
        goto LABEL_83;
      }
    }
  }

  if (sub_BCB2C(__dst, &unk_2268690))
  {
LABEL_83:
    v155[0] = 0x200000001;
    v36 = 24;
LABEL_84:
    LODWORD(v155[1]) = v36;
LABEL_85:
    v14 = 1;
    goto LABEL_86;
  }

  if (sub_BCB2C(__dst, &unk_22685E8))
  {
    v155[0] = 0x200000001;
    LODWORD(v155[1]) = 25;
    goto LABEL_85;
  }

  if (sub_BCB2C(__dst, &unk_2268600))
  {
    v155[0] = 0x200000001;
    v36 = 26;
    goto LABEL_84;
  }

  if (sub_BCB2C(__dst, "xnor"))
  {
    v155[0] = 0x200000001;
    v36 = 27;
    goto LABEL_84;
  }

  if (sub_BCB2C(__dst, &unk_2268630))
  {
    v155[0] = 0x400000004;
    v132 = 87;
LABEL_329:
    LODWORD(v155[1]) = v132;
    v14 = 4;
    goto LABEL_86;
  }

  if (sub_BCB2C(__dst, "like"))
  {
    v155[0] = 0x400000004;
    v132 = 88;
    goto LABEL_329;
  }

  if (sub_BCB2C(__dst, "ilike"))
  {
    v155[0] = 0x400000004;
    v132 = 89;
    goto LABEL_329;
  }

  if (sub_BCB2C(__dst, &unk_22686A8))
  {
    v14 = v155[0];
    goto LABEL_86;
  }

LABEL_332:
  if (!v142)
  {
    return 0;
  }

  if (!*(a1 + 592))
  {
    v133 = (*(*v142 + 32))(v142);
    v134 = v133 > 0x21 || ((1 << v133) & 0x388FC0000) == 0;
    if (!v134 || v133 == 123)
    {
      v135 = v142;
      if (*v141 == 91)
      {
        return 0;
      }

      return v135;
    }
  }

  return v142;
}

void sub_C7900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, _Unwind_Exception *exception_object, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_C7D68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1794();
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

    sub_1808();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_C7E80@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = result[10];
  v6 = result[12];
  if (v5 + *(a2 + 32) >= v6)
  {
    v7 = result[12];
  }

  else
  {
    v7 = (v5 + *(a2 + 32));
  }

  v8 = (v5 + *(a3 + 32));
  if (v8 >= v6)
  {
    v9 = result[12];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 - v7;
  if ((v9 - v7) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v10 > 0x16)
  {
    operator new();
  }

  *(a4 + 23) = v10;
  if (v9 != v7)
  {
    result = memmove(a4, v7, v9 - v7);
  }

  *(a4 + v10) = 0;
  v11 = *(a4 + 23);
  v12 = *(a4 + 23);
  v13 = v11 < 0;
  v14 = a4[1];
  if (v11 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = a4[1];
  }

  if (v15)
  {
    v16 = 0;
    v17 = *a4;
    do
    {
      if (v13)
      {
        v19 = v17;
      }

      else
      {
        v19 = a4;
      }

      v20 = *(v19 + v16);
      if ((v20 - 8) < 6 || v20 == 32)
      {
        *(v19 + v16) = 32;
        v12 = *(a4 + 23);
        v17 = *a4;
        v14 = a4[1];
      }

      ++v16;
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) == 0)
      {
        v18 = v12;
      }

      else
      {
        v18 = v14;
      }
    }

    while (v16 < v18);
  }

  return result;
}

BOOL sub_C7FD4(uint64_t a1, int *a2, int a3)
{
  v3 = *(a1 + 104);
  v4 = *a2;
  if (a3 == 1 && v3 == v4)
  {
    v5 = *(a1 + 24);
    if (*(a1 + 8) == v5)
    {
      v5 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v6 = (a1 + 48);
      v7 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_6:
        if ((v7 & 0x80) == 0)
        {
          v8 = *v6;
          *(a1 + 128) = *(v6 + 2);
          *(a1 + 112) = v8;
          goto LABEL_18;
        }

        v11 = a1;
        sub_13A68((a1 + 112), *v6, *(v5 + 16));
LABEL_17:
        a1 = v11;
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 24) = v5 + 40;
      v6 = (v5 + 8);
      *(a1 + 104) = *v5;
      if (a1 + 104 == v5)
      {
LABEL_18:
        *(a1 + 136) = *(v5 + 32);
        return v3 == v4;
      }

      v7 = *(v5 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    if ((v7 & 0x80u) == 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = *v6;
    }

    if ((v7 & 0x80u) == 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = *(v5 + 16);
    }

    v11 = a1;
    sub_13B38(a1 + 112, v9, v10);
    goto LABEL_17;
  }

  return v3 == v4;
}

uint64_t sub_C80D0(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    if (v3 - v4 == 8)
    {
      return *v4;
    }

    v8 = 0;
    while (1)
    {
      v10 = *(v4 + 8 * v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      if ((*(*v10 + 32))(v10) == 17)
      {
        goto LABEL_6;
      }

      v4 = *a2;
      v11 = *(*a2 + 8 * v8);
      if (!v11)
      {
        goto LABEL_19;
      }

      if ((*(*v11 + 32))(v11) == 15)
      {
        goto LABEL_29;
      }

      v4 = *a2;
      v12 = *(*a2 + 8 * v8);
      if (!v12)
      {
        goto LABEL_19;
      }

      if ((*(*v12 + 32))(v12) == 142)
      {
        goto LABEL_29;
      }

      v4 = *a2;
      v13 = *(*a2 + 8 * v8);
      if (!v13)
      {
        goto LABEL_19;
      }

      if ((*(*v13 + 32))(v13) == 143)
      {
LABEL_29:
        operator new();
      }

      v4 = *a2;
      v14 = *(*a2 + 8 * v8);
      if (!v14 || (v15 = (*(*v14 + 32))(v14), v4 = *a2, v15 != 2) && ((v16 = *(v4 + 8 * v8)) == 0 || (v17 = (*(*v16 + 32))(v16), v4 = *a2, v17 != 1)))
      {
LABEL_19:
        if ((*(*a3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
        {
          operator new();
        }
      }

      v18 = *(v4 + 8 * v8);
      if (v18 && (*(*v18 + 32))(v18) != 17)
      {
        v19 = *(v4 + 8 * v8);
        if (!v19)
        {
          goto LABEL_27;
        }

        if ((*(*v19 + 32))(v19) != 18)
        {
          v20 = *(v4 + 8 * v8);
          if (v20)
          {
            (*(*v20 + 8))(v20);
          }

LABEL_27:
          *(v4 + 8 * v8) = 0;
        }
      }

LABEL_6:
      ++v8;
      v4 = *a2;
      v9 = a2[1];
      if (v8 >= ((v9 - *a2) >> 3) - 1)
      {
        operator new();
      }
    }
  }

  return 0;
}

void sub_C8790(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C87BC(uint64_t a1, int a2)
{
  v94 = 0;
  v5 = (a1 + 104);
  v4 = *(a1 + 104);
  if (v4 > 42)
  {
    if (v4 <= 90)
    {
      if (v4 == 43)
      {
        sub_C26B0(a1);
        v10 = sub_C5A5C(a1, 13);
      }

      else
      {
        if (v4 != 45)
        {
          goto LABEL_54;
        }

        sub_C26B0(a1);
        v8 = sub_C5A5C(a1, 11);
        v94 = v8;
        if (!v8)
        {
          goto LABEL_36;
        }

        v9 = v8;
        if ((*(*v8 + 32))(v8) == 75)
        {
          if (sub_CC64C(a1, &v94))
          {
            goto LABEL_36;
          }

          v9 = v94;
        }

        LODWORD(__p[1].__r_.__value_.__r.__words[1]) = 52;
        v95 = v9;
        v10 = sub_EF888(a1 + 344, &__p[1].__r_.__value_.__r.__words[1], &v95);
      }

      goto LABEL_35;
    }

    if (v4 != 91)
    {
      if (v4 != 123)
      {
        goto LABEL_54;
      }

      v15 = *(a1 + 24);
      if (*(a1 + 8) == v15)
      {
        v15 = a1 + 40;
        *(a1 + 104) = *(a1 + 40);
        v16 = a1 + 48;
        v17 = *(a1 + 71);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_30:
          if ((v17 & 0x80) != 0)
          {
            sub_13A68((a1 + 112), *v16, *(v15 + 16));
          }

          else
          {
            v18 = *v16;
            *(a1 + 128) = *(v16 + 16);
            *(a1 + 112) = v18;
          }

          goto LABEL_161;
        }
      }

      else
      {
        *(a1 + 24) = v15 + 40;
        v16 = v15 + 8;
        *(a1 + 104) = *v15;
        if (v5 == v15)
        {
          goto LABEL_161;
        }

        v17 = *(v15 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }
      }

      if ((v17 & 0x80u) == 0)
      {
        v32 = v16;
      }

      else
      {
        v32 = *v16;
      }

      if ((v17 & 0x80u) == 0)
      {
        v33 = v17;
      }

      else
      {
        v33 = *(v15 + 16);
      }

      sub_13B38(a1 + 112, v32, v33);
LABEL_161:
      *(a1 + 136) = *(v15 + 32);
      result = sub_C5A5C(a1, 0);
      v94 = result;
      if (!result)
      {
        return result;
      }

      LODWORD(v95) = 125;
      if (sub_C7FD4(a1, &v95, 1))
      {
        LODWORD(v95) = 123;
        if ((sub_CBF68(a1, &v95, &v94) & 1) == 0)
        {
          goto LABEL_258;
        }

        goto LABEL_36;
      }

      std::operator+<char>();
      sub_30F54("'", __p, &__p[1].__r_.__value_.__r.__words[1]);
      sub_C00FC(0x64C0u, &v89);
      sub_23E08("exprtk.hpp:", &v89, &v90);
      sub_C3328(1, v5, &__p[1].__r_.__value_.__l.__size_, &v90.__r_.__value_.__l.__data_, &v95);
      sub_C003C(a1, &v95);
      sub_C0260(&v95);
      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_167:
          if ((SHIBYTE(v92) & 0x80000000) == 0)
          {
            goto LABEL_168;
          }

LABEL_213:
          operator delete(__p[1].__r_.__value_.__l.__size_);
          if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_210;
        }
      }

      else if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_167;
      }

      operator delete(v89.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
LABEL_168:
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_147;
        }

        goto LABEL_210;
      }

      goto LABEL_213;
    }

    v23 = *(a1 + 24);
    if (*(a1 + 8) == v23)
    {
      v23 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v24 = a1 + 48;
      v25 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_52:
        if ((v25 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v24, *(v23 + 16));
        }

        else
        {
          v26 = *v24;
          *(a1 + 128) = *(v24 + 16);
          *(a1 + 112) = v26;
        }

        goto LABEL_138;
      }
    }

    else
    {
      *(a1 + 24) = v23 + 40;
      v24 = v23 + 8;
      *(a1 + 104) = *v23;
      if (v5 == v23)
      {
        goto LABEL_138;
      }

      v25 = *(v23 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }
    }

    if ((v25 & 0x80u) == 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = *v24;
    }

    if ((v25 & 0x80u) == 0)
    {
      v29 = v25;
    }

    else
    {
      v29 = *(v23 + 16);
    }

    sub_13B38(a1 + 112, v28, v29);
LABEL_138:
    *(a1 + 136) = *(v23 + 32);
    result = sub_C5A5C(a1, 0);
    v94 = result;
    if (!result)
    {
      return result;
    }

    if (*v5 == 93)
    {
      v56 = *(a1 + 24);
      if (*(a1 + 8) == v56)
      {
        v56 = a1 + 40;
        *(a1 + 104) = *(a1 + 40);
        v57 = (a1 + 48);
      }

      else
      {
        *(a1 + 24) = v56 + 40;
        v57 = (v56 + 8);
        *(a1 + 104) = *v56;
        if (v5 == v56)
        {
          goto LABEL_254;
        }
      }

      v81 = *(v56 + 31);
      if (*(a1 + 135) < 0)
      {
        if (v81 >= 0)
        {
          v85 = v57;
        }

        else
        {
          v85 = *v57;
        }

        if (v81 >= 0)
        {
          v86 = *(v56 + 31);
        }

        else
        {
          v86 = *(v56 + 16);
        }

        sub_13B38(a1 + 112, v85, v86);
      }

      else if ((*(v56 + 31) & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v57, *(v56 + 16));
      }

      else
      {
        v82 = *v57;
        *(a1 + 128) = v57[2];
        *(a1 + 112) = v82;
      }

LABEL_254:
      *(a1 + 136) = *(v56 + 32);
      LODWORD(v95) = 91;
      if ((sub_CBF68(a1, &v95, &v94) & 1) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_36;
    }

    std::operator+<char>();
    sub_30F54("'", __p, &__p[1].__r_.__value_.__r.__words[1]);
    sub_C00FC(0x64A7u, &v89);
    sub_23E08("exprtk.hpp:", &v89, &v90);
    sub_C3328(1, v5, &__p[1].__r_.__value_.__l.__size_, &v90.__r_.__value_.__l.__data_, &v95);
    sub_C003C(a1, &v95);
    sub_C0260(&v95);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_145:
        if ((SHIBYTE(v92) & 0x80000000) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_209;
      }
    }

    else if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

    operator delete(v89.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
LABEL_146:
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_147:
        sub_C9D74(a1 + 432, &v94, 0);
        return 0;
      }

LABEL_210:
      operator delete(__p[0].__r_.__value_.__l.__data_);
      goto LABEL_147;
    }

LABEL_209:
    operator delete(__p[1].__r_.__value_.__l.__size_);
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_210;
  }

  if (v4 > 7)
  {
    if (v4 != 8)
    {
      if (v4 != 40)
      {
        goto LABEL_54;
      }

      v11 = *(a1 + 24);
      if (*(a1 + 8) == v11)
      {
        v11 = a1 + 40;
        *(a1 + 104) = *(a1 + 40);
        v12 = a1 + 48;
        v13 = *(a1 + 71);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
LABEL_23:
          if ((v13 & 0x80) != 0)
          {
            sub_13A68((a1 + 112), *v12, *(v11 + 16));
          }

          else
          {
            v14 = *v12;
            *(a1 + 128) = *(v12 + 16);
            *(a1 + 112) = v14;
          }

          goto LABEL_149;
        }
      }

      else
      {
        *(a1 + 24) = v11 + 40;
        v12 = v11 + 8;
        *(a1 + 104) = *v11;
        if (v5 == v11)
        {
          goto LABEL_149;
        }

        v13 = *(v11 + 31);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }
      }

      if ((v13 & 0x80u) == 0)
      {
        v30 = v12;
      }

      else
      {
        v30 = *v12;
      }

      if ((v13 & 0x80u) == 0)
      {
        v31 = v13;
      }

      else
      {
        v31 = *(v11 + 16);
      }

      sub_13B38(a1 + 112, v30, v31);
LABEL_149:
      *(a1 + 136) = *(v11 + 32);
      result = sub_C5A5C(a1, 0);
      v94 = result;
      if (!result)
      {
        return result;
      }

      if (*v5 == 41)
      {
        v58 = *(a1 + 24);
        if (*(a1 + 8) == v58)
        {
          v58 = a1 + 40;
          *(a1 + 104) = *(a1 + 40);
          v59 = (a1 + 48);
        }

        else
        {
          *(a1 + 24) = v58 + 40;
          v59 = (v58 + 8);
          *(a1 + 104) = *v58;
          if (v5 == v58)
          {
            goto LABEL_257;
          }
        }

        v83 = *(v58 + 31);
        if (*(a1 + 135) < 0)
        {
          if (v83 >= 0)
          {
            v87 = v59;
          }

          else
          {
            v87 = *v59;
          }

          if (v83 >= 0)
          {
            v88 = *(v58 + 31);
          }

          else
          {
            v88 = *(v58 + 16);
          }

          sub_13B38(a1 + 112, v87, v88);
        }

        else if ((*(v58 + 31) & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v59, *(v58 + 16));
        }

        else
        {
          v84 = *v59;
          *(a1 + 128) = v59[2];
          *(a1 + 112) = v84;
        }

LABEL_257:
        *(a1 + 136) = *(v58 + 32);
        LODWORD(v95) = 40;
        if ((sub_CBF68(a1, &v95, &v94) & 1) == 0)
        {
LABEL_258:
          sub_C9D74(a1 + 432, &v94, 0);
          return 0;
        }

LABEL_36:
        v19 = v94;
        if (!a2 && v94)
        {
          if (*v5 != 63)
          {
            goto LABEL_41;
          }

          v19 = sub_CA254(a1, v94);
          v94 = v19;
        }

        if (!v19)
        {
          return v94;
        }

LABEL_41:
        if (!*(a1 + 592))
        {
          v20 = (*(*v19 + 32))(v19);
          v21 = v20 > 0x21 || ((1 << v20) & 0x388FC0000) == 0;
          if ((!v21 || v20 == 123) && *v5 == 91)
          {
            return 0;
          }
        }

        return v94;
      }

      if (*(a1 + 135) >= 0)
      {
        v60 = *(a1 + 135);
      }

      else
      {
        v60 = *(a1 + 120);
      }

      if (v60 + 35 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v60 + 35 > 0x16)
      {
        operator new();
      }

      qmemcpy(__p, "ERR197 - Expected ')' instead of: '", 35);
      if (*(a1 + 135) >= 0)
      {
        v61 = (a1 + 112);
      }

      else
      {
        v61 = *(a1 + 112);
      }

      memmove(&__p[1].__r_.__value_.__r.__words[1] + 3, v61, v60);
      *(&__p[1].__r_.__value_.__r.__words[1] + v60 + 3) = 0;
      v62 = std::string::append(__p, "'", 1uLL);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v92 = v62->__r_.__value_.__r.__words[2];
      *&__p[1].__r_.__value_.__r.__words[1] = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      v64 = 25742;
      memset(&v89, 0, sizeof(v89));
      do
      {
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          v68 = (v89.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v89.__r_.__value_.__l.__size_ == v68)
          {
            if ((v89.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              sub_3244();
            }

LABEL_184:
            operator new();
          }

          size = v89.__r_.__value_.__l.__size_;
          v66 = v89.__r_.__value_.__r.__words[0];
          ++v89.__r_.__value_.__l.__size_;
        }

        else
        {
          if (HIBYTE(v89.__r_.__value_.__r.__words[2]) == 22)
          {
            goto LABEL_184;
          }

          size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          *(&v89.__r_.__value_.__s + 23) = (*(&v89.__r_.__value_.__s + 23) + 1) & 0x7F;
          v66 = &v89;
        }

        v67 = v66 + size;
        *v67 = (v64 % 0xA) | 0x30;
        v67[1] = 0;
        v41 = v64 > 9;
        v64 /= 0xAu;
      }

      while (v41);
      v69 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      v70 = &v89;
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v69 = v89.__r_.__value_.__l.__size_;
        v70 = v89.__r_.__value_.__r.__words[0];
      }

      if (v69)
      {
        v71 = (v70 + v69 - 1);
        if (v71 > v70)
        {
          v72 = &v70->__r_.__value_.__s.__data_[1];
          do
          {
            v73 = *(v72 - 1);
            *(v72 - 1) = v71->__r_.__value_.__s.__data_[0];
            v71->__r_.__value_.__s.__data_[0] = v73;
            v71 = (v71 - 1);
            v48 = v72++ >= v71;
          }

          while (!v48);
        }
      }

      v74 = std::string::insert(&v89, 0, "exprtk.hpp:", 0xBuLL);
      v75 = *&v74->__r_.__value_.__l.__data_;
      v90.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
      *&v90.__r_.__value_.__l.__data_ = v75;
      v74->__r_.__value_.__l.__size_ = 0;
      v74->__r_.__value_.__r.__words[2] = 0;
      v74->__r_.__value_.__r.__words[0] = 0;
      sub_C3328(1, v5, &__p[1].__r_.__value_.__l.__size_, &v90.__r_.__value_.__l.__data_, &v95);
      v76 = *(a1 + 568);
      v77 = *(a1 + 560);
      v78 = 30 * ((v76 - v77) >> 3) - 1;
      if (v76 == v77)
      {
        v78 = 0;
      }

      if (v78 == *(a1 + 592) + *(a1 + 584))
      {
        sub_C35C4((a1 + 552));
        v77 = *(a1 + 560);
        v76 = *(a1 + 568);
      }

      if (v76 == v77)
      {
        v80 = 0;
      }

      else
      {
        v79 = *(a1 + 592) + *(a1 + 584);
        v80 = *(v77 + 8 * (v79 / 0x1E)) + 136 * (v79 % 0x1E);
      }

      sub_C398C(v80, &v95);
      ++*(a1 + 592);
      if (v103 < 0)
      {
        operator delete(v102);
        if ((v101 & 0x80000000) == 0)
        {
LABEL_218:
          if ((v99 & 0x80000000) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_228;
        }
      }

      else if ((v101 & 0x80000000) == 0)
      {
        goto LABEL_218;
      }

      operator delete(v100);
      if ((v99 & 0x80000000) == 0)
      {
LABEL_219:
        if ((v97 & 0x80000000) == 0)
        {
          goto LABEL_220;
        }

        goto LABEL_229;
      }

LABEL_228:
      operator delete(v98);
      if ((v97 & 0x80000000) == 0)
      {
LABEL_220:
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_230;
      }

LABEL_229:
      operator delete(v96);
      if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_221:
        if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

        goto LABEL_231;
      }

LABEL_230:
      operator delete(v90.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_222:
        if ((SHIBYTE(v92) & 0x80000000) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_232;
      }

LABEL_231:
      operator delete(v89.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
LABEL_223:
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_224;
        }

        goto LABEL_233;
      }

LABEL_232:
      operator delete(__p[1].__r_.__value_.__l.__size_);
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_224:
        result = v94;
        if (!v94)
        {
          return result;
        }

LABEL_234:
        if ((*(*result + 32))(result) != 17)
        {
          result = v94;
          if (!v94)
          {
            return result;
          }

          if ((*(*v94 + 32))(v94) != 18)
          {
            result = v94;
            if (!v94)
            {
              return result;
            }

            (*(*v94 + 8))(v94);
          }
        }

        return 0;
      }

LABEL_233:
      operator delete(__p[0].__r_.__value_.__l.__data_);
      result = v94;
      if (!v94)
      {
        return result;
      }

      goto LABEL_234;
    }

    v10 = sub_CB7AC(a1);
LABEL_35:
    v94 = v10;
    goto LABEL_36;
  }

  if (v4 == 6)
  {
    sub_3608D0(&__p[1].__r_.__value_.__s.__data_[8], "ERR200 - Premature end of expression[1]");
    sub_C00FC(0x64E8u, &v90);
    sub_23E08("exprtk.hpp:", &v90, __p);
    sub_C3328(1, v5, &__p[1].__r_.__value_.__l.__size_, &__p[0].__r_.__value_.__l.__data_, &v95);
    sub_C003C(a1, &v95);
    goto LABEL_55;
  }

  if (v4 != 7)
  {
LABEL_54:
    sub_3608D0(&__p[1].__r_.__value_.__s.__data_[8], "ERR201 - Premature end of expression[2]");
    sub_C00FC(0x64F2u, &v90);
    sub_23E08("exprtk.hpp:", &v90, __p);
    sub_C3328(1, v5, &__p[1].__r_.__value_.__l.__size_, &__p[0].__r_.__value_.__l.__data_, &v95);
    sub_C003C(a1, &v95);
LABEL_55:
    sub_C0260(&v95);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if ((SHIBYTE(v92) & 0x80000000) == 0)
        {
          return 0;
        }

LABEL_61:
        operator delete(__p[1].__r_.__value_.__l.__size_);
        return 0;
      }
    }

    else if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(v90.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_61;
  }

  v93 = 0;
  v6 = *(a1 + 112);
  v7 = *(a1 + 135);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 120);
  }

  else
  {
    v6 = (a1 + 112);
  }

  v95 = v6;
  if (sub_CCE68(&v95, &v6[v7], &v93))
  {
    operator new();
  }

  if (*(a1 + 135) >= 0)
  {
    v27 = *(a1 + 135);
  }

  else
  {
    v27 = *(a1 + 120);
  }

  if (v27 + 28 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v27 + 28 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "ERR196 - Failed to convert '", 28);
  if (*(a1 + 135) >= 0)
  {
    v34 = (a1 + 112);
  }

  else
  {
    v34 = *(a1 + 112);
  }

  memmove(__p[1].__r_.__value_.__r.__words + 4, v34, v27);
  *(__p[1].__r_.__value_.__r.__words + v27 + 4) = 0;
  v35 = std::string::append(__p, "' to a number", 0xDuLL);
  v36 = *&v35->__r_.__value_.__l.__data_;
  v92 = v35->__r_.__value_.__r.__words[2];
  *&__p[1].__r_.__value_.__r.__words[1] = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  v37 = 25715;
  memset(&v89, 0, sizeof(v89));
  do
  {
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      v42 = (v89.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v89.__r_.__value_.__l.__size_ == v42)
      {
        if ((v89.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_104:
        operator new();
      }

      v38 = v89.__r_.__value_.__l.__size_;
      v39 = v89.__r_.__value_.__r.__words[0];
      ++v89.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v89.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_104;
      }

      v38 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      *(&v89.__r_.__value_.__s + 23) = (*(&v89.__r_.__value_.__s + 23) + 1) & 0x7F;
      v39 = &v89;
    }

    v40 = v39 + v38;
    *v40 = (v37 % 0xA) | 0x30;
    v40[1] = 0;
    v41 = v37 > 9;
    v37 /= 0xAu;
  }

  while (v41);
  v43 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  v44 = &v89;
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = v89.__r_.__value_.__l.__size_;
    v44 = v89.__r_.__value_.__r.__words[0];
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

  v49 = std::string::insert(&v89, 0, "exprtk.hpp:", 0xBuLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v90.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v90.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(4, v5, &__p[1].__r_.__value_.__l.__size_, &v90.__r_.__value_.__l.__data_, &v95);
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

  sub_C398C(v55, &v95);
  ++*(a1 + 592);
  if (v103 < 0)
  {
    operator delete(v102);
    if ((v101 & 0x80000000) == 0)
    {
LABEL_122:
      if ((v99 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_131;
    }
  }

  else if ((v101 & 0x80000000) == 0)
  {
    goto LABEL_122;
  }

  operator delete(v100);
  if ((v99 & 0x80000000) == 0)
  {
LABEL_123:
    if ((v97 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_132;
  }

LABEL_131:
  operator delete(v98);
  if ((v97 & 0x80000000) == 0)
  {
LABEL_124:
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_133;
  }

LABEL_132:
  operator delete(v96);
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_125:
    if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_134;
  }

LABEL_133:
  operator delete(v90.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v89.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_126:
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_135;
  }

LABEL_134:
  operator delete(v89.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v92) & 0x80000000) == 0)
  {
LABEL_127:
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_136;
    }

    return 0;
  }

LABEL_135:
  operator delete(__p[1].__r_.__value_.__l.__size_);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_136:
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_C9B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a35 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a28 & 0x80000000) == 0)
    {
LABEL_11:
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a23);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_C9D74(uint64_t a1, uint64_t *a2, char a3)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 32))(result);
    if (result != 17)
    {
      result = *a2;
      if (!*a2 || (result = (*(*result + 32))(result), result != 18))
      {
        if ((a3 & 1) == 0)
        {
          result = *a2;
          if (*a2)
          {
            result = (*(*result + 8))(result);
          }

          *a2 = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_C9E48@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 2:
      a2[23] = 1;
      *a2 = 43;
      a2[1] = 0;
      break;
    case 3:
      a2[23] = 1;
      *a2 = 45;
      a2[1] = 0;
      break;
    case 4:
      a2[23] = 1;
      *a2 = 42;
      a2[1] = 0;
      break;
    case 5:
      a2[23] = 1;
      *a2 = 47;
      a2[1] = 0;
      break;
    case 6:
      a2[23] = 1;
      *a2 = 37;
      a2[1] = 0;
      break;
    case 7:
      a2[23] = 1;
      *a2 = 94;
      a2[1] = 0;
      break;
    case 14:
      a2[23] = 1;
      *a2 = 60;
      a2[1] = 0;
      break;
    case 15:
      a2[23] = 2;
      strcpy(a2, "<=");
      break;
    case 16:
      a2[23] = 2;
      strcpy(a2, "==");
      break;
    case 17:
      a2[23] = 1;
      *a2 = 61;
      a2[1] = 0;
      break;
    case 18:
      a2[23] = 2;
      strcpy(a2, "!=");
      break;
    case 19:
      a2[23] = 2;
      strcpy(a2, "<>");
      break;
    case 20:
      a2[23] = 2;
      strcpy(a2, ">=");
      break;
    case 21:
      a2[23] = 1;
      *a2 = 62;
      a2[1] = 0;
      break;
    case 81:
      a2[23] = 2;
      strcpy(a2, ":=");
      break;
    case 82:
      a2[23] = 2;
      strcpy(a2, "+=");
      break;
    case 83:
      a2[23] = 2;
      strcpy(a2, "-=");
      break;
    case 84:
      a2[23] = 2;
      strcpy(a2, "*=");
      break;
    case 85:
      a2[23] = 2;
      strcpy(a2, "/=");
      break;
    case 86:
      a2[23] = 2;
      strcpy(a2, "%=");
      break;
    default:
      a2[23] = 3;
      *a2 = 12110;
      a2[2] = 65;
      a2[3] = 0;
      break;
  }

  return result;
}

const void *sub_CA1C8(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v10 = *a3;
  v11 = v4;
  result = sub_EFB10(a1, a2, &v10);
  v9 = v11;
  *a3 = v10;
  *a4 = v9;
  return result;
}

uint64_t sub_CA254(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    operator new();
  }

  v4 = (a1 + 104);
  if (*(a1 + 104) != 63)
  {
    operator new();
  }

  v5 = *(a1 + 24);
  if (*(a1 + 8) != v5)
  {
    *(a1 + 24) = v5 + 40;
    v6 = (v5 + 8);
    *(a1 + 104) = *v5;
    if (v4 == v5)
    {
      goto LABEL_19;
    }

    v7 = *(v5 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if ((v7 & 0x80u) == 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = *v6;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v5 + 16);
    }

    sub_13B38(a1 + 112, v10, v11);
LABEL_19:
    *(a1 + 136) = *(v5 + 32);
    v9 = sub_C5A5C(a1, 0);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v5 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v6 = (a1 + 48);
  v7 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v7 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v6, *(v5 + 16));
    *(a1 + 136) = *(v5 + 32);
    v9 = sub_C5A5C(a1, 0);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v8 = *v6;
    *(a1 + 128) = v6[2];
    *(a1 + 112) = v8;
    *(a1 + 136) = *(v5 + 32);
    v9 = sub_C5A5C(a1, 0);
    if (!v9)
    {
LABEL_27:
      operator new();
    }
  }

LABEL_20:
  if (*v4 != 58)
  {
    operator new();
  }

  v12 = *(a1 + 24);
  if (*(a1 + 8) == v12)
  {
    v12 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v13 = (a1 + 48);
LABEL_29:
    v16 = *(v12 + 31);
    v14 = v9;
    if (*(a1 + 135) < 0)
    {
      if (v16 >= 0)
      {
        v18 = v13;
      }

      else
      {
        v18 = *v13;
      }

      if (v16 >= 0)
      {
        v19 = *(v12 + 31);
      }

      else
      {
        v19 = *(v12 + 16);
      }

      sub_13B38(a1 + 112, v18, v19);
      *(a1 + 136) = *(v12 + 32);
      v15 = sub_C5A5C(a1, 0);
      if (v15)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if ((*(v12 + 31) & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v13, *(v12 + 16));
        *(a1 + 136) = *(v12 + 32);
        v15 = sub_C5A5C(a1, 0);
        if (!v15)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v17 = *v13;
      *(a1 + 128) = v13[2];
      *(a1 + 112) = v17;
      *(a1 + 136) = *(v12 + 32);
      v15 = sub_C5A5C(a1, 0);
      if (v15)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    operator new();
  }

  *(a1 + 24) = v12 + 40;
  v13 = (v12 + 8);
  *(a1 + 104) = *v12;
  if (v4 != v12)
  {
    goto LABEL_29;
  }

  v14 = v9;
  *(a1 + 136) = *(v12 + 32);
  v15 = sub_C5A5C(a1, 0);
  if (!v15)
  {
    goto LABEL_44;
  }

LABEL_40:

  return sub_1D1A30(a1 + 344, a2, v14, v15);
}

void sub_CB628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a19 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a19 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  if ((a31 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a26);
  _Unwind_Resume(exception_object);
}

uint64_t sub_CB7AC(std::string::size_type a1)
{
  v2 = (a1 + 112);
  if (sub_CD690(a1, a1 + 112))
  {

    return sub_CDA04(a1);
  }

  if (sub_CF014(a1, v2))
  {

    return sub_CF288(a1);
  }

  v4 = *(a1 + 135);
  v5 = *(a1 + 120);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 135);
  }

  if (v5 == 2)
  {
    v6 = 0;
    v7 = v4 >> 63;
    while (1)
    {
      v8 = (v7 & 1) != 0 ? *v2 : v2;
      v9 = __tolower(*(v8 + v6));
      if (v9 != __tolower(aIf[v6]))
      {
        break;
      }

      ++v6;
      v10 = *(a1 + 135);
      v7 = v10 >> 63;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = *(a1 + 120);
      }

      if (v6 >= v10)
      {
        if (*(a1 + 240) && (a1 + 232) != sub_BC284(a1 + 224, v2))
        {
          break;
        }

        return sub_D0328(a1);
      }
    }
  }

  v11 = *(a1 + 135);
  v12 = *(a1 + 120);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = *(a1 + 135);
  }

  if (v12 == 5)
  {
    v13 = 0;
    v14 = v11 >> 63;
    while (1)
    {
      v15 = (v14 & 1) != 0 ? *v2 : v2;
      v16 = __tolower(*(v15 + v13));
      if (v16 != __tolower(aWhile_0[v13]))
      {
        break;
      }

      ++v13;
      v17 = *(a1 + 135);
      v14 = v17 >> 63;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = *(a1 + 120);
      }

      if (v13 >= v17)
      {
        if (*(a1 + 240) && (a1 + 232) != sub_BC284(a1 + 224, v2))
        {
          break;
        }

        return sub_D13DC(a1);
      }
    }
  }

  v18 = *(a1 + 135);
  v19 = *(a1 + 120);
  if ((v18 & 0x80000000) == 0)
  {
    v19 = *(a1 + 135);
  }

  if (v19 == 6)
  {
    v20 = 0;
    v21 = v18 >> 63;
    while (1)
    {
      v22 = (v21 & 1) != 0 ? *v2 : v2;
      v23 = __tolower(*(v22 + v20));
      if (v23 != __tolower(aRepeat_0[v20]))
      {
        break;
      }

      ++v20;
      v24 = *(a1 + 135);
      v21 = v24 >> 63;
      if ((v24 & 0x80000000) != 0)
      {
        v24 = *(a1 + 120);
      }

      if (v20 >= v24)
      {
        if (*(a1 + 240) && (a1 + 232) != sub_BC284(a1 + 224, v2))
        {
          break;
        }

        return sub_D28B8(a1);
      }
    }
  }

  v25 = *(a1 + 135);
  v26 = *(a1 + 120);
  if ((v25 & 0x80000000) == 0)
  {
    v26 = *(a1 + 135);
  }

  if (v26 == 3)
  {
    v27 = 0;
    v28 = v25 >> 63;
    while (1)
    {
      v29 = (v28 & 1) != 0 ? *v2 : v2;
      v30 = __tolower(*(v29 + v27));
      if (v30 != __tolower(byte_22690D8[v27]))
      {
        break;
      }

      ++v27;
      v31 = *(a1 + 135);
      v28 = v31 >> 63;
      if ((v31 & 0x80000000) != 0)
      {
        v31 = *(a1 + 120);
      }

      if (v27 >= v31)
      {
        if (*(a1 + 240) && (a1 + 232) != sub_BC284(a1 + 224, v2))
        {
          break;
        }

        return sub_D51BC(a1);
      }
    }
  }

  v32 = *(a1 + 135);
  v33 = *(a1 + 120);
  if ((v32 & 0x80000000) == 0)
  {
    v33 = *(a1 + 135);
  }

  if (v33 == 6)
  {
    v34 = 0;
    v35 = v32 >> 63;
    while (1)
    {
      v36 = (v35 & 1) != 0 ? *v2 : v2;
      v37 = __tolower(*(v36 + v34));
      if (v37 != __tolower(aSwitch_0[v34]))
      {
        break;
      }

      ++v34;
      v38 = *(a1 + 135);
      v35 = v38 >> 63;
      if ((v38 & 0x80000000) != 0)
      {
        v38 = *(a1 + 120);
      }

      if (v34 >= v38)
      {
        if (*(a1 + 240) && (a1 + 232) != sub_BC284(a1 + 224, v2))
        {
          break;
        }

        return sub_D88D4(a1);
      }
    }
  }

  LODWORD(v39) = *(a1 + 135);
  if ((v39 & 0x80000000) != 0)
  {
    if (*(a1 + 120) != 4 || (v40 = *v2, **v2 != 36))
    {
LABEL_104:
      LOBYTE(v45) = v39 < 0;
      v39 = v39;
      if (v39 < 0)
      {
        v39 = *(a1 + 120);
      }

      if (v39 == 4)
      {
        v46 = 0;
        while (1)
        {
          v47 = *v2;
          if ((v45 & 1) == 0)
          {
            v47 = v2;
          }

          v48 = __tolower(*(v47 + v46));
          if (v48 != __tolower(aNull_0[v46]))
          {
            break;
          }

          ++v46;
          v49 = *(a1 + 135);
          v45 = v49 >> 63;
          if ((v49 & 0x80000000) != 0)
          {
            v49 = *(a1 + 120);
          }

          if (v46 >= v49)
          {

            sub_DBA8C(a1);
          }
        }
      }

      if (sub_BCB2C(v2, &unk_2269120))
      {

        return sub_DBAD8(a1);
      }

      if (sub_BCB2C(v2, "swap"))
      {

        return sub_DD8C0(a1);
      }

      if ((sub_DFB84((a1 + 440)) & 1) != 0 || *(a1 + 880) != *(a1 + 888))
      {

        return sub_DFBD0(a1);
      }

      std::operator+<char>();
      sub_C00FC(0x644Du, &v50);
      sub_23E08("exprtk.hpp:", &v50, &__p);
      sub_C3328(5, a1 + 104, &v52, &__p.__r_.__value_.__l.__data_, v54);
      sub_C003C(a1, v54);
      sub_C0260(v54);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_132:
          if ((v53 & 0x80000000) == 0)
          {
            return 0;
          }

LABEL_136:
          operator delete(v52);
          return 0;
        }
      }

      else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_132;
      }

      operator delete(v50.__r_.__value_.__l.__data_);
      if ((v53 & 0x80000000) == 0)
      {
        return 0;
      }

      goto LABEL_136;
    }
  }

  else
  {
    if (v39 != 4)
    {
      goto LABEL_104;
    }

    v40 = v2;
    if (*v2 != 36)
    {
      goto LABEL_104;
    }
  }

  v41 = *(v40 + 1);
  v42 = __tolower(102);
  v43 = __tolower(v41);
  LODWORD(v39) = *(a1 + 135);
  if (v42 != v43)
  {
    goto LABEL_104;
  }

  if ((v39 & 0x80000000) != 0)
  {
    v44 = *v2;
    if (*(*v2 + 2) - 48 >= 0xA)
    {
      goto LABEL_104;
    }
  }

  else
  {
    v44 = v2;
    if (*(a1 + 114) - 48 > 9)
    {
      goto LABEL_104;
    }
  }

  if (*(v44 + 3) - 48 > 9)
  {
    goto LABEL_104;
  }

  return sub_DB490(a1);
}

void sub_CBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  sub_C0260(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a21);
  _Unwind_Resume(a1);
}

uint64_t sub_CBF68(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!*a3 || ((v4 = a2, v5 = (*(**a3 + 32))(*a3), result = 1, v5 <= 0x21) ? (v7 = ((1 << v5) & 0x388FC0000) == 0) : (v7 = 1), v7 && (a2 = v4, v5 != 123)))
  {
    v8 = *a2;
    if (*a2 != 40)
    {
      if (v8 == 91)
      {
        v9 = *(a1 + 104);
        if (v9 != 40 && v9 != 123 && v9 != 91)
        {
          return 1;
        }

        goto LABEL_18;
      }

      if (v8 != 123)
      {
        return 1;
      }
    }

    v9 = *(a1 + 104);
    if (v9 != 40 && v9 != 91 && v9 != 123)
    {
      return 1;
    }

LABEL_18:
    if ((*(a1 + 189) & 1) == 0)
    {
      operator new();
    }

    v11 = *a1;
    v10 = *(a1 + 8);
    if (*a1 != v10)
    {
      v12 = *(a1 + 24);
      if (v10 != v12)
      {
        v24 = *v12;
        if (*(v12 + 31) < 0)
        {
          sub_325C(&v25, *(v12 + 8), *(v12 + 16));
          v14 = *(a1 + 24);
        }

        else
        {
          v13 = *(v12 + 8);
          v26 = *(v12 + 24);
          v25 = v13;
          v14 = v12;
        }

        v27 = *(v12 + 32);
        v24 = v9;
        *(a1 + 24) = sub_20A044(a1, v14, &v24);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        v11 = *a1;
        v10 = *(a1 + 8);
      }
    }

    if (v11 != v10)
    {
      v15 = *(a1 + 24);
      if (v10 != v15)
      {
        v24 = *v15;
        if (*(v15 + 31) < 0)
        {
          sub_325C(&v25, *(v15 + 8), *(v15 + 16));
          v17 = *(a1 + 24);
        }

        else
        {
          v16 = *(v15 + 8);
          v26 = *(v15 + 24);
          v25 = v16;
          v17 = v15;
        }

        v27 = *(v15 + 32);
        v24 = 42;
        *(a1 + 24) = sub_20A044(a1, v17, &v24);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        v10 = *(a1 + 8);
      }
    }

    v18 = *(a1 + 24);
    if (v10 == v18)
    {
      v18 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v19 = (a1 + 48);
      v20 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      *(a1 + 24) = v18 + 40;
      v19 = (v18 + 8);
      *(a1 + 104) = *v18;
      if (a1 + 104 == v18)
      {
LABEL_50:
        *(a1 + 136) = *(v18 + 32);
        return 1;
      }

      v20 = *(v18 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_39:
        if ((v20 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v19, *(v18 + 16));
        }

        else
        {
          v21 = *v19;
          *(a1 + 128) = *(v19 + 2);
          *(a1 + 112) = v21;
        }

        goto LABEL_50;
      }
    }

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

    sub_13B38(a1 + 112, v22, v23);
    goto LABEL_50;
  }

  return result;
}

void sub_CC5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_CC64C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if (v5)
    {
      v27 = 0;
      v6 = v5;
      v7 = (*(*v5 + 24))(v5, &v27);
      v6[16] = 0;
      v8 = *a2;
      if (!*a2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v10 = (*(*result + 48))(result);
      v12 = a1[55];
      v11 = a1[56];
      if (v11 == v12)
      {
LABEL_27:
        v22 = a1[110];
        if (a1[111] == v22)
        {
          goto LABEL_37;
        }

        v23 = 0;
        v24 = 0;
        while (1)
        {
          v25 = v22 + v23;
          if (*(v22 + v23 + 68) == 1)
          {
            v26 = *(v25 + 80);
            if (v26)
            {
              if ((*(*v26 + 32))(v26) == 17 && (*(**(v25 + 80) + 40))(*(v25 + 80)) == v10)
              {
                break;
              }
            }
          }

          ++v24;
          v22 = a1[110];
          v23 += 96;
          if (v24 >= 0xAAAAAAAAAAAAAAABLL * ((a1[111] - v22) >> 5))
          {
            goto LABEL_37;
          }
        }

        v7 = *(v22 + v23 + 80);
        if (!v7)
        {
LABEL_37:
          operator new();
        }
      }

      else
      {
        v13 = 0;
        while (1)
        {
          v14 = *(v12 + 8 * v13);
          if (v14)
          {
            v15 = *(v14 + 8);
            if (v15)
            {
              v18 = *v15;
              v16 = v15 + 1;
              v17 = v18;
              if (v16 != v18)
              {
                break;
              }
            }
          }

LABEL_14:
          if (++v13 >= ((v11 - v12) >> 3))
          {
            goto LABEL_27;
          }
        }

        while (1)
        {
          v7 = v17[8];
          if ((*(*v7 + 48))(v7) == v10)
          {
            break;
          }

          v19 = v17[1];
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = v17[2];
              v21 = *v20 == v17;
              v17 = v20;
            }

            while (!v21);
          }

          v17 = v20;
          if (v16 == v20)
          {
            v12 = a1[55];
            v11 = a1[56];
            goto LABEL_14;
          }
        }
      }

      v8 = *a2;
      if (!*a2)
      {
        goto LABEL_36;
      }
    }

    if ((*(*v8 + 32))(v8) != 17)
    {
      if (!*a2)
      {
LABEL_9:
        *a2 = 0;
        goto LABEL_36;
      }

      if ((*(**a2 + 32))(*a2) != 18)
      {
        if (*a2)
        {
          (*(**a2 + 8))(*a2);
        }

        goto LABEL_9;
      }
    }

LABEL_36:
    result = &dword_0 + 1;
    *a2 = v7;
    return result;
  }

  return 0;
}

void sub_CCDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a22);
  _Unwind_Resume(a1);
}

uint64_t sub_CCE68(unsigned __int8 **a1, unsigned __int8 *a2, double *a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return 0;
  }

  v53 = *a1;
  v4 = *v3;
  if (v4 == 45 || (v5 = *v3, v4 == 43))
  {
    v53 = ++v3;
    if (v3 == a2)
    {
      return 0;
    }

    v5 = *v3;
  }

  if (v5 == 46)
  {
    v6 = 0;
    v7 = 0.0;
    v8 = v3;
    if (*v3 != 46)
    {
LABEL_46:
      if (v3 != a2)
      {
        goto LABEL_47;
      }

LABEL_88:
      v34 = 0;
      result = 0;
      goto LABEL_103;
    }
  }

  else
  {
    v10 = v3;
    while (*v10 == 48)
    {
      if (++v10 == a2)
      {
        v10 = a2;
        break;
      }
    }

    v53 = v10;
    if (v10 == a2)
    {
      v7 = 0.0;
      v53 = v10;
      v6 = v3 != v10;
      goto LABEL_88;
    }

    v8 = v10 + 2;
    v7 = 0.0;
    while (1)
    {
      v11 = *(v8 - 2) - 48;
      if (v11 > 9)
      {
        v8 -= 2;
LABEL_25:
        v53 = v8;
        v6 = v3 != v8;
        if (v8 == a2)
        {
          goto LABEL_88;
        }

        goto LABEL_26;
      }

      v7 = v7 * 10.0 + v11;
      v12 = v8 - 1;
      if (v8 - 1 == a2)
      {
        goto LABEL_22;
      }

      v13 = *v12 - 48;
      if (v13 > 9)
      {
        break;
      }

      v7 = v7 * 10.0 + v13;
      if (v8 == a2)
      {
        goto LABEL_22;
      }

      v14 = *v8 - 48;
      if (v14 > 9)
      {
        goto LABEL_25;
      }

      v7 = v7 * 10.0 + v14;
      v15 = v8 + 1;
      v8 += 3;
      if (v15 == a2)
      {
LABEL_22:
        v53 = a2;
        v6 = v3 != a2;
        goto LABEL_88;
      }
    }

    --v8;
    v53 = v12;
    v6 = v3 != v12;
    if (v8 == a2)
    {
      goto LABEL_88;
    }

LABEL_26:
    v3 = v8;
    if (*v8 != 46)
    {
      goto LABEL_46;
    }
  }

  if (v3 + 1 == a2)
  {
    v53 = ++v3;
    goto LABEL_46;
  }

  v16 = a2 - v8;
  v17 = 0.0;
  v18 = 1;
  while (1)
  {
    v19 = v3[v18] - 48;
    if (v19 > 9)
    {
      goto LABEL_36;
    }

    v17 = v17 * 10.0 + v19;
    v20 = &v3[v18 + 1];
    if (v20 == a2)
    {
      goto LABEL_35;
    }

    v21 = *v20 - 48;
    if (v21 > 9)
    {
      ++v18;
      goto LABEL_82;
    }

    v17 = v17 * 10.0 + v21;
    v22 = &v3[v18 + 2];
    if (v22 == a2)
    {
      goto LABEL_35;
    }

    v23 = *v22 - 48;
    if (v23 > 9)
    {
      break;
    }

    v17 = v17 * 10.0 + v23;
    v18 += 3;
    if (&v3[v18] == a2)
    {
LABEL_35:
      v18 = v16;
LABEL_36:
      v3 += v18;
      v53 = v3;
      if (v18 == 1)
      {
        goto LABEL_46;
      }

      v24 = 1 - v18;
      if (1 - v18 >= 0)
      {
        v25 = 1 - v18;
      }

      else
      {
        v25 = v18 - 1;
      }

      if (v24 >= -307)
      {
        goto LABEL_41;
      }

LABEL_86:
      v28 = v17 / 1.0e307 / dbl_22686C0[(v18 - 308)];
      goto LABEL_87;
    }
  }

  v18 += 2;
LABEL_82:
  v3 += v18;
  v53 = v3;
  v24 = 1 - v18;
  if (1 - v18 >= 0)
  {
    v25 = 1 - v18;
  }

  else
  {
    v25 = v18 - 1;
  }

  if (v24 < -307)
  {
    goto LABEL_86;
  }

LABEL_41:
  if (v25 > 0x134)
  {
    v37 = a3;
    v38 = a2;
    v39 = __exp10(v24 * 10.0);
    a2 = v38;
    a3 = v37;
    v28 = v17 * v39;
  }

  else
  {
    v26 = dbl_22686C0[v25];
    v27 = v17 / v26;
    v28 = v17 * v26;
    if (v24 < 1)
    {
      v28 = v27;
    }
  }

LABEL_87:
  v7 = v7 + v28;
  v6 = 1;
  if (v3 == a2)
  {
    goto LABEL_88;
  }

LABEL_47:
  v29 = *v3;
  if ((v29 & 0xFFFFFFDF) == 0x45)
  {
    v30 = v3 + 1;
    v53 = v3 + 1;
    if (v3 + 1 == a2 || ((v31 = *v30, v31 == 45) || v31 == 43) && (v30 = v3 + 2, v53 = v3 + 2, v3 + 2 == a2))
    {
      v34 = 0;
      if (v30 == a2)
      {
        return 0;
      }

LABEL_101:
      v29 = *v30;
      v3 = v30;
      if (v30 != a2)
      {
        goto LABEL_59;
      }

      goto LABEL_102;
    }

    if (v30 != a2)
    {
      if (*v30 == 48)
      {
        v32 = v30 + 1;
        while (v32 != a2)
        {
          v33 = *v32++;
          if (v33 != 48)
          {
            v30 = v32 - 1;
            goto LABEL_90;
          }
        }

        v30 = a2;
      }

LABEL_90:
      v53 = v30;
    }

    v40 = a2 - v30;
    if ((a2 - v30) > 4)
    {
      v41 = 0;
      goto LABEL_97;
    }

    v41 = 0;
    if (v40 > 2)
    {
      if (v40 != 3)
      {
        if (v40 != 4)
        {
          goto LABEL_125;
        }

        v53 = v30 + 1;
        v41 = *v30 - 48;
        if (v41 > 9)
        {
          v41 = 0;
          ++v30;
          goto LABEL_97;
        }

        ++v30;
      }

      v46 = v30++;
      v53 = v30;
      v47 = *v46 - 48;
      if (v47 > 9)
      {
        goto LABEL_97;
      }

      v41 = v47 + 10 * v41;
    }

    else
    {
      if (v40 == 1)
      {
        goto LABEL_123;
      }

      if (v40 != 2)
      {
LABEL_125:
        if (v31 == 45)
        {
          v34 = -v41;
        }

        else
        {
          v34 = v41;
        }

        v3 = v30;
        if (v30 == a2)
        {
          goto LABEL_102;
        }

LABEL_59:
        if ((v29 - 70) <= 0x26 && ((1 << (v29 - 70)) & 0x4100000041) != 0)
        {
          result = 0;
          if (v3 + 1 != a2)
          {
            return result;
          }

          goto LABEL_103;
        }

        if (v29 == 35)
        {
          v53 = v3 + 1;
          if (v3 + 1 != a2)
          {
            v35 = v3[1];
            if ((v35 - 73) <= 0x25)
            {
              result = 0;
              if (v3[1] > 0x68u)
              {
                if (v35 == 110)
                {
LABEL_142:
                  v52 = v3 + 1;
                  return sub_CD600(v52, a2, a3);
                }

                if (v35 != 105)
                {
                  return result;
                }
              }

              else if (v35 != 73)
              {
                if (v35 != 78)
                {
                  return result;
                }

                goto LABEL_142;
              }

              return sub_CD578(&v53, a2, a3, v4 == 45);
            }
          }
        }

        else
        {
          v36 = *v3;
          if ((v36 - 73) <= 0x25)
          {
            result = 0;
            if (*v3 > 0x68u)
            {
              if (v36 != 110)
              {
                if (v36 != 105)
                {
                  return result;
                }

                return sub_CD578(&v53, a2, a3, v4 == 45);
              }
            }

            else
            {
              if (v36 == 73)
              {
                return sub_CD578(&v53, a2, a3, v4 == 45);
              }

              if (v36 != 78)
              {
                return result;
              }
            }

            v52 = v3;
            return sub_CD600(v52, a2, a3);
          }
        }

        return 0;
      }
    }

    v48 = v30++;
    v53 = v30;
    v49 = *v48 - 48;
    if (v49 <= 9)
    {
      v41 = v49 + 10 * v41;
LABEL_123:
      v50 = *v30 - 48;
      if (v50 <= 9)
      {
        v41 = v50 + 10 * v41;
        v53 = ++v30;
        goto LABEL_125;
      }
    }

LABEL_97:
    if (v31 == 45)
    {
      v34 = -v41;
    }

    else
    {
      v34 = v41;
    }

    if (v30 == a2)
    {
      return 0;
    }

    goto LABEL_101;
  }

  v34 = 0;
  if (v3 != a2)
  {
    goto LABEL_59;
  }

LABEL_102:
  result = 0;
LABEL_103:
  if (v6)
  {
    if (v34)
    {
      if (v34 >= 0)
      {
        v42 = v34;
      }

      else
      {
        v42 = -v34;
      }

      if (v34 < -307)
      {
        v7 = v7 / 1.0e307 / dbl_22686C0[-307 - v34];
      }

      else if (v42 > 0x134)
      {
        v44 = a3;
        v45 = __exp10(v34 * 10.0);
        a3 = v44;
        v7 = v7 * v45;
      }

      else
      {
        v43 = dbl_22686C0[v42];
        if (v34 < 1)
        {
          v7 = v7 / v43;
        }

        else
        {
          v7 = v7 * v43;
        }
      }
    }

    v51 = -v7;
    if (v4 != 45)
    {
      v51 = v7;
    }

    *a3 = v51;
    return 1;
  }

  return result;
}

uint64_t sub_CD578(_BYTE **a1, _BYTE *a2, double *a3, int a4)
{
  v4 = *a1;
  v5 = a2 - *a1;
  if (v5 != 8 && v5 != 3)
  {
    return 0;
  }

  if (v4 != a2)
  {
    if (*v4 == 105)
    {
      v7 = "infinity";
    }

    else
    {
      v7 = "INFINITY";
    }

    while (*v7 == *v4)
    {
      *a1 = ++v4;
      ++v7;
      if (v4 == a2)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  v8 = INFINITY;
  if (a4)
  {
    v8 = -INFINITY;
  }

  *a3 = v8;
  return 1;
}

uint64_t sub_CD600(_BYTE *a1, uint64_t a2, void *a3)
{
  if (a2 - a1 != 3)
  {
    return 0;
  }

  v3 = a1[1];
  if (*a1 != 110)
  {
    if (v3 != 65 || a1[2] != 78)
    {
      return 0;
    }

LABEL_8:
    *a3 = 0x7FF8000000000000;
    return 1;
  }

  if (v3 == 97 && a1[2] == 110)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_CD690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80000000) == 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v6 == 3)
  {
    v7 = 0;
    v8 = v4 >> 63;
    while (1)
    {
      v9 = (v8 & 1) != 0 ? *a2 : a2;
      v10 = __tolower(*(v9 + v7));
      if (v10 != __tolower(byte_2269150[v7]))
      {
        break;
      }

      ++v7;
      v11 = *(a2 + 23);
      v8 = v11 >> 63;
      if ((v11 & 0x80000000) != 0)
      {
        v11 = *(a2 + 8);
      }

      if (v7 >= v11)
      {
        return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
      }
    }

    v4 = *(a2 + 23);
    v5 = *(a2 + 8);
  }

  LOBYTE(v12) = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) == 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (v13 == 3)
  {
    v14 = 0;
    while (1)
    {
      v15 = *a2;
      if ((v12 & 1) == 0)
      {
        v15 = a2;
      }

      v16 = __tolower(*(v15 + v14));
      if (v16 != __tolower(byte_2269168[v14]))
      {
        break;
      }

      ++v14;
      v17 = *(a2 + 23);
      v12 = v17 >> 63;
      if ((v17 & 0x80000000) != 0)
      {
        v17 = *(a2 + 8);
      }

      if (v14 >= v17)
      {
        return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
      }
    }

    v4 = *(a2 + 23);
    v5 = *(a2 + 8);
  }

  LOBYTE(v18) = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) == 0)
  {
    v19 = v4;
  }

  else
  {
    v19 = v5;
  }

  if (v19 == 3)
  {
    v20 = 0;
    while (1)
    {
      v21 = *a2;
      if ((v18 & 1) == 0)
      {
        v21 = a2;
      }

      v22 = __tolower(*(v21 + v20));
      if (v22 != __tolower(byte_2269180[v20]))
      {
        break;
      }

      ++v20;
      v23 = *(a2 + 23);
      v18 = v23 >> 63;
      if ((v23 & 0x80000000) != 0)
      {
        v23 = *(a2 + 8);
      }

      if (v20 >= v23)
      {
        return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
      }
    }

    v4 = *(a2 + 23);
    v5 = *(a2 + 8);
  }

  LOBYTE(v24) = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) == 0)
  {
    v25 = v4;
  }

  else
  {
    v25 = v5;
  }

  if (v25 == 3)
  {
    v26 = 0;
    while (1)
    {
      v27 = *a2;
      if ((v24 & 1) == 0)
      {
        v27 = a2;
      }

      v28 = __tolower(*(v27 + v26));
      if (v28 != __tolower(byte_2269198[v26]))
      {
        break;
      }

      ++v26;
      v29 = *(a2 + 23);
      v24 = v29 >> 63;
      if ((v29 & 0x80000000) != 0)
      {
        v29 = *(a2 + 8);
      }

      if (v26 >= v29)
      {
        return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
      }
    }

    v4 = *(a2 + 23);
    v5 = *(a2 + 8);
  }

  LOBYTE(v30) = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) == 0)
  {
    v31 = v4;
  }

  else
  {
    v31 = v5;
  }

  if (v31 == 3)
  {
    v32 = 0;
    while (1)
    {
      v33 = *a2;
      if ((v30 & 1) == 0)
      {
        v33 = a2;
      }

      v34 = __tolower(*(v33 + v32));
      if (v34 != __tolower(byte_22691B0[v32]))
      {
        break;
      }

      ++v32;
      v35 = *(a2 + 23);
      v30 = v35 >> 63;
      if ((v35 & 0x80000000) != 0)
      {
        v35 = *(a2 + 8);
      }

      if (v32 >= v35)
      {
        return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
      }
    }

    v4 = *(a2 + 23);
    v5 = *(a2 + 8);
  }

  LOBYTE(v36) = (v4 & 0x80u) != 0;
  if ((v4 & 0x80u) != 0)
  {
    v4 = v5;
  }

  if (v4 == 4)
  {
    v37 = 0;
    while (1)
    {
      v38 = *a2;
      if ((v36 & 1) == 0)
      {
        v38 = a2;
      }

      v39 = __tolower(*(v38 + v37));
      if (v39 != __tolower(aMand[v37]))
      {
        break;
      }

      ++v37;
      v40 = *(a2 + 23);
      v36 = v40 >> 63;
      if ((v40 & 0x80000000) != 0)
      {
        v40 = *(a2 + 8);
      }

      if (v37 >= v40)
      {
        return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
      }
    }
  }

  if (sub_BCB2C(a2, &unk_22691E0))
  {
    return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
  }

  if (sub_BCB2C(a2, &unk_22691F8))
  {
    return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
  }

  result = sub_BCB2C(a2, &unk_2269210);
  if (result)
  {
    return !*(a1 + 216) || a1 + 208 == sub_BC284(a1 + 200, a2);
  }

  return result;
}

uint64_t sub_CDA04(std::string::size_type a1)
{
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v153 = 0;
  if (*(a1 + 135) < 0)
  {
    sub_325C(&v151, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    v151 = *(a1 + 112);
    v152 = *(a1 + 128);
  }

  v2 = (a1 + 104);
  HIBYTE(v142) = 1;
  strcpy(&v141[48], "~");
  v3 = *(&v151 + 1);
  if (v152 >= 0)
  {
    v3 = SHIBYTE(v152);
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = SHIBYTE(v152) >> 63;
    do
    {
      if (v5)
      {
        v6 = v151;
      }

      else
      {
        v6 = &v151;
      }

      v7 = __tolower(*(v6 + v4));
      if (v7 != __tolower(v141[v4 + 48]))
      {
        goto LABEL_20;
      }

      ++v4;
      v8 = SHIBYTE(v152);
      v5 = SHIBYTE(v152) >> 63;
      if (v152 < 0)
      {
        v8 = *(&v151 + 1);
      }
    }

    while (v4 < v8);
    v9 = *(a1 + 24);
    if (*(a1 + 8) == v9)
    {
      v9 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v10 = a1 + 48;
      v11 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_18:
        if ((v11 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v10, *(v9 + 16));
        }

        else
        {
          v12 = *v10;
          *(a1 + 128) = *(v10 + 16);
          *(a1 + 112) = v12;
        }

        goto LABEL_96;
      }
    }

    else
    {
      *(a1 + 24) = v9 + 40;
      v10 = v9 + 8;
      *(a1 + 104) = *v9;
      if (v2 == v9)
      {
        goto LABEL_96;
      }

      v11 = *(v9 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((v11 & 0x80u) == 0)
    {
      v46 = v10;
    }

    else
    {
      v46 = *v10;
    }

    if ((v11 & 0x80u) == 0)
    {
      v47 = v11;
    }

    else
    {
      v47 = *(v9 + 16);
    }

    sub_13B38(a1 + 112, v46, v47);
LABEL_96:
    *(a1 + 136) = *(v9 + 32);
    HIBYTE(v142) = 0;
    v141[48] = 0;
    v19 = sub_E14E0(a1, &v141[48]);
    if (SHIBYTE(v142) < 0)
    {
      operator delete(*&v141[48]);
    }

    goto LABEL_302;
  }

LABEL_20:
  HIBYTE(v142) = 3;
  strcpy(&v141[48], "[*]");
  v13 = *(&v151 + 1);
  if (v152 >= 0)
  {
    v13 = SHIBYTE(v152);
  }

  if (v13 == 3)
  {
    v14 = 0;
    v15 = SHIBYTE(v152) >> 63;
    while (1)
    {
      v16 = (v15 & 1) != 0 ? v151 : &v151;
      v17 = __tolower(*(v16 + v14));
      if (v17 != __tolower(v141[v14 + 48]))
      {
        break;
      }

      ++v14;
      v18 = SHIBYTE(v152);
      v15 = SHIBYTE(v152) >> 63;
      if (v152 < 0)
      {
        v18 = *(&v151 + 1);
      }

      if (v14 >= v18)
      {
        v19 = sub_E294C(a1);
        goto LABEL_302;
      }
    }
  }

  HIBYTE(v142) = 3;
  strcpy(&v141[48], "avg");
  v20 = *(&v151 + 1);
  if (v152 >= 0)
  {
    v20 = SHIBYTE(v152);
  }

  if (v20 != 3)
  {
LABEL_44:
    HIBYTE(v142) = 4;
    strcpy(&v141[48], "mand");
    v27 = *(&v151 + 1);
    if (v152 >= 0)
    {
      v27 = SHIBYTE(v152);
    }

    if (v27 == 4)
    {
      v28 = 0;
      v29 = SHIBYTE(v152) >> 63;
      do
      {
        if (v29)
        {
          v30 = v151;
        }

        else
        {
          v30 = &v151;
        }

        v31 = __tolower(*(v30 + v28));
        if (v31 != __tolower(v141[v28 + 48]))
        {
          goto LABEL_56;
        }

        ++v28;
        v32 = SHIBYTE(v152);
        v29 = SHIBYTE(v152) >> 63;
        if (v152 < 0)
        {
          v32 = *(&v151 + 1);
        }
      }

      while (v28 < v32);
      v26 = 28;
      goto LABEL_103;
    }

LABEL_56:
    HIBYTE(v142) = 3;
    strcpy(&v141[48], "max");
    v33 = *(&v151 + 1);
    if (v152 >= 0)
    {
      v33 = SHIBYTE(v152);
    }

    if (v33 == 3)
    {
      v34 = 0;
      v35 = SHIBYTE(v152) >> 63;
      do
      {
        if (v35)
        {
          v36 = v151;
        }

        else
        {
          v36 = &v151;
        }

        v37 = __tolower(*(v36 + v34));
        if (v37 != __tolower(v141[v34 + 48]))
        {
          goto LABEL_68;
        }

        ++v34;
        v38 = SHIBYTE(v152);
        v35 = SHIBYTE(v152) >> 63;
        if (v152 < 0)
        {
          v38 = *(&v151 + 1);
        }
      }

      while (v34 < v38);
      v26 = 10;
      goto LABEL_103;
    }

LABEL_68:
    HIBYTE(v142) = 3;
    strcpy(&v141[48], "min");
    v39 = *(&v151 + 1);
    if (v152 >= 0)
    {
      v39 = SHIBYTE(v152);
    }

    if (v39 == 3)
    {
      v40 = 0;
      v41 = SHIBYTE(v152) >> 63;
      do
      {
        if (v41)
        {
          v42 = v151;
        }

        else
        {
          v42 = &v151;
        }

        v43 = __tolower(*(v42 + v40));
        if (v43 != __tolower(v141[v40 + 48]))
        {
          goto LABEL_80;
        }

        ++v40;
        v44 = SHIBYTE(v152);
        v41 = SHIBYTE(v152) >> 63;
        if (v152 < 0)
        {
          v44 = *(&v151 + 1);
        }
      }

      while (v40 < v44);
      v26 = 9;
      goto LABEL_103;
    }

LABEL_80:
    sub_3608D0(&v141[48], "mor");
    v45 = sub_BCB2C(&v151, &v141[48]);
    if (SHIBYTE(v142) < 0)
    {
      v48 = v45;
      operator delete(*&v141[48]);
      if (v48)
      {
        goto LABEL_82;
      }
    }

    else if (v45)
    {
LABEL_82:
      v26 = 29;
      goto LABEL_103;
    }

    sub_3608D0(&v141[48], "mul");
    v49 = sub_BCB2C(&v151, &v141[48]);
    if (SHIBYTE(v142) < 0)
    {
      v50 = v49;
      operator delete(*&v141[48]);
      if (v50)
      {
        goto LABEL_94;
      }
    }

    else if (v49)
    {
LABEL_94:
      v26 = 13;
      goto LABEL_103;
    }

    sub_3608D0(&v141[48], "sum");
    v51 = sub_BCB2C(&v151, &v141[48]);
    if (SHIBYTE(v142) < 0)
    {
      v52 = v51;
      operator delete(*&v141[48]);
      v51 = v52;
    }

    if (v51)
    {
      v26 = 12;
      goto LABEL_103;
    }

    std::operator+<char>();
    sub_C00FC(0x580Fu, &v140);
    sub_23E08("exprtk.hpp:", &v140, v141);
    sub_C3328(1, a1 + 104, &v141[24], v141, &v141[48]);
    sub_C003C(a1, &v141[48]);
    sub_C0260(&v141[48]);
    if ((v141[23] & 0x80000000) != 0)
    {
      operator delete(*v141);
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_298:
        if ((v141[47] & 0x80000000) == 0)
        {
LABEL_299:
          v19 = 0;
          goto LABEL_302;
        }

LABEL_309:
        operator delete(*&v141[24]);
        goto LABEL_299;
      }
    }

    else if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_298;
    }

    operator delete(v140.__r_.__value_.__l.__data_);
    if ((v141[47] & 0x80000000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_309;
  }

  v21 = 0;
  v22 = SHIBYTE(v152) >> 63;
  do
  {
    if (v22)
    {
      v23 = v151;
    }

    else
    {
      v23 = &v151;
    }

    v24 = __tolower(*(v23 + v21));
    if (v24 != __tolower(v141[v21 + 48]))
    {
      goto LABEL_44;
    }

    ++v21;
    v25 = SHIBYTE(v152);
    v22 = SHIBYTE(v152) >> 63;
    if (v152 < 0)
    {
      v25 = *(&v151 + 1);
    }
  }

  while (v21 < v25);
  v26 = 11;
LABEL_103:
  v153 = v26;
  v141[24] = 1;
  *&v141[32] = a1;
  *&v141[40] = &v154;
  if (*(a1 + 473) != 1)
  {
    goto LABEL_108;
  }

  if (SHIBYTE(v152) < 0)
  {
    sub_325C(&v141[48], v151, *(&v151 + 1));
  }

  else
  {
    *&v141[48] = v151;
    v142 = v152;
  }

  v143 = 5;
  sub_E5D1C(a1 + 480, &v141[48]);
  if (SHIBYTE(v142) < 0)
  {
    operator delete(*&v141[48]);
    v53 = *(a1 + 24);
    if (*(a1 + 8) != v53)
    {
LABEL_109:
      *(a1 + 24) = v53 + 40;
      v54 = (v53 + 8);
      v55 = *v53;
      *(a1 + 104) = *v53;
      if (v2 == v53)
      {
        goto LABEL_124;
      }

      v56 = *(v53 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

LABEL_115:
      if ((v56 & 0x80u) == 0)
      {
        v58 = v54;
      }

      else
      {
        v58 = *v54;
      }

      if ((v56 & 0x80u) == 0)
      {
        v59 = v56;
      }

      else
      {
        v59 = *(v53 + 16);
      }

      sub_13B38(a1 + 112, v58, v59);
      goto LABEL_123;
    }
  }

  else
  {
LABEL_108:
    v53 = *(a1 + 24);
    if (*(a1 + 8) != v53)
    {
      goto LABEL_109;
    }
  }

  v53 = a1 + 40;
  *(a1 + 104) = *(a1 + 40);
  v54 = (a1 + 48);
  v56 = *(a1 + 71);
  if (*(a1 + 135) < 0)
  {
    goto LABEL_115;
  }

LABEL_111:
  if ((v56 & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v54, *(v53 + 16));
  }

  else
  {
    v57 = *v54;
    *(a1 + 128) = v54[2];
    *(a1 + 112) = v57;
  }

LABEL_123:
  v55 = *v2;
LABEL_124:
  *(a1 + 136) = *(v53 + 32);
  v138 = (a1 + 104);
  if (v55 != 40)
  {
    if (v152 >= 0)
    {
      v64 = HIBYTE(v152);
    }

    else
    {
      v64 = *(&v151 + 1);
    }

    if (v64 + 51 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v64 + 51 > 0x16)
    {
      operator new();
    }

    qmemcpy(v141, "ERR090 - Expected '(' for call to vararg function: ", 51);
    if (v152 >= 0)
    {
      v65 = &v151;
    }

    else
    {
      v65 = v151;
    }

    memmove(&v141[51], v65, v64);
    v141[v64 + 51] = 0;
    v66 = 22560;
    memset(&v139, 0, sizeof(v139));
    do
    {
      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        v71 = (v139.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v139.__r_.__value_.__l.__size_ == v71)
        {
          if ((v139.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_148:
          operator new();
        }

        size = v139.__r_.__value_.__l.__size_;
        v68 = v139.__r_.__value_.__r.__words[0];
        ++v139.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v139.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_148;
        }

        size = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        *(&v139.__r_.__value_.__s + 23) = (*(&v139.__r_.__value_.__s + 23) + 1) & 0x7F;
        v68 = &v139;
      }

      v69 = v68 + size;
      *v69 = (v66 % 0xA) | 0x30;
      v69[1] = 0;
      v70 = v66 > 9;
      v66 /= 0xAu;
    }

    while (v70);
    v72 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
    v73 = &v139;
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v72 = v139.__r_.__value_.__l.__size_;
      v73 = v139.__r_.__value_.__r.__words[0];
    }

    if (v72)
    {
      v74 = (v73 + v72 - 1);
      if (v74 > v73)
      {
        v75 = &v73->__r_.__value_.__s.__data_[1];
        do
        {
          v76 = *(v75 - 1);
          *(v75 - 1) = v74->__r_.__value_.__s.__data_[0];
          v74->__r_.__value_.__s.__data_[0] = v76;
          v74 = (v74 - 1);
          v77 = v75++ >= v74;
        }

        while (!v77);
      }
    }

    v78 = std::string::insert(&v139, 0, "exprtk.hpp:", 0xBuLL);
    v79 = *&v78->__r_.__value_.__l.__data_;
    v140.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&v140.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v138, v141, &v140.__r_.__value_.__l.__data_, &v141[48]);
    v80 = *(a1 + 568);
    v81 = *(a1 + 560);
    v82 = 30 * ((v80 - v81) >> 3) - 1;
    if (v80 == v81)
    {
      v82 = 0;
    }

    if (v82 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v81 = *(a1 + 560);
      v80 = *(a1 + 568);
    }

    if (v80 == v81)
    {
      v84 = 0;
    }

    else
    {
      v83 = *(a1 + 592) + *(a1 + 584);
      v84 = *(v81 + 8 * (v83 / 0x1E)) + 136 * (v83 % 0x1E);
    }

    sub_C398C(v84, &v141[48]);
    ++*(a1 + 592);
    if (v150 < 0)
    {
      operator delete(v149);
      if ((v148 & 0x80000000) == 0)
      {
LABEL_174:
        if ((v146 & 0x80000000) == 0)
        {
          goto LABEL_175;
        }

        goto LABEL_182;
      }
    }

    else if ((v148 & 0x80000000) == 0)
    {
      goto LABEL_174;
    }

    operator delete(v147);
    if ((v146 & 0x80000000) == 0)
    {
LABEL_175:
      if ((v144 & 0x80000000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_183;
    }

LABEL_182:
    operator delete(v145);
    if ((v144 & 0x80000000) == 0)
    {
LABEL_176:
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_177;
      }

      goto LABEL_184;
    }

LABEL_183:
    operator delete(*&v141[56]);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_177:
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_185;
    }

LABEL_184:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_178:
      if ((v141[23] & 0x80000000) == 0)
      {
        goto LABEL_276;
      }

LABEL_186:
      operator delete(*v141);
      goto LABEL_276;
    }

LABEL_185:
    operator delete(v139.__r_.__value_.__l.__data_);
    if ((v141[23] & 0x80000000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_186;
  }

  v60 = *(a1 + 24);
  if (*(a1 + 8) == v60)
  {
    v60 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v61 = a1 + 48;
    v62 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_128:
      if ((v62 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v61, *(v60 + 16));
      }

      else
      {
        v63 = *v61;
        *(a1 + 128) = *(v61 + 16);
        *(a1 + 112) = v63;
      }

      goto LABEL_188;
    }

LABEL_164:
    if ((v62 & 0x80u) == 0)
    {
      v85 = v61;
    }

    else
    {
      v85 = *v61;
    }

    if ((v62 & 0x80u) == 0)
    {
      v86 = v62;
    }

    else
    {
      v86 = *(v60 + 16);
    }

    sub_13B38(a1 + 112, v85, v86);
    goto LABEL_188;
  }

  *(a1 + 24) = v60 + 40;
  v61 = v60 + 8;
  *(a1 + 104) = *v60;
  if (v2 != v60)
  {
    v62 = *(v60 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_164;
  }

LABEL_188:
  v87 = a1 + 40;
  *(a1 + 136) = *(v60 + 32);
  v88 = a1 + 48;
  while (1)
  {
    v91 = sub_C5A5C(a1, 0);
    if (!v91)
    {
      goto LABEL_276;
    }

    v92 = v155;
    if (v155 >= v156)
    {
      break;
    }

    *v155 = v91;
    v155 = v92 + 8;
    v93 = *v2;
    if (*v2 != 44)
    {
      goto LABEL_221;
    }

LABEL_213:
    v103 = *(a1 + 24);
    if (*(a1 + 8) == v103)
    {
      *v2 = *v87;
      v104 = a1 + 48;
      v103 = a1 + 40;
      v105 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_218;
      }
    }

    else
    {
      *(a1 + 24) = v103 + 40;
      v104 = v103 + 8;
      *(a1 + 104) = *v103;
      if (v2 == v103)
      {
        goto LABEL_196;
      }

      v105 = *(v103 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_218:
        if ((v105 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v104, *(v103 + 16));
        }

        else
        {
          v106 = *v104;
          *(a1 + 128) = *(v104 + 16);
          *(a1 + 112) = v106;
        }

        goto LABEL_196;
      }
    }

    if ((v105 & 0x80u) == 0)
    {
      v89 = v104;
    }

    else
    {
      v89 = *v104;
    }

    if ((v105 & 0x80u) == 0)
    {
      v90 = v105;
    }

    else
    {
      v90 = *(v103 + 16);
    }

    sub_13B38(a1 + 112, v89, v90);
LABEL_196:
    *(a1 + 136) = *(v103 + 32);
  }

  v94 = v154;
  v95 = v155 - v154;
  v96 = (v155 - v154) >> 3;
  v97 = v96 + 1;
  if ((v96 + 1) >> 61)
  {
    sub_1794();
  }

  v98 = v156 - v154;
  if ((v156 - v154) >> 2 > v97)
  {
    v97 = v98 >> 2;
  }

  if (v98 >= 0x7FFFFFFFFFFFFFF8)
  {
    v99 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v99 = v97;
  }

  if (v99)
  {
    if (!(v99 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v100 = (8 * v96);
  v101 = &v100[-((v155 - v154) >> 3)];
  *v100 = v91;
  v102 = (v100 + 1);
  memcpy(v101, v94, v95);
  v154 = v101;
  v155 = v102;
  v156 = 0;
  if (v94)
  {
    operator delete(v94);
  }

  v2 = (a1 + 104);
  v155 = v102;
  v93 = *v138;
  if (*v138 == 44)
  {
    goto LABEL_213;
  }

LABEL_221:
  if (v93 != 41)
  {
    if (v152 >= 0)
    {
      v110 = HIBYTE(v152);
    }

    else
    {
      v110 = *(&v151 + 1);
    }

    if (v110 + 51 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v110 + 51 > 0x16)
    {
      operator new();
    }

    qmemcpy(v141, "ERR091 - Expected ',' for call to vararg function: ", 51);
    if (v152 >= 0)
    {
      v111 = &v151;
    }

    else
    {
      v111 = v151;
    }

    memmove(&v141[51], v111, v110);
    v141[v110 + 51] = 0;
    v112 = 22582;
    memset(&v139, 0, sizeof(v139));
    do
    {
      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        v116 = (v139.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v139.__r_.__value_.__l.__size_ == v116)
        {
          if ((v139.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_245:
          operator new();
        }

        v113 = v139.__r_.__value_.__l.__size_;
        v114 = v139.__r_.__value_.__r.__words[0];
        ++v139.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v139.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_245;
        }

        v113 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
        *(&v139.__r_.__value_.__s + 23) = (*(&v139.__r_.__value_.__s + 23) + 1) & 0x7F;
        v114 = &v139;
      }

      v115 = v114 + v113;
      *v115 = (v112 % 0xA) | 0x30;
      v115[1] = 0;
      v70 = v112 > 9;
      v112 /= 0xAu;
    }

    while (v70);
    v117 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
    v118 = &v139;
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v117 = v139.__r_.__value_.__l.__size_;
      v118 = v139.__r_.__value_.__r.__words[0];
    }

    if (v117)
    {
      v119 = (v118 + v117 - 1);
      if (v119 > v118)
      {
        v120 = &v118->__r_.__value_.__s.__data_[1];
        do
        {
          v121 = *(v120 - 1);
          *(v120 - 1) = v119->__r_.__value_.__s.__data_[0];
          v119->__r_.__value_.__s.__data_[0] = v121;
          v119 = (v119 - 1);
          v77 = v120++ >= v119;
        }

        while (!v77);
      }
    }

    v122 = std::string::insert(&v139, 0, "exprtk.hpp:", 0xBuLL);
    v123 = *&v122->__r_.__value_.__l.__data_;
    v140.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
    *&v140.__r_.__value_.__l.__data_ = v123;
    v122->__r_.__value_.__l.__size_ = 0;
    v122->__r_.__value_.__r.__words[2] = 0;
    v122->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v138, v141, &v140.__r_.__value_.__l.__data_, &v141[48]);
    v124 = *(a1 + 568);
    v125 = *(a1 + 560);
    v126 = 30 * ((v124 - v125) >> 3) - 1;
    if (v124 == v125)
    {
      v126 = 0;
    }

    if (v126 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v125 = *(a1 + 560);
      v124 = *(a1 + 568);
    }

    if (v124 == v125)
    {
      v128 = 0;
    }

    else
    {
      v127 = *(a1 + 592) + *(a1 + 584);
      v128 = *(v125 + 8 * (v127 / 0x1E)) + 136 * (v127 % 0x1E);
    }

    sub_C398C(v128, &v141[48]);
    ++*(a1 + 592);
    if (v150 < 0)
    {
      operator delete(v149);
      if ((v148 & 0x80000000) == 0)
      {
LABEL_271:
        if ((v146 & 0x80000000) == 0)
        {
          goto LABEL_272;
        }

        goto LABEL_290;
      }
    }

    else if ((v148 & 0x80000000) == 0)
    {
      goto LABEL_271;
    }

    operator delete(v147);
    if ((v146 & 0x80000000) == 0)
    {
LABEL_272:
      if ((v144 & 0x80000000) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_291;
    }

LABEL_290:
    operator delete(v145);
    if ((v144 & 0x80000000) == 0)
    {
LABEL_273:
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_274;
      }

      goto LABEL_292;
    }

LABEL_291:
    operator delete(*&v141[56]);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_274:
      if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_293;
    }

LABEL_292:
    operator delete(v140.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v139.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_275:
      if ((v141[23] & 0x80000000) == 0)
      {
        goto LABEL_276;
      }

      goto LABEL_294;
    }

LABEL_293:
    operator delete(v139.__r_.__value_.__l.__data_);
    if ((v141[23] & 0x80000000) == 0)
    {
LABEL_276:
      v19 = 0;
      if (v141[24] != 1)
      {
        goto LABEL_302;
      }

LABEL_277:
      v131 = *&v141[40];
      v132 = **&v141[40];
      if (**&v141[40] == *(*&v141[40] + 8))
      {
        goto LABEL_302;
      }

      v133 = 0;
      while (1)
      {
        v134 = *(v132 + 8 * v133);
        if (!v134 || (*(*v134 + 32))(v134) == 17)
        {
          goto LABEL_280;
        }

        v135 = *(v132 + 8 * v133);
        if (v135)
        {
          if ((*(*v135 + 32))(v135) == 18)
          {
            goto LABEL_280;
          }

          v136 = *(v132 + 8 * v133);
          if (v136)
          {
            (*(*v136 + 8))(v136);
          }
        }

        *(v132 + 8 * v133) = 0;
LABEL_280:
        ++v133;
        v132 = *v131;
        if (v133 >= (v131[1] - *v131) >> 3)
        {
          v131[1] = v132;
          goto LABEL_302;
        }
      }
    }

LABEL_294:
    operator delete(*v141);
    v19 = 0;
    if (v141[24] != 1)
    {
      goto LABEL_302;
    }

    goto LABEL_277;
  }

  v107 = *(a1 + 24);
  if (*(a1 + 8) == v107)
  {
    *v2 = *v87;
    v108 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_225;
    }
  }

  else
  {
    *(a1 + 24) = v107 + 40;
    v88 = v107 + 8;
    *(a1 + 104) = *v107;
    v87 = v107;
    if (v2 == v107)
    {
      goto LABEL_301;
    }

    v108 = *(v107 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_225:
      if ((v108 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v88, *(v87 + 16));
      }

      else
      {
        v109 = *v88;
        *(a1 + 128) = *(v88 + 16);
        *(a1 + 112) = v109;
      }

      goto LABEL_301;
    }
  }

  if ((v108 & 0x80u) == 0)
  {
    v129 = v88;
  }

  else
  {
    v129 = *v88;
  }

  if ((v108 & 0x80u) == 0)
  {
    v130 = v108;
  }

  else
  {
    v130 = *(v87 + 16);
  }

  sub_13B38(a1 + 112, v129, v130);
LABEL_301:
  *(a1 + 136) = *(v87 + 32);
  v19 = sub_E45D0(a1 + 344, &v153, &v154);
  v141[24] = v19 == 0;
  if (v19 == 0)
  {
    goto LABEL_277;
  }

LABEL_302:
  if (SHIBYTE(v152) < 0)
  {
    operator delete(v151);
  }

  if (v154)
  {
    v155 = v154;
    operator delete(v154);
  }

  return v19;
}