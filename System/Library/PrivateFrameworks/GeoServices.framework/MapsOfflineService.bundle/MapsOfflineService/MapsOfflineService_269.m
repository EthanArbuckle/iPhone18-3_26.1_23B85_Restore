void sub_108F76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_108F7C4(uint64_t a1, void *a2)
{
  v16 = 17;
  strcpy(__p, "sort_by_path_cost");
  LOBYTE(v14[0]) = 0;
  v4 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v16 = 14;
  strcpy(__p, "add_debug_info");
  LOBYTE(v14[0]) = 0;
  v6 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = 0u;
  *(a1 + 1) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v16 = 21;
  *(a1 + 72) = 0;
  strcpy(__p, "max_num_scanned_nodes");
  if (sub_353010(a2, __p))
  {
    HIBYTE(v14[2]) = 21;
    strcpy(v14, "max_num_scanned_nodes");
    v8 = sub_353010(a2, v14);
    if (SHIBYTE(v14[2]) < 0)
    {
      operator delete(v14[0]);
      if ((v16 & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 80) = v8;
        v16 = 17;
        strcpy(__p, "max_num_via_nodes");
        if (sub_353010(a2, __p))
        {
          HIBYTE(v14[2]) = 17;
          strcpy(v14, "max_num_via_nodes");
          v9 = sub_353010(a2, v14);
          if (SHIBYTE(v14[2]) < 0)
          {
            operator delete(v14[0]);
            if ((v16 & 0x80000000) == 0)
            {
LABEL_11:
              *(a1 + 84) = v9;
              v16 = 17;
              strcpy(__p, "min_partial_level");
              *(a1 + 88) = sub_108B604(a2, __p);
              if (v16 < 0)
              {
                operator delete(*__p);
              }

              v16 = 18;
              strcpy(__p, "max_stretch_factor");
              v10 = sub_63D34(a2, __p);
              if (v16 < 0)
              {
                v11 = v10;
                operator delete(*__p);
                v10 = v11;
              }

              *(a1 + 96) = v10;
              v16 = 18;
              strcpy(__p, "check_cost_stretch");
              v12 = sub_5F9D0(a2, __p);
              if (v16 < 0)
              {
                v13 = v12;
                operator delete(*__p);
                v12 = v13;
              }

              *(a1 + 104) = v12;
              operator new();
            }
          }

          else if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v9 = -1;
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        operator delete(*__p);
        goto LABEL_11;
      }
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*__p);
  goto LABEL_8;
}

void sub_1090534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, void **a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = v31[19];
  if (v33)
  {
    v31[20] = v33;
    operator delete(v33);
    v34 = *a15;
    if (!*a15)
    {
LABEL_3:
      v35 = *a18;
      if (!*a18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v34 = *a15;
    if (!*a15)
    {
      goto LABEL_3;
    }
  }

  v31[17] = v34;
  operator delete(v34);
  v35 = *a18;
  if (!*a18)
  {
LABEL_4:
    v36 = *(a14 + 24);
    if (!v36)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v31[8] = v35;
  operator delete(v35);
  v36 = *(a14 + 24);
  if (!v36)
  {
LABEL_5:
    v37 = *a14;
    if (!*a14)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    v31[2] = v37;
    operator delete(v37);
    goto LABEL_12;
  }

LABEL_10:
  v31[5] = v36;
  operator delete(v36);
  v37 = *a14;
  if (!*a14)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_1090814(_Unwind_Exception *a1)
{
  sub_360988(v1 + v2);
  sub_100E0D0(v1 + 3952);
  sub_100CD54(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1090858(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, unsigned int a6@<W5>, void *a7@<X6>, unsigned int a8@<W7>, uint64_t *a9@<X8>)
{
  v203[0] = a8;
  v13 = -768;
  do
  {
    v15 = a1 + v13;
    if (*(a1 + v13 + 8696))
    {
      v16 = *(v15 + 8704);
      if (v16 >= 0x80)
      {
        v14 = (a1 + v13);
        operator delete(*(v15 + 8680));
        *(v15 + 8680) = &unk_2290750;
        v14[1090] = 0;
        v14[1086] = 0;
        v14[1088] = 0;
        v14[1087] = 0;
      }

      else if (v16)
      {
        *(v15 + 8696) = 0;
        memset(*(v15 + 8680), 128, v16 + 8);
        *(*(v15 + 8680) + v16) = -1;
        v17 = *(v15 + 8704);
        if (v17 == 7)
        {
          v18 = 6;
        }

        else
        {
          v18 = v17 - (v17 >> 3);
        }

        *(a1 + v13 + 8720) = v18 - *(v15 + 8696);
      }
    }

    v13 += 48;
  }

  while (v13);
  *(a1 + 8872) = -NAN;
  *(a1 + 8856) = -NAN;
  *(a1 + 8864) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 7896) = -1;
  *(a1 + 7904) = -1;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  *(a1 + 8856) = *(sub_10104F4((*a1 + 4312), a7, a4, a5, a6, 0) + 1);
  if (*(a1 + 8856) != -1)
  {
    v19 = *(a1 + 8860);
    if (v19 != 0x7FFFFFFF && *(a1 + 8864) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v201 = 0x7FFFFFFF;
      v202 = 0x7FFFFFFF;
      v20 = *a5;
      if (*a5 != 0x7FFFFFFF)
      {
        v202 = *a5;
        v21 = v19 / 10;
        v22 = v19 % 10;
        if (v19 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        v201 = v21 + v20 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
      }

      sub_1091740(&v198, *a1, a7, (a1 + 8712));
      v26 = *a2;
      v25 = a2[1];
      if (*a2 != v25)
      {
        v28 = v199;
        v27 = v200;
        do
        {
          if (v28 < v27)
          {
            *v28 = *v26;
            *(v28 + 8) = 0;
            v28 += 16;
          }

          else
          {
            v29 = v198;
            v30 = v28 - v198;
            v31 = (v28 - v198) >> 4;
            v32 = v31 + 1;
            if ((v31 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v27 - v198) >> 3 > v32)
            {
              v32 = (v27 - v198) >> 3;
            }

            if (v27 - v198 >= 0x7FFFFFFFFFFFFFF0)
            {
              v33 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            if (v33)
            {
              if (!(v33 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v34 = v31;
            v35 = 16 * v31;
            v27 = 0;
            *v35 = *v26;
            *(v35 + 8) = 0;
            v28 = 16 * v31 + 16;
            v36 = (v35 - 16 * v34);
            memcpy(v36, v29, v30);
            v198 = v36;
            v200 = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          v199 = v28;
          v26 += 12;
        }

        while (v26 != v25);
      }

      v38 = *a3;
      v37 = a3[1];
      if (*a3 != v37)
      {
        v40 = v199;
        v39 = v200;
        do
        {
          if (v40 < v39)
          {
            *v40 = *v38;
            *(v40 + 8) = 0;
            v40 += 16;
          }

          else
          {
            v41 = v198;
            v42 = v40 - v198;
            v43 = (v40 - v198) >> 4;
            v44 = v43 + 1;
            if ((v43 + 1) >> 60)
            {
              sub_1794();
            }

            if ((v39 - v198) >> 3 > v44)
            {
              v44 = (v39 - v198) >> 3;
            }

            if (v39 - v198 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v44;
            }

            if (v45)
            {
              if (!(v45 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v46 = v43;
            v47 = 16 * v43;
            v39 = 0;
            *v47 = *v38;
            *(v47 + 8) = 0;
            v40 = 16 * v43 + 16;
            v48 = (v47 - 16 * v46);
            memcpy(v48, v41, v42);
            v198 = v48;
            v200 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          v199 = v40;
          v38 += 12;
        }

        while (v38 != v37);
      }

      v49 = *(a1 + 8856);
      v50 = *(a1 + 8688);
      v51 = *v50;
      if (v49 <= *v50)
      {
        v67 = *(v50 + 1);
        v54 = a6;
      }

      else
      {
        v52 = *(a1 + 8696);
        v53 = (v52 - v50) >> 4;
        v54 = a6;
        if (v53 >= 1)
        {
          if (v52 - v50 != 16)
          {
            do
            {
              v55 = (4 * v53) & 0xFFFFFFFFFFFFFFF0;
              _X14 = v50 + v55;
              __asm { PRFM            #0, [X14] }

              v62 = &v50[4 * (v53 >> 1)];
              _X13 = v62 + v55;
              __asm { PRFM            #0, [X13] }

              if (*v62 >= v49)
              {
                v65 = 0;
              }

              else
              {
                v65 = v53 >> 1;
              }

              v50 += 4 * v65;
              v53 -= v53 >> 1;
            }

            while (v53 > 1);
            v51 = *v50;
          }

          v50 += 4 * (v51 < v49);
        }

        if (v52 == v50)
        {
          v67 = *(v52 - 1);
        }

        else
        {
          v66 = *(v50 - 4);
          if (*v50 == v66)
          {
            v67 = *(v50 + 1);
          }

          else
          {
            v24 = *(v50 - 1);
            v67 = v24 + (v49 - v66) / (*v50 - v66) * (*(v50 + 1) - v24);
          }
        }
      }

      v197 = sub_108CF40((a1 + 8856), v67, v24);
      sub_103C888(a1 + 8, a2, a4, &v202, v54, &v197, 0x7FFFFFFF, v203, &v198, (a1 + 8736), *(a1 + 8760), v133, *(a1 + 8768));
      __p[0] = sub_103DD3C((a1 + 8));
      __p[1] = v68;
      sub_32114((a1 + 7896), __p);
      sub_1042418(a1 + 3952, a3, a4, &v201, v54, &v197, 0x7FFFFFFF, v203, &v198, (a1 + 8736), *(a1 + 8760), v134, *(a1 + 8768));
      __p[0] = sub_1043448((a1 + 3952));
      __p[1] = v69;
      sub_32114((a1 + 7896), __p);
      sub_1091F2C(a1, a2, a3, a4, v54, &v195);
      v70 = v195;
      v71 = v196;
      if (v195 != v196)
      {
        v72 = (v195 + 32);
        while (1)
        {
          sub_1092A1C(a1, v72 - 4, __p);
          if (!sub_F69D6C(__p))
          {
            break;
          }

LABEL_70:
          sub_4547F0(__p);
          v91 = (v72 + 8);
          v72 += 12;
          if (v91 == v71)
          {
            v70 = v195;
            goto LABEL_105;
          }
        }

        if (*(a1 + 8681) != 1)
        {
LABEL_101:
          v132 = a9[1];
          if (v132 < a9[2])
          {
            v73 = *__p;
            *(v132 + 16) = v156;
            *(v132 + 24) = 0;
            *v132 = v73;
            __p[1] = 0;
            v156 = 0;
            __p[0] = 0;
            *(v132 + 32) = 0;
            *(v132 + 40) = 0;
            *(v132 + 24) = v157;
            *(v132 + 40) = v158;
            v157 = 0uLL;
            v158 = 0;
            v74 = v159;
            v75 = v161;
            v76 = v162;
            *(v132 + 64) = v160;
            *(v132 + 80) = v75;
            *(v132 + 48) = v74;
            *(v132 + 96) = v76;
            *(v132 + 104) = 0;
            *(v132 + 112) = 0;
            *(v132 + 120) = 0;
            *(v132 + 104) = v163;
            v163 = 0uLL;
            *(v132 + 120) = v164;
            *(v132 + 128) = 0;
            *(v132 + 136) = 0;
            *(v132 + 144) = 0;
            *(v132 + 128) = v165;
            *(v132 + 144) = v166;
            *(v132 + 152) = 0;
            v164 = 0;
            v165 = 0uLL;
            v166 = 0;
            *(v132 + 160) = 0;
            *(v132 + 168) = 0;
            *(v132 + 152) = v167;
            *(v132 + 168) = v168;
            v167 = 0uLL;
            v168 = 0;
            v77 = v170;
            v78 = v171;
            *(v132 + 176) = v169;
            *(v132 + 192) = v77;
            *(v132 + 208) = v78;
            *(v132 + 216) = 0;
            *(v132 + 224) = 0;
            *(v132 + 232) = 0;
            *(v132 + 216) = v172;
            v172 = 0uLL;
            *(v132 + 232) = v173;
            *(v132 + 240) = 0;
            *(v132 + 248) = 0;
            *(v132 + 256) = 0;
            *(v132 + 240) = v174;
            *(v132 + 256) = v175;
            v173 = 0;
            v174 = 0uLL;
            v175 = 0;
            v79 = v176;
            v80 = v178;
            *(v132 + 280) = v177;
            *(v132 + 296) = v80;
            *(v132 + 264) = v79;
            v81 = v179;
            v82 = v180;
            v83 = v182;
            *(v132 + 344) = v181;
            *(v132 + 360) = v83;
            *(v132 + 312) = v81;
            *(v132 + 328) = v82;
            v84 = v183;
            v85 = v184;
            v86 = v186;
            *(v132 + 408) = v185;
            *(v132 + 424) = v86;
            *(v132 + 376) = v84;
            *(v132 + 392) = v85;
            v87 = v187;
            v88 = v188;
            v89 = v190;
            *(v132 + 472) = v189;
            *(v132 + 488) = v89;
            *(v132 + 440) = v87;
            *(v132 + 456) = v88;
            *(v132 + 504) = v191;
            *(v132 + 512) = v192;
            v191 = 0;
            v192 = 0uLL;
            *(v132 + 528) = 0;
            *(v132 + 544) = 0;
            *(v132 + 536) = 0;
            *(v132 + 528) = v193;
            *(v132 + 544) = v194;
            v193 = 0uLL;
            v194 = 0;
            v90 = v132 + 552;
          }

          else
          {
            sub_49DFE8(a9, __p);
          }

          a9[1] = v90;
          goto LABEL_70;
        }

        v92 = sub_4491BC(**a1, v72 - 1, 0) >> 32;
        v93 = sub_4491BC(**a1, v72, 0) >> 32;
        sub_D7B0(v144);
        *(&v145 + *(v144[0] - 24)) = 9;
        v94 = sub_4A5C(&v145, "ViaPath: {", 12);
        v95 = sub_4A5C(v94, "  cost_function: ", 20);
        v96 = *(a4 + 31);
        if (v96 >= 0)
        {
          v97 = a4 + 8;
        }

        else
        {
          v97 = *(a4 + 8);
        }

        if (v96 >= 0)
        {
          v98 = *(a4 + 31);
        }

        else
        {
          v98 = *(a4 + 16);
        }

        v99 = sub_4A5C(v95, v97, v98);
        v100 = sub_4A5C(v99, ",", 2);
        v101 = sub_4A5C(v100, "  via_node: ", 15);
        v102 = sub_421CD4(v101, *(v72 - 4));
        v103 = sub_4A5C(v102, ",", 2);
        v104 = sub_4A5C(v103, "  path_cost: ", 16);
        if (*(v72 + 3) == -1 || *(v72 + 4) == 0x7FFFFFFF || (v105 = *(v72 + 5), v105 == -1) || (v106 = *(v72 + 6), v106 == 0x7FFFFFFF))
        {
          v107 = 0x7FFFFFFF00000000;
          v108 = 0xFFFFFFFFLL;
        }

        else
        {
          v108 = (v105 + *(v72 + 3));
          v107 = (v106 + *(v72 + 4)) << 32;
        }

        v109 = sub_705F0(v104, v108 | v107);
        v110 = sub_4A5C(v109, ",", 2);
        v111 = sub_4A5C(v110, "  path_length_lb: ", 21);
        v112 = sub_70FBC(v111, *(a1 + 8864));
        v113 = sub_4A5C(v112, ",", 2);
        v114 = sub_4A5C(v113, "  plateau: {", 14);
        v115 = sub_4A5C(v114, "    length_lb: ", 18);
        v116 = sub_1089E8C((v72 - 4), *a1);
        v117 = sub_70FBC(v115, v116);
        v118 = sub_4A5C(v117, ",", 2);
        sub_4A5C(v118, "    first_node_coord:", 24);
        v119 = exp(v92 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v119 + -1.0 / v119) * 0.5);
        v120 = std::ostream::operator<<();
        sub_4A5C(v120, ",", 1);
        v121 = std::ostream::operator<<();
        v122 = sub_4A5C(v121, ",", 2);
        sub_4A5C(v122, "    last_node_coord: ", 24);
        v123 = exp(v93 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v123 + -1.0 / v123) * 0.5);
        v124 = std::ostream::operator<<();
        sub_4A5C(v124, ",", 1);
        v125 = std::ostream::operator<<();
        v126 = sub_4A5C(v125, "", 1);
        v127 = sub_4A5C(v126, "  }", 3);
        sub_4A5C(v127, "}", 1);
        if ((v154 & 0x10) != 0)
        {
          v129 = v153;
          v130 = &v149;
          if (v153 < v150)
          {
            v153 = v150;
            v129 = v150;
            v130 = &v149;
          }
        }

        else
        {
          if ((v154 & 8) == 0)
          {
            v128 = 0;
            HIBYTE(v143) = 0;
LABEL_96:
            *(&__dst + v128) = 0;
            if (SHIBYTE(v156) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst;
            v156 = v143;
            v144[0] = v137;
            *(v144 + *(v137 - 24)) = v136;
            v145 = v135;
            if (v152 < 0)
            {
              operator delete(v151);
            }

            std::locale::~locale(&v147);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            goto LABEL_101;
          }

          v129 = v148[2];
          v130 = v148;
        }

        v131 = *v130;
        v128 = v129 - *v130;
        if (v128 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v128 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v143) = v129 - *v130;
        if (v128)
        {
          memmove(&__dst, v131, v128);
        }

        goto LABEL_96;
      }

LABEL_105:
      if (v70)
      {
        v196 = v70;
        operator delete(v70);
      }

      if (v198)
      {
        v199 = v198;
        operator delete(v198);
      }
    }
  }
}

void sub_1091618(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  if (!v4)
  {
    sub_487EC4(v1);
    _Unwind_Resume(a1);
  }

  *(v2 - 176) = v4;
  operator delete(v4);
  sub_487EC4(v1);
  _Unwind_Resume(a1);
}

int64_t sub_1091740(int64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (*a4 != a4[1])
  {
    v5 = a3;
    result = sub_F6D008(a3);
    if (result)
    {
      if (*(a2 + 31328) == 1)
      {
        result = sub_585D8((a2 + 8));
        if (result)
        {
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v7 = *(a2 + 15152);
          v8 = sub_2FEF94((a4[1] - *a4) >> 2);
          v9 = *(v7 + 3872);
          if (v9 != -1 || (v9 = 1, (v74 = sub_101E790(v7, 1u, 1)) == 0))
          {
LABEL_6:
            if (v9 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v9;
            }

            v103 = 256;
            v86 = v10;
            if (v10 < 2)
            {
              return sub_F6D008(v5);
            }

            v11 = 0;
            v85 = v7 + 16;
            v94 = (v7 + 688);
            v91 = (v7 + 736);
            v92 = (v7 + 712);
            v90 = (v7 + 760);
            v96 = v4;
            while (1)
            {
              if (!*(&v103 + v11))
              {
                v12 = 0;
                v13 = 1;
                goto LABEL_19;
              }

              result = sub_F6D008(v5);
              v12 = result - 1;
              if (result - 1 >= 0)
              {
                break;
              }

LABEL_14:
              if (++v11 == 2)
              {
                return result;
              }
            }

            v13 = -1;
LABEL_19:
            v95 = v13;
            v14 = 1;
            while (1)
            {
              result = sub_F6D008(v5);
              if (v12 >= result)
              {
                goto LABEL_14;
              }

              v100 = *(*a4 + 4 * v14);
              if (v100)
              {
                break;
              }

LABEL_101:
              if (++v14 == v86 || v12 < 0)
              {
                goto LABEL_14;
              }
            }

            v15 = sub_F6C648(v5, v12);
            v16 = *(v15 + 32);
            v17 = (v16 & 0xFF000000000000) == 0;
            v18 = ((v16 >> 16) & 0xFFFF0000 | (v16 << 32) | (2 * v17)) + 4 * *(v15 + 80);
            LODWORD(v104) = v14;
            v19 = sub_101F854(v7, HIDWORD(v18) & 0xFFFF0000FFFFFFFFLL | (WORD1(v18) << 32), v17, &v104);
            v102 = 0;
            v20 = HIDWORD(v19);
            v101 = v14;
            v93 = v14 - 1;
            v21 = v19;
LABEL_23:
            v98 = v20;
            v99 = v21;
            while (1)
            {
              result = sub_F6D008(v5);
              if (v12 < 0)
              {
                v14 = v101;
                goto LABEL_101;
              }

              v14 = v101;
              if (v12 >= result || v102 >= v100)
              {
                goto LABEL_101;
              }

              v22 = sub_F6C648(v5, v12);
              v23 = v11;
              v24 = v5;
              v25 = *(v22 + 32);
              v97 = *(v22 + 88);
              v26 = v25 & 0xFF000000000000;
              v27 = ((v25 >> 16) & 0xFFFF0000 | (v25 << 32) | (2 * ((v25 & 0xFF000000000000) == 0))) + 4 * *(v22 + 80);
              v106 = 1;
              v107[0] = HIDWORD(v27);
              v104 = &v106;
              v105 = v107;
              v28 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v28;
              if (!*v7)
              {
                goto LABEL_82;
              }

              v29 = v7 + 688;
              if (*v94 != HIDWORD(v27))
              {
                v29 = v7 + 712;
                if (*v92 != HIDWORD(v27))
                {
                  v29 = v7 + 736;
                  if (*v91 != HIDWORD(v27))
                  {
                    v29 = v7 + 760;
                    if (*v90 != HIDWORD(v27))
                    {
                      break;
                    }
                  }
                }
              }

              ++*(v7 + 3864);
              *(v29 + 8) = v28;
              v30 = *(v29 + 16);
              if (v30)
              {
                goto LABEL_33;
              }

LABEL_82:
              v21 = 0;
              LODWORD(v20) = -1;
LABEL_83:
              v11 = v23;
              v62 = v96;
              v12 += v95;
              v5 = v24;
              if (v21 != v99 || v20 != v98)
              {
                v63 = v27 | v97 & 1;
                v65 = v96[1];
                v64 = v96[2];
                if (v65 >= v64)
                {
                  v67 = *v96;
                  v68 = v65 - *v96;
                  v69 = v68 >> 4;
                  v70 = (v68 >> 4) + 1;
                  if (v70 >> 60)
                  {
                    sub_1794();
                  }

                  v71 = v64 - v67;
                  if (v71 >> 3 > v70)
                  {
                    v70 = v71 >> 3;
                  }

                  if (v71 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v72 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v72 = v70;
                  }

                  if (v72)
                  {
                    if (!(v72 >> 60))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v73 = 16 * v69;
                  *v73 = v63;
                  *(v73 + 8) = v101;
                  v66 = 16 * v69 + 16;
                  memcpy(0, v67, v68);
                  v62 = v96;
                  *v96 = 0;
                  v96[2] = 0;
                  if (v67)
                  {
                    operator delete(v67);
                  }

                  v5 = v24;
                  v11 = v23;
                }

                else
                {
                  *v65 = v63;
                  *(v65 + 2) = v101;
                  v66 = (v65 + 16);
                }

                v62[1] = v66;
                ++v102;
                goto LABEL_23;
              }
            }

            v48 = *(v7 + 744);
            v49 = *(v7 + 720);
            v50 = *(v7 + 696);
            v88 = *(v7 + 768);
            v30 = sub_2D52A4(*v7, 7, HIDWORD(v27), 1);
            if (v50 >= v28)
            {
              v51 = v28;
            }

            else
            {
              v51 = v50;
            }

            v52 = 28;
            if (v50 >= v28)
            {
              v52 = 0;
            }

            if (v49 < v51)
            {
              v51 = v49;
              v52 = 29;
            }

            if (v48 < v51)
            {
              v52 = 30;
              v51 = v48;
            }

            v53 = v88 >= v51;
            v54 = 31;
            if (v53)
            {
              v54 = v52;
            }

            v55 = v85 + 24 * v54;
            *v55 = v107[0];
            *(v55 + 8) = *(v7 + 3856);
            *(v55 + 16) = v30;
            if (v30)
            {
LABEL_33:
              v31 = (v30 + *v30);
              v32 = (v31 - *v31);
              if (*v32 < 5u)
              {
                goto LABEL_42;
              }

              v33 = v32[2];
              if (!v33)
              {
                goto LABEL_42;
              }

              v34 = sub_101F5B8((v31 + v33 + *(v31 + v33)), WORD1(v27));
              v35 = (v31 - *v31);
              if (*v35 < 7u)
              {
                v36 = 0;
              }

              else
              {
                v36 = v35[3];
                if (v36)
                {
                  v36 = (v36 + v31 + *(v36 + v31));
                }
              }

              v37 = sub_101F704(v36, *(v34 + 2 * (v26 != 0)));
              v38 = (v37 - *v37);
              if (*v38 >= 5u && (v39 = v38[2]) != 0)
              {
                v40 = (v37 + v39 + *(v37 + v39));
              }

              else
              {
LABEL_42:
                v40 = 0;
              }

              v41 = sub_C54264(v40, v93);
              v21 = *v41;
              LODWORD(v20) = v41[1];
              if (*(v7 + 3876) != 1)
              {
                goto LABEL_83;
              }

              v106 = 1;
              v107[0] = v21;
              v104 = &v106;
              v105 = v107;
              v42 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v42;
              if (!*v7)
              {
                goto LABEL_82;
              }

              v43 = v7 + 688;
              if (*v94 == v21 || (v43 = v7 + 712, *v92 == v21) || (v43 = v7 + 736, *v91 == v21) || (v43 = v7 + 760, *v90 == v21))
              {
                ++*(v7 + 3864);
                *(v43 + 8) = v42;
                v44 = *(v43 + 16);
                if (v44)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v89 = *(v7 + 744);
                v56 = *(v7 + 720);
                v57 = *(v7 + 696);
                v84 = *(v7 + 768);
                v44 = sub_2D52A4(*v7, 7, v21, 1);
                if (v57 >= v42)
                {
                  v58 = v42;
                }

                else
                {
                  v58 = v57;
                }

                v59 = 28;
                if (v57 >= v42)
                {
                  v59 = 0;
                }

                if (v56 < v58)
                {
                  v58 = v56;
                  v59 = 29;
                }

                if (v89 < v58)
                {
                  v59 = 30;
                  v58 = v89;
                }

                v53 = v84 >= v58;
                v60 = 31;
                if (v53)
                {
                  v60 = v59;
                }

                v61 = v85 + 24 * v60;
                *v61 = v107[0];
                *(v61 + 8) = *(v7 + 3856);
                *(v61 + 16) = v44;
                if (v44)
                {
LABEL_50:
                  v45 = (v44 + *v44);
                  v46 = (v45 - *v45);
                  if (*v46 >= 9u)
                  {
                    v47 = v46[4];
                    if (v47)
                    {
                      if (*(v45 + v47 + *(v45 + v47)))
                      {
                        goto LABEL_83;
                      }
                    }
                  }

                  goto LABEL_82;
                }
              }
            }

            sub_101E964(&v104);
            goto LABEL_82;
          }

          v75 = &v74[-*v74];
          v76 = *v75;
          if (v76 < 0xB)
          {
            if (v76 < 9)
            {
LABEL_115:
              v9 = 1;
              goto LABEL_6;
            }
          }

          else if (*(v75 + 5))
          {
            v77 = &v74[*(v75 + 5) + *&v74[*(v75 + 5)]];
            v78 = &v77[-*v77];
            if (*v78 >= 5u && (v79 = *(v78 + 2)) != 0)
            {
              v9 = v77[v79];
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_6;
          }

          v80 = *(v75 + 4);
          if (v80)
          {
            v81 = sub_101E640(&v74[v80 + *&v74[v80]], 0);
            v82 = (v81 - *v81);
            if (*v82 >= 5u && (v83 = v82[2]) != 0)
            {
              v9 = *(v81 + v83);
            }

            else
            {
              v9 = 0;
            }

            *(v7 + 3872) = v9;
            goto LABEL_6;
          }

          goto LABEL_115;
        }
      }
    }
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

void sub_1091EE0(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1091F2C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  sub_101B084(a2, v104);
  sub_101B084(a3, v103);
  v87 = a6;
  sub_1031BD0(a1 + 3952, &v100);
  v9 = v101;
  v10 = v102;
  if (v101 != v102)
  {
    v21 = v100;
    *&v22.f64[0] = 0x8000000080000000;
    *&v22.f64[1] = 0x8000000080000000;
    v91 = vnegq_f64(v22);
    do
    {
      v28 = *v21 + 80 * *v9;
      if (sub_1031B9C(a1 + 8, v28))
      {
        sub_109983C(a1 + 7912, v28, &v93);
        v30 = v93;
        v29 = v94;
        if (v95 == 1)
        {
          v31 = v93[1] + 104 * v94;
          *v31 = *v28;
          *(v31 + 40) = 0u;
          *(v31 + 56) = 0u;
          *(v31 + 72) = 0u;
          *(v31 + 88) = 0u;
          *(v31 + 8) = 0u;
          *(v31 + 24) = 0u;
          *(v31 + 48) = v91;
          *(v31 + 64) = v91;
          *(v31 + 80) = xmmword_2266550;
          *(v31 + 96) = 0x7FFFFFFF;
        }

        v23 = v30[1] + 104 * v29;
        *(v23 + 8) = *v28;
        v24 = v23 + 8;
        *(v24 + 52) = *(v28 + 8);
        if ((*(v28 + 72) & 0x80000000) != 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v28 + 32);
        }

        *(v24 + 16) = v25;
        v26 = v103[0] + 12 * (*(v28 + 72) & 0x7FFFFFFF);
        v27 = *v26;
        *(v24 + 88) = *(v26 + 2);
        *(v24 + 80) = v27;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  sub_1031BD0(a1 + 8, &v97);
  v11 = v98;
  v12 = v99;
  if (v98 != v99)
  {
    v32 = v97;
    do
    {
      v72 = *v32 + 80 * *v11;
      sub_108DF28(a1 + 7912, v72, &v93);
      if (v93)
      {
        v73 = v96;
        *(v96 + 52) = *(v72 + 8);
        v74 = (*(v72 + 72) & 0x80000000) != 0 ? 0 : *(v72 + 24);
        *(v73 + 16) = v74;
        *(v73 + 48) = *(v72 + 16);
        v75 = v104[0] + 12 * (*(v72 + 72) & 0x7FFFFFFF);
        v76 = *(v75 + 2);
        *(v73 + 76) = *v75;
        *(v73 + 84) = v76;
        sub_108E04C(a1, (v73 + 8));
        if (*(v73 + 52) != -1 && *(v73 + 56) != 0x7FFFFFFF)
        {
          v77 = *(v73 + 60);
          if (v77 != -1)
          {
            v78 = *(v73 + 64);
            if (v78 != 0x7FFFFFFF)
            {
              v79 = (v78 + *(v73 + 56));
              if (v79 != 0x7FFFFFFF)
              {
                v80 = (v77 + *(v73 + 52));
                if (v80 != -1)
                {
                  if (*(a1 + 8872) == -1 || (v81 = *(a1 + 8876), v81 == 0x7FFFFFFF) || v79 < v81)
                  {
                    *(a1 + 8872) = v80 | (v79 << 32);
                  }
                }
              }
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v13 = a1 + 7912;
  v14 = (a1 + 8680);
  v15 = *(a1 + 7912);
  v16 = *(a1 + 7920);
  if (*v15 <= -2)
  {
    v17 = *(a1 + 7912);
    do
    {
      v18 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v17 = (v17 + v18);
      v16 += 104 * v18;
    }

    while (*v17 < -1);
    v19 = &v15[*(a1 + 7936)];
    v20 = (a1 + 7912);
    if (v17 == v19)
    {
      goto LABEL_83;
    }

    goto LABEL_19;
  }

  v17 = *(a1 + 7912);
  v33 = *(a1 + 7936);
  v19 = &v15[v33];
  v20 = (a1 + 7912);
  if (v15 != &v15[v33])
  {
LABEL_19:
    __src = 0;
    v92 = 0;
    while (1)
    {
      if (0xAAAAAAAAAAAAAAABLL * (&v92[-__src] >> 5) >= *(a1 + 8764) && *v14 != 1)
      {
        goto LABEL_100;
      }

      v88 = &v92[-__src];
      v89 = 0xAAAAAAAAAAAAAAABLL * (&v92[-__src] >> 5);
      v34 = (v16 + 8);
      if (*(v16 + 1))
      {
        if (*(v16 + 13) != -1 && *(v16 + 14) != 0x7FFFFFFF && *(v16 + 15) != -1 && *(v16 + 16) != 0x7FFFFFFF && *(v16 + 17) != -1 && *(v16 + 18) != 0x7FFFFFFF)
        {
          v84 = v13;
          sub_108DF28(v13, v16 + 3, &v93);
          v13 = v84;
          if ((!v93 || *v34 != *(v96 + 16)) && *(v16 + 13) != -1 && *(v16 + 14) != 0x7FFFFFFF)
          {
            v35 = *(v16 + 15);
            if (v35 != -1)
            {
              v36 = *(v16 + 16);
              if (v36 != 0x7FFFFFFF)
              {
                v43 = v36 + *(v16 + 14);
                if (v43 != 0x7FFFFFFF)
                {
                  v44 = v35 + *(v16 + 13);
                  if (v44 != -1)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_35:
      v37 = *(v17 + 1);
      v17 = (v17 + 1);
      v16 += 104;
      if (v37 <= -2)
      {
        do
        {
          v38 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v17 = (v17 + v38);
          v16 += 104 * v38;
        }

        while (*v17 < -1);
      }

      if (v17 == v19)
      {
        v39 = v20 + 6;
        if (v20 + 6 == v14)
        {
          goto LABEL_89;
        }

        while (1)
        {
          v40 = v39;
          v41 = v20[6];
          v16 = v20[7];
          v17 = v41;
          if (*v41 <= -2)
          {
            do
            {
              v42 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
              v17 = (v17 + v42);
              v16 += 104 * v42;
            }

            while (*v17 < -1);
          }

          v19 = &v20[9][v41];
          if (v17 != v19)
          {
            break;
          }

          v39 = v40 + 6;
          v20 = v40;
          if (v40 + 6 == v14)
          {
            goto LABEL_89;
          }
        }

        v20 = v40;
        if (!v40)
        {
          goto LABEL_89;
        }
      }

      else if (!v20)
      {
        goto LABEL_89;
      }
    }

    v45 = *(a1 + 8776);
    v46 = v45 * *(a1 + 8876);
    if (v46 >= 0.0)
    {
      HIDWORD(v47) = 1127219200;
      if (v46 < 4.50359963e15)
      {
        v48 = (v46 + v46) + 1;
        goto LABEL_55;
      }
    }

    else
    {
      HIDWORD(v47) = -1020264448;
      if (v46 > -4.50359963e15)
      {
        v48 = (v46 + v46) - 1 + (((v46 + v46) - 1) >> 63);
LABEL_55:
        v46 = (v48 >> 1);
      }
    }

    if (v43 > v46)
    {
      goto LABEL_35;
    }

    if (*(a1 + 8784) == 1)
    {
      LODWORD(v47) = *(a1 + 8856);
      if (v45 * v47 < v44)
      {
        goto LABEL_35;
      }
    }

    v49 = *a1;
    v50 = **a1;
    if (*(v50 + 7774) == 1)
    {
      v82 = HIDWORD(*v34);
      v83 = *v34;
      v51 = sub_2AF704(v50 + 3896, HIDWORD(*v34), 1);
      if (!v51 || (v52 = &v51[-*v51], *v52 < 5u) || (v53 = *(v52 + 2)) == 0 || *&v51[v53 + *&v51[v53]] <= WORD1(v83) || !sub_2B817C(v50, v82 & 0xFFFF0000FFFFFFFFLL | (WORD1(v83) << 32)))
      {
LABEL_82:
        v13 = v84;
        goto LABEL_35;
      }

      v49 = *a1;
    }

    v54 = sub_103E47C(v49, v16 + 1, 0x3B9ACA00u, a4, v16 + 12, a5);
    if (v54 != -1 && HIDWORD(v54) != 0x7FFFFFFF)
    {
      v55 = *(v16 + 18) + HIDWORD(v54);
      *(v16 + 17) += v54;
      *(v16 + 18) = v55;
      if (sub_108E1C4(a1, (v16 + 8)))
      {
        if (sub_108E2D8(a1, (v16 + 8)))
        {
          v56 = v89 + 1;
          if (v89 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * (-__src >> 5) > v56)
          {
            v56 = 0x5555555555555556 * (-__src >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 5) >= 0x155555555555555)
          {
            v57 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v57 = v56;
          }

          if (v57)
          {
            if (v57 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v58 = (32 * (&v92[-__src] >> 5));
          v59 = *(v16 + 24);
          *v58 = *v34;
          v58[1] = v59;
          v60 = *(v16 + 40);
          v61 = *(v16 + 56);
          v62 = *(v16 + 88);
          v58[4] = *(v16 + 72);
          v58[5] = v62;
          v58[2] = v60;
          v58[3] = v61;
          v92 = (v58 + 6);
          memcpy((96 * v89 + 96 * (v88 / -96)), __src, v88);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 96 * v89 + 96 * (v88 / -96);
        }
      }
    }

    goto LABEL_82;
  }

LABEL_83:
  v20 = (a1 + 7960);
  v63 = 48;
  v64 = a1 + 7912;
  do
  {
    v16 = *(v64 + 56);
    v17 = *v20;
    if (**v20 <= -2)
    {
      do
      {
        v65 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v17 = (v17 + v65);
        v16 += 104 * v65;
      }

      while (*v17 < -1);
    }

    v19 = &(*v20)[*(v64 + 72)];
    if (v17 != v19)
    {
      goto LABEL_19;
    }

    v64 = v13 + v63;
    v63 += 48;
    v20 = (v13 + v63);
  }

  while (v63 != 768);
  v92 = 0;
  __src = 0;
LABEL_89:
  if (*v14 == 1)
  {
    v66 = v92;
    v67 = 0xAAAAAAAAAAAAAAABLL * (&v92[-__src] >> 5);
    v68 = 126 - 2 * __clz(v67);
    v69 = &v92[-__src];
    if (v92 == __src)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    sub_1099FE8(__src, v92, &v93, v70, 1);
    v71 = *(a1 + 8764);
    if (v67 > v71)
    {
      v69 = 96 * v71;
      v66 = (96 * v71 + __src);
    }

    *v87 = 0;
    v87[1] = 0;
    v87[2] = 0;
    if (v66 != __src)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v69 >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    if (__src)
    {
      operator delete(__src);
    }
  }

  else
  {
LABEL_100:
    *v87 = __src;
    v87[1] = v92;
    v87[2] = 0;
  }

  if (v103[0])
  {
    v103[1] = v103[0];
    operator delete(v103[0]);
  }

  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }
}

void sub_1092944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 136);
    if (!v21)
    {
LABEL_3:
      v22 = *(v19 - 112);
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 136);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 128) = v21;
  operator delete(v21);
  v22 = *(v19 - 112);
  if (!v22)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v19 - 104) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1092A1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_103D148((a1 + 8), a2, v48);
  if (sub_F69D6C(v48))
  {
    *a3 = *v48;
    v6 = v50;
    *(a3 + 16) = *&v48[16];
    *&v48[8] = 0u;
    *(a3 + 24) = v49;
    *(a3 + 40) = v6;
    v49 = 0u;
    *v48 = 0;
    v50 = 0;
    v7 = v56;
    *(a3 + 96) = v54;
    v8 = v53;
    *(a3 + 64) = v52;
    *(a3 + 80) = v8;
    *(a3 + 48) = v51;
    *(a3 + 104) = v55;
    *(a3 + 120) = v7;
    v55 = 0u;
    *(a3 + 128) = v57;
    v9 = v60;
    *(a3 + 144) = v58;
    v57 = 0u;
    v56 = 0;
    v58 = 0;
    *(a3 + 152) = v59;
    *(a3 + 168) = v9;
    v59 = 0u;
    v10 = v61;
    v11 = v62;
    v12 = v65;
    *(a3 + 208) = v63;
    *(a3 + 176) = v10;
    *(a3 + 192) = v11;
    *(a3 + 216) = v64;
    *(a3 + 232) = v12;
    v64 = 0u;
    v60 = 0;
    v65 = 0;
    *(a3 + 240) = v66;
    v13 = v83;
    *(a3 + 256) = v67;
    v66 = 0u;
    v14 = v68;
    v15 = v70;
    *(a3 + 280) = v69;
    *(a3 + 296) = v15;
    *(a3 + 264) = v14;
    v16 = v71;
    v17 = v72;
    v18 = v74;
    *(a3 + 344) = v73;
    *(a3 + 360) = v18;
    *(a3 + 312) = v16;
    *(a3 + 328) = v17;
    v19 = v75;
    v20 = v76;
    v21 = v78;
    *(a3 + 408) = v77;
    *(a3 + 424) = v21;
    *(a3 + 376) = v19;
    *(a3 + 392) = v20;
    v22 = v79;
    v23 = v80;
    v24 = v82;
    *(a3 + 472) = v81;
    *(a3 + 488) = v24;
    *(a3 + 440) = v22;
    *(a3 + 456) = v23;
    *(a3 + 504) = v13;
    v67 = 0;
    v83 = 0;
    v25 = v85;
    *(a3 + 512) = v84;
    *(a3 + 528) = v25;
    *(a3 + 544) = v86;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  else
  {
    sub_1042AD4((a1 + 3952), a2, v47);
    if (sub_F69D6C(v47))
    {
      sub_49EA74(a3, v47);
    }

    else
    {
      sub_F6DDE0(v48, v47);
      *a3 = *v48;
      v26 = v50;
      *(a3 + 16) = *&v48[16];
      *&v48[8] = 0u;
      *(a3 + 24) = v49;
      *(a3 + 40) = v26;
      v49 = 0u;
      *v48 = 0;
      v50 = 0;
      v27 = v56;
      *(a3 + 96) = v54;
      v28 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v28;
      *(a3 + 48) = v51;
      *(a3 + 104) = v55;
      *(a3 + 120) = v27;
      v55 = 0u;
      *(a3 + 128) = v57;
      v29 = v60;
      *(a3 + 144) = v58;
      v57 = 0u;
      v56 = 0;
      v58 = 0;
      *(a3 + 152) = v59;
      *(a3 + 168) = v29;
      v59 = 0u;
      v30 = v61;
      v31 = v62;
      v32 = v65;
      *(a3 + 208) = v63;
      *(a3 + 176) = v30;
      *(a3 + 192) = v31;
      *(a3 + 216) = v64;
      *(a3 + 232) = v32;
      v64 = 0u;
      v60 = 0;
      v65 = 0;
      *(a3 + 240) = v66;
      v33 = v83;
      *(a3 + 256) = v67;
      v66 = 0u;
      v34 = v68;
      v35 = v70;
      *(a3 + 280) = v69;
      *(a3 + 296) = v35;
      *(a3 + 264) = v34;
      v36 = v71;
      v37 = v72;
      v38 = v74;
      *(a3 + 344) = v73;
      *(a3 + 360) = v38;
      *(a3 + 312) = v36;
      *(a3 + 328) = v37;
      v39 = v75;
      v40 = v76;
      v41 = v78;
      *(a3 + 408) = v77;
      *(a3 + 424) = v41;
      *(a3 + 376) = v39;
      *(a3 + 392) = v40;
      v42 = v79;
      v43 = v80;
      v44 = v82;
      *(a3 + 472) = v81;
      *(a3 + 488) = v44;
      *(a3 + 440) = v42;
      *(a3 + 456) = v43;
      *(a3 + 504) = v33;
      v67 = 0;
      v83 = 0;
      v45 = v85;
      *(a3 + 512) = v84;
      *(a3 + 528) = v45;
      *(a3 + 544) = v86;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
    }

    sub_4547F0(v47);
  }

  return sub_4547F0(v48);
}

void sub_1092D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4547F0(&a9);
  sub_4547F0(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t sub_1092DA0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_109CD74(*a2, (a1 + 24), 0);
  v5 = sub_109CD74(*a2, (a1 + 32), 1);
  if (v4 == -1 && HIDWORD(v4) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 == -1 && HIDWORD(v5) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = HIDWORD(v5);
  v9 = v5;
  v10 = exp(3.14159265 - HIDWORD(v4) * 6.28318531 / 4294967300.0);
  v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
  v12.i64[0] = v4;
  v12.i64[1] = v9;
  v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
  v16 = sin((v11 - v14) * 0.5);
  v17 = v16 * v16;
  v18 = cos(v11);
  v19 = v18 * cos(v14);
  v20 = sin(0.5 * v27);
  v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
  v22 = (v21 + v21) * 6372797.56 * 100.0;
  if (v22 >= 0.0)
  {
    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) + 1;
  }

  else
  {
    v23 = v22;
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v23 = (v24 >> 1);
LABEL_16:
  if (v23 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v22 >= 0.0)
  {
    if (v22 < 4.50359963e15)
    {
      v26 = (v22 + v22) + 1;
      return (v26 >> 1);
    }
  }

  else if (v22 > -4.50359963e15)
  {
    v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    return (v26 >> 1);
  }

  return v22;
}

uint64_t sub_1093070(unsigned int *a1, uint64_t *a2)
{
  v3 = sub_109CD74(*a2, a1 + 6, 0);
  v5 = a1[17];
  v4 = a1[18];
  if (v5 == -1 && v4 == -1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 == -1 && HIDWORD(v3) == 0xFFFFFFFF)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = HIDWORD(v3);
  v9 = v3;
  v10 = exp(3.14159265 - v4 * 6.28318531 / 4294967300.0);
  v11 = atan((v10 - 1.0 / v10) * 0.5) * 57.2957795 * 0.0174532925;
  v12.i64[0] = v5;
  v12.i64[1] = v9;
  v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
  v15 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v12), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v27 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0];
  v16 = sin((v11 - v14) * 0.5);
  v17 = v16 * v16;
  v18 = cos(v11);
  v19 = v18 * cos(v14);
  v20 = sin(0.5 * v27);
  v21 = atan2(sqrt(v20 * v20 * v19 + v17), sqrt(1.0 - (v20 * v20 * v19 + v17)));
  v22 = (v21 + v21) * 6372797.56 * 100.0;
  if (v22 >= 0.0)
  {
    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) + 1;
  }

  else
  {
    v23 = v22;
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_16;
    }

    v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v23 = (v24 >> 1);
LABEL_16:
  if (v23 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v22 >= 0.0)
  {
    if (v22 < 4.50359963e15)
    {
      v26 = (v22 + v22) + 1;
      return (v26 >> 1);
    }
  }

  else if (v22 > -4.50359963e15)
  {
    v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    return (v26 >> 1);
  }

  return v22;
}

uint64_t sub_1093324(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 4)
    {
      if (v1 != 7 || (*a1 == 1818584418 ? (v2 = *(a1 + 3) == 1701734764) : (v2 = 0), !v2))
      {
LABEL_28:
        exception = __cxa_allocate_exception(0x40uLL);
        std::operator+<char>();
        sub_30F54(" provided", &v10, &v11);
        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v11;
        }

        else
        {
          v7 = v11.__r_.__value_.__r.__words[0];
        }

        if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v11.__r_.__value_.__l.__size_;
        }

        v9 = sub_2D390(exception, v7, size);
      }

      return 2;
    }

    if (*a1 != 1701669236)
    {
      if (*a1 == 1953722211)
      {
        return 0;
      }

      v5 = a1;
      goto LABEL_26;
    }

    return 1;
  }

  if (*(a1 + 8) == 4 && **a1 == 1953722211)
  {
    return 0;
  }

  if (*(a1 + 8) == 4 && **a1 == 1701669236)
  {
    return 1;
  }

  if (*(a1 + 8) == 7 && **a1 == 1818584418 && *(*a1 + 3) == 1701734764)
  {
    return 2;
  }

  if (*(a1 + 8) != 4)
  {
    goto LABEL_28;
  }

  v5 = *a1;
LABEL_26:
  if (*v5 != 1701736302)
  {
    goto LABEL_28;
  }

  return 3;
}

void sub_1093520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1093578(uint64_t a1, void *a2)
{
  v16 = 17;
  strcpy(__p, "sort_by_path_cost");
  LOBYTE(v14[0]) = 0;
  v4 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v16 = 14;
  strcpy(__p, "add_debug_info");
  LOBYTE(v14[0]) = 0;
  v6 = sub_5FBE4(a2, __p, v14);
  if (v16 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = 0u;
  *(a1 + 1) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v16 = 21;
  *(a1 + 72) = 0;
  strcpy(__p, "max_num_scanned_nodes");
  if (sub_353010(a2, __p))
  {
    HIBYTE(v14[2]) = 21;
    strcpy(v14, "max_num_scanned_nodes");
    v8 = sub_353010(a2, v14);
    if (SHIBYTE(v14[2]) < 0)
    {
      operator delete(v14[0]);
      if ((v16 & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 80) = v8;
        v16 = 17;
        strcpy(__p, "max_num_via_nodes");
        if (sub_353010(a2, __p))
        {
          HIBYTE(v14[2]) = 17;
          strcpy(v14, "max_num_via_nodes");
          v9 = sub_353010(a2, v14);
          if (SHIBYTE(v14[2]) < 0)
          {
            operator delete(v14[0]);
            if ((v16 & 0x80000000) == 0)
            {
LABEL_11:
              *(a1 + 84) = v9;
              v16 = 17;
              strcpy(__p, "min_partial_level");
              *(a1 + 88) = sub_108B604(a2, __p);
              if (v16 < 0)
              {
                operator delete(*__p);
              }

              v16 = 18;
              strcpy(__p, "max_stretch_factor");
              v10 = sub_63D34(a2, __p);
              if (v16 < 0)
              {
                v11 = v10;
                operator delete(*__p);
                v10 = v11;
              }

              *(a1 + 96) = v10;
              v16 = 18;
              strcpy(__p, "check_cost_stretch");
              v12 = sub_5F9D0(a2, __p);
              if (v16 < 0)
              {
                v13 = v12;
                operator delete(*__p);
                v12 = v13;
              }

              *(a1 + 104) = v12;
              operator new();
            }
          }

          else if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v9 = -1;
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        operator delete(*__p);
        goto LABEL_11;
      }
    }

    else if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = -1;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*__p);
  goto LABEL_8;
}

void sub_10942E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, void **a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v33 = v31[19];
  if (v33)
  {
    v31[20] = v33;
    operator delete(v33);
    v34 = *a15;
    if (!*a15)
    {
LABEL_3:
      v35 = *a18;
      if (!*a18)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v34 = *a15;
    if (!*a15)
    {
      goto LABEL_3;
    }
  }

  v31[17] = v34;
  operator delete(v34);
  v35 = *a18;
  if (!*a18)
  {
LABEL_4:
    v36 = *(a14 + 24);
    if (!v36)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v31[8] = v35;
  operator delete(v35);
  v36 = *(a14 + 24);
  if (!v36)
  {
LABEL_5:
    v37 = *a14;
    if (!*a14)
    {
LABEL_12:
      _Unwind_Resume(exception_object);
    }

LABEL_11:
    v31[2] = v37;
    operator delete(v37);
    goto LABEL_12;
  }

LABEL_10:
  v31[5] = v36;
  operator delete(v36);
  v37 = *a14;
  if (!*a14)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_1094518(void *a1, uint64_t a2, void *a3)
{
  *a1 = a2;
  sub_1045744(a1 + 1, a2, 0);
  sub_104C6F0(a1 + 494, *a1, 0);
  a1[988] = -1;
  a1[987] = -1;
  v8[0] = 10;
  v8[1] = &v7;
  v8[2] = &v6;
  v8[3] = &v5;
  sub_1098AE8(a1 + 989, v8);
  sub_1093578((a1 + 1085), a3);
}

void sub_10945C8(_Unwind_Exception *a1)
{
  sub_360988(v1 + v2);
  sub_C66B9C(v1 + 3952);
  sub_C6579C(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_109460C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v199[0] = a8;
  v13 = -768;
  do
  {
    v15 = a1 + v13;
    if (*(a1 + v13 + 8696))
    {
      v16 = *(v15 + 8704);
      if (v16 >= 0x80)
      {
        v14 = (a1 + v13);
        operator delete(*(v15 + 8680));
        *(v15 + 8680) = &unk_2290750;
        v14[1090] = 0;
        v14[1086] = 0;
        v14[1088] = 0;
        v14[1087] = 0;
      }

      else if (v16)
      {
        *(v15 + 8696) = 0;
        memset(*(v15 + 8680), 128, v16 + 8);
        *(*(v15 + 8680) + v16) = -1;
        v17 = *(v15 + 8704);
        if (v17 == 7)
        {
          v18 = 6;
        }

        else
        {
          v18 = v17 - (v17 >> 3);
        }

        *(a1 + v13 + 8720) = v18 - *(v15 + 8696);
      }
    }

    v13 += 48;
  }

  while (v13);
  *(a1 + 8872) = -NAN;
  *(a1 + 8856) = -NAN;
  *(a1 + 8864) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 7896) = -1;
  *(a1 + 7904) = -1;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *a9 = 0;
  *(a1 + 8856) = *(sub_1011FD4(*a1 + 152, a7, a4, a5, a6, 0) + 1);
  if (*(a1 + 8856) != -1)
  {
    v19 = *(a1 + 8860);
    if (v19 != 0x7FFFFFFF && *(a1 + 8864) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v197 = 0x7FFFFFFF;
      v198 = 0x7FFFFFFF;
      v20 = *a5;
      if (*a5 != 0x7FFFFFFF)
      {
        v198 = *a5;
        v21 = v19 / 10;
        v22 = v19 % 10;
        if (v19 < 0)
        {
          v23 = -5;
        }

        else
        {
          v23 = 5;
        }

        v197 = v21 + v20 + (((103 * (v23 + v22)) >> 15) & 1) + ((103 * (v23 + v22)) >> 10);
      }

      sub_10954F8(&v194, *a1, a7, (a1 + 8712));
      v26 = *a2;
      v25 = a2[1];
      if (*a2 != v25)
      {
        v27 = v195;
        do
        {
          if (v27 < v196)
          {
            *v27 = *v26;
            *(v27 + 8) = 0;
            v27 += 16;
          }

          else
          {
            v28 = v194;
            v29 = v27 - v194;
            v30 = (v27 - v194) >> 4;
            v31 = v30 + 1;
            if ((v30 + 1) >> 60)
            {
              sub_1794();
            }

            v32 = v196 - v194;
            if ((v196 - v194) >> 3 > v31)
            {
              v31 = v32 >> 3;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF0)
            {
              v33 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              if (!(v33 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v34 = 16 * v30;
            *v34 = *v26;
            *(v34 + 8) = 0;
            v27 = 16 * v30 + 16;
            memcpy(0, v28, v29);
            v194 = 0;
            v196 = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          v195 = v27;
          v26 += 12;
        }

        while (v26 != v25);
      }

      v36 = *a3;
      v35 = a3[1];
      if (*a3 != v35)
      {
        v37 = v195;
        do
        {
          if (v37 < v196)
          {
            *v37 = *v36;
            *(v37 + 8) = 0;
            v37 += 16;
          }

          else
          {
            v38 = v194;
            v39 = v37 - v194;
            v40 = (v37 - v194) >> 4;
            v41 = v40 + 1;
            if ((v40 + 1) >> 60)
            {
              sub_1794();
            }

            v42 = v196 - v194;
            if ((v196 - v194) >> 3 > v41)
            {
              v41 = v42 >> 3;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFF0)
            {
              v43 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              if (!(v43 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v44 = 16 * v40;
            *v44 = *v36;
            *(v44 + 8) = 0;
            v37 = 16 * v40 + 16;
            memcpy(0, v38, v39);
            v194 = 0;
            v196 = 0;
            if (v38)
            {
              operator delete(v38);
            }
          }

          v195 = v37;
          v36 += 12;
        }

        while (v36 != v35);
      }

      v45 = *(a1 + 8856);
      v46 = *(a1 + 8688);
      v47 = *v46;
      if (v45 <= *v46)
      {
        v63 = *(v46 + 1);
        v50 = a6;
      }

      else
      {
        v48 = *(a1 + 8696);
        v49 = (v48 - v46) >> 4;
        v50 = a6;
        if (v49 >= 1)
        {
          if (v48 - v46 != 16)
          {
            do
            {
              v51 = (4 * v49) & 0xFFFFFFFFFFFFFFF0;
              _X14 = v46 + v51;
              __asm { PRFM            #0, [X14] }

              v58 = &v46[4 * (v49 >> 1)];
              _X13 = v58 + v51;
              __asm { PRFM            #0, [X13] }

              if (*v58 >= v45)
              {
                v61 = 0;
              }

              else
              {
                v61 = v49 >> 1;
              }

              v46 += 4 * v61;
              v49 -= v49 >> 1;
            }

            while (v49 > 1);
            v47 = *v46;
          }

          v46 += 4 * (v47 < v45);
        }

        if (v48 == v46)
        {
          v63 = *(v48 - 1);
        }

        else
        {
          v62 = *(v46 - 4);
          if (*v46 == v62)
          {
            v63 = *(v46 + 1);
          }

          else
          {
            v24 = *(v46 - 1);
            v63 = v24 + (v45 - v62) / (*v46 - v62) * (*(v46 + 1) - v24);
          }
        }
      }

      v193 = sub_108CF40((a1 + 8856), v63, v24);
      sub_1047EB8(a1 + 8, a2, a4, &v198, v50, &v193, 0x7FFFFFFF, v199, &v194, (a1 + 8736), *(a1 + 8760), v129, *(a1 + 8768));
      __p[0] = sub_10499B8((a1 + 8));
      __p[1] = v64;
      sub_32114((a1 + 7896), __p);
      sub_104E9E8(a1 + 3952, a3, a4, &v197, v50, &v193, 0x7FFFFFFF, v199, &v194, (a1 + 8736), *(a1 + 8760), v130, *(a1 + 8768));
      __p[0] = sub_104FF94((a1 + 3952));
      __p[1] = v65;
      sub_32114((a1 + 7896), __p);
      sub_1095D28(a1, a2, a3, a4, &v191);
      v66 = v191;
      v67 = v192;
      if (v191 != v192)
      {
        v68 = v191 + 8;
        while (1)
        {
          sub_1096798(a1, v68 - 8, __p);
          if (!sub_F6FDC8(__p))
          {
            break;
          }

LABEL_70:
          sub_4547F0(__p);
          v87 = v68 + 16;
          v68 += 24;
          if (v87 == v67)
          {
            v66 = v191;
            goto LABEL_105;
          }
        }

        if (*(a1 + 8681) != 1)
        {
LABEL_101:
          v128 = *(a9 + 8);
          if (v128 < *(a9 + 16))
          {
            v69 = *__p;
            *(v128 + 16) = v152;
            *(v128 + 24) = 0;
            *v128 = v69;
            __p[1] = 0;
            v152 = 0;
            __p[0] = 0;
            *(v128 + 32) = 0;
            *(v128 + 40) = 0;
            *(v128 + 24) = v153;
            *(v128 + 40) = v154;
            v153 = 0uLL;
            v154 = 0;
            v70 = v155;
            v71 = v157;
            v72 = v158;
            *(v128 + 64) = v156;
            *(v128 + 80) = v71;
            *(v128 + 48) = v70;
            *(v128 + 96) = v72;
            *(v128 + 104) = 0;
            *(v128 + 112) = 0;
            *(v128 + 120) = 0;
            *(v128 + 104) = v159;
            v159 = 0uLL;
            *(v128 + 120) = v160;
            *(v128 + 128) = 0;
            *(v128 + 136) = 0;
            *(v128 + 144) = 0;
            *(v128 + 128) = v161;
            *(v128 + 144) = v162;
            *(v128 + 152) = 0;
            v160 = 0;
            v161 = 0uLL;
            v162 = 0;
            *(v128 + 160) = 0;
            *(v128 + 168) = 0;
            *(v128 + 152) = v163;
            *(v128 + 168) = v164;
            v163 = 0uLL;
            v164 = 0;
            v73 = v166;
            v74 = v167;
            *(v128 + 176) = v165;
            *(v128 + 192) = v73;
            *(v128 + 208) = v74;
            *(v128 + 216) = 0;
            *(v128 + 224) = 0;
            *(v128 + 232) = 0;
            *(v128 + 216) = v168;
            v168 = 0uLL;
            *(v128 + 232) = v169;
            *(v128 + 240) = 0;
            *(v128 + 248) = 0;
            *(v128 + 256) = 0;
            *(v128 + 240) = v170;
            *(v128 + 256) = v171;
            v169 = 0;
            v170 = 0uLL;
            v171 = 0;
            v75 = v172;
            v76 = v174;
            *(v128 + 280) = v173;
            *(v128 + 296) = v76;
            *(v128 + 264) = v75;
            v77 = v175;
            v78 = v176;
            v79 = v178;
            *(v128 + 344) = v177;
            *(v128 + 360) = v79;
            *(v128 + 312) = v77;
            *(v128 + 328) = v78;
            v80 = v179;
            v81 = v180;
            v82 = v182;
            *(v128 + 408) = v181;
            *(v128 + 424) = v82;
            *(v128 + 376) = v80;
            *(v128 + 392) = v81;
            v83 = v183;
            v84 = v184;
            v85 = v186;
            *(v128 + 472) = v185;
            *(v128 + 488) = v85;
            *(v128 + 440) = v83;
            *(v128 + 456) = v84;
            *(v128 + 504) = v187;
            *(v128 + 512) = v188;
            v187 = 0;
            v188 = 0uLL;
            *(v128 + 528) = 0;
            *(v128 + 544) = 0;
            *(v128 + 536) = 0;
            *(v128 + 528) = v189;
            *(v128 + 544) = v190;
            v189 = 0uLL;
            v190 = 0;
            v86 = v128 + 552;
          }

          else
          {
            v86 = sub_D59894(a9, __p);
          }

          *(a9 + 8) = v86;
          goto LABEL_70;
        }

        v88 = sub_109CD74(**a1, v68 - 2, 0) >> 32;
        v89 = sub_109CD74(**a1, v68, 0) >> 32;
        sub_D7B0(v140);
        *(&v141 + *(v140[0] - 24)) = 9;
        v90 = sub_4A5C(&v141, "ViaPath: {", 12);
        v91 = sub_4A5C(v90, "  cost_function: ", 20);
        v92 = *(a4 + 31);
        if (v92 >= 0)
        {
          v93 = a4 + 8;
        }

        else
        {
          v93 = *(a4 + 8);
        }

        if (v92 >= 0)
        {
          v94 = *(a4 + 31);
        }

        else
        {
          v94 = *(a4 + 16);
        }

        v95 = sub_4A5C(v91, v93, v94);
        v96 = sub_4A5C(v95, ",", 2);
        v97 = sub_4A5C(v96, "  via_node: ", 15);
        v98 = sub_444030(v97, *(v68 - 4));
        v99 = sub_4A5C(v98, ",", 2);
        v100 = sub_4A5C(v99, "  path_cost: ", 16);
        if (v68[3] == -1 || v68[4] == 0x7FFFFFFF || (v101 = v68[5], v101 == -1) || (v102 = v68[6], v102 == 0x7FFFFFFF))
        {
          v103 = 0x7FFFFFFF00000000;
          v104 = 0xFFFFFFFFLL;
        }

        else
        {
          v104 = v101 + v68[3];
          v103 = (v102 + v68[4]) << 32;
        }

        v105 = sub_705F0(v100, v104 | v103);
        v106 = sub_4A5C(v105, ",", 2);
        v107 = sub_4A5C(v106, "  path_length_lb: ", 21);
        v108 = sub_70FBC(v107, *(a1 + 8864));
        v109 = sub_4A5C(v108, ",", 2);
        v110 = sub_4A5C(v109, "  plateau: {", 14);
        v111 = sub_4A5C(v110, "    length_lb: ", 18);
        v112 = sub_1092DA0((v68 - 8), *a1);
        v113 = sub_70FBC(v111, v112);
        v114 = sub_4A5C(v113, ",", 2);
        sub_4A5C(v114, "    first_node_coord:", 24);
        v115 = exp(v88 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v115 + -1.0 / v115) * 0.5);
        v116 = std::ostream::operator<<();
        sub_4A5C(v116, ",", 1);
        v117 = std::ostream::operator<<();
        v118 = sub_4A5C(v117, ",", 2);
        sub_4A5C(v118, "    last_node_coord: ", 24);
        v119 = exp(v89 * -6.28318531 / 4294967300.0 + 3.14159265);
        atan((v119 + -1.0 / v119) * 0.5);
        v120 = std::ostream::operator<<();
        sub_4A5C(v120, ",", 1);
        v121 = std::ostream::operator<<();
        v122 = sub_4A5C(v121, "", 1);
        v123 = sub_4A5C(v122, "  }", 3);
        sub_4A5C(v123, "}", 1);
        if ((v150 & 0x10) != 0)
        {
          v125 = v149;
          v126 = &v145;
          if (v149 < v146)
          {
            v149 = v146;
            v125 = v146;
            v126 = &v145;
          }
        }

        else
        {
          if ((v150 & 8) == 0)
          {
            v124 = 0;
            HIBYTE(v139) = 0;
LABEL_96:
            *(&__dst + v124) = 0;
            if (SHIBYTE(v152) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = __dst;
            v152 = v139;
            v140[0] = v133;
            *(v140 + *(v133 - 24)) = v132;
            v141 = v131;
            if (v148 < 0)
            {
              operator delete(v147);
            }

            std::locale::~locale(&v143);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            goto LABEL_101;
          }

          v125 = v144[2];
          v126 = v144;
        }

        v127 = *v126;
        v124 = v125 - *v126;
        if (v124 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

        if (v124 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v139) = v125 - *v126;
        if (v124)
        {
          memmove(&__dst, v127, v124);
        }

        goto LABEL_96;
      }

LABEL_105:
      if (v66)
      {
        v192 = v66;
        operator delete(v66);
      }

      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }
    }
  }
}

void sub_10953D0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  if (!v4)
  {
    sub_487EC4(v1);
    _Unwind_Resume(a1);
  }

  *(v2 - 176) = v4;
  operator delete(v4);
  sub_487EC4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10954F8(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (*a4 != a4[1])
  {
    v5 = a3;
    result = sub_F69D08(a3);
    if (result)
    {
      if (*(a2 + 1472) == 1)
      {
        result = sub_6EECC();
        if (result)
        {
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v7 = *(a2 + 224);
          v8 = sub_2FEF94((a4[1] - *a4) >> 2);
          v9 = *(v7 + 3872);
          if (v9 != -1 || (v9 = 1, (v76 = sub_101E790(v7, 1u, 1)) == 0))
          {
LABEL_6:
            if (v9 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v9;
            }

            v106 = 256;
            v88 = v10;
            if (v10 < 2)
            {
              return sub_F69D08(v5);
            }

            v11 = 0;
            v87 = v7 + 16;
            v96 = (v7 + 688);
            v93 = (v7 + 736);
            v94 = (v7 + 712);
            v92 = (v7 + 760);
            while (1)
            {
              if (!*(&v106 + v11))
              {
                v12 = 0;
                v13 = 1;
                goto LABEL_19;
              }

              result = sub_F69D08(v5);
              v12 = result - 1;
              if (result - 1 >= 0)
              {
                break;
              }

LABEL_14:
              if (++v11 == 2)
              {
                return result;
              }
            }

            v13 = -1;
LABEL_19:
            v97 = v13;
            v14 = 1;
            while (1)
            {
              result = sub_F69D08(v5);
              if (v12 >= result)
              {
                goto LABEL_14;
              }

              v100 = *(*a4 + 4 * v14);
              if (v100)
              {
                break;
              }

LABEL_113:
              if (++v14 == v88 || v12 < 0)
              {
                goto LABEL_14;
              }
            }

            v15 = *(sub_F6F53C(v5, v12) + 32);
            if ((v15 & 0x4000000000000000) == 0 && v15 < 0)
            {
              v17 = 0x40000000;
            }

            else
            {
              v17 = 0;
            }

            v18 = HIDWORD(v15) & 0xFFFFFFF | (v15 >> 33) & 0x10000000 | ((HIDWORD(v15) & 0x40000000u) >> 1) | v17;
            LODWORD(v107) = v14;
            v19 = sub_101F854(v7, v15 | ((v18 & 0xFFFFFFF) << 32), (v18 >> 28) & 1, &v107);
            v103 = 0;
            v20 = HIDWORD(v19);
            v102 = v14;
            v95 = v14 - 1;
            v21 = v19;
LABEL_29:
            v98 = v20;
            v99 = v21;
            while (1)
            {
              result = sub_F69D08(v5);
              if (v12 < 0)
              {
                v14 = v102;
                goto LABEL_113;
              }

              v14 = v102;
              if (v12 >= result || v103 >= v100)
              {
                goto LABEL_113;
              }

              v22 = sub_F6F53C(v5, v12);
              v23 = v11;
              v24 = v5;
              v25 = v4;
              v26 = *(v22 + 32);
              v27 = HIDWORD(v26) & 0xFFFFFFF;
              v28 = HIDWORD(v26) & 0x40000000;
              if (v26 < 0 && v28 == 0)
              {
                v30 = 0x40000000;
              }

              else
              {
                v30 = 0;
              }

              v104 = (v26 >> 33) & 0x10000000 | (*(v22 + 80) >> 25) & 0x80000000 | (v28 >> 1) | v30 | v27;
              v101 = v26;
              v109 = 1;
              v110[0] = v26;
              v107 = &v109;
              v108 = v110;
              v31 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v31;
              if (!*v7)
              {
                goto LABEL_94;
              }

              v32 = v7 + 688;
              if (*v96 != v26)
              {
                v32 = v7 + 712;
                if (*v94 != v26)
                {
                  v32 = v7 + 736;
                  if (*v93 != v26)
                  {
                    v32 = v7 + 760;
                    if (*v92 != v26)
                    {
                      break;
                    }
                  }
                }
              }

              ++*(v7 + 3864);
              *(v32 + 8) = v31;
              v33 = *(v32 + 16);
              if (v33)
              {
                goto LABEL_45;
              }

LABEL_94:
              v21 = 0;
              LODWORD(v20) = -1;
LABEL_95:
              v11 = v23;
              v12 += v97;
              v4 = v25;
              v5 = v24;
              if (v21 != v99 || v20 != v98)
              {
                v65 = v101 | (v104 << 32);
                v67 = v25[1];
                v66 = v25[2];
                if (v67 >= v66)
                {
                  v69 = *v25;
                  v70 = v67 - *v25;
                  v71 = v70 >> 4;
                  v72 = (v70 >> 4) + 1;
                  if (v72 >> 60)
                  {
                    sub_1794();
                  }

                  v73 = v66 - v69;
                  if (v73 >> 3 > v72)
                  {
                    v72 = v73 >> 3;
                  }

                  if (v73 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v74 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v74 = v72;
                  }

                  if (v74)
                  {
                    if (!(v74 >> 60))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v75 = 16 * v71;
                  *v75 = v65;
                  *(v75 + 8) = v102;
                  v105 = 16 * v71 + 16;
                  memcpy(0, v69, v70);
                  v4 = v25;
                  *v25 = 0;
                  v25[2] = 0;
                  if (v69)
                  {
                    operator delete(v69);
                  }

                  v5 = v24;
                  v11 = v23;
                  v68 = v105;
                }

                else
                {
                  *v67 = v65;
                  *(v67 + 8) = v102;
                  v68 = v67 + 16;
                }

                v4[1] = v68;
                ++v103;
                goto LABEL_29;
              }
            }

            v51 = *(v7 + 744);
            v52 = *(v7 + 720);
            v53 = *(v7 + 696);
            v90 = *(v7 + 768);
            v33 = sub_2D52A4(*v7, 7, v26, 1);
            if (v53 >= v31)
            {
              v54 = v31;
            }

            else
            {
              v54 = v53;
            }

            v55 = 28;
            if (v53 >= v31)
            {
              v55 = 0;
            }

            if (v52 < v54)
            {
              v54 = v52;
              v55 = 29;
            }

            if (v51 < v54)
            {
              v55 = 30;
              v54 = v51;
            }

            v56 = v90 >= v54;
            v57 = 31;
            if (v56)
            {
              v57 = v55;
            }

            v58 = v87 + 24 * v57;
            *v58 = v110[0];
            *(v58 + 8) = *(v7 + 3856);
            *(v58 + 16) = v33;
            if (v33)
            {
LABEL_45:
              v34 = (v33 + *v33);
              v35 = (v34 - *v34);
              if (*v35 < 5u)
              {
                goto LABEL_54;
              }

              v36 = v35[2];
              if (!v36)
              {
                goto LABEL_54;
              }

              v37 = sub_101F5B8((v34 + v36 + *(v34 + v36)), v27);
              v38 = (v34 - *v34);
              if (*v38 < 7u)
              {
                v39 = 0;
              }

              else
              {
                v39 = v38[3];
                if (v39)
                {
                  v39 = (v39 + v34 + *(v39 + v34));
                }
              }

              v40 = sub_101F704(v39, *(v37 + (~(v104 >> 27) & 2)));
              v41 = (v40 - *v40);
              if (*v41 >= 5u && (v42 = v41[2]) != 0)
              {
                v43 = (v40 + v42 + *(v40 + v42));
              }

              else
              {
LABEL_54:
                v43 = 0;
              }

              v44 = sub_C54264(v43, v95);
              v21 = *v44;
              LODWORD(v20) = v44[1];
              if (*(v7 + 3876) != 1)
              {
                goto LABEL_95;
              }

              v109 = 1;
              v110[0] = v21;
              v107 = &v109;
              v108 = v110;
              v45 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v45;
              if (!*v7)
              {
                goto LABEL_94;
              }

              v46 = v7 + 688;
              if (*v96 == v21 || (v46 = v7 + 712, *v94 == v21) || (v46 = v7 + 736, *v93 == v21) || (v46 = v7 + 760, *v92 == v21))
              {
                ++*(v7 + 3864);
                *(v46 + 8) = v45;
                v47 = *(v46 + 16);
                if (v47)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v91 = *(v7 + 744);
                v59 = *(v7 + 720);
                v60 = *(v7 + 696);
                v86 = *(v7 + 768);
                v47 = sub_2D52A4(*v7, 7, v21, 1);
                if (v60 >= v45)
                {
                  v61 = v45;
                }

                else
                {
                  v61 = v60;
                }

                v62 = 28;
                if (v60 >= v45)
                {
                  v62 = 0;
                }

                if (v59 < v61)
                {
                  v61 = v59;
                  v62 = 29;
                }

                if (v91 < v61)
                {
                  v62 = 30;
                  v61 = v91;
                }

                v56 = v86 >= v61;
                v63 = 31;
                if (v56)
                {
                  v63 = v62;
                }

                v64 = v87 + 24 * v63;
                *v64 = v110[0];
                *(v64 + 8) = *(v7 + 3856);
                *(v64 + 16) = v47;
                if (v47)
                {
LABEL_62:
                  v48 = (v47 + *v47);
                  v49 = (v48 - *v48);
                  if (*v49 >= 9u)
                  {
                    v50 = v49[4];
                    if (v50)
                    {
                      if (*(v48 + v50 + *(v48 + v50)))
                      {
                        goto LABEL_95;
                      }
                    }
                  }

                  goto LABEL_94;
                }
              }
            }

            sub_101E964(&v107);
            goto LABEL_94;
          }

          v77 = &v76[-*v76];
          v78 = *v77;
          if (v78 < 0xB)
          {
            if (v78 < 9)
            {
LABEL_127:
              v9 = 1;
              goto LABEL_6;
            }
          }

          else if (*(v77 + 5))
          {
            v79 = &v76[*(v77 + 5) + *&v76[*(v77 + 5)]];
            v80 = &v79[-*v79];
            if (*v80 >= 5u && (v81 = *(v80 + 2)) != 0)
            {
              v9 = v79[v81];
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_6;
          }

          v82 = *(v77 + 4);
          if (v82)
          {
            v83 = sub_101E640(&v76[v82 + *&v76[v82]], 0);
            v84 = (v83 - *v83);
            if (*v84 >= 5u && (v85 = v84[2]) != 0)
            {
              v9 = *(v83 + v85);
            }

            else
            {
              v9 = 0;
            }

            *(v7 + 3872) = v9;
            goto LABEL_6;
          }

          goto LABEL_127;
        }
      }
    }
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

void sub_1095CDC(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1095D28(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_101B3B4(a2, v91);
  sub_101B3B4(a3, v90);
  sub_1031BD0(a1 + 3952, &v87);
  v8 = v88;
  v9 = v89;
  if (v88 != v89)
  {
    v20 = v87;
    do
    {
      v24 = *v20 + 80 * *v8;
      if (sub_1049940(a1 + 8, v24))
      {
        sub_109CE44(a1 + 7912, v24, v92);
        v25 = v93;
        *(v93 + 8) = *v24;
        *(v25 + 60) = *(v24 + 8);
        if ((*(v24 + 72) & 0x80000000) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(v24 + 32);
        }

        *(v25 + 24) = v21;
        v22 = v90[0] + 12 * (*(v24 + 72) & 0x7FFFFFFF);
        v23 = *(v22 + 2);
        *(v25 + 88) = *v22;
        *(v25 + 96) = v23;
      }

      ++v8;
    }

    while (v8 != v9);
  }

  v80 = a5;
  sub_1031BD0(a1 + 8, &v84);
  v10 = v85;
  v11 = v86;
  if (v85 != v86)
  {
    v26 = v84;
    do
    {
      v66 = *v26 + 80 * *v10;
      sub_1096B1C(a1 + 7912, v66, v92);
      if (v92[0])
      {
        v67 = v93;
        *(v93 + 52) = *(v66 + 8);
        v68 = (*(v66 + 72) & 0x80000000) != 0 ? 0 : *(v66 + 24);
        *(v67 + 16) = v68;
        *(v67 + 48) = *(v66 + 16);
        v69 = v91[0] + 12 * (*(v66 + 72) & 0x7FFFFFFF);
        v70 = *(v69 + 2);
        *(v67 + 76) = *v69;
        *(v67 + 84) = v70;
        sub_1096C88(a1, (v67 + 8));
        if (*(v67 + 52) != -1 && *(v67 + 56) != 0x7FFFFFFF)
        {
          v71 = *(v67 + 60);
          if (v71 != -1)
          {
            v72 = *(v67 + 64);
            if (v72 != 0x7FFFFFFF)
            {
              v73 = (v72 + *(v67 + 56));
              if (v73 != 0x7FFFFFFF)
              {
                v74 = (v71 + *(v67 + 52));
                if (v74 != -1)
                {
                  if (*(a1 + 8872) == -1 || (v75 = *(a1 + 8876), v75 == 0x7FFFFFFF) || v73 < v75)
                  {
                    *(a1 + 8872) = v74 | (v73 << 32);
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v12 = a1 + 7912;
  v13 = (a1 + 8680);
  v14 = *(a1 + 7912);
  v15 = *(a1 + 7920);
  if (*v14 <= -2)
  {
    v16 = *(a1 + 7912);
    do
    {
      v17 = (__clz(__rbit64(((*v16 >> 7) & ~*v16 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v16 = (v16 + v17);
      v15 += 104 * v17;
    }

    while (*v16 < -1);
    v18 = &v14[*(a1 + 7936)];
    v19 = (a1 + 7912);
    if (v16 == v18)
    {
      goto LABEL_80;
    }

    goto LABEL_17;
  }

  v16 = *(a1 + 7912);
  v27 = *(a1 + 7936);
  v18 = &v14[v27];
  v19 = (a1 + 7912);
  if (v14 != &v14[v27])
  {
LABEL_17:
    __p = 0;
    v83 = 0;
    while (1)
    {
      v28 = 0xAAAAAAAAAAAAAAABLL * (&v83[-__p] >> 5);
      if (v28 >= *(a1 + 8764) && *v13 != 1)
      {
        goto LABEL_97;
      }

      v81 = &v83[-__p];
      v29 = v15 + 8;
      if (!*(v15 + 2))
      {
        goto LABEL_34;
      }

      if (*(v15 + 13) == -1)
      {
        goto LABEL_34;
      }

      if (*(v15 + 14) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (*(v15 + 15) == -1)
      {
        goto LABEL_34;
      }

      if (*(v15 + 16) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (*(v15 + 17) == -1)
      {
        goto LABEL_34;
      }

      if (*(v15 + 18) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      sub_1096B1C(a1 + 7912, v15 + 6, v92);
      if (v92[0])
      {
        if (*v29 == *(v93 + 16) && *(v15 + 3) == *(v93 + 20))
        {
          goto LABEL_34;
        }
      }

      if (*(v15 + 13) == -1)
      {
        goto LABEL_34;
      }

      if (*(v15 + 14) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      v30 = *(v15 + 15);
      if (v30 == -1)
      {
        goto LABEL_34;
      }

      v31 = *(v15 + 16);
      if (v31 == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      v38 = v31 + *(v15 + 14);
      if (v38 == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      v39 = v30 + *(v15 + 13);
      if (v39 == -1)
      {
        goto LABEL_34;
      }

      v40 = *(a1 + 8776);
      v41 = v40 * *(a1 + 8876);
      if (v41 >= 0.0)
      {
        HIDWORD(v42) = 1127219200;
        if (v41 >= 4.50359963e15)
        {
          goto LABEL_55;
        }

        v43 = (v41 + v41) + 1;
      }

      else
      {
        HIDWORD(v42) = -1020264448;
        if (v41 <= -4.50359963e15)
        {
          goto LABEL_55;
        }

        v43 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
      }

      v41 = (v43 >> 1);
LABEL_55:
      if (v38 <= v41)
      {
        if (*(a1 + 8784) != 1 || (LODWORD(v42) = *(a1 + 8856), v40 * v42 >= v39))
        {
          v44 = *a1;
          v45 = **a1;
          if (*(v45 + 7774) != 1)
          {
            goto LABEL_65;
          }

          v77 = **a1;
          v78 = *(v15 + 3);
          v76 = *(v15 + 2);
          v46 = sub_2AF704(v45 + 3896, v76, 1);
          if (v46)
          {
            v47 = &v46[-*v46];
            if (*v47 >= 5u)
            {
              v48 = *(v47 + 2);
              if (v48)
              {
                if (*&v46[v48 + *&v46[v48]] > (v78 & 0xFFFFFFFu) && sub_2B817C(v77, v76 & 0xF0000000FFFFFFFFLL | ((v78 & 0xFFFFFFF) << 32)))
                {
                  v44 = *a1;
LABEL_65:
                  v49 = sub_104A508(v44, v15 + 2, 0x3B9ACA00u, a4);
                  if (v49 != -1 && HIDWORD(v49) != 0x7FFFFFFF)
                  {
                    v50 = *(v15 + 18) + HIDWORD(v49);
                    *(v15 + 17) += v49;
                    *(v15 + 18) = v50;
                    if (sub_1096E00(a1, v15 + 2))
                    {
                      if (sub_1096F14(a1, (v15 + 8)))
                      {
                        v51 = v28 + 1;
                        if (v28 + 1 > 0x2AAAAAAAAAAAAAALL)
                        {
                          sub_1794();
                        }

                        if (0x5555555555555556 * (-__p >> 5) > v51)
                        {
                          v51 = 0x5555555555555556 * (-__p >> 5);
                        }

                        if (0xAAAAAAAAAAAAAAABLL * (-__p >> 5) >= 0x155555555555555)
                        {
                          v51 = 0x2AAAAAAAAAAAAAALL;
                        }

                        if (v51)
                        {
                          if (v51 <= 0x2AAAAAAAAAAAAAALL)
                          {
                            operator new();
                          }

                          sub_1808();
                        }

                        v52 = (32 * (&v83[-__p] >> 5));
                        v53 = *(v15 + 24);
                        *v52 = *v29;
                        v52[1] = v53;
                        v54 = *(v15 + 40);
                        v55 = *(v15 + 56);
                        v56 = *(v15 + 88);
                        v52[4] = *(v15 + 72);
                        v52[5] = v56;
                        v52[2] = v54;
                        v52[3] = v55;
                        v83 = (v52 + 6);
                        memcpy((96 * v28 + 96 * (v81 / -96)), __p, v81);
                        if (__p)
                        {
                          operator delete(__p);
                        }

                        __p = 96 * v28 + 96 * (v81 / -96);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      v32 = *(v16 + 1);
      v16 = (v16 + 1);
      v15 += 104;
      if (v32 <= -2)
      {
        do
        {
          v33 = (__clz(__rbit64(((*v16 >> 7) & ~*v16 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v16 = (v16 + v33);
          v15 += 104 * v33;
        }

        while (*v16 < -1);
      }

      if (v16 == v18)
      {
        v34 = v19 + 6;
        if (v19 + 6 == v13)
        {
          goto LABEL_86;
        }

        while (1)
        {
          v35 = v34;
          v36 = v19[6];
          v15 = v19[7];
          v16 = v36;
          if (*v36 <= -2)
          {
            do
            {
              v37 = (__clz(__rbit64(((*v16 >> 7) & ~*v16 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
              v16 = (v16 + v37);
              v15 += 104 * v37;
            }

            while (*v16 < -1);
          }

          v18 = &v19[9][v36];
          if (v16 != v18)
          {
            break;
          }

          v34 = v35 + 6;
          v19 = v35;
          if (v35 + 6 == v13)
          {
            goto LABEL_86;
          }
        }

        v19 = v35;
        if (!v35)
        {
          goto LABEL_86;
        }
      }

      else if (!v19)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_80:
  v19 = (a1 + 7960);
  v57 = 48;
  v58 = a1 + 7912;
  do
  {
    v15 = *(v58 + 56);
    v16 = *v19;
    if (**v19 <= -2)
    {
      do
      {
        v59 = (__clz(__rbit64(((*v16 >> 7) & ~*v16 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v16 = (v16 + v59);
        v15 += 104 * v59;
      }

      while (*v16 < -1);
    }

    v18 = &(*v19)[*(v58 + 72)];
    if (v16 != v18)
    {
      goto LABEL_17;
    }

    v58 = v12 + v57;
    v57 += 48;
    v19 = (v12 + v57);
  }

  while (v57 != 768);
  __p = 0;
  v83 = 0;
LABEL_86:
  if (*v13 == 1)
  {
    v60 = v83;
    v61 = 0xAAAAAAAAAAAAAAABLL * (&v83[-__p] >> 5);
    v62 = 126 - 2 * __clz(v61);
    v63 = &v83[-__p];
    if (v83 == __p)
    {
      v64 = 0;
    }

    else
    {
      v64 = v62;
    }

    sub_1099FE8(__p, v83, v92, v64, 1);
    v65 = *(a1 + 8764);
    if (v61 > v65)
    {
      v63 = 96 * v65;
      v60 = (96 * v65 + __p);
    }

    *v80 = 0;
    v80[1] = 0;
    v80[2] = 0;
    if (v60 != __p)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v63 >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
LABEL_97:
    *v80 = __p;
    v80[1] = v83;
    v80[2] = 0;
  }

  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }
}

void sub_10966C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v32 = a29;
    if (!a29)
    {
LABEL_3:
      v33 = *(v30 - 168);
      if (!v33)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v32 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v32);
  v33 = *(v30 - 168);
  if (!v33)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v30 - 160) = v33;
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1096798@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1048C8C((a1 + 8), a2, v48);
  if (sub_F6FDC8(v48))
  {
    *a3 = *v48;
    v6 = v50;
    *(a3 + 16) = *&v48[16];
    *&v48[8] = 0u;
    *(a3 + 24) = v49;
    *(a3 + 40) = v6;
    v49 = 0u;
    *v48 = 0;
    v50 = 0;
    v7 = v56;
    *(a3 + 96) = v54;
    v8 = v53;
    *(a3 + 64) = v52;
    *(a3 + 80) = v8;
    *(a3 + 48) = v51;
    *(a3 + 104) = v55;
    *(a3 + 120) = v7;
    v55 = 0u;
    *(a3 + 128) = v57;
    v9 = v60;
    *(a3 + 144) = v58;
    v57 = 0u;
    v56 = 0;
    v58 = 0;
    *(a3 + 152) = v59;
    *(a3 + 168) = v9;
    v59 = 0u;
    v10 = v61;
    v11 = v62;
    v12 = v65;
    *(a3 + 208) = v63;
    *(a3 + 176) = v10;
    *(a3 + 192) = v11;
    *(a3 + 216) = v64;
    *(a3 + 232) = v12;
    v64 = 0u;
    v60 = 0;
    v65 = 0;
    *(a3 + 240) = v66;
    v13 = v83;
    *(a3 + 256) = v67;
    v66 = 0u;
    v14 = v68;
    v15 = v70;
    *(a3 + 280) = v69;
    *(a3 + 296) = v15;
    *(a3 + 264) = v14;
    v16 = v71;
    v17 = v72;
    v18 = v74;
    *(a3 + 344) = v73;
    *(a3 + 360) = v18;
    *(a3 + 312) = v16;
    *(a3 + 328) = v17;
    v19 = v75;
    v20 = v76;
    v21 = v78;
    *(a3 + 408) = v77;
    *(a3 + 424) = v21;
    *(a3 + 376) = v19;
    *(a3 + 392) = v20;
    v22 = v79;
    v23 = v80;
    v24 = v82;
    *(a3 + 472) = v81;
    *(a3 + 488) = v24;
    *(a3 + 440) = v22;
    *(a3 + 456) = v23;
    *(a3 + 504) = v13;
    v67 = 0;
    v83 = 0;
    v25 = v85;
    *(a3 + 512) = v84;
    *(a3 + 528) = v25;
    *(a3 + 544) = v86;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  else
  {
    sub_104F580((a1 + 3952), a2, v47);
    if (sub_F6FDC8(v47))
    {
      sub_49F780(a3, v47);
    }

    else
    {
      sub_F708E4(v48, v47);
      *a3 = *v48;
      v26 = v50;
      *(a3 + 16) = *&v48[16];
      *&v48[8] = 0u;
      *(a3 + 24) = v49;
      *(a3 + 40) = v26;
      v49 = 0u;
      *v48 = 0;
      v50 = 0;
      v27 = v56;
      *(a3 + 96) = v54;
      v28 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v28;
      *(a3 + 48) = v51;
      *(a3 + 104) = v55;
      *(a3 + 120) = v27;
      v55 = 0u;
      *(a3 + 128) = v57;
      v29 = v60;
      *(a3 + 144) = v58;
      v57 = 0u;
      v56 = 0;
      v58 = 0;
      *(a3 + 152) = v59;
      *(a3 + 168) = v29;
      v59 = 0u;
      v30 = v61;
      v31 = v62;
      v32 = v65;
      *(a3 + 208) = v63;
      *(a3 + 176) = v30;
      *(a3 + 192) = v31;
      *(a3 + 216) = v64;
      *(a3 + 232) = v32;
      v64 = 0u;
      v60 = 0;
      v65 = 0;
      *(a3 + 240) = v66;
      v33 = v83;
      *(a3 + 256) = v67;
      v66 = 0u;
      v34 = v68;
      v35 = v70;
      *(a3 + 280) = v69;
      *(a3 + 296) = v35;
      *(a3 + 264) = v34;
      v36 = v71;
      v37 = v72;
      v38 = v74;
      *(a3 + 344) = v73;
      *(a3 + 360) = v38;
      *(a3 + 312) = v36;
      *(a3 + 328) = v37;
      v39 = v75;
      v40 = v76;
      v41 = v78;
      *(a3 + 408) = v77;
      *(a3 + 424) = v41;
      *(a3 + 376) = v39;
      *(a3 + 392) = v40;
      v42 = v79;
      v43 = v80;
      v44 = v82;
      *(a3 + 472) = v81;
      *(a3 + 488) = v44;
      *(a3 + 440) = v42;
      *(a3 + 456) = v43;
      *(a3 + 504) = v33;
      v67 = 0;
      v83 = 0;
      v45 = v85;
      *(a3 + 512) = v84;
      *(a3 + 528) = v45;
      *(a3 + 544) = v86;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
    }

    sub_4547F0(v47);
  }

  return sub_4547F0(v48);
}

void sub_1096AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4547F0(&a9);
  sub_4547F0(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t sub_1096B1C@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = (v10[1] + 104 * v18);
    if (*v19 == v4 && *(v19 + 1) == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if (v12 == v18)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v13 + v18);
  a3[3] = v19;
  a3[4] = (v13 + v12);
  return result;
}

uint64_t sub_1096C88(uint64_t result, uint64_t *a2)
{
  *(a2 + 60) = 0;
  v3 = *a2;
  a2[3] = *a2;
  a2[4] = v3;
  v4 = 0x7FFFFFFF;
  v5 = *(a2 + 11) == -1 || *(a2 + 12) == 0x7FFFFFFF;
  if (v5 || (v6 = *(a2 + 13), v6 == -1) || (v7 = *(a2 + 14), v7 == 0x7FFFFFFF))
  {
    v8 = -1;
    v16 = a2[1];
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    v8 = v6 + *(a2 + 11);
    v4 = v7 + *(a2 + 12);
    v16 = a2[1];
    if (!v16)
    {
      return result;
    }
  }

  result = sub_1097608(result + 7912, &v16, &v14);
  if (v14)
  {
    v9 = v15;
    v10 = v15[13];
    if (v10 == -1)
    {
      v12 = 0x7FFFFFFF;
      v11 = -1;
    }

    else if (v15[14] == 0x7FFFFFFF)
    {
      v11 = -1;
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v11 = v15[15];
      v12 = 0x7FFFFFFF;
      if (v11 != -1)
      {
        v13 = v15[16];
        if (v13 == 0x7FFFFFFF)
        {
          v11 = -1;
        }

        else
        {
          v10 = v15[13];
          v11 += v10;
          v12 = v13 + v15[14];
        }
      }
    }

    if (v12 != 0x7FFFFFFF && v11 != -1 && v11 == v8 && v12 == v4)
    {
      *(a2 + 60) = (*(a2 + 11) - v10 + v15[17]) | ((*(a2 + 12) - v15[14] + v15[18]) << 32);
      a2[3] = *(v9 + 4);
    }
  }

  return result;
}

BOOL sub_1096E00(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 8832) == *(a1 + 8840))
  {
    v4 = a2[12];
    v5 = a2[16];
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    if (*(a1 + 8800) == 1)
    {
      v7 = *(a1 + 8876);
    }

    v12 = v7 / 10.0;
    return v5 >= sub_FB43D4(&v12, (a1 + 8808));
  }

  else
  {
    if (*(a1 + 8800) == 1)
    {
      v3 = *(a1 + 8864);
    }

    else
    {
      v9 = a2;
      v10 = sub_1093070(a2, *a1);
      a2 = v9;
      v3 = v10;
    }

    v11 = sub_1092DA0(a2, *a1);
    v12 = v3 / 100.0;
    return v11 >= sub_108E97C(&v12, (a1 + 8832));
  }
}

uint64_t sub_1096F14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8804);
  if (v4 == 2)
  {
    v7 = *(a2 + 44);
    v6 = *(a2 + 48);
    if (v7 != -1 && v6 != 0x7FFFFFFF && *(a2 + 52) != -1)
    {
      v10 = *(a2 + 56);
      if (v10 != 0x7FFFFFFF)
      {
        v6 = *(a2 + 48);
        if (v10 + v6 < *(a1 + 8860))
        {
          return 1;
        }

        v7 = *(a2 + 44);
      }
    }

    v96 = a1;
    v11 = 0x7FFFFFFFLL;
    if (v7 == -1 || v6 == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v4 == 3)
    {
      return 1;
    }

    v14 = *(a2 + 44);
    v13 = *(a2 + 48);
    v96 = a1;
    v11 = 0x7FFFFFFFLL;
    if (v14 == -1 || v13 == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  v16 = *(a2 + 52);
  if (v16 == -1 || (v17 = *(a2 + 56), v17 == 0x7FFFFFFF))
  {
LABEL_26:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  v18 = (v16 + *(a2 + 44));
  v11 = (v17 + *(a2 + 48));
LABEL_27:
  if (v4)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  v94 = sub_109CD74(**a1, (a2 + 24), 0);
  v95 = v20;
  v5 = 1;
  v21 = sub_109CD74(**a1, (a2 + 32), 1);
  v93 = v22;
  v23 = *(a2 + 32);
  v91 = *(a2 + 24);
  v92 = v21;
  v90 = v23;
  v24 = v91 != 0;
  if (v91 || v23)
  {
    v85 = v19;
    v26 = v11;
    v27 = v18;
    while (1)
    {
      v28 = v11 >= v26;
      if (v18 != v27)
      {
        v28 = v18 >= v27;
      }

      v29 = v18;
      v30 = v11;
      if (v28)
      {
        break;
      }

LABEL_62:
      if (!v23)
      {
        return 1;
      }

      v90 = sub_10503C8(a1 + 3952, v90);
      if (!v90)
      {
        return 1;
      }

      sub_1097608(a1 + 7912, &v90, v88);
      if (v88[0])
      {
        if (v89[13] != -1 && v89[14] != 0x7FFFFFFF)
        {
          v37 = v89[15];
          if (v37 != -1)
          {
            v38 = v89[16];
            if (v38 != 0x7FFFFFFF)
            {
              v39 = v38 + v89[14];
              if (v39 != 0x7FFFFFFF)
              {
                v40 = v37 + v89[13];
                if (v40 != -1 && (v40 != v27 || v39 != v26))
                {
                  v41 = *(a1 + 8804);
                  v82 = v40;
                  if (v41)
                  {
                    v42 = v39;
                  }

                  else
                  {
                    v42 = v40;
                  }

                  v43 = v89 + 16;
                  if (!v41)
                  {
                    v43 = v89 + 15;
                  }

                  if (v41 == 2)
                  {
                    v44 = sub_104A07C(a1 + 8, v90, *a2);
                    if (v44)
                    {
                      sub_2B7A20(**a1, (((HIDWORD(v90) & 0x10000000) << 20) | (WORD2(v90) << 32) | v90) ^ 0x1000000000000, &v97);
                      v45 = v98;
                      if (v98 == v99)
                      {
                        v49 = 0x7FFFFFFF;
                        v50 = 0xFFFFFFFF00000000;
                        v51 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v46 = sub_31A76C(&v97);
                        v47 = v46;
                        v49 = v48;
                        v50 = v46 & 0xFFFFFFFF00000000;
                        v45 = v98;
                        v51 = v47;
                      }

                      if (v45)
                      {
                        v99 = v45;
                        v80 = v44;
                        v66 = v50;
                        operator delete(v45);
                        v50 = v66;
                        v44 = v80;
                      }

                      v86 = v50 | v51;
                      v87 = v49;
                      sub_2B7A20(**a1, (v44 & 0xFFFFFFFFFFFFLL | (((v44 >> 60) & 1) << 48)) ^ 0x1000000000000, &v97);
                      v67 = v98;
                      if (v98 == v99)
                      {
                        v71 = 0x7FFFFFFF;
                        v72 = 0xFFFFFFFF00000000;
                        v73 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v68 = sub_31AA0C(&v97);
                        v69 = v68;
                        v71 = v70;
                        v72 = v68 & 0xFFFFFFFF00000000;
                        v67 = v98;
                        v73 = v69;
                      }

                      if (v67)
                      {
                        v99 = v67;
                        operator delete(v67);
                      }

                      v97 = v72 | v73;
                      LODWORD(v98) = v71;
                      if (sub_108EA9C(&v96, &v97, &v94, &v92, &v86))
                      {
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    v52 = *v43;
                    if (*(a1 + 8792) * (v42 - *v43) < (v85 - *v43))
                    {
                      return 0;
                    }

                    v53 = sub_104A07C(a1 + 8, v90, *a2);
                    if (v53)
                    {
                      v54 = sub_1049FFC(a1 + 8, v53);
                      v55 = HIDWORD(v54);
                      if (!*(a1 + 8804))
                      {
                        LODWORD(v55) = v54;
                      }

                      if (*(a1 + 8792) * (v42 - (v52 + v55)) < (v85 - (v52 + v55)))
                      {
                        return 0;
                      }
                    }
                  }

                  v27 = v82;
                  v26 = v39;
                }
              }
            }
          }
        }
      }

LABEL_37:
      LODWORD(v23) = v90;
      v24 = v91 != 0;
      if (!(v91 | v90))
      {
        return 1;
      }
    }

    while (v24)
    {
      v91 = sub_1049DEC(a1 + 8, v91);
      if (!v91)
      {
        break;
      }

      sub_1097608(a1 + 7912, &v91, v88);
      if (v88[0])
      {
        if (v89[13] != -1 && v89[14] != 0x7FFFFFFF)
        {
          v31 = v89[15];
          if (v31 != -1)
          {
            v32 = v89[16];
            if (v32 != 0x7FFFFFFF)
            {
              v18 = (v31 + v89[13]);
              v11 = (v32 + v89[14]);
              v33 = v11 == 0x7FFFFFFF || v18 == -1;
              if (!v33 && (v18 != v29 || v11 != v30))
              {
                v34 = *(a1 + 8804);
                if (v34 != 2)
                {
                  if (v34)
                  {
                    v56 = v32 + v89[14];
                  }

                  else
                  {
                    v56 = v18;
                  }

                  if (v34)
                  {
                    v57 = v89[14];
                  }

                  else
                  {
                    v57 = v89[13];
                  }

                  if (*(a1 + 8792) * (v56 - v57) >= (v85 - v57))
                  {
                    v58 = sub_1050450(a1 + 3952, v91, *a2);
                    if (!v58)
                    {
                      goto LABEL_37;
                    }

                    v59 = sub_1049FFC(a1 + 3952, v58);
                    v60 = HIDWORD(v59);
                    if (!*(a1 + 8804))
                    {
                      LODWORD(v60) = v59;
                    }

                    if (*(a1 + 8792) * (v56 - (v57 + v60)) >= (v85 - (v57 + v60)))
                    {
                      goto LABEL_37;
                    }
                  }

                  return 0;
                }

                v35 = sub_1050450(a1 + 3952, v91, *a2);
                if (v35)
                {
                  sub_2B7A20(**a1, (((HIDWORD(v91) & 0x10000000) << 20) | (WORD2(v91) << 32) | v91) ^ 0x1000000000000, &v97);
                  v61 = v98;
                  if (v98 == v99)
                  {
                    v63 = 0x7FFFFFFF;
                    v64 = 0xFFFFFFFF00000000;
                    v65 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v62 = sub_31AA0C(&v97);
                    LODWORD(v65) = v62;
                    v64 = v62 & 0xFFFFFFFF00000000;
                    v61 = v98;
                    v65 = v65;
                  }

                  if (v61)
                  {
                    v99 = v61;
                    v81 = v65;
                    v83 = v63;
                    operator delete(v61);
                    v65 = v81;
                    v63 = v83;
                  }

                  v86 = v64 | v65;
                  v87 = v63;
                  sub_2B7A20(**a1, (v35 & 0xFFFFFFFFFFFFLL | (((v35 >> 60) & 1) << 48)) ^ 0x1000000000000, &v97);
                  v74 = v98;
                  if (v98 == v99)
                  {
                    v76 = 0x7FFFFFFF;
                    v78 = 0xFFFFFFFF00000000;
                    v79 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v75 = sub_31A76C(&v97);
                    v77 = v75;
                    v78 = v75 & 0xFFFFFFFF00000000;
                    v74 = v98;
                    v79 = v77;
                  }

                  if (v74)
                  {
                    v99 = v74;
                    v84 = v76;
                    operator delete(v74);
                    v76 = v84;
                  }

                  v97 = v78 | v79;
                  LODWORD(v98) = v76;
                  if (!sub_108EA9C(&v96, &v86, &v94, &v92, &v97))
                  {
                    goto LABEL_37;
                  }

                  return 0;
                }

                v29 = v18;
                v30 = v11;
              }
            }
          }
        }
      }

      LODWORD(v23) = v90;
      v24 = v91 != 0;
      if (!(v91 | v90))
      {
        return 1;
      }

      v36 = v30 >= v26;
      if (v29 != v27)
      {
        v36 = v29 >= v27;
      }

      if (!v36)
      {
        v11 = v30;
        v18 = v29;
        goto LABEL_62;
      }
    }

    return 1;
  }

  return v5;
}

void sub_10975E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1097608@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 104 * v19);
    if (*v20 == v4 && v20[1] == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = (v13 + v19);
  v24 = (v12 + v13);
  v25 = (result + 768);
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v10 = 0;
    v26 = a3;
  }

  else
  {
    v26 = (v18 + 104 * v19);
  }

  if (v22)
  {
    v24 = 0;
  }

  *a3 = v10;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v26;
  a3[4] = v24;
  return result;
}

void *sub_1097790(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

void *sub_109813C(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

void *sub_1098AE8(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

void sub_1099494(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_10996C8(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = 5;
        strcpy(__p, "value");
        v11 = sub_63D34(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v13 = a3[1];
          v12 = a3[2];
          if (v13 < v12)
          {
            goto LABEL_4;
          }

LABEL_12:
          v14 = *a3;
          v15 = v13 - *a3;
          v16 = v15 >> 4;
          v17 = (v15 >> 4) + 1;
          if (v17 >> 60)
          {
            sub_1794();
          }

          v18 = v12 - v14;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v20 = 16 * v16;
          *v20 = v10;
          *(v20 + 8) = v11;
          v21 = 16 * v16 + 16;
          v22 = (v20 - 16 * (v15 >> 4));
          memcpy(v22, v14, v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v13 = v10;
          *(v13 + 8) = v11;
          a3[1] = v13 + 16;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_10996A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10996C8(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_1099804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_109983C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (a1 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  while (1)
  {
    v12 = v10 & v11;
    v13 = *(*v9 + v12);
    v14 = ((v13 ^ (0x101010101010101 * (v8 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v8 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_5:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1099978(v9, v8);
      *a3 = v9;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v10 = v3 + v12;
  }

  while (1)
  {
    result = (v12 + (__clz(__rbit64(v14)) >> 3)) & v11;
    if (*(v9[1] + 104 * result) == v4)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1099978(void *a1, unint64_t a2)
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
      sub_1099A70(a1);
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

uint64_t sub_1099A70(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_1099AA0();
  }

  return sub_1099C90(a1);
}

uint64_t sub_1099C90(uint64_t result)
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
        v18 = *(*(result + 8) + 104 * i);
        v19 = ((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) ^ ~((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) ^ ((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) >> 47)) << 21);
        v20 = 21 * ((265 * (v19 ^ (v19 >> 24))) ^ ((265 * (v19 ^ (v19 >> 24))) >> 14));
        v21 = 2147483649u * (v20 ^ (v20 >> 28));
        v22 = v13 & (v21 >> 7);
        v23 = *(v17->i64 + v22) & (~*(v17->i64 + v22) << 7) & 0x8080808080808080;
        if (v23)
        {
          v15 = v13 & (v21 >> 7);
        }

        else
        {
          v24 = 8;
          v15 = v13 & (v21 >> 7);
          do
          {
            v15 = (v15 + v24) & v13;
            v24 += 8;
            v23 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v23);
        }

        v16 = (v15 + (__clz(__rbit64(v23)) >> 3)) & v13;
        if ((((v16 - v22) ^ (i - v22)) & v13) > 7)
        {
          v25 = v17->u8[v16];
          v17->i8[v16] = v21 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v21 & 0x7F;
          v26 = *(result + 8);
          if (v25 == 128)
          {
            v27 = v26 + 104 * v16;
            v28 = (v26 + 104 * i);
            v29 = *v28;
            v30 = v28[2];
            *(v27 + 16) = v28[1];
            *(v27 + 32) = v30;
            *v27 = v29;
            v31 = v28[3];
            v32 = v28[4];
            v33 = v28[5];
            *(v27 + 96) = *(v28 + 12);
            *(v27 + 64) = v32;
            *(v27 + 80) = v33;
            *(v27 + 48) = v31;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v34 = (v26 + 104 * i);
            v49 = v34[4];
            v50 = v34[5];
            v51 = *(v34 + 12);
            v45 = *v34;
            v46 = v34[1];
            v47 = v34[2];
            v48 = v34[3];
            v35 = (v26 + 104 * v16);
            v37 = v35[1];
            v36 = v35[2];
            *v34 = *v35;
            v34[1] = v37;
            v34[2] = v36;
            v39 = v35[4];
            v38 = v35[5];
            v40 = v35[3];
            *(v34 + 12) = *(v35 + 12);
            v34[4] = v39;
            v34[5] = v38;
            v34[3] = v40;
            v41 = *(result + 8) + 104 * v16;
            *v41 = v45;
            *(v41 + 16) = v46;
            *(v41 + 96) = v51;
            *(v41 + 64) = v49;
            *(v41 + 80) = v50;
            *(v41 + 32) = v47;
            *(v41 + 48) = v48;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v21 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v21 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v42 = i - (i >> 3);
    v43 = i == 7;
    v44 = 6;
    if (!v43)
    {
      v44 = v42;
    }
  }

  else
  {
    v44 = 0;
  }

  *(result + 40) = v44 - *(result + 16);
  return result;
}

__n128 sub_1099FE8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 96);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 5);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v37 = -1;
        v38 = 0x7FFFFFFF;
        if (*(a2 - 13) != -1 && *(a2 - 12) != 0x7FFFFFFF)
        {
          v37 = *(a2 - 11);
          if (v37 != -1)
          {
            v39 = *(a2 - 10);
            if (v39 == 0x7FFFFFFF)
            {
              v37 = -1;
            }

            else
            {
              v37 += *(a2 - 13);
              v38 = v39 + *(a2 - 12);
            }
          }
        }

        v40 = -1;
        v41 = 0x7FFFFFFF;
        if (*(v10 + 11) != -1 && *(v10 + 12) != 0x7FFFFFFF)
        {
          v40 = *(v10 + 13);
          if (v40 != -1)
          {
            v42 = *(v10 + 14);
            if (v42 == 0x7FFFFFFF)
            {
              v40 = -1;
            }

            else
            {
              v40 += *(v10 + 11);
              v41 = v42 + *(v10 + 12);
            }
          }
        }

        v43 = v38 < v41;
        v31 = v37 == v40;
        v44 = v37 < v40;
        if (!v31)
        {
          v43 = v44;
        }

        if (v43)
        {
          v50 = *v10;
          v52 = *(v10 + 1);
          *v58 = *(v10 + 4);
          *&v58[16] = *(v10 + 5);
          v54 = *(v10 + 2);
          v56 = *(v10 + 3);
          v46 = *(a2 - 3);
          v45 = *(a2 - 2);
          v47 = *(a2 - 4);
          *(v10 + 76) = *(a2 - 20);
          *(v10 + 3) = v46;
          *(v10 + 4) = v45;
          *(v10 + 2) = v47;
          v48 = *(a2 - 5);
          *v10 = *v9;
          *(v10 + 1) = v48;
          *(a2 - 4) = v54;
          *(a2 - 3) = v56;
          *(a2 - 2) = *v58;
          *(a2 - 20) = *&v58[12];
          result = v50;
          *v9 = v50;
          *(a2 - 5) = v52;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      result.n128_u64[0] = sub_109AB04(v10, (v10 + 96), (v10 + 192), (a2 - 96)).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_109AE80(v10, (v10 + 96), (v10 + 192), (v10 + 288), (a2 - 96)).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v13 <= 2303)
    {
      if (a5)
      {

        sub_109B314(v10, a2);
      }

      else
      {

        sub_109B558(v10, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_109C34C(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v10[96 * (v14 >> 1)];
    if (v13 <= 0x3000)
    {
      sub_109A5A4(&v10[96 * v15], v10, a2 - 6);
      if (a5)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_109A5A4(v10, &v10[96 * v15], a2 - 6);
      v17 = v10 + 96;
      v18 = 24 * v15;
      v19 = (96 * v15 + a1 - 96);
      sub_109A5A4((a1 + 96), v19, a2 - 12);
      sub_109A5A4((a1 + 192), &v17[v18], a2 - 18);
      sub_109A5A4(v19, v16, &v17[v18]);
      v49 = *a1;
      v51 = *(a1 + 16);
      *v57 = *(a1 + 64);
      *&v57[16] = *(a1 + 80);
      v53 = *(a1 + 32);
      v55 = *(a1 + 48);
      v21 = v16[3];
      v20 = v16[4];
      v22 = v16[2];
      *(a1 + 76) = *(v16 + 76);
      *(a1 + 48) = v21;
      *(a1 + 64) = v20;
      *(a1 + 32) = v22;
      v23 = v16[1];
      *a1 = *v16;
      *(a1 + 16) = v23;
      *v16 = v49;
      v16[1] = v51;
      *(v16 + 76) = *&v57[12];
      v16[3] = v55;
      v16[4] = *v57;
      v16[2] = v53;
      if (a5)
      {
        goto LABEL_32;
      }
    }

    v24 = -1;
    v25 = 0x7FFFFFFF;
    if (*(a1 - 52) != -1 && *(a1 - 48) != 0x7FFFFFFF)
    {
      v24 = *(a1 - 44);
      if (v24 != -1)
      {
        v26 = *(a1 - 40);
        if (v26 != 0x7FFFFFFF)
        {
          v24 += *(a1 - 52);
          v25 = v26 + *(a1 - 48);
          v27 = -1;
          v28 = 0x7FFFFFFF;
          if (*(a1 + 44) == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }

        v24 = -1;
      }
    }

    v27 = -1;
    v28 = 0x7FFFFFFF;
    if (*(a1 + 44) == -1)
    {
      goto LABEL_29;
    }

LABEL_22:
    if (*(a1 + 48) != 0x7FFFFFFF)
    {
      v27 = *(a1 + 52);
      if (v27 != -1)
      {
        v29 = *(a1 + 56);
        if (v29 == 0x7FFFFFFF)
        {
          v27 = -1;
        }

        else
        {
          v27 += *(a1 + 44);
          v28 = v29 + *(a1 + 48);
        }
      }
    }

LABEL_29:
    v30 = v25 < v28;
    v31 = v24 == v27;
    v32 = v24 < v27;
    if (!v31)
    {
      v30 = v32;
    }

    if (!v30)
    {
      v10 = sub_109B774(a1, a2);
      goto LABEL_37;
    }

LABEL_32:
    v33 = sub_109BB64(a1, a2);
    if ((v34 & 1) == 0)
    {
      goto LABEL_35;
    }

    v35 = sub_109BEE4(a1, v33);
    v10 = (v33 + 96);
    if (sub_109BEE4(v33 + 96, a2))
    {
      a4 = -v12;
      a2 = v33;
      if (v35)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v35)
    {
LABEL_35:
      sub_1099FE8(a1, v33, a3, -v12, a5 & 1);
      v10 = (v33 + 96);
LABEL_37:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_109A5A4(v10, v10 + 6, a2 - 6);
  return result;
}

uint64_t sub_109A5A4(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = 0x7FFFFFFF;
  v4 = *(a2 + 11) == -1 || *(a2 + 12) == 0x7FFFFFFF;
  v5 = v4;
  if (v4)
  {
    v6 = -1;
    if (*(a1 + 11) == -1 || *(a1 + 12) == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = *(a2 + 13);
    if (v6 == -1)
    {
      goto LABEL_19;
    }

    v11 = *(a2 + 14);
    if (v11 == 0x7FFFFFFF)
    {
      v6 = -1;
LABEL_19:
      if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

LABEL_24:
      v8 = -1;
      v9 = 0x7FFFFFFF;
      goto LABEL_26;
    }

    v6 += *(a2 + 11);
    v3 = v11 + *(a2 + 12);
    if (*(a1 + 11) == -1 || *(a1 + 12) == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }
  }

LABEL_13:
  v8 = *(a1 + 13);
  v9 = 0x7FFFFFFF;
  if (v8 != -1)
  {
    v10 = *(a1 + 14);
    if (v10 == 0x7FFFFFFF)
    {
      v8 = -1;
    }

    else
    {
      v8 += *(a1 + 11);
      v9 = v10 + *(a1 + 12);
    }
  }

LABEL_26:
  v13 = v3 < v9;
  v4 = v6 == v8;
  v14 = v6 < v8;
  if (v4)
  {
    v14 = v13;
  }

  v16 = *(a3 + 11) == -1 || *(a3 + 12) == 0x7FFFFFFF;
  if (v14)
  {
    if (v16)
    {
      v17 = -1;
      v18 = 0x7FFFFFFF;
      if ((v5 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_49:
      v19 = -1;
      v20 = 0x7FFFFFFF;
LABEL_61:
      v30 = v18 < v20;
      if (v17 != v19)
      {
        v30 = v17 < v19;
      }

      if (v30)
      {
        v77 = a1[2];
        v81 = a1[3];
        *v85 = a1[4];
        *&v85[16] = a1[5];
        v69 = *a1;
        v73 = a1[1];
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        v33 = a3[3];
        v32 = a3[4];
        v34 = a3[2];
        *(a1 + 76) = *(a3 + 76);
        a1[3] = v33;
        a1[4] = v32;
        a1[2] = v34;
LABEL_101:
        a3[4] = *v85;
        *(a3 + 76) = *&v85[12];
        a3[2] = v77;
        a3[3] = v81;
        result = 1;
        *a3 = v69;
        a3[1] = v73;
        return result;
      }

      v78 = a1[2];
      v82 = a1[3];
      *v86 = a1[4];
      *&v86[16] = a1[5];
      v70 = *a1;
      v74 = a1[1];
      v35 = a2[1];
      *a1 = *a2;
      a1[1] = v35;
      v37 = a2[3];
      v36 = a2[4];
      v38 = a2[2];
      *(a1 + 76) = *(a2 + 76);
      a1[3] = v37;
      a1[4] = v36;
      a1[2] = v38;
      a2[4] = *v86;
      *(a2 + 76) = *&v86[12];
      a2[2] = v78;
      a2[3] = v82;
      *a2 = v70;
      a2[1] = v74;
      v39 = -1;
      v40 = 0x7FFFFFFF;
      if (*(a3 + 11) != -1 && *(a3 + 12) != 0x7FFFFFFF)
      {
        v39 = *(a3 + 13);
        if (v39 != -1)
        {
          v41 = *(a3 + 14);
          if (v41 == 0x7FFFFFFF)
          {
            v39 = -1;
          }

          else
          {
            v39 += *(a3 + 11);
            v40 = v41 + *(a3 + 12);
          }
        }
      }

      v51 = -1;
      v52 = 0x7FFFFFFF;
      if (*(a2 + 11) != -1 && *(a2 + 12) != 0x7FFFFFFF)
      {
        v51 = *(a2 + 13);
        if (v51 != -1)
        {
          v53 = *(a2 + 14);
          if (v53 == 0x7FFFFFFF)
          {
            v51 = -1;
          }

          else
          {
            v51 += *(a2 + 11);
            v52 = v53 + *(a2 + 12);
          }
        }
      }

      v57 = v40 < v52;
      v4 = v39 == v51;
      v58 = v39 < v51;
      if (!v4)
      {
        v57 = v58;
      }

      if (v57)
      {
        v77 = a2[2];
        v81 = a2[3];
        *v85 = a2[4];
        *&v85[16] = a2[5];
        v69 = *a2;
        v73 = a2[1];
        v59 = a3[1];
        *a2 = *a3;
        a2[1] = v59;
        v61 = a3[3];
        v60 = a3[4];
        v62 = a3[2];
        *(a2 + 76) = *(a3 + 76);
        a2[3] = v61;
        a2[4] = v60;
        a2[2] = v62;
        goto LABEL_101;
      }

      return 1;
    }

    v17 = *(a3 + 13);
    v18 = 0x7FFFFFFF;
    if (v17 != -1)
    {
      v27 = *(a3 + 14);
      if (v27 != 0x7FFFFFFF)
      {
        v17 += *(a3 + 11);
        v18 = v27 + *(a3 + 12);
        if (v5)
        {
          goto LABEL_49;
        }

        goto LABEL_37;
      }

      v17 = -1;
    }

    if (v5)
    {
      goto LABEL_49;
    }

LABEL_37:
    v19 = *(a2 + 13);
    v20 = 0x7FFFFFFF;
    if (v19 != -1)
    {
      v21 = *(a2 + 14);
      if (v21 == 0x7FFFFFFF)
      {
        v19 = -1;
      }

      else
      {
        v19 += *(a2 + 11);
        v20 = v21 + *(a2 + 12);
      }
    }

    goto LABEL_61;
  }

  if (v16)
  {
    v22 = -1;
    v23 = 0x7FFFFFFF;
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_54:
    v24 = -1;
    v25 = 0x7FFFFFFF;
    goto LABEL_71;
  }

  v22 = *(a3 + 13);
  v23 = 0x7FFFFFFF;
  if (v22 != -1)
  {
    v28 = *(a3 + 14);
    if (v28 != 0x7FFFFFFF)
    {
      v22 += *(a3 + 11);
      v23 = v28 + *(a3 + 12);
      if (v5)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    v22 = -1;
  }

  if (v5)
  {
    goto LABEL_54;
  }

LABEL_42:
  v24 = *(a2 + 13);
  v25 = 0x7FFFFFFF;
  if (v24 != -1)
  {
    v26 = *(a2 + 14);
    if (v26 == 0x7FFFFFFF)
    {
      v24 = -1;
    }

    else
    {
      v24 += *(a2 + 11);
      v25 = v26 + *(a2 + 12);
    }
  }

LABEL_71:
  v42 = v23 < v25;
  if (v22 != v24)
  {
    v42 = v22 < v24;
  }

  if (!v42)
  {
    return 0;
  }

  v79 = a2[2];
  v83 = a2[3];
  *v87 = a2[4];
  *&v87[16] = a2[5];
  v71 = *a2;
  v75 = a2[1];
  v43 = a3[1];
  *a2 = *a3;
  a2[1] = v43;
  v45 = a3[3];
  v44 = a3[4];
  v46 = a3[2];
  *(a2 + 76) = *(a3 + 76);
  a2[3] = v45;
  a2[4] = v44;
  a2[2] = v46;
  a3[4] = *v87;
  *(a3 + 76) = *&v87[12];
  a3[2] = v79;
  a3[3] = v83;
  *a3 = v71;
  a3[1] = v75;
  v47 = -1;
  v48 = 0x7FFFFFFF;
  if (*(a2 + 11) != -1 && *(a2 + 12) != 0x7FFFFFFF)
  {
    v47 = *(a2 + 13);
    if (v47 != -1)
    {
      v49 = *(a2 + 14);
      if (v49 == 0x7FFFFFFF)
      {
        v47 = -1;
      }

      else
      {
        v47 += *(a2 + 11);
        v48 = v49 + *(a2 + 12);
      }
    }
  }

  v54 = -1;
  v55 = 0x7FFFFFFF;
  if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
  {
    v54 = *(a1 + 13);
    if (v54 != -1)
    {
      v56 = *(a1 + 14);
      if (v56 == 0x7FFFFFFF)
      {
        v54 = -1;
      }

      else
      {
        v54 += *(a1 + 11);
        v55 = v56 + *(a1 + 12);
      }
    }
  }

  v63 = v48 < v55;
  v4 = v47 == v54;
  v64 = v47 < v54;
  if (!v4)
  {
    v63 = v64;
  }

  if (v63)
  {
    v80 = a1[2];
    v84 = a1[3];
    *v88 = a1[4];
    *&v88[16] = a1[5];
    v72 = *a1;
    v76 = a1[1];
    v65 = a2[1];
    *a1 = *a2;
    a1[1] = v65;
    v67 = a2[3];
    v66 = a2[4];
    v68 = a2[2];
    *(a1 + 76) = *(a2 + 76);
    a1[3] = v67;
    a1[4] = v66;
    a1[2] = v68;
    a2[4] = *v88;
    *(a2 + 76) = *&v88[12];
    a2[2] = v80;
    a2[3] = v84;
    result = 1;
    *a2 = v72;
    a2[1] = v76;
    return result;
  }

  return 1;
}

__n128 sub_109AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_109A5A4(a1, a2, a3);
  v9 = 0x7FFFFFFF;
  v10 = *(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF;
  if (v10)
  {
    v11 = -1;
    v12 = 0x7FFFFFFF;
    if (*(a3 + 44) == -1 || *(a3 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = *(a4 + 52);
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    v14 = *(a4 + 56);
    if (v14 == 0x7FFFFFFF)
    {
      v11 = -1;
LABEL_14:
      v12 = 0x7FFFFFFF;
      if (*(a3 + 44) == -1 || *(a3 + 48) == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    v11 += *(a4 + 44);
    v9 = v14 + *(a4 + 48);
    v12 = 0x7FFFFFFF;
    if (*(a3 + 44) == -1 || *(a3 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

LABEL_18:
  v16 = *(a3 + 52);
  if (v16 == -1)
  {
    goto LABEL_27;
  }

  v17 = *(a3 + 56);
  if (v17 != 0x7FFFFFFF)
  {
    v16 += *(a3 + 44);
    v12 = v17 + *(a3 + 48);
    goto LABEL_27;
  }

LABEL_26:
  v16 = -1;
LABEL_27:
  v19 = v9 < v12;
  v10 = v11 == v16;
  v20 = v11 < v16;
  if (!v10)
  {
    v19 = v20;
  }

  if (v19)
  {
    v55 = *(a3 + 32);
    v58 = *(a3 + 48);
    *v61 = *(a3 + 64);
    *&v61[16] = *(a3 + 80);
    v49 = *a3;
    v52 = *(a3 + 16);
    v21 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v21;
    v23 = *(a4 + 48);
    v22 = *(a4 + 64);
    v24 = *(a4 + 32);
    *(a3 + 76) = *(a4 + 76);
    *(a3 + 48) = v23;
    *(a3 + 64) = v22;
    *(a3 + 32) = v24;
    *(a4 + 64) = *v61;
    *(a4 + 76) = *&v61[12];
    *(a4 + 32) = v55;
    *(a4 + 48) = v58;
    result = v49;
    *a4 = v49;
    *(a4 + 16) = v52;
    v25 = -1;
    v26 = 0x7FFFFFFF;
    if (*(a3 + 44) != -1 && *(a3 + 48) != 0x7FFFFFFF)
    {
      v25 = *(a3 + 52);
      if (v25 != -1)
      {
        v27 = *(a3 + 56);
        if (v27 == 0x7FFFFFFF)
        {
          v25 = -1;
        }

        else
        {
          v25 += *(a3 + 44);
          v26 = v27 + *(a3 + 48);
        }
      }
    }

    v28 = -1;
    v29 = 0x7FFFFFFF;
    if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
    {
      v28 = *(a2 + 52);
      if (v28 != -1)
      {
        v30 = *(a2 + 56);
        if (v30 == 0x7FFFFFFF)
        {
          v28 = -1;
        }

        else
        {
          v28 += *(a2 + 44);
          v29 = v30 + *(a2 + 48);
        }
      }
    }

    v31 = v26 < v29;
    v10 = v25 == v28;
    v32 = v25 < v28;
    if (!v10)
    {
      v31 = v32;
    }

    if (v31)
    {
      v56 = *(a2 + 32);
      v59 = *(a2 + 48);
      *v62 = *(a2 + 64);
      *&v62[16] = *(a2 + 80);
      v50 = *a2;
      v53 = *(a2 + 16);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      v35 = *(a3 + 48);
      v34 = *(a3 + 64);
      v36 = *(a3 + 32);
      *(a2 + 76) = *(a3 + 76);
      *(a2 + 48) = v35;
      *(a2 + 64) = v34;
      *(a2 + 32) = v36;
      *(a3 + 64) = *v62;
      *(a3 + 76) = *&v62[12];
      *(a3 + 32) = v56;
      *(a3 + 48) = v59;
      result = v50;
      *a3 = v50;
      *(a3 + 16) = v53;
      v37 = -1;
      v38 = 0x7FFFFFFF;
      if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
      {
        v37 = *(a2 + 52);
        if (v37 != -1)
        {
          v39 = *(a2 + 56);
          if (v39 == 0x7FFFFFFF)
          {
            v37 = -1;
          }

          else
          {
            v37 += *(a2 + 44);
            v38 = v39 + *(a2 + 48);
          }
        }
      }

      v40 = -1;
      v41 = 0x7FFFFFFF;
      if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
      {
        v40 = *(a1 + 52);
        if (v40 != -1)
        {
          v42 = *(a1 + 56);
          if (v42 == 0x7FFFFFFF)
          {
            v40 = -1;
          }

          else
          {
            v40 += *(a1 + 44);
            v41 = v42 + *(a1 + 48);
          }
        }
      }

      v43 = v38 < v41;
      v10 = v37 == v40;
      v44 = v37 < v40;
      if (!v10)
      {
        v43 = v44;
      }

      if (v43)
      {
        v57 = *(a1 + 32);
        v60 = *(a1 + 48);
        *v63 = *(a1 + 64);
        *&v63[16] = *(a1 + 80);
        v51 = *a1;
        v54 = *(a1 + 16);
        v45 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v45;
        v47 = *(a2 + 48);
        v46 = *(a2 + 64);
        v48 = *(a2 + 32);
        *(a1 + 76) = *(a2 + 76);
        *(a1 + 48) = v47;
        *(a1 + 64) = v46;
        *(a1 + 32) = v48;
        *(a2 + 64) = *v63;
        *(a2 + 76) = *&v63[12];
        *(a2 + 32) = v57;
        *(a2 + 48) = v60;
        result = v51;
        *a2 = v51;
        *(a2 + 16) = v54;
      }
    }
  }

  return result;
}

__n128 sub_109AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_109AB04(a1, a2, a3, a4).n128_u64[0];
  v11 = 0x7FFFFFFF;
  v12 = *(a5 + 44) == -1 || *(a5 + 48) == 0x7FFFFFFF;
  if (v12)
  {
    v13 = -1;
    v14 = 0x7FFFFFFF;
    if (*(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v13 = *(a5 + 52);
    if (v13 == -1)
    {
      goto LABEL_14;
    }

    v16 = *(a5 + 56);
    if (v16 == 0x7FFFFFFF)
    {
      v13 = -1;
LABEL_14:
      v14 = 0x7FFFFFFF;
      if (*(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    v13 += *(a5 + 44);
    v11 = v16 + *(a5 + 48);
    v14 = 0x7FFFFFFF;
    if (*(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

LABEL_18:
  v18 = *(a4 + 52);
  if (v18 == -1)
  {
    goto LABEL_27;
  }

  v19 = *(a4 + 56);
  if (v19 != 0x7FFFFFFF)
  {
    v18 += *(a4 + 44);
    v14 = v19 + *(a4 + 48);
    goto LABEL_27;
  }

LABEL_26:
  v18 = -1;
LABEL_27:
  v21 = v11 < v14;
  v12 = v13 == v18;
  v22 = v13 < v18;
  if (!v12)
  {
    v21 = v22;
  }

  if (v21)
  {
    v71 = *(a4 + 32);
    v75 = *(a4 + 48);
    *v79 = *(a4 + 64);
    *&v79[16] = *(a4 + 80);
    v63 = *a4;
    v67 = *(a4 + 16);
    v23 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v23;
    v25 = *(a5 + 48);
    v24 = *(a5 + 64);
    v26 = *(a5 + 32);
    *(a4 + 76) = *(a5 + 76);
    *(a4 + 48) = v25;
    *(a4 + 64) = v24;
    *(a4 + 32) = v26;
    *(a5 + 64) = *v79;
    *(a5 + 76) = *&v79[12];
    *(a5 + 32) = v71;
    *(a5 + 48) = v75;
    result = v63;
    *a5 = v63;
    *(a5 + 16) = v67;
    v27 = -1;
    v28 = 0x7FFFFFFF;
    if (*(a4 + 44) != -1 && *(a4 + 48) != 0x7FFFFFFF)
    {
      v27 = *(a4 + 52);
      if (v27 != -1)
      {
        v29 = *(a4 + 56);
        if (v29 == 0x7FFFFFFF)
        {
          v27 = -1;
        }

        else
        {
          v27 += *(a4 + 44);
          v28 = v29 + *(a4 + 48);
        }
      }
    }

    v30 = -1;
    v31 = 0x7FFFFFFF;
    if (*(a3 + 44) != -1 && *(a3 + 48) != 0x7FFFFFFF)
    {
      v30 = *(a3 + 52);
      if (v30 != -1)
      {
        v32 = *(a3 + 56);
        if (v32 == 0x7FFFFFFF)
        {
          v30 = -1;
        }

        else
        {
          v30 += *(a3 + 44);
          v31 = v32 + *(a3 + 48);
        }
      }
    }

    v33 = v28 < v31;
    v12 = v27 == v30;
    v34 = v27 < v30;
    if (!v12)
    {
      v33 = v34;
    }

    if (v33)
    {
      v72 = *(a3 + 32);
      v76 = *(a3 + 48);
      *v80 = *(a3 + 64);
      *&v80[16] = *(a3 + 80);
      v64 = *a3;
      v68 = *(a3 + 16);
      v35 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v35;
      v37 = *(a4 + 48);
      v36 = *(a4 + 64);
      v38 = *(a4 + 32);
      *(a3 + 76) = *(a4 + 76);
      *(a3 + 48) = v37;
      *(a3 + 64) = v36;
      *(a3 + 32) = v38;
      *(a4 + 64) = *v80;
      *(a4 + 76) = *&v80[12];
      *(a4 + 32) = v72;
      *(a4 + 48) = v76;
      result = v64;
      *a4 = v64;
      *(a4 + 16) = v68;
      v39 = -1;
      v40 = 0x7FFFFFFF;
      if (*(a3 + 44) != -1 && *(a3 + 48) != 0x7FFFFFFF)
      {
        v39 = *(a3 + 52);
        if (v39 != -1)
        {
          v41 = *(a3 + 56);
          if (v41 == 0x7FFFFFFF)
          {
            v39 = -1;
          }

          else
          {
            v39 += *(a3 + 44);
            v40 = v41 + *(a3 + 48);
          }
        }
      }

      v42 = -1;
      v43 = 0x7FFFFFFF;
      if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
      {
        v42 = *(a2 + 52);
        if (v42 != -1)
        {
          v44 = *(a2 + 56);
          if (v44 == 0x7FFFFFFF)
          {
            v42 = -1;
          }

          else
          {
            v42 += *(a2 + 44);
            v43 = v44 + *(a2 + 48);
          }
        }
      }

      v45 = v40 < v43;
      v12 = v39 == v42;
      v46 = v39 < v42;
      if (!v12)
      {
        v45 = v46;
      }

      if (v45)
      {
        v73 = *(a2 + 32);
        v77 = *(a2 + 48);
        *v81 = *(a2 + 64);
        *&v81[16] = *(a2 + 80);
        v65 = *a2;
        v69 = *(a2 + 16);
        v47 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v47;
        v49 = *(a3 + 48);
        v48 = *(a3 + 64);
        v50 = *(a3 + 32);
        *(a2 + 76) = *(a3 + 76);
        *(a2 + 48) = v49;
        *(a2 + 64) = v48;
        *(a2 + 32) = v50;
        *(a3 + 64) = *v81;
        *(a3 + 76) = *&v81[12];
        *(a3 + 32) = v73;
        *(a3 + 48) = v77;
        result = v65;
        *a3 = v65;
        *(a3 + 16) = v69;
        v51 = -1;
        v52 = 0x7FFFFFFF;
        if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
        {
          v51 = *(a2 + 52);
          if (v51 != -1)
          {
            v53 = *(a2 + 56);
            if (v53 == 0x7FFFFFFF)
            {
              v51 = -1;
            }

            else
            {
              v51 += *(a2 + 44);
              v52 = v53 + *(a2 + 48);
            }
          }
        }

        v54 = -1;
        v55 = 0x7FFFFFFF;
        if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
        {
          v54 = *(a1 + 52);
          if (v54 != -1)
          {
            v56 = *(a1 + 56);
            if (v56 == 0x7FFFFFFF)
            {
              v54 = -1;
            }

            else
            {
              v54 += *(a1 + 44);
              v55 = v56 + *(a1 + 48);
            }
          }
        }

        v57 = v52 < v55;
        v12 = v51 == v54;
        v58 = v51 < v54;
        if (!v12)
        {
          v57 = v58;
        }

        if (v57)
        {
          v74 = *(a1 + 32);
          v78 = *(a1 + 48);
          *v82 = *(a1 + 64);
          *&v82[16] = *(a1 + 80);
          v66 = *a1;
          v70 = *(a1 + 16);
          v59 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v59;
          v61 = *(a2 + 48);
          v60 = *(a2 + 64);
          v62 = *(a2 + 32);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 48) = v61;
          *(a1 + 64) = v60;
          *(a1 + 32) = v62;
          *(a2 + 64) = *v82;
          *(a2 + 76) = *&v82[12];
          *(a2 + 32) = v74;
          *(a2 + 48) = v78;
          result = v66;
          *a2 = v66;
          *(a2 + 16) = v70;
        }
      }
    }
  }

  return result;
}

uint64_t sub_109B314(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 96);
    if ((result + 96) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v2;
        v7 = *(v4 + 35) == -1 || *(v4 + 36) == 0x7FFFFFFF;
        if (v7)
        {
          v8 = -1;
          v9 = 0x7FFFFFFF;
          if (*(v4 + 11) != -1 && *(v4 + 12) != 0x7FFFFFFF)
          {
LABEL_30:
            v13 = *(v4 + 13);
            v14 = 0x7FFFFFFF;
            if (v13 != -1)
            {
              v16 = *(v4 + 14);
              if (v16 == 0x7FFFFFFF)
              {
                v13 = -1;
              }

              else
              {
                v13 += *(v4 + 11);
                v14 = v16 + *(v4 + 12);
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v8 = *(v4 + 37);
          v9 = 0x7FFFFFFF;
          if (v8 == -1)
          {
            goto LABEL_20;
          }

          v11 = *(v4 + 38);
          if (v11 == 0x7FFFFFFF)
          {
            v8 = -1;
LABEL_20:
            if (*(v4 + 11) != -1 && *(v4 + 12) != 0x7FFFFFFF)
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          v8 += *(v4 + 35);
          v9 = v11 + *(v4 + 36);
          if (*(v4 + 11) != -1 && *(v4 + 12) != 0x7FFFFFFF)
          {
            goto LABEL_30;
          }
        }

LABEL_25:
        v13 = -1;
        v14 = 0x7FFFFFFF;
LABEL_34:
        v17 = v9 < v14;
        v7 = v8 == v13;
        v18 = v8 < v13;
        if (!v7)
        {
          v17 = v18;
        }

        if (v17)
        {
          v37 = *v6;
          *v38 = v6[1];
          *&v38[12] = *(v6 + 28);
          v19 = *(v4 + 140);
          v20 = *(v4 + 37);
          v21 = *(v4 + 38);
          v35 = *(v4 + 156);
          v36 = *(v4 + 172);
          v24 = v19 != -1 && HIDWORD(v19) != 0x7FFFFFFF && v20 != -1;
          v25 = v24 && v21 != 0x7FFFFFFF;
          if (v25)
          {
            v26 = v20 + v19;
          }

          else
          {
            v26 = -1;
          }

          v27 = v3;
          do
          {
            v31 = (result + v27);
            v32 = *(result + v27 + 48);
            v31[8] = *(result + v27 + 32);
            v31[9] = v32;
            v31[10] = *(result + v27 + 64);
            *(v31 + 172) = *(result + v27 + 76);
            v33 = *(result + v27 + 16);
            v31[6] = *(result + v27);
            v31[7] = v33;
            if (!v27)
            {
              v5 = result;
              goto LABEL_5;
            }

            v28 = -1;
            v29 = 0x7FFFFFFF;
            if (*(v31 - 13) != -1 && *(v31 - 12) != 0x7FFFFFFF)
            {
              v28 = *(result + v27 - 44);
              if (v28 != -1)
              {
                v34 = *(result + v27 - 40);
                if (v34 == 0x7FFFFFFF)
                {
                  v28 = -1;
                }

                else
                {
                  v28 += *(v31 - 13);
                  v29 = v34 + *(v31 - 12);
                }
              }
            }

            v30 = v25 & (v21 + HIDWORD(v19) < v29);
            if (v26 != v28)
            {
              v30 = v26 < v28;
            }

            v27 -= 96;
          }

          while ((v30 & 1) != 0);
          v5 = result + v27 + 96;
LABEL_5:
          *v5 = v37;
          *(v5 + 16) = *v38;
          *(v5 + 28) = *&v38[12];
          *(v5 + 44) = v19;
          *(v5 + 52) = v20;
          *(v5 + 56) = v21;
          *(v5 + 60) = v35;
          *(v5 + 76) = v36;
        }

        v2 = v6 + 6;
        v3 += 96;
        v4 = v6;
      }

      while (v6 + 6 != a2);
    }
  }

  return result;
}

_OWORD *sub_109B558(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 6;
    if (result + 6 != a2)
    {
      do
      {
        v3 = v2;
        v4 = *(result + 35) == -1 || *(result + 36) == 0x7FFFFFFF;
        if (v4)
        {
          v5 = -1;
          v6 = 0x7FFFFFFF;
          if (*(result + 11) != -1 && *(result + 12) != 0x7FFFFFFF)
          {
LABEL_29:
            v10 = *(result + 13);
            v11 = 0x7FFFFFFF;
            if (v10 != -1)
            {
              v13 = *(result + 14);
              if (v13 == 0x7FFFFFFF)
              {
                v10 = -1;
              }

              else
              {
                v10 += *(result + 11);
                v11 = v13 + *(result + 12);
              }
            }

            goto LABEL_33;
          }
        }

        else
        {
          v5 = *(result + 37);
          v6 = 0x7FFFFFFF;
          if (v5 == -1)
          {
            goto LABEL_19;
          }

          v8 = *(result + 38);
          if (v8 == 0x7FFFFFFF)
          {
            v5 = -1;
LABEL_19:
            if (*(result + 11) != -1 && *(result + 12) != 0x7FFFFFFF)
            {
              goto LABEL_29;
            }

            goto LABEL_24;
          }

          v5 += *(result + 35);
          v6 = v8 + *(result + 36);
          if (*(result + 11) != -1 && *(result + 12) != 0x7FFFFFFF)
          {
            goto LABEL_29;
          }
        }

LABEL_24:
        v10 = -1;
        v11 = 0x7FFFFFFF;
LABEL_33:
        v14 = v6 < v11;
        v4 = v5 == v10;
        v15 = v5 < v10;
        if (!v4)
        {
          v14 = v15;
        }

        if (v14)
        {
          v34 = *v3;
          *v35 = v3[1];
          *&v35[12] = *(v3 + 28);
          v16 = *(result + 140);
          v17 = *(result + 37);
          v18 = *(result + 38);
          v32 = *(result + 156);
          v33 = *(result + 172);
          v21 = v16 != -1 && HIDWORD(v16) != 0x7FFFFFFF && v17 != -1;
          v22 = v21 && v18 != 0x7FFFFFFF;
          v23 = v17 + v16;
          if (!v22)
          {
            v23 = -1;
          }

          v24 = v3;
          do
          {
            v29 = *(v24 - 3);
            v24[2] = *(v24 - 4);
            v24[3] = v29;
            v24[4] = *(v24 - 2);
            *(v24 + 76) = *(v24 - 20);
            v30 = *(v24 - 5);
            *v24 = *(v24 - 6);
            v24[1] = v30;
            v25 = -1;
            v26 = 0x7FFFFFFF;
            if (*(v24 - 37) != -1 && *(v24 - 36) != 0x7FFFFFFF)
            {
              v25 = *(v24 - 35);
              if (v25 != -1)
              {
                v31 = *(v24 - 34);
                if (v31 == 0x7FFFFFFF)
                {
                  v25 = -1;
                }

                else
                {
                  v25 += *(v24 - 37);
                  v26 = v31 + *(v24 - 36);
                }
              }
            }

            v4 = v23 == v25;
            v27 = v23 < v25;
            v28 = v22 & (v18 + HIDWORD(v16) < v26);
            if (!v4)
            {
              v28 = v27;
            }

            v24 -= 6;
          }

          while ((v28 & 1) != 0);
          *v24 = v34;
          v24[1] = *v35;
          *(v24 + 28) = *&v35[12];
          *(v24 + 44) = v16;
          *(v24 + 13) = v17;
          *(v24 + 14) = v18;
          *(v24 + 60) = v32;
          *(v24 + 76) = v33;
        }

        v2 = v3 + 6;
        result = v3;
      }

      while (v3 + 6 != a2);
    }
  }

  return result;
}

_DWORD *sub_109B774(__int128 *a1, _OWORD *a2)
{
  v60 = *a1;
  *v61 = a1[1];
  *&v61[12] = *(a1 + 28);
  v2 = *(a1 + 44);
  v3 = *(a1 + 13);
  v4 = *(a1 + 14);
  v58 = *(a1 + 60);
  v59 = *(a1 + 76);
  v5 = 0x7FFFFFFF;
  v6 = v2 == -1 || HIDWORD(v2) == 0x7FFFFFFF;
  v8 = !v6 && v3 != -1;
  v9 = v8 & (v4 != 0x7FFFFFFF);
  v10 = v3 + v2;
  v11 = v4 + HIDWORD(v2);
  if (!v9)
  {
    v10 = -1;
  }

  v12 = -1;
  if (*(a2 - 13) != -1 && *(a2 - 12) != 0x7FFFFFFF)
  {
    v12 = *(a2 - 11);
    v5 = 0x7FFFFFFF;
    if (v12 != -1)
    {
      v13 = *(a2 - 10);
      if (v13 == 0x7FFFFFFF)
      {
        v12 = -1;
      }

      else
      {
        v12 += *(a2 - 13);
        v5 = v13 + *(a2 - 12);
      }
    }
  }

  v6 = v10 == v12;
  v14 = v10 < v12;
  v15 = v9 & (v11 < v5);
  if (!v6)
  {
    v15 = v14;
  }

  if (v15)
  {
    v16 = a1;
    do
    {
      if (v16[35] == -1 || v16[36] == 0x7FFFFFFF)
      {
        v17 = -1;
        v18 = 0x7FFFFFFF;
      }

      else
      {
        v17 = v16[37];
        v18 = 0x7FFFFFFF;
        if (v17 != -1)
        {
          v22 = v16[38];
          if (v22 == 0x7FFFFFFF)
          {
            v17 = -1;
          }

          else
          {
            v17 += v16[35];
            v18 = v22 + v16[36];
          }
        }
      }

      v16 += 24;
      v6 = v10 == v17;
      v19 = v10 < v17;
      v20 = v9 & (v11 < v18);
      if (!v6)
      {
        v20 = v19;
      }
    }

    while ((v20 & 1) == 0);
  }

  else
  {
    v23 = a1 + 6;
    do
    {
      v16 = v23;
      if (v23 >= a2)
      {
        break;
      }

      if (v23[11] == -1 || v23[12] == 0x7FFFFFFF)
      {
        v24 = -1;
        v25 = 0x7FFFFFFF;
      }

      else
      {
        v24 = v23[13];
        v25 = 0x7FFFFFFF;
        if (v24 != -1)
        {
          v29 = v16[14];
          if (v29 == 0x7FFFFFFF)
          {
            v24 = -1;
          }

          else
          {
            v24 += v16[11];
            v25 = v29 + v16[12];
          }
        }
      }

      v6 = v10 == v24;
      v26 = v10 < v24;
      v27 = v9 & (v11 < v25);
      if (v6)
      {
        v26 = v27;
      }

      v23 = v16 + 24;
    }

    while (!v26);
  }

  if (v16 < a2)
  {
    do
    {
      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v30 = -1;
        v31 = 0x7FFFFFFF;
      }

      else
      {
        v30 = *(a2 - 11);
        v31 = 0x7FFFFFFF;
        if (v30 != -1)
        {
          v35 = *(a2 - 10);
          if (v35 == 0x7FFFFFFF)
          {
            v30 = -1;
          }

          else
          {
            v30 += *(a2 - 13);
            v31 = v35 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v6 = v10 == v30;
      v32 = v10 < v30;
      v33 = v9 & (v11 < v31);
      if (!v6)
      {
        v33 = v32;
      }
    }

    while ((v33 & 1) != 0);
  }

  while (v16 < a2)
  {
    v62 = *v16;
    v63 = *(v16 + 1);
    *v66 = *(v16 + 4);
    *&v66[16] = *(v16 + 5);
    v64 = *(v16 + 2);
    v65 = *(v16 + 3);
    v37 = a2[3];
    v36 = a2[4];
    v38 = a2[2];
    *(v16 + 19) = *(a2 + 76);
    *(v16 + 3) = v37;
    *(v16 + 4) = v36;
    *(v16 + 2) = v38;
    v39 = a2[1];
    *v16 = *a2;
    *(v16 + 1) = v39;
    *a2 = v62;
    a2[1] = v63;
    *(a2 + 76) = *&v66[12];
    a2[3] = v65;
    a2[4] = *v66;
    a2[2] = v64;
    do
    {
      if (v16[35] == -1 || v16[36] == 0x7FFFFFFF)
      {
        v40 = -1;
        v41 = 0x7FFFFFFF;
      }

      else
      {
        v40 = v16[37];
        v41 = 0x7FFFFFFF;
        if (v40 != -1)
        {
          v45 = v16[38];
          if (v45 == 0x7FFFFFFF)
          {
            v40 = -1;
          }

          else
          {
            v40 += v16[35];
            v41 = v45 + v16[36];
          }
        }
      }

      v16 += 24;
      v6 = v10 == v40;
      v42 = v10 < v40;
      v43 = v9 & (v11 < v41);
      if (!v6)
      {
        v43 = v42;
      }
    }

    while (v43 != 1);
    do
    {
      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v46 = -1;
        v47 = 0x7FFFFFFF;
      }

      else
      {
        v46 = *(a2 - 11);
        v47 = 0x7FFFFFFF;
        if (v46 != -1)
        {
          v51 = *(a2 - 10);
          if (v51 == 0x7FFFFFFF)
          {
            v46 = -1;
          }

          else
          {
            v46 += *(a2 - 13);
            v47 = v51 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v6 = v10 == v46;
      v48 = v10 < v46;
      v49 = v9 & (v11 < v47);
      if (!v6)
      {
        v49 = v48;
      }
    }

    while ((v49 & 1) != 0);
  }

  v52 = (v16 - 24);
  if (v16 - 24 != a1)
  {
    v53 = *(v16 - 5);
    *a1 = *v52;
    a1[1] = v53;
    v54 = *(v16 - 4);
    v55 = *(v16 - 3);
    v56 = *(v16 - 2);
    *(a1 + 76) = *(v16 - 5);
    a1[3] = v55;
    a1[4] = v56;
    a1[2] = v54;
  }

  *v52 = v60;
  *(v16 - 5) = *v61;
  *(v16 - 17) = *&v61[12];
  *(v16 - 13) = v2;
  *(v16 - 11) = v3;
  *(v16 - 10) = v4;
  *(v16 - 5) = v59;
  *(v16 - 9) = v58;
  return v16;
}

unint64_t sub_109BB64(__int128 *a1, _OWORD *a2)
{
  v2 = 0;
  v59 = *a1;
  *v60 = a1[1];
  *&v60[12] = *(a1 + 28);
  v3 = *(a1 + 44);
  v4 = *(a1 + 13);
  v5 = *(a1 + 14);
  v57 = *(a1 + 60);
  v58 = *(a1 + 76);
  v6 = v3 == -1 || HIDWORD(v3) == 0x7FFFFFFF;
  v8 = v6 || v4 == -1 || v5 == 0x7FFFFFFF;
  v9 = v4 + v3;
  v10 = v5 + HIDWORD(v3);
  if (v8)
  {
    v10 = 0x7FFFFFFF;
    v9 = -1;
  }

  do
  {
    v15 = &a1[v2];
    if (HIDWORD(a1[v2 + 8]) == -1 || LODWORD(a1[v2 + 9]) == 0x7FFFFFFF)
    {
      v11 = -1;
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v17 = *(v15 + 37);
      v12 = 0x7FFFFFFF;
      if (v17 == -1 || (v18 = DWORD2(a1[v2 + 9]), v18 == 0x7FFFFFFF))
      {
        v11 = -1;
      }

      else
      {
        v19 = v15 + 140;
        v11 = v17 + *(v15 + 35);
        v12 = v18 + *(v19 + 4);
      }
    }

    v13 = v12 < v10;
    v6 = v11 == v9;
    v14 = v11 < v9;
    if (!v6)
    {
      v13 = v14;
    }

    v2 += 6;
  }

  while (v13);
  v20 = &a1[v2];
  if (v2 == 6)
  {
    do
    {
      if (v20 >= a2)
      {
        break;
      }

      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v27 = -1;
        v28 = 0x7FFFFFFF;
      }

      else
      {
        v27 = *(a2 - 11);
        v28 = 0x7FFFFFFF;
        if (v27 != -1)
        {
          v32 = *(a2 - 10);
          if (v32 == 0x7FFFFFFF)
          {
            v27 = -1;
          }

          else
          {
            v27 += *(a2 - 13);
            v28 = v32 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v29 = v28 < v10;
      v6 = v27 == v9;
      v30 = v27 < v9;
      if (!v6)
      {
        v29 = v30;
      }
    }

    while (!v29);
  }

  else
  {
    do
    {
      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v21 = -1;
        v22 = 0x7FFFFFFF;
      }

      else
      {
        v21 = *(a2 - 11);
        v22 = 0x7FFFFFFF;
        if (v21 != -1)
        {
          v26 = *(a2 - 10);
          if (v26 == 0x7FFFFFFF)
          {
            v21 = -1;
          }

          else
          {
            v21 += *(a2 - 13);
            v22 = v26 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v23 = v22 < v10;
      v6 = v21 == v9;
      v24 = v21 < v9;
      if (!v6)
      {
        v23 = v24;
      }
    }

    while (!v23);
  }

  if (v20 >= a2)
  {
    v33 = &a1[v2];
  }

  else
  {
    v33 = &a1[v2];
    v34 = a2;
    do
    {
      v63 = *(v33 + 32);
      v64 = *(v33 + 48);
      *v65 = *(v33 + 64);
      *&v65[16] = *(v33 + 80);
      v61 = *v33;
      v62 = *(v33 + 16);
      v35 = v34[1];
      *v33 = *v34;
      *(v33 + 16) = v35;
      v37 = v34[3];
      v36 = v34[4];
      v38 = v34[2];
      *(v33 + 76) = *(v34 + 76);
      *(v33 + 48) = v37;
      *(v33 + 64) = v36;
      *(v33 + 32) = v38;
      *v34 = v61;
      v34[1] = v62;
      *(v34 + 76) = *&v65[12];
      v34[3] = v64;
      v34[4] = *v65;
      v34[2] = v63;
      do
      {
        if (*(v33 + 140) == -1 || *(v33 + 144) == 0x7FFFFFFF)
        {
          v39 = -1;
          v40 = 0x7FFFFFFF;
        }

        else
        {
          v39 = *(v33 + 148);
          v40 = 0x7FFFFFFF;
          if (v39 != -1)
          {
            v44 = *(v33 + 152);
            if (v44 == 0x7FFFFFFF)
            {
              v39 = -1;
            }

            else
            {
              v39 += *(v33 + 140);
              v40 = v44 + *(v33 + 144);
            }
          }
        }

        v33 += 96;
        v41 = v40 < v10;
        v6 = v39 == v9;
        v42 = v39 < v9;
        if (!v6)
        {
          v41 = v42;
        }
      }

      while (v41);
      do
      {
        if (*(v34 - 13) == -1 || *(v34 - 12) == 0x7FFFFFFF)
        {
          v45 = -1;
          v46 = 0x7FFFFFFF;
        }

        else
        {
          v45 = *(v34 - 11);
          v46 = 0x7FFFFFFF;
          if (v45 != -1)
          {
            v50 = *(v34 - 10);
            if (v50 == 0x7FFFFFFF)
            {
              v45 = -1;
            }

            else
            {
              v45 += *(v34 - 13);
              v46 = v50 + *(v34 - 12);
            }
          }
        }

        v34 -= 6;
        v47 = v46 < v10;
        v6 = v45 == v9;
        v48 = v45 < v9;
        if (!v6)
        {
          v47 = v48;
        }
      }

      while (!v47);
    }

    while (v33 < v34);
  }

  v51 = (v33 - 96);
  if ((v33 - 96) != a1)
  {
    v52 = *(v33 - 80);
    *a1 = *v51;
    a1[1] = v52;
    v53 = *(v33 - 64);
    v54 = *(v33 - 48);
    v55 = *(v33 - 32);
    *(a1 + 76) = *(v33 - 20);
    a1[3] = v54;
    a1[4] = v55;
    a1[2] = v53;
  }

  *v51 = v59;
  *(v33 - 80) = *v60;
  *(v33 - 68) = *&v60[12];
  *(v33 - 52) = v3;
  *(v33 - 44) = v4;
  *(v33 - 40) = v5;
  *(v33 - 20) = v58;
  *(v33 - 36) = v57;
  return v33 - 96;
}

BOOL sub_109BEE4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_109A5A4(a1, (a1 + 96), (a2 - 96));
        return 1;
      case 4:
        sub_109AB04(a1, a1 + 96, a1 + 192, a2 - 96);
        return 1;
      case 5:
        sub_109AE80(a1, a1 + 96, a1 + 192, a1 + 288, a2 - 96);
        return 1;
    }

LABEL_14:
    v6 = (a1 + 192);
    sub_109A5A4(a1, (a1 + 96), (a1 + 192));
    v9 = a1 + 288;
    if (a1 + 288 == a2)
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v13 = *(v9 + 44) == -1 || *(v9 + 48) == 0x7FFFFFFF;
      if (v13)
      {
        v14 = -1;
        v15 = 0x7FFFFFFF;
        if (v6[11] != -1 && v6[12] != 0x7FFFFFFF)
        {
LABEL_42:
          v19 = v6[13];
          v20 = 0x7FFFFFFF;
          if (v19 != -1)
          {
            v22 = v6[14];
            if (v22 == 0x7FFFFFFF)
            {
              v19 = -1;
            }

            else
            {
              v19 += v6[11];
              v20 = v22 + v6[12];
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v14 = *(v9 + 52);
        v15 = 0x7FFFFFFF;
        if (v14 == -1)
        {
          goto LABEL_32;
        }

        v17 = *(v9 + 56);
        if (v17 == 0x7FFFFFFF)
        {
          v14 = -1;
LABEL_32:
          if (v6[11] != -1 && v6[12] != 0x7FFFFFFF)
          {
            goto LABEL_42;
          }

          goto LABEL_37;
        }

        v14 += *(v9 + 44);
        v15 = v17 + *(v9 + 48);
        if (v6[11] != -1 && v6[12] != 0x7FFFFFFF)
        {
          goto LABEL_42;
        }
      }

LABEL_37:
      v19 = -1;
      v20 = 0x7FFFFFFF;
LABEL_46:
      v23 = v15 < v20;
      v13 = v14 == v19;
      v24 = v14 < v19;
      if (!v13)
      {
        v23 = v24;
      }

      if (v23)
      {
        v54 = *v9;
        *v56 = *(v9 + 16);
        *&v56[12] = *(v9 + 28);
        v25 = *(v9 + 44);
        v26 = *(v9 + 52);
        v27 = *(v9 + 56);
        v52 = *(v9 + 60);
        v53 = *(v9 + 76);
        v28 = v25 == -1 || HIDWORD(v25) == 0x7FFFFFFF;
        v29 = v28 || v26 == -1;
        v30 = !v29;
        v31 = v30 && v27 != 0x7FFFFFFF;
        v32 = v31 ? v26 + v25 : -1;
        v33 = v10;
        do
        {
          v37 = a1 + v33;
          v38 = *(a1 + v33 + 240);
          *(v37 + 320) = *(a1 + v33 + 224);
          *(v37 + 336) = v38;
          *(v37 + 352) = *(a1 + v33 + 256);
          v39 = *(a1 + v33 + 208);
          *(v37 + 288) = *(a1 + v33 + 192);
          *(v37 + 304) = v39;
          *(a1 + v33 + 364) = *(a1 + v33 + 268);
          if (v33 == -192)
          {
            v12 = a1;
            goto LABEL_17;
          }

          v34 = -1;
          v35 = 0x7FFFFFFF;
          if (*(v37 + 140) != -1 && *(v37 + 144) != 0x7FFFFFFF)
          {
            v34 = *(a1 + v33 + 148);
            if (v34 != -1)
            {
              v40 = *(a1 + v33 + 152);
              if (v40 == 0x7FFFFFFF)
              {
                v34 = -1;
              }

              else
              {
                v34 += *(v37 + 140);
                v35 = v40 + *(v37 + 144);
              }
            }
          }

          v36 = v31 & (v27 + HIDWORD(v25) < v35);
          if (v32 != v34)
          {
            v36 = v32 < v34;
          }

          v33 -= 96;
        }

        while ((v36 & 1) != 0);
        v12 = a1 + v33 + 288;
LABEL_17:
        *v12 = v54;
        *(v12 + 16) = *v56;
        *(v12 + 28) = *&v56[12];
        *(v12 + 60) = v52;
        *(v12 + 44) = v25;
        *(v12 + 52) = v26;
        *(v12 + 56) = v27;
        ++v11;
        *(v12 + 76) = v53;
        if (v11 == 8)
        {
          return v9 + 96 == a2;
        }
      }

      v6 = v9;
      v10 += 96;
      v9 += 96;
      if (v9 == a2)
      {
        return 1;
      }
    }
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v3 = -1;
  v4 = 0x7FFFFFFF;
  if (*(a2 - 52) != -1 && *(a2 - 48) != 0x7FFFFFFF)
  {
    v3 = *(a2 - 44);
    if (v3 != -1)
    {
      v5 = *(a2 - 40);
      if (v5 == 0x7FFFFFFF)
      {
        v3 = -1;
      }

      else
      {
        v3 += *(a2 - 52);
        v4 = v5 + *(a2 - 48);
      }
    }
  }

  v42 = -1;
  v43 = 0x7FFFFFFF;
  if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
  {
    v42 = *(a1 + 52);
    if (v42 != -1)
    {
      v44 = *(a1 + 56);
      if (v44 == 0x7FFFFFFF)
      {
        v42 = -1;
      }

      else
      {
        v42 += *(a1 + 44);
        v43 = v44 + *(a1 + 48);
      }
    }
  }

  v45 = v4 < v43;
  v13 = v3 == v42;
  v46 = v3 < v42;
  if (!v13)
  {
    v45 = v46;
  }

  if (v45)
  {
    v47 = (a2 - 96);
    v58 = *(a1 + 32);
    v59 = *(a1 + 48);
    *v60 = *(a1 + 64);
    *&v60[16] = *(a1 + 80);
    v55 = *a1;
    v57 = *(a1 + 16);
    v48 = *(a2 - 80);
    *a1 = *(a2 - 96);
    *(a1 + 16) = v48;
    v50 = *(a2 - 48);
    v49 = *(a2 - 32);
    v51 = *(a2 - 64);
    *(a1 + 76) = *(a2 - 20);
    *(a1 + 48) = v50;
    *(a1 + 64) = v49;
    *(a1 + 32) = v51;
    v47[4] = *v60;
    *(v47 + 76) = *&v60[12];
    v47[2] = v58;
    v47[3] = v59;
    result = 1;
    *v47 = v55;
    v47[1] = v57;
    return result;
  }

  return 1;
}

__int128 *sub_109C34C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 97)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 96 * v10);
      do
      {
        sub_109C788(a1, a4, v9, v12);
        v12 -= 6;
        --v11;
      }

      while (v11);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 6)
      {
        v14 = *(i + 11) == -1 || *(i + 12) == 0x7FFFFFFF;
        if (v14)
        {
          v15 = -1;
          v16 = 0x7FFFFFFF;
          if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
          {
LABEL_31:
            v20 = *(a1 + 52);
            v21 = 0x7FFFFFFF;
            if (v20 != -1)
            {
              v23 = *(a1 + 56);
              if (v23 == 0x7FFFFFFF)
              {
                v20 = -1;
              }

              else
              {
                v20 += *(a1 + 44);
                v21 = v23 + *(a1 + 48);
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v15 = *(i + 13);
          v16 = 0x7FFFFFFF;
          if (v15 == -1)
          {
            goto LABEL_21;
          }

          v18 = *(i + 14);
          if (v18 == 0x7FFFFFFF)
          {
            v15 = -1;
LABEL_21:
            if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }

          v15 += *(i + 11);
          v16 = v18 + *(i + 12);
          if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v20 = -1;
        v21 = 0x7FFFFFFF;
LABEL_35:
        v24 = v16 < v21;
        v14 = v15 == v20;
        v25 = v15 < v20;
        if (!v14)
        {
          v24 = v25;
        }

        if (v24)
        {
          v63 = i[2];
          v65 = i[3];
          *v67 = i[4];
          *&v67[16] = i[5];
          v59 = *i;
          v61 = i[1];
          v26 = *(a1 + 16);
          *i = *a1;
          i[1] = v26;
          v28 = *(a1 + 48);
          v27 = *(a1 + 64);
          v29 = *(a1 + 32);
          *(i + 76) = *(a1 + 76);
          i[3] = v28;
          i[4] = v27;
          i[2] = v29;
          *(a1 + 64) = *v67;
          *(a1 + 76) = *&v67[12];
          *(a1 + 32) = v63;
          *(a1 + 48) = v65;
          *a1 = v59;
          *(a1 + 16) = v61;
          sub_109C788(a1, a4, v9, a1);
        }
      }
    }

    if (v8 >= 97)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 5);
      do
      {
        while (2)
        {
          v36 = 0;
          v64 = *(a1 + 32);
          v66 = *(a1 + 48);
          *v68 = *(a1 + 64);
          *&v68[16] = *(a1 + 80);
          v37 = a1;
          v60 = *a1;
          v62 = *(a1 + 16);
          do
          {
            v42 = &v37[6 * v36];
            v43 = (v42 + 24);
            v44 = (2 * v36) | 1;
            v36 = 2 * v36 + 2;
            if (v36 >= v30)
            {
              v36 = v44;
              goto LABEL_48;
            }

            if (v42[35] == -1 || v42[36] == 0x7FFFFFFF)
            {
              v46 = -1;
              v47 = 0x7FFFFFFF;
              if (v42[59] != -1 && v42[60] != 0x7FFFFFFF)
              {
LABEL_73:
                v51 = v42[61];
                v52 = 0x7FFFFFFF;
                if (v51 != -1)
                {
                  v54 = v42[62];
                  if (v54 == 0x7FFFFFFF)
                  {
                    v51 = -1;
                  }

                  else
                  {
                    v51 += v42[59];
                    v52 = v54 + v42[60];
                  }
                }

                goto LABEL_77;
              }
            }

            else
            {
              v46 = v42[37];
              v47 = 0x7FFFFFFF;
              if (v46 == -1)
              {
                goto LABEL_63;
              }

              v49 = v42[38];
              if (v49 == 0x7FFFFFFF)
              {
                v46 = -1;
LABEL_63:
                if (v42[59] != -1 && v42[60] != 0x7FFFFFFF)
                {
                  goto LABEL_73;
                }

                goto LABEL_68;
              }

              v46 += v42[35];
              v47 = v49 + v42[36];
              if (v42[59] != -1 && v42[60] != 0x7FFFFFFF)
              {
                goto LABEL_73;
              }
            }

LABEL_68:
            v51 = -1;
            v52 = 0x7FFFFFFF;
LABEL_77:
            v55 = v47 < v52;
            v14 = v46 == v51;
            v56 = v46 < v51;
            if (!v14)
            {
              v55 = v56;
            }

            v57 = (v42 + 48);
            if (v55)
            {
              v43 = v57;
            }

            else
            {
              v36 = v44;
            }

LABEL_48:
            v38 = v43[1];
            *v37 = *v43;
            v37[1] = v38;
            v39 = v43[2];
            v40 = v43[3];
            v41 = v43[4];
            *(v37 + 76) = *(v43 + 76);
            v37[3] = v40;
            v37[4] = v41;
            v37[2] = v39;
            v37 = v43;
          }

          while (v36 <= (v30 - 2) / 2);
          v6 -= 6;
          if (v43 != v6)
          {
            v31 = v6[1];
            *v43 = *v6;
            v43[1] = v31;
            v32 = v6[2];
            v33 = v6[3];
            v34 = v6[4];
            *(v43 + 76) = *(v6 + 76);
            v43[3] = v33;
            v43[4] = v34;
            v43[2] = v32;
            v6[2] = v64;
            v6[3] = v66;
            v6[4] = *v68;
            *(v6 + 76) = *&v68[12];
            *v6 = v60;
            v6[1] = v62;
            sub_109CB78(a1, (v43 + 6), a4, 0xAAAAAAAAAAAAAAABLL * ((v43 - a1 + 96) >> 5));
            v35 = v30-- <= 2;
            if (v35)
            {
              return i;
            }

            continue;
          }

          break;
        }

        *v43 = v60;
        v43[1] = v62;
        *(v43 + 76) = *&v68[12];
        v43[3] = v66;
        v43[4] = *v68;
        v43[2] = v64;
        v35 = v30-- <= 2;
      }

      while (!v35);
    }

    return i;
  }

  return a3;
}

__n128 sub_109C788(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 5)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - a1) >> 5)) | 1;
  v6 = (a1 + 96 * v5);
  if (0x5555555555555556 * ((a4 - a1) >> 5) + 2 < a3)
  {
    v7 = 0x7FFFFFFF;
    v8 = *(v6 + 11) == -1 || *(v6 + 12) == 0x7FFFFFFF;
    if (!v8)
    {
      v9 = *(v6 + 13);
      if (v9 == -1)
      {
        goto LABEL_11;
      }

      v10 = *(v6 + 14);
      if (v10 != 0x7FFFFFFF)
      {
        v9 += *(v6 + 11);
        v7 = v10 + *(v6 + 12);
        v11 = 0x7FFFFFFF;
        if (*(v6 + 35) == -1 || *(v6 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_23;
        }

LABEL_15:
        v13 = *(v6 + 37);
        if (v13 == -1)
        {
LABEL_24:
          v16 = v7 < v11;
          v8 = v9 == v13;
          v17 = v9 < v13;
          if (!v8)
          {
            v16 = v17;
          }

          v18 = !v16;
          v19 = 96;
          if (v18)
          {
            v19 = 0;
          }

          v6 = (v6 + v19);
          if (!v18)
          {
            v5 = 0x5555555555555556 * ((a4 - a1) >> 5) + 2;
          }

          goto LABEL_31;
        }

        v14 = *(v6 + 38);
        if (v14 != 0x7FFFFFFF)
        {
          v13 += *(v6 + 35);
          v11 = v14 + *(v6 + 36);
          goto LABEL_24;
        }

LABEL_23:
        v13 = -1;
        goto LABEL_24;
      }
    }

    v9 = -1;
LABEL_11:
    v11 = 0x7FFFFFFF;
    if (*(v6 + 35) == -1 || *(v6 + 36) == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

LABEL_31:
  v20 = 0x7FFFFFFF;
  if (*(v6 + 11) != -1 && *(v6 + 12) != 0x7FFFFFFF)
  {
    v22 = *(v6 + 13);
    if (v22 == -1)
    {
      goto LABEL_38;
    }

    v23 = *(v6 + 14);
    if (v23 != 0x7FFFFFFF)
    {
      v22 += *(v6 + 11);
      v20 = v23 + *(v6 + 12);
      v24 = -1;
      v25 = 0x7FFFFFFF;
      if (*(a4 + 11) == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }
  }

  v22 = -1;
LABEL_38:
  v24 = -1;
  v25 = 0x7FFFFFFF;
  if (*(a4 + 11) == -1)
  {
    goto LABEL_46;
  }

LABEL_39:
  if (*(a4 + 12) != 0x7FFFFFFF)
  {
    v24 = *(a4 + 13);
    if (v24 != -1)
    {
      v26 = *(a4 + 14);
      if (v26 == 0x7FFFFFFF)
      {
        v24 = -1;
      }

      else
      {
        v24 += *(a4 + 11);
        v25 = v26 + *(a4 + 12);
      }
    }
  }

LABEL_46:
  v27 = v20 < v25;
  v8 = v22 == v24;
  v28 = v22 < v24;
  if (!v8)
  {
    v27 = v28;
  }

  if (!v27)
  {
    v67 = *a4;
    *v68 = a4[1];
    *&v68[12] = *(a4 + 28);
    v29 = *(a4 + 44);
    v30 = *(a4 + 13);
    v31 = *(a4 + 14);
    v65 = *(a4 + 60);
    v66 = *(a4 + 76);
    v34 = v29 == -1 || HIDWORD(v29) == 0x7FFFFFFF || v30 == -1 || v31 == 0x7FFFFFFF;
    v35 = v30 + v29;
    v36 = v31 + HIDWORD(v29);
    if (v34)
    {
      v36 = 0x7FFFFFFF;
      v35 = -1;
    }

    while (1)
    {
      v41 = a4;
      a4 = v6;
      v42 = v6[1];
      *v41 = *v6;
      v41[1] = v42;
      v43 = v6[2];
      v44 = v6[3];
      v45 = v6[4];
      *(v41 + 76) = *(v6 + 76);
      v41[3] = v44;
      v41[4] = v45;
      v41[2] = v43;
      if (v4 < v5)
      {
LABEL_115:
        *a4 = v67;
        a4[1] = *v68;
        *(a4 + 28) = *&v68[12];
        *(a4 + 44) = v29;
        *(a4 + 13) = v30;
        *(a4 + 14) = v31;
        result = v65;
        *(a4 + 60) = v65;
        *(a4 + 76) = v66;
        return result;
      }

      v46 = (2 * v5) | 1;
      v6 = (a1 + 96 * v46);
      v5 = 2 * v5 + 2;
      if (v5 >= a3)
      {
        v5 = v46;
        if (*(v6 + 11) != -1 && *(v6 + 12) != 0x7FFFFFFF)
        {
          goto LABEL_106;
        }

        goto LABEL_60;
      }

      if (*(v6 + 11) == -1 || *(v6 + 12) == 0x7FFFFFFF)
      {
        v48 = -1;
        v49 = 0x7FFFFFFF;
        if (*(v6 + 35) == -1 || *(v6 + 36) == 0x7FFFFFFF)
        {
LABEL_92:
          v51 = -1;
          v52 = 0x7FFFFFFF;
          goto LABEL_94;
        }
      }

      else
      {
        v48 = *(v6 + 13);
        v49 = 0x7FFFFFFF;
        if (v48 == -1)
        {
          goto LABEL_87;
        }

        v55 = *(v6 + 14);
        if (v55 == 0x7FFFFFFF)
        {
          v48 = -1;
LABEL_87:
          if (*(v6 + 35) == -1 || *(v6 + 36) == 0x7FFFFFFF)
          {
            goto LABEL_92;
          }

          goto LABEL_75;
        }

        v48 += *(v6 + 11);
        v49 = v55 + *(v6 + 12);
        if (*(v6 + 35) == -1 || *(v6 + 36) == 0x7FFFFFFF)
        {
          goto LABEL_92;
        }
      }

LABEL_75:
      v51 = *(v6 + 37);
      v52 = 0x7FFFFFFF;
      if (v51 != -1)
      {
        v53 = *(v6 + 38);
        if (v53 == 0x7FFFFFFF)
        {
          v51 = -1;
        }

        else
        {
          v51 += *(v6 + 35);
          v52 = v53 + *(v6 + 36);
        }
      }

LABEL_94:
      v57 = v49 < v52;
      v8 = v48 == v51;
      v58 = v48 < v51;
      if (!v8)
      {
        v57 = v58;
      }

      v59 = !v57;
      if (v57)
      {
        v60 = 96;
      }

      else
      {
        v60 = 0;
      }

      v6 = (v6 + v60);
      if (v59)
      {
        v5 = v46;
      }

      if (*(v6 + 11) != -1 && *(v6 + 12) != 0x7FFFFFFF)
      {
LABEL_106:
        v37 = *(v6 + 13);
        v38 = 0x7FFFFFFF;
        if (v37 != -1)
        {
          v62 = *(v6 + 14);
          if (v62 == 0x7FFFFFFF)
          {
            v37 = -1;
          }

          else
          {
            v37 += *(v6 + 11);
            v38 = v62 + *(v6 + 12);
          }
        }

        goto LABEL_61;
      }

LABEL_60:
      v37 = -1;
      v38 = 0x7FFFFFFF;
LABEL_61:
      v39 = v38 < v36;
      v8 = v37 == v35;
      v40 = v37 < v35;
      if (!v8)
      {
        v39 = v40;
      }

      if (v39)
      {
        goto LABEL_115;
      }
    }
  }

  return result;
}