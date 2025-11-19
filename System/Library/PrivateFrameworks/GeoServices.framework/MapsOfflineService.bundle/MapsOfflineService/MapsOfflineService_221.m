void sub_D39228(_Unwind_Exception *a1)
{
  sub_60A84C((v1 - 256));
  sub_D3AE40(v1 - 224);
  _Unwind_Resume(a1);
}

void sub_D39308(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v145);
  v138 = 1;
  v139 = 0u;
  memset(v140, 0, sizeof(v140));
  v141 = 0u;
  v142 = 0u;
  v143 = 1065353216;
  v144 = 0;
  v4 = (*a1)[1] - **a1;
  if (!v4)
  {
    goto LABEL_138;
  }

  v5 = 0;
  v102 = a2;
  v103 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v110 = a1;
  do
  {
    v6 = 24 * v5;
    v114 = *a1[1];
    v115 = **a1;
    v136 = 0uLL;
    v137 = 0;
    v7 = sub_F73E78((v115 + 24 * v5));
    v104 = v5;
    if (v7)
    {
      v8 = 0;
      v113 = v7;
      v111 = 24 * v5;
      do
      {
        v10 = nullsub_1(v115 + v6);
        v11 = *(v114 + v6) + 24 * v8;
        v118.n128_u64[0] = *v10 + 48 * v8;
        v118.n128_u64[1] = a1;
        *v119 = v11;
        sub_D3C588(&v118, __p);
        if (sub_4C6700(__p))
        {
          v12 = *(&v136 + 1);
          if (*(&v136 + 1) < v137)
          {
            *(*(&v136 + 1) + 16) = 0;
            *(v12 + 24) = 0;
            *v12 = 0;
            *(v12 + 8) = 0;
            *v12 = *__p;
            *(v12 + 16) = v128;
            __p[0] = 0;
            __p[1] = 0;
            v128 = 0;
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            *(v12 + 24) = v129;
            *(v12 + 40) = v130;
            v129 = 0uLL;
            v130 = 0;
            v13 = v131;
            v14 = v132;
            v15 = *v133;
            *(v12 + 94) = *&v133[14];
            *(v12 + 64) = v14;
            *(v12 + 80) = v15;
            *(v12 + 48) = v13;
            v16 = v134;
            *(v12 + 120) = v135;
            *(v12 + 104) = v16;
            v135 = 0;
            v134 = 0uLL;
            v17 = v12 + 128;
LABEL_65:
            *(&v136 + 1) = v17;
LABEL_66:
            if ((SHIBYTE(v135) & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_85;
          }

          v112 = v8;
          v21 = v136;
          v22 = (*(&v136 + 1) - v136) >> 7;
          v23 = v22 + 1;
          if ((v22 + 1) >> 57)
          {
            sub_1794();
          }

          v24 = v137 - v136;
          if ((v137 - v136) >> 6 > v23)
          {
            v23 = v24 >> 6;
          }

          if (v24 >= 0x7FFFFFFFFFFFFF80)
          {
            v25 = 0x1FFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 57))
            {
              operator new();
            }

            sub_1808();
          }

          v28 = (*(&v136 + 1) - v136) >> 7;
          v29 = v130;
          v30 = v22 << 7;
          *(v30 + 16) = v128;
          *v30 = *__p;
          __p[1] = 0;
          v128 = 0;
          __p[0] = 0;
          *(v30 + 24) = v129;
          *(v30 + 40) = v29;
          v130 = 0;
          v129 = 0uLL;
          v31 = v131;
          v32 = v132;
          v33 = *v133;
          *(v30 + 94) = *&v133[14];
          *(v30 + 64) = v32;
          *(v30 + 80) = v33;
          *(v30 + 48) = v31;
          v34 = v134;
          *(v30 + 120) = v135;
          *(v30 + 104) = v34;
          v134 = 0uLL;
          v35 = (v22 << 7) - (v28 << 7);
          v135 = 0;
          if (v21 == v12)
          {
LABEL_62:
            v17 = v30 + 128;
            *&v136 = v35;
            *(&v136 + 1) = v30 + 128;
            v137 = 0;
            if (v21)
            {
              operator delete(v21);
            }

            a1 = v110;
            v6 = v111;
            v8 = v112;
            goto LABEL_65;
          }

          v36 = v21;
          v109 = v35;
          v37 = v35;
          do
          {
            *v37 = *v36;
            *(v37 + 16) = v36[2];
            *v36 = 0;
            v36[1] = 0;
            v36[2] = 0;
            *(v37 + 32) = 0;
            *(v37 + 40) = 0;
            *(v37 + 24) = *(v36 + 3);
            *(v37 + 40) = v36[5];
            v36[3] = 0;
            v36[4] = 0;
            v36[5] = 0;
            v38 = *(v36 + 3);
            v39 = *(v36 + 4);
            v40 = *(v36 + 5);
            *(v37 + 94) = *(v36 + 94);
            *(v37 + 64) = v39;
            *(v37 + 80) = v40;
            *(v37 + 48) = v38;
            v41 = *(v36 + 13);
            *(v37 + 120) = v36[15];
            *(v37 + 104) = v41;
            v36[14] = 0;
            v36[15] = 0;
            v36[13] = 0;
            v36 += 16;
            v37 += 128;
          }

          while (v36 != v12);
          while (2)
          {
            if (*(v21 + 127) < 0)
            {
              operator delete(v21[13]);
              v43 = v21[3];
              if (!v43)
              {
                goto LABEL_45;
              }

LABEL_39:
              v44 = v21[4];
              v45 = v43;
              if (v44 != v43)
              {
                do
                {
                  v44 = sub_3EEA68(v44 - 1096);
                }

                while (v44 != v43);
                v45 = v21[3];
              }

              v21[4] = v43;
              operator delete(v45);
              v46 = *v21;
              if (*v21)
              {
LABEL_46:
                v47 = v21[1];
                v42 = v46;
                if (v47 != v46)
                {
                  do
                  {
                    v48 = *(v47 - 3);
                    if (v48)
                    {
                      v49 = *(v47 - 2);
                      v50 = *(v47 - 3);
                      if (v49 != v48)
                      {
                        do
                        {
                          v51 = v49 - 32;
                          v52 = *(v49 - 2);
                          if (v52 != -1)
                          {
                            (off_2673AA8[v52])(&v118, v49 - 32);
                          }

                          *(v49 - 2) = -1;
                          v49 -= 32;
                        }

                        while (v51 != v48);
                        v50 = *(v47 - 3);
                      }

                      *(v47 - 2) = v48;
                      operator delete(v50);
                    }

                    v53 = *(v47 - 8);
                    if (v53 != -1)
                    {
                      (off_2673AA8[v53])(&v118, v47 - 7);
                    }

                    v54 = v47 - 10;
                    *(v47 - 8) = -1;
                    if (*(v47 - 57) < 0)
                    {
                      operator delete(*v54);
                    }

                    v47 -= 10;
                  }

                  while (v54 != v46);
                  v42 = *v21;
                }

                v21[1] = v46;
                operator delete(v42);
              }
            }

            else
            {
              v43 = v21[3];
              if (v43)
              {
                goto LABEL_39;
              }

LABEL_45:
              v46 = *v21;
              if (*v21)
              {
                goto LABEL_46;
              }
            }

            v21 += 16;
            if (v21 == v12)
            {
              v21 = v136;
              v35 = v109;
              goto LABEL_62;
            }

            continue;
          }
        }

        if (!sub_7E7E4(1u))
        {
          goto LABEL_66;
        }

        v126 = 0;
        v118.n128_u64[0] = v108;
        *(v118.n128_u64 + *(v108 - 24)) = v107;
        v18 = (&v118 + *(v118.n128_u64[0] - 24));
        std::ios_base::init(v18, &v118.n128_i8[8]);
        v18[1].__vftable = 0;
        v18[1].__fmtflags_ = -1;
        std::locale::locale(v119);
        v120 = 0u;
        v121 = 0u;
        *&v119[8] = 0u;
        memset(&v122, 0, sizeof(v122));
        v124 = 16;
        v123 = &v122;
        std::string::append(&v122, 0x16uLL, 0);
        size = v122.__r_.__value_.__l.__size_;
        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
        }

        *(&v120 + 1) = &v122;
        *&v121 = &v122;
        *(&v121 + 1) = &v122 + size;
        sub_4A5C(&v118, "Dropping inconsistent route.", 28);
        if ((v124 & 0x10) != 0)
        {
          v26 = v123;
          v27 = &v120 + 1;
          if (v123 < v121)
          {
            v123 = v121;
            v26 = v121;
            v27 = &v120 + 1;
          }
        }

        else
        {
          if ((v124 & 8) == 0)
          {
            v20 = 0;
            v117 = 0;
            goto LABEL_80;
          }

          v26 = v120;
          v27 = &v119[8];
        }

        v59 = *v27;
        v20 = v26 - *v27;
        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v20 >= 0x17)
        {
          operator new();
        }

        v117 = v26 - *v27;
        if (v20)
        {
          memmove(&__dst, v59, v20);
        }

LABEL_80:
        *(&__dst + v20) = 0;
        sub_7E854(&__dst, 1u);
        if (v117 < 0)
        {
          operator delete(__dst);
        }

        v118.n128_u64[0] = v106;
        *(v118.n128_u64 + *(v106 - 24)) = v105;
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        std::locale::~locale(v119);
        std::ostream::~ostream();
        std::ios::~ios();
        v6 = v111;
        if ((SHIBYTE(v135) & 0x80000000) == 0)
        {
LABEL_67:
          v55 = v129;
          if (v129)
          {
            goto LABEL_68;
          }

          goto LABEL_86;
        }

LABEL_85:
        operator delete(v134);
        v55 = v129;
        if (v129)
        {
LABEL_68:
          v56 = *(&v129 + 1);
          v57 = v55;
          if (*(&v129 + 1) != v55)
          {
            do
            {
              v56 = sub_3EEA68(v56 - 1096);
            }

            while (v56 != v55);
            v57 = v129;
          }

          *(&v129 + 1) = v55;
          operator delete(v57);
          v58 = __p[0];
          if (!__p[0])
          {
            goto LABEL_9;
          }

LABEL_87:
          v60 = __p[1];
          v9 = v58;
          if (__p[1] != v58)
          {
            do
            {
              v61 = *(v60 - 3);
              if (v61)
              {
                v62 = *(v60 - 2);
                v63 = *(v60 - 3);
                if (v62 != v61)
                {
                  do
                  {
                    v64 = v62 - 32;
                    v65 = *(v62 - 8);
                    if (v65 != -1)
                    {
                      (off_2673AA8[v65])(&v118, v62 - 32);
                    }

                    *(v62 - 8) = -1;
                    v62 -= 32;
                  }

                  while (v64 != v61);
                  v63 = *(v60 - 3);
                }

                *(v60 - 2) = v61;
                operator delete(v63);
              }

              v66 = *(v60 - 8);
              if (v66 != -1)
              {
                (off_2673AA8[v66])(&v118, v60 - 7);
              }

              v67 = (v60 - 10);
              *(v60 - 8) = -1;
              if (*(v60 - 57) < 0)
              {
                operator delete(*v67);
              }

              v60 -= 10;
            }

            while (v67 != v58);
            v9 = __p[0];
          }

          __p[1] = v58;
          operator delete(v9);
          goto LABEL_9;
        }

LABEL_86:
        v58 = __p[0];
        if (__p[0])
        {
          goto LABEL_87;
        }

LABEL_9:
        ++v8;
      }

      while (v8 != v113);
    }

    v68 = *(&v139 + 1);
    if (*(&v139 + 1) < *&v140[0])
    {
      **(&v139 + 1) = 0;
      *(v68 + 8) = 0;
      *(v68 + 16) = 0;
      *v68 = v136;
      *(v68 + 16) = v137;
      *(&v139 + 1) = v68 + 24;
      goto LABEL_4;
    }

    sub_D3B140(&v139, &v136);
    v69 = v136;
    *(&v139 + 1) = v70;
    if (v136)
    {
      v71 = *(&v136 + 1);
      v72 = v136;
      if (*(&v136 + 1) == v136)
      {
LABEL_134:
        *(&v136 + 1) = v69;
        operator delete(v72);
        goto LABEL_4;
      }

      while (1)
      {
        if (*(v71 - 1) < 0)
        {
          operator delete(*(v71 - 3));
          v74 = *(v71 - 13);
          if (v74)
          {
LABEL_111:
            v75 = *(v71 - 12);
            v76 = v74;
            if (v75 != v74)
            {
              do
              {
                v75 = sub_3EEA68(v75 - 1096);
              }

              while (v75 != v74);
              v76 = *(v71 - 13);
            }

            *(v71 - 12) = v74;
            operator delete(v76);
            v77 = v71 - 16;
            v78 = *(v71 - 16);
            if (!v78)
            {
              goto LABEL_108;
            }

LABEL_118:
            v79 = *(v71 - 15);
            v73 = v78;
            if (v79 != v78)
            {
              do
              {
                v80 = *(v79 - 3);
                if (v80)
                {
                  v81 = *(v79 - 2);
                  v82 = *(v79 - 3);
                  if (v81 != v80)
                  {
                    do
                    {
                      v83 = v81 - 32;
                      v84 = *(v81 - 2);
                      if (v84 != -1)
                      {
                        (off_2673AA8[v84])(&v118, v81 - 32);
                      }

                      *(v81 - 2) = -1;
                      v81 -= 32;
                    }

                    while (v83 != v80);
                    v82 = *(v79 - 3);
                  }

                  *(v79 - 2) = v80;
                  operator delete(v82);
                }

                v85 = *(v79 - 8);
                if (v85 != -1)
                {
                  (off_2673AA8[v85])(&v118, v79 - 7);
                }

                v86 = v79 - 10;
                *(v79 - 8) = -1;
                if (*(v79 - 57) < 0)
                {
                  operator delete(*v86);
                }

                v79 -= 10;
              }

              while (v86 != v78);
              v73 = *v77;
              a1 = v110;
            }

            *(v71 - 15) = v78;
            operator delete(v73);
            goto LABEL_108;
          }
        }

        else
        {
          v74 = *(v71 - 13);
          if (v74)
          {
            goto LABEL_111;
          }
        }

        v77 = v71 - 16;
        v78 = *(v71 - 16);
        if (v78)
        {
          goto LABEL_118;
        }

LABEL_108:
        v71 = v77;
        if (v77 == v69)
        {
          v72 = v136;
          goto LABEL_134;
        }
      }
    }

LABEL_4:
    v5 = v104 + 1;
  }

  while (v104 + 1 != v103);
  v87 = v139;
  a2 = v102;
  if (v139 != *(&v139 + 1))
  {
    while (*v87 == v87[1])
    {
      v87 += 3;
      if (v87 == *(&v139 + 1))
      {
        goto LABEL_138;
      }
    }

    goto LABEL_141;
  }

LABEL_138:
  v88 = **a1;
  v89 = (*a1)[1];
  if (v88 != v89)
  {
    while (sub_4D1F6C(v88))
    {
      v88 += 3;
      if (v88 == v89)
      {
        goto LABEL_141;
      }
    }

    __p[0] = dword_8 + 3;
    __p[1] = &off_2669FE0;
    sub_434934(&v118, __p);
    *a2 = 0;
    v98 = *v119;
    *(a2 + 8) = v118;
    *(a2 + 24) = v98;
    *(a2 + 40) = *&v119[16];
    *(a2 + 48) = v120;
    if (v138)
    {
      goto LABEL_159;
    }

    goto LABEL_147;
  }

LABEL_141:
  v90 = vcvtad_u64_f64(sub_7EA60(v145));
  v144 = v90;
  v91 = v138;
  *a2 = v138;
  if (v91 == 1)
  {
    *(a2 + 8) = v139;
    *(a2 + 24) = *&v140[0];
    v139 = 0uLL;
    *&v140[0] = 0;
    *(a2 + 32) = *(v140 + 8);
    v93 = *(&v140[1] + 1);
    v92 = v141;
    *&v141 = 0;
    memset(v140 + 8, 0, 24);
    *(a2 + 48) = v93;
    *(a2 + 56) = v92;
    v94 = *(&v141 + 1);
    v95 = v142;
    *(a2 + 64) = *(&v141 + 1);
    *(&v141 + 1) = 0;
    v96 = *(&v142 + 1);
    *(a2 + 72) = v95;
    *(a2 + 80) = v96;
    *(a2 + 88) = v143;
    if (v96)
    {
      v97 = *(v95 + 8);
      if ((v94 & (v94 - 1)) != 0)
      {
        if (v97 >= v94)
        {
          v97 %= v94;
        }
      }

      else
      {
        v97 &= v94 - 1;
      }

      *(v92 + 8 * v97) = a2 + 72;
      v142 = 0uLL;
    }

    *(a2 + 96) = v90;
LABEL_159:
    sub_D3B548(&v139);
    return;
  }

  *(a2 + 8) = v139;
  *(a2 + 24) = v140[0];
  *(a2 + 40) = *&v140[1];
  memset(v140, 0, 24);
  *(a2 + 48) = DWORD2(v140[1]);
LABEL_147:
  v99 = *&v140[0];
  if (*&v140[0])
  {
    v100 = *(&v140[0] + 1);
    v101 = *&v140[0];
    if (*(&v140[0] + 1) != *&v140[0])
    {
      do
      {
        if (*(v100 - 1) < 0)
        {
          operator delete(*(v100 - 24));
        }

        v100 -= 32;
      }

      while (v100 != v99);
      v101 = *&v140[0];
    }

    *(&v140[0] + 1) = v99;
    operator delete(v101);
  }
}

void sub_D3A070(_Unwind_Exception *a1)
{
  sub_60A84C((v1 - 256));
  sub_D3B4AC(v1 - 224);
  _Unwind_Resume(a1);
}

