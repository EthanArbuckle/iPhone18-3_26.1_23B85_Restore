unint64_t sub_718B5C(void *a1, void *a2)
{
  v3 = (a1 + 120);
  if (a1[123])
  {
    v5 = a1[122];
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

    a1[122] = 0;
    v7 = a1[121];
    if (v7)
    {
      bzero(*v3, 8 * v7);
    }

    a1[123] = 0;
  }

  result = sub_4D1DC0(a2);
  if (result)
  {
    v9 = result;
    for (i = 0; i != v9; ++i)
    {
      v11 = sub_4D1F50(a2, i);
      v12 = *(v11 + 36);
      LODWORD(v13[0]) = *(v11 + 32);
      WORD2(v13[0]) = v12;
      BYTE6(v13[0]) = (v12 & 0x20000000) == 0;
      v13[2] = v13;
      result = sub_71E858(v3, v13);
      *(result + 24) = i;
    }
  }

  return result;
}

void sub_718C4C(uint64_t a1, int **a2, int ***a3, uint64_t a4, double a5)
{
  *(a4 + 8) = *a4;
  v6 = *a3;
  if (v6 == a3[1])
  {
    return;
  }

  if (fabs(sub_70E16C(a1, a2, v6, a5)) <= *(a1 + 1000))
  {
    if (0xCCCCCCCCCCCCCCCDLL * (a3[1] - *a3) < 2 || (v13 = sub_605E3C(a3, 1uLL), fabs(sub_70E16C(a1, a2, v13, v14)) > *(a1 + 1016)))
    {
      v16 = *(a4 + 8);
      v15 = *(a4 + 16);
      if (v16 < v15)
      {
        *v16 = 0;
        v17 = v16 + 1;
LABEL_72:
        *(a4 + 8) = v17;
        return;
      }

      v18 = *a4;
      v19 = v16 - *a4;
      v20 = (v19 >> 3) + 1;
      if (!(v20 >> 61))
      {
        v21 = v15 - v18;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          goto LABEL_266;
        }

        v65 = (8 * (v19 >> 3));
        *v65 = 0;
        v17 = v65 + 1;
        memcpy(0, v18, v19);
        *a4 = 0;
        *(a4 + 8) = v17;
        *(a4 + 16) = 0;
        if (!v18)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      goto LABEL_265;
    }
  }

  sub_7126C8(a1, a2, a3, a4);
  if (*a4 != *(a4 + 8))
  {
    return;
  }

  v167[0] = a1;
  v167[1] = a2;
  v11 = *a3;
  v10 = a3[1];
  v168[0] = a1;
  v168[1] = a2;
  v168[2] = v167;
  if (v11 == v10)
  {
    v12 = v11;
  }

  else
  {
    while (!sub_721728(v168, v11))
    {
      v11 += 5;
      if (v11 == v10)
      {
        v11 = v10;
        break;
      }
    }

    v12 = v11;
    v11 = *a3;
    v10 = a3[1];
  }

  if (v12 == v10)
  {
    v12 = v11;
  }

  if (v12 == v10)
  {
    v23 = v11;
  }

  else
  {
    v23 = v12;
  }

  v24 = v23[4];
  v25 = v24 & 0xFF000000000000;
  v26 = sub_2B51D8(*(a1 + 888), v24 & 0xFFFFFFFFFFFFLL);
  v27 = (v26 - *v26);
  v28 = *v27;
  if (v25)
  {
    if (v28 < 0x29)
    {
      goto LABEL_61;
    }

    v29 = v27[20];
    if (!v29)
    {
      goto LABEL_61;
    }

    goto LABEL_34;
  }

  if (v28 >= 0x27)
  {
    v29 = v27[19];
    if (v29)
    {
LABEL_34:
      if (*(v26 + v29 + *(v26 + v29)) != 1)
      {
        goto LABEL_61;
      }

      v30 = a3[1] - *a3;
      if (!v30)
      {
        goto LABEL_61;
      }

      v31 = 0;
      v32 = 0;
      v33 = 0xCCCCCCCCCCCCCCCDLL * (v30 >> 3);
      do
      {
        v34 = sub_605E3C(a3, v32);
        v35 = *(v34 + 32);
        v36 = v23[4];
        v39 = v35 == v36;
        v37 = HIDWORD(v35) & 0xFFFFFF;
        v38 = HIDWORD(v36) & 0xFFFFFF;
        v39 = v39 && v37 == v38;
        if (v39)
        {
          goto LABEL_37;
        }

        v40 = v34;
        if (fabs(sub_70E2E0(a1, a2, v34)) > *(a1 + 1000))
        {
          break;
        }

        v41 = v23[4];
        v42 = v41 & 0xFF000000000000;
        v43 = sub_2B51D8(*(a1 + 888), v41 & 0xFFFFFFFFFFFFLL);
        v44 = (v43 - *v43);
        v45 = *v44;
        if (v42)
        {
          if (v45 >= 0x29)
          {
            v46 = v44[20];
            if (v46)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v45 >= 0x27)
        {
          v46 = v44[19];
          if (v46)
          {
LABEL_49:
            v47 = *(v43 + v46 + *(v43 + v46));
            goto LABEL_51;
          }
        }

        v47 = 0;
LABEL_51:
        v48 = *(v40 + 32);
        v49 = v48 & 0xFF000000000000;
        v50 = sub_2B51D8(*(a1 + 888), v48 & 0xFFFFFFFFFFFFLL);
        v51 = (v50 - *v50);
        v52 = *v51;
        if (v49)
        {
          if (v52 >= 0x29)
          {
            v53 = v51[20];
            if (v53)
            {
              goto LABEL_57;
            }
          }
        }

        else if (v52 >= 0x27)
        {
          v53 = v51[19];
          if (v53)
          {
LABEL_57:
            if (v47)
            {
              v54 = *(v50 + v53 + *(v50 + v53));
              if (v54)
              {
                if (v54 - v47 >= *(a1 + 1168))
                {
                  v23 = &(*a3)[v31];
                }
              }
            }
          }
        }

LABEL_37:
        ++v32;
        v31 += 5;
      }

      while (v33 != v32);
    }
  }

LABEL_61:
  v55 = *a3;
  v56 = a3[1] - *a3;
  if (v56)
  {
    v57 = 0;
    v58 = 0xCCCCCCCCCCCCCCCDLL * (v56 >> 3);
    do
    {
      sub_605E3C(a3, v57++);
    }

    while (v58 != v57);
    v55 = *a3;
  }

  v168[0] = 0xCCCCCCCCCCCCCCCDLL * (v23 - v55);
  v59 = sub_70E2E0(a1, a2, v23);
  v60 = *v23;
  v61 = (*v23 - **v23);
  v62 = *v61;
  if (v62 < 0x2F)
  {
    goto LABEL_78;
  }

  if (!v61[23] || (v63 = *(v60 + v61[23]), v63 > 0x2C))
  {
LABEL_75:
    if (v62 >= 0x43 && v61[33])
    {
      v64 = *(v60 + v61[33]);
      goto LABEL_79;
    }

LABEL_78:
    v64 = 0;
    goto LABEL_79;
  }

  if (((1 << v63) & 0x180000105240) == 0)
  {
    if (!*(v60 + v61[23]))
    {
      v64 = *(a1 + 1584);
      goto LABEL_79;
    }

    goto LABEL_75;
  }

  v64 = *(a1 + 1588);
LABEL_79:
  v66 = *a2;
  v67 = (*a2 - **a2);
  v68 = *v67;
  if (v68 < 0x2F)
  {
    goto LABEL_89;
  }

  if (v67[23])
  {
    v69 = *(v66 + v67[23]);
    if (v69 <= 0x2C)
    {
      if (((1 << v69) & 0x180000105240) != 0)
      {
        LODWORD(v70) = *(a1 + 1588);
        goto LABEL_90;
      }

      if (!*(v66 + v67[23]))
      {
        LODWORD(v70) = *(a1 + 1584);
        goto LABEL_90;
      }
    }
  }

  if (v68 < 0x43)
  {
LABEL_89:
    LODWORD(v70) = 0;
  }

  else
  {
    v70 = v67[33];
    if (v67[33])
    {
      LODWORD(v70) = *(v66 + v70);
    }
  }

LABEL_90:
  v71 = fabs(v59);
  if (v64 != v70)
  {
    goto LABEL_132;
  }

  if (v62 < 0x2F)
  {
    LOBYTE(v72) = 0;
    if (v68 < 0x2F)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v72 = v61[23];
    if (v61[23])
    {
      v73 = *(v60 + v72);
      v74 = v73 > 0x2A;
      v72 = 0x50426810004uLL >> v73;
      if (v74)
      {
        LOBYTE(v72) = 0;
      }
    }

    if (v68 < 0x2F)
    {
      goto LABEL_105;
    }
  }

  if (v67[23])
  {
    v75 = *(v66 + v67[23]);
    v74 = v75 > 0x2A;
    v76 = (1 << v75) & 0x50426810004;
    if (!v74 && v76 != 0)
    {
      if ((v72 & 1) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_106;
    }
  }

LABEL_105:
  if (v72)
  {
    goto LABEL_132;
  }

LABEL_106:
  v79 = v62 >= 0x2F && (v78 = v61[23]) != 0 && *(v60 + v78) == 28;
  if (v68 >= 0x2F && v67[23])
  {
    v79 ^= *(v66 + v67[23]) == 28;
  }

  if ((v79 & 1) == 0)
  {
    v80 = sub_312F00(v23);
    if (v80 == sub_312F00(a2))
    {
      v81 = (*v23 - **v23);
      if (*v81 >= 0x9Bu && (v82 = v81[77]) != 0)
      {
        v83 = (*(*v23 + v82 + 1) >> 4) & 1;
      }

      else
      {
        v83 = 0;
      }

      v84 = (*a2 - **a2);
      if (*v84 >= 0x9Bu && (v85 = v84[77]) != 0)
      {
        if (v83 != (*(*a2 + v85 + 1) & 0x10) >> 4)
        {
          goto LABEL_132;
        }
      }

      else if (v83)
      {
        goto LABEL_132;
      }

      if (v71 <= *(a1 + 1048) || v71 <= *(a1 + 1016) && ((v86 = *a3, v87 = a3[1], v88 = v87 - *a3 - 40, v89 = sub_712AA4(a1, a2, v23), v88 < 0x28) ? (v90 = v87 == v86) : (v90 = 1), !v90 || v89))
      {
        sub_7125C0(a4, v168);
        return;
      }
    }
  }

LABEL_132:
  v166 = sub_311544(v23);
  if ((sub_420B0C((a1 + 896), &v166) & 1) == 0)
  {
    v165 = sub_3116D0(a2);
    if ((sub_420B0C((a1 + 896), &v165) & 1) == 0)
    {
      v92 = *a2;
      v94 = **a2;
      v95 = (*a2 - v94);
      v96 = *v95;
      if (*(a2 + 38))
      {
        if (v96 < 0x49 || (v97 = v95[36]) == 0)
        {
LABEL_143:
          v98 = -1;
LABEL_144:
          v99 = -v94;
          v100 = (*v23 - **v23);
          v101 = *v100;
          if (*(v23 + 38))
          {
            if (v101 < 0x4B || (v102 = v100[37]) == 0)
            {
LABEL_151:
              v103 = 0xFFFF;
LABEL_152:
              v104 = v98 + 18000;
              v105 = v98 - 18000;
              if ((v104 >> 5) < 0x465u)
              {
                v105 = v104;
              }

              v106 = v103 - v105;
              if (v106 > 18000)
              {
                v106 -= 36000;
              }

              if (v106 < -17999)
              {
                v106 += 36000;
              }

              v91 = v106 / 100.0;
              v93 = (v92 + v99);
              if (*v93 < 0x2Fu)
              {
                goto LABEL_165;
              }

LABEL_159:
              v107 = v93[23];
              if (v107)
              {
                v108 = *(v92 + v107);
                v74 = v108 > 0x2A;
                v109 = (1 << v108) & 0x50426810004;
                v110 = v74 || v109 == 0;
                if (!v110 && fabs(v91) <= *(a1 + 1016))
                {
                  v141 = *(a4 + 8);
                  v140 = *(a4 + 16);
                  if (v141 < v140)
                  {
                    *v141 = v168[0];
                    v17 = v141 + 1;
                    goto LABEL_72;
                  }

                  v18 = *a4;
                  v154 = v141 - *a4;
                  v155 = (v154 >> 3) + 1;
                  if (!(v155 >> 61))
                  {
                    v156 = v140 - v18;
                    if (v156 >> 2 > v155)
                    {
                      v155 = v156 >> 2;
                    }

                    if (v156 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v157 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v157 = v155;
                    }

                    if (v157)
                    {
                      if (!(v157 >> 61))
                      {
                        operator new();
                      }

LABEL_266:
                      sub_1808();
                    }

                    v159 = (8 * (v154 >> 3));
                    *v159 = v168[0];
                    v17 = v159 + 1;
                    memcpy(0, v18, v154);
                    *a4 = 0;
                    *(a4 + 8) = v17;
                    *(a4 + 16) = 0;
                    if (!v18)
                    {
                      goto LABEL_72;
                    }

LABEL_71:
                    operator delete(v18);
                    goto LABEL_72;
                  }

LABEL_265:
                  sub_1794();
                }
              }

              goto LABEL_165;
            }
          }

          else
          {
            if (v101 < 0x49)
            {
              goto LABEL_151;
            }

            v102 = v100[36];
            if (!v102)
            {
              goto LABEL_151;
            }
          }

          v103 = *(*v23 + v102);
          goto LABEL_152;
        }
      }

      else
      {
        if (v96 < 0x4B)
        {
          goto LABEL_143;
        }

        v97 = v95[37];
        if (!v97)
        {
          goto LABEL_143;
        }
      }

      v98 = *(v92 + v97);
      goto LABEL_144;
    }
  }

  v91 = sub_70E2E0(a1, a2, v23);
  v92 = *a2;
  v93 = (*a2 - **a2);
  if (*v93 >= 0x2Fu)
  {
    goto LABEL_159;
  }

LABEL_165:
  v111 = a3[1] - *a3;
  if (!v111)
  {
    if (v71 <= *(a1 + 1040))
    {
      goto LABEL_205;
    }

    goto LABEL_202;
  }

  v112 = 0;
  v113 = 0;
  v114 = 0xCCCCCCCCCCCCCCCDLL * (v111 >> 3);
  do
  {
    v115 = fabs(sub_70E2E0(a1, a2, &(*a3)[v112]));
    v116 = *(a1 + 1024);
    v117 = *a3;
    v118 = *a2;
    v119 = **a2;
    if (v115 < v116)
    {
LABEL_192:
      v132 = (v118 - v119);
      if (*v132 >= 0x9Bu && (v133 = v132[77]) != 0 && (*(v118 + v133 + 1) & 0x10) != 0 || (v134 = v117[v112], v135 = (v134 - *v134), *v135 < 0x9Bu) || (v136 = v135[77]) == 0 || (*(v134 + v136 + 1) & 0x10) == 0)
      {
        if (sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, v117[v112 + 4] & 0xFFFFFFFFFFFFFFLL))
        {
          operator new();
        }
      }

      goto LABEL_167;
    }

    v120 = v118 - v119;
    v121 = *(v118 - v119);
    if (*(a2 + 38))
    {
      if (v121 >= 0x49)
      {
        v122 = *(v120 + 36);
        if (v122)
        {
          goto LABEL_175;
        }
      }
    }

    else if (v121 >= 0x4B)
    {
      v122 = *(v120 + 37);
      if (v122)
      {
LABEL_175:
        v123 = *(v118 + v122);
        goto LABEL_177;
      }
    }

    v123 = -1;
LABEL_177:
    v124 = v117[v112];
    v125 = (v124 - *v124);
    v126 = *v125;
    if (BYTE6(v117[v112 + 4]))
    {
      if (v126 >= 0x4B)
      {
        v127 = v125[37];
        if (v127)
        {
          goto LABEL_183;
        }
      }
    }

    else if (v126 >= 0x49)
    {
      v127 = v125[36];
      if (v127)
      {
LABEL_183:
        v128 = *(v124 + v127);
        goto LABEL_185;
      }
    }

    v128 = 0xFFFF;
LABEL_185:
    v129 = v123 + 18000;
    v130 = v123 - 18000;
    if ((v129 >> 5) < 0x465u)
    {
      v130 = v129;
    }

    v131 = v128 - v130;
    if (v131 > 18000)
    {
      v131 -= 36000;
    }

    if (v131 < -17999)
    {
      v131 += 36000;
    }

    if (fabs(v131 / 100.0) < v116)
    {
      goto LABEL_192;
    }

LABEL_167:
    ++v113;
    v112 += 5;
  }

  while (v114 != v113);
  if (v71 <= *(a1 + 1040))
  {
LABEL_205:
    v138 = *(a4 + 8);
    v137 = *(a4 + 16);
    if (v138 >= v137)
    {
      v142 = *a4;
      v143 = v138 - *a4;
      v144 = (v143 >> 3) + 1;
      if (v144 >> 61)
      {
        sub_1794();
      }

      v145 = v137 - v142;
      if (v145 >> 2 > v144)
      {
        v144 = v145 >> 2;
      }

      if (v145 >= 0x7FFFFFFFFFFFFFF8)
      {
        v146 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v146 = v144;
      }

      if (v146)
      {
        if (!(v146 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v158 = (8 * (v143 >> 3));
      *v158 = v168[0];
      v139 = v158 + 1;
      memcpy(0, v142, v143);
      *a4 = 0;
      *(a4 + 8) = v139;
      *(a4 + 16) = 0;
      if (v142)
      {
        operator delete(v142);
      }
    }

    else
    {
      *v138 = v168[0];
      v139 = v138 + 1;
    }

    *(a4 + 8) = v139;
    return;
  }

LABEL_202:
  v166 = sub_3116D0(a2);
  if (sub_420B0C((a1 + 896), &v166))
  {
    v166 = 0;
    sub_7125C0(a4, &v166);
    return;
  }

  if (v71 <= *(a1 + 1064) && (sub_70EB5C(a1, a2, a3, v168[0]) & 1) == 0)
  {
    sub_7125C0(a4, v168);
    return;
  }

  v147 = sub_712C28(*a3, a3[1], a2);
  v148 = 0xCCCCCCCCCCCCCCCDLL * (v147 - *a3);
  v166 = v148;
  v149 = sub_6DF738(a2, v147);
  v165 = a1;
  if (0xCCCCCCCCCCCCCCCDLL * (a3[1] - *a3) >= 2 && fabs(v149) <= *(a1 + 1072) && (sub_70EB5C(a1, a2, a3, v148) & 1) == 0 && (*(a1 + 1688) != 1 || (sub_712C9C(&v165, a2, v147) & 1) != 0))
  {
    v163 = &v166;
    goto LABEL_261;
  }

  if (a3[1] - *a3 == 40 && (sub_712C9C(&v165, a2, v23) & 1) != 0)
  {
    goto LABEL_256;
  }

  if (v71 > *(a1 + 1032))
  {
    goto LABEL_263;
  }

  v150 = (*a2 - **a2);
  if (*v150 >= 0x9Bu && (v151 = v150[77]) != 0)
  {
    v152 = *(*a2 + v151);
    if (v152)
    {
      v153 = 1;
    }

    else
    {
      v153 = (v152 >> 1) & 1;
    }
  }

  else
  {
    v153 = 0;
  }

  v160 = (*v23 - **v23);
  if (*v160 < 0x9Bu || (v161 = v160[77]) == 0)
  {
    if ((v153 & 1) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

  v162 = *(*v23 + v161);
  if (v162)
  {
    if (v153)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

  if (v153 != ((v162 >> 1) & 1))
  {
LABEL_255:
    if (sub_70EB5C(a1, a2, a3, v168[0]))
    {
      goto LABEL_263;
    }

LABEL_256:
    v163 = v168;
LABEL_261:
    sub_7125C0(a4, v163);
    return;
  }

LABEL_263:
  if (fabs(sub_70E2E0(a1, a2, *a3)) <= *(a1 + 1000))
  {
    v164 = 0;
    sub_7125C0(a4, &v164);
  }
}

void sub_719E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

double sub_719E74(uint64_t a1, int **a2, int **a3)
{
  v3 = *(a2 + 9);
  if (*(a1 + 912) == 1)
  {
    v4 = a2[1];
    v5 = (v4 - *v4);
    v6 = *v5;
    if ((v3 & 0x20000000) != 0)
    {
      if (v6 < 9 || (v7 = v5[4]) == 0)
      {
LABEL_16:
        v11 = 0;
        v12 = a3[1];
        v13 = (v12 - *v12);
        v14 = *v13;
        if ((*(a3 + 39) & 0x20) == 0)
        {
          goto LABEL_17;
        }

LABEL_13:
        if (v14 < 5)
        {
          goto LABEL_19;
        }

        v15 = v13[2];
        if (!v15)
        {
          goto LABEL_19;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (v6 < 5)
      {
        goto LABEL_16;
      }

      v7 = v5[2];
      if (!v5[2])
      {
        goto LABEL_16;
      }
    }

    v11 = *(v4 + v7);
    v12 = a3[1];
    v13 = (v12 - *v12);
    v14 = *v13;
    if ((*(a3 + 39) & 0x20) == 0)
    {
LABEL_17:
      if (v14 < 9 || (v15 = v13[4]) == 0)
      {
LABEL_19:
        v16 = 0;
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_13;
  }

  v8 = (*a2 - **a2);
  v9 = *v8;
  if ((v3 & 0x20000000) != 0)
  {
    if (v9 < 0x4B || (v10 = v8[37]) == 0)
    {
LABEL_26:
      v11 = -1;
      v12 = *a3;
      v17 = (*a3 - **a3);
      v18 = *v17;
      if ((*(a3 + 39) & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      if (v18 >= 0x49)
      {
        v15 = v17[36];
        if (v15)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (v9 < 0x49)
    {
      goto LABEL_26;
    }

    v10 = v8[36];
    if (!v8[36])
    {
      goto LABEL_26;
    }
  }

  v11 = *(*a2 + v10);
  v12 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if ((*(a3 + 39) & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v18 >= 0x4B)
  {
    v15 = v17[37];
    if (v15)
    {
LABEL_29:
      v16 = *(v12 + v15);
      goto LABEL_31;
    }
  }

LABEL_30:
  v16 = 0xFFFF;
LABEL_31:
  v19 = v11 + 18000;
  v20 = v11 - 18000;
  if ((v19 >> 5) < 0x465u)
  {
    v20 = v19;
  }

  v21 = v16 - v20;
  if (v21 > 18000)
  {
    v21 -= 36000;
  }

  if (v21 < -17999)
  {
    v21 += 36000;
  }

  return v21 / 100.0;
}

uint64_t sub_71A018(uint64_t a1, int **a2, int **a3)
{
  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (*(a2 + 38))
  {
    if (v5 < 0x47)
    {
      return 0;
    }

    v6 = v4[35];
    if (!v6 || (*&v3[v6] & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 < 0x47)
    {
      return 0;
    }

    v7 = v4[35];
    if (!v7 || (*&v3[v7] & 1) == 0)
    {
      return 0;
    }
  }

  v8 = (*a3 - **a3);
  v9 = *v8;
  if (*(a3 + 38))
  {
    if (v9 >= 0x47)
    {
      v10 = v8[35];
      if (v10)
      {
        LODWORD(result) = 2;
        return (*(*a3 + v10) & result) == 0;
      }
    }

    return 1;
  }

  if (v9 < 0x47)
  {
    return 1;
  }

  v10 = v8[35];
  result = 1;
  if (v10)
  {
    return (*(*a3 + v10) & result) == 0;
  }

  return result;
}

uint64_t sub_71A0D0(uint64_t a1, int **a2, int **a3, int **a4)
{
  v8 = sub_31DDCC(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL);
  if (v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0)
  {
    return 0;
  }

  result = sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, a4[4] & 0xFFFFFFFFFFFFFFLL);
  if (!result)
  {
    return result;
  }

  if (sub_31EE90(*(a1 + 888), a2[4] & 0xFFFFFFFFFFFFFFLL, a3[4] & 0xFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v11 = *a2;
  v12 = (*a2 - **a2);
  v13 = *v12;
  if (*(a2 + 38))
  {
    if (v13 < 0x47)
    {
      return 0;
    }

    v14 = v12[35];
    if (!v14)
    {
      return 0;
    }

    v15 = *&v11[v14];
    if ((v15 & 0x141510) != 0)
    {
      goto LABEL_20;
    }

    v16 = 64;
  }

  else
  {
    if (v13 < 0x47)
    {
      return 0;
    }

    v14 = v12[35];
    if (!v14)
    {
      return 0;
    }

    v15 = *&v11[v14];
    if ((v15 & 0xA0A88) != 0)
    {
      goto LABEL_20;
    }

    v16 = 32;
  }

  if ((v16 & v15) == 0)
  {
    return 0;
  }

LABEL_20:
  v17 = *a4;
  v18 = (*a4 - **a4);
  v19 = *v18;
  if (*(a4 + 38))
  {
    if (v19 < 0x47)
    {
      return 0;
    }

    v20 = v18[35];
    if (!v20)
    {
      return 0;
    }

    v21 = *&v17[v20];
    if ((v21 & 0x141510) == 0)
    {
      v22 = 64;
      goto LABEL_29;
    }
  }

  else
  {
    if (v19 < 0x47)
    {
      return 0;
    }

    v23 = v18[35];
    if (!v23)
    {
      return 0;
    }

    v21 = *&v17[v23];
    if ((v21 & 0xA0A88) == 0)
    {
      v22 = 32;
LABEL_29:
      if ((v22 & v21) != 0)
      {
        goto LABEL_30;
      }

      return 0;
    }
  }

LABEL_30:
  v24 = *&v11[v14];
  if (*(a2 + 38))
  {
    if ((v24 & 0x141510) != 0)
    {
      goto LABEL_36;
    }

    v25 = 64;
  }

  else
  {
    if ((v24 & 0xA0A88) != 0)
    {
      goto LABEL_36;
    }

    v25 = 32;
  }

  if ((v25 & v24) == 0)
  {
    return 1;
  }

LABEL_36:
  v26 = *a3;
  v27 = (*a3 - **a3);
  v28 = *v27;
  if (*(a3 + 38))
  {
    if (v28 >= 0x47)
    {
      v29 = v27[35];
      if (v29)
      {
        v30 = *&v26[v29];
        if ((v30 & 0x141510) == 0)
        {
          return (v30 & 0x40) == 0;
        }

        return 0;
      }
    }

    return 1;
  }

  if (v28 < 0x47)
  {
    return 1;
  }

  v31 = v27[35];
  if (!v31)
  {
    return 1;
  }

  v32 = *&v26[v31];
  if ((v32 & 0xA0A88) != 0)
  {
    return 0;
  }

  return (v32 & 0x20) == 0;
}

BOOL sub_71A340(int a1)
{
  result = 1;
  if ((a1 - 21) > 0x2D || ((1 << (a1 - 21)) & 0x250000002281) == 0)
  {
    return a1 == 2;
  }

  return result;
}

BOOL sub_71A37C(int a1)
{
  result = 1;
  if ((a1 - 20) > 0x2D || ((1 << (a1 - 20)) & 0x250000002281) == 0)
  {
    return a1 == 1;
  }

  return result;
}

uint64_t sub_71A3B8(int **a1, int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 8);
    v6 = *v5;
    v7 = (v6 - *v6);
    v8 = *v7;
    if (*(v5 + 38))
    {
      if (v8 > 0x46)
      {
        v9 = v7[35];
        if (v9)
        {
          v3 = 0;
          v10 = *(v6 + v9);
          while (1)
          {
            v12 = (*a1 - **a1);
            v13 = *v12;
            if (*(a1 + 38))
            {
              if (v13 >= 0x47)
              {
                v14 = v12[35];
                if (v14)
                {
                  v15 = 2;
LABEL_17:
                  v11 = (*(*a1 + v14) & v15) != 0;
                  goto LABEL_9;
                }
              }
            }

            else if (v13 >= 0x47)
            {
              v14 = v12[35];
              if (v14)
              {
                v15 = 1;
                goto LABEL_17;
              }
            }

            v11 = 0;
LABEL_9:
            v3 += v11 ^ ((v10 & 2) == 0);
            a1 += 5;
            if (a1 == a2)
            {
              return v3;
            }
          }
        }

        v3 = 0;
        while (1)
        {
          v28 = (*a1 - **a1);
          v29 = *v28;
          if (*(a1 + 38))
          {
            break;
          }

          if (v29 < 0x47)
          {
            goto LABEL_44;
          }

          v30 = v28[35];
          v27 = 1;
          if (v30)
          {
            goto LABEL_52;
          }

LABEL_45:
          v3 += v27;
          a1 += 5;
          if (a1 == a2)
          {
            return v3;
          }
        }

        if (v29 >= 0x47)
        {
          v30 = v28[35];
          if (v28[35])
          {
            LODWORD(v27) = 2;
LABEL_52:
            v27 = (*(*a1 + v30) & v27) == 0;
            goto LABEL_45;
          }
        }

LABEL_44:
        v27 = 1;
        goto LABEL_45;
      }

      v3 = 0;
      while (1)
      {
        v24 = (*a1 - **a1);
        v25 = *v24;
        if (*(a1 + 38))
        {
          break;
        }

        if (v25 < 0x47)
        {
          goto LABEL_34;
        }

        v26 = v24[35];
        v23 = 1;
        if (v26)
        {
          goto LABEL_42;
        }

LABEL_35:
        v3 += v23;
        a1 += 5;
        if (a1 == a2)
        {
          return v3;
        }
      }

      if (v25 >= 0x47)
      {
        v26 = v24[35];
        if (v24[35])
        {
          LODWORD(v23) = 2;
LABEL_42:
          v23 = (*(*a1 + v26) & v23) == 0;
          goto LABEL_35;
        }
      }

LABEL_34:
      v23 = 1;
      goto LABEL_35;
    }

    v3 = 0;
    while (1)
    {
      v17 = *a1;
      v18 = (*a1 - **a1);
      v19 = *v18;
      if (*(a1 + 38))
      {
        if (v19 >= 0x47)
        {
          v20 = v18[35];
          if (v20)
          {
            v21 = (*(v17 + v20) & 2) != 0;
            if (v8 >= 0x47)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v19 >= 0x47)
      {
        v22 = v18[35];
        if (v22)
        {
          v21 = (*(v17 + v22) & 1) != 0;
          if (v8 >= 0x47)
          {
            goto LABEL_31;
          }

          goto LABEL_19;
        }
      }

      v21 = 0;
      if (v8 >= 0x47)
      {
LABEL_31:
        v16 = v7[35];
        if (v7[35])
        {
          LODWORD(v16) = *(v6 + v16) & 1;
        }

        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v16) = 0;
LABEL_20:
      v3 += v21 ^ v16 ^ 1;
      a1 += 5;
      if (a1 == a2)
      {
        return v3;
      }
    }
  }

  return 0;
}

void *sub_71A5FC(void *a1)
{
  v2 = a1[457];
  if (v2)
  {
    a1[458] = v2;
    operator delete(v2);
  }

  v3 = a1[454];
  if (v3)
  {
    a1[455] = v3;
    operator delete(v3);
  }

  v4 = a1[447];
  if (v4)
  {
    a1[448] = v4;
    operator delete(v4);
  }

  v5 = a1[444];
  if (v5)
  {
    a1[445] = v5;
    operator delete(v5);
  }

  sub_5135D0(a1 + 162);
  return a1;
}

uint64_t sub_71A668(int **a1, int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 8);
    v6 = *v5;
    v7 = (v6 - *v6);
    v8 = *v7;
    if (*(v5 + 38))
    {
      if (v8 > 0x9A)
      {
        v9 = v7[77];
        if (v9)
        {
          v3 = 0;
          v10 = *(v6 + v9);
          while (1)
          {
            v12 = (*a1 - **a1);
            v13 = *v12;
            if (*(a1 + 38))
            {
              if (v13 >= 0x9B)
              {
                v14 = v12[77];
                if (v14)
                {
                  v15 = 2;
LABEL_17:
                  v11 = (*(*a1 + v14) & v15) != 0;
                  goto LABEL_9;
                }
              }
            }

            else if (v13 >= 0x9B)
            {
              v14 = v12[77];
              if (v14)
              {
                v15 = 1;
                goto LABEL_17;
              }
            }

            v11 = 0;
LABEL_9:
            v3 += v11 ^ ((v10 & 2) == 0);
            a1 += 5;
            if (a1 == a2)
            {
              return v3;
            }
          }
        }

        v3 = 0;
        while (1)
        {
          v29 = (*a1 - **a1);
          v30 = *v29;
          if (*(a1 + 38))
          {
            break;
          }

          if (v30 < 0x9B)
          {
            goto LABEL_44;
          }

          v31 = v29[77];
          v32 = 1;
          v28 = 1;
          if (v31)
          {
            goto LABEL_52;
          }

LABEL_45:
          v3 += v28;
          a1 += 5;
          if (a1 == a2)
          {
            return v3;
          }
        }

        if (v30 >= 0x9B)
        {
          v31 = v29[77];
          if (v31)
          {
            v32 = 2;
LABEL_52:
            v28 = (*(*a1 + v31) & v32) == 0;
            goto LABEL_45;
          }
        }

LABEL_44:
        v28 = 1;
        goto LABEL_45;
      }

      v3 = 0;
      while (1)
      {
        v24 = (*a1 - **a1);
        v25 = *v24;
        if (*(a1 + 38))
        {
          break;
        }

        if (v25 < 0x9B)
        {
          goto LABEL_34;
        }

        v26 = v24[77];
        v27 = 1;
        v23 = 1;
        if (v26)
        {
          goto LABEL_42;
        }

LABEL_35:
        v3 += v23;
        a1 += 5;
        if (a1 == a2)
        {
          return v3;
        }
      }

      if (v25 >= 0x9B)
      {
        v26 = v24[77];
        if (v26)
        {
          v27 = 2;
LABEL_42:
          v23 = (*(*a1 + v26) & v27) == 0;
          goto LABEL_35;
        }
      }

LABEL_34:
      v23 = 1;
      goto LABEL_35;
    }

    v3 = 0;
    while (1)
    {
      v17 = *a1;
      v18 = (*a1 - **a1);
      v19 = *v18;
      if (*(a1 + 38))
      {
        if (v19 >= 0x9B)
        {
          v20 = v18[77];
          if (v20)
          {
            v21 = (*(v17 + v20) & 2) != 0;
            if (v8 >= 0x9B)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v19 >= 0x9B)
      {
        v22 = v18[77];
        if (v22)
        {
          v21 = (*(v17 + v22) & 1) != 0;
          if (v8 >= 0x9B)
          {
            goto LABEL_31;
          }

          goto LABEL_19;
        }
      }

      v21 = 0;
      if (v8 >= 0x9B)
      {
LABEL_31:
        v16 = v7[77];
        if (v7[77])
        {
          LODWORD(v16) = *(v6 + v16) & 1;
        }

        goto LABEL_20;
      }

LABEL_19:
      LODWORD(v16) = 0;
LABEL_20:
      v3 += v21 ^ v16 ^ 1;
      a1 += 5;
      if (a1 == a2)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t *sub_71A8B4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a2 >> 16) & 0xFFFF0000;
  v5 = v4 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = v4 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  if ((v3 & 0xFF000000000000) != 0)
  {
    v8 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v11 = (((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) >> 47)) + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = vcnt_s8(v9);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v11;
    if (v11 >= *&v9)
    {
      v13 = v11 % *&v9;
    }
  }

  else
  {
    v13 = v11 & (*&v9 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  result = *v14;
  if (*v14)
  {
    if (v12.u32[0] < 2uLL)
    {
      v16 = *&v9 - 1;
      while (1)
      {
        v17 = result[1];
        if (v17 == v11)
        {
          if (*(result + 4) == v2)
          {
            v18 = *(result + 10) == WORD2(v2) && *(result + 22) == BYTE6(v2);
            if (v18 && __PAIR64__(*(result + 14), *(result + 6)) == __PAIR64__(WORD2(v3), v3) && *(result + 30) == BYTE6(v3))
            {
              return result;
            }
          }
        }

        else if ((v17 & v16) != v13)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v19 = result[1];
      if (v19 == v11)
      {
        if (*(result + 4) == v2)
        {
          v20 = *(result + 10) == WORD2(v2) && *(result + 22) == BYTE6(v2);
          if (v20 && __PAIR64__(*(result + 14), *(result + 6)) == __PAIR64__(WORD2(v3), v3) && *(result + 30) == BYTE6(v3))
          {
            return result;
          }
        }
      }

      else
      {
        if (v19 >= *&v9)
        {
          v19 %= *&v9;
        }

        if (v19 != v13)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_71AA98(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v5 = v4 + 1;
  }

  v6 = (((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  if ((v3 & 0xFF000000000000) != 0)
  {
    v8 = (v3 >> 16) & 0xFFFF0000 | (v3 << 32);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = ((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v8 ^ (v7 >> 23))) >> 47)) + (v6 << 6) + (v6 >> 2) + 2654435769u;
  v10 = v9 ^ v6;
  v11 = a1[1];
  if (!*&v11)
  {
    goto LABEL_43;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = v9 ^ v6;
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = v10 & (*&v11 - 1);
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_43:
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        if (*(v15 + 4) == v2)
        {
          v17 = *(v15 + 10) == WORD2(v2) && *(v15 + 22) == BYTE6(v2);
          if (v17 && __PAIR64__(*(v15 + 14), *(v15 + 6)) == __PAIR64__(WORD2(v3), v3) && *(v15 + 30) == BYTE6(v3))
          {
            return v15;
          }
        }
      }

      else if ((v16 & (*&v11 - 1)) != v13)
      {
        goto LABEL_43;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v19 = v15[1];
    if (v19 == v10)
    {
      break;
    }

    if (v19 >= *&v11)
    {
      v19 %= *&v11;
    }

    if (v19 != v13)
    {
      goto LABEL_43;
    }

LABEL_30:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  if (*(v15 + 4) != v2)
  {
    goto LABEL_30;
  }

  v20 = *(v15 + 10) == WORD2(v2) && *(v15 + 22) == BYTE6(v2);
  if (!v20 || __PAIR64__(*(v15 + 14), *(v15 + 6)) != __PAIR64__(WORD2(v3), v3) || *(v15 + 30) != BYTE6(v3))
  {
    goto LABEL_30;
  }

  return v15;
}

uint64_t sub_71AEDC(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8(a1 + 824, 2u);
  return a1;
}

void sub_71B020(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

void sub_71B06C(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 5;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v10) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v27 = *(a3 + 8);
        v28 = sub_70E2E0(*(a3 + 8), *a3, v9);
        if (fabs(v28) < fabs(sub_70E2E0(v27, *a3, v10)))
        {
          v36 = *(v10 + 4);
          v32 = *v10;
          v34 = v10[1];
          v29 = *v9;
          v30 = *(v9 + 1);
          *(v10 + 4) = v9[4];
          *v10 = v29;
          v10[1] = v30;
          *v9 = v32;
          *(v9 + 1) = v34;
          v9[4] = v36;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_71B6CC(v10, v10 + 5, v10 + 10, a2 - 5, a3);
      return;
    }

    if (v14 == 5)
    {

      sub_71B820(v10, v10 + 5, v10 + 10, v10 + 15, a2 - 5, a3);
      return;
    }

LABEL_10:
    if (v13 <= 959)
    {
      if (a5)
      {

        sub_71B9D4(v10, a2, a3);
      }

      else
      {

        sub_71BE3C(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_71D4DC(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 5 * (v14 >> 1);
    if (v13 < 0x1401)
    {
      sub_71B4E8(v16, v10, a2 - 5, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_71B4E8(v10, v16, a2 - 5, a3);
      v17 = v10 + 40;
      v18 = 40 * v15;
      v19 = (40 * v15 + a1 - 40);
      sub_71B4E8((a1 + 40), v19, a2 - 10, a3);
      sub_71B4E8((a1 + 80), &v17[v18], a2 - 15, a3);
      sub_71B4E8(v19, v16, &v17[v18], a3);
      v35 = *(a1 + 32);
      v31 = *a1;
      v33 = *(a1 + 16);
      v20 = *v16;
      v21 = *(v16 + 1);
      *(a1 + 32) = v16[4];
      *a1 = v20;
      *(a1 + 16) = v21;
      v16[4] = v35;
      *v16 = v31;
      *(v16 + 1) = v33;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v22 = *(a3 + 8);
    v23 = sub_70E2E0(v22, *a3, (a1 - 40));
    if (fabs(v23) >= fabs(sub_70E2E0(v22, *a3, a1)))
    {
      v10 = sub_71C2D4(a1, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v24 = sub_71CABC(a1, a2, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    v26 = sub_71D26C(a1, v24, a3);
    v10 = (v24 + 40);
    if (sub_71D26C(v24 + 40, a2, a3))
    {
      a4 = -v12;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v26)
    {
LABEL_20:
      sub_71B06C(a1, v24, a3, -v12, a5 & 1);
      v10 = (v24 + 40);
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_71B4E8(v10, v10 + 5, a2 - 5, a3);
}

uint64_t sub_71B4E8(int **a1, int **a2, int **a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = fabs(sub_70E2E0(v8, *a4, a2));
  v10 = fabs(sub_70E2E0(v8, *a4, a1));
  v11 = *(a4 + 8);
  v12 = sub_70E2E0(v11, *a4, a3);
  v13 = sub_70E2E0(v11, *a4, a2);
  v14 = fabs(v12);
  v15 = fabs(v13);
  if (v9 >= v10)
  {
    if (v14 >= v15)
    {
      return 0;
    }

    v21 = *a2;
    v22 = *(a2 + 1);
    v23 = a2[4];
    v24 = a3[4];
    v25 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v25;
    a2[4] = v24;
    a3[4] = v23;
    *a3 = v21;
    *(a3 + 1) = v22;
    v26 = *(a4 + 8);
    v27 = sub_70E2E0(v26, *a4, a2);
    if (fabs(v27) < fabs(sub_70E2E0(v26, *a4, a1)))
    {
      v28 = *a1;
      v29 = *(a1 + 1);
      v30 = a1[4];
      v31 = a2[4];
      v32 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v32;
      a1[4] = v31;
      a2[4] = v30;
      result = 1;
      *a2 = v28;
      *(a2 + 1) = v29;
      return result;
    }
  }

  else
  {
    if (v14 < v15)
    {
      v16 = *a1;
      v17 = *(a1 + 1);
      v18 = a1[4];
      v19 = a3[4];
      v20 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v20;
      a1[4] = v19;
LABEL_9:
      a3[4] = v18;
      result = 1;
      *a3 = v16;
      *(a3 + 1) = v17;
      return result;
    }

    v34 = *a1;
    v35 = *(a1 + 1);
    v36 = a1[4];
    v37 = a2[4];
    v38 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v38;
    a1[4] = v37;
    a2[4] = v36;
    *a2 = v34;
    *(a2 + 1) = v35;
    v39 = *(a4 + 8);
    v40 = sub_70E2E0(v39, *a4, a3);
    if (fabs(v40) < fabs(sub_70E2E0(v39, *a4, a2)))
    {
      v16 = *a2;
      v17 = *(a2 + 1);
      v18 = a2[4];
      v41 = a3[4];
      v42 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v42;
      a2[4] = v41;
      goto LABEL_9;
    }
  }

  return 1;
}

void sub_71B6CC(int **a1, int **a2, int **a3, int **a4, uint64_t a5)
{
  sub_71B4E8(a1, a2, a3, a5);
  v10 = *(a5 + 8);
  v11 = sub_70E2E0(v10, *a5, a4);
  if (fabs(v11) < fabs(sub_70E2E0(v10, *a5, a3)))
  {
    v12 = *a3;
    v13 = *(a3 + 1);
    v14 = a3[4];
    v15 = a4[4];
    v16 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v16;
    a3[4] = v15;
    a4[4] = v14;
    *a4 = v12;
    *(a4 + 1) = v13;
    v17 = *(a5 + 8);
    v18 = sub_70E2E0(v17, *a5, a3);
    if (fabs(v18) < fabs(sub_70E2E0(v17, *a5, a2)))
    {
      v19 = *a2;
      v20 = *(a2 + 1);
      v21 = a2[4];
      v22 = a3[4];
      v23 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v23;
      a2[4] = v22;
      a3[4] = v21;
      *a3 = v19;
      *(a3 + 1) = v20;
      v24 = *(a5 + 8);
      v25 = sub_70E2E0(v24, *a5, a2);
      if (fabs(v25) < fabs(sub_70E2E0(v24, *a5, a1)))
      {
        v26 = *a1;
        v27 = *(a1 + 1);
        v28 = a1[4];
        v29 = a2[4];
        v30 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v30;
        a1[4] = v29;
        a2[4] = v28;
        *a2 = v26;
        *(a2 + 1) = v27;
      }
    }
  }
}

void sub_71B820(int **a1, int **a2, int **a3, int **a4, int **a5, uint64_t a6)
{
  sub_71B6CC(a1, a2, a3, a4, a6);
  v12 = *(a6 + 8);
  v13 = sub_70E2E0(v12, *a6, a5);
  if (fabs(v13) < fabs(sub_70E2E0(v12, *a6, a4)))
  {
    v14 = *a4;
    v15 = *(a4 + 1);
    v16 = a4[4];
    v17 = a5[4];
    v18 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v18;
    a4[4] = v17;
    a5[4] = v16;
    *a5 = v14;
    *(a5 + 1) = v15;
    v19 = *(a6 + 8);
    v20 = sub_70E2E0(v19, *a6, a4);
    if (fabs(v20) < fabs(sub_70E2E0(v19, *a6, a3)))
    {
      v21 = *a3;
      v22 = *(a3 + 1);
      v23 = a3[4];
      v24 = a4[4];
      v25 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v25;
      a3[4] = v24;
      a4[4] = v23;
      *a4 = v21;
      *(a4 + 1) = v22;
      v26 = *(a6 + 8);
      v27 = sub_70E2E0(v26, *a6, a3);
      if (fabs(v27) < fabs(sub_70E2E0(v26, *a6, a2)))
      {
        v28 = *a2;
        v29 = *(a2 + 1);
        v30 = a2[4];
        v31 = a3[4];
        v32 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v32;
        a2[4] = v31;
        a3[4] = v30;
        *a3 = v28;
        *(a3 + 1) = v29;
        v33 = *(a6 + 8);
        v34 = sub_70E2E0(v33, *a6, a2);
        if (fabs(v34) < fabs(sub_70E2E0(v33, *a6, a1)))
        {
          v35 = *a1;
          v36 = *(a1 + 1);
          v37 = a1[4];
          v38 = a2[4];
          v39 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v39;
          a1[4] = v38;
          a2[4] = v37;
          *a2 = v35;
          *(a2 + 1) = v36;
        }
      }
    }
  }
}

void sub_71B9D4(uint64_t a1, int **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = (a1 + 40);
  if ((a1 + 40) == a2)
  {
    return;
  }

  v6 = 0;
  v7 = a1;
  while (2)
  {
    v9 = v4;
    v10 = *(a3 + 8);
    v11 = sub_70E2E0(v10, *a3, v4);
    if (fabs(v11) >= fabs(sub_70E2E0(v10, *a3, v7)))
    {
      goto LABEL_6;
    }

    v12 = *v9;
    v13 = v7[6];
    *v55 = *(v7 + 7);
    *&v55[14] = *(v7 + 70);
    v14 = *(v7 + 78);
    v15 = *(v7 + 79);
    v16 = v6;
    do
    {
      v21 = a1 + v16;
      v22 = *(a1 + v16 + 16);
      *(v21 + 40) = *(a1 + v16);
      *(v21 + 56) = v22;
      *(v21 + 72) = *(a1 + v16 + 32);
      if (!v16)
      {
        v8 = a1;
        goto LABEL_5;
      }

      v23 = *a3;
      if (*(*(a3 + 8) + 912) != 1)
      {
        v28 = (*v23 - **v23);
        v29 = *v28;
        if (*(*a3 + 38))
        {
          if (v29 < 0x49)
          {
            goto LABEL_44;
          }

          v30 = v28[36];
          if (!v30)
          {
            goto LABEL_44;
          }
        }

        else if (v29 < 0x4B || (v30 = v28[37]) == 0)
        {
LABEL_44:
          v31 = -1;
          v36 = (v12 - *v12);
          v37 = *v36;
          if (v14)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v31 = *(*v23 + v30);
        v36 = (v12 - *v12);
        v37 = *v36;
        if (v14)
        {
LABEL_45:
          if (v37 >= 0x4B)
          {
            v34 = v36[37];
            if (v34)
            {
              goto LABEL_47;
            }
          }

LABEL_49:
          v34 = 0xFFFF;
          goto LABEL_50;
        }

LABEL_41:
        if (v37 >= 0x49)
        {
          v34 = v36[36];
          if (v34)
          {
LABEL_47:
            v35 = v12;
            goto LABEL_48;
          }
        }

        goto LABEL_49;
      }

      v24 = v23[1];
      v25 = (v24 - *v24);
      v26 = *v25;
      if (*(*a3 + 38))
      {
        if (v26 < 5)
        {
          goto LABEL_33;
        }

        v27 = v25[2];
        if (!v27)
        {
          goto LABEL_33;
        }
      }

      else if (v26 < 9 || (v27 = v25[4]) == 0)
      {
LABEL_33:
        v31 = 0;
        v32 = (v13 - *v13);
        v33 = *v32;
        if (v14)
        {
LABEL_34:
          if (v33 < 9)
          {
LABEL_37:
            v34 = 0;
            goto LABEL_50;
          }

          v34 = v32[4];
          if (!v34)
          {
            goto LABEL_50;
          }

LABEL_36:
          v35 = v13;
LABEL_48:
          v34 = *(v35 + v34);
          goto LABEL_50;
        }

        goto LABEL_30;
      }

      v31 = *(v24 + v27);
      v32 = (v13 - *v13);
      v33 = *v32;
      if (v14)
      {
        goto LABEL_34;
      }

LABEL_30:
      if (v33 < 5)
      {
        goto LABEL_37;
      }

      v34 = v32[2];
      if (v34)
      {
        goto LABEL_36;
      }

LABEL_50:
      v38 = v31 + 18000;
      v39 = v31 - 18000;
      if ((v38 >> 5) < 0x465u)
      {
        v39 = v38;
      }

      v40 = v34 - v39;
      if (v40 > 18000)
      {
        v40 -= 36000;
      }

      if (v40 < -17999)
      {
        v40 += 36000;
      }

      if (*(*(a3 + 8) + 912))
      {
        v41 = v23[1];
        v42 = (v41 - *v41);
        v43 = *v42;
        if (*(*a3 + 38))
        {
          if (v43 >= 5)
          {
            v44 = v42[2];
            if (!v42[2])
            {
LABEL_69:
              v48 = *(a1 + v16 - 32);
              v49 = (v48 - *v48);
              v50 = *v49;
              if (*(a1 + v16 - 2))
              {
                if (v50 < 9)
                {
                  goto LABEL_9;
                }

                v51 = v49[4];
                if (!v51)
                {
                  goto LABEL_9;
                }
              }

              else if (v50 < 5 || (v51 = v49[2]) == 0)
              {
LABEL_9:
                v17 = 0;
                goto LABEL_10;
              }

LABEL_86:
              v17 = *(v48 + v51);
              goto LABEL_10;
            }

LABEL_67:
            LOWORD(v44) = *(v41 + v44);
            goto LABEL_69;
          }
        }

        else if (v43 >= 9)
        {
          v44 = v42[4];
          if (!v42[4])
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        LOWORD(v44) = 0;
        goto LABEL_69;
      }

      v45 = *v23;
      v46 = (v45 - *v45);
      v47 = *v46;
      if (*(*a3 + 38))
      {
        if (v47 >= 0x49)
        {
          v44 = v46[36];
          if (v46[36])
          {
            goto LABEL_75;
          }
        }
      }

      else if (v47 >= 0x4B)
      {
        v44 = v46[37];
        if (v46[37])
        {
LABEL_75:
          LOWORD(v44) = *(v45 + v44);
          goto LABEL_77;
        }
      }

      LOWORD(v44) = -1;
LABEL_77:
      v48 = *(v21 - 40);
      v52 = (v48 - *v48);
      v53 = *v52;
      if (*(a1 + v16 - 2))
      {
        if (v53 >= 0x4B)
        {
          v51 = v52[37];
          if (v51)
          {
            goto LABEL_86;
          }
        }
      }

      else if (v53 >= 0x49)
      {
        v51 = v52[36];
        if (v51)
        {
          goto LABEL_86;
        }
      }

      v17 = 0xFFFF;
LABEL_10:
      v18 = v44 + 18000;
      v19 = v44 - 18000;
      if ((v18 >> 5) < 0x465u)
      {
        v19 = v18;
      }

      v20 = v17 - v19;
      if (v20 > 18000)
      {
        v20 -= 36000;
      }

      if (v20 < -17999)
      {
        v20 += 36000;
      }

      v16 -= 40;
    }

    while (fabs(v40 / 100.0) < fabs(v20 / 100.0));
    v8 = a1 + v16 + 40;
LABEL_5:
    *v8 = v12;
    *(v8 + 8) = v13;
    *(v8 + 16) = *v55;
    *(v8 + 30) = *&v55[14];
    *(v8 + 38) = v14;
    *(v8 + 39) = v15;
LABEL_6:
    v4 = v9 + 5;
    v6 += 40;
    v7 = v9;
    if (v9 + 5 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_71BE3C(int **a1, int **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 5;
    if (a1 + 5 != a2)
    {
      while (1)
      {
        v6 = v4;
        v7 = *(a3 + 8);
        v8 = sub_70E2E0(v7, *a3, v4);
        if (fabs(v8) < fabs(sub_70E2E0(v7, *a3, v3)))
        {
          break;
        }

LABEL_5:
        v4 = v6 + 5;
        v3 = v6;
        if (v6 + 5 == a2)
        {
          return;
        }
      }

      v9 = *v6;
      v10 = v3[6];
      *v50 = *(v3 + 7);
      *&v50[14] = *(v3 + 70);
      v11 = *(v3 + 78);
      v12 = *(v3 + 79);
      while (1)
      {
        v17 = *(v3 + 1);
        *(v3 + 5) = *v3;
        *(v3 + 7) = v17;
        v3[9] = v3[4];
        v18 = *a3;
        if (*(*(a3 + 8) + 912) != 1)
        {
          v23 = (*v18 - **v18);
          v24 = *v23;
          if (*(*a3 + 38))
          {
            if (v24 < 0x49)
            {
              goto LABEL_42;
            }

            v25 = v23[36];
            if (!v25)
            {
              goto LABEL_42;
            }

LABEL_38:
            v26 = *(*v18 + v25);
            v31 = (v9 - *v9);
            v32 = *v31;
            if (!v11)
            {
              goto LABEL_39;
            }

LABEL_43:
            if (v32 >= 0x4B)
            {
              v29 = v31[37];
              if (v29)
              {
                goto LABEL_45;
              }
            }
          }

          else
          {
            if (v24 >= 0x4B)
            {
              v25 = v23[37];
              if (v25)
              {
                goto LABEL_38;
              }
            }

LABEL_42:
            v26 = -1;
            v31 = (v9 - *v9);
            v32 = *v31;
            if (v11)
            {
              goto LABEL_43;
            }

LABEL_39:
            if (v32 >= 0x49)
            {
              v29 = v31[36];
              if (v29)
              {
LABEL_45:
                v30 = v9;
                goto LABEL_46;
              }
            }
          }

          v29 = 0xFFFF;
          goto LABEL_48;
        }

        v19 = v18[1];
        v20 = (v19 - *v19);
        v21 = *v20;
        if (*(*a3 + 38))
        {
          if (v21 < 5)
          {
            goto LABEL_31;
          }

          v22 = v20[2];
          if (!v22)
          {
            goto LABEL_31;
          }
        }

        else if (v21 < 9 || (v22 = v20[4]) == 0)
        {
LABEL_31:
          v26 = 0;
          v27 = (v10 - *v10);
          v28 = *v27;
          if (v11)
          {
LABEL_32:
            if (v28 < 9)
            {
LABEL_35:
              v29 = 0;
              goto LABEL_48;
            }

            v29 = v27[4];
            if (!v29)
            {
              goto LABEL_48;
            }

LABEL_34:
            v30 = v10;
LABEL_46:
            v29 = *(v30 + v29);
            goto LABEL_48;
          }

          goto LABEL_28;
        }

        v26 = *(v19 + v22);
        v27 = (v10 - *v10);
        v28 = *v27;
        if (v11)
        {
          goto LABEL_32;
        }

LABEL_28:
        if (v28 < 5)
        {
          goto LABEL_35;
        }

        v29 = v27[2];
        if (v29)
        {
          goto LABEL_34;
        }

LABEL_48:
        v33 = v26 + 18000;
        v34 = v26 - 18000;
        if ((v33 >> 5) < 0x465u)
        {
          v34 = v33;
        }

        v35 = v29 - v34;
        if (v35 > 18000)
        {
          v35 -= 36000;
        }

        if (v35 < -17999)
        {
          v35 += 36000;
        }

        if (!*(*(a3 + 8) + 912))
        {
          v44 = *v18;
          v45 = (v44 - *v44);
          v46 = *v45;
          if (*(*a3 + 38))
          {
            if (v46 < 0x49)
            {
              goto LABEL_78;
            }

            v39 = v45[36];
            if (!v45[36])
            {
              goto LABEL_78;
            }

LABEL_74:
            LOWORD(v39) = *(v44 + v39);
            v40 = *(v3 - 5);
            v47 = (v40 - *v40);
            v48 = *v47;
            if (!*(v3 - 2))
            {
              goto LABEL_75;
            }

LABEL_79:
            if (v48 < 0x4B)
            {
              goto LABEL_82;
            }

            v43 = v47[37];
            if (!v43)
            {
              goto LABEL_82;
            }
          }

          else
          {
            if (v46 >= 0x4B)
            {
              v39 = v45[37];
              if (v45[37])
              {
                goto LABEL_74;
              }
            }

LABEL_78:
            LOWORD(v39) = -1;
            v40 = *(v3 - 5);
            v47 = (v40 - *v40);
            v48 = *v47;
            if (*(v3 - 2))
            {
              goto LABEL_79;
            }

LABEL_75:
            if (v48 < 0x49 || (v43 = v47[36]) == 0)
            {
LABEL_82:
              v13 = 0xFFFF;
              goto LABEL_9;
            }
          }

LABEL_81:
          v13 = *(v40 + v43);
          goto LABEL_9;
        }

        v36 = v18[1];
        v37 = (v36 - *v36);
        v38 = *v37;
        if (*(*a3 + 38))
        {
          if (v38 >= 5)
          {
            v39 = v37[2];
            if (!v37[2])
            {
              goto LABEL_58;
            }

LABEL_68:
            LOWORD(v39) = *(v36 + v39);
            v40 = *(v3 - 4);
            v41 = (v40 - *v40);
            v42 = *v41;
            if (*(v3 - 2))
            {
              goto LABEL_59;
            }

            goto LABEL_69;
          }

          LOWORD(v39) = 0;
          v40 = *(v3 - 4);
          v41 = (v40 - *v40);
          v42 = *v41;
          if (*(v3 - 2))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v38 >= 9)
          {
            v39 = v37[4];
            if (!v37[4])
            {
LABEL_58:
              v40 = *(v3 - 4);
              v41 = (v40 - *v40);
              v42 = *v41;
              if (*(v3 - 2))
              {
                goto LABEL_59;
              }

              goto LABEL_69;
            }

            goto LABEL_68;
          }

          LOWORD(v39) = 0;
          v40 = *(v3 - 4);
          v41 = (v40 - *v40);
          v42 = *v41;
          if (*(v3 - 2))
          {
LABEL_59:
            if (v42 >= 9)
            {
              v43 = v41[4];
              if (v43)
              {
                goto LABEL_81;
              }
            }

            goto LABEL_8;
          }
        }

LABEL_69:
        if (v42 >= 5)
        {
          v43 = v41[2];
          if (v43)
          {
            goto LABEL_81;
          }
        }

LABEL_8:
        v13 = 0;
LABEL_9:
        v3 -= 5;
        v14 = v39 + 18000;
        v15 = v39 - 18000;
        if ((v14 >> 5) < 0x465u)
        {
          v15 = v14;
        }

        v16 = v13 - v15;
        if (v16 > 18000)
        {
          v16 -= 36000;
        }

        if (v16 < -17999)
        {
          v16 += 36000;
        }

        if (fabs(v35 / 100.0) >= fabs(v16 / 100.0))
        {
          v3[5] = v9;
          v3[6] = v10;
          *(v3 + 70) = *&v50[14];
          *(v3 + 7) = *v50;
          *(v3 + 78) = v11;
          *(v3 + 79) = v12;
          goto LABEL_5;
        }
      }
    }
  }
}

__int128 *sub_71C2D4(__int128 *a1, int **a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v104 = *a1;
  v105 = v6;
  v106 = *(a1 + 4);
  v7 = a2 - 5;
  v8 = *(a3 + 8);
  v9 = sub_70E2E0(v8, *a3, &v104);
  if (fabs(v9) >= fabs(sub_70E2E0(v8, *a3, v7)))
  {
    v13 = (a1 + 40);
    do
    {
      v10 = v13;
      if (v13 >= v4)
      {
        break;
      }

      v14 = *(a3 + 8);
      v15 = sub_70E2E0(v14, *a3, &v104);
      v16 = sub_70E2E0(v14, *a3, v10);
      v13 = (v10 + 40);
    }

    while (fabs(v15) >= fabs(v16));
  }

  else
  {
    v10 = a1;
    do
    {
      v10 = (v10 + 40);
      v11 = *(a3 + 8);
      v12 = sub_70E2E0(v11, *a3, &v104);
    }

    while (fabs(v12) >= fabs(sub_70E2E0(v11, *a3, v10)));
  }

  if (v10 < v4)
  {
    do
    {
      v4 -= 5;
      v17 = *(a3 + 8);
      v18 = sub_70E2E0(v17, *a3, &v104);
    }

    while (fabs(v18) < fabs(sub_70E2E0(v17, *a3, v4)));
  }

  if (v10 >= v4)
  {
    goto LABEL_166;
  }

  while (2)
  {
    v19 = *v10;
    v20 = v10[1];
    v109 = *(v10 + 4);
    v107 = v19;
    v108 = v20;
    v21 = *v4;
    v22 = *(v4 + 1);
    *(v10 + 4) = v4[4];
    *v10 = v21;
    v10[1] = v22;
    v23 = v107;
    v24 = v108;
    v4[4] = v109;
    *v4 = v23;
    *(v4 + 1) = v24;
    v25 = *a3;
    do
    {
      if (!*(*(a3 + 8) + 912))
      {
        v35 = (*v25 - **v25);
        v36 = *v35;
        if (*(*a3 + 38))
        {
          if (v36 < 0x49)
          {
            goto LABEL_48;
          }

          v37 = v35[36];
          if (!v37)
          {
            goto LABEL_48;
          }
        }

        else if (v36 < 0x4B || (v37 = v35[37]) == 0)
        {
LABEL_48:
          v38 = -1;
          v43 = (v104 - *v104);
          v44 = *v43;
          if (BYTE6(v106))
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        v38 = *(*v25 + v37);
        v43 = (v104 - *v104);
        v44 = *v43;
        if (BYTE6(v106))
        {
LABEL_49:
          if (v44 >= 0x4B)
          {
            v41 = v43[37];
            if (v41)
            {
              goto LABEL_51;
            }
          }

LABEL_53:
          v41 = 0xFFFF;
          goto LABEL_54;
        }

LABEL_45:
        if (v44 >= 0x49)
        {
          v41 = v43[36];
          if (v41)
          {
LABEL_51:
            v42 = v104;
            goto LABEL_52;
          }
        }

        goto LABEL_53;
      }

      v31 = v25[1];
      v32 = (v31 - *v31);
      v33 = *v32;
      if (*(*a3 + 38))
      {
        if (v33 < 5)
        {
          goto LABEL_37;
        }

        v34 = v32[2];
        if (!v34)
        {
          goto LABEL_37;
        }
      }

      else if (v33 < 9 || (v34 = v32[4]) == 0)
      {
LABEL_37:
        v38 = 0;
        v39 = (*(&v104 + 1) - **(&v104 + 1));
        v40 = *v39;
        if (BYTE6(v106))
        {
LABEL_38:
          if (v40 < 9)
          {
LABEL_41:
            v41 = 0;
            goto LABEL_54;
          }

          v41 = v39[4];
          if (!v41)
          {
            goto LABEL_54;
          }

LABEL_40:
          v42 = *(&v104 + 1);
LABEL_52:
          v41 = *(v42 + v41);
          goto LABEL_54;
        }

        goto LABEL_34;
      }

      v38 = *(v31 + v34);
      v39 = (*(&v104 + 1) - **(&v104 + 1));
      v40 = *v39;
      if (BYTE6(v106))
      {
        goto LABEL_38;
      }

LABEL_34:
      if (v40 < 5)
      {
        goto LABEL_41;
      }

      v41 = v39[2];
      if (v41)
      {
        goto LABEL_40;
      }

LABEL_54:
      v45 = v38 + 18000;
      v46 = v38 - 18000;
      if ((v45 >> 5) < 0x465u)
      {
        v46 = v45;
      }

      v47 = v41 - v46;
      if (v47 > 18000)
      {
        v47 -= 36000;
      }

      if (v47 < -17999)
      {
        v47 += 36000;
      }

      if (*(*(a3 + 8) + 912))
      {
        v48 = v25[1];
        v49 = (v48 - *v48);
        v50 = *v49;
        if (*(*a3 + 38))
        {
          if (v50 < 5)
          {
            goto LABEL_75;
          }

          v51 = v49[2];
          if (!v51)
          {
            goto LABEL_75;
          }
        }

        else if (v50 < 9 || (v51 = v49[4]) == 0)
        {
LABEL_75:
          v55 = 0;
          v56 = *(v10 + 6);
          v57 = (v56 - *v56);
          v58 = *v57;
          if (*(v10 + 78))
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }

        v55 = *(v48 + v51);
        v56 = *(v10 + 6);
        v57 = (v56 - *v56);
        v58 = *v57;
        if (*(v10 + 78))
        {
LABEL_76:
          if (v58 < 9)
          {
            goto LABEL_14;
          }

          v59 = v57[4];
          if (!v59)
          {
            goto LABEL_14;
          }

LABEL_88:
          v26 = *(v56 + v59);
          goto LABEL_15;
        }

LABEL_72:
        if (v58 < 5 || (v59 = v57[2]) == 0)
        {
LABEL_14:
          v26 = 0;
          goto LABEL_15;
        }

        goto LABEL_88;
      }

      v52 = (*v25 - **v25);
      v53 = *v52;
      if (*(*a3 + 38))
      {
        if (v53 >= 0x49)
        {
          v54 = v52[36];
          if (v54)
          {
            goto LABEL_81;
          }
        }
      }

      else if (v53 >= 0x4B)
      {
        v54 = v52[37];
        if (v54)
        {
LABEL_81:
          v55 = *(*v25 + v54);
          v56 = *(v10 + 5);
          v60 = (v56 - *v56);
          v61 = *v60;
          if (*(v10 + 78))
          {
            goto LABEL_86;
          }

          goto LABEL_82;
        }
      }

      v55 = -1;
      v56 = *(v10 + 5);
      v60 = (v56 - *v56);
      v61 = *v60;
      if (*(v10 + 78))
      {
LABEL_86:
        if (v61 >= 0x4B)
        {
          v59 = v60[37];
          if (v59)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_89;
      }

LABEL_82:
      if (v61 >= 0x49)
      {
        v59 = v60[36];
        if (v59)
        {
          goto LABEL_88;
        }
      }

LABEL_89:
      v26 = 0xFFFF;
LABEL_15:
      v10 = (v10 + 40);
      v27 = v47 / 100.0;
      v28 = v55 + 18000;
      v29 = v55 - 18000;
      if ((v28 >> 5) >= 0x465u)
      {
        v28 = v29;
      }

      v30 = v26 - v28;
      if (v30 > 18000)
      {
        v30 -= 36000;
      }

      if (v30 < -17999)
      {
        v30 += 36000;
      }
    }

    while (fabs(v27) >= fabs(v30 / 100.0));
    do
    {
      if (!*(*(a3 + 8) + 912))
      {
        v71 = (*v25 - **v25);
        v72 = *v71;
        if (*(*a3 + 38))
        {
          if (v72 < 0x49)
          {
            goto LABEL_124;
          }

          v73 = v71[36];
          if (!v73)
          {
            goto LABEL_124;
          }
        }

        else if (v72 < 0x4B || (v73 = v71[37]) == 0)
        {
LABEL_124:
          v74 = -1;
          v79 = (v104 - *v104);
          v80 = *v79;
          if (BYTE6(v106))
          {
            goto LABEL_125;
          }

          goto LABEL_121;
        }

        v74 = *(*v25 + v73);
        v79 = (v104 - *v104);
        v80 = *v79;
        if (BYTE6(v106))
        {
LABEL_125:
          if (v80 >= 0x4B)
          {
            v77 = v79[37];
            if (v77)
            {
              goto LABEL_127;
            }
          }

LABEL_129:
          v77 = 0xFFFF;
          goto LABEL_130;
        }

LABEL_121:
        if (v80 >= 0x49)
        {
          v77 = v79[36];
          if (v77)
          {
LABEL_127:
            v78 = v104;
            goto LABEL_128;
          }
        }

        goto LABEL_129;
      }

      v67 = v25[1];
      v68 = (v67 - *v67);
      v69 = *v68;
      if (*(*a3 + 38))
      {
        if (v69 < 5)
        {
          goto LABEL_113;
        }

        v70 = v68[2];
        if (!v70)
        {
          goto LABEL_113;
        }
      }

      else if (v69 < 9 || (v70 = v68[4]) == 0)
      {
LABEL_113:
        v74 = 0;
        v75 = (*(&v104 + 1) - **(&v104 + 1));
        v76 = *v75;
        if (BYTE6(v106))
        {
LABEL_114:
          if (v76 < 9)
          {
LABEL_117:
            v77 = 0;
            goto LABEL_130;
          }

          v77 = v75[4];
          if (!v77)
          {
            goto LABEL_130;
          }

LABEL_116:
          v78 = *(&v104 + 1);
LABEL_128:
          v77 = *(v78 + v77);
          goto LABEL_130;
        }

        goto LABEL_110;
      }

      v74 = *(v67 + v70);
      v75 = (*(&v104 + 1) - **(&v104 + 1));
      v76 = *v75;
      if (BYTE6(v106))
      {
        goto LABEL_114;
      }

LABEL_110:
      if (v76 < 5)
      {
        goto LABEL_117;
      }

      v77 = v75[2];
      if (v77)
      {
        goto LABEL_116;
      }

LABEL_130:
      v81 = v74 + 18000;
      v82 = v74 - 18000;
      if ((v81 >> 5) < 0x465u)
      {
        v82 = v81;
      }

      v83 = v77 - v82;
      if (v83 > 18000)
      {
        v83 -= 36000;
      }

      if (v83 < -17999)
      {
        v83 += 36000;
      }

      if (*(*(a3 + 8) + 912))
      {
        v84 = v25[1];
        v85 = (v84 - *v84);
        v86 = *v85;
        if (*(*a3 + 38))
        {
          if (v86 < 5)
          {
            goto LABEL_151;
          }

          v87 = v85[2];
          if (!v87)
          {
            goto LABEL_151;
          }
        }

        else if (v86 < 9 || (v87 = v85[4]) == 0)
        {
LABEL_151:
          v91 = 0;
          v92 = *(v4 - 4);
          v93 = (v92 - *v92);
          v94 = *v93;
          if (*(v4 - 2))
          {
            goto LABEL_152;
          }

          goto LABEL_148;
        }

        v91 = *(v84 + v87);
        v92 = *(v4 - 4);
        v93 = (v92 - *v92);
        v94 = *v93;
        if (*(v4 - 2))
        {
LABEL_152:
          if (v94 < 9)
          {
            goto LABEL_90;
          }

          v95 = v93[4];
          if (!v95)
          {
            goto LABEL_90;
          }

LABEL_164:
          v62 = *(v92 + v95);
          goto LABEL_91;
        }

LABEL_148:
        if (v94 < 5 || (v95 = v93[2]) == 0)
        {
LABEL_90:
          v62 = 0;
          goto LABEL_91;
        }

        goto LABEL_164;
      }

      v88 = (*v25 - **v25);
      v89 = *v88;
      if (*(*a3 + 38))
      {
        if (v89 >= 0x49)
        {
          v90 = v88[36];
          if (v90)
          {
            goto LABEL_157;
          }
        }
      }

      else if (v89 >= 0x4B)
      {
        v90 = v88[37];
        if (v90)
        {
LABEL_157:
          v91 = *(*v25 + v90);
          v92 = *(v4 - 5);
          v96 = (v92 - *v92);
          v97 = *v96;
          if (*(v4 - 2))
          {
            goto LABEL_162;
          }

          goto LABEL_158;
        }
      }

      v91 = -1;
      v92 = *(v4 - 5);
      v96 = (v92 - *v92);
      v97 = *v96;
      if (*(v4 - 2))
      {
LABEL_162:
        if (v97 >= 0x4B)
        {
          v95 = v96[37];
          if (v95)
          {
            goto LABEL_164;
          }
        }

        goto LABEL_165;
      }

LABEL_158:
      if (v97 >= 0x49)
      {
        v95 = v96[36];
        if (v95)
        {
          goto LABEL_164;
        }
      }

LABEL_165:
      v62 = 0xFFFF;
LABEL_91:
      v4 -= 5;
      v63 = v83 / 100.0;
      v64 = v91 + 18000;
      v65 = v91 - 18000;
      if ((v64 >> 5) >= 0x465u)
      {
        v64 = v65;
      }

      v66 = v62 - v64;
      if (v66 > 18000)
      {
        v66 -= 36000;
      }

      if (v66 < -17999)
      {
        v66 += 36000;
      }
    }

    while (fabs(v63) < fabs(v66 / 100.0));
    if (v10 < v4)
    {
      continue;
    }

    break;
  }

LABEL_166:
  v98 = (v10 - 40);
  if ((v10 - 40) != a1)
  {
    v99 = *v98;
    v100 = *(v10 - 24);
    *(a1 + 4) = *(v10 - 1);
    *a1 = v99;
    a1[1] = v100;
  }

  v101 = v104;
  v102 = v105;
  *(v10 - 1) = v106;
  *v98 = v101;
  *(v10 - 24) = v102;
  return v10;
}

uint64_t sub_71CABC(__int128 *a1, int **a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1[1];
  v101 = *a1;
  v102 = v7;
  v103 = *(a1 + 4);
  do
  {
    v6 += 40;
    v8 = *(a3 + 8);
    v9 = sub_70E2E0(v8, *a3, (a1 + v6));
  }

  while (fabs(v9) < fabs(sub_70E2E0(v8, *a3, &v101)));
  v10 = a1 + v6;
  v11 = a1 + v6 - 40;
  if (v6 == 40)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      a2 -= 5;
      v14 = *(a3 + 8);
      v15 = sub_70E2E0(v14, *a3, a2);
    }

    while (fabs(v15) >= fabs(sub_70E2E0(v14, *a3, &v101)));
  }

  else
  {
    do
    {
      a2 -= 5;
      v12 = *(a3 + 8);
      v13 = sub_70E2E0(v12, *a3, a2);
    }

    while (fabs(v13) >= fabs(sub_70E2E0(v12, *a3, &v101)));
  }

  if (v10 < a2)
  {
    v16 = v10;
    v17 = a2;
    while (1)
    {
      v19 = *(v16 + 16);
      v104 = *v16;
      v18 = v104;
      v105 = v19;
      v106 = *(v16 + 32);
      v20 = v106;
      v22 = *v17;
      v21 = *(v17 + 1);
      *(v16 + 32) = v17[4];
      *v16 = v22;
      *(v16 + 16) = v21;
      v17[4] = v20;
      *v17 = v18;
      *(v17 + 1) = v19;
      v23 = *a3;
      do
      {
        if (*(*(a3 + 8) + 912))
        {
          v29 = v23[1];
          v30 = (v29 - *v29);
          v31 = *v30;
          if (*(*a3 + 38))
          {
            if (v31 < 5)
            {
              goto LABEL_35;
            }

            v32 = v30[2];
            if (!v32)
            {
              goto LABEL_35;
            }

LABEL_31:
            v36 = *(v29 + v32);
            v37 = *(v16 + 48);
            v38 = (v37 - *v37);
            v39 = *v38;
            if (!*(v16 + 78))
            {
              goto LABEL_32;
            }

LABEL_36:
            if (v39 < 9)
            {
              goto LABEL_38;
            }

            v40 = v38[4];
            if (!v40)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v31 >= 9)
            {
              v32 = v30[4];
              if (v32)
              {
                goto LABEL_31;
              }
            }

LABEL_35:
            v36 = 0;
            v37 = *(v16 + 48);
            v38 = (v37 - *v37);
            v39 = *v38;
            if (*(v16 + 78))
            {
              goto LABEL_36;
            }

LABEL_32:
            if (v39 < 5 || (v40 = v38[2]) == 0)
            {
LABEL_38:
              v41 = 0;
              goto LABEL_50;
            }
          }

LABEL_48:
          v41 = *(v37 + v40);
          goto LABEL_50;
        }

        v33 = (*v23 - **v23);
        v34 = *v33;
        if (*(*a3 + 38))
        {
          if (v34 >= 0x49)
          {
            v35 = v33[36];
            if (v35)
            {
              goto LABEL_41;
            }
          }
        }

        else if (v34 >= 0x4B)
        {
          v35 = v33[37];
          if (v35)
          {
LABEL_41:
            v36 = *(*v23 + v35);
            v37 = *(v16 + 40);
            v42 = (v37 - *v37);
            v43 = *v42;
            if (*(v16 + 78))
            {
              goto LABEL_46;
            }

            goto LABEL_42;
          }
        }

        v36 = -1;
        v37 = *(v16 + 40);
        v42 = (v37 - *v37);
        v43 = *v42;
        if (*(v16 + 78))
        {
LABEL_46:
          if (v43 >= 0x4B)
          {
            v40 = v42[37];
            if (v40)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_49;
        }

LABEL_42:
        if (v43 >= 0x49)
        {
          v40 = v42[36];
          if (v40)
          {
            goto LABEL_48;
          }
        }

LABEL_49:
        v41 = 0xFFFF;
LABEL_50:
        v44 = v36 + 18000;
        v45 = v36 - 18000;
        if ((v44 >> 5) < 0x465u)
        {
          v45 = v44;
        }

        v46 = v41 - v45;
        if (v46 > 18000)
        {
          v46 -= 36000;
        }

        if (v46 < -17999)
        {
          v46 += 36000;
        }

        if (!*(*(a3 + 8) + 912))
        {
          v51 = (*v23 - **v23);
          v52 = *v51;
          if (*(*a3 + 38))
          {
            if (v52 < 0x49)
            {
              goto LABEL_82;
            }

            v53 = v51[36];
            if (!v53)
            {
              goto LABEL_82;
            }

LABEL_78:
            v54 = *(*v23 + v53);
            v58 = (v101 - *v101);
            v59 = *v58;
            if (!BYTE6(v103))
            {
              goto LABEL_79;
            }

LABEL_83:
            if (v59 < 0x4B)
            {
              goto LABEL_12;
            }

            v24 = v58[37];
            if (!v24)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v52 >= 0x4B)
            {
              v53 = v51[37];
              if (v53)
              {
                goto LABEL_78;
              }
            }

LABEL_82:
            v54 = -1;
            v58 = (v101 - *v101);
            v59 = *v58;
            if (BYTE6(v103))
            {
              goto LABEL_83;
            }

LABEL_79:
            if (v59 < 0x49 || (v24 = v58[36]) == 0)
            {
LABEL_12:
              v24 = 0xFFFF;
              goto LABEL_13;
            }
          }

          v57 = v101;
LABEL_86:
          v24 = *(v57 + v24);
          goto LABEL_13;
        }

        v47 = v23[1];
        v48 = (v47 - *v47);
        v49 = *v48;
        if (*(*a3 + 38))
        {
          if (v49 >= 5)
          {
            v50 = v48[2];
            if (v50)
            {
              goto LABEL_67;
            }
          }
        }

        else if (v49 >= 9)
        {
          v50 = v48[4];
          if (v50)
          {
LABEL_67:
            v54 = *(v47 + v50);
            v55 = (*(&v101 + 1) - **(&v101 + 1));
            v56 = *v55;
            if (BYTE6(v103))
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }
        }

        v54 = 0;
        v55 = (*(&v101 + 1) - **(&v101 + 1));
        v56 = *v55;
        if (BYTE6(v103))
        {
LABEL_72:
          if (v56 < 9)
          {
LABEL_75:
            v24 = 0;
            goto LABEL_13;
          }

          v24 = v55[4];
          if (!v24)
          {
            goto LABEL_13;
          }

LABEL_74:
          v57 = *(&v101 + 1);
          goto LABEL_86;
        }

LABEL_68:
        if (v56 < 5)
        {
          goto LABEL_75;
        }

        v24 = v55[2];
        if (v24)
        {
          goto LABEL_74;
        }

LABEL_13:
        v16 += 40;
        v25 = v46 / 100.0;
        v26 = v54 + 18000;
        v27 = v54 - 18000;
        if ((v26 >> 5) >= 0x465u)
        {
          v26 = v27;
        }

        v28 = v24 - v26;
        if (v28 > 18000)
        {
          v28 -= 36000;
        }

        if (v28 < -17999)
        {
          v28 += 36000;
        }
      }

      while (fabs(v25) < fabs(v28 / 100.0));
      do
      {
        if (*(*(a3 + 8) + 912))
        {
          v65 = v23[1];
          v66 = (v65 - *v65);
          v67 = *v66;
          if (*(*a3 + 38))
          {
            if (v67 < 5)
            {
              goto LABEL_110;
            }

            v68 = v66[2];
            if (!v68)
            {
              goto LABEL_110;
            }

LABEL_106:
            v72 = *(v65 + v68);
            v73 = *(v17 - 4);
            v74 = (v73 - *v73);
            v75 = *v74;
            if (!*(v17 - 2))
            {
              goto LABEL_107;
            }

LABEL_111:
            if (v75 < 9)
            {
              goto LABEL_113;
            }

            v76 = v74[4];
            if (!v76)
            {
              goto LABEL_113;
            }
          }

          else
          {
            if (v67 >= 9)
            {
              v68 = v66[4];
              if (v68)
              {
                goto LABEL_106;
              }
            }

LABEL_110:
            v72 = 0;
            v73 = *(v17 - 4);
            v74 = (v73 - *v73);
            v75 = *v74;
            if (*(v17 - 2))
            {
              goto LABEL_111;
            }

LABEL_107:
            if (v75 < 5 || (v76 = v74[2]) == 0)
            {
LABEL_113:
              v77 = 0;
              goto LABEL_125;
            }
          }

LABEL_123:
          v77 = *(v73 + v76);
          goto LABEL_125;
        }

        v69 = (*v23 - **v23);
        v70 = *v69;
        if (*(*a3 + 38))
        {
          if (v70 >= 0x49)
          {
            v71 = v69[36];
            if (v71)
            {
              goto LABEL_116;
            }
          }
        }

        else if (v70 >= 0x4B)
        {
          v71 = v69[37];
          if (v71)
          {
LABEL_116:
            v72 = *(*v23 + v71);
            v73 = *(v17 - 5);
            v78 = (v73 - *v73);
            v79 = *v78;
            if (*(v17 - 2))
            {
              goto LABEL_121;
            }

            goto LABEL_117;
          }
        }

        v72 = -1;
        v73 = *(v17 - 5);
        v78 = (v73 - *v73);
        v79 = *v78;
        if (*(v17 - 2))
        {
LABEL_121:
          if (v79 >= 0x4B)
          {
            v76 = v78[37];
            if (v76)
            {
              goto LABEL_123;
            }
          }

          goto LABEL_124;
        }

LABEL_117:
        if (v79 >= 0x49)
        {
          v76 = v78[36];
          if (v76)
          {
            goto LABEL_123;
          }
        }

LABEL_124:
        v77 = 0xFFFF;
LABEL_125:
        v80 = v72 + 18000;
        v81 = v72 - 18000;
        if ((v80 >> 5) < 0x465u)
        {
          v81 = v80;
        }

        v82 = v77 - v81;
        if (v82 > 18000)
        {
          v82 -= 36000;
        }

        if (v82 < -17999)
        {
          v82 += 36000;
        }

        if (!*(*(a3 + 8) + 912))
        {
          v87 = (*v23 - **v23);
          v88 = *v87;
          if (*(*a3 + 38))
          {
            if (v88 < 0x49)
            {
              goto LABEL_157;
            }

            v89 = v87[36];
            if (!v89)
            {
              goto LABEL_157;
            }

LABEL_153:
            v90 = *(*v23 + v89);
            v94 = (v101 - *v101);
            v95 = *v94;
            if (!BYTE6(v103))
            {
              goto LABEL_154;
            }

LABEL_158:
            if (v95 < 0x4B)
            {
              goto LABEL_87;
            }

            v60 = v94[37];
            if (!v60)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v88 >= 0x4B)
            {
              v89 = v87[37];
              if (v89)
              {
                goto LABEL_153;
              }
            }

LABEL_157:
            v90 = -1;
            v94 = (v101 - *v101);
            v95 = *v94;
            if (BYTE6(v103))
            {
              goto LABEL_158;
            }

LABEL_154:
            if (v95 < 0x49 || (v60 = v94[36]) == 0)
            {
LABEL_87:
              v60 = 0xFFFF;
              goto LABEL_88;
            }
          }

          v93 = v101;
LABEL_161:
          v60 = *(v93 + v60);
          goto LABEL_88;
        }

        v83 = v23[1];
        v84 = (v83 - *v83);
        v85 = *v84;
        if (*(*a3 + 38))
        {
          if (v85 >= 5)
          {
            v86 = v84[2];
            if (v86)
            {
              goto LABEL_142;
            }
          }
        }

        else if (v85 >= 9)
        {
          v86 = v84[4];
          if (v86)
          {
LABEL_142:
            v90 = *(v83 + v86);
            v91 = (*(&v101 + 1) - **(&v101 + 1));
            v92 = *v91;
            if (BYTE6(v103))
            {
              goto LABEL_147;
            }

            goto LABEL_143;
          }
        }

        v90 = 0;
        v91 = (*(&v101 + 1) - **(&v101 + 1));
        v92 = *v91;
        if (BYTE6(v103))
        {
LABEL_147:
          if (v92 < 9)
          {
LABEL_150:
            v60 = 0;
            goto LABEL_88;
          }

          v60 = v91[4];
          if (!v60)
          {
            goto LABEL_88;
          }

LABEL_149:
          v93 = *(&v101 + 1);
          goto LABEL_161;
        }

LABEL_143:
        if (v92 < 5)
        {
          goto LABEL_150;
        }

        v60 = v91[2];
        if (v60)
        {
          goto LABEL_149;
        }

LABEL_88:
        v17 -= 5;
        v61 = v82 / 100.0;
        v62 = v90 + 18000;
        v63 = v90 - 18000;
        if ((v62 >> 5) >= 0x465u)
        {
          v62 = v63;
        }

        v64 = v60 - v62;
        if (v64 > 18000)
        {
          v64 -= 36000;
        }

        if (v64 < -17999)
        {
          v64 += 36000;
        }
      }

      while (fabs(v61) >= fabs(v64 / 100.0));
      if (v16 >= v17)
      {
        v11 = v16 - 40;
        break;
      }
    }
  }

  if (v11 != a1)
  {
    v96 = *v11;
    v97 = *(v11 + 16);
    *(a1 + 4) = *(v11 + 32);
    *a1 = v96;
    a1[1] = v97;
  }

  v98 = v101;
  v99 = v102;
  *(v11 + 32) = v103;
  *v11 = v98;
  *(v11 + 16) = v99;
  return v11;
}

BOOL sub_71D26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = a2 - 40;
        v8 = *(a3 + 8);
        v9 = sub_70E2E0(v8, *a3, (a2 - 40));
        if (fabs(v9) < fabs(sub_70E2E0(v8, *a3, a1)))
        {
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a1 + 32);
          v13 = *(v7 + 32);
          v14 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v14;
          *(a1 + 32) = v13;
          *(v7 + 32) = v12;
          result = 1;
          *v7 = v10;
          *(v7 + 16) = v11;
          return result;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_71B4E8(a1, (a1 + 40), (a2 - 40), a3);
      return 1;
    case 4:
      sub_71B6CC(a1, (a1 + 40), (a1 + 80), (a2 - 40), a3);
      return 1;
    case 5:
      sub_71B820(a1, (a1 + 40), (a1 + 80), (a1 + 120), (a2 - 40), a3);
      return 1;
  }

LABEL_11:
  v16 = (a1 + 80);
  sub_71B4E8(a1, (a1 + 40), (a1 + 80), a3);
  v17 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v22 = *(a3 + 8);
    v23 = sub_70E2E0(v22, *a3, v17);
    if (fabs(v23) < fabs(sub_70E2E0(v22, *a3, v16)))
    {
      v24 = *(v17 + 16);
      v30 = *v17;
      v31 = v24;
      v32 = *(v17 + 32);
      v25 = v18;
      do
      {
        v26 = a1 + v25;
        v27 = *(a1 + v25 + 96);
        *(v26 + 120) = *(a1 + v25 + 80);
        *(v26 + 136) = v27;
        *(v26 + 152) = *(a1 + v25 + 112);
        if (v25 == -80)
        {
          v20 = a1;
          goto LABEL_14;
        }

        v28 = *(a3 + 8);
        v29 = sub_70E2E0(v28, *a3, &v30);
        v25 -= 40;
      }

      while (fabs(v29) < fabs(sub_70E2E0(v28, *a3, (v26 + 40))));
      v20 = a1 + v25 + 120;
LABEL_14:
      v21 = v31;
      *v20 = v30;
      *(v20 + 16) = v21;
      *(v20 + 32) = v32;
      if (++v19 == 8)
      {
        return v17 + 40 == a2;
      }
    }

    v16 = v17;
    v18 += 40;
    v17 += 40;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_71D4DC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a3;
  }

  v6 = a1;
  v7 = a2 - a1;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 41)
  {
    v9 = (v8 - 2) >> 1;
    v10 = v9 + 1;
    v11 = (a1 + 40 * v9);
    do
    {
      sub_71DAC0(v6, a4, v8, v11);
      v11 = (v11 - 40);
      --v10;
    }

    while (v10);
  }

  v12 = a2;
  if (a2 != a3)
  {
    v12 = a2;
    do
    {
      v13 = *(a4 + 8);
      v14 = sub_70E2E0(v13, *a4, v12);
      if (fabs(v14) < fabs(sub_70E2E0(v13, *a4, v6)))
      {
        v15 = *v12;
        v16 = v12[1];
        v17 = *(v12 + 4);
        v18 = *(v6 + 32);
        v19 = *(v6 + 16);
        *v12 = *v6;
        v12[1] = v19;
        *(v12 + 4) = v18;
        *(v6 + 32) = v17;
        *v6 = v15;
        *(v6 + 16) = v16;
        sub_71DAC0(v6, a4, v8, v6);
      }

      v12 = (v12 + 40);
    }

    while (v12 != a3);
  }

  if (v7 < 41)
  {
    return v12;
  }

  v74 = v12;
  v20 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
  v21 = a2;
  while (2)
  {
    while (2)
    {
      v23 = 0;
      v76 = *v6;
      v77 = *(v6 + 16);
      v78 = *(v6 + 32);
      v24 = v6;
      do
      {
        v27 = v24;
        v28 = v24 + 40 * v23;
        v24 = v28 + 40;
        v29 = 2 * v23;
        v23 = (2 * v23) | 1;
        v30 = v29 + 2;
        if (v30 >= v20)
        {
          goto LABEL_14;
        }

        v31 = *a4;
        if (*(*(a4 + 8) + 912) == 1)
        {
          v32 = v31[1];
          v33 = (v32 - *v32);
          v34 = *v33;
          if (*(*a4 + 38))
          {
            if (v34 < 5)
            {
              goto LABEL_31;
            }

            v35 = v33[2];
            if (!v35)
            {
              goto LABEL_31;
            }
          }

          else if (v34 < 9 || (v35 = v33[4]) == 0)
          {
LABEL_31:
            v39 = 0;
            v40 = *(v28 + 48);
            v41 = (v40 - *v40);
            v42 = *v41;
            if (*(v28 + 78))
            {
              goto LABEL_32;
            }

            goto LABEL_28;
          }

          v39 = *(v32 + v35);
          v40 = *(v28 + 48);
          v41 = (v40 - *v40);
          v42 = *v41;
          if (*(v28 + 78))
          {
LABEL_32:
            if (v42 < 9)
            {
              goto LABEL_34;
            }

            v43 = v41[4];
            if (!v43)
            {
              goto LABEL_34;
            }

LABEL_44:
            v44 = *(v40 + v43);
            goto LABEL_46;
          }

LABEL_28:
          if (v42 < 5 || (v43 = v41[2]) == 0)
          {
LABEL_34:
            v44 = 0;
            goto LABEL_46;
          }

          goto LABEL_44;
        }

        v36 = (*v31 - **v31);
        v37 = *v36;
        if (*(*a4 + 38))
        {
          if (v37 >= 0x49)
          {
            v38 = v36[36];
            if (v38)
            {
              goto LABEL_37;
            }
          }
        }

        else if (v37 >= 0x4B)
        {
          v38 = v36[37];
          if (v38)
          {
LABEL_37:
            v39 = *(*v31 + v38);
            v40 = *(v28 + 40);
            v45 = (v40 - *v40);
            v46 = *v45;
            if (*(v28 + 78))
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          }
        }

        v39 = -1;
        v40 = *(v28 + 40);
        v45 = (v40 - *v40);
        v46 = *v45;
        if (*(v28 + 78))
        {
LABEL_42:
          if (v46 >= 0x4B)
          {
            v43 = v45[37];
            if (v43)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_45;
        }

LABEL_38:
        if (v46 >= 0x49)
        {
          v43 = v45[36];
          if (v43)
          {
            goto LABEL_44;
          }
        }

LABEL_45:
        v44 = 0xFFFF;
LABEL_46:
        v47 = v39 + 18000;
        v48 = v39 - 18000;
        if ((v47 >> 5) < 0x465u)
        {
          v48 = v47;
        }

        v49 = v44 - v48;
        if (v49 > 18000)
        {
          v49 -= 36000;
        }

        if (v49 < -17999)
        {
          v49 += 36000;
        }

        if (!*(*(a4 + 8) + 912))
        {
          v58 = *v31;
          v59 = (v58 - *v58);
          v60 = *v59;
          if (*(*a4 + 38))
          {
            if (v60 < 0x49)
            {
              goto LABEL_76;
            }

            v53 = v59[36];
            if (!v59[36])
            {
              goto LABEL_76;
            }
          }

          else if (v60 < 0x4B || (v53 = v59[37]) == 0)
          {
LABEL_76:
            LOWORD(v53) = -1;
            v54 = *(v28 + 80);
            v62 = (v54 - *v54);
            v63 = *v62;
            if (*(v28 + 118))
            {
              goto LABEL_77;
            }

            goto LABEL_73;
          }

          LOWORD(v53) = *(v58 + v53);
          v54 = *(v28 + 80);
          v62 = (v54 - *v54);
          v63 = *v62;
          if (*(v28 + 118))
          {
LABEL_77:
            if (v63 < 0x4B)
            {
              goto LABEL_80;
            }

            v57 = v62[37];
            if (!v57)
            {
              goto LABEL_80;
            }

LABEL_79:
            v61 = *(v54 + v57);
            goto LABEL_81;
          }

LABEL_73:
          if (v63 < 0x49 || (v57 = v62[36]) == 0)
          {
LABEL_80:
            v61 = 0xFFFF;
            goto LABEL_81;
          }

          goto LABEL_79;
        }

        v50 = v31[1];
        v51 = (v50 - *v50);
        v52 = *v51;
        if (*(*a4 + 38))
        {
          if (v52 >= 5)
          {
            v53 = v51[2];
            if (!v51[2])
            {
              goto LABEL_56;
            }

LABEL_66:
            LOWORD(v53) = *(v50 + v53);
            v54 = *(v28 + 88);
            v55 = (v54 - *v54);
            v56 = *v55;
            if (*(v28 + 118))
            {
              goto LABEL_57;
            }

            goto LABEL_67;
          }

          LOWORD(v53) = 0;
          v54 = *(v28 + 88);
          v55 = (v54 - *v54);
          v56 = *v55;
          if (*(v28 + 118))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v52 >= 9)
          {
            v53 = v51[4];
            if (!v51[4])
            {
LABEL_56:
              v54 = *(v28 + 88);
              v55 = (v54 - *v54);
              v56 = *v55;
              if (*(v28 + 118))
              {
                goto LABEL_57;
              }

              goto LABEL_67;
            }

            goto LABEL_66;
          }

          LOWORD(v53) = 0;
          v54 = *(v28 + 88);
          v55 = (v54 - *v54);
          v56 = *v55;
          if (*(v28 + 118))
          {
LABEL_57:
            if (v56 >= 9)
            {
              v57 = v55[4];
              if (v57)
              {
                goto LABEL_79;
              }
            }

            goto LABEL_69;
          }
        }

LABEL_67:
        if (v56 >= 5)
        {
          v57 = v55[2];
          if (v57)
          {
            goto LABEL_79;
          }
        }

LABEL_69:
        v61 = 0;
LABEL_81:
        v64 = v53 + 18000;
        v65 = v53 - 18000;
        if ((v64 >> 5) < 0x465u)
        {
          v65 = v64;
        }

        v66 = v61 - v65;
        if (v66 > 18000)
        {
          v66 -= 36000;
        }

        if (v66 < -17999)
        {
          v66 += 36000;
        }

        if (fabs(v49 / 100.0) < fabs(v66 / 100.0))
        {
          v24 = v28 + 80;
          v23 = v30;
        }

LABEL_14:
        v25 = *v24;
        v26 = *(v24 + 16);
        *(v27 + 32) = *(v24 + 32);
        *v27 = v25;
        *(v27 + 16) = v26;
      }

      while (v23 <= ((v20 - 2) >> 1));
      v21 = (v21 - 40);
      if (v24 == v21)
      {
        *(v24 + 32) = v78;
        *v24 = v76;
        *(v24 + 16) = v77;
        v22 = v20-- <= 2;
        if (v22)
        {
          return v74;
        }

        continue;
      }

      break;
    }

    v67 = *v21;
    v68 = v21[1];
    *(v24 + 32) = *(v21 + 4);
    *v24 = v67;
    *(v24 + 16) = v68;
    *v21 = v76;
    v21[1] = v77;
    *(v21 + 4) = v78;
    v69 = 0xCCCCCCCCCCCCCCCDLL * ((v24 + 40 - v6) >> 3);
    v70 = v6;
    v71 = v6;
    v72 = v21;
    sub_71DCC0(v70, v24 + 40, a4, v69);
    v21 = v72;
    v6 = v71;
    v22 = v20-- <= 2;
    if (!v22)
    {
      continue;
    }

    return v74;
  }
}

void sub_71DAC0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = a3 - 2;
  if (a3 >= 2)
  {
    v37 = v7;
    v38 = v6;
    v39 = v4;
    v40 = v5;
    v9 = a4;
    v11 = v8 >> 1;
    if ((v8 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v14 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v15 = (a1 + 40 * v14);
      v16 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      if (v16 < a3)
      {
        v17 = *(a2 + 8);
        v18 = sub_70E2E0(v17, *a2, (a1 + 40 * v14));
        if (fabs(v18) < fabs(sub_70E2E0(v17, *a2, v15 + 5)))
        {
          v15 = (v15 + 40);
          v14 = v16;
        }
      }

      v19 = *(a2 + 8);
      v20 = sub_70E2E0(v19, *a2, v15);
      if (fabs(v20) >= fabs(sub_70E2E0(v19, *a2, v9)))
      {
        v21 = v9[1];
        v34 = *v9;
        v35 = v21;
        v36 = *(v9 + 4);
        do
        {
          v25 = v15;
          v26 = *v15;
          v27 = v15[1];
          *(v9 + 4) = *(v15 + 4);
          *v9 = v26;
          v9[1] = v27;
          if (v11 < v14)
          {
            break;
          }

          v28 = 2 * v14;
          v14 = (2 * v14) | 1;
          v15 = (a1 + 40 * v14);
          v29 = v28 + 2;
          if (v28 + 2 < a3)
          {
            v30 = *(a2 + 8);
            v31 = sub_70E2E0(v30, *a2, v15);
            if (fabs(v31) < fabs(sub_70E2E0(v30, *a2, v15 + 5)))
            {
              v15 = (v15 + 40);
              v14 = v29;
            }
          }

          v22 = *(a2 + 8);
          v23 = sub_70E2E0(v22, *a2, v15);
          v24 = sub_70E2E0(v22, *a2, &v34);
          v9 = v25;
        }

        while (fabs(v23) >= fabs(v24));
        v32 = v34;
        v33 = v35;
        *(v25 + 4) = v36;
        *v25 = v32;
        v25[1] = v33;
      }
    }
  }
}

void sub_71DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v26 = v7;
    v27 = v6;
    v28 = v4;
    v29 = v5;
    v10 = (a4 - 2) >> 1;
    v11 = (a1 + 40 * v10);
    v12 = (a2 - 40);
    v13 = *(a3 + 8);
    v14 = sub_70E2E0(v13, *a3, v11);
    if (fabs(v14) < fabs(sub_70E2E0(v13, *a3, v12)))
    {
      v15 = v12[1];
      v23 = *v12;
      v24 = v15;
      v25 = *(v12 + 4);
      do
      {
        v16 = v11;
        v17 = *v11;
        v18 = *(v11 + 1);
        *(v12 + 4) = v11[4];
        *v12 = v17;
        v12[1] = v18;
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (a1 + 40 * v10);
        v19 = *(a3 + 8);
        v20 = sub_70E2E0(v19, *a3, v11);
        v21 = sub_70E2E0(v19, *a3, &v23);
        v12 = v16;
      }

      while (fabs(v20) < fabs(v21));
      v22 = v24;
      *v16 = v23;
      v16[1] = v22;
      *(v16 + 4) = v25;
    }
  }
}

uint64_t sub_71DDDC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 888);
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  v128.i64[0] = v8;
  v128.i64[1] = v12;
  *&v129 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v129 + 1) = v13;
  v130 = a2;
  v14 = *(v6 + 888);
  v15 = sub_2B51D8(v14, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v124.i64[0] = v15;
  v124.i64[1] = v19;
  v125 = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v126 = v20;
  v127 = a3;
  if (**(a1 + 8) == 1)
  {
    v21 = *(*(a1 + 16) + 32);
    if (a2 == v21 && (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(v21) & 0xFFFFFF))
    {
      return 0;
    }

    v22 = *(*(a1 + 24) + 32);
    if (a3 == v22 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v22) & 0xFFFFFF))
    {
      return 0;
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_31B8F4(*(v6 + 888), &v128, &v121);
  v24 = v121;
  v25 = v122;
  if (v121 == v122)
  {
LABEL_180:
    v23 = 0;
    v113 = v121;
    if (v121)
    {
      goto LABEL_181;
    }

    return v23;
  }

  while (1)
  {
    v30 = v24[2].u32[0];
    if (v30 == v127 && v24[2].u16[2] == WORD2(v127) && v24[2].u8[6] == BYTE6(v127))
    {
      goto LABEL_31;
    }

    v31 = v24->i64[0];
    v32 = (v24->i64[0] - *v24->i64[0]);
    v33 = *v32;
    if (v24[2].i8[6])
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v34 = v32[77];
      if (!v34 || (*(v31 + v34) & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v35 = v32[77];
      if (!v35 || (*(v31 + v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (**(a1 + 8) == 1)
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 16);
      sub_31A0AC(*(v6 + 888), v37, v30 | (v24[2].u16[2] << 32), v119[0].i64);
      if (!v37[2].i32[0])
      {
        goto LABEL_31;
      }

      v38 = *v37;
      if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v37), vceqzq_s64(v119[0])), xmmword_22671F0)) & 0xF) != 0 || v120 == 0)
      {
        goto LABEL_31;
      }

      v40 = (v38.i64[1] - *v38.i64[1]);
      v41 = *v40;
      if (v37[2].i8[6])
      {
        if (v41 < 5)
        {
          goto LABEL_59;
        }

        v42 = v40[2];
        if (!v42)
        {
          goto LABEL_59;
        }
      }

      else if (v41 < 9 || (v42 = v40[4]) == 0)
      {
LABEL_59:
        v43 = 0;
        v44 = v119[0].i64[1];
        v45 = (v119[0].i64[1] - *v119[0].i64[1]);
        v46 = *v45;
        if (BYTE6(v120))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v43 = *(v38.i64[1] + v42);
      v44 = v119[0].i64[1];
      v45 = (v119[0].i64[1] - *v119[0].i64[1]);
      v46 = *v45;
      if (BYTE6(v120))
      {
LABEL_60:
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
LABEL_62:
            v48 = *(v44 + v47);
            goto LABEL_64;
          }
        }

LABEL_63:
        v48 = 0;
LABEL_64:
        v49 = v43 + 18000;
        v50 = v43 - 18000;
        if ((v49 >> 5) < 0x465u)
        {
          v50 = v49;
        }

        v51 = v48 - v50;
        if (v51 > 18000)
        {
          v51 -= 36000;
        }

        if (v51 < -17999)
        {
          v51 += 36000;
        }

        if (fabs(v51 / 100.0) >= *(*v36 + 1016))
        {
          goto LABEL_31;
        }

        v52 = *(a1 + 24);
        v53 = *(a1 + 32);
        sub_31A0AC(*(v6 + 888), v52, v24[2].u32[0] | (v24[2].u16[2] << 32), v117[0].i64);
        if (!v52[2].i32[0])
        {
          goto LABEL_31;
        }

        v54 = *v52;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v117[0])), xmmword_22671F0)) & 0xF) != 0 || !v118)
        {
          goto LABEL_31;
        }

        v55 = (v54.i64[1] - *v54.i64[1]);
        v56 = *v55;
        if (v52[2].i8[6])
        {
          if (v56 < 5)
          {
            goto LABEL_84;
          }

          v57 = v55[2];
          if (!v57)
          {
            goto LABEL_84;
          }
        }

        else if (v56 < 9 || (v57 = v55[4]) == 0)
        {
LABEL_84:
          v58 = 0;
          v59 = v117[0].i64[1];
          v60 = (v117[0].i64[1] - *v117[0].i64[1]);
          v61 = *v60;
          if (BYTE6(v118))
          {
            goto LABEL_85;
          }

          goto LABEL_81;
        }

        v58 = *(v54.i64[1] + v57);
        v59 = v117[0].i64[1];
        v60 = (v117[0].i64[1] - *v117[0].i64[1]);
        v61 = *v60;
        if (BYTE6(v118))
        {
LABEL_85:
          if (v61 >= 9)
          {
            v62 = v60[4];
            if (v62)
            {
LABEL_87:
              v63 = *(v59 + v62);
              goto LABEL_89;
            }
          }

LABEL_88:
          v63 = 0;
LABEL_89:
          v64 = v58 + 18000;
          v65 = v58 - 18000;
          if ((v64 >> 5) < 0x465u)
          {
            v65 = v64;
          }

          v66 = v63 - v65;
          if (v66 > 18000)
          {
            v66 -= 36000;
          }

          if (v66 < -17999)
          {
            v66 += 36000;
          }

          if (fabs(v66 / 100.0) >= *(*v53 + 1016))
          {
            goto LABEL_31;
          }

          goto LABEL_96;
        }

LABEL_81:
        if (v61 >= 5)
        {
          v62 = v60[2];
          if (v62)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_88;
      }

LABEL_56:
      if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }

LABEL_96:
    v67 = (v128.i64[0] - *v128.i64[0]);
    v68 = *v67;
    if (v68 < 0x9B || !v67[77] || (~*(v128.i64[0] + v67[77]) & 3) != 0)
    {
      v70 = (v124.i64[0] - *v124.i64[0]);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(v124.i64[0] + v71);
        if (v72)
        {
          v69 = (v72 >> 1) & 1;
        }

        else
        {
          v69 = 0;
        }

        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v69 = 0;
        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v73 = v67[77];
    if (v73)
    {
      v74 = *(v128.i64[0] + v73);
      if ((v74 & 2) != 0)
      {
        v75 = &v128;
      }

      else
      {
        v75 = &v124;
      }

      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = &v124;
      }

      goto LABEL_116;
    }

LABEL_115:
    v76 = &v124;
LABEL_116:
    v77 = v76[1];
    v119[0] = *v76;
    v119[1] = v77;
    v120 = v76[2].i64[0];
    v78 = (v128.i64[0] - *v128.i64[0]);
    if (*v78 >= 0x9Bu && (v79 = v78[77]) != 0)
    {
      v80 = *(v128.i64[0] + v79);
      if ((v80 & 2) != 0)
      {
        v81 = &v124;
      }

      else
      {
        v81 = &v128;
      }

      if (v80)
      {
        v82 = v81;
      }

      else
      {
        v82 = &v128;
      }
    }

    else
    {
      v82 = &v128;
    }

    v83 = v82[1];
    v117[0] = *v82;
    v117[1] = v83;
    v118 = v82[2].i64[0];
    v84 = sub_70E2E0(v6, v119, v117);
    if (!v69)
    {
      goto LABEL_162;
    }

    if (!v120)
    {
      goto LABEL_162;
    }

    v85 = *v24;
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v119[0]), vceqzq_s64(*v24)), xmmword_22671F0)) & 0xF) != 0 || !v24[2].i32[0])
    {
      goto LABEL_162;
    }

    v86 = (v119[0].i64[1] - *v119[0].i64[1]);
    v87 = *v86;
    if (BYTE6(v120))
    {
      if (v87 >= 5)
      {
        v88 = v86[2];
        if (v88)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v87 >= 9)
    {
      v88 = v86[4];
      if (v88)
      {
LABEL_135:
        v89 = *(v119[0].i64[1] + v88);
        v90 = v24->i64[1];
        v91 = (v85.i64[1] - *v85.i64[1]);
        v92 = *v91;
        if (v24[2].i8[6])
        {
          goto LABEL_140;
        }

        goto LABEL_136;
      }
    }

    v89 = 0;
    v90 = v24->i64[1];
    v91 = (v85.i64[1] - *v85.i64[1]);
    v92 = *v91;
    if (v24[2].i8[6])
    {
LABEL_140:
      if (v92 >= 9)
      {
        v93 = v91[4];
        if (v93)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

LABEL_136:
    if (v92 >= 5)
    {
      v93 = v91[2];
      if (v93)
      {
LABEL_142:
        v94 = *(v90 + v93);
        goto LABEL_144;
      }
    }

LABEL_143:
    v94 = 0;
LABEL_144:
    v95 = v89 + 18000;
    v96 = v89 - 18000;
    if ((v95 >> 5) < 0x465u)
    {
      v96 = v95;
    }

    v97 = v94 - v96;
    if (v97 > 18000)
    {
      v97 -= 36000;
    }

    if (v97 < -17999)
    {
      v97 += 36000;
    }

    if (fabs(v97 / 100.0) < *(**(a1 + 32) + 1016))
    {
      v98 = (v85.i64[0] - *v85.i64[0]);
      if (*v98 >= 0x9Bu)
      {
        v99 = v98[77];
        if (v99)
        {
          if ((~*(v85.i64[0] + v99) & 3) == 0)
          {
            if (v84 < 0.0)
            {
              v100 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v100 < 0x9Bu)
              {
                break;
              }

              v101 = v100[77];
              if (!v101 || (*(v119[0].i64[0] + v101 + 1) & 0x80) == 0)
              {
                break;
              }
            }

            if (v84 > 0.0)
            {
              v102 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v102 >= 0x9Bu)
              {
                v103 = v102[77];
                if (v103)
                {
                  if ((*(v119[0].i64[0] + v103 + 1) & 0x80) != 0)
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

LABEL_162:
    v104 = *(v6 + 888);
    v116 = v130;
    v115[0] = v128;
    v115[1] = v129;
    BYTE6(v116) = BYTE6(v130) == 0;
    if (!sub_31B71C(v104, v24, v115, &v124) || !v130 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v128), vceqzq_s64(v124)), xmmword_22671F0)) & 0xF) != 0 || !v127)
    {
      goto LABEL_31;
    }

    v105 = (v128.i64[1] - *v128.i64[1]);
    v106 = *v105;
    if (BYTE6(v130))
    {
      if (v106 >= 5)
      {
        v107 = v105[2];
        if (v107)
        {
          goto LABEL_172;
        }
      }
    }

    else if (v106 >= 9)
    {
      v107 = v105[4];
      if (v107)
      {
LABEL_172:
        v108 = *(v128.i64[1] + v107);
        v109 = v124.i64[1];
        v110 = (v124.i64[1] - *v124.i64[1]);
        v111 = *v110;
        if (BYTE6(v127))
        {
          goto LABEL_177;
        }

        goto LABEL_173;
      }
    }

    v108 = 0;
    v109 = v124.i64[1];
    v110 = (v124.i64[1] - *v124.i64[1]);
    v111 = *v110;
    if (BYTE6(v127))
    {
LABEL_177:
      if (v111 < 9)
      {
        goto LABEL_23;
      }

      v112 = v110[4];
      if (!v112)
      {
        goto LABEL_23;
      }

      goto LABEL_179;
    }

LABEL_173:
    if (v111 < 5 || (v112 = v110[2]) == 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_179:
    v26 = *(v109 + v112);
LABEL_24:
    v27 = v108 + 18000;
    v28 = v108 - 18000;
    if ((v27 >> 5) < 0x465u)
    {
      v28 = v27;
    }

    v29 = v26 - v28;
    if (v29 > 18000)
    {
      v29 -= 36000;
    }

    if (v29 < -17999)
    {
      v29 += 36000;
    }

    if (fabs(v29 / 100.0) < *(**(a1 + 32) + 1016))
    {
      break;
    }

LABEL_31:
    v24 = (v24 + 40);
    if (v24 == v25)
    {
      goto LABEL_180;
    }
  }

  v23 = 1;
  v113 = v121;
  if (!v121)
  {
    return v23;
  }

LABEL_181:
  v122 = v113;
  operator delete(v113);
  return v23;
}

void sub_71E82C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_71E858(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = 0x2127599BF4325C37 * (v4 ^ (v3 >> 23));
  v6 = v5 ^ (v5 >> 47);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_28;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 47);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (__PAIR64__(*(v11 + 10), *(v11 + 4)) == __PAIR64__(WORD2(v2), v2) && *(v11 + 22) == BYTE6(v2))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_28;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_28;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  if (__PAIR64__(*(v11 + 10), *(v11 + 4)) != __PAIR64__(WORD2(v2), v2) || *(v11 + 22) != BYTE6(v2))
  {
    goto LABEL_21;
  }

  return v11;
}

BOOL sub_71EBFC(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 >= 0x47)
    {
      v8 = v6[35];
      if (v6[35])
      {
        v9 = 2;
LABEL_8:
        v10 = (*(v5 + v8) & v9) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v7 >= 0x47)
  {
    v8 = v6[35];
    if (v6[35])
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = *v3;
  v12 = (*v3 - **v3);
  v13 = *v12;
  if (!*(v3 + 38))
  {
    if (v13 >= 0x47 && v12[35])
    {
      if ((v10 ^ ((*(v11 + v12[35]))))
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v10)
    {
      return 0;
    }

    if (v13 < 0x2F)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (v13 < 0x47 || !v12[35])
  {
    goto LABEL_19;
  }

  if ((v10 ^ ((*(v11 + v12[35]) & 2) != 0)))
  {
    return 0;
  }

LABEL_21:
  if (v12[23])
  {
    v14 = *(v11 + v12[23]);
    v15 = v14 > 0x2B || ((1 << v14) & 0x80000001040) == 0;
    if (v15 || v13 >= 0x9B && (v16 = v12[77]) != 0 && (*(v11 + v16 + 2) & 0x20) != 0)
    {
      v17 = v14 == 44;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v17 = 1;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  v17 = 0;
  if (v7 < 0x2F)
  {
LABEL_44:
    if (!v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

LABEL_34:
  if (!v6[23])
  {
    goto LABEL_44;
  }

  v18 = *(v5 + v6[23]);
  if (v18 <= 0x2B && ((1 << v18) & 0x80000001040) != 0 && (v7 < 0x9B || (v20 = v6[77]) == 0 || (*(v5 + v20 + 2) & 0x20) == 0))
  {
    if (v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if ((v17 ^ (v18 == 44)))
  {
    return 0;
  }

LABEL_45:
  if (fabs(sub_70E2E0(*a1, v3, a2)) >= *(v4 + 1016))
  {
    return 0;
  }

  v22 = a1[2];
  v23 = *v22;
  v24 = sub_31ACAC(*(*v22 + 888), v22[1], a2);
  v25 = *(v23 + 888);
  v35 = a2[4];
  v26 = *(a2 + 1);
  v34[0] = *a2;
  v34[1] = v26;
  BYTE6(v35) = BYTE6(v35) == 0;
  v27 = v22[1];
  v28 = *v27;
  v29 = *(v27 + 16);
  v33 = *(v27 + 32);
  v32[0] = v28;
  v32[1] = v29;
  BYTE6(v33) = BYTE6(v33) == 0;
  v30 = sub_31ACAC(v25, v34, v32);
  if (v30 >= v24)
  {
    v30 = v24;
  }

  return v30 < *(v4 + 1904);
}

int **sub_71EE9C(int **result, int **a2, uint64_t a3, int **a4)
{
  if (result != a2)
  {
    v4 = *a4;
    v5 = (*a4 - **a4);
    v6 = *v5;
    if (*(a4 + 38))
    {
      if (v6 <= 0x46)
      {
        while (1)
        {
          v15 = *result;
          v16 = (*result - **result);
          v17 = *v16;
          if (*(result + 38))
          {
            if (v17 < 0x47)
            {
              return result;
            }

            v18 = v16[35];
            if (!v18 || (*(v15 + v18) & 2) == 0)
            {
              return result;
            }
          }

          else
          {
            if (v17 < 0x47)
            {
              return result;
            }

            v19 = v16[35];
            if (!v19 || (*(v15 + v19) & 1) == 0)
            {
              return result;
            }
          }

          result += 5;
          if (result == a2)
          {
            return a2;
          }
        }
      }

      v7 = v5[35];
      if (!v7)
      {
        v24 = result;
        while (1)
        {
          v25 = *v24;
          v26 = (*v24 - **v24);
          v27 = *v26;
          if (*(v24 + 38))
          {
            if (v27 < 0x47)
            {
              return v24;
            }

            v28 = v26[35];
            if (!v28 || (*(v25 + v28) & 2) == 0)
            {
              return v24;
            }
          }

          else
          {
            if (v27 < 0x47)
            {
              return v24;
            }

            v29 = v26[35];
            if (!v29 || (*(v25 + v29) & 1) == 0)
            {
              return v24;
            }
          }

          v24 += 5;
          result = a2;
          if (v24 == a2)
          {
            return result;
          }
        }
      }

      v8 = *&v4[v7];
      while (1)
      {
        v20 = (*result - **result);
        v21 = *v20;
        if (*(result + 38))
        {
          if (v21 < 0x47)
          {
            goto LABEL_32;
          }

          v22 = v20[35];
          if (!v22)
          {
            goto LABEL_32;
          }

          v23 = 2;
        }

        else
        {
          if (v21 < 0x47 || (v22 = v20[35]) == 0)
          {
LABEL_32:
            if ((v8 & 2) == 0)
            {
              return result;
            }

            goto LABEL_33;
          }

          v23 = 1;
        }

        if (((*(*result + v22) & v23) != 0) == (v8 & 2) >> 1)
        {
          return result;
        }

LABEL_33:
        result += 5;
        if (result == a2)
        {
          return a2;
        }
      }
    }

    while (1)
    {
      v9 = *result;
      v10 = (*result - **result);
      v11 = *v10;
      if (*(result + 38))
      {
        if (v11 >= 0x47)
        {
          v12 = v10[35];
          if (v12)
          {
            v13 = (*(v9 + v12) & 2) != 0;
            if (v6 < 0x47)
            {
              goto LABEL_7;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v11 >= 0x47)
      {
        v14 = v10[35];
        if (v14)
        {
          v13 = (*(v9 + v14) & 1) != 0;
          if (v6 < 0x47)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      v13 = 0;
      if (v6 < 0x47)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (!v5[35])
      {
LABEL_7:
        if (!v13)
        {
          return result;
        }

        goto LABEL_8;
      }

      if (v13 == (v4[v5[35]] & 1))
      {
        return result;
      }

LABEL_8:
      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_71F0D0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = 0x101010101010101 * (v9 & 0x7F);
  v14 = *v10;
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v14 + v15);
    v17 = ((v16 ^ v13) - 0x101010101010101) & ~(v16 ^ v13) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_11:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_14;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = v10[1] + 12 * v18;
    if (__PAIR64__(*(v19 + 4), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  if (v12 == v18)
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v14 + v18);
  a3[3] = v19;
  a3[4] = (v14 + v12);
  return result;
}

uint64_t sub_71F240@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_10:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v21 = result;
      v23 = a3;
      v24 = sub_71F3FC((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v23;
      v18 = v24;
      result = v21;
      v25 = v10[1] + 12 * v18;
      *v25 = *a2;
      *(v25 + 8) = 0;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v20 = 1;
      goto LABEL_14;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = v17 + 12 * v18;
    if (__PAIR64__(*(v19 + 4), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_14:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 12 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v20;
  return result;
}

unint64_t sub_71F3FC(void *a1, unint64_t a2)
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
      sub_71F4F4(a1);
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

uint64_t sub_71F4F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_71F524();
  }

  return sub_71F710(a1);
}

uint64_t sub_71F710(uint64_t result)
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
      goto LABEL_31;
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
LABEL_31:
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
        v18 = *(*(result + 8) + 12 * i);
        v19 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        if ((v18 & 0xFF000000000000) != 0)
        {
          v20 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        }

        else
        {
          v20 = v19 + 1;
        }

        v21 = ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ~((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47)) << 21);
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
            v29 = v28 + 12 * v16;
            v30 = (v28 + 12 * i);
            v31 = *v30;
            *(v29 + 8) = *(v30 + 2);
            *v29 = v31;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v32 = (v28 + 12 * i);
            v33 = *v32;
            v34 = *(v32 + 2);
            v35 = 12 * v16;
            v36 = (v28 + v35);
            v37 = *(v36 + 2);
            *v32 = *v36;
            *(v32 + 2) = v37;
            v38 = *(result + 8) + v35;
            *v38 = v33;
            *(v38 + 8) = v34;
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

    v39 = i - (i >> 3);
    v40 = i == 7;
    v41 = 6;
    if (!v40)
    {
      v41 = v39;
    }
  }

  else
  {
    v41 = 0;
  }

  *(result + 40) = v41 - *(result + 16);
  return result;
}

uint64_t sub_71FA28(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8(a1 + 824, 2u);
  return a1;
}

void sub_71FB6C(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_71FBB8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 888);
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  v128.i64[0] = v8;
  v128.i64[1] = v12;
  *&v129 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v129 + 1) = v13;
  v130 = a2;
  v14 = *(v6 + 888);
  v15 = sub_2B51D8(v14, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v124.i64[0] = v15;
  v124.i64[1] = v19;
  v125 = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v126 = v20;
  v127 = a3;
  if (**(a1 + 8) == 1)
  {
    v21 = *(*(a1 + 16) + 32);
    if (a2 == v21 && (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(v21) & 0xFFFFFF))
    {
      return 0;
    }

    v22 = *(*(a1 + 24) + 32);
    if (a3 == v22 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v22) & 0xFFFFFF))
    {
      return 0;
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_31B8F4(*(v6 + 888), &v128, &v121);
  v24 = v121;
  v25 = v122;
  if (v121 == v122)
  {
LABEL_180:
    v23 = 0;
    v113 = v121;
    if (v121)
    {
      goto LABEL_181;
    }

    return v23;
  }

  while (1)
  {
    v30 = v24[2].u32[0];
    if (v30 == v127 && v24[2].u16[2] == WORD2(v127) && v24[2].u8[6] == BYTE6(v127))
    {
      goto LABEL_31;
    }

    v31 = v24->i64[0];
    v32 = (v24->i64[0] - *v24->i64[0]);
    v33 = *v32;
    if (v24[2].i8[6])
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v34 = v32[77];
      if (!v34 || (*(v31 + v34) & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v35 = v32[77];
      if (!v35 || (*(v31 + v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (**(a1 + 8) == 1)
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 16);
      sub_31A0AC(*(v6 + 888), v37, v30 | (v24[2].u16[2] << 32), v119[0].i64);
      if (!v37[2].i32[0])
      {
        goto LABEL_31;
      }

      v38 = *v37;
      if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v37), vceqzq_s64(v119[0])), xmmword_22671F0)) & 0xF) != 0 || v120 == 0)
      {
        goto LABEL_31;
      }

      v40 = (v38.i64[1] - *v38.i64[1]);
      v41 = *v40;
      if (v37[2].i8[6])
      {
        if (v41 < 5)
        {
          goto LABEL_59;
        }

        v42 = v40[2];
        if (!v42)
        {
          goto LABEL_59;
        }
      }

      else if (v41 < 9 || (v42 = v40[4]) == 0)
      {
LABEL_59:
        v43 = 0;
        v44 = v119[0].i64[1];
        v45 = (v119[0].i64[1] - *v119[0].i64[1]);
        v46 = *v45;
        if (BYTE6(v120))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v43 = *(v38.i64[1] + v42);
      v44 = v119[0].i64[1];
      v45 = (v119[0].i64[1] - *v119[0].i64[1]);
      v46 = *v45;
      if (BYTE6(v120))
      {
LABEL_60:
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
LABEL_62:
            v48 = *(v44 + v47);
            goto LABEL_64;
          }
        }

LABEL_63:
        v48 = 0;
LABEL_64:
        v49 = v43 + 18000;
        v50 = v43 - 18000;
        if ((v49 >> 5) < 0x465u)
        {
          v50 = v49;
        }

        v51 = v48 - v50;
        if (v51 > 18000)
        {
          v51 -= 36000;
        }

        if (v51 < -17999)
        {
          v51 += 36000;
        }

        if (fabs(v51 / 100.0) >= *(*v36 + 1016))
        {
          goto LABEL_31;
        }

        v52 = *(a1 + 24);
        v53 = *(a1 + 32);
        sub_31A0AC(*(v6 + 888), v52, v24[2].u32[0] | (v24[2].u16[2] << 32), v117[0].i64);
        if (!v52[2].i32[0])
        {
          goto LABEL_31;
        }

        v54 = *v52;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v117[0])), xmmword_22671F0)) & 0xF) != 0 || !v118)
        {
          goto LABEL_31;
        }

        v55 = (v54.i64[1] - *v54.i64[1]);
        v56 = *v55;
        if (v52[2].i8[6])
        {
          if (v56 < 5)
          {
            goto LABEL_84;
          }

          v57 = v55[2];
          if (!v57)
          {
            goto LABEL_84;
          }
        }

        else if (v56 < 9 || (v57 = v55[4]) == 0)
        {
LABEL_84:
          v58 = 0;
          v59 = v117[0].i64[1];
          v60 = (v117[0].i64[1] - *v117[0].i64[1]);
          v61 = *v60;
          if (BYTE6(v118))
          {
            goto LABEL_85;
          }

          goto LABEL_81;
        }

        v58 = *(v54.i64[1] + v57);
        v59 = v117[0].i64[1];
        v60 = (v117[0].i64[1] - *v117[0].i64[1]);
        v61 = *v60;
        if (BYTE6(v118))
        {
LABEL_85:
          if (v61 >= 9)
          {
            v62 = v60[4];
            if (v62)
            {
LABEL_87:
              v63 = *(v59 + v62);
              goto LABEL_89;
            }
          }

LABEL_88:
          v63 = 0;
LABEL_89:
          v64 = v58 + 18000;
          v65 = v58 - 18000;
          if ((v64 >> 5) < 0x465u)
          {
            v65 = v64;
          }

          v66 = v63 - v65;
          if (v66 > 18000)
          {
            v66 -= 36000;
          }

          if (v66 < -17999)
          {
            v66 += 36000;
          }

          if (fabs(v66 / 100.0) >= *(*v53 + 1016))
          {
            goto LABEL_31;
          }

          goto LABEL_96;
        }

LABEL_81:
        if (v61 >= 5)
        {
          v62 = v60[2];
          if (v62)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_88;
      }

LABEL_56:
      if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }

LABEL_96:
    v67 = (v128.i64[0] - *v128.i64[0]);
    v68 = *v67;
    if (v68 < 0x9B || !v67[77] || (~*(v128.i64[0] + v67[77]) & 3) != 0)
    {
      v70 = (v124.i64[0] - *v124.i64[0]);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(v124.i64[0] + v71);
        if (v72)
        {
          v69 = (v72 >> 1) & 1;
        }

        else
        {
          v69 = 0;
        }

        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v69 = 0;
        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v73 = v67[77];
    if (v73)
    {
      v74 = *(v128.i64[0] + v73);
      if ((v74 & 2) != 0)
      {
        v75 = &v128;
      }

      else
      {
        v75 = &v124;
      }

      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = &v124;
      }

      goto LABEL_116;
    }

LABEL_115:
    v76 = &v124;
LABEL_116:
    v77 = v76[1];
    v119[0] = *v76;
    v119[1] = v77;
    v120 = v76[2].i64[0];
    v78 = (v128.i64[0] - *v128.i64[0]);
    if (*v78 >= 0x9Bu && (v79 = v78[77]) != 0)
    {
      v80 = *(v128.i64[0] + v79);
      if ((v80 & 2) != 0)
      {
        v81 = &v124;
      }

      else
      {
        v81 = &v128;
      }

      if (v80)
      {
        v82 = v81;
      }

      else
      {
        v82 = &v128;
      }
    }

    else
    {
      v82 = &v128;
    }

    v83 = v82[1];
    v117[0] = *v82;
    v117[1] = v83;
    v118 = v82[2].i64[0];
    v84 = sub_70E2E0(v6, v119, v117);
    if (!v69)
    {
      goto LABEL_162;
    }

    if (!v120)
    {
      goto LABEL_162;
    }

    v85 = *v24;
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v119[0]), vceqzq_s64(*v24)), xmmword_22671F0)) & 0xF) != 0 || !v24[2].i32[0])
    {
      goto LABEL_162;
    }

    v86 = (v119[0].i64[1] - *v119[0].i64[1]);
    v87 = *v86;
    if (BYTE6(v120))
    {
      if (v87 >= 5)
      {
        v88 = v86[2];
        if (v88)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v87 >= 9)
    {
      v88 = v86[4];
      if (v88)
      {
LABEL_135:
        v89 = *(v119[0].i64[1] + v88);
        v90 = v24->i64[1];
        v91 = (v85.i64[1] - *v85.i64[1]);
        v92 = *v91;
        if (v24[2].i8[6])
        {
          goto LABEL_140;
        }

        goto LABEL_136;
      }
    }

    v89 = 0;
    v90 = v24->i64[1];
    v91 = (v85.i64[1] - *v85.i64[1]);
    v92 = *v91;
    if (v24[2].i8[6])
    {
LABEL_140:
      if (v92 >= 9)
      {
        v93 = v91[4];
        if (v93)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

LABEL_136:
    if (v92 >= 5)
    {
      v93 = v91[2];
      if (v93)
      {
LABEL_142:
        v94 = *(v90 + v93);
        goto LABEL_144;
      }
    }

LABEL_143:
    v94 = 0;
LABEL_144:
    v95 = v89 + 18000;
    v96 = v89 - 18000;
    if ((v95 >> 5) < 0x465u)
    {
      v96 = v95;
    }

    v97 = v94 - v96;
    if (v97 > 18000)
    {
      v97 -= 36000;
    }

    if (v97 < -17999)
    {
      v97 += 36000;
    }

    if (fabs(v97 / 100.0) < *(**(a1 + 32) + 1016))
    {
      v98 = (v85.i64[0] - *v85.i64[0]);
      if (*v98 >= 0x9Bu)
      {
        v99 = v98[77];
        if (v99)
        {
          if ((~*(v85.i64[0] + v99) & 3) == 0)
          {
            if (v84 < 0.0)
            {
              v100 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v100 < 0x9Bu)
              {
                break;
              }

              v101 = v100[77];
              if (!v101 || (*(v119[0].i64[0] + v101 + 1) & 0x80) == 0)
              {
                break;
              }
            }

            if (v84 > 0.0)
            {
              v102 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v102 >= 0x9Bu)
              {
                v103 = v102[77];
                if (v103)
                {
                  if ((*(v119[0].i64[0] + v103 + 1) & 0x80) != 0)
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

LABEL_162:
    v104 = *(v6 + 888);
    v116 = v130;
    v115[0] = v128;
    v115[1] = v129;
    BYTE6(v116) = BYTE6(v130) == 0;
    if (!sub_31B71C(v104, v24, v115, &v124) || !v130 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v128), vceqzq_s64(v124)), xmmword_22671F0)) & 0xF) != 0 || !v127)
    {
      goto LABEL_31;
    }

    v105 = (v128.i64[1] - *v128.i64[1]);
    v106 = *v105;
    if (BYTE6(v130))
    {
      if (v106 >= 5)
      {
        v107 = v105[2];
        if (v107)
        {
          goto LABEL_172;
        }
      }
    }

    else if (v106 >= 9)
    {
      v107 = v105[4];
      if (v107)
      {
LABEL_172:
        v108 = *(v128.i64[1] + v107);
        v109 = v124.i64[1];
        v110 = (v124.i64[1] - *v124.i64[1]);
        v111 = *v110;
        if (BYTE6(v127))
        {
          goto LABEL_177;
        }

        goto LABEL_173;
      }
    }

    v108 = 0;
    v109 = v124.i64[1];
    v110 = (v124.i64[1] - *v124.i64[1]);
    v111 = *v110;
    if (BYTE6(v127))
    {
LABEL_177:
      if (v111 < 9)
      {
        goto LABEL_23;
      }

      v112 = v110[4];
      if (!v112)
      {
        goto LABEL_23;
      }

      goto LABEL_179;
    }

LABEL_173:
    if (v111 < 5 || (v112 = v110[2]) == 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_179:
    v26 = *(v109 + v112);
LABEL_24:
    v27 = v108 + 18000;
    v28 = v108 - 18000;
    if ((v27 >> 5) < 0x465u)
    {
      v28 = v27;
    }

    v29 = v26 - v28;
    if (v29 > 18000)
    {
      v29 -= 36000;
    }

    if (v29 < -17999)
    {
      v29 += 36000;
    }

    if (fabs(v29 / 100.0) < *(**(a1 + 32) + 1016))
    {
      break;
    }

LABEL_31:
    v24 = (v24 + 40);
    if (v24 == v25)
    {
      goto LABEL_180;
    }
  }

  v23 = 1;
  v113 = v121;
  if (!v121)
  {
    return v23;
  }

LABEL_181:
  v122 = v113;
  operator delete(v113);
  return v23;
}

void sub_720608(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_720634(uint64_t *a1, int **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = (*a2 - **a2);
  v7 = *v6;
  if (*(a2 + 38))
  {
    if (v7 >= 0x9B)
    {
      v8 = v6[77];
      if (v6[77])
      {
        v9 = 2;
LABEL_8:
        v10 = (*(v5 + v8) & v9) != 0;
        goto LABEL_10;
      }
    }
  }

  else if (v7 >= 0x9B)
  {
    v8 = v6[77];
    if (v6[77])
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_10:
  v11 = *v3;
  v12 = (*v3 - **v3);
  v13 = *v12;
  if (!*(v3 + 38))
  {
    if (v13 >= 0x9B && v12[77])
    {
      if ((v10 ^ ((*(v11 + v12[77]))))
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v10)
    {
      return 0;
    }

    if (v13 < 0x2F)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (v13 < 0x9B || !v12[77])
  {
    goto LABEL_19;
  }

  if ((v10 ^ ((*(v11 + v12[77]) & 2) != 0)))
  {
    return 0;
  }

LABEL_21:
  if (v12[23])
  {
    v14 = *(v11 + v12[23]);
    v15 = v14 > 0x2B || ((1 << v14) & 0x80000001040) == 0;
    if (v15 || v13 >= 0x9B && (v16 = v12[77]) != 0 && (*(v11 + v16 + 2) & 0x20) != 0)
    {
      v17 = v14 == 44;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v17 = 1;
      if (v7 < 0x2F)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  v17 = 0;
  if (v7 < 0x2F)
  {
LABEL_44:
    if (!v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

LABEL_34:
  if (!v6[23])
  {
    goto LABEL_44;
  }

  v18 = *(v5 + v6[23]);
  if (v18 <= 0x2B && ((1 << v18) & 0x80000001040) != 0 && (v7 < 0x9B || (v20 = v6[77]) == 0 || (*(v5 + v20 + 2) & 0x20) == 0))
  {
    if (v17)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if ((v17 ^ (v18 == 44)))
  {
    return 0;
  }

LABEL_45:
  if (fabs(sub_70E2E0(*a1, v3, a2)) >= *(v4 + 1016))
  {
    return 0;
  }

  v22 = a1[2];
  v23 = *v22;
  v24 = sub_31ACAC(*(*v22 + 888), v22[1], a2);
  v25 = *(v23 + 888);
  v35 = a2[4];
  v26 = *(a2 + 1);
  v34[0] = *a2;
  v34[1] = v26;
  BYTE6(v35) = BYTE6(v35) == 0;
  v27 = v22[1];
  v28 = *v27;
  v29 = *(v27 + 16);
  v33 = *(v27 + 32);
  v32[0] = v28;
  v32[1] = v29;
  BYTE6(v33) = BYTE6(v33) == 0;
  v30 = sub_31ACAC(v25, v34, v32);
  if (v30 >= v24)
  {
    v30 = v24;
  }

  return v30 < *(v4 + 1904);
}

int **sub_7208D4(int **result, int **a2, uint64_t a3, int **a4)
{
  if (result != a2)
  {
    v4 = *a4;
    v5 = (*a4 - **a4);
    v6 = *v5;
    if (*(a4 + 38))
    {
      if (v6 <= 0x9A)
      {
        while (1)
        {
          v16 = *result;
          v17 = (*result - **result);
          v18 = *v17;
          if (*(result + 38))
          {
            if (v18 < 0x9B)
            {
              return result;
            }

            v19 = v17[77];
            if (!v19 || (*(v16 + v19) & 2) == 0)
            {
              return result;
            }
          }

          else
          {
            if (v18 < 0x9B)
            {
              return result;
            }

            v20 = v17[77];
            if (!v20 || (*(v16 + v20) & 1) == 0)
            {
              return result;
            }
          }

          result += 5;
          if (result == a2)
          {
            return a2;
          }
        }
      }

      v7 = v5[77];
      if (!v7)
      {
        v26 = result;
        while (1)
        {
          v27 = *v26;
          v28 = (*v26 - **v26);
          v29 = *v28;
          if (*(v26 + 38))
          {
            if (v29 < 0x9B)
            {
              return v26;
            }

            v30 = v28[77];
            if (!v30 || (*(v27 + v30) & 2) == 0)
            {
              return v26;
            }
          }

          else
          {
            if (v29 < 0x9B)
            {
              return v26;
            }

            v31 = v28[77];
            if (!v31 || (*(v27 + v31) & 1) == 0)
            {
              return v26;
            }
          }

          v26 += 5;
          result = a2;
          if (v26 == a2)
          {
            return result;
          }
        }
      }

      v8 = *&v4[v7];
      v9 = (v8 >> 1) & 1;
      while (1)
      {
        v21 = *result;
        v22 = (*result - **result);
        v23 = *v22;
        if (*(result + 38))
        {
          if (v23 < 0x9B)
          {
            goto LABEL_32;
          }

          v24 = v22[77];
          if (!v24)
          {
            goto LABEL_32;
          }

          if (((*(v21 + v24) & 2) != 0) == v9)
          {
            return result;
          }
        }

        else
        {
          if (v23 < 0x9B || (v25 = v22[77]) == 0)
          {
LABEL_32:
            if ((v8 & 2) == 0)
            {
              return result;
            }

            goto LABEL_33;
          }

          if ((*(v21 + v25)) == v9)
          {
            return result;
          }
        }

LABEL_33:
        result += 5;
        if (result == a2)
        {
          return a2;
        }
      }
    }

    while (1)
    {
      v10 = *result;
      v11 = (*result - **result);
      v12 = *v11;
      if (*(result + 38))
      {
        if (v12 >= 0x9B)
        {
          v13 = v11[77];
          if (v13)
          {
            v14 = (*(v10 + v13) & 2) != 0;
            if (v6 < 0x9B)
            {
              goto LABEL_7;
            }

            goto LABEL_19;
          }
        }
      }

      else if (v12 >= 0x9B)
      {
        v15 = v11[77];
        if (v15)
        {
          v14 = (*(v10 + v15) & 1) != 0;
          if (v6 < 0x9B)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        }
      }

      v14 = 0;
      if (v6 < 0x9B)
      {
        goto LABEL_7;
      }

LABEL_19:
      if (!v5[77])
      {
LABEL_7:
        if (!v14)
        {
          return result;
        }

        goto LABEL_8;
      }

      if (v14 == (v4[v5[77]] & 1))
      {
        return result;
      }

LABEL_8:
      result += 5;
      if (result == a2)
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t sub_720B1C(uint64_t a1)
{
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 760) = 0u;
  sub_40D5C8(a1 + 824, 2u);
  return a1;
}

void sub_720C60(_Unwind_Exception *a1)
{
  v3 = v1[99];
  if (v3)
  {
    v1[100] = v3;
    operator delete(v3);
    v4 = v1[96];
    if (!v4)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[96];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v4;
  operator delete(v4);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_720CAC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 888);
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  v128.i64[0] = v8;
  v128.i64[1] = v12;
  *&v129 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v129 + 1) = v13;
  v130 = a2;
  v14 = *(v6 + 888);
  v15 = sub_2B51D8(v14, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v124.i64[0] = v15;
  v124.i64[1] = v19;
  v125 = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v126 = v20;
  v127 = a3;
  if (**(a1 + 8) == 1)
  {
    v21 = *(*(a1 + 16) + 32);
    if (a2 == v21 && (HIDWORD(a2) & 0xFFFFFF) == (HIDWORD(v21) & 0xFFFFFF))
    {
      return 0;
    }

    v22 = *(*(a1 + 24) + 32);
    if (a3 == v22 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v22) & 0xFFFFFF))
    {
      return 0;
    }
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  sub_31B8F4(*(v6 + 888), &v128, &v121);
  v24 = v121;
  v25 = v122;
  if (v121 == v122)
  {
LABEL_180:
    v23 = 0;
    v113 = v121;
    if (v121)
    {
      goto LABEL_181;
    }

    return v23;
  }

  while (1)
  {
    v30 = v24[2].u32[0];
    if (v30 == v127 && v24[2].u16[2] == WORD2(v127) && v24[2].u8[6] == BYTE6(v127))
    {
      goto LABEL_31;
    }

    v31 = v24->i64[0];
    v32 = (v24->i64[0] - *v24->i64[0]);
    v33 = *v32;
    if (v24[2].i8[6])
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v34 = v32[77];
      if (!v34 || (*(v31 + v34) & 2) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 < 0x9B)
      {
        goto LABEL_31;
      }

      v35 = v32[77];
      if (!v35 || (*(v31 + v35) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (**(a1 + 8) == 1)
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 16);
      sub_31A0AC(*(v6 + 888), v37, v30 | (v24[2].u16[2] << 32), v119[0].i64);
      if (!v37[2].i32[0])
      {
        goto LABEL_31;
      }

      v38 = *v37;
      if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v37), vceqzq_s64(v119[0])), xmmword_22671F0)) & 0xF) != 0 || v120 == 0)
      {
        goto LABEL_31;
      }

      v40 = (v38.i64[1] - *v38.i64[1]);
      v41 = *v40;
      if (v37[2].i8[6])
      {
        if (v41 < 5)
        {
          goto LABEL_59;
        }

        v42 = v40[2];
        if (!v42)
        {
          goto LABEL_59;
        }
      }

      else if (v41 < 9 || (v42 = v40[4]) == 0)
      {
LABEL_59:
        v43 = 0;
        v44 = v119[0].i64[1];
        v45 = (v119[0].i64[1] - *v119[0].i64[1]);
        v46 = *v45;
        if (BYTE6(v120))
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v43 = *(v38.i64[1] + v42);
      v44 = v119[0].i64[1];
      v45 = (v119[0].i64[1] - *v119[0].i64[1]);
      v46 = *v45;
      if (BYTE6(v120))
      {
LABEL_60:
        if (v46 >= 9)
        {
          v47 = v45[4];
          if (v47)
          {
LABEL_62:
            v48 = *(v44 + v47);
            goto LABEL_64;
          }
        }

LABEL_63:
        v48 = 0;
LABEL_64:
        v49 = v43 + 18000;
        v50 = v43 - 18000;
        if ((v49 >> 5) < 0x465u)
        {
          v50 = v49;
        }

        v51 = v48 - v50;
        if (v51 > 18000)
        {
          v51 -= 36000;
        }

        if (v51 < -17999)
        {
          v51 += 36000;
        }

        if (fabs(v51 / 100.0) >= *(*v36 + 1016))
        {
          goto LABEL_31;
        }

        v52 = *(a1 + 24);
        v53 = *(a1 + 32);
        sub_31A0AC(*(v6 + 888), v52, v24[2].u32[0] | (v24[2].u16[2] << 32), v117[0].i64);
        if (!v52[2].i32[0])
        {
          goto LABEL_31;
        }

        v54 = *v52;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*v52), vceqzq_s64(v117[0])), xmmword_22671F0)) & 0xF) != 0 || !v118)
        {
          goto LABEL_31;
        }

        v55 = (v54.i64[1] - *v54.i64[1]);
        v56 = *v55;
        if (v52[2].i8[6])
        {
          if (v56 < 5)
          {
            goto LABEL_84;
          }

          v57 = v55[2];
          if (!v57)
          {
            goto LABEL_84;
          }
        }

        else if (v56 < 9 || (v57 = v55[4]) == 0)
        {
LABEL_84:
          v58 = 0;
          v59 = v117[0].i64[1];
          v60 = (v117[0].i64[1] - *v117[0].i64[1]);
          v61 = *v60;
          if (BYTE6(v118))
          {
            goto LABEL_85;
          }

          goto LABEL_81;
        }

        v58 = *(v54.i64[1] + v57);
        v59 = v117[0].i64[1];
        v60 = (v117[0].i64[1] - *v117[0].i64[1]);
        v61 = *v60;
        if (BYTE6(v118))
        {
LABEL_85:
          if (v61 >= 9)
          {
            v62 = v60[4];
            if (v62)
            {
LABEL_87:
              v63 = *(v59 + v62);
              goto LABEL_89;
            }
          }

LABEL_88:
          v63 = 0;
LABEL_89:
          v64 = v58 + 18000;
          v65 = v58 - 18000;
          if ((v64 >> 5) < 0x465u)
          {
            v65 = v64;
          }

          v66 = v63 - v65;
          if (v66 > 18000)
          {
            v66 -= 36000;
          }

          if (v66 < -17999)
          {
            v66 += 36000;
          }

          if (fabs(v66 / 100.0) >= *(*v53 + 1016))
          {
            goto LABEL_31;
          }

          goto LABEL_96;
        }

LABEL_81:
        if (v61 >= 5)
        {
          v62 = v60[2];
          if (v62)
          {
            goto LABEL_87;
          }
        }

        goto LABEL_88;
      }

LABEL_56:
      if (v46 >= 5)
      {
        v47 = v45[2];
        if (v47)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_63;
    }

LABEL_96:
    v67 = (v128.i64[0] - *v128.i64[0]);
    v68 = *v67;
    if (v68 < 0x9B || !v67[77] || (~*(v128.i64[0] + v67[77]) & 3) != 0)
    {
      v70 = (v124.i64[0] - *v124.i64[0]);
      if (*v70 >= 0x9Bu && (v71 = v70[77]) != 0)
      {
        v72 = *(v124.i64[0] + v71);
        if (v72)
        {
          v69 = (v72 >> 1) & 1;
        }

        else
        {
          v69 = 0;
        }

        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v69 = 0;
        if (v68 < 0x9B)
        {
          goto LABEL_115;
        }
      }
    }

    else
    {
      v69 = 1;
    }

    v73 = v67[77];
    if (v73)
    {
      v74 = *(v128.i64[0] + v73);
      if ((v74 & 2) != 0)
      {
        v75 = &v128;
      }

      else
      {
        v75 = &v124;
      }

      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = &v124;
      }

      goto LABEL_116;
    }

LABEL_115:
    v76 = &v124;
LABEL_116:
    v77 = v76[1];
    v119[0] = *v76;
    v119[1] = v77;
    v120 = v76[2].i64[0];
    v78 = (v128.i64[0] - *v128.i64[0]);
    if (*v78 >= 0x9Bu && (v79 = v78[77]) != 0)
    {
      v80 = *(v128.i64[0] + v79);
      if ((v80 & 2) != 0)
      {
        v81 = &v124;
      }

      else
      {
        v81 = &v128;
      }

      if (v80)
      {
        v82 = v81;
      }

      else
      {
        v82 = &v128;
      }
    }

    else
    {
      v82 = &v128;
    }

    v83 = v82[1];
    v117[0] = *v82;
    v117[1] = v83;
    v118 = v82[2].i64[0];
    v84 = sub_70E2E0(v6, v119, v117);
    if (!v69)
    {
      goto LABEL_162;
    }

    if (!v120)
    {
      goto LABEL_162;
    }

    v85 = *v24;
    if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v119[0]), vceqzq_s64(*v24)), xmmword_22671F0)) & 0xF) != 0 || !v24[2].i32[0])
    {
      goto LABEL_162;
    }

    v86 = (v119[0].i64[1] - *v119[0].i64[1]);
    v87 = *v86;
    if (BYTE6(v120))
    {
      if (v87 >= 5)
      {
        v88 = v86[2];
        if (v88)
        {
          goto LABEL_135;
        }
      }
    }

    else if (v87 >= 9)
    {
      v88 = v86[4];
      if (v88)
      {
LABEL_135:
        v89 = *(v119[0].i64[1] + v88);
        v90 = v24->i64[1];
        v91 = (v85.i64[1] - *v85.i64[1]);
        v92 = *v91;
        if (v24[2].i8[6])
        {
          goto LABEL_140;
        }

        goto LABEL_136;
      }
    }

    v89 = 0;
    v90 = v24->i64[1];
    v91 = (v85.i64[1] - *v85.i64[1]);
    v92 = *v91;
    if (v24[2].i8[6])
    {
LABEL_140:
      if (v92 >= 9)
      {
        v93 = v91[4];
        if (v93)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

LABEL_136:
    if (v92 >= 5)
    {
      v93 = v91[2];
      if (v93)
      {
LABEL_142:
        v94 = *(v90 + v93);
        goto LABEL_144;
      }
    }

LABEL_143:
    v94 = 0;
LABEL_144:
    v95 = v89 + 18000;
    v96 = v89 - 18000;
    if ((v95 >> 5) < 0x465u)
    {
      v96 = v95;
    }

    v97 = v94 - v96;
    if (v97 > 18000)
    {
      v97 -= 36000;
    }

    if (v97 < -17999)
    {
      v97 += 36000;
    }

    if (fabs(v97 / 100.0) < *(**(a1 + 32) + 1016))
    {
      v98 = (v85.i64[0] - *v85.i64[0]);
      if (*v98 >= 0x9Bu)
      {
        v99 = v98[77];
        if (v99)
        {
          if ((~*(v85.i64[0] + v99) & 3) == 0)
          {
            if (v84 < 0.0)
            {
              v100 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v100 < 0x9Bu)
              {
                break;
              }

              v101 = v100[77];
              if (!v101 || (*(v119[0].i64[0] + v101 + 1) & 0x80) == 0)
              {
                break;
              }
            }

            if (v84 > 0.0)
            {
              v102 = (v119[0].i64[0] - *v119[0].i64[0]);
              if (*v102 >= 0x9Bu)
              {
                v103 = v102[77];
                if (v103)
                {
                  if ((*(v119[0].i64[0] + v103 + 1) & 0x80) != 0)
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

LABEL_162:
    v104 = *(v6 + 888);
    v116 = v130;
    v115[0] = v128;
    v115[1] = v129;
    BYTE6(v116) = BYTE6(v130) == 0;
    if (!sub_31B71C(v104, v24, v115, &v124) || !v130 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(v128), vceqzq_s64(v124)), xmmword_22671F0)) & 0xF) != 0 || !v127)
    {
      goto LABEL_31;
    }

    v105 = (v128.i64[1] - *v128.i64[1]);
    v106 = *v105;
    if (BYTE6(v130))
    {
      if (v106 >= 5)
      {
        v107 = v105[2];
        if (v107)
        {
          goto LABEL_172;
        }
      }
    }

    else if (v106 >= 9)
    {
      v107 = v105[4];
      if (v107)
      {
LABEL_172:
        v108 = *(v128.i64[1] + v107);
        v109 = v124.i64[1];
        v110 = (v124.i64[1] - *v124.i64[1]);
        v111 = *v110;
        if (BYTE6(v127))
        {
          goto LABEL_177;
        }

        goto LABEL_173;
      }
    }

    v108 = 0;
    v109 = v124.i64[1];
    v110 = (v124.i64[1] - *v124.i64[1]);
    v111 = *v110;
    if (BYTE6(v127))
    {
LABEL_177:
      if (v111 < 9)
      {
        goto LABEL_23;
      }

      v112 = v110[4];
      if (!v112)
      {
        goto LABEL_23;
      }

      goto LABEL_179;
    }

LABEL_173:
    if (v111 < 5 || (v112 = v110[2]) == 0)
    {
LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_179:
    v26 = *(v109 + v112);
LABEL_24:
    v27 = v108 + 18000;
    v28 = v108 - 18000;
    if ((v27 >> 5) < 0x465u)
    {
      v28 = v27;
    }

    v29 = v26 - v28;
    if (v29 > 18000)
    {
      v29 -= 36000;
    }

    if (v29 < -17999)
    {
      v29 += 36000;
    }

    if (fabs(v29 / 100.0) < *(**(a1 + 32) + 1016))
    {
      break;
    }

LABEL_31:
    v24 = (v24 + 40);
    if (v24 == v25)
    {
      goto LABEL_180;
    }
  }

  v23 = 1;
  v113 = v121;
  if (!v121)
  {
    return v23;
  }

LABEL_181:
  v122 = v113;
  operator delete(v113);
  return v23;
}

void sub_7216FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    *(v1 + 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_721728(uint64_t *a1, int **a2)
{
  v4 = a1[1];
  v5 = *v4;
  v6 = (*v4 - **v4);
  v7 = *v6;
  if (v7 >= 0x2F && v6[23])
  {
    v8 = *(v5 + v6[23]);
    v9 = v8 > 0x2B || ((1 << v8) & 0x80000001040) == 0;
    v11 = !v9 && (v7 < 0x9B || (v10 = v6[77]) == 0 || (*(v5 + v10 + 2) & 0x20) == 0) || v8 == 44;
  }

  else
  {
    v11 = 0;
  }

  v12 = *a1;
  v13 = *a2;
  v14 = (*a2 - **a2);
  v15 = *v14;
  if (v15 >= 0x2F && v14[23])
  {
    v16 = *(v13 + v14[23]);
    v17 = v16 > 0x2B || ((1 << v16) & 0x80000001040) == 0;
    if (v17 || v15 >= 0x9B && (v18 = v14[77]) != 0 && (*(v13 + v18 + 2) & 0x20) != 0)
    {
      if ((v11 ^ (v16 == 44)))
      {
        return 0;
      }
    }

    else if (!v11)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (fabs(sub_70E2E0(*a1, v4, a2)) >= *(v12 + 1016))
  {
    return 0;
  }

  v19 = a1[2];
  v20 = *v19;
  v21 = sub_31ACAC(*(*v19 + 888), v19[1], a2);
  v22 = *(v20 + 888);
  v32 = a2[4];
  v23 = *(a2 + 1);
  v31[0] = *a2;
  v31[1] = v23;
  BYTE6(v32) = BYTE6(v32) == 0;
  v24 = v19[1];
  v25 = *v24;
  v26 = *(v24 + 16);
  v30 = *(v24 + 32);
  v29[0] = v25;
  v29[1] = v26;
  BYTE6(v30) = BYTE6(v30) == 0;
  v27 = sub_31ACAC(v22, v31, v29);
  if (v27 >= v21)
  {
    v27 = v21;
  }

  return v27 < *(v12 + 1904);
}

void sub_721918()
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
  xmmword_27A40B0 = 0u;
  unk_27A40C0 = 0u;
  dword_27A40D0 = 1065353216;
  sub_3A9A34(&xmmword_27A40B0, v0);
  sub_3A9A34(&xmmword_27A40B0, v3);
  sub_3A9A34(&xmmword_27A40B0, __p);
  sub_3A9A34(&xmmword_27A40B0, v9);
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
    qword_27A4088 = 0;
    qword_27A4090 = 0;
    qword_27A4080 = 0;
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

void sub_721B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A4098)
  {
    qword_27A40A0 = qword_27A4098;
    operator delete(qword_27A4098);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_721C0C(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 384);
  if ((v4 & 0xFE) == 4)
  {
    v4 = a3;
  }

  if (v4)
  {
    if (v4 == 2)
    {
      if (a4)
      {
        *(result + 32) = *(a2 + 1008);
      }

      ++*(result + 8);
    }

    else if (v4 == 3)
    {
      if (a4)
      {
        *(result + 24) = *(a2 + 1008);
      }

      ++*(result + 4);
    }
  }

  else
  {
    if (a4)
    {
      *(result + 16) = *(a2 + 1008);
    }

    ++*result;
  }

  return result;
}

void sub_721C84(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a1;
  switch(*(a2 + 160))
  {
    case 0:
      goto LABEL_71;
    case 1:
      a1 += 400;
      goto LABEL_71;
    case 2:
      a1 += 440;
      goto LABEL_71;
    case 3:
      a1 += 800;
      goto LABEL_71;
    case 4:
      a1 += 320;
      goto LABEL_71;
    case 5:
      a1 += 840;
      goto LABEL_71;
    case 6:
      a1 += 1640;
      goto LABEL_71;
    case 7:
      a1 += 1680;
      goto LABEL_71;
    case 0xB:
      a1 += 1040;
      goto LABEL_71;
    case 0xC:
      a1 += 1000;
      goto LABEL_71;
    case 0x10:
      a1 += 2600;
      goto LABEL_71;
    case 0x11:
      a1 += 40;
      goto LABEL_71;
    case 0x12:
      a1 += 2680;
      goto LABEL_71;
    case 0x14:
      a1 += 720;
      goto LABEL_71;
    case 0x15:
      a1 += 760;
      goto LABEL_71;
    case 0x16:
      a1 += 1280;
      goto LABEL_71;
    case 0x17:
      a1 += 1320;
      goto LABEL_71;
    case 0x18:
      a1 += 1360;
      goto LABEL_71;
    case 0x19:
      a1 += 120;
      goto LABEL_71;
    case 0x1A:
      a1 += 1800;
      goto LABEL_71;
    case 0x1B:
      a1 += 640;
      goto LABEL_71;
    case 0x1C:
      a1 += 680;
      goto LABEL_71;
    case 0x1D:
      a1 += 1080;
      goto LABEL_71;
    case 0x1E:
      a1 += 1120;
      goto LABEL_71;
    case 0x21:
      a1 += 2760;
      goto LABEL_71;
    case 0x22:
      a1 += 2720;
      goto LABEL_71;
    case 0x23:
      a1 += 360;
      goto LABEL_71;
    case 0x27:
      a1 += 2640;
      goto LABEL_71;
    case 0x29:
      a1 += 1840;
      goto LABEL_71;
    case 0x2A:
      a1 += 1880;
      goto LABEL_71;
    case 0x2B:
      a1 += 1920;
      goto LABEL_71;
    case 0x2C:
      a1 += 1960;
      goto LABEL_71;
    case 0x2D:
      a1 += 2000;
      goto LABEL_71;
    case 0x2E:
      a1 += 2040;
      goto LABEL_71;
    case 0x2F:
      a1 += 2080;
      goto LABEL_71;
    case 0x30:
      a1 += 2120;
      goto LABEL_71;
    case 0x31:
      a1 += 2160;
      goto LABEL_71;
    case 0x32:
      a1 += 2200;
      goto LABEL_71;
    case 0x33:
      a1 += 2240;
      goto LABEL_71;
    case 0x34:
      a1 += 2280;
      goto LABEL_71;
    case 0x35:
      a1 += 2320;
      goto LABEL_71;
    case 0x36:
      a1 += 2360;
      goto LABEL_71;
    case 0x37:
      a1 += 2400;
      goto LABEL_71;
    case 0x38:
      a1 += 2440;
      goto LABEL_71;
    case 0x39:
      a1 += 2480;
      goto LABEL_71;
    case 0x3A:
      a1 += 2520;
      goto LABEL_71;
    case 0x3B:
      a1 += 2560;
      goto LABEL_71;
    case 0x3C:
      a1 += 480;
      goto LABEL_71;
    case 0x3D:
      a1 += 520;
      goto LABEL_71;
    case 0x3E:
      a1 += 560;
      goto LABEL_71;
    case 0x3F:
      a1 += 600;
      goto LABEL_71;
    case 0x40:
      a1 += 1160;
      goto LABEL_71;
    case 0x41:
      a1 += 1200;
      goto LABEL_71;
    case 0x42:
      a1 += 1240;
      goto LABEL_71;
    case 0x52:
      a1 += 200;
      goto LABEL_71;
    case 0x53:
      a1 += 240;
      goto LABEL_71;
    case 0x54:
      a1 += 280;
      goto LABEL_71;
    case 0x55:
      a1 += 80;
      goto LABEL_71;
    case 0x56:
      a1 += 1720;
      goto LABEL_71;
    case 0x57:
      a1 += 1760;
      goto LABEL_71;
    case 0x58:
      a1 += 160;
      goto LABEL_71;
    case 0x59:
      a1 += 880;
      goto LABEL_71;
    case 0x5A:
      a1 += 920;
      goto LABEL_71;
    case 0x5B:
      a1 += 1400;
      goto LABEL_71;
    case 0x5C:
      a1 += 1440;
      goto LABEL_71;
    case 0x5D:
      a1 += 1480;
      goto LABEL_71;
    case 0x5E:
      a1 += 1520;
      goto LABEL_71;
    case 0x5F:
      a1 += 1560;
      goto LABEL_71;
    case 0x60:
      a1 += 1600;
      goto LABEL_71;
    case 0x61:
      a1 += 960;
LABEL_71:
      sub_721C0C(a1, a2, a3, a4);
      break;
    default:
      break;
  }

  if (a3 == 3 || !a3)
  {
    v7 = *(a2 + 160);
    if (v7 == 26 || (v7 - 41) <= 0x12)
    {
      v9 = a3;
      v10 = *(a2 + 296);
      v11 = *(a2 + 288);
      v12 = *(a2 + 312);
      sub_7220F4(v6 + 2800, &v9);
    }
  }
}