void sub_D3A150(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v8);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 88) = 1065353216;
  v4 = *(a1 + 232);
  if (v4)
  {
    sub_FF0038(v7, *(a1 + 240), v4, *(a1 + 32), *(a1 + 36), a1 + 48);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v6 = sub_2D390(exception, "Bad optional access.", 0x14uLL);
}

void sub_D3AB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_FF01A4(&a32);
  sub_D3C228(v32);
  _Unwind_Resume(a1);
}

void sub_D3AC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
    v35 = a17;
    if (!a17)
    {
LABEL_3:
      v36 = a22;
      if (!a22)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v35 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v35);
  v36 = a22;
  if (!a22)
  {
LABEL_4:
    v37 = a21;
    if (!a21)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v36);
  v37 = a21;
  if (!a21)
  {
LABEL_5:
    v38 = *(v33 - 136);
    if (!v38)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v37);
  v38 = *(v33 - 136);
  if (!v38)
  {
LABEL_6:
    v39 = *(v33 - 160);
    if (!v39)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v33 - 128) = v38;
  operator delete(v38);
  v39 = *(v33 - 160);
  if (!v39)
  {
LABEL_7:
    v40 = *(v33 - 208);
    if (!v40)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v33 - 152) = v39;
  operator delete(v39);
  v40 = *(v33 - 208);
  if (!v40)
  {
LABEL_8:
    v41 = *(v33 - 232);
    if (!v41)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(v33 - 200) = v40;
  operator delete(v40);
  v41 = *(v33 - 232);
  if (!v41)
  {
LABEL_10:
    sub_FF01A4(&a32);
    sub_D3C228(v32);
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v33 - 224) = v41;
  operator delete(v41);
  goto LABEL_10;
}

double sub_D3ACF8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 8);
  v7 = (24 * v2 + *a1 - v6);
  sub_CDF5B0(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = 24 * v2 + 24;
  *(a1 + 8) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 24 * v2 + 24;
  }

  return *&v9;
}

void sub_D3AE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D3AE40(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D3AEDC((a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void **sub_D3AEDC(void **a1)
{
  v1 = a1;
  sub_616CD4((a1 + 6));
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    v4 = v1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v1[3];
    }

    v1[4] = v2;
    operator delete(v4);
  }

  v6 = *v1;
  if (*v1)
  {
    v7 = v1[1];
    v8 = *v1;
    if (v7 != v6)
    {
      v29 = v1;
      v30 = *v1;
      v9 = v1[1];
      do
      {
        v12 = *(v9 - 3);
        v9 -= 3;
        v11 = v12;
        if (v12)
        {
          v32 = v9;
          v13 = *(v7 - 2);
          v10 = v11;
          if (v13 != v11)
          {
            v31 = v7;
            while (1)
            {
              if (*(v13 - 1) < 0)
              {
                operator delete(*(v13 - 3));
                v15 = *(v13 - 13);
                if (v15)
                {
LABEL_26:
                  v18 = *(v13 - 12);
                  v19 = v15;
                  if (v18 != v15)
                  {
                    do
                    {
                      v18 = sub_3EEA68(v18 - 1096);
                    }

                    while (v18 != v15);
                    v19 = *(v13 - 13);
                  }

                  *(v13 - 12) = v15;
                  operator delete(v19);
                  v16 = v13 - 16;
                  v17 = *(v13 - 16);
                  if (!v17)
                  {
                    goto LABEL_20;
                  }

LABEL_30:
                  v20 = *(v13 - 15);
                  v14 = v17;
                  if (v20 != v17)
                  {
                    do
                    {
                      v21 = *(v20 - 3);
                      if (v21)
                      {
                        v22 = *(v20 - 2);
                        v23 = *(v20 - 3);
                        if (v22 != v21)
                        {
                          do
                          {
                            v24 = v22 - 32;
                            v25 = *(v22 - 2);
                            if (v25 != -1)
                            {
                              (off_2673AA8[v25])(&v33, v22 - 32);
                            }

                            *(v22 - 2) = -1;
                            v22 -= 32;
                          }

                          while (v24 != v21);
                          v23 = *(v20 - 3);
                        }

                        *(v20 - 2) = v21;
                        operator delete(v23);
                      }

                      v26 = *(v20 - 8);
                      if (v26 != -1)
                      {
                        (off_2673AA8[v26])(&v34, v20 - 7);
                      }

                      v27 = v20 - 10;
                      *(v20 - 8) = -1;
                      if (*(v20 - 57) < 0)
                      {
                        operator delete(*v27);
                      }

                      v20 -= 10;
                    }

                    while (v27 != v17);
                    v14 = *v16;
                  }

                  *(v13 - 15) = v17;
                  operator delete(v14);
                  goto LABEL_20;
                }
              }

              else
              {
                v15 = *(v13 - 13);
                if (v15)
                {
                  goto LABEL_26;
                }
              }

              v16 = v13 - 16;
              v17 = *(v13 - 16);
              if (v17)
              {
                goto LABEL_30;
              }

LABEL_20:
              v13 = v16;
              if (v16 == v11)
              {
                v7 = v31;
                v10 = *v32;
                v6 = v30;
                break;
              }
            }
          }

          *(v7 - 2) = v11;
          operator delete(v10);
          v9 = v32;
        }

        v7 = v9;
      }

      while (v9 != v6);
      v1 = v29;
      v8 = *v29;
    }

    v1[1] = v6;
    operator delete(v8);
  }

  return v1;
}

double sub_D3B140(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 8);
  v7 = (24 * v2 + *a1 - v6);
  sub_D3B288(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = 24 * v2 + 24;
  *(a1 + 8) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 24 * v2 + 24;
  }

  return *&v9;
}

void sub_D3B274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

void sub_D3B288(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v4;
      a4[2] = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v4 += 3;
      a4 += 3;
    }

    while (v4 != a3);
    if (a2 != a3)
    {
      v23 = a3;
      do
      {
        v7 = *a2;
        if (*a2)
        {
          v5 = a2;
          v8 = a2[1];
          v6 = *a2;
          if (v8 != v7)
          {
            v24 = a2;
            while (1)
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 3));
                v10 = *(v8 - 13);
                if (v10)
                {
LABEL_20:
                  v13 = *(v8 - 12);
                  v14 = v10;
                  if (v13 != v10)
                  {
                    do
                    {
                      v13 = sub_3EEA68(v13 - 1096);
                    }

                    while (v13 != v10);
                    v14 = *(v8 - 13);
                  }

                  *(v8 - 12) = v10;
                  operator delete(v14);
                  v11 = v8 - 16;
                  v12 = *(v8 - 16);
                  if (!v12)
                  {
                    goto LABEL_14;
                  }

LABEL_24:
                  v15 = *(v8 - 15);
                  v9 = v12;
                  if (v15 != v12)
                  {
                    do
                    {
                      v16 = *(v15 - 3);
                      if (v16)
                      {
                        v17 = *(v15 - 2);
                        v18 = *(v15 - 3);
                        if (v17 != v16)
                        {
                          do
                          {
                            v19 = v17 - 32;
                            v20 = *(v17 - 2);
                            if (v20 != -1)
                            {
                              (off_2673AA8[v20])(&v25, v17 - 32);
                            }

                            *(v17 - 2) = -1;
                            v17 -= 32;
                          }

                          while (v19 != v16);
                          v18 = *(v15 - 3);
                        }

                        *(v15 - 2) = v16;
                        operator delete(v18);
                      }

                      v21 = *(v15 - 8);
                      if (v21 != -1)
                      {
                        (off_2673AA8[v21])(&v26, v15 - 7);
                      }

                      v22 = v15 - 10;
                      *(v15 - 8) = -1;
                      if (*(v15 - 57) < 0)
                      {
                        operator delete(*v22);
                      }

                      v15 -= 10;
                    }

                    while (v22 != v12);
                    v9 = *v11;
                  }

                  *(v8 - 15) = v12;
                  operator delete(v9);
                  goto LABEL_14;
                }
              }

              else
              {
                v10 = *(v8 - 13);
                if (v10)
                {
                  goto LABEL_20;
                }
              }

              v11 = v8 - 16;
              v12 = *(v8 - 16);
              if (v12)
              {
                goto LABEL_24;
              }

LABEL_14:
              v8 = v11;
              if (v11 == v7)
              {
                v5 = v24;
                v6 = *v24;
                break;
              }
            }
          }

          v5[1] = v7;
          operator delete(v6);
          a3 = v23;
          a2 = v5;
        }

        a2 += 3;
      }

      while (a2 != a3);
    }
  }
}

uint64_t sub_D3B4AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D3B548((a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void **sub_D3B548(void **a1)
{
  v1 = a1;
  sub_616CD4((a1 + 6));
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    v4 = v1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v1[3];
    }

    v1[4] = v2;
    operator delete(v4);
  }

  v6 = *v1;
  if (*v1)
  {
    v7 = v1[1];
    v8 = *v1;
    if (v7 != v6)
    {
      v29 = v1;
      v30 = *v1;
      v9 = v1[1];
      do
      {
        v12 = *(v9 - 3);
        v9 -= 3;
        v11 = v12;
        if (v12)
        {
          v32 = v9;
          v13 = *(v7 - 2);
          v10 = v11;
          if (v13 != v11)
          {
            v31 = v7;
            while (1)
            {
              if (*(v13 - 1) < 0)
              {
                operator delete(*(v13 - 3));
                v15 = *(v13 - 13);
                if (v15)
                {
LABEL_26:
                  v18 = *(v13 - 12);
                  v19 = v15;
                  if (v18 != v15)
                  {
                    do
                    {
                      v18 = sub_3EEA68(v18 - 1096);
                    }

                    while (v18 != v15);
                    v19 = *(v13 - 13);
                  }

                  *(v13 - 12) = v15;
                  operator delete(v19);
                  v16 = v13 - 16;
                  v17 = *(v13 - 16);
                  if (!v17)
                  {
                    goto LABEL_20;
                  }

LABEL_30:
                  v20 = *(v13 - 15);
                  v14 = v17;
                  if (v20 != v17)
                  {
                    do
                    {
                      v21 = *(v20 - 3);
                      if (v21)
                      {
                        v22 = *(v20 - 2);
                        v23 = *(v20 - 3);
                        if (v22 != v21)
                        {
                          do
                          {
                            v24 = v22 - 32;
                            v25 = *(v22 - 2);
                            if (v25 != -1)
                            {
                              (off_2673AA8[v25])(&v33, v22 - 32);
                            }

                            *(v22 - 2) = -1;
                            v22 -= 32;
                          }

                          while (v24 != v21);
                          v23 = *(v20 - 3);
                        }

                        *(v20 - 2) = v21;
                        operator delete(v23);
                      }

                      v26 = *(v20 - 8);
                      if (v26 != -1)
                      {
                        (off_2673AA8[v26])(&v34, v20 - 7);
                      }

                      v27 = v20 - 10;
                      *(v20 - 8) = -1;
                      if (*(v20 - 57) < 0)
                      {
                        operator delete(*v27);
                      }

                      v20 -= 10;
                    }

                    while (v27 != v17);
                    v14 = *v16;
                  }

                  *(v13 - 15) = v17;
                  operator delete(v14);
                  goto LABEL_20;
                }
              }

              else
              {
                v15 = *(v13 - 13);
                if (v15)
                {
                  goto LABEL_26;
                }
              }

              v16 = v13 - 16;
              v17 = *(v13 - 16);
              if (v17)
              {
                goto LABEL_30;
              }

LABEL_20:
              v13 = v16;
              if (v16 == v11)
              {
                v7 = v31;
                v10 = *v32;
                v6 = v30;
                break;
              }
            }
          }

          *(v7 - 2) = v11;
          operator delete(v10);
          v9 = v32;
        }

        v7 = v9;
      }

      while (v9 != v6);
      v1 = v29;
      v8 = *v29;
    }

    v1[1] = v6;
    operator delete(v8);
  }

  return v1;
}

void *sub_D3B7AC(void *a1, _DWORD *a2)
{
  v4 = sub_D3B8E4(a1, a2);
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
          if (sub_4C2D38((v9 + 2), a2))
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
        if (sub_4C2D38((v9 + 2), a2))
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

uint64_t sub_D3B8E4(uint64_t a1, _DWORD *a2)
{
  if (sub_4C2B70(a2))
  {
    v3 = sub_4C2BA0(a2);
LABEL_5:
    v5 = 0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ (v5 >> 47) ^ v5);
    v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
    return (v4 + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  }

  if (sub_4C2B80(a2))
  {
    v3 = sub_4C2BC4(a2);
    goto LABEL_5;
  }

  if (sub_4C2B90(a2))
  {
    return *(sub_4C2C1C(a2) + 8);
  }

  else
  {
    return 0;
  }
}

void *sub_D3B9CC(void *a1, _DWORD *a2)
{
  v4 = sub_D3B8E4(a1, a2);
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
    sub_D3BD00();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_4C2D38((v10 + 2), a2))
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

  if ((sub_4C2D38((v10 + 2), a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_D3BCEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D3BE90(va);
  _Unwind_Resume(a1);
}

void sub_D3BE70(_Unwind_Exception *a1)
{
  sub_11BD8(v2);
  sub_D3BE90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D3BE90(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[8];
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

      v5 = v1[6];
      v1[6] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_D3BF04(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_CEFC14((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 32);
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
          v8 = *v5;
        }

        *(a1 + 40) = v6;
        operator delete(v8);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      sub_CEBD3C(a1 + 56, (a2 + 56));
LABEL_31:
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_32;
    }

    sub_D3C144(a1 + 8);
  }

  else if (*a2)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      if (v11 != v10)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 24));
          }

          v11 -= 32;
        }

        while (v11 != v10);
        v12 = *(a1 + 24);
      }

      *(a1 + 32) = v10;
      operator delete(v12);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v13 = *(a2 + 72);
    *(a1 + 32) = *(a2 + 32);
    v14 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a1 + 72) = v13;
    v15 = *(a2 + 64);
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a2 + 64) = 0;
    v16 = *(a2 + 80);
    *(a1 + 80) = v16;
    *(a1 + 88) = *(a2 + 88);
    if (v16)
    {
      v17 = *(v13 + 8);
      v18 = *(a1 + 64);
      if ((v18 & (v18 - 1)) != 0)
      {
        if (v17 >= v18)
        {
          v17 %= v18;
        }
      }

      else
      {
        v17 &= v18 - 1;
      }

      *(v14 + 8 * v17) = a1 + 72;
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
    }

    goto LABEL_31;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_32:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D3C144(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    do
    {
      v7 = *v2;
      v8 = v2[8];
      if (v8)
      {
        do
        {
          v9 = *v8;
          operator delete(v8);
          v8 = v9;
        }

        while (v9);
      }

      v10 = v2[6];
      v2[6] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 24);
    if (v5 != v4)
    {
      do
      {
        v11 = *(v5 - 1);
        v5 -= 3;
        if (v11 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(a1 + 24);
    }

    *(a1 + 32) = v4;
    operator delete(v6);
  }

  if (*a1)
  {
    sub_CEFC14(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3C228(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_D3C144(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_D3C2C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_F63D58(*a1))
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
    *(a2 + 101) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    v4 = *(*(a1 + 8) + 248);
    if (v4)
    {
      v5 = *a1;
      v21[0] = -1;
      v21[1] = -1;
      sub_4D1DAC(v22, v5, v21, 0, *(a1 + 16), v4);
      v20 = 0;
      *v18 = 0u;
      v19 = 0u;
      v17 = 0;
      LOBYTE(__p) = 0;
      sub_4C573C(a2, v22, 0, v18, &__p);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      sub_3EEA68(v22);
    }

    else
    {
      v6 = *a1;
      v18[0] = 0;
      v18[1] = 0;
      *&v19 = 0;
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      v7 = *(a1 + 16);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v8 = *v7;
      v9 = v7[1];
      *&__p = &v13;
      BYTE8(__p) = 0;
      if (v9 != v8)
      {
        if (0x8E38E38E38E38E39 * ((v9 - v8) >> 5) < 0xE38E38E38E38E4)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4C5624(a2, v6, v18, v22, &v13);
      v10 = v13;
      if (v13)
      {
        v11 = v14;
        v12 = v13;
        if (v14 != v13)
        {
          do
          {
            v11 = sub_3EE9A4(v11 - 36);
          }

          while (v11 != v10);
          v12 = v13;
        }

        v14 = v10;
        operator delete(v12);
      }

      if (v23[1])
      {
        *&v24 = v23[1];
        operator delete(v23[1]);
      }

      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }
    }
  }
}

void sub_D3C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_419F14(&a9);
  sub_21DB4B4(&a26);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D3C588(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_F64B34(*a1))
  {
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 96) = -1;
    *(a2 + 101) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    v4 = *(*(a1 + 8) + 248);
    if (v4)
    {
      v5 = *a1;
      v21[0] = -1;
      v21[1] = -1;
      sub_4D6464(v22, v5, v21, 0, *(a1 + 16), v4);
      v20 = 0;
      *v18 = 0u;
      v19 = 0u;
      v17 = 0;
      LOBYTE(__p) = 0;
      sub_4C63BC(a2, v22, 0, v18, &__p);
      if (v17 < 0)
      {
        operator delete(__p);
      }

      sub_3EEA68(v22);
    }

    else
    {
      v6 = *a1;
      v18[0] = 0;
      v18[1] = 0;
      *&v19 = 0;
      v25 = 0u;
      memset(v26, 0, sizeof(v26));
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      v7 = *(a1 + 16);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v8 = *v7;
      v9 = v7[1];
      *&__p = &v13;
      BYTE8(__p) = 0;
      if (v9 != v8)
      {
        if (0x8E38E38E38E38E39 * ((v9 - v8) >> 5) < 0xE38E38E38E38E4)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4C62A4(a2, v6, v18, v22, &v13);
      v10 = v13;
      if (v13)
      {
        v11 = v14;
        v12 = v13;
        if (v14 != v13)
        {
          do
          {
            v11 = sub_3EE9A4(v11 - 36);
          }

          while (v11 != v10);
          v12 = v13;
        }

        v14 = v10;
        operator delete(v12);
      }

      if (v23[1])
      {
        *&v24 = v23[1];
        operator delete(v23[1]);
      }

      if (v22[0])
      {
        v22[1] = v22[0];
        operator delete(v22[0]);
      }

      if (v18[0])
      {
        v18[1] = v18[0];
        operator delete(v18[0]);
      }
    }
  }
}

void sub_D3C7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_419F14(&a9);
  sub_21DB4B4(&a26);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D3C84C()
{
  byte_27B51DF = 3;
  LODWORD(qword_27B51C8) = 5136193;
  byte_27B51F7 = 3;
  LODWORD(qword_27B51E0) = 5136194;
  byte_27B520F = 3;
  LODWORD(qword_27B51F8) = 5136195;
  byte_27B5227 = 15;
  strcpy(&qword_27B5210, "vehicle_mass_kg");
  byte_27B523F = 21;
  strcpy(&xmmword_27B5228, "vehicle_cargo_mass_kg");
  byte_27B5257 = 19;
  strcpy(&qword_27B5240, "vehicle_aux_power_w");
  byte_27B526F = 15;
  strcpy(&qword_27B5258, "dcdc_efficiency");
  strcpy(&qword_27B5270, "drive_train_efficiency");
  HIBYTE(word_27B5286) = 22;
  operator new();
}

void sub_D3CA28(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B5286) < 0)
  {
    sub_21E44A8();
  }

  sub_21E44B4();
  _Unwind_Resume(a1);
}

void sub_D3CA48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v41) = 0;
  v47 = 0;
  LOBYTE(v48) = 0;
  *(&v48 + 1) = 0;
  v3 = *a1;
  v4 = *(*a1 + 392);
  if (!v4)
  {
    v4 = &off_27734B8;
  }

  if ((v4[2] & 1) == 0 || *(v4 + 11) != 2)
  {
    *a2 = 1;
    *(a2 + 8) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = v48;
    return;
  }

  sub_7E9A4(v40);
  LOBYTE(v48) = 1;
  v5 = *(v3 + 336);
  if (!v5)
  {
    v5 = &off_2772E28;
  }

  v6 = v5[10];
  if (!v6)
  {
    v6 = &off_2772DF8;
  }

  if (v6[2])
  {
    v8 = *(v3 + 392);
    if (!v8)
    {
      v8 = &off_27734B8;
    }

    sub_9901FC(v8[3] & 0xFFFFFFFFFFFFFFFELL, &__dst);
    if (v27 != v28 || (v29 & 1) != 0)
    {
      if (v47 == 1)
      {
        v41 = __dst;
        if (SHIBYTE(v43) < 0)
        {
          if (v26 >= 0)
          {
            v12 = &v25;
          }

          else
          {
            v12 = v25;
          }

          if (v26 >= 0)
          {
            v13 = HIBYTE(v26);
          }

          else
          {
            v13 = *(&v25 + 1);
          }

          sub_13B38(&v42, v12, v13);
        }

        else if (v26 < 0)
        {
          sub_13A68(&v42, v25, *(&v25 + 1));
        }

        else
        {
          v42 = v25;
          v43 = v26;
        }

        sub_602DCC(&v44, v27, v28, (v28 - v27) >> 5);
        v46 = v29;
      }

      else
      {
        sub_D3D26C(&v41, &__dst);
        v47 = 1;
      }

      *(&v48 + 1) = vcvtad_u64_f64(sub_7EA60(v40));
      *a2 = 1;
      *(a2 + 8) = 0;
      *(a2 + 72) = 0;
      if (v47 == 1)
      {
        v16 = v43;
        *(a2 + 8) = v41;
        *(a2 + 16) = v42;
        *(a2 + 32) = v16;
        v42 = 0uLL;
        *(a2 + 40) = v44;
        *(a2 + 56) = v45;
        v43 = 0;
        v44 = 0uLL;
        v45 = 0;
        *(a2 + 64) = v46;
        *(a2 + 72) = 1;
      }

      *(a2 + 80) = v48;
      v17 = v27;
      if (!v27)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (!sub_7E7E4(1u))
    {
LABEL_80:
      v22.n128_u64[0] = 1;
      v22.n128_u64[1] = &off_2669FE0;
      sub_434934(&v30, &v22);
      *a2 = 0;
      v21 = v31;
      *(a2 + 8) = v30;
      *(a2 + 24) = v21;
      *(a2 + 40) = v32;
      *(a2 + 48) = v33;
      v17 = v27;
      if (!v27)
      {
LABEL_58:
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        goto LABEL_60;
      }

LABEL_57:
      v28 = v17;
      operator delete(v17);
      goto LABEL_58;
    }

    sub_19594F8(&v30);
    sub_4A5C(&v30, "Failed to parse route handle from the request", 45);
    if ((v39 & 0x10) != 0)
    {
      v18 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v18 = v35;
      }

      v19 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v11 = 0;
        v23 = 0;
LABEL_75:
        v22.n128_u8[v11] = 0;
        sub_7E854(&v22, 1u);
        if (v23 < 0)
        {
          operator delete(v22.n128_u64[0]);
        }

        if (v37 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v31);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_80;
      }

      v19 = &v31 + 1;
      v18 = v33;
    }

    v20 = *v19;
    v11 = v18 - *v19;
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v23 = v18 - *v19;
    if (v11)
    {
      memmove(&v22, v20, v11);
    }

    goto LABEL_75;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v30);
    sub_4A5C(&v30, "Transit continuity request does not have a timepoint", 52);
    if ((v39 & 0x10) != 0)
    {
      v9 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v9 = v35;
      }

      v10 = &v34;
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v7 = 0;
        HIBYTE(v25) = 0;
LABEL_46:
        *(&__dst + v7) = 0;
        sub_7E854(&__dst, 1u);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__dst);
        }

        if (v37 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v31);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_51;
      }

      v10 = &v31 + 1;
      v9 = v33;
    }

    v14 = *v10;
    v7 = v9 - *v10;
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = v9 - *v10;
    if (v7)
    {
      memmove(&__dst, v14, v7);
    }

    goto LABEL_46;
  }

LABEL_51:
  __dst = &dword_0 + 1;
  *&v25 = &off_2669FE0;
  sub_434934(&v30, &__dst);
  *a2 = 0;
  v15 = v31;
  *(a2 + 8) = v30;
  *(a2 + 24) = v15;
  *(a2 + 40) = v32;
  *(a2 + 48) = v33;
LABEL_60:
  if (v47)
  {
    if (v44)
    {
      *(&v44 + 1) = v44;
      operator delete(v44);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }
  }
}

void sub_D3D16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a23);
  sub_98ECD0(&a15);
  sub_D3D38C(v23 - 136);
  _Unwind_Resume(a1);
}

void sub_D3D1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a23);
    sub_D3D38C(v23 - 136);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a23);
  sub_D3D38C(v23 - 136);
  _Unwind_Resume(a1);
}

void sub_D3D23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_98ECD0(va);
  sub_D3D38C(v4 - 136);
  _Unwind_Resume(a1);
}

uint64_t sub_D3D26C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if ((*(a2 + 31) & 0x80000000) == 0)
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v6 = *(a2 + 32);
    v5 = *(a2 + 40);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v7 = v8 - v9;
  if (v8 != v9)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_D3D350(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t sub_D3D38C(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    v1 = *(result + 32);
    if (v1)
    {
      *(result + 40) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    if (*(result + 31) < 0)
    {
      v3 = result;
      operator delete(*(result + 8));
      return v3;
    }
  }

  return result;
}

__n128 sub_D3D3F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v32);
  memset(v31, 0, 100);
  v30 = sub_3AF6B4(*(a1 + 1584));
  v4 = *(a1 + 1576);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_D3D64C(&v30, v5, &__p);
    v8 = *&v31[8];
    if (*&v31[8] >= *&v31[16])
    {
      v9 = sub_D3E2DC(v31, v5, &__p);
    }

    else
    {
      sub_D3E44C(v31, *&v31[8], v5, &__p);
      v9 = v8 + 152;
    }

    *&v31[8] = v9;
    v10 = __p;
    if (__p)
    {
      v11 = v28;
      v7 = __p;
      if (v28 != __p)
      {
        do
        {
          v13 = *(v11 - 4);
          if (v13)
          {
            do
            {
              v14 = *v13;
              operator delete(v13);
              v13 = v14;
            }

            while (v14);
          }

          v15 = *(v11 - 6);
          *(v11 - 6) = 0;
          if (v15)
          {
            operator delete(v15);
          }

          v16 = *(v11 - 9);
          if (v16)
          {
            do
            {
              v17 = *v16;
              operator delete(v16);
              v16 = v17;
            }

            while (v17);
          }

          v18 = *(v11 - 11);
          *(v11 - 11) = 0;
          if (v18)
          {
            operator delete(v18);
          }

          v19 = v11 - 14;
          v20 = *(v11 - 14);
          if (v20)
          {
            v21 = *(v11 - 13);
            v12 = *(v11 - 14);
            if (v21 != v20)
            {
              v22 = *(v11 - 13);
              do
              {
                v24 = *(v22 - 5);
                v22 -= 40;
                v23 = v24;
                if (v24)
                {
                  *(v21 - 4) = v23;
                  operator delete(v23);
                }

                v21 = v22;
              }

              while (v22 != v20);
              v12 = *v19;
            }

            *(v11 - 13) = v20;
            operator delete(v12);
          }

          v11 -= 14;
        }

        while (v19 != v10);
        v7 = __p;
      }

      v28 = v10;
      operator delete(v7);
    }

    v5 += 128;
  }

  memset(&v31[24], 0, 76);
  *&v31[24] = vcvtad_u64_f64(sub_7EA60(v32));
  *a2 = 1;
  *(a2 + 8) = *v31;
  *(a2 + 24) = *&v31[16];
  result = *&v31[40];
  v26 = *&v31[72];
  *(a2 + 64) = *&v31[56];
  *(a2 + 80) = v26;
  *(a2 + 96) = *&v31[88];
  *(a2 + 32) = *&v31[24];
  *(a2 + 48) = result;
  return result;
}

void sub_D3D5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_D3E76C(va);
  _Unwind_Resume(a1);
}

void sub_D3D610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_D3D760(&a9);
  sub_D3E76C(&a13);
  _Unwind_Resume(a1);
}

void sub_D3D630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_D3D760(&a9);
  sub_D3E76C(&a13);
  _Unwind_Resume(a1);
}

void sub_D3D64C(uint64_t *a1, uint64_t a2, void ***a3)
{
  v6 = sub_4C35B0(a2);
  v7 = a3[1];
  v8 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a3) >> 4);
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
        ;
      }

      a3[1] = i;
    }
  }

  else
  {
    sub_D3DFD8(a3, v6 - v8);
  }

  v10 = sub_58BBC(a2);
  v11 = v10[1] - *v10;
  if (v11)
  {
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v11 >> 3);
    do
    {
      v14 = *a1;
      v15 = sub_4C49C0(a2, v12);
      v16 = sub_D3DDA4(a3, v12);
      sub_4E5AE4(v14, v15, v16);
      ++v12;
    }

    while (v13 != v12);
  }
}

void **sub_D3D760(void **a1)
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
        v3 = sub_60AA70(v3 - 14);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D3D7BC()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v9);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  sub_F4AF40(v1, *(v0 + 1584), v0);
}

void sub_D3DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_F4AF44(va);
  sub_D3EA68(v4 - 208);
  _Unwind_Resume(a1);
}

void sub_D3DA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v13 - 200) = v12;
  sub_D3D760(&a9);
  sub_F4AF44(&a12);
  sub_D3EA68(v13 - 208);
  _Unwind_Resume(a1);
}

void sub_D3DAB0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_7E9A4(v38);
  memset(v37, 0, 100);
  sub_F4BDF8(v36, *(v0 + 1584), v0, 0);
  v3 = *(v0 + 1576);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_F4BDFC(v36, v4, &__p);
    v7 = *&v37[8];
    if (*&v37[8] >= *&v37[16])
    {
      v8 = sub_D3EACC(v37, v4, &__p);
    }

    else
    {
      sub_D3EC3C(v37, *&v37[8], v4, &__p);
      v8 = v7 + 152;
    }

    *&v37[8] = v8;
    v9 = __p;
    if (__p)
    {
      v10 = v34;
      v6 = __p;
      if (v34 != __p)
      {
        do
        {
          v12 = *(v10 - 4);
          if (v12)
          {
            do
            {
              v13 = *v12;
              operator delete(v12);
              v12 = v13;
            }

            while (v13);
          }

          v14 = *(v10 - 6);
          *(v10 - 6) = 0;
          if (v14)
          {
            operator delete(v14);
          }

          v15 = *(v10 - 9);
          if (v15)
          {
            do
            {
              v16 = *v15;
              operator delete(v15);
              v15 = v16;
            }

            while (v16);
          }

          v17 = *(v10 - 11);
          *(v10 - 11) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v18 = v10 - 14;
          v19 = *(v10 - 14);
          if (v19)
          {
            v20 = *(v10 - 13);
            v11 = *(v10 - 14);
            if (v20 != v19)
            {
              v21 = *(v10 - 13);
              do
              {
                v23 = *(v21 - 5);
                v21 -= 40;
                v22 = v23;
                if (v23)
                {
                  *(v20 - 4) = v22;
                  operator delete(v22);
                }

                v20 = v21;
              }

              while (v21 != v19);
              v11 = *v18;
            }

            *(v10 - 13) = v19;
            operator delete(v11);
          }

          v10 -= 14;
        }

        while (v18 != v9);
        v6 = __p;
      }

      v34 = v9;
      operator delete(v6);
    }

    v4 += 128;
  }

  v24 = sub_F4B45C(v36);
  *&v37[24] = *v24;
  v25 = v24[1];
  v26 = v24[2];
  v27 = v24[3];
  *&v37[84] = *(v24 + 60);
  *&v37[72] = v27;
  *&v37[56] = v26;
  *&v37[40] = v25;
  v28 = sub_7EA60(v38);
  *v2 = 1;
  *(v2 + 24) = *&v37[16];
  *(v2 + 8) = *v37;
  memset(v37, 0, 24);
  *&v37[24] = vcvtad_u64_f64(v28);
  v29 = *&v37[40];
  v30 = *&v37[72];
  *(v2 + 64) = *&v37[56];
  *(v2 + 80) = v30;
  *(v2 + 96) = *&v37[88];
  *(v2 + 32) = *&v37[24];
  *(v2 + 48) = v29;
  sub_F4AF44(v36);
  v31 = *v37;
  if (*v37)
  {
    for (i = *&v37[8]; i != v31; sub_60A974(v37, i))
    {
      i -= 152;
    }

    *&v37[8] = v31;
    operator delete(*v37);
  }
}

void sub_D3DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_F4AF44(va);
  sub_D3EF5C(v4 - 208);
  _Unwind_Resume(a1);
}

void sub_D3DD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v13 - 200) = v12;
  sub_D3D760(&a9);
  sub_F4AF44(&a12);
  sub_D3EF5C(v13 - 208);
  _Unwind_Resume(a1);
}

uint64_t sub_D3DDA4(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 112 * a2;
}

void sub_D3DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_D3DFD8(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = &v3[14 * a2];
      do
      {
        *(v3 + 5) = 0uLL;
        *(v3 + 6) = 0uLL;
        *(v3 + 2) = 0uLL;
        *(v3 + 3) = 0uLL;
        *v3 = 0uLL;
        *(v3 + 1) = 0uLL;
        *(v3 + 4) = 0uLL;
        *(v3 + 14) = 1065353216;
        *(v3 + 24) = 1065353216;
        v3 += 14;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x249249249249249)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x124924924924924)
    {
      v8 = 0x249249249249249;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x249249249249249)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 112 * v5;
    v11 = 112 * v5 + 112 * a2;
    v12 = 112 * v5;
    do
    {
      *(v12 + 80) = 0uLL;
      *(v12 + 96) = 0uLL;
      *(v12 + 32) = 0uLL;
      *(v12 + 48) = 0uLL;
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 64) = 0uLL;
      *(v12 + 56) = 1065353216;
      *(v12 + 96) = 1065353216;
      v12 += 112;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v10 + *a1 - v14;
      do
      {
        sub_D3E1E0(v17, v16);
        v16 += 112;
        v17 += 112;
      }

      while (v16 != v14);
      do
      {
        sub_60AA70(v13);
        v13 += 14;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t sub_D3E1E0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = *a2;
  v2 = *(a2 + 24);
  *(result + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(result + 40) = v3;
  v4 = *(a2 + 32);
  *(result + 24) = v2;
  *(result + 32) = v4;
  *(a2 + 32) = 0;
  v5 = *(a2 + 48);
  *(result + 48) = v5;
  *(result + 56) = *(a2 + 56);
  if (v5)
  {
    v6 = *(v3 + 8);
    v7 = *(result + 32);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = result + 40;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  v8 = *(a2 + 80);
  *(result + 80) = v8;
  v9 = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(result + 64) = v9;
  *(a2 + 72) = 0;
  v10 = *(a2 + 88);
  *(result + 88) = v10;
  *(result + 96) = *(a2 + 96);
  if (v10)
  {
    v11 = *(v8 + 8);
    v12 = *(result + 72);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(v9 + 8 * v11) = result + 80;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  *(result + 104) = *(a2 + 104);
  return result;
}

uint64_t sub_D3E2DC(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  sub_D3E44C(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3);
  v7 = a1[1];
  v8 = 152 * v3 + *a1 - v7;
  sub_D3E574(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = 152 * v3 + 152;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 152 * v3 + 152;
}

void sub_D3E438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D3E714(va);
  _Unwind_Resume(a1);
}

void *sub_D3E44C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_CDF41C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v10 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v10;
  }

  return sub_60B6D4((a2 + 128), a4);
}

void sub_D3E530(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_D3E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(a4 + 94) = *(v7 + 94);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v11 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v11;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_60A974(a1, v5);
        v5 += 152;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_D3E6AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 152;
        sub_60A974(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_D3E714(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    sub_60A974(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3E76C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3E7D0(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  sub_D3E940(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3);
  v7 = a1[1];
  v8 = 152 * v3 + *a1 - v7;
  sub_60B8CC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = 152 * v3 + 152;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 152 * v3 + 152;
}

void sub_D3E92C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_60BA6C(va);
  _Unwind_Resume(a1);
}

void *sub_D3E940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_3ED39C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v10 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v10;
  }

  return sub_60B6D4((a2 + 128), a4);
}

void sub_D3EA24(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D3EA68(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3EACC(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  sub_D3EC3C(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3);
  v7 = a1[1];
  v8 = 152 * v3 + *a1 - v7;
  sub_D3ED64(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = 152 * v3 + 152;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 152 * v3 + 152;
}

void sub_D3EC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D3EF04(va);
  _Unwind_Resume(a1);
}

void *sub_D3EC3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_9B8E8C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v7 = *(a3 + 48);
  v8 = *(a3 + 64);
  v9 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 48) = v7;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v10 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v10;
  }

  return sub_60B6D4((a2 + 128), a4);
}

void sub_D3ED20(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_D3ED64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(a4 + 94) = *(v7 + 94);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v11 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v11;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_60A974(a1, v5);
        v5 += 152;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_D3EE9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 152;
        sub_60A974(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_D3EF04(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    sub_60A974(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D3EF5C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_D3EFC0(char ***a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_F63D58(*a1))
  {
    v5 = a1[1];
    if (sub_E67BDC(v5) || v5[22] != v5[23] || v5[25] != v5[26])
    {
      sub_7E9A4(v28);
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      v8.n128_u64[0] = -1;
      v8.n128_u32[2] = 0x7FFFFFFF;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      v10 = 0x7FFFFFFFFFFFFFFFuLL;
      LODWORD(v11[0]) = -1935635296;
      v11[1] = 0;
      *(&v11[1] + 7) = 0;
      memset(&v11[3], 0, 24);
      v12 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = 100;
      v15 = 0;
      v16 = 0;
      v17 = vnegq_f64(v6);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
      v23 = 1;
      v26 = 0;
      v24 = 0;
      v25 = 0;
      v27 = v17;
      v7 = nullsub_1(*a1);
      *&v27.f64[0] = sub_F6E3D4(*v7);
      operator new();
    }
  }

  v29.n128_u64[0] = 12;
  v29.n128_u64[1] = &off_2669FE0;
  sub_434934(&v8, &v29);
  *a2 = 0;
  v4 = v9;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  *(a2 + 40) = v10;
  *(a2 + 48) = DWORD2(v10);
}

void sub_D3FB18(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_F64B34(*a1))
  {
    v5 = a1[1];
    if (sub_E67BDC(v5) || v5[22] != v5[23] || v5[25] != v5[26])
    {
      sub_7E9A4(v29);
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      v9.n128_u64[0] = -1;
      v9.n128_u32[2] = 0x7FFFFFFF;
      *&v10 = -1;
      *(&v10 + 1) = -1;
      v11 = 0x7FFFFFFFFFFFFFFFuLL;
      LODWORD(v12[0]) = -1935635296;
      v12[1] = 0;
      *(&v12[1] + 7) = 0;
      memset(&v12[3], 0, 24);
      v13 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 100;
      v16 = 0;
      v17 = 0;
      v18 = vnegq_f64(v6);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      v24 = 1;
      v27 = 0;
      v25 = 0;
      v26 = 0;
      v28 = v18;
      v7 = nullsub_1(*a1);
      *&v28.f64[0] = sub_F70F54(*v7);
      operator new();
    }
  }

  v8.n128_u64[0] = 12;
  v8.n128_u64[1] = &off_2669FE0;
  sub_434934(&v9, &v8);
  *a2 = 0;
  v4 = v10;
  *(a2 + 8) = v9;
  *(a2 + 24) = v4;
  *(a2 + 40) = v11;
  *(a2 + 48) = DWORD2(v11);
}

uint64_t sub_D405F4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v6 - *a1;
  v8 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3) + 1;
  if (v8 > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - v5) >> 3) > v8)
  {
    v8 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - v5) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - v5) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v10 = 0x276276276276276;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = *a2;
  v12 = *a4;
  v13 = 8 * (v7 >> 3);
  v14 = *a3;
  *v13 = *a5;
  *(v13 + 8) = v14;
  *(v13 + 16) = *(a3 + 2);
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  *(v13 + 40) = 16842752;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 2139095039;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  v15 = v13 + 104;
  v16 = v13 - v7;
  *(v13 + 96) = 0;
  if (v5 != v6)
  {
    v17 = v5;
    v18 = v16;
    do
    {
      *v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 2);
      v21 = *(v17 + 3);
      *(v18 + 64) = *(v17 + 64);
      *(v18 + 32) = v20;
      *(v18 + 48) = v21;
      *(v18 + 16) = v19;
      *(v18 + 72) = *(v17 + 18);
      *(v18 + 88) = 0;
      *(v18 + 96) = 0;
      *(v18 + 80) = *(v17 + 5);
      *(v18 + 96) = v17[12];
      v17[10] = 0;
      v17[11] = 0;
      v17[12] = 0;
      v17 += 13;
      v18 += 104;
    }

    while (v17 != v6);
    do
    {
      v23 = v5[10];
      if (v23)
      {
        v24 = v5[11];
        v22 = v5[10];
        if (v24 != v23)
        {
          do
          {
            v25 = *(v24 - 9);
            v24 -= 4;
            if (v25 < 0)
            {
              operator delete(*v24);
            }
          }

          while (v24 != v23);
          v22 = v5[10];
        }

        v5[11] = v23;
        operator delete(v22);
      }

      v5 += 13;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return v15;
}

void sub_D40820(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v6);
  *a2 = 1;
  bzero((a2 + 8), 0x2B8uLL);
  *(a2 + 456) = 0x3FF0000000000000;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 5;
  *(a2 + 496) = 0u;
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0x7FFFFFFF;
  *(a2 + 632) = 0u;
  *(a2 + 552) = 0u;
  *(a2 + 568) = 0u;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 609) = 0u;
  *(a2 + 648) = -1;
  *(a2 + 656) = 0x7FFFFFFF;
  *(a2 + 660) = 0;
  *(a2 + 668) = 0;
  *(a2 + 672) = -1;
  *(a2 + 680) = -1;
  *(a2 + 704) = 0;
  v5[0] = a1;
  v5[1] = a2;
  v4 = *(a1 + 8);
  if (v4 == -1)
  {
    sub_5AF20();
  }

  v7 = v5;
  (off_2673AD8[v4])(&v7, a1);
  *(a2 + 704) = sub_7EA60(v6);
}

uint64_t sub_D40934(uint64_t *a1)
{
  v1 = *a1;
  sub_E7DA20(v3);
  sub_D16C58(*(v1 + 8) + 8, v3);
  return sub_5287C0(v3);
}

uint64_t sub_D40980(void **a1)
{
  v1 = *a1;
  sub_17541D0(v17);
  v2 = sub_E7A5E0(v17);
  sub_E79F40(v17, &v14);
  sub_D16C58(v1[1] + 8, &v14);
  sub_5287C0(&v14);
  sub_4FC024(1, v2, v1[1] + 8);
  v3 = sub_4EE130(v1[1] + 8);
  v5 = v3 != *(*v1 + 24) && v3 != 5;
  *(v1[1] + 696) = v5;
  v6 = sub_E89630(v17);
  if (sub_EA7118(v2))
  {
    v7 = sub_4EE304(v1[1] + 8);
    sub_4FB514(v7, &v14);
    v8 = v16;
    v9 = 1;
    if (v15 != v16 && v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = *(*v1 + 32);
      v9 = 1;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL && v10 > v6)
      {
        v11 = v15;
        while (v11 != v16)
        {
          v12 = *(v11 - 8);
          v11 -= 56;
          if (v10 <= v12)
          {
            v8 = v11 + 56;
            break;
          }
        }

        v9 = -1227133513 * ((v15 - v8) >> 3) + 2;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *(v1[1] + 700) = v9;
  return sub_1754598(v17);
}

uint64_t sub_D40B30(void **a1)
{
  v1 = *a1;
  sub_14C65CC(v8);
  v2 = sub_394BD0();
  sub_E7BE68(v8, v7);
  sub_D16C58(v1[1] + 8, v7);
  sub_5287C0(v7);
  sub_4FC024(2, v2, v1[1] + 8);
  v3 = sub_4EE130(v1[1] + 8);
  v5 = v3 != *(*v1 + 24) && v3 != 5;
  *(v1[1] + 696) = v5;
  return sub_14C6928(v8);
}

uint64_t sub_D40C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  sub_E867B8(*a2, v4);
  sub_D16C58(*(v2 + 8) + 8, v4);
  return sub_5287C0(v4);
}

uint64_t sub_D40C68(uint64_t *a1)
{
  v1 = *a1;
  sub_E7DA20(v3);
  sub_D16C58(*(v1 + 8) + 8, v3);
  return sub_5287C0(v3);
}

uint64_t sub_D40CB4(uint64_t *a1)
{
  v1 = *a1;
  sub_E7DA20(v3);
  sub_D16C58(*(v1 + 8) + 8, v3);
  return sub_5287C0(v3);
}

uint64_t sub_D40D00(uint64_t *a1)
{
  v1 = *a1;
  sub_E7DA20(v3);
  sub_D16C58(*(v1 + 8) + 8, v3);
  return sub_5287C0(v3);
}

uint64_t sub_D40D4C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_5287C0(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_D40DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  operator new();
}

void sub_D41050(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  operator new();
}

uint64_t sub_D412B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "SessionStateParserModule", 0x18uLL);
  v6 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_D0ACE4((a2 + 24), "Runtime", &v6, a1);
    *(a2 + 32) = result;
  }

  else
  {
    sub_D0AE98(*(a2 + 32), "Runtime", &v6, a1);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}

void sub_D41384(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_D413B0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v29);
  *a3 = 0x7FFFFFFF;
  *(a3 + 8) = 0;
  *(a3 + 40) = 0u;
  v6 = (a3 + 40);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0u;
  v25 = a3;
  *a3 = *sub_3B6890(a2);
  v7 = sub_74700();
  v8 = sub_73EE4(v7);
  if ((a3 + 8) != v8)
  {
    sub_74300((a3 + 8), *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * (v8[1] - *v8));
  }

  *(a3 + 32) = a1[9] != a1[10];
  v27 = 0uLL;
  v28 = 0;
  sub_D419F4(&v27, 0x34F72C234F72C235 * ((a1[4] - a1[3]) >> 3));
  v9 = a1[3];
  v10 = a1[4];
  if (v9 != v10)
  {
    v26 = a2;
    do
    {
      sub_D416AC(v9, a2, &v30);
      v12 = *(&v27 + 1);
      if (*(&v27 + 1) < v28)
      {
        v11 = v30;
        *(*(&v27 + 1) + 4) = v31;
        *v12 = v11;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 8) = 0;
        *(v12 + 8) = *__p;
        *(v12 + 24) = v33;
        *(&v27 + 1) = v12 + 32;
      }

      else
      {
        v13 = sub_D41DCC(&v27, &v30);
        v14 = __p[0];
        *(&v27 + 1) = v13;
        if (__p[0])
        {
          v15 = v6;
          v16 = __p[1];
          v17 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v18 = *(v16 - 3);
              if (v18)
              {
                v19 = *(v16 - 2);
                v20 = *(v16 - 3);
                if (v19 != v18)
                {
                  do
                  {
                    v21 = v19 - 32;
                    v22 = *(v19 - 8);
                    if (v22 != -1)
                    {
                      (off_2673B58[v22])(&v34, v19 - 32);
                    }

                    *(v19 - 8) = -1;
                    v19 -= 32;
                  }

                  while (v21 != v18);
                  v20 = *(v16 - 3);
                }

                *(v16 - 2) = v18;
                operator delete(v20);
              }

              v23 = *(v16 - 8);
              if (v23 != -1)
              {
                (off_2673B58[v23])(&v34, v16 - 7);
              }

              v24 = (v16 - 10);
              *(v16 - 8) = -1;
              if (*(v16 - 57) < 0)
              {
                operator delete(*v24);
              }

              v16 -= 10;
            }

            while (v24 != v14);
            v17 = __p[0];
          }

          __p[1] = v14;
          operator delete(v17);
          v6 = v15;
          a2 = v26;
        }
      }

      v9 += 232;
    }

    while (v9 != v10);
  }

  if (*v6)
  {
    sub_D41820(v6);
    operator delete(*v6);
  }

  *(v25 + 40) = v27;
  *(v25 + 56) = v28;
  *(v25 + 64) = sub_7EA60(v29);
}

void sub_D4164C(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_D417E4(va);
  sub_D41964(a2);
  _Unwind_Resume(a1);
}

void sub_D416AC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_3B0530(a2);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *a3 = 0;
  *(a3 + 4) = 0;
  *a3 = *(a1 + 144);
  *(a3 + 1) = sub_504834(a1);
  *(a3 + 2) = sub_504908(a1);
  *(a3 + 3) = *(a1 + 192);
  *(a3 + 4) = sub_50496C(a1, v5);
  *(a3 + 5) = sub_504AA4(a1, v5);
  if (a3 + 8 != a1 + 208)
  {
    sub_9FD394((a3 + 8), *(a1 + 208), *(a1 + 216), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 216) - *(a1 + 208)) >> 4));
  }
}

uint64_t sub_D41780(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_D417E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_D41820(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D41820(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        v6 = *(v3 - 16);
        v4 = *(v3 - 24);
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 3);
            if (v7)
            {
              v8 = *(v6 - 2);
              v9 = *(v6 - 3);
              if (v8 != v7)
              {
                do
                {
                  v10 = v8 - 32;
                  v11 = *(v8 - 2);
                  if (v11 != -1)
                  {
                    (off_2673B58[v11])(&v14, v8 - 32);
                  }

                  *(v8 - 2) = -1;
                  v8 -= 32;
                }

                while (v10 != v7);
                v9 = *(v6 - 3);
              }

              *(v6 - 2) = v7;
              operator delete(v9);
            }

            v12 = *(v6 - 8);
            if (v12 != -1)
            {
              (off_2673B58[v12])(&v15, v6 - 7);
            }

            v13 = v6 - 10;
            *(v6 - 8) = -1;
            if (*(v6 - 57) < 0)
            {
              operator delete(*v13);
            }

            v6 -= 10;
          }

          while (v13 != v5);
          v4 = *(v3 - 24);
        }

        *(v3 - 16) = v5;
        operator delete(v4);
      }

      v3 -= 32;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *sub_D41964(void *a1)
{
  v2 = (a1 + 5);
  if (a1[5])
  {
    sub_D41820(a1 + 5);
    operator delete(*v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

void *sub_D419F4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D41AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D41AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D41AC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 32;
        *(a1 + 16) = i - 32;
        v5 = *(i - 24);
        if (v5)
        {
          break;
        }

        i -= 32;
        if (v4 == v2)
        {
          goto LABEL_22;
        }
      }

      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        break;
      }

      *(i - 16) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v8 = *(v6 - 3);
      if (v8)
      {
        v9 = *(v6 - 2);
        v10 = *(v6 - 3);
        if (v9 != v8)
        {
          do
          {
            v11 = v9 - 32;
            v12 = *(v9 - 2);
            if (v12 != -1)
            {
              (off_2673B58[v12])(&v17, v9 - 32);
            }

            *(v9 - 2) = -1;
            v9 -= 32;
          }

          while (v11 != v8);
          v10 = *(v6 - 3);
        }

        *(v6 - 2) = v8;
        operator delete(v10);
      }

      v13 = *(v6 - 8);
      if (v13 != -1)
      {
        (off_2673B58[v13])(&v18, v6 - 7);
      }

      v14 = v6 - 10;
      *(v6 - 8) = -1;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v14);
      }

      v6 -= 10;
    }

    while (v14 != v5);
    v15 = *(i - 24);
    *(i - 16) = v5;
    operator delete(v15);
  }

LABEL_22:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_D41C40(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 4) = *(v6 + 2);
      *a4 = v7;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 2);
      *(a4 + 24) = *(v6 + 3);
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      v6 += 8;
      a4 += 32;
    }

    while (v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v9 = *(v5 + 1);
        if (v9)
        {
          v10 = *(v5 + 2);
          v8 = *(v5 + 1);
          if (v10 != v9)
          {
            do
            {
              v11 = *(v10 - 3);
              if (v11)
              {
                v12 = *(v10 - 2);
                v13 = *(v10 - 3);
                if (v12 != v11)
                {
                  do
                  {
                    v14 = v12 - 32;
                    v15 = *(v12 - 2);
                    if (v15 != -1)
                    {
                      (off_2673B58[v15])(&v18, v12 - 32);
                    }

                    *(v12 - 2) = -1;
                    v12 -= 32;
                  }

                  while (v14 != v11);
                  v13 = *(v10 - 3);
                }

                *(v10 - 2) = v11;
                operator delete(v13);
              }

              v16 = *(v10 - 8);
              if (v16 != -1)
              {
                (off_2673B58[v16])(&v19, v10 - 7);
              }

              v17 = v10 - 10;
              *(v10 - 8) = -1;
              if (*(v10 - 57) < 0)
              {
                operator delete(*v17);
              }

              v10 -= 10;
            }

            while (v17 != v9);
            v8 = *(v5 + 1);
          }

          *(v5 + 2) = v9;
          operator delete(v8);
        }

        v5 += 8;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_D41DCC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v15 = 0;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 4) = *(a2 + 4);
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  v17 = (32 * v2 + 32);
  sub_D41C40(a1, v8, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_D41AC8(&v15);
  return v14;
}

void sub_D41EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_D41AC8(va);
  _Unwind_Resume(a1);
}

void sub_D41F0C()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v2);
  sub_7E9A4(v1);
  sub_9F094C(&v3, *(v0 + 2472));
}

void sub_D42750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_1F1A8(&a29);
  sub_D42DC0(&STACK[0x8D0]);
  sub_1F1A8(&a42);
  sub_D42E4C(&STACK[0xFD8]);
  sub_528AB4(&a58);
  sub_D42FE0(&STACK[0x7C8]);
  sub_1F1A8(&STACK[0x878]);
  sub_1F1A8(&STACK[0x888]);
  sub_9FCEE0(v58);
  sub_9F0A6C(&STACK[0x10E0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D428C4()
{
  result = sub_7E7E4(2u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v33);
  sub_4A5C(&v33, "TransitGuidanceModule took ", 27);
  v1 = std::ostream::operator<<();
  v2 = sub_4A5C(v1, " ms: [ ", 7);
  sub_4A5C(v2, "TransitRouteBuilder: ", 21);
  v3 = std::ostream::operator<<();
  v4 = sub_4A5C(v3, " ms, ", 5);
  sub_4A5C(v4, "TransitFeatureDataBuilder: ", 27);
  v5 = std::ostream::operator<<();
  v6 = sub_4A5C(v5, " ms, ", 5);
  sub_4A5C(v6, "WalkingRouteBuilder: ", 21);
  v7 = std::ostream::operator<<();
  v8 = sub_4A5C(v7, " ms, ", 5);
  sub_4A5C(v8, "TransferInstructionFinder: ", 27);
  v9 = std::ostream::operator<<();
  v10 = sub_4A5C(v9, " ms, ", 5);
  sub_4A5C(v10, "FareResolver: ", 14);
  v11 = std::ostream::operator<<();
  v12 = sub_4A5C(v11, " ms, ", 5);
  sub_4A5C(v12, "IncidentsResolver: ", 19);
  v13 = std::ostream::operator<<();
  v14 = sub_4A5C(v13, " ms, ", 5);
  sub_4A5C(v14, "TransitIncidentsAnnotation: ", 28);
  v15 = std::ostream::operator<<();
  v16 = sub_4A5C(v15, " ms, ", 5);
  sub_4A5C(v16, "TransitInstructionsBuilder: ", 28);
  v17 = std::ostream::operator<<();
  v18 = sub_4A5C(v17, " ms, ", 5);
  sub_4A5C(v18, "TransitAdvisoryBuilder: ", 24);
  v19 = std::ostream::operator<<();
  v20 = sub_4A5C(v19, " ms, ", 5);
  sub_4A5C(v20, "TransitArtworkBuilder: ", 23);
  v21 = std::ostream::operator<<();
  v22 = sub_4A5C(v21, " ms, ", 5);
  sub_4A5C(v22, "TransitStyleAttributesBuilder: ", 31);
  v23 = std::ostream::operator<<();
  v24 = sub_4A5C(v23, " ms, ", 5);
  sub_4A5C(v24, "RouteHandleAnnotation: ", 23);
  v25 = std::ostream::operator<<();
  v26 = sub_4A5C(v25, " ms, ", 5);
  sub_4A5C(v26, "WalkToAPConnector: ", 19);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " ms ]", 5);
  if ((v43 & 0x10) != 0)
  {
    v29 = v42;
    if (v42 < v39)
    {
      v42 = v39;
      v29 = v39;
    }

    v30 = v38;
    v28 = v29 - v38;
    if (v29 - v38 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_20:
      sub_3244();
    }

LABEL_8:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v32 = v28;
    if (v28)
    {
      memmove(&__p, v30, v28);
    }

    goto LABEL_13;
  }

  if ((v43 & 8) != 0)
  {
    v30 = v36;
    v28 = v37 - v36;
    if ((v37 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  v28 = 0;
  v32 = 0;
LABEL_13:
  *(&__p + v28) = 0;
  sub_7E854(&__p, 2u);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  std::locale::~locale(&v35);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_D42D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_D42D74(uint64_t a1)
{
  v2 = *(a1 + 40);
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

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_D42DC0(uint64_t a1)
{
  v1 = *(a1 + 1744);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1;
  sub_6E3B8((a1 + 1712));
  sub_6E3B8((v3 + 1608));
  sub_528AB4(v3 + 32);
  return v3;
}

uint64_t sub_D42E4C(uint64_t a1)
{
  sub_D42F08(a1 + 200);
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 176);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_399184(v3 - 456);
      }

      while (v3 != v2);
      v4 = *(a1 + 176);
    }

    *(a1 + 184) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *(a1 + 48) = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_D42F08(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v10 = *v7;
      v11 = *(v7 + 5);
      if (v11)
      {
        *(v7 + 6) = v11;
        operator delete(v11);
      }

      if (v7[39] < 0)
      {
        operator delete(*(v7 + 2));
      }

      operator delete(v7);
      v7 = v10;
    }

    while (v10);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_D42FE0(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_D46108(_Unwind_Exception *a1)
{
  if (qword_27B62F0)
  {
    qword_27B62F8 = qword_27B62F0;
    operator delete(qword_27B62F0);
  }

  _Unwind_Resume(a1);
}

double sub_D463A0@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v46);
  sub_7E9A4(v45);
  if (sub_E67BDC((a1 + 202)) && sub_E67BDC((a1 + 257)))
  {
    v4 = *a1;
    if (**a1 != (*a1)[1])
    {
      v32 = a1;
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      *v38 = 0u;
      v36 = 0;
      v35 = 0;
      v37 = 0;
      v5 = *v4;
      v6 = v4[1];
      if (*v4 != v6)
      {
        do
        {
          if (!*v5)
          {
            sub_A31084(&v47, (v5 + 8));
            v7 = v36;
            if (v36 >= v37)
            {
              v11.n128_f64[0] = sub_D489E4(&v35, &v47);
              v12 = __p[0];
              v36 = v13;
              if (__p[0])
              {
                v14 = __p[1];
                v15 = __p[0];
                if (__p[1] != __p[0])
                {
                  do
                  {
                    v16 = *(v14 - 3);
                    if (v16)
                    {
                      v17 = *(v14 - 2);
                      v18 = *(v14 - 3);
                      if (v17 != v16)
                      {
                        do
                        {
                          v19 = v17 - 32;
                          v20 = *(v17 - 8);
                          if (v20 != -1)
                          {
                            (off_2673B88[v20])(&__dst, v17 - 32, v11);
                          }

                          *(v17 - 8) = -1;
                          v17 -= 32;
                        }

                        while (v19 != v16);
                        v18 = *(v14 - 3);
                      }

                      *(v14 - 2) = v16;
                      operator delete(v18);
                    }

                    v21 = *(v14 - 8);
                    if (v21 != -1)
                    {
                      (off_2673B88[v21])(&__dst, v14 - 7, v11);
                    }

                    v22 = (v14 - 10);
                    *(v14 - 8) = -1;
                    if (*(v14 - 57) < 0)
                    {
                      operator delete(*v22);
                    }

                    v14 -= 10;
                  }

                  while (v22 != v12);
                  v15 = __p[0];
                }

                __p[1] = v12;
                operator delete(v15);
              }
            }

            else
            {
              v8 = v47;
              v9 = *v48;
              *(v36 + 30) = *&v48[14];
              *v7 = v8;
              *(v7 + 16) = v9;
              *(v7 + 56) = 0;
              *(v7 + 64) = 0;
              *(v7 + 48) = 0;
              *(v7 + 48) = v49;
              *(v7 + 64) = v50;
              *(v7 + 72) = 0;
              v49 = 0uLL;
              v50 = 0;
              *(v7 + 80) = 0;
              *(v7 + 88) = 0;
              *(v7 + 72) = v51;
              v51 = 0uLL;
              *(v7 + 88) = v52;
              *(v7 + 96) = 0;
              *(v7 + 104) = 0;
              *(v7 + 112) = 0;
              *(v7 + 96) = *v53;
              *(v7 + 112) = v54;
              *(v7 + 120) = 0;
              v52 = 0;
              v53[0] = 0;
              v53[1] = 0;
              v54 = 0;
              *(v7 + 128) = 0;
              *(v7 + 136) = 0;
              *(v7 + 120) = v55;
              *(v7 + 136) = v56;
              v55 = 0uLL;
              v56 = 0;
              v10 = *v57;
              *(v7 + 157) = *&v57[13];
              *(v7 + 144) = v10;
              *(v7 + 168) = 0;
              *(v7 + 176) = 0;
              *(v7 + 184) = 0;
              *(v7 + 168) = v58;
              *(v7 + 184) = v59;
              v58 = 0uLL;
              v59 = 0;
              *(v7 + 192) = v60;
              *(v7 + 208) = 0;
              *(v7 + 216) = 0;
              *(v7 + 224) = 0;
              *(v7 + 208) = *__p;
              *(v7 + 224) = v62;
              __p[0] = 0;
              __p[1] = 0;
              v62 = 0;
              v36 = v7 + 232;
            }

            if (v58)
            {
              *(&v58 + 1) = v58;
              operator delete(v58);
            }

            if (v55)
            {
              *(&v55 + 1) = v55;
              operator delete(v55);
            }

            if (v53[0])
            {
              v53[1] = v53[0];
              operator delete(v53[0]);
            }

            if (v51)
            {
              *(&v51 + 1) = v51;
              operator delete(v51);
            }

            __dst.n128_u64[0] = &v49;
            sub_A30A34(&__dst);
          }

          v5 += 240;
        }

        while (v5 != v6);
      }

      sub_9F094C(&v47, v32[4]);
    }

    if (!sub_7E7E4(1u))
    {
      goto LABEL_78;
    }

    sub_19594F8(&v47);
    sub_4A5C(&v47, "TransitGuidanceUpdaterModule::run failed due to the lack of journeys in the input.", 82);
    if ((v53[1] & 0x10) != 0)
    {
      v29 = v53[0];
      if (v53[0] < *(&v49 + 1))
      {
        v53[0] = *(&v49 + 1);
        v29 = *(&v49 + 1);
      }

      v30 = &v49;
    }

    else
    {
      if ((v53[1] & 8) == 0)
      {
        v28 = 0;
        v34 = 0;
LABEL_73:
        __dst.n128_u8[v28] = 0;
        sub_7E854(&__dst, 1u);
        if (v34 < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51);
        }

        std::locale::~locale(v48);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_78:
        __dst.n128_u64[0] = 41;
        __dst.n128_u64[1] = &off_2669FE0;
        sub_434934(&v47, &__dst);
        goto LABEL_56;
      }

      v30 = &v48[8];
      v29 = *&v48[24];
    }

    v31 = *v30;
    v28 = v29 - *v30;
    if (v28 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v28 >= 0x17)
    {
      operator new();
    }

    v34 = v29 - *v30;
    if (v28)
    {
      memmove(&__dst, v31, v28);
    }

    goto LABEL_73;
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v47);
    sub_4A5C(&v47, "TransitGuidanceUpdaterModule::run failed due to origin or destination being invalid.", 84);
    if ((v53[1] & 0x10) != 0)
    {
      v24 = v53[0];
      if (v53[0] < *(&v49 + 1))
      {
        v53[0] = *(&v49 + 1);
        v24 = *(&v49 + 1);
      }

      v25 = v49;
      v23 = &v24[-v49];
      if (&v24[-v49] > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if ((v53[1] & 8) == 0)
      {
        v23 = 0;
        v34 = 0;
LABEL_50:
        __dst.n128_u8[v23] = 0;
        sub_7E854(&__dst, 1u);
        if (v34 < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51);
        }

        std::locale::~locale(v48);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_55;
      }

      v25 = *&v48[8];
      v23 = *&v48[24] - *&v48[8];
      if (*&v48[24] - *&v48[8] > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_62:
        sub_3244();
      }
    }

    if (v23 >= 0x17)
    {
      operator new();
    }

    v34 = v23;
    if (v23)
    {
      memmove(&__dst, v25, v23);
    }

    goto LABEL_50;
  }

LABEL_55:
  __dst.n128_u64[0] = 1;
  __dst.n128_u64[1] = &off_2669FE0;
  sub_434934(&v47, &__dst);
LABEL_56:
  *a2 = 0;
  result = v47.n128_f64[0];
  v27 = *v48;
  *(a2 + 8) = v47;
  *(a2 + 24) = v27;
  *(a2 + 40) = *&v48[16];
  *(a2 + 48) = *&v48[24];
  return result;
}

void sub_D46EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x4C0]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

void sub_D46FE8(_Unwind_Exception *a1)
{
  sub_A30978(&STACK[0x4C0]);
  sub_A3091C(&STACK[0x408]);
  sub_9C1268(&STACK[0x420]);
  _Unwind_Resume(a1);
}

void sub_D47028(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_4A48(exception_object);
}

uint64_t *sub_D47048(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x133F84CFE133F84DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_9C0DEC(v10 - 1064);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x3D980F6603D980)
    {
      v12 = 0x133F84CFE133F84DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x1ECC07B301ECC0)
      {
        v14 = 0x3D980F6603D980;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x3D980F6603D980)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x133F84CFE133F84DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_D47B18(v8, v5);
        v5 += 1064;
        v8 += 1064;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 1064;
      result = sub_9C0DEC(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_D47B18(v8, v5);
        v5 += 1064;
        v8 += 1064;
        v16 -= 1064;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_D472E8(v15 + v19, v17 + v19);
        v19 += 1064;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_D472BC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 1064;
    v7 = -v4;
    do
    {
      v6 = sub_9C0DEC(v6) - 1064;
      v7 += 1064;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_D472E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  sub_D47500(a1 + 56, a2 + 56);
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  sub_D475C8(a1 + 1016, *(a2 + 1016), *(a2 + 1024), 0x133F84CFE133F84DLL * ((*(a2 + 1024) - *(a2 + 1016)) >> 4));
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  v6 = *(a2 + 1040);
  v7 = *(a2 + 1048);
  if (v7 != v6)
  {
    if (0x82FA0BE82FA0BE83 * ((v7 - v6) >> 3) < 0xBE82FA0BE82FA1)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_D4747C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_D47498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v10 + 1048) = v12;
  sub_D47A38(&a9);
  sub_D47ADC(v11);
  sub_9FCD0C(v10 + 56);
  sub_1AB28(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_D47500(uint64_t a1, uint64_t a2)
{
  v4 = sub_55BD50(a1, a2);
  sub_55BD50(v4 + 160, a2 + 160);
  sub_55BD50(a1 + 320, a2 + 320);
  sub_55BD50(a1 + 480, a2 + 480);
  sub_55BD50(a1 + 640, a2 + 640);
  sub_55BD50(a1 + 800, a2 + 800);
  return a1;
}

void sub_D47568(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 640);
  sub_53A868(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_D475C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1ECC07B301ECC1)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D476CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_D476EC(&a11);
  *(v11 + 8) = v12;
  sub_D477CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D476EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 2128;
        sub_D47754(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_D47754(uint64_t a1, uint64_t a2)
{
  sub_974F1C((a2 + 928));
  v3 = *(a2 + 880);
  if (v3)
  {
    *(a2 + 888) = v3;
    operator delete(v3);
  }

  sub_53A868(a2 + 712);
  sub_973B5C((a2 + 616));
  sub_973C60((a2 + 32));
  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

void ***sub_D477CC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_D4781C(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

void sub_D4781C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 2120;
    do
    {
      sub_974F1C((v4 + 920));
      v6 = *(v4 + 872);
      if (v6)
      {
        *(v4 + 880) = v6;
        operator delete(v6);
      }

      sub_53A868(v4 + 704);
      sub_973B5C((v4 + 608));
      sub_973C60((v4 + 24));
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v5 = v4 - 8;
      v4 -= 2128;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_D478B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_55BD50(v4, v6);
      sub_55BD50(v4 + 160, v6 + 160);
      if (*(v6 + 343) < 0)
      {
        sub_325C((v4 + 320), *(v6 + 320), *(v6 + 328));
      }

      else
      {
        v7 = *(v6 + 320);
        *(v4 + 336) = *(v6 + 336);
        *(v4 + 320) = v7;
      }

      v6 += 344;
      v4 = v9 + 344;
      v9 += 344;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_D47968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(v9 + 160);
  sub_53A868(v9);
  sub_D479BC(&a9);
  _Unwind_Resume(a1);
}

void sub_D479A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53A868(v9);
  sub_D479BC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D479BC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 344)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      sub_53A868(v4 - 184);
      sub_53A868(v4 - 344);
    }
  }

  return a1;
}

void ***sub_D47A38(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          sub_53A868((v4 - 23));
          sub_53A868((v4 - 43));
          v4 -= 43;
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

uint64_t *sub_D47ADC(uint64_t *a1)
{
  if (*a1)
  {
    sub_D4781C(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D47B18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 != a2)
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v9 = (a2 + 8);
      }

      else
      {
        v9 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v10 = *(a2 + 31);
      }

      else
      {
        v10 = *(a2 + 16);
      }

      sub_13B38(v4, v9, v10);
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 8), *(a2 + 16));
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
LABEL_16:
        if ((v8 & 0x80u) == 0)
        {
          v12 = v7;
        }

        else
        {
          v12 = *(a2 + 32);
        }

        if ((v8 & 0x80u) == 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *(a2 + 40);
        }

        sub_13B38(a1 + 32, v12, v13);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
      v7 = (a2 + 32);
      v8 = *(a2 + 55);
      if (*(a1 + 55) < 0)
      {
        goto LABEL_16;
      }
    }

    if ((v8 & 0x80) != 0)
    {
      sub_13A68((a1 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v11 = *v7;
      *(a1 + 48) = v7[2];
      *(a1 + 32) = v11;
    }
  }

LABEL_24:
  sub_594568(a1 + 56, a2 + 56);
  sub_594568(a1 + 216, a2 + 216);
  sub_594568(a1 + 376, a2 + 376);
  sub_594568(a1 + 536, a2 + 536);
  sub_594568(a1 + 696, a2 + 696);
  sub_594568(a1 + 856, a2 + 856);
  if (a1 != a2)
  {
    sub_D47CB4((a1 + 1016), *(a2 + 1016), *(a2 + 1024), 0x133F84CFE133F84DLL * ((*(a2 + 1024) - *(a2 + 1016)) >> 4));
    sub_D48674((a1 + 1040), *(a2 + 1040), *(a2 + 1048), 0x82FA0BE82FA0BE83 * ((*(a2 + 1048) - *(a2 + 1040)) >> 3));
  }

  return a1;
}

void sub_D47CB4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x133F84CFE133F84DLL * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_D4781C(a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1ECC07B301ECC0)
    {
      v10 = 0x133F84CFE133F84DLL * (v7 >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0xF6603D980F660)
      {
        v12 = 0x1ECC07B301ECC0;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x1ECC07B301ECC0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x133F84CFE133F84DLL * ((v13 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_D47F80(v8, v5);
        v5 += 2128;
        v8 += 2128;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    if (v13 != v8)
    {
      v17 = v13 - 2120;
      do
      {
        sub_974F1C((v17 + 920));
        v19 = *(v17 + 872);
        if (v19)
        {
          *(v17 + 880) = v19;
          operator delete(v19);
        }

        sub_53A868(v17 + 704);
        sub_973B5C((v17 + 608));
        sub_973C60((v17 + 24));
        if (*(v17 + 23) < 0)
        {
          operator delete(*v17);
        }

        v18 = v17 - 8;
        v17 -= 2128;
      }

      while (v18 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v15 = a2 + v14;
    if (v13 != v8)
    {
      do
      {
        sub_D47F80(v8, v5);
        v5 += 2128;
        v8 += 2128;
        v14 -= 2128;
      }

      while (v14);
      v13 = a1[1];
    }

    v20 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_9C193C(v16, v15);
        v15 += 2128;
        v16 = v20 + 2128;
        v20 += 2128;
      }

      while (v15 != a3);
    }

    a1[1] = v16;
  }
}

void sub_D47F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D476EC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D47F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_D476EC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_D47F80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (a1 == a2)
  {
    sub_D48068(a1 + 32, a2 + 32);
  }

  else
  {
    v5 = *(a2 + 31);
    if (*(a1 + 31) < 0)
    {
      if (v5 >= 0)
      {
        v7 = (a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 31);
      }

      else
      {
        v8 = *(a2 + 16);
      }

      sub_13B38(v4, v7, v8);
    }

    else if ((*(a2 + 31) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      *(v4 + 16) = *(a2 + 24);
      *v4 = v6;
    }

    sub_D48068(a1 + 32, a2 + 32);
    sub_35354C((a1 + 880), *(a2 + 880), *(a2 + 888), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 888) - *(a2 + 880)) >> 2));
  }

  v9 = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 904) = v9;
  sub_D48130(a1 + 928, a2 + 928);
  return a1;
}

uint64_t sub_D48068(uint64_t a1, uint64_t a2)
{
  sub_D4821C(a1, a2);
  if (a1 != a2)
  {
    sub_5F9F30((a1 + 584), *(a2 + 584), *(a2 + 592), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 592) - *(a2 + 584)) >> 5));
    sub_5F9F30((a1 + 608), *(a2 + 608), *(a2 + 616), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 616) - *(a2 + 608)) >> 5));
    sub_5F9F30((a1 + 632), *(a2 + 632), *(a2 + 640), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 640) - *(a2 + 632)) >> 5));
    sub_5F9F30((a1 + 656), *(a2 + 656), *(a2 + 664), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 664) - *(a2 + 656)) >> 5));
  }

  sub_594568(a1 + 680, a2 + 680);
  *(a1 + 840) = *(a2 + 840);
  return a1;
}

uint64_t sub_D48130(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    sub_D482E8(a1, *a2, *(a2 + 8), 0x66FD0EB66FD0EB67 * ((*(a2 + 8) - *a2) >> 3));
    v4 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    sub_31F64((a1 + 32), v4, *(a2 + 40), (*(a2 + 40) - v4) >> 3);
  }

  sub_594568(a1 + 56, a2 + 56);
  sub_594568(a1 + 216, a2 + 216);
  sub_594568(a1 + 376, a2 + 376);
  *(a1 + 536) = *(a2 + 536);
  sub_594568(a1 + 544, a2 + 544);
  sub_594568(a1 + 704, a2 + 704);
  *(a1 + 864) = *(a2 + 864);
  sub_594568(a1 + 872, a2 + 872);
  sub_594568(a1 + 1032, a2 + 1032);
  *(a1 + 1192) = *(a2 + 1192);
  return a1;
}

uint64_t sub_D4821C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_5F9F30(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
    sub_5F9F30((a1 + 24), *(a2 + 24), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 24)) >> 5));
    sub_5F9F30((a1 + 48), *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 5));
    sub_5F9F30((a1 + 72), *(a2 + 72), *(a2 + 80), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 80) - *(a2 + 72)) >> 5));
  }

  sub_594568(a1 + 96, a2 + 96);
  sub_594568(a1 + 256, a2 + 256);
  sub_594568(a1 + 416, a2 + 416);
  *(a1 + 576) = *(a2 + 576);
  return a1;
}

void **sub_D482E8(void **result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x66FD0EB66FD0EB67 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          sub_53A868((v10 - 176));
          sub_53A868((v10 - 336));
          sub_53A868((v10 - 504));
          sub_53A868((v10 - 664));
          v10 -= 696;
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x5E293205E29320)
    {
      v12 = 0x66FD0EB66FD0EB67 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2F149902F14990)
      {
        v14 = 0x5E293205E29320;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x5E293205E29320)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0x66FD0EB66FD0EB67 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        v18 = *v5;
        *(v8 + 12) = *(v5 + 12);
        *v8 = v18;
        sub_594568((v8 + 32), (v5 + 2));
        sub_594568((v8 + 192), (v5 + 12));
        v8[352] = *(v5 + 352);
        sub_594568((v8 + 360), v5 + 360);
        result = sub_594568((v8 + 520), v5 + 520);
        v8[680] = *(v5 + 680);
        v8[688] = *(v5 + 688);
        v8 += 696;
        v5 = (v5 + 696);
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    for (; v15 != v8; v15 -= 696)
    {
      sub_53A868((v15 - 176));
      sub_53A868((v15 - 336));
      sub_53A868((v15 - 504));
      result = sub_53A868((v15 - 664));
    }

    v6[1] = v8;
  }

  else
  {
    v16 = (a2 + v15 - v8);
    if (v15 != v8)
    {
      do
      {
        v17 = *v5;
        *(v8 + 12) = *(v5 + 12);
        *v8 = v17;
        sub_594568((v8 + 32), (v5 + 2));
        sub_594568((v8 + 192), (v5 + 12));
        v8[352] = *(v5 + 352);
        sub_594568((v8 + 360), v5 + 360);
        sub_594568((v8 + 520), v5 + 520);
        v8[680] = *(v5 + 680);
        v8[688] = *(v5 + 688);
        v5 = (v5 + 696);
        v8 += 696;
      }

      while (v5 != v16);
      v15 = v6[1];
    }

    v19 = v15;
    result = v15;
    if (v16 != a3)
    {
      result = v15;
      do
      {
        sub_9747F8(result, v16);
        v16 = (v16 + 696);
        result = (v19 + 696);
        v19 += 696;
      }

      while (v16 != a3);
    }

    v6[1] = result;
  }

  return result;
}

void sub_D48644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9748B4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_D4865C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_9748B4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void **sub_D48674(void **result, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x82FA0BE82FA0BE83 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 3));
          }

          sub_53A868((v10 - 23));
          sub_53A868((v10 - 43));
          v10 -= 43;
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xBE82FA0BE82FA0)
    {
      v30 = 0x82FA0BE82FA0BE83 * (v7 >> 3);
      v31 = 2 * v30;
      if (2 * v30 <= a4)
      {
        v31 = a4;
      }

      if (v30 >= 0x5F417D05F417D0)
      {
        v32 = 0xBE82FA0BE82FA0;
      }

      else
      {
        v32 = v31;
      }

      if (v32 <= 0xBE82FA0BE82FA0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = result[1];
  if (0x82FA0BE82FA0BE83 * ((v12 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v22 = 0;
      do
      {
        v25 = &v8[v22];
        v26 = &a2[v22];
        sub_594568(&v8[v22], &a2[v22]);
        result = sub_594568(&v8[v22 + 160], &a2[v22 + 160]);
        if (v8 != a2)
        {
          v27 = (v26 + 320);
          v28 = v26[343];
          if (v25[343] < 0)
          {
            if (v28 >= 0)
            {
              v23 = v26 + 320;
            }

            else
            {
              v23 = *v27;
            }

            if (v28 >= 0)
            {
              v24 = v26[343];
            }

            else
            {
              v24 = *&a2[v22 + 328];
            }

            result = sub_13B38((v25 + 320), v23, v24);
          }

          else if (v26[343] < 0)
          {
            result = sub_13A68(v25 + 320, *v27, *&a2[v22 + 328]);
          }

          else
          {
            v29 = *v27;
            *(v25 + 42) = *(v26 + 42);
            *(v25 + 20) = v29;
          }
        }

        v22 += 344;
      }

      while (v26 + 344 != a3);
      v12 = v6[1];
      v8 += v22;
    }

    for (; v12 != v8; v12 -= 344)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 24));
      }

      sub_53A868(v12 - 184);
      result = sub_53A868(v12 - 344);
    }

    v6[1] = v8;
  }

  else
  {
    v13 = &a2[v12 - v8];
    if (v12 != v8)
    {
      v14 = 0;
      do
      {
        v17 = &v8[v14];
        v18 = &a2[v14];
        sub_594568(&v8[v14], &a2[v14]);
        sub_594568(&v8[v14 + 160], &a2[v14 + 160]);
        if (v8 != a2)
        {
          v19 = (v18 + 320);
          v20 = v18[343];
          if (v17[343] < 0)
          {
            if (v20 >= 0)
            {
              v15 = v18 + 320;
            }

            else
            {
              v15 = *v19;
            }

            if (v20 >= 0)
            {
              v16 = v18[343];
            }

            else
            {
              v16 = *&a2[v14 + 328];
            }

            sub_13B38((v17 + 320), v15, v16);
          }

          else if (v18[343] < 0)
          {
            sub_13A68(v17 + 320, *v19, *&a2[v14 + 328]);
          }

          else
          {
            v21 = *v19;
            *(v17 + 42) = *(v18 + 42);
            *(v17 + 20) = v21;
          }
        }

        v14 += 344;
      }

      while (v18 + 344 != v13);
      v12 = v6[1];
    }

    result = sub_D478B0(v6, v13, a3, v12);
    v6[1] = result;
  }

  return result;
}

double sub_D489E4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1794();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v5 = 0x11A7B9611A7B961;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x11A7B9611A7B961)
    {
      operator new();
    }

    sub_1808();
  }

  v14 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v6;
  *(v14 + 30) = *(a2 + 30);
  *(v14 + 48) = *(a2 + 48);
  *(v14 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v14 + 72) = *(a2 + 72);
  *(v14 + 88) = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v14 + 96) = *(a2 + 96);
  *(v14 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(v14 + 120) = *(a2 + 120);
  *(v14 + 136) = *(a2 + 136);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v7 = *(a2 + 144);
  *(v14 + 157) = *(a2 + 157);
  *(v14 + 144) = v7;
  *(v14 + 168) = *(a2 + 168);
  *(v14 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v8 = *(a2 + 208);
  *(v14 + 192) = *(a2 + 192);
  *(v14 + 208) = v8;
  *(v14 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  v9 = a1[1];
  v10 = 232 * v2 + *a1 - v9;
  sub_A5B004(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = (232 * v2 + 232);
  *(a1 + 1) = v12;
  if (v11)
  {
    operator delete(v11);
    *&v12 = 232 * v2 + 232;
  }

  return *&v12;
}

void sub_D48BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

void sub_D48BD4()
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
  xmmword_27B6360 = 0u;
  *algn_27B6370 = 0u;
  dword_27B6380 = 1065353216;
  sub_3A9A34(&xmmword_27B6360, v0);
  sub_3A9A34(&xmmword_27B6360, v3);
  sub_3A9A34(&xmmword_27B6360, __p);
  sub_3A9A34(&xmmword_27B6360, v9);
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
    qword_27B6338 = 0;
    qword_27B6340 = 0;
    qword_27B6330 = 0;
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

void sub_D48E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B6348)
  {
    qword_27B6350 = qword_27B6348;
    operator delete(qword_27B6348);
  }

  _Unwind_Resume(exception_object);
}

void sub_D48EC8(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7[0] = a2;
  v7[1] = *sub_3B8500(a2);
  v8 = a3;
  sub_D48F8C(v7, a1, a4);
}

void sub_D48F28(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 != 2)
  {
    __cxa_rethrow();
  }

  v5 = v4[2];
  *v2 = 0;
  *(v2 + 8) = v5;
  *(v2 + 16) = &off_2669FE0;

  __cxa_end_catch();
}

void sub_D48F8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v42);
  v6 = sub_3AFEE8(*a1);
  v7 = sub_2C939C(v6, 1u, 0);
  if (!v7 || (v8 = &v7[-*v7], *v8 < 0xDu) || (v9 = *(v8 + 6)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v34 = sub_2D390(exception, "Root quad node of transit network layer does not contain info object", 0x44uLL);
  }

  v10 = &v7[v9 + *&v7[v9]];
  v11 = &v10[-*v10];
  if (*v11 >= 5u && (v12 = *(v11 + 2)) != 0)
  {
    v13 = &v10[v12];
    v14 = *v13;
    v15 = *&v13[v14];
    if (v15 >= 0x17)
    {
      operator new();
    }

    v41 = *&v13[v14];
    if (v15)
    {
      memcpy(&__dst, &v13[v14 + 4], v15);
    }

    p_dst = (&__dst + v15);
  }

  else
  {
    v41 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0uLL;
  v37 = 0;
  sub_D4B680(&v36, *(a2 + 56));
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = 8 * v17;
    do
    {
      v25 = *v19;
      sub_11F0388(v63, 0, 0);
      if ((sub_194DB28(v26, *(v25 + 48) & 0xFFFFFFFFFFFFFFFELL) & 1) == 0)
      {
        if (sub_7E7E4(3u))
        {
          sub_19594F8(&__t);
          sub_4A5C(&__t, "Failed to parse server route handle to Protobuffer object; dropping request", 75);
          sub_1959680(&__t, __p);
          sub_7E854(__p, 3u);
          if (v60 < 0)
          {
            operator delete(__p[0]);
          }

          sub_1959728(&__t);
        }

        v31 = *(a1 + 16);
        sub_3608D0(&__t, "TransitJourneyParserModule.Error.RouteHandle");
        sub_7BDA0(v31, &__t, *(a1 + 8));
        if (v62 < 0)
        {
          operator delete(__t.__d_.__rep_);
        }

        v32 = __cxa_allocate_exception(0x10uLL);
        *v32 = &off_2673BE0;
        v32[2] = 1;
      }

      if ((v64 & 0x20) != 0)
      {
        __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        std::chrono::system_clock::to_time_t(&__t);
        operator new();
      }

      if (v64)
      {
        operator new();
      }

      if (v65)
      {
        v27 = v65;
      }

      else
      {
        v27 = &off_2734820;
      }

      sub_D49600(a1, v27, &v43);
      sub_11F069C(v63);
      v28 = *(&v36 + 1);
      if (*(&v36 + 1) < v37)
      {
        v21 = v43;
        v22 = v44[0];
        *(*(&v36 + 1) + 30) = *(v44 + 14);
        *v28 = v21;
        *(v28 + 16) = v22;
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 48) = 0;
        *(v28 + 48) = v45;
        *(v28 + 64) = v46;
        *(v28 + 72) = 0;
        v45 = 0uLL;
        *(v28 + 80) = 0;
        *(v28 + 88) = 0;
        *(v28 + 72) = v47;
        *(v28 + 88) = v48;
        *(v28 + 96) = 0;
        v46 = 0;
        v47 = 0uLL;
        v48 = 0;
        *(v28 + 104) = 0;
        *(v28 + 112) = 0;
        *(v28 + 96) = v49;
        v49 = 0uLL;
        *(v28 + 112) = v50;
        *(v28 + 120) = 0;
        *(v28 + 128) = 0;
        *(v28 + 136) = 0;
        *(v28 + 120) = v51;
        *(v28 + 136) = v52;
        v50 = 0;
        v51 = 0uLL;
        v52 = 0;
        v23 = *v53;
        *(v28 + 157) = *&v53[13];
        *(v28 + 144) = v23;
        *(v28 + 168) = 0;
        *(v28 + 176) = 0;
        *(v28 + 184) = 0;
        *(v28 + 168) = v54;
        *(v28 + 184) = v55;
        v54 = 0uLL;
        v55 = 0;
        *(v28 + 192) = v56;
        *(v28 + 208) = 0;
        *(v28 + 216) = 0;
        *(v28 + 224) = 0;
        *(v28 + 208) = v57;
        *(v28 + 224) = v58;
        v57 = 0uLL;
        v58 = 0;
        v24 = v28 + 232;
      }

      else
      {
        sub_D489E4(&v36, &v43);
      }

      *(&v36 + 1) = v24;
      sub_A30978(&v43);
      ++v19;
      v20 -= 8;
    }

    while (v20);
  }

  v29 = v37;
  v35 = v36;
  v30 = sub_7EA60(v42);
  *a3 = 1;
  *(a3 + 8) = v35;
  *(a3 + 24) = v29;
  *(a3 + 32) = v30;
  if (v41 < 0)
  {
    operator delete(__dst);
  }
}

void sub_D49550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a70);
  sub_11F069C(v70 - 224);
  sub_A3091C(&a17);
  sub_A3091C(&a21);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D49600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 92) != 1)
  {
    if (sub_7E7E4(3u))
    {
      sub_19594F8(&v44);
      sub_4A5C(&v44, "Incompatible journey version in route handle. Expected ", 55);
      v36 = std::ostream::operator<<();
      sub_4A5C(v36, " but got ", 9);
      v37 = std::ostream::operator<<();
      sub_4A5C(v37, " in route handle", 16);
      sub_1959680(&v44, &v73);
      sub_7E854(&v73, 3u);
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
      }

      sub_1959728(&v44);
    }

    v38 = *(a1 + 16);
    sub_3608D0(&v44, "TransitJourneyParserModule.Error.RouteHandleVersion");
    sub_7BDA0(v38, &v44, *(a1 + 8));
    if (v48 < 0)
    {
      operator delete(v44);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_2673BE0;
    exception[2] = 1;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  *__p = 0u;
  v60 = -1;
  v61 = 0;
  v64 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v69 = 0x3FF0000000000000;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v4 = *(a2 + 56);
  if (*(a2 + 48))
  {
    v5 = *(a2 + 48);
  }

  else
  {
    v5 = &off_2734888;
  }

  v6 = v5[3];
  v7 = *(v5 + 32) | (*(v5 + 9) << 8);
  v44 = v6;
  v45 = v7;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = &off_2734888;
  }

  v9 = *(v8 + 9);
  v10 = *(v8 + 32) | (v9 << 8);
  v46 = v8[3];
  v47 = v10;
  v11 = *(a2 + 16);
  if ((v11 & 4) != 0)
  {
    v12 = *(a2 + 64);
    v6 = *(v12 + 24);
    v7 = *(v12 + 32) | (*(v12 + 36) << 8);
  }

  v49 = v6;
  v50 = v7;
  if ((v11 & 8) != 0)
  {
    v8 = *(a2 + 72);
    v13 = *(v8 + 9) << 8;
  }

  else
  {
    LOWORD(v13) = v9 << 8;
  }

  v14 = v13 | *(v8 + 32);
  v51 = v8[3];
  v52 = v14;
  v15 = *(a2 + 88);
  if (v15 >= 3)
  {
    v15 = 0;
  }

  v16 = *(a2 + 96);
  if (v16 >= 3)
  {
    v16 = 0;
  }

  v62 = v15;
  v63 = v16;
  v42 = 0uLL;
  v43 = 0;
  sub_D4B774(&v42, *(a2 + 32));
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = &v19[v17];
    do
    {
      sub_D49B44(a1, *v19, &v73);
      v22 = *(&v42 + 1);
      if (*(&v42 + 1) >= v43)
      {
        *(&v42 + 1) = sub_A5624C(&v42, &v73);
        if (v75)
        {
          *(&v75 + 1) = v75;
          operator delete(v75);
        }
      }

      else
      {
        *(*(&v42 + 1) + 16) = 0;
        v22[3] = 0;
        *v22 = 0;
        v22[1] = 0;
        *v22 = v73;
        v22[2] = v74;
        v73 = 0uLL;
        v74 = 0;
        v22[4] = 0;
        v22[5] = 0;
        *(v22 + 3) = v75;
        v22[5] = v76;
        v75 = 0uLL;
        v76 = 0;
        v23 = v77[0];
        *(v22 + 54) = *(v77 + 6);
        v22[6] = v23;
        *(&v42 + 1) = v22 + 8;
      }

      v24 = v73;
      if (v73)
      {
        v25 = *(&v73 + 1);
        v21 = v73;
        if (*(&v73 + 1) != v73)
        {
          do
          {
            v27 = *(v25 - 40);
            if (v27)
            {
              *(v25 - 32) = v27;
              operator delete(v27);
            }

            v28 = *(v25 - 64);
            if (v28)
            {
              *(v25 - 56) = v28;
              operator delete(v28);
            }

            v29 = *(v25 - 88);
            if (v29)
            {
              *(v25 - 80) = v29;
              operator delete(v29);
            }

            v30 = *(v25 - 112);
            if (v30)
            {
              *(v25 - 104) = v30;
              operator delete(v30);
            }

            v31 = *(v25 - 136);
            if (v31)
            {
              v32 = *(v25 - 128);
              v26 = *(v25 - 136);
              if (v32 != v31)
              {
                do
                {
                  v33 = v32 - 1136;
                  v34 = *(v32 - 8);
                  if (v34 != -1)
                  {
                    (off_2673BF8[v34])(v78, v32 - 1136);
                  }

                  *(v32 - 8) = -1;
                  v32 -= 1136;
                }

                while (v33 != v31);
                v26 = *(v25 - 136);
              }

              *(v25 - 128) = v31;
              operator delete(v26);
            }

            v25 -= 144;
          }

          while (v25 != v24);
          v21 = v73;
        }

        *(&v73 + 1) = v24;
        operator delete(v21);
      }

      ++v19;
    }

    while (v19 != v20);
  }

  if (__p[0])
  {
    sub_D4B520(__p);
    operator delete(__p[0]);
  }

  *__p = v42;
  *&v54 = v43;
  sub_A31084(a3, &v44);
  return sub_A30978(&v44);
}

void sub_D49A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 153) < 0)
  {
    operator delete(*(v19 - 176));
    sub_1959728(&__p);
    _Unwind_Resume(a1);
  }

  sub_1959728(&__p);
  _Unwind_Resume(a1);
}

void sub_D49AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_A30978(va);
  JUMPOUT(0xD49AF8);
}

void ***sub_D49B08(void ***a1)
{
  if (*a1)
  {
    sub_D4B520(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_D49B44(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  v29[0] = 1;
  *&v29[4] = 0x8000000080000000;
  *&v29[12] = 0;
  v25 = 0;
  v26 = 0uLL;
  sub_D4B848(&v25, *(a2 + 24));
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = &v8[v6];
    do
    {
      sub_D49F60(a1, *v8, &v30);
      v11 = v26;
      if (v26 >= *(&v26 + 1))
      {
        *&v26 = sub_A55ECC(&v25, &v30);
        if (v39)
        {
          *(&v39 + 1) = v39;
          operator delete(v39);
        }
      }

      else
      {
        *v26 = v30;
        v11[3] = 0;
        v11[4] = 0;
        v11[1] = 0;
        v11[2] = 0;
        *(v11 + 1) = *__p;
        v11[3] = v32;
        __p[0] = 0;
        __p[1] = 0;
        v11[5] = 0;
        v11[6] = 0;
        *(v11 + 2) = *v33;
        v11[7] = 0;
        v11[8] = 0;
        v11[9] = 0;
        v11[10] = 0;
        v11[11] = 0;
        v11[12] = 0;
        v11[13] = 0;
        v11[14] = 0;
        v11[15] = 0;
        *(v11 + 13) = v39;
        v12 = v40;
        v11[6] = v34;
        v32 = 0;
        v33[0] = 0;
        v33[1] = 0;
        v34 = 0;
        *(v11 + 7) = v35;
        v11[9] = v36;
        v35 = 0uLL;
        *(v11 + 5) = *v37;
        v11[12] = v38;
        v36 = 0;
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        v11[15] = v12;
        v39 = 0uLL;
        v40 = 0;
        v13 = v41[0];
        *(v11 + 133) = *(v41 + 5);
        v11[16] = v13;
        *&v26 = v11 + 18;
      }

      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }

      v14 = __p[0];
      if (__p[0])
      {
        v15 = __p[1];
        v10 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v16 = v15 - 1136;
            v17 = *(v15 - 2);
            if (v17 != -1)
            {
              (off_2673BF8[v17])(v42, v15 - 1136);
            }

            *(v15 - 2) = -1;
            v15 -= 1136;
          }

          while (v16 != v14);
          v10 = __p[0];
        }

        __p[1] = v14;
        operator delete(v10);
      }

      ++v8;
    }

    while (v8 != v9);
    v18 = v27[0];
    if (v27[0])
    {
      v19 = v27[1];
      v20 = v27[0];
      if (v27[1] != v27[0])
      {
        do
        {
          v19 = sub_9FFEB4(v19 - 18);
        }

        while (v19 != v18);
        v20 = v27[0];
      }

      v27[1] = v18;
      operator delete(v20);
    }
  }

  v21 = v25;
  v27[0] = v25;
  v22 = v26;
  *&v27[1] = v26;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v23 = v22;
  sub_A315D0(a3, v21, v22, 0x8E38E38E38E38E39 * ((v22 - v21) >> 4));
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  v24 = v27[3];
  if (v28 != v27[3])
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v28 - v27[3]) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  a3[6] = *v29;
  *(a3 + 54) = *&v29[6];
  if (v24)
  {
    *&v28 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    if (v23 != v21)
    {
      do
      {
        v23 -= 18;
        sub_9FFEB4(v23);
      }

      while (v23 != v21);
      v21 = v27[0];
    }

    operator delete(v21);
  }
}

void sub_D49ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_9FFE48(va);
  _Unwind_Resume(a1);
}

void sub_D49EEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_A30BB8(va);
  sub_9FFE48(va1);
  _Unwind_Resume(a1);
}

void sub_D49F60(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = 0;
  v32 = 0u;
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  *__p = 0u;
  *v27 = 0u;
  v34 = 1;
  v35 = 0x8000000080000000;
  v36 = 0;
  v25 = *(a2 + 48);
  v23 = 0uLL;
  v24 = 0;
  sub_D4B94C(&v23, *(a2 + 32));
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = 8 * v6;
    do
    {
      sub_D4A240(a1, *v8, v37);
      v10 = *(&v23 + 1);
      if (*(&v23 + 1) >= v24)
      {
        v12 = sub_D4BAE0(&v23, v37);
      }

      else
      {
        **(&v23 + 1) = 0;
        *(v10 + 1128) = -1;
        v11 = v38;
        if (v38 != -1)
        {
          v39 = v10;
          (off_2673C20[v38])(&v39, v37);
          *(v10 + 1128) = v11;
        }

        v12 = v10 + 1136;
      }

      *(&v23 + 1) = v12;
      if (v38 != -1)
      {
        (off_2673BF8[v38])(&v39, v37);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  v13 = __p[0];
  if (__p[0])
  {
    v14 = __p[1];
    v15 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v16 = v14 - 1136;
        v17 = *(v14 - 2);
        if (v17 != -1)
        {
          (off_2673BF8[v17])(v37, v14 - 1136);
        }

        *(v14 - 2) = -1;
        v14 -= 1136;
      }

      while (v16 != v13);
      v15 = __p[0];
    }

    __p[1] = v13;
    operator delete(v15);
  }

  *__p = v23;
  v27[0] = v24;
  sub_A316EC(a3, &v25);
  if (v32)
  {
    *(&v32 + 1) = v32;
    operator delete(v32);
  }

  if (v30[1])
  {
    *&v31 = v30[1];
    operator delete(v30[1]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  v18 = __p[0];
  if (__p[0])
  {
    v19 = __p[1];
    v20 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v21 = v19 - 1136;
        v22 = *(v19 - 2);
        if (v22 != -1)
        {
          (off_2673BF8[v22])(v37, v19 - 1136);
        }

        *(v19 - 2) = -1;
        v19 -= 1136;
      }

      while (v21 != v18);
      v20 = __p[0];
    }

    __p[1] = v18;
    operator delete(v20);
  }
}

void sub_D4A1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9FFEB4(va);
  _Unwind_Resume(a1);
}

void sub_D4A1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_A542C4(&a9);
  sub_9FFEB4(&a12);
  _Unwind_Resume(a1);
}

unint64_t sub_D4A240@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 56);
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 2)
      {
        if (*(a2 + 32))
        {
          v6 = *(a2 + 32);
        }

        else
        {
          v6 = &off_2734748;
        }

        v7 = *(a2 + 60);
        v8 = a1;
        v9 = sub_D4B134(a1, v6[3]);
        v11 = v10;
        result = sub_D4B134(v8, v6[4]);
        v13 = *(v6 + 48);
        v14 = v6[5];
        *a3 = v7;
        *(a3 + 4) = v9;
        *(a3 + 12) = v11;
        *(a3 + 16) = result;
        *(a3 + 24) = v15;
        *(a3 + 28) = v14;
        *(a3 + 36) = 0xFFFFFFFFLL;
        *(a3 + 56) = 0;
        *(a3 + 64) = 0;
        *(a3 + 48) = 0;
        *(a3 + 72) = v13;
        v16 = 1;
        goto LABEL_48;
      }

LABEL_96:
      v89 = *(a1 + 16);
      v90 = a1;
      sub_3608D0(v124, "TransitJourneyParserModule.Error.JourneyLegType");
      sub_7BDA0(v89, v124, v90[1]);
      if ((v124[23] & 0x80000000) != 0)
      {
        operator delete(*v124);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_2673BE0;
      exception[2] = 1;
    }

    v24 = a1;
    v25 = sub_3B045C(*a1);
    v117 = sub_3AFB1C(*v24);
    v108 = v24;
    v26 = sub_3AFC64(*v24);
    if (*(a2 + 24))
    {
      v27 = *(a2 + 24);
    }

    else
    {
      v27 = &off_27346E8;
    }

    v28 = nullsub_1(v27[7]);
    *v124 = -1;
    *&v124[8] = 0x7FFFFFFF;
    v29 = sub_2C7D8C(v25, v28, v124);
    v121 = v29;
    if (v29)
    {
      v30 = v29 >= 0xFFFFFFFF00000000;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v124);
        sub_4A5C(v124, "Unable to resolve trip muid ", 28);
        v92 = std::ostream::operator<<();
        sub_4A5C(v92, " in transit network layer.", 26);
        sub_1959680(v124, __p);
        sub_7E854(__p, 1u);
        if (v123 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v124);
      }

      v93 = *(v24 + 16);
      sub_3608D0(v124, "TransitJourneyParserModule.Error.TripIdLookup");
      sub_7BDA0(v93, v124, v24[1]);
      goto LABEL_124;
    }

    if (v27[3])
    {
      v31 = v27[3];
    }

    else
    {
      v31 = &off_27346A0;
    }

    v32 = sub_3C0DD4(v31[6]);
    v33 = sub_D4B354(v31[7]);
    v34 = sub_D4B354(v31[8]);
    v118 = v32;
    v119 = v33;
    v120 = v34;
    v35 = sub_3A2090(v26, v121, &v118);
    if (v35 == -1)
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(v124);
        v96 = sub_4A5C(v124, "Date ", 5);
        v97 = sub_B484(v96);
        sub_4A5C(v97, " not found on trip ", 19);
        v98 = std::ostream::operator<<();
        sub_4A5C(v98, " in transit network layer.", 26);
        sub_1959680(v124, __p);
        sub_7E854(__p, 1u);
        if (v123 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v124);
      }

      v99 = *(v108 + 16);
      sub_3608D0(v124, "TransitJourneyParserModule.Error.TripDateLookup");
      sub_7BDA0(v99, v124, v108[1]);
      goto LABEL_124;
    }

    if (!v121 || HIDWORD(v121) == -1)
    {
      v115 = 0xFFFFFFFFLL;
      v116 = 0;
    }

    else
    {
      v115 = HIDWORD(v121);
      v116 = v121 << 32;
    }

    v46 = *(v27 + 16);
    v47 = &off_2734888;
    v48 = v27[5];
    if (!v48)
    {
      v48 = &off_2734888;
    }

    if (v27[6])
    {
      v47 = v27[6];
    }

    v113 = v35;
    if ((v27[2] & 2) != 0)
    {
      if ((*(v27[4] + 6) - 1) >= 5)
      {
        v49 = 0;
      }

      else
      {
        v49 = *(v27[4] + 6);
      }

      LOBYTE(v114) = 1;
      HIDWORD(v114) = v49;
    }

    else
    {
      v114 = 0;
    }

    v50 = *(v27 + 17);
    v112 = v48[3];
    v51 = *(v48 + 8);
    v110 = *(a2 + 60);
    v111 = *(v48 + 9);
    v52 = v47[3];
    v53 = *(v47 + 8);
    v54 = *(v47 + 9);
    v55 = sub_3A25A8(v26, v121, 0, "trip");
    v56 = (v55 - *v55);
    if (*v56 >= 9u && (v57 = v56[4]) != 0 && v46 < *(v55 + v57))
    {
      v109 = v54;
      v58 = sub_3A25A8(v26, v121, 0, "trip");
      v59 = (v58 - *v58);
      if (*v59 >= 9u)
      {
        v60 = v59[4];
        if (v60)
        {
          if (v50 < *(v58 + v60))
          {
            v61 = v121;
            v62 = sub_3A231C(v26, v121, 0);
            v63 = &v62[-*v62];
            if (*v63 < 5u)
            {
              v64 = 0;
            }

            else
            {
              v64 = *(v63 + 2);
              if (*(v63 + 2))
              {
                v64 += &v62[*&v62[v64]];
              }
            }

            v65 = (v64 + 4 * HIDWORD(v61) + 4 + *(v64 + 4 * HIDWORD(v61) + 4));
            v66 = (v65 - *v65);
            if (*v66 >= 0xDu && (v67 = v66[6]) != 0)
            {
              v68 = *(v65 + v67);
            }

            else
            {
              v68 = -1;
            }

            *v124 = *&v62[24 * v68 + 4 + 24 * v46 + *(v63 + 3) + *&v62[*(v63 + 3)]];
            v69 = sub_502230(v117, v124);
            if (nullsub_1(v69) == v27[10])
            {
              v70 = v121;
              v71 = sub_3A231C(v26, v121, 0);
              v72 = &v71[-*v71];
              if (*v72 < 5u)
              {
                v73 = 0;
              }

              else
              {
                v73 = *(v72 + 2);
                if (*(v72 + 2))
                {
                  v73 += &v71[*&v71[v73]];
                }
              }

              v74 = (v73 + 4 * HIDWORD(v70) + 4 + *(v73 + 4 * HIDWORD(v70) + 4));
              v75 = (v74 - *v74);
              if (*v75 < 0xDu)
              {
                v78 = -1;
                v77 = v109;
              }

              else
              {
                v76 = v75[6];
                v77 = v109;
                if (v76)
                {
                  v78 = *(v74 + v76);
                }

                else
                {
                  v78 = -1;
                }
              }

              *v124 = *&v71[24 * v78 + 4 + 24 * v50 + *(v72 + 3) + *&v71[*(v72 + 3)]];
              v79 = sub_502230(v117, v124);
              result = nullsub_1(v79);
              if (result == v27[11])
              {
                *a3 = v110;
                *(a3 + 4) = v115 | v116;
                *(a3 + 12) = v113;
                *(a3 + 16) = v46;
                *(a3 + 20) = v50;
                *(a3 + 24) = v112;
                *(a3 + 32) = v51 | (v111 << 8);
                *(a3 + 36) = v52;
                *(a3 + 44) = v53 | (v77 << 8);
                *(a3 + 48) = -1;
                *(a3 + 52) = 0;
                *(a3 + 56) = HIDWORD(v114);
                *(a3 + 60) = v114;
                *(a3 + 1128) = 0;
                return result;
              }

              if (sub_7E7E4(1u))
              {
                sub_19594F8(v124);
                sub_4A5C(v124, "Arrival stop muid ", 18);
                v103 = std::ostream::operator<<();
                sub_4A5C(v103, " not found on trip ", 19);
                v104 = std::ostream::operator<<();
                sub_4A5C(v104, " at index ", 10);
                v105 = std::ostream::operator<<();
                sub_4A5C(v105, ".", 1);
                sub_1959680(v124, __p);
                sub_7E854(__p, 1u);
                if (v123 < 0)
                {
                  operator delete(__p[0]);
                }

                sub_1959728(v124);
              }
            }

            else if (sub_7E7E4(1u))
            {
              sub_19594F8(v124);
              sub_4A5C(v124, "Departure stop muid ", 20);
              v100 = std::ostream::operator<<();
              sub_4A5C(v100, " not found on trip ", 19);
              v101 = std::ostream::operator<<();
              sub_4A5C(v101, " at index ", 10);
              v102 = std::ostream::operator<<();
              sub_4A5C(v102, ".", 1);
              sub_1959680(v124, __p);
              sub_7E854(__p, 1u);
              if (v123 < 0)
              {
                operator delete(__p[0]);
              }

              sub_1959728(v124);
            }

            v106 = *(v108 + 16);
            sub_3608D0(v124, "TransitJourneyParserModule.Error.StopIdLookup");
            sub_7BDA0(v106, v124, v108[1]);
LABEL_124:
            if ((v124[23] & 0x80000000) != 0)
            {
              operator delete(*v124);
            }

            v107 = __cxa_allocate_exception(0x10uLL);
            *v107 = &off_2673BE0;
            v107[2] = 43;
          }
        }
      }

      if (sub_7E7E4(1u))
      {
        sub_19594F8(v124);
        v85 = sub_4A5C(v124, "Arrival stop index ", 19);
        std::ostream::operator<<();
        sub_4A5C(v85, " (stop muid: ", 13);
        v86 = std::ostream::operator<<();
        v87 = sub_4A5C(v86, ") exceeds the total number of stops (", 37);
        sub_D4B494(v26, &v121);
        std::ostream::operator<<();
        sub_4A5C(v87, ") on trip ", 10);
        v88 = std::ostream::operator<<();
        sub_4A5C(v88, ".", 1);
        sub_1959680(v124, __p);
        sub_7E854(__p, 1u);
        if (v123 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1959728(v124);
      }
    }

    else if (sub_7E7E4(1u))
    {
      sub_19594F8(v124);
      v80 = sub_4A5C(v124, "Departure stop index ", 21);
      std::ostream::operator<<();
      sub_4A5C(v80, " (stop muid: ", 13);
      v81 = std::ostream::operator<<();
      v82 = sub_4A5C(v81, ") exceeds the total number of stops (", 37);
      sub_D4B494(v26, &v121);
      std::ostream::operator<<();
      sub_4A5C(v82, ") on trip ", 10);
      v83 = std::ostream::operator<<();
      sub_4A5C(v83, ".", 1);
      sub_1959680(v124, __p);
      sub_7E854(__p, 1u);
      if (v123 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(v124);
    }

    v84 = *(v108 + 16);
    sub_3608D0(v124, "TransitJourneyParserModule.Error.TripStopIndexLookup");
    sub_7BDA0(v84, v124, v108[1]);
    goto LABEL_124;
  }

  if (v5 == 3)
  {
    if (*(a2 + 40))
    {
      v36 = *(a2 + 40);
    }

    else
    {
      v36 = &off_2734780;
    }

    v37 = a1;
    v38 = sub_3B045C(*a1);
    v39 = *(a2 + 60);
    v40 = v36[3];
    v41 = nullsub_1(v36[4]);
    *v124 = -1;
    *&v124[8] = 0x7FFFFFFF;
    result = sub_2C7CFC(v38, v41, v124);
    if (result)
    {
      v42 = HIDWORD(result);
    }

    else
    {
      v42 = 0xFFFFFFFFLL;
    }

    v43 = HIDWORD(result) == 0xFFFFFFFF || result == 0;
    v44 = result << 32;
    if (v43)
    {
      v44 = 0;
    }

    if (v42 != 0xFFFFFFFFLL && v44 != 0)
    {
      *a3 = v39;
      *(a3 + 4) = v40;
      *(a3 + 12) = v44 | v42;
      v16 = 2;
LABEL_48:
      *(a3 + 1128) = v16;
      return result;
    }

    if (sub_7E7E4(1u))
    {
      sub_19594F8(v124);
      sub_4A5C(v124, "Unable to resolve road access point muid ", 41);
      v94 = std::ostream::operator<<();
      sub_4A5C(v94, " in transit network layer.", 26);
      sub_1959680(v124, __p);
      sub_7E854(__p, 1u);
      if (v123 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(v124);
    }

    v95 = *(v37 + 16);
    sub_3608D0(v124, "TransitJourneyParserModule.Error.RoadAccessPointLookup");
    sub_7BDA0(v95, v124, v37[1]);
    goto LABEL_124;
  }

  if (v5 != 4)
  {
    goto LABEL_96;
  }

  if (*(a2 + 48))
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = &off_27347A8;
  }

  *&v124[4] = xmmword_22A7460;
  *&v124[20] = 0xFFFFFFFFLL;
  memset(v125, 0, sizeof(v125));
  v126 = 0;
  v127 = -1;
  v129 = -1;
  v130 = 0;
  memset(v131, 0, sizeof(v131));
  *&v134[1] = 0u;
  v132 = 0x7FFFFFFF;
  v133 = 0x7FFFFFFF;
  *v134 = 0x7FFFFFFF7FFFFFFFLL;
  *&v134[5] = 0x8000000080000000;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v135 = 0u;
  v139 = 0x7FFFFFFF;
  v140 = 0x8000000080000000;
  v141 = 0;
  v142 = xmmword_2297C00;
  *&v149[1] = 0uLL;
  v143 = -1;
  v144 = -1;
  v145 = 0;
  memset(v146, 0, sizeof(v146));
  v147 = 0x7FFFFFFF;
  v148 = 0x7FFFFFFF;
  *v149 = 0x7FFFFFFF7FFFFFFFLL;
  *&v149[5] = 0x8000000080000000;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0u;
  v154 = 0x7FFFFFFF;
  v155 = 0x8000000080000000;
  v156 = 0;
  v157 = xmmword_2297C00;
  v158 = -1;
  v159 = 0x7FFFFFFF;
  v160 = 0x7FFFFFFF7FFFFFFFLL;
  v161 = 0u;
  v162 = 0;
  v163 = 0x8000000080000000;
  v164 = 0x7FFFFFFF;
  v165 = 0x7FFFFFFFFFFFFFFFLL;
  v166 = 0x8000000080000000;
  v167 = 0x7FFFFFFF;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  *&v18 = 0x8000000080000000;
  *(&v18 + 1) = 0x8000000080000000;
  v183 = v18;
  v184 = v18;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v19 = *(a2 + 60);
  v128 = 0xFFFF;
  *v124 = v19;
  v20 = *(v17 + 4);
  if (v20)
  {
    v21 = a1;
    *&v124[4] = sub_D4B134(a1, v17[3]);
    *&v124[12] = v22;
    v20 = *(v17 + 4);
    a1 = v21;
  }

  if ((v20 & 2) != 0)
  {
    *&v124[16] = sub_D4B134(a1, v17[4]);
    *&v124[24] = v23;
  }

  sub_4D6D10(v17, __p);
  sub_4192A0(v125, __p);
  sub_3EEA68(__p);
  *a3 = *v124;
  *(a3 + 12) = *&v124[12];
  sub_4C6AE8(a3 + 32, v125);
  *(a3 + 1128) = 3;
  return sub_3EEA68(v125);
}

void sub_D4B048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x4A0]);
  _Unwind_Resume(a1);
}

uint64_t sub_D4B134(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B045C(*a1);
  v5 = nullsub_1(a2);
  v18 = -1;
  v19 = 0x7FFFFFFF;
  v6 = sub_2C7A60(v4, v5, &v18);
  if (v7 == 1)
  {
    v8 = 3;
    goto LABEL_7;
  }

  if (v7 == 8)
  {
    v8 = 4;
LABEL_7:
    LODWORD(v21[0]) = v8;
    goto LABEL_8;
  }

  if (v7 != 10)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v18);
      sub_4A5C(&v18, "Unable to resolve muid ", 23);
      v13 = std::ostream::operator<<();
      sub_4A5C(v13, " as stop, access point, or road access point in transit network layer.", 70);
      sub_1959680(&v18, __p);
      sub_7E854(__p, 1u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      sub_1959728(&v18);
    }

    v14 = *(a1 + 16);
    sub_3608D0(&v18, "TransitJourneyParserModule.Error.TerminalIdLookup");
    sub_7BDA0(v14, &v18, *(a1 + 8));
    if (v20 < 0)
    {
      operator delete(v18);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_2673BE0;
    exception[2] = 43;
  }

  LODWORD(v21[0]) = 0;
LABEL_8:
  v9 = 0xFFFFFFFFLL;
  if (HIDWORD(v6) == 0xFFFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 << 32;
  }

  v11 = v10 & 0xFFFFFFFF00000000 | HIDWORD(v6);
  if (v6)
  {
    v9 = v11;
  }

  *(v21 + 4) = v9;
  return v21[0];
}

void sub_D4B2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_D4B354(uint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_D4B414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_D4B494(uint64_t a1, unint64_t *a2)
{
  v2 = sub_3A25A8(a1, *a2, 0, "trip");
  v3 = (v2 - *v2);
  if (*v3 >= 9u && (v4 = v3[4]) != 0)
  {
    return *(v2 + v4);
  }

  else
  {
    return 0;
  }
}

void sub_D4B4E8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

void sub_D4B520(void ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = *(v2 - 5);
      if (v4)
      {
        *(v2 - 4) = v4;
        operator delete(v4);
      }

      v5 = v2 - 8;
      v6 = *(v2 - 8);
      if (v6)
      {
        v7 = *(v2 - 7);
        v3 = *(v2 - 8);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 5);
            if (v9)
            {
              *(v7 - 4) = v9;
              operator delete(v9);
            }

            v10 = *(v7 - 8);
            if (v10)
            {
              *(v7 - 7) = v10;
              operator delete(v10);
            }

            v11 = *(v7 - 11);
            if (v11)
            {
              *(v7 - 10) = v11;
              operator delete(v11);
            }

            v12 = *(v7 - 14);
            if (v12)
            {
              *(v7 - 13) = v12;
              operator delete(v12);
            }

            v13 = *(v7 - 17);
            if (v13)
            {
              v14 = *(v7 - 16);
              v8 = *(v7 - 17);
              if (v14 != v13)
              {
                do
                {
                  v15 = v14 - 1136;
                  v16 = *(v14 - 8);
                  if (v16 != -1)
                  {
                    (off_2673BF8[v16])(&v18, v14 - 1136);
                  }

                  *(v14 - 8) = -1;
                  v14 -= 1136;
                }

                while (v15 != v13);
                v8 = *(v7 - 17);
              }

              *(v7 - 16) = v13;
              operator delete(v8);
            }

            v7 -= 144;
          }

          while (v7 != v6);
          v3 = *v5;
        }

        *(v2 - 7) = v6;
        operator delete(v3);
      }

      v2 -= 8;
    }

    while (v5 != v1);
  }

  a1[1] = v1;
}

void *sub_D4B680(void *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D4B760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A5AFB0(va);
  _Unwind_Resume(a1);
}

void *sub_D4B774(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D4B834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A56398(va);
  _Unwind_Resume(a1);
}

void *sub_D4B848(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D4B938(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A561F8(va);
  _Unwind_Resume(a1);
}

void *sub_D4B94C(void *result, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x39B0AD12073616)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_D4BAE0(unsigned int **a1, uint64_t a2)
{
  v2 = 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x39B0AD12073615)
  {
    sub_1794();
  }

  if (0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x327A976FC64F52EELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x193D4BB7E327A977 * ((a1[2] - *a1) >> 4)) >= 0x1CD85689039B0ALL)
  {
    v4 = 0x39B0AD12073615;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x39B0AD12073615)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  *v5 = 0;
  *(v5 + 1128) = -1;
  v6 = *(a2 + 1128);
  if (v6 != -1)
  {
    v15 = v5;
    (off_2673C20[v6])(&v15, a2);
    *(v5 + 1128) = v6;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  if (v8 != *a1)
  {
    v14 = v5 + *a1 - v8;
    v10 = *a1;
    do
    {
      *v9 = 0;
      *(v9 + 1128) = -1;
      v11 = v10[282];
      if (v11 != -1)
      {
        v15 = v9;
        (off_2673C20[v11])(&v15, v10);
        *(v9 + 1128) = v11;
      }

      v10 += 284;
      v9 += 1136;
    }

    while (v10 != v8);
    do
    {
      v12 = v7[282];
      if (v12 != -1)
      {
        (off_2673BF8[v12])(&v15, v7);
      }

      v7[282] = -1;
      v7 += 284;
    }

    while (v7 != v8);
    v7 = *a1;
    v9 = v14;
  }

  *a1 = v9;
  a1[1] = (v5 + 1136);
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v5 + 1136;
}

void sub_D4C280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (a49 == 1)
  {
    sub_D4C628(&a49, &a50);
  }

  sub_D4C4DC(&STACK[0x650]);
  sub_1A104((v50 - 104));
  _Unwind_Resume(a1);
}

void sub_D4C32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  sub_1A104(&a46);
  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(STACK[0x650]);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD4C324);
}

void sub_D4C350(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D4C430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = (v11 - 136);
    v15 = -v12;
    do
    {
      v14 = sub_A30CBC(v14) - 17;
      v15 += 136;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_D4C464(&a9);
  _Unwind_Resume(a1);
}

void ***sub_D4C464(void ***result)
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
          v4 = sub_A30CBC(v4 - 17);
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

uint64_t sub_D4C4DC(uint64_t a1)
{
  v2 = (a1 + 4096);
  if (*(a1 + 5471) < 0)
  {
    operator delete(*(a1 + 5448));
    if ((v2[679] & 0x80000000) == 0)
    {
LABEL_3:
      if ((v2[487] & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 4775) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 4752));
  if ((v2[487] & 0x80000000) == 0)
  {
LABEL_4:
    if ((v2[239] & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 4560));
  if ((v2[239] & 0x80000000) == 0)
  {
LABEL_5:
    v3 = *(a1 + 4232);
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = *(a1 + 4240);
    v7 = v3;
    if (v6 != v3)
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

      while (v6 != v3);
      v7 = *(a1 + 4232);
    }

    *(a1 + 4240) = v3;
    operator delete(v7);
    sub_506524((a1 + 24));
    v4 = *(a1 + 8);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_19;
  }

LABEL_11:
  operator delete(*(a1 + 4312));
  v3 = *(a1 + 4232);
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_506524((a1 + 24));
  v4 = *(a1 + 8);
  if (!v4)
  {
    return a1;
  }

LABEL_19:
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_D4C628(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1264);
  if (v3)
  {
    v4 = *(a2 + 1272);
    v5 = *(a2 + 1264);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_A30CBC(v4 - 17);
      }

      while (v4 != v3);
      v5 = *(a2 + 1264);
    }

    *(a2 + 1272) = v3;
    operator delete(v5);
  }

  if (*(a2 + 1191) < 0)
  {
    operator delete(*(a2 + 1168));
    if ((*(a2 + 495) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a2 + 303) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      operator delete(*(a2 + 280));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 495) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a2 + 472));
  if (*(a2 + 303) < 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((*(a2 + 55) & 0x80000000) == 0)
  {
    return;
  }

LABEL_14:
  v6 = *(a2 + 32);

  operator delete(v6);
}

void sub_D4C6F0()
{
  __chkstk_darwin();
  v1 = 0;
  v2 = 0;
  __p = 0;
  sub_A43A04();
}

void sub_D4CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_D4CDD0(&a48);
  sub_D4CD54(&a68);
  _Unwind_Resume(a1);
}

void sub_D4CBB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D4CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v14 = -v11;
    v15 = v12 - 232;
    do
    {
      v15 = sub_A30978(v15) - 240;
      v14 += 240;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_D4CCD8(&a9);
  _Unwind_Resume(a1);
}

void ***sub_D4CCD8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4 - 240;
          sub_A30978((v4 - 232));
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void *sub_D4CD54(void *a1)
{
  v2 = a1[547];
  if (v2)
  {
    v3 = a1[548];
    v4 = a1[547];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[547];
    }

    a1[548] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 3);
  return a1;
}