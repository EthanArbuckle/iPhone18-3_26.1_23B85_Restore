uint64_t AchievementSummary.deinit()
{

  sub_24E601704(v0 + 80, &qword_27F2129B0);
  sub_24E6585F8(v0 + 112);
  return v0;
}

uint64_t AchievementSummary.__deallocating_deinit()
{

  sub_24E601704(v0 + 80, &qword_27F2129B0);
  sub_24E6585F8(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_24EED62B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AchievementSummary.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EED63C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24EED64B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24F91FEF8();
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_24F91FEF8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EED6B14(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EED65DC(0, v2, 1, a1);
  }
}

void sub_24EED65DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v65 = &v47[-v11];
  v12 = sub_24F91F648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v67 = &v47[-v16];
  v17 = sub_24F91FEF8();
  MEMORY[0x28223BE20](v17);
  v57 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v69 = &v47[-v20];
  v23 = MEMORY[0x28223BE20](v21);
  v66 = &v47[-v24];
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = *(v26 + 56);
    v29 = (v13 + 48);
    v61 = (v13 + 32);
    v62 = v27;
    v59 = (v13 + 48);
    v60 = (v13 + 8);
    v58 = (v26 - 8);
    v63 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v54 = -v28;
    v55 = (v26 + 16);
    v31 = a1 - a3;
    v56 = v25;
    v48 = v28;
    v32 = v25 + v28 * a3;
LABEL_5:
    v52 = v30;
    v53 = a3;
    v50 = v32;
    v51 = v31;
    v33 = v31;
    while (1)
    {
      v34 = v62;
      (v62)(v66, v32, v17, v23);
      v34(v69, v30, v17);
      v35 = v65;
      sub_24F91FE88();
      v36 = *v29;
      if ((*v29)(v35, 1, v12) == 1)
      {
        sub_24F91F548();
        if (v36(v35, 1, v12) != 1)
        {
          sub_24E601704(v65, &unk_27F22EC30);
        }
      }

      else
      {
        (*v61)(v67, v35, v12);
      }

      sub_24F91FE88();
      v37 = v68;
      if (v36(v68, 1, v12) == 1)
      {
        v38 = v64;
        sub_24F91F548();
        if (v36(v37, 1, v12) != 1)
        {
          sub_24E601704(v37, &unk_27F22EC30);
        }
      }

      else
      {
        v38 = v64;
        (*v61)(v64, v37, v12);
      }

      v39 = v67;
      v40 = sub_24F91F588();
      v41 = v38;
      v42 = *v60;
      (*v60)(v41, v12);
      v42(v39, v12);
      v43 = *v58;
      (*v58)(v69, v17);
      v43(v66, v17);
      v29 = v59;
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v30 = v52 + v48;
        v31 = v51 - 1;
        v32 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v32, v17);
      swift_arrayInitWithTakeFrontToBack();
      v44(v30, v45, v17);
      v30 += v54;
      v32 += v54;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EED6B14(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v169 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v8 - 8);
  v200 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v164 - v11;
  MEMORY[0x28223BE20](v13);
  v183 = &v164 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v164 - v16;
  v202 = sub_24F91F648();
  v18 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v20 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v199 = &v164 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v164 - v24;
  MEMORY[0x28223BE20](v26);
  v182 = &v164 - v27;
  v197 = sub_24F91FEF8();
  v180 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v173 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v188 = &v164 - v30;
  MEMORY[0x28223BE20](v31);
  v201 = &v164 - v32;
  MEMORY[0x28223BE20](v33);
  v198 = &v164 - v34;
  MEMORY[0x28223BE20](v35);
  v185 = &v164 - v36;
  MEMORY[0x28223BE20](v37);
  v181 = &v164 - v38;
  MEMORY[0x28223BE20](v39);
  v164 = &v164 - v40;
  v42 = MEMORY[0x28223BE20](v41);
  v167 = &v164 - v43;
  v44 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    v47 = MEMORY[0x277D84F90];
    v49 = a3;
LABEL_115:
    a4 = *v169;
    if (!*v169)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_117;
  }

  v177 = v25;
  v46 = 0;
  v194 = v180 + 16;
  v195 = (v180 + 8);
  v193 = (v18 + 48);
  v192 = (v18 + 32);
  v191 = (v18 + 8);
  v190 = (v180 + 32);
  v47 = MEMORY[0x277D84F90];
  v168 = a4;
  v196 = v12;
  v179 = v17;
  v48 = v197;
  v49 = v44;
  v170 = v44;
LABEL_4:
  v50 = v46;
  v171 = v47;
  if (v46 + 1 >= v45)
  {
    v76 = v46 + 1;
  }

  else
  {
    v184 = v45;
    v51 = *v49;
    v52 = *(v180 + 72);
    v53 = v46;
    v54 = &(*v49)[v52 * (v46 + 1)];
    v55 = *(v180 + 16);
    v55(v167, v54, v48, v42);
    v189 = v51;
    v56 = &v51[v52 * v53];
    v57 = v164;
    v186 = v55;
    (v55)(v164, v56, v48);
    v58 = v167;
    LODWORD(v187) = sub_24EED5F20(v167, v57);
    if (v5)
    {
      v163 = *v195;
      (*v195)(v57, v48);
      (v163)(v58, v48);
      goto LABEL_125;
    }

    v166 = 0;
    v59 = *v195;
    (*v195)(v57, v48);
    v178 = v59;
    (v59)(v58, v48);
    v165 = v53;
    v60 = v53 + 2;
    v61 = &v189[v52 * (v53 + 2)];
    v62 = v193;
    v63 = v52;
    v189 = v52;
    do
    {
      if (v184 == v60)
      {
        v47 = v171;
        v76 = v184;
        goto LABEL_20;
      }

      v71 = v186;
      (v186)(v181, v61, v48);
      v71(v185, v54, v48);
      v72 = v202;
      v73 = v179;
      sub_24F91FE88();
      v74 = *v62;
      if ((*v62)(v73, 1, v72) == 1)
      {
        sub_24F91F548();
        if (v74(v73, 1, v72) != 1)
        {
          sub_24E601704(v179, &unk_27F22EC30);
        }
      }

      else
      {
        (*v192)(v182, v73, v72);
      }

      sub_24F91FE88();
      v75 = v183;
      if (v74(v183, 1, v202) == 1)
      {
        v64 = v177;
        sub_24F91F548();
        if (v74(v75, 1, v202) != 1)
        {
          sub_24E601704(v75, &unk_27F22EC30);
        }
      }

      else
      {
        v64 = v177;
        (*v192)(v177, v75, v202);
      }

      v65 = v182;
      v66 = sub_24F91F588();
      v67 = *v191;
      v68 = v64;
      v69 = v202;
      (*v191)(v68, v202);
      v67(v65, v69);
      v48 = v197;
      v70 = v178;
      (v178)(v185, v197);
      v70(v181, v48);
      ++v60;
      v63 = v189;
      v61 = &v189[v61];
      v54 += v189;
      v62 = v193;
    }

    while (((v187 ^ v66) & 1) == 0);
    v76 = v60 - 1;
    v47 = v171;
LABEL_20:
    v5 = v166;
    a4 = v168;
    v49 = v170;
    v50 = v165;
    if (v187)
    {
      if (v76 < v165)
      {
        goto LABEL_148;
      }

      if (v165 < v76)
      {
        v77 = v63 * (v76 - 1);
        v78 = v76 * v63;
        v184 = v76;
        v79 = v76;
        v80 = v165;
        v81 = v165 * v63;
        while (2)
        {
          if (v80 == --v79)
          {
            goto LABEL_27;
          }

          v84 = *v49;
          if (!v84)
          {
            goto LABEL_152;
          }

          v85 = *v190;
          (*v190)(v173, &v84[v81], v197);
          if (v81 >= v77 && &v84[v81] < &v84[v78])
          {
            v83 = v197;
            if (v81 != v77)
            {
              v82 = v197;
              swift_arrayInitWithTakeBackToFront();
LABEL_25:
              v83 = v82;
            }

            v85(&v84[v77], v173, v83);
            v49 = v170;
            v47 = v171;
            v63 = v189;
LABEL_27:
            ++v80;
            v77 -= v63;
            v78 -= v63;
            v81 += v63;
            if (v80 >= v79)
            {
              v5 = v166;
              a4 = v168;
              v48 = v197;
              v50 = v165;
              v76 = v184;
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        v82 = v197;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v86 = v49[1];
  if (v76 >= v86)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v76, v50))
  {
    goto LABEL_145;
  }

  if (v76 - v50 >= a4)
  {
LABEL_44:
    a4 = v76;
    if (v76 < v50)
    {
      goto LABEL_144;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_146;
  }

  if ((v50 + a4) >= v86)
  {
    a4 = v49[1];
  }

  else
  {
    a4 += v50;
  }

  if (a4 < v50)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v47 = sub_24E86164C(v47);
LABEL_117:
    v203 = v47;
    v158 = *(v47 + 16);
    if (v158 >= 2)
    {
      while (*v49)
      {
        v159 = *(v47 + 16 * v158);
        v160 = v47;
        v161 = *(v47 + 16 * (v158 - 1) + 32);
        v47 = *(v47 + 16 * (v158 - 1) + 40);
        sub_24EED7BA8(&(*v49)[*(v180 + 72) * v159], &(*v49)[*(v180 + 72) * v161], &(*v49)[*(v180 + 72) * v47], a4);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v47 < v159)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = sub_24E86164C(v160);
        }

        if (v158 - 2 >= *(v160 + 2))
        {
          goto LABEL_143;
        }

        v162 = &v160[16 * v158];
        *v162 = v159;
        *(v162 + 1) = v47;
        v203 = v160;
        sub_24E8615C0(v158 - 1);
        v47 = v203;
        v158 = *(v203 + 16);
        if (v158 <= 1)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_153;
    }

LABEL_125:

    return;
  }

  if (v76 == a4)
  {
    goto LABEL_44;
  }

  v166 = v5;
  v134 = *v49;
  v135 = *(v180 + 72);
  v189 = *(v180 + 16);
  v136 = &v134[v135 * (v76 - 1)];
  v186 = -v135;
  v165 = v50;
  v137 = v50 - v76;
  v187 = v134;
  v172 = v135;
  v138 = &v134[v76 * v135];
  v174 = a4;
LABEL_98:
  v184 = v76;
  v175 = v138;
  v176 = v137;
  v139 = v137;
  v178 = v136;
  while (1)
  {
    v140 = v48;
    v141 = v20;
    v142 = v189;
    (v189)(v198, v138, v140, v42);
    v142(v201, v136, v140);
    v143 = v202;
    v144 = v196;
    sub_24F91FE88();
    v145 = *v193;
    if ((*v193)(v144, 1, v143) == 1)
    {
      sub_24F91F548();
      if (v145(v144, 1, v143) != 1)
      {
        sub_24E601704(v196, &unk_27F22EC30);
      }
    }

    else
    {
      (*v192)(v199, v144, v143);
    }

    sub_24F91FE88();
    v146 = v200;
    v147 = v141;
    if (v145(v200, 1, v202) == 1)
    {
      sub_24F91F548();
      if (v145(v146, 1, v202) != 1)
      {
        sub_24E601704(v146, &unk_27F22EC30);
      }
    }

    else
    {
      (*v192)(v141, v146, v202);
    }

    v148 = v199;
    v149 = sub_24F91F588();
    v150 = *v191;
    v151 = v147;
    v152 = v147;
    v153 = v202;
    (*v191)(v152, v202);
    v150(v148, v153);
    v154 = *v195;
    v48 = v197;
    (*v195)(v201, v197);
    (v154)(v198, v48);
    if ((v149 & 1) == 0)
    {
      v20 = v151;
LABEL_97:
      v76 = v184 + 1;
      v136 = &v178[v172];
      v137 = v176 - 1;
      v138 = &v175[v172];
      a4 = v174;
      if (v184 + 1 != v174)
      {
        goto LABEL_98;
      }

      v5 = v166;
      v49 = v170;
      v47 = v171;
      v50 = v165;
      if (v174 < v165)
      {
        goto LABEL_144;
      }

LABEL_45:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = a4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_24E615ED8(0, *(v47 + 16) + 1, 1, v47);
      }

      a4 = *(v47 + 16);
      v88 = *(v47 + 24);
      v89 = a4 + 1;
      if (a4 >= v88 >> 1)
      {
        v47 = sub_24E615ED8((v88 > 1), a4 + 1, 1, v47);
      }

      *(v47 + 16) = v89;
      v90 = v47 + 16 * a4;
      v91 = v174;
      *(v90 + 32) = v50;
      *(v90 + 40) = v91;
      if (!*v169)
      {
        goto LABEL_154;
      }

      if (a4)
      {
        v92 = *v169;
        while (1)
        {
          v93 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v94 = *(v47 + 32);
            v95 = *(v47 + 40);
            v104 = __OFSUB__(v95, v94);
            v96 = v95 - v94;
            v97 = v104;
LABEL_65:
            if (v97)
            {
              goto LABEL_133;
            }

            v110 = (v47 + 16 * v89);
            v112 = *v110;
            v111 = v110[1];
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            v115 = v113;
            if (v113)
            {
              goto LABEL_136;
            }

            v116 = (v47 + 32 + 16 * v93);
            v118 = *v116;
            v117 = v116[1];
            v104 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v104)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v114, v119))
            {
              goto LABEL_140;
            }

            if (v114 + v119 >= v96)
            {
              if (v96 < v119)
              {
                v93 = v89 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v120 = (v47 + 16 * v89);
          v122 = *v120;
          v121 = v120[1];
          v104 = __OFSUB__(v121, v122);
          v114 = v121 - v122;
          v115 = v104;
LABEL_79:
          if (v115)
          {
            goto LABEL_135;
          }

          v123 = v47 + 16 * v93;
          v125 = *(v123 + 32);
          v124 = *(v123 + 40);
          v104 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v104)
          {
            goto LABEL_138;
          }

          if (v126 < v114)
          {
            goto LABEL_3;
          }

LABEL_86:
          a4 = v93 - 1;
          if (v93 - 1 >= v89)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*v49)
          {
            goto LABEL_151;
          }

          v131 = *(v47 + 32 + 16 * a4);
          v132 = *(v47 + 32 + 16 * v93 + 8);
          sub_24EED7BA8(&(*v49)[*(v180 + 72) * v131], &(*v49)[*(v180 + 72) * *(v47 + 32 + 16 * v93)], &(*v49)[*(v180 + 72) * v132], v92);
          if (v5)
          {
            goto LABEL_125;
          }

          if (v132 < v131)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_24E86164C(v47);
          }

          if (a4 >= *(v47 + 16))
          {
            goto LABEL_130;
          }

          v133 = v47 + 16 * a4;
          *(v133 + 32) = v131;
          *(v133 + 40) = v132;
          v203 = v47;
          sub_24E8615C0(v93);
          v47 = v203;
          v89 = *(v203 + 16);
          v48 = v197;
          if (v89 <= 1)
          {
            goto LABEL_3;
          }
        }

        v98 = v47 + 32 + 16 * v89;
        v99 = *(v98 - 64);
        v100 = *(v98 - 56);
        v104 = __OFSUB__(v100, v99);
        v101 = v100 - v99;
        if (v104)
        {
          goto LABEL_131;
        }

        v103 = *(v98 - 48);
        v102 = *(v98 - 40);
        v104 = __OFSUB__(v102, v103);
        v96 = v102 - v103;
        v97 = v104;
        if (v104)
        {
          goto LABEL_132;
        }

        v105 = (v47 + 16 * v89);
        v107 = *v105;
        v106 = v105[1];
        v104 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v104)
        {
          goto LABEL_134;
        }

        v104 = __OFADD__(v96, v108);
        v109 = v96 + v108;
        if (v104)
        {
          goto LABEL_137;
        }

        if (v109 >= v101)
        {
          v127 = (v47 + 32 + 16 * v93);
          v129 = *v127;
          v128 = v127[1];
          v104 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v104)
          {
            goto LABEL_141;
          }

          if (v96 < v130)
          {
            v93 = v89 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v45 = v49[1];
      v46 = v174;
      a4 = v168;
      if (v174 >= v45)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    if (!v187)
    {
      break;
    }

    v155 = *v190;
    v156 = v188;
    (*v190)(v188, v138, v48);
    swift_arrayInitWithTakeFrontToBack();
    v155(v136, v156, v48);
    v136 += v186;
    v138 += v186;
    v157 = __CFADD__(v139++, 1);
    v20 = v151;
    if (v157)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_24EED7BA8(unint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v92 = a4;
  v94 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - v9;
  MEMORY[0x28223BE20](v11);
  v91 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v86 = &v73 - v14;
  v15 = sub_24F91F648();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v81 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = (&v73 - v19);
  MEMORY[0x28223BE20](v20);
  v82 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v90 = &v73 - v23;
  v24 = sub_24F91FEF8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v88 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v83 = (&v73 - v28);
  MEMORY[0x28223BE20](v29);
  v93 = &v73 - v30;
  MEMORY[0x28223BE20](v31);
  v89 = &v73 - v32;
  v87 = *(v33 + 72);
  if (!v87)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v87 == -1)
  {
    goto LABEL_79;
  }

  v34 = v94 - a2;
  if (v94 - a2 != 0x8000000000000000 || v87 != -1)
  {
    v35 = &a2[-a1] / v87;
    v97 = a1;
    v36 = v92;
    v96 = v92;
    if (v35 < v34 / v87)
    {
      v37 = v35 * v87;
      if (v92 < a1 || a1 + v37 <= v92)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v92 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v36 = v92;
LABEL_17:
      v88 = (v36 + v37);
      v95 = v36 + v37;
      if (v37 >= 1 && a2 < v94)
      {
        v40 = *(v25 + 16);
        v41 = (v16 + 48);
        v83 = (v16 + 32);
        v84 = v40;
        v85 = (v25 + 16);
        v80 = (v25 + 8);
        v81 = (v16 + 8);
        do
        {
          v42 = a2;
          v43 = v36;
          v44 = v84;
          v84(v89, a2, v24);
          v92 = v43;
          v44(v93, v43, v24);
          v45 = v86;
          sub_24F91FE88();
          v46 = *v41;
          if ((*v41)(v45, 1, v15) == 1)
          {
            sub_24F91F548();
            if (v46(v45, 1, v15) != 1)
            {
              sub_24E601704(v86, &unk_27F22EC30);
            }
          }

          else
          {
            (*v83)(v90, v45, v15);
          }

          sub_24F91FE88();
          v47 = v91;
          if (v46(v91, 1, v15) == 1)
          {
            v48 = v82;
            sub_24F91F548();
            if (v46(v47, 1, v15) != 1)
            {
              sub_24E601704(v47, &unk_27F22EC30);
            }
          }

          else
          {
            v48 = v82;
            (*v83)(v82, v47, v15);
          }

          v49 = v90;
          v50 = sub_24F91F588();
          v51 = v48;
          v52 = *v81;
          (*v81)(v51, v15);
          v52(v49, v15);
          v53 = *v80;
          (*v80)(v93, v24);
          v53(v89, v24);
          if (v50)
          {
            v54 = v87;
            a2 = (v42 + v87);
            if (a1 < v42 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v36 = v92;
          }

          else
          {
            v54 = v87;
            v55 = v92 + v87;
            a2 = v42;
            if (a1 < v92 || a1 >= v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v92)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v96 = v55;
            v36 = v55;
          }

          a1 += v54;
          v97 = a1;
        }

        while (v36 < v88 && a2 < v94);
      }

LABEL_77:
      sub_24F8FB128(&v97, &v96, &v95);
      return;
    }

    v38 = v34 / v87 * v87;
    if (v92 < a2 || &a2[v38] <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v92 == a2)
      {
LABEL_48:
        v90 = a2;
        v56 = v36 + v38;
        if (v38 >= 1)
        {
          v89 = v10;
          v57 = -v87;
          v79 = (v16 + 48);
          v80 = (v25 + 16);
          v77 = (v16 + 8);
          v78 = (v16 + 32);
          v76 = (v25 + 8);
          v58 = v56;
          v82 = v24;
          v86 = a1;
          v93 = -v87;
          do
          {
            v74 = v56;
            v59 = v90;
            v90 += v57;
            v87 = v59;
            while (1)
            {
              v60 = v94;
              if (v59 <= a1)
              {
                v97 = v59;
                v95 = v74;
                goto LABEL_77;
              }

              v75 = v56;
              v61 = (v58 + v57);
              v62 = *v80;
              (*v80)(v83, v61, v24);
              (v62)(v88, v90, v24);
              v63 = v89;
              sub_24F91FE88();
              v64 = *v79;
              if ((*v79)(v63, 1, v15) == 1)
              {
                sub_24F91F548();
                if (v64(v63, 1, v15) != 1)
                {
                  sub_24E601704(v89, &unk_27F22EC30);
                }
              }

              else
              {
                (*v78)(v84, v63, v15);
              }

              sub_24F91FE88();
              v65 = v85;
              v66 = v64(v85, 1, v15);
              v67 = v81;
              v91 = v61;
              if (v66 == 1)
              {
                sub_24F91F548();
                if (v64(v65, 1, v15) != 1)
                {
                  sub_24E601704(v65, &unk_27F22EC30);
                }
              }

              else
              {
                (*v78)(v81, v65, v15);
              }

              v94 = (v60 + v93);
              v68 = v84;
              v69 = sub_24F91F588();
              v70 = *v77;
              (*v77)(v67, v15);
              v70(v68, v15);
              v71 = *v76;
              v24 = v82;
              (*v76)(v88, v82);
              v71(v83, v24);
              if (v69)
              {
                break;
              }

              v72 = v91;
              v56 = v91;
              v59 = v87;
              if (v60 < v58 || v94 >= v58)
              {
                swift_arrayInitWithTakeFrontToBack();
                v57 = v93;
              }

              else
              {
                v57 = v93;
                if (v60 != v58)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v58 = v56;
              a1 = v86;
              if (v72 <= v92)
              {
                v90 = v59;
                goto LABEL_76;
              }
            }

            if (v60 < v87 || v94 >= v87)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v75;
              v57 = v93;
            }

            else
            {
              v56 = v75;
              v57 = v93;
              if (v60 != v87)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v86;
          }

          while (v58 > v92);
        }

LABEL_76:
        v97 = v90;
        v95 = v56;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v92;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
}

uint64_t sub_24EED8674()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EED86AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 8))(v9, ObjectType, v3);
  v5 = *(v2 + 24);
  v6 = swift_getObjectType();
  (*(v5 + 8))(v8, v6, v5);
  LOBYTE(v5) = MEMORY[0x253052150](v9, v8);
  sub_24E6585F8(v8);
  sub_24E6585F8(v9);
  return v5 & 1;
}

uint64_t sub_24EED8754()
{
  v1 = *v0;
  sub_24F92D068();
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(v5, ObjectType, v2);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v5);
  return sub_24F92D0B8();
}

uint64_t sub_24EED87CC()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v4, ObjectType, v1);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24E6585F8(v4);
}

uint64_t sub_24EED883C()
{
  sub_24F92D068();
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 8))(v4, ObjectType, v1);
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_24E6585F8(v4);
  return sub_24F92D0B8();
}

uint64_t sub_24EED88B0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F233120);
  __swift_project_value_buffer(v4, qword_27F233120);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EED8A04()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v2 + 16))
    {
      sub_24E65864C(v6, v17);
      sub_24E65864C(v17, &v14);
      v8 = sub_24EED8B88(&v14);
      sub_24E9BBAA8(&v14);
      if (v8)
      {
        v14 = v17[0];
        v15 = v17[1];
        v16 = v18;
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v7;
        if ((result & 1) == 0)
        {
          result = sub_24F457B3C(0, *(v7 + 16) + 1, 1);
          v7 = v19;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_24F457B3C((v9 > 1), v10 + 1, 1);
          v7 = v19;
        }

        *(v7 + 16) = v10 + 1;
        v11 = v7 + 40 * v10;
        v12 = v14;
        v13 = v15;
        *(v11 + 64) = v16;
        *(v11 + 32) = v12;
        *(v11 + 48) = v13;
      }

      else
      {
        result = sub_24E6585F8(v17);
      }

      ++v5;
      v6 += 40;
      if (v3 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_13:

    *(v1 + 64) = v7;
  }

  return result;
}

BOOL sub_24EED8B88(uint64_t a1)
{
  v2 = v1;
  sub_24E65E064(a1, &v59);
  if (!*(&v60 + 1))
  {
    sub_24E9BBAA8(&v59);
    return 0;
  }

  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;
  swift_beginAccess();
  v3 = *(v1 + 48);
  if (!*(v3 + 16))
  {
LABEL_11:
    sub_24E6585F8(v62);
    return 0;
  }

  v4 = sub_24E76D934(v62);
  if ((v5 & 1) == 0)
  {

    goto LABEL_11;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = [*(v6 + 16) superview];
  if (!v7)
  {

    goto LABEL_11;
  }

  sub_24EED8F4C(v6);
  v9 = v8;
  v11 = v10;
  v55 = v13;
  v56 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = 0.0;
  v57 = v11;
  v58 = v9;
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong view];

    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    if (v17)
    {
      [v17 bounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v17 safeAreaInsets];
      v30 = v29;
      v32 = v31;

      v15 = UIEdgeInsetsInsetRect(v22, v24, v26, v28, v30, v32);
      v18 = v33;
      v19 = v34;
      v20 = v35;
    }
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
  }

  v64.origin.x = v15;
  v64.origin.y = v18;
  v64.size.width = v19;
  v64.size.height = v20;
  v37 = CGRectGetWidth(v64) * *(v2 + 16);
  v65.origin.x = v15;
  v65.origin.y = v18;
  v65.size.width = v19;
  v65.size.height = v20;
  v38 = CGRectGetHeight(v65) * *(v2 + 24);
  v66.origin.x = v15;
  v66.origin.y = v18;
  v66.size.width = v19;
  v66.size.height = v20;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v15;
  v67.origin.y = v18;
  v67.size.width = v19;
  v67.size.height = v20;
  v40 = MinX + (CGRectGetWidth(v67) - v37) * 0.5;
  v68.origin.x = v15;
  v68.origin.y = v18;
  v68.size.width = v19;
  v68.size.height = v20;
  MinY = CGRectGetMinY(v68);
  v69.origin.x = v15;
  v69.origin.y = v18;
  v69.size.width = v19;
  v69.size.height = v20;
  v70.origin.y = MinY + (CGRectGetHeight(v69) - v38) * 0.5;
  v70.origin.x = v40;
  v70.size.width = v37;
  v70.size.height = v38;
  v76.origin.x = v58;
  v76.origin.y = v57;
  v76.size.width = v56;
  v76.size.height = v55;
  v71 = CGRectIntersection(v70, v76);
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  if (CGRectEqualToRect(v71, *MEMORY[0x277CBF398]))
  {
    sub_24E6585F8(v62);

    return 0;
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v54 = CGRectGetWidth(v72);
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v46 = v54 * CGRectGetHeight(v73);
  v74.origin.x = v58;
  v74.origin.y = v57;
  v74.size.width = v56;
  v74.size.height = v55;
  v47 = CGRectGetWidth(v74);
  v75.origin.x = v58;
  v75.origin.y = v57;
  v75.size.width = v56;
  v75.size.height = v55;
  v48 = CGRectGetHeight(v75);
  v49 = *(v6 + 24);
  v50 = v46 / (v47 * v48);
  ObjectType = swift_getObjectType();
  v52 = (*(v49 + 16))(ObjectType, v49);
  sub_24E6585F8(v62);

  v53 = 40;
  if (v52)
  {
    v53 = 32;
  }

  return *(v2 + v53) < v50;
}

void sub_24EED8F4C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    [v4 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = (*(v5 + 48))(ObjectType, v5);
    if (!v15 || (v16 = v15, [v15 frame], v18 = v17, v20 = v19, v22 = v21, v24 = v23, v16, v34.origin.x = 0.0, v34.origin.y = 0.0, v34.size.width = 0.0, v34.size.height = 0.0, v32.origin.x = v18, v32.origin.y = v20, v32.size.width = v22, v32.size.height = v24, CGRectEqualToRect(v32, v34)))
    {
      [v4 frame];
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = 0.0;
      v35.size.height = 0.0;
      if (CGRectEqualToRect(v33, v35))
      {
        if (*(a1 + 64))
        {
          v18 = v8;
          v20 = v10;
          v22 = v12;
          v24 = v14;
        }

        else
        {
          v22 = *(a1 + 48);
          v24 = *(a1 + 56);
          v18 = *(a1 + 32);
          v20 = *(a1 + 40);
        }

        goto LABEL_11;
      }

      [v4 frame];
      v18 = v25;
      v20 = v26;
      v22 = v27;
      v24 = v28;
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 1;
LABEL_11:
    v29 = [v3 view];
    if (v29)
    {
      v30 = v29;
      v31 = [v4 superview];
      [v30 convertRect:v31 fromView:{v18, v20, v22, v24}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24EED9160(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v9 = *(a2 + 8);
    v10 = a1;
    v9(v19, ObjectType, a2);
    swift_beginAccess();
    if (*(*(v4 + 48) + 16))
    {

      sub_24E76D934(v19);
      if (v11)
      {

        return sub_24E6585F8(v19);
      }
    }

    type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a2;
    v15 = *(a3 + 16);
    *(v14 + 32) = *a3;
    *(v14 + 48) = v15;
    *(v14 + 64) = *(a3 + 32);
    swift_beginAccess();
    v16 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 48);
    *(v4 + 48) = 0x8000000000000000;
    sub_24E81E418(v14, v19, isUniquelyReferenced_nonNull_native);
    *(v4 + 48) = v18;
    swift_endAccess();

    return sub_24E6585F8(v19);
  }

  if (qword_27F2107E8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F92AAE8();
  __swift_project_value_buffer(v12, qword_27F233120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5B8();
}

uint64_t sub_24EED93FC()
{

  MEMORY[0x2530543E0](v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_24EED9498()
{
  result = qword_27F233138;
  if (!qword_27F233138)
  {
    type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233138);
  }

  return result;
}

uint64_t sub_24EED950C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = __dst;
    if (__dst != __src || &__src[8 * v9] <= __dst)
    {
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
    }

    v195 = &v13[8 * v9];
    if (v7 >= 8 && v5 < v4)
    {
      v15 = &selRef_lockedAppBundleIdentifiers;
      while (1)
      {
        v191 = v5;
        v193 = v13;
        v16 = *v5;
        v17 = *v13;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = *(v16 + 16);
          v21 = *(v16 + 24);
          v22 = v15;
          ObjectType = swift_getObjectType();

          [v20 v22[502]];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v32 = (*(v21 + 48))(ObjectType, v21);
          if (v32 && (v33 = v32, [v32 v22[502]], v35 = v34, v37 = v36, v39 = v38, v41 = v40, v33, v220.origin.x = 0.0, v220.origin.y = 0.0, v220.size.width = 0.0, v220.size.height = 0.0, v200.origin.x = v35, v200.origin.y = v37, v200.size.width = v39, v200.size.height = v41, !CGRectEqualToRect(v200, v220)))
          {
            *(v16 + 32) = 0u;
            *(v16 + 48) = 0u;
            *(v16 + 64) = 1;
            v15 = v22;
          }

          else
          {
            [v20 v22[502]];
            v221.origin.x = 0.0;
            v221.origin.y = 0.0;
            v221.size.width = 0.0;
            v221.size.height = 0.0;
            v15 = v22;
            if (CGRectEqualToRect(v201, v221))
            {
              if (*(v16 + 64))
              {
                v35 = v25;
                v37 = v27;
                v39 = v29;
                v41 = v31;
              }

              else
              {
                v39 = *(v16 + 48);
                v41 = *(v16 + 56);
                v35 = *(v16 + 32);
                v37 = *(v16 + 40);
              }
            }

            else
            {
              [v20 v22[502]];
              v35 = v46;
              v37 = v47;
              v39 = v48;
              v41 = v49;
              *(v16 + 32) = 0u;
              *(v16 + 48) = 0u;
              *(v16 + 64) = 1;
            }
          }

          result = [v19 view];
          if (!result)
          {
            goto LABEL_104;
          }

          v51 = result;
          v52 = [v20 superview];
          [v51 convertRect:v52 fromView:{v35, v37, v39, v41}];
          v42 = v53;
          v43 = v54;
          v44 = v55;
          v45 = v56;
        }

        else
        {

          v42 = 0.0;
          v43 = 0.0;
          v44 = 0.0;
          v45 = 0.0;
        }

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v57;
          v59 = v15;
          v60 = *(v17 + 16);
          v61 = *(v17 + 24);
          v62 = swift_getObjectType();
          [v60 v59[502]];
          rect = v63;
          v187 = v65;
          v189 = v64;
          v185 = v66;
          v67 = (*(v61 + 48))(v62, v61);
          if (v67 && (v68 = v67, [v67 v59[502]], v70 = v69, v72 = v71, v74 = v73, v76 = v75, v68, v222.origin.x = 0.0, v222.origin.y = 0.0, v222.size.width = 0.0, v222.size.height = 0.0, v202.origin.x = v70, v202.origin.y = v72, v202.size.width = v74, v202.size.height = v76, !CGRectEqualToRect(v202, v222)))
          {
            *(v17 + 32) = 0u;
            *(v17 + 48) = 0u;
            *(v17 + 64) = 1;
            v15 = v59;
          }

          else
          {
            [v60 v59[502]];
            v223.origin.x = 0.0;
            v223.origin.y = 0.0;
            v223.size.width = 0.0;
            v223.size.height = 0.0;
            v15 = v59;
            if (CGRectEqualToRect(v203, v223))
            {
              if (*(v17 + 64))
              {
                v70 = rect;
                v74 = v187;
                v72 = v189;
                v76 = v185;
              }

              else
              {
                v74 = *(v17 + 48);
                v76 = *(v17 + 56);
                v70 = *(v17 + 32);
                v72 = *(v17 + 40);
              }
            }

            else
            {
              [v60 v59[502]];
              v70 = v80;
              v72 = v81;
              v74 = v82;
              v76 = v83;
              *(v17 + 32) = 0u;
              *(v17 + 48) = 0u;
              *(v17 + 64) = 1;
            }
          }

          result = [v58 view];
          if (!result)
          {
            __break(1u);
            goto LABEL_103;
          }

          v84 = result;
          v85 = [v60 superview];
          [v84 convertRect:v85 fromView:{v70, v72, v74, v76}];
          recta = v86;
          v77 = v87;
          v78 = v88;
          v79 = v89;
        }

        else
        {
          recta = 0.0;
          v77 = 0.0;
          v78 = 0.0;
          v79 = 0.0;
        }

        v204.origin.x = v42;
        v204.origin.y = v43;
        v204.size.width = v44;
        v204.size.height = v45;
        v90 = v45;
        v91 = v44;
        v92 = v43;
        v93 = v42;
        MinY = CGRectGetMinY(v204);
        v205.origin.x = recta;
        v205.origin.y = v77;
        v205.size.width = v78;
        v205.size.height = v79;
        if (MinY < CGRectGetMinY(v205))
        {
          break;
        }

        v206.origin.x = v93;
        v206.origin.y = v92;
        v206.size.width = v91;
        v206.size.height = v90;
        v95 = CGRectGetMinY(v206);
        v207.origin.x = recta;
        v207.origin.y = v77;
        v207.size.width = v78;
        v207.size.height = v79;
        if (v95 == CGRectGetMinY(v207))
        {
          v208.origin.x = v93;
          v208.origin.y = v92;
          v208.size.width = v91;
          v208.size.height = v90;
          MinX = CGRectGetMinX(v208);
          v209.origin.x = recta;
          v209.origin.y = v77;
          v209.size.width = v78;
          v209.size.height = v79;
          v97 = CGRectGetMinX(v209);

          if (MinX < v97)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }

        v5 = v191;
        v98 = v193;
        v13 = v193 + 8;
        if (v6 != v193)
        {
          goto LABEL_41;
        }

LABEL_42:
        v6 += 8;
        if (v13 >= v195 || v5 >= v4)
        {
          goto LABEL_95;
        }
      }

LABEL_40:
      v13 = v193;
      v98 = v191;
      v5 = v191 + 8;
      if (v6 == v191)
      {
        goto LABEL_42;
      }

LABEL_41:
      *v6 = *v98;
      goto LABEL_42;
    }

LABEL_95:
    v182 = v6;
LABEL_98:
    if (v182 != v13 || v182 >= &v13[(v195 - v13 + (v195 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v182, v13, 8 * ((v195 - v13) / 8));
    }

    return 1;
  }

  if (__dst != a2 || &a2[8 * v12] <= __dst)
  {
    v99 = __dst;
    memmove(__dst, a2, 8 * v12);
    v5 = a2;
    __dst = v99;
  }

  v195 = &__dst[8 * v12];
  v13 = __dst;
  if (v10 < 8 || v5 <= v6)
  {
    v182 = v5;
    goto LABEL_98;
  }

  v101 = &selRef_lockedAppBundleIdentifiers;
  v190 = v6;
  v194 = __dst;
LABEL_54:
  v192 = v5;
  v102 = v5 - 8;
  v4 -= 8;
  v103 = v195;
  v188 = v5 - 8;
  while (1)
  {
    v105 = *(v103 - 1);
    v103 -= 8;
    v104 = v105;
    v106 = *v102;
    v107 = swift_unknownObjectWeakLoadStrong();
    if (!v107)
    {

      v131 = 0.0;
      v132 = 0.0;
      v133 = 0.0;
      v134 = 0.0;
      goto LABEL_69;
    }

    v108 = v107;
    v109 = v101;
    v110 = *(v104 + 16);
    v111 = *(v104 + 24);
    v112 = swift_getObjectType();

    [v110 v109[502]];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v121 = (*(v111 + 48))(v112, v111);
    if (v121 && (v122 = v121, [v121 v109[502]], v124 = v123, v126 = v125, v128 = v127, v130 = v129, v122, v224.origin.x = 0.0, v224.origin.y = 0.0, v224.size.width = 0.0, v224.size.height = 0.0, v210.origin.x = v124, v210.origin.y = v126, v210.size.width = v128, v210.size.height = v130, !CGRectEqualToRect(v210, v224)))
    {
      *(v104 + 32) = 0u;
      *(v104 + 48) = 0u;
      *(v104 + 64) = 1;
      v101 = v109;
    }

    else
    {
      [v110 v109[502]];
      v225.origin.x = 0.0;
      v225.origin.y = 0.0;
      v225.size.width = 0.0;
      v225.size.height = 0.0;
      v101 = v109;
      if (CGRectEqualToRect(v211, v225))
      {
        v6 = v190;
        if (*(v104 + 64))
        {
          v124 = v114;
          v126 = v116;
          v128 = v118;
          v130 = v120;
        }

        else
        {
          v128 = *(v104 + 48);
          v130 = *(v104 + 56);
          v124 = *(v104 + 32);
          v126 = *(v104 + 40);
        }

        goto LABEL_67;
      }

      [v110 v109[502]];
      v124 = v135;
      v126 = v136;
      v128 = v137;
      v130 = v138;
      *(v104 + 32) = 0u;
      *(v104 + 48) = 0u;
      *(v104 + 64) = 1;
    }

    v6 = v190;
LABEL_67:
    result = [v108 view];
    if (!result)
    {
      goto LABEL_105;
    }

    v139 = result;
    v140 = [v110 superview];
    [v139 convertRect:v140 fromView:{v124, v126, v128, v130}];
    v131 = v141;
    v132 = v142;
    v133 = v143;
    v134 = v144;

LABEL_69:
    v145 = swift_unknownObjectWeakLoadStrong();
    if (!v145)
    {
      rectc = 0.0;
      v165 = 0.0;
      v166 = 0.0;
      v167 = 0.0;
      goto LABEL_82;
    }

    v146 = v145;
    v147 = v101;
    v148 = *(v106 + 16);
    v149 = *(v106 + 24);
    v150 = swift_getObjectType();
    [v148 v147[502]];
    rectb = v151;
    v184 = v153;
    v186 = v152;
    v183 = v154;
    v155 = (*(v149 + 48))(v150, v149);
    if (v155)
    {
      v156 = v155;
      [v155 v147[502]];
      v158 = v157;
      v160 = v159;
      v162 = v161;
      v164 = v163;

      v226.origin.x = 0.0;
      v226.origin.y = 0.0;
      v226.size.width = 0.0;
      v226.size.height = 0.0;
      v212.origin.x = v158;
      v212.origin.y = v160;
      v212.size.width = v162;
      v212.size.height = v164;
      if (!CGRectEqualToRect(v212, v226))
      {
        *(v106 + 32) = 0u;
        *(v106 + 48) = 0u;
        *(v106 + 64) = 1;
        v101 = v147;
        goto LABEL_78;
      }
    }

    [v148 v147[502]];
    v227.origin.x = 0.0;
    v227.origin.y = 0.0;
    v227.size.width = 0.0;
    v227.size.height = 0.0;
    v101 = v147;
    if (!CGRectEqualToRect(v213, v227))
    {
      [v148 v147[502]];
      v158 = v168;
      v160 = v169;
      v162 = v170;
      v164 = v171;
      *(v106 + 32) = 0u;
      *(v106 + 48) = 0u;
      *(v106 + 64) = 1;
LABEL_78:
      v6 = v190;
      goto LABEL_80;
    }

    v6 = v190;
    if (*(v106 + 64))
    {
      v158 = rectb;
      v162 = v184;
      v160 = v186;
      v164 = v183;
    }

    else
    {
      v162 = *(v106 + 48);
      v164 = *(v106 + 56);
      v158 = *(v106 + 32);
      v160 = *(v106 + 40);
    }

LABEL_80:
    result = [v146 view];
    if (!result)
    {
      break;
    }

    v172 = result;
    v173 = [v148 superview];
    [v172 convertRect:v173 fromView:{v158, v160, v162, v164}];
    rectc = v174;
    v165 = v175;
    v166 = v176;
    v167 = v177;

LABEL_82:
    v214.origin.x = v131;
    v214.origin.y = v132;
    v214.size.width = v133;
    v214.size.height = v134;
    v178 = CGRectGetMinY(v214);
    v215.origin.x = rectc;
    v215.origin.y = v165;
    v215.size.width = v166;
    v215.size.height = v167;
    v102 = v188;
    if (v178 < CGRectGetMinY(v215))
    {

LABEL_90:
      if (v4 + 8 != v192)
      {
        *v4 = *v188;
      }

      v13 = v194;
      if (v195 <= v194 || (v5 = v188, v188 <= v6))
      {
        v182 = v188;
        goto LABEL_98;
      }

      goto LABEL_54;
    }

    v216.origin.x = v131;
    v216.origin.y = v132;
    v216.size.width = v133;
    v216.size.height = v134;
    v179 = CGRectGetMinY(v216);
    v217.origin.x = rectc;
    v217.origin.y = v165;
    v217.size.width = v166;
    v217.size.height = v167;
    if (v179 == CGRectGetMinY(v217))
    {
      v218.origin.x = v131;
      v218.origin.y = v132;
      v218.size.width = v133;
      v218.size.height = v134;
      v180 = CGRectGetMinX(v218);
      v219.origin.x = rectc;
      v219.origin.y = v165;
      v219.size.width = v166;
      v219.size.height = v167;
      v181 = CGRectGetMinX(v219);

      if (v180 < v181)
      {
        goto LABEL_90;
      }
    }

    else
    {
    }

    if (v4 + 8 != v195)
    {
      *v4 = *v103;
    }

    v4 -= 8;
    v195 = v103;
    if (v103 <= v194)
    {
      v195 = v103;
      v182 = v192;
      v13 = v194;
      goto LABEL_98;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_24EEDA0F0(char **a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_24E86164C(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v22[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      __src = (v9 + 8 * *v11);
      v14 = (v9 + 8 * *v12);
      v15 = (v9 + 8 * v13);

      sub_24EED950C(__src, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_24EEDA298(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  v296 = MEMORY[0x277D84F90];
  if (v4 >= 1)
  {
    swift_retain_n();
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v269 = a4;
LABEL_5:
    v8 = v6 + 1;
    v272 = v6;
    if (v6 + 1 >= v4)
    {
      goto LABEL_52;
    }

    v9 = *a3;
    v10 = *(*a3 + 8 * v8);
    v11 = *(*a3 + 8 * v6);

    sub_24EED8F4C(v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_24EED8F4C(v11);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    rect = v13;
    v297.origin.x = v13;
    v297.origin.y = v15;
    v297.size.width = v17;
    v297.size.height = v19;
    MinY = CGRectGetMinY(v297);
    v298.origin.x = v21;
    v298.origin.y = v23;
    v298.size.width = v25;
    v298.size.height = v27;
    if (MinY >= CGRectGetMinY(v298))
    {
      v299.origin.x = rect;
      v299.origin.y = v15;
      v299.size.width = v17;
      v299.size.height = v19;
      v30 = CGRectGetMinY(v299);
      v300.origin.x = v21;
      v300.origin.y = v23;
      v300.size.width = v25;
      v300.size.height = v27;
      if (v30 != CGRectGetMinY(v300))
      {

        v285 = 0;
        goto LABEL_11;
      }

      v301.origin.x = rect;
      v301.origin.y = v15;
      v301.size.width = v17;
      v301.size.height = v19;
      MinX = CGRectGetMinX(v301);
      v302.origin.x = v21;
      v302.origin.y = v23;
      v302.size.width = v25;
      v302.size.height = v27;
      v32 = CGRectGetMinX(v302);

      v29 = MinX < v32;
    }

    else
    {

      v29 = 1;
    }

    v285 = v29;
LABEL_11:
    v33 = v6 + 2;
    if (v6 + 2 >= v4)
    {
      v35 = v6 + 2;
      goto LABEL_48;
    }

    v34 = (v9 + 8 * v6 + 16);
    v283 = v4;
    while (1)
    {
      v287 = v33;
      v36 = *(v34 - 1);
      v37 = *v34;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        v61 = 0.0;
        v62 = 0.0;
        v63 = 0.0;
        v64 = 0.0;
        goto LABEL_28;
      }

      v39 = Strong;
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      ObjectType = swift_getObjectType();

      [v40 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = (*(v41 + 48))(ObjectType, v41);
      if (!v51 || (v52 = v51, [v51 frame], v54 = v53, v56 = v55, v58 = v57, v60 = v59, v52, v323.origin.x = 0.0, v323.origin.y = 0.0, v323.size.width = 0.0, v323.size.height = 0.0, v303.origin.x = v54, v303.origin.y = v56, v303.size.width = v58, v303.size.height = v60, CGRectEqualToRect(v303, v323)))
      {
        [v40 frame];
        v324.origin.x = 0.0;
        v324.origin.y = 0.0;
        v324.size.width = 0.0;
        v324.size.height = 0.0;
        if (CGRectEqualToRect(v304, v324))
        {
          if (*(v37 + 64))
          {
            v54 = v44;
            v56 = v46;
            v58 = v48;
            v60 = v50;
          }

          else
          {
            v58 = *(v37 + 48);
            v60 = *(v37 + 56);
            v54 = *(v37 + 32);
            v56 = *(v37 + 40);
          }

          goto LABEL_26;
        }

        [v40 frame];
        v54 = v65;
        v56 = v66;
        v58 = v67;
        v60 = v68;
      }

      *(v37 + 32) = 0u;
      *(v37 + 48) = 0u;
      *(v37 + 64) = 1;
LABEL_26:
      v69 = [v39 view];
      if (!v69)
      {
        goto LABEL_187;
      }

      v70 = v69;
      v71 = [v40 superview];
      [v70 convertRect:v71 fromView:{v54, v56, v58, v60}];
      v61 = v72;
      v62 = v73;
      v63 = v74;
      v64 = v75;

LABEL_28:
      v76 = swift_unknownObjectWeakLoadStrong();
      if (!v76)
      {
        rectb = 0.0;
        v95 = 0.0;
        v96 = 0.0;
        v97 = 0.0;
        goto LABEL_40;
      }

      v77 = v76;
      v78 = *(v36 + 16);
      v79 = *(v36 + 24);
      v80 = swift_getObjectType();
      [v78 frame];
      recta = v81;
      v281 = v82;
      v274 = v84;
      v276 = v83;
      v85 = (*(v79 + 48))(v80, v79);
      if (!v85 || (v86 = v85, [v85 frame], v88 = v87, v90 = v89, v92 = v91, v94 = v93, v86, v325.origin.x = 0.0, v325.origin.y = 0.0, v325.size.width = 0.0, v325.size.height = 0.0, v305.origin.x = v88, v305.origin.y = v90, v305.size.width = v92, v305.size.height = v94, CGRectEqualToRect(v305, v325)))
      {
        [v78 frame];
        v326.origin.x = 0.0;
        v326.origin.y = 0.0;
        v326.size.width = 0.0;
        v326.size.height = 0.0;
        if (CGRectEqualToRect(v306, v326))
        {
          if (*(v36 + 64))
          {
            v88 = recta;
            v90 = v281;
            v94 = v274;
            v92 = v276;
          }

          else
          {
            v92 = *(v36 + 48);
            v94 = *(v36 + 56);
            v88 = *(v36 + 32);
            v90 = *(v36 + 40);
          }

          goto LABEL_38;
        }

        [v78 frame];
        v88 = v98;
        v90 = v99;
        v92 = v100;
        v94 = v101;
      }

      *(v36 + 32) = 0u;
      *(v36 + 48) = 0u;
      *(v36 + 64) = 1;
LABEL_38:
      v102 = [v77 view];
      if (!v102)
      {
        goto LABEL_188;
      }

      v103 = v102;
      v104 = [v78 superview];
      [v103 convertRect:v104 fromView:{v88, v90, v92, v94}];
      rectb = v105;
      v95 = v106;
      v96 = v107;
      v97 = v108;

LABEL_40:
      v307.origin.x = v61;
      v307.origin.y = v62;
      v307.size.width = v63;
      v307.size.height = v64;
      v109 = v64;
      v110 = v63;
      v111 = v62;
      v112 = v61;
      v113 = CGRectGetMinY(v307);
      v308.origin.x = rectb;
      v308.origin.y = v95;
      v308.size.width = v96;
      v308.size.height = v97;
      if (v113 < CGRectGetMinY(v308))
      {

LABEL_44:
        v6 = v272;
        v35 = v283;
        v33 = v287;
        if (!v285)
        {
          v8 = v287;
          a4 = v269;
          goto LABEL_52;
        }

        goto LABEL_15;
      }

      v309.origin.x = v112;
      v309.origin.y = v111;
      v309.size.width = v110;
      v309.size.height = v109;
      v114 = CGRectGetMinY(v309);
      v310.origin.x = rectb;
      v310.origin.y = v95;
      v310.size.width = v96;
      v310.size.height = v97;
      if (v114 == CGRectGetMinY(v310))
      {
        v311.origin.x = v112;
        v311.origin.y = v111;
        v311.size.width = v110;
        v311.size.height = v109;
        v115 = CGRectGetMinX(v311);
        v312.origin.x = rectb;
        v312.origin.y = v95;
        v312.size.width = v96;
        v312.size.height = v97;
        v116 = CGRectGetMinX(v312);

        if (v115 < v116)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v6 = v272;
      v35 = v283;
      v33 = v287;
      if (v285)
      {
        v117 = v287 - 1;
        a4 = v269;
        if (v287 >= v272)
        {
          goto LABEL_50;
        }

LABEL_182:
        __break(1u);
LABEL_183:

        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:

        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:

        __break(1u);
LABEL_190:

        __break(1u);
LABEL_191:

        __break(1u);
        return result;
      }

LABEL_15:
      ++v33;
      ++v34;
      if (v35 == v33)
      {
        v8 = v33 - 1;
        v33 = v35;
LABEL_48:
        v117 = v8;
        v8 = v35;
        a4 = v269;
        if (!v285)
        {
          goto LABEL_52;
        }

        if (v33 < v6)
        {
          goto LABEL_182;
        }

LABEL_50:
        if (v6 <= v117)
        {
          v260 = 8 * v33 - 8;
          v261 = 8 * v6;
          v262 = v33;
          v263 = v6;
          do
          {
            if (v263 != --v262)
            {
              v264 = *a3;
              if (!*a3)
              {
                goto LABEL_189;
              }

              v265 = *(v264 + v261);
              *(v264 + v261) = *(v264 + v260);
              *(v264 + v260) = v265;
            }

            ++v263;
            v260 -= 8;
            v261 += 8;
          }

          while (v263 < v262);
        }

        v8 = v33;
LABEL_52:
        v118 = a3[1];
        if (v8 >= v118)
        {
          goto LABEL_97;
        }

        if (__OFSUB__(v8, v6))
        {
          goto LABEL_179;
        }

        if (v8 - v6 >= a4)
        {
          goto LABEL_97;
        }

        v119 = v6 + a4;
        if (__OFADD__(v6, a4))
        {
          goto LABEL_180;
        }

        if (v119 >= v118)
        {
          v119 = a3[1];
        }

        if (v119 < v6)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v8 == v119)
        {
          goto LABEL_97;
        }

        v268 = v7;
        v288 = *a3;
        v120 = *a3 + 8 * v8 - 8;
        v121 = v6 - v8;
        v271 = v119;
        while (2)
        {
          v122 = *(v288 + 8 * v8);
          v273 = v121;
          v275 = v120;
          v277 = v8;
          v123 = v120;
          while (2)
          {
            v124 = *v123;
            v125 = swift_unknownObjectWeakLoadStrong();
            if (!v125)
            {

              v148 = 0.0;
              v149 = 0.0;
              v150 = 0.0;
              v151 = 0.0;
              goto LABEL_76;
            }

            v126 = v125;
            v127 = *(v122 + 16);
            v128 = *(v122 + 24);
            v129 = swift_getObjectType();

            [v127 frame];
            v131 = v130;
            v133 = v132;
            v135 = v134;
            v137 = v136;
            v138 = (*(v128 + 48))(v129, v128);
            if (v138)
            {
              v139 = v138;
              [v138 frame];
              v141 = v140;
              v143 = v142;
              v145 = v144;
              v147 = v146;

              v327.origin.x = 0.0;
              v327.origin.y = 0.0;
              v327.size.width = 0.0;
              v327.size.height = 0.0;
              v313.origin.x = v141;
              v313.origin.y = v143;
              v313.size.width = v145;
              v313.size.height = v147;
              if (!CGRectEqualToRect(v313, v327))
              {
                goto LABEL_72;
              }
            }

            [v127 frame];
            v328.origin.x = 0.0;
            v328.origin.y = 0.0;
            v328.size.width = 0.0;
            v328.size.height = 0.0;
            if (!CGRectEqualToRect(v314, v328))
            {
              [v127 frame];
              v141 = v152;
              v143 = v153;
              v145 = v154;
              v147 = v155;
LABEL_72:
              *(v122 + 32) = 0u;
              *(v122 + 48) = 0u;
              *(v122 + 64) = 1;
              goto LABEL_74;
            }

            if (*(v122 + 64))
            {
              v141 = v131;
              v143 = v133;
              v145 = v135;
              v147 = v137;
            }

            else
            {
              v145 = *(v122 + 48);
              v147 = *(v122 + 56);
              v141 = *(v122 + 32);
              v143 = *(v122 + 40);
            }

LABEL_74:
            v156 = [v126 view];
            if (!v156)
            {
              goto LABEL_184;
            }

            v157 = v156;
            v158 = [v127 superview];
            [v157 convertRect:v158 fromView:{v141, v143, v145, v147}];
            v148 = v159;
            v149 = v160;
            v150 = v161;
            v151 = v162;

LABEL_76:
            v163 = swift_unknownObjectWeakLoadStrong();
            if (!v163)
            {
              rectd = 0.0;
              v182 = 0.0;
              v183 = 0.0;
              v184 = 0.0;
              goto LABEL_88;
            }

            v164 = v163;
            v165 = *(v124 + 16);
            v166 = *(v124 + 24);
            v167 = swift_getObjectType();
            [v165 frame];
            rectc = v168;
            v284 = v170;
            v286 = v169;
            v282 = v171;
            v172 = (*(v166 + 48))(v167, v166);
            if (v172)
            {
              v173 = v172;
              [v172 frame];
              v175 = v174;
              v177 = v176;
              v179 = v178;
              v181 = v180;

              v329.origin.x = 0.0;
              v329.origin.y = 0.0;
              v329.size.width = 0.0;
              v329.size.height = 0.0;
              v315.origin.x = v175;
              v315.origin.y = v177;
              v315.size.width = v179;
              v315.size.height = v181;
              if (!CGRectEqualToRect(v315, v329))
              {
                goto LABEL_84;
              }
            }

            [v165 frame];
            v330.origin.x = 0.0;
            v330.origin.y = 0.0;
            v330.size.width = 0.0;
            v330.size.height = 0.0;
            if (!CGRectEqualToRect(v316, v330))
            {
              [v165 frame];
              v175 = v185;
              v177 = v186;
              v179 = v187;
              v181 = v188;
LABEL_84:
              *(v124 + 32) = 0u;
              *(v124 + 48) = 0u;
              *(v124 + 64) = 1;
              goto LABEL_86;
            }

            if (*(v124 + 64))
            {
              v175 = rectc;
              v179 = v284;
              v177 = v286;
              v181 = v282;
            }

            else
            {
              v179 = *(v124 + 48);
              v181 = *(v124 + 56);
              v175 = *(v124 + 32);
              v177 = *(v124 + 40);
            }

LABEL_86:
            v189 = [v164 view];
            if (!v189)
            {
              goto LABEL_185;
            }

            v190 = v189;
            v191 = [v165 superview];
            [v190 convertRect:v191 fromView:{v175, v177, v179, v181}];
            rectd = v192;
            v182 = v193;
            v183 = v194;
            v184 = v195;

LABEL_88:
            v317.origin.x = v148;
            v317.origin.y = v149;
            v317.size.width = v150;
            v317.size.height = v151;
            v196 = v151;
            v197 = v150;
            v198 = v149;
            v199 = v148;
            v200 = CGRectGetMinY(v317);
            v318.origin.x = rectd;
            v318.origin.y = v182;
            v318.size.width = v183;
            v318.size.height = v184;
            if (v200 < CGRectGetMinY(v318))
            {

              goto LABEL_92;
            }

            v319.origin.x = v199;
            v319.origin.y = v198;
            v319.size.width = v197;
            v319.size.height = v196;
            v201 = CGRectGetMinY(v319);
            v320.origin.x = rectd;
            v320.origin.y = v182;
            v320.size.width = v183;
            v320.size.height = v184;
            if (v201 == CGRectGetMinY(v320))
            {
              v321.origin.x = v199;
              v321.origin.y = v198;
              v321.size.width = v197;
              v321.size.height = v196;
              v202 = CGRectGetMinX(v321);
              v322.origin.x = rectd;
              v322.origin.y = v182;
              v322.size.width = v183;
              v322.size.height = v184;
              v203 = CGRectGetMinX(v322);

              if (v202 >= v203)
              {
                goto LABEL_62;
              }

LABEL_92:
              if (!v288)
              {
                goto LABEL_183;
              }

              v204 = *v123;
              v122 = v123[1];
              *v123 = v122;
              v123[1] = v204;
              --v123;
              if (__CFADD__(v121++, 1))
              {
                goto LABEL_62;
              }

              continue;
            }

            break;
          }

LABEL_62:
          v8 = v277 + 1;
          v120 = v275 + 8;
          v121 = v273 - 1;
          if (v277 + 1 != v271)
          {
            continue;
          }

          break;
        }

        v8 = v271;
        v7 = v268;
        v6 = v272;
LABEL_97:
        if (v8 < v6)
        {
          goto LABEL_178;
        }

        v278 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24E615ED8(0, *(v7 + 2) + 1, 1, v7);
        }

        v207 = *(v7 + 2);
        v206 = *(v7 + 3);
        v208 = v207 + 1;
        if (v207 >= v206 >> 1)
        {
          v7 = sub_24E615ED8((v206 > 1), v207 + 1, 1, v7);
        }

        *(v7 + 2) = v208;
        v209 = v7 + 32;
        v210 = &v7[16 * v207 + 32];
        *v210 = v6;
        *(v210 + 1) = v278;
        v296 = v7;
        recte = *a1;
        if (!*a1)
        {
          goto LABEL_190;
        }

        if (v207)
        {
          v289 = v7 + 32;
          while (1)
          {
            v211 = v208 - 1;
            if (v208 >= 4)
            {
              break;
            }

            if (v208 == 3)
            {
              v212 = *(v7 + 4);
              v213 = *(v7 + 5);
              v222 = __OFSUB__(v213, v212);
              v214 = v213 - v212;
              v215 = v222;
LABEL_118:
              if (v215)
              {
                goto LABEL_169;
              }

              v228 = &v7[16 * v208];
              v230 = *v228;
              v229 = *(v228 + 1);
              v231 = __OFSUB__(v229, v230);
              v232 = v229 - v230;
              v233 = v231;
              if (v231)
              {
                goto LABEL_172;
              }

              v234 = &v209[16 * v211];
              v236 = *v234;
              v235 = *(v234 + 1);
              v222 = __OFSUB__(v235, v236);
              v237 = v235 - v236;
              if (v222)
              {
                goto LABEL_175;
              }

              if (__OFADD__(v232, v237))
              {
                goto LABEL_176;
              }

              if (v232 + v237 >= v214)
              {
                if (v214 < v237)
                {
                  v211 = v208 - 2;
                }

                goto LABEL_139;
              }

              goto LABEL_132;
            }

            v238 = &v7[16 * v208];
            v240 = *v238;
            v239 = *(v238 + 1);
            v222 = __OFSUB__(v239, v240);
            v232 = v239 - v240;
            v233 = v222;
LABEL_132:
            if (v233)
            {
              goto LABEL_171;
            }

            v241 = &v209[16 * v211];
            v243 = *v241;
            v242 = *(v241 + 1);
            v222 = __OFSUB__(v242, v243);
            v244 = v242 - v243;
            if (v222)
            {
              goto LABEL_174;
            }

            if (v244 < v232)
            {
              goto LABEL_3;
            }

LABEL_139:
            if (v211 - 1 >= v208)
            {
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v249 = *a3;
            if (!*a3)
            {
              goto LABEL_186;
            }

            v250 = v7;
            v251 = &v209[16 * v211 - 16];
            v252 = *v251;
            v253 = v211;
            v254 = &v209[16 * v211];
            v255 = *(v254 + 1);
            v256 = (v249 + 8 * *v251);
            v257 = (v249 + 8 * *v254);
            v258 = (v249 + 8 * v255);

            sub_24EED950C(v256, v257, v258, recte);
            if (v280)
            {

              goto LABEL_160;
            }

            if (v255 < v252)
            {
              goto LABEL_164;
            }

            v259 = *(v250 + 2);
            if (v253 > v259)
            {
              goto LABEL_165;
            }

            *v251 = v252;
            *(v251 + 1) = v255;
            if (v253 >= v259)
            {
              goto LABEL_166;
            }

            v208 = v259 - 1;
            memmove(v254, v254 + 16, 16 * (v259 - 1 - v253));
            v7 = v250;
            *(v250 + 2) = v259 - 1;
            v209 = v289;
            if (v259 <= 2)
            {
LABEL_3:
              v296 = v7;
              goto LABEL_4;
            }
          }

          v216 = &v209[16 * v208];
          v217 = *(v216 - 8);
          v218 = *(v216 - 7);
          v222 = __OFSUB__(v218, v217);
          v219 = v218 - v217;
          if (v222)
          {
            goto LABEL_167;
          }

          v221 = *(v216 - 6);
          v220 = *(v216 - 5);
          v222 = __OFSUB__(v220, v221);
          v214 = v220 - v221;
          v215 = v222;
          if (v222)
          {
            goto LABEL_168;
          }

          v223 = &v7[16 * v208];
          v225 = *v223;
          v224 = *(v223 + 1);
          v222 = __OFSUB__(v224, v225);
          v226 = v224 - v225;
          if (v222)
          {
            goto LABEL_170;
          }

          v222 = __OFADD__(v214, v226);
          v227 = v214 + v226;
          if (v222)
          {
            goto LABEL_173;
          }

          if (v227 >= v219)
          {
            v245 = &v209[16 * v211];
            v247 = *v245;
            v246 = *(v245 + 1);
            v222 = __OFSUB__(v246, v247);
            v248 = v246 - v247;
            if (v222)
            {
              goto LABEL_177;
            }

            if (v214 < v248)
            {
              v211 = v208 - 2;
            }

            goto LABEL_139;
          }

          goto LABEL_118;
        }

LABEL_4:
        v6 = v278;
        v4 = a3[1];
        a4 = v269;
        if (v278 >= v4)
        {
          goto LABEL_157;
        }

        goto LABEL_5;
      }
    }
  }

  swift_retain_n();
LABEL_157:
  v266 = *a1;
  if (!*a1)
  {
    goto LABEL_191;
  }

  sub_24EEDA0F0(&v296, v266, a3);
  if (v280)
  {

LABEL_160:
  }

  else
  {
  }
}

char *sub_24EEDB2DC(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v94 = *a4;
  v4 = (*a4 + 8 * a3 - 8);
  v5 = &result[-a3];
LABEL_6:
  v89 = v4;
  v90 = a3;
  v6 = *(v94 + 8 * a3);
  v88 = v5;
  while (1)
  {
    v7 = *v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      goto LABEL_19;
    }

    v9 = Strong;
    v10 = *(v6 + 16);
    v11 = *(v6 + 24);
    ObjectType = swift_getObjectType();

    [v10 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = (*(v11 + 48))(ObjectType, v11);
    if (!v21 || (v22 = v21, [v21 frame], v24 = v23, v26 = v25, v28 = v27, v30 = v29, v22, v107.origin.x = 0.0, v107.origin.y = 0.0, v107.size.width = 0.0, v107.size.height = 0.0, v97.origin.x = v24, v97.origin.y = v26, v97.size.width = v28, v97.size.height = v30, CGRectEqualToRect(v97, v107)))
    {
      [v10 frame];
      v108.origin.x = 0.0;
      v108.origin.y = 0.0;
      v108.size.width = 0.0;
      v108.size.height = 0.0;
      if (CGRectEqualToRect(v98, v108))
      {
        if (*(v6 + 64))
        {
          v24 = v14;
          v26 = v16;
          v28 = v18;
          v30 = v20;
        }

        else
        {
          v28 = *(v6 + 48);
          v30 = *(v6 + 56);
          v24 = *(v6 + 32);
          v26 = *(v6 + 40);
        }

        goto LABEL_17;
      }

      [v10 frame];
      v24 = v35;
      v26 = v36;
      v28 = v37;
      v30 = v38;
    }

    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 1;
LABEL_17:
    result = [v9 view];
    if (!result)
    {
      goto LABEL_40;
    }

    v39 = result;
    v40 = [v10 superview];
    [v39 convertRect:v40 fromView:{v24, v26, v28, v30}];
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;

LABEL_19:
    v45 = swift_unknownObjectWeakLoadStrong();
    if (!v45)
    {
      v96 = 0.0;
      v64 = 0.0;
      v65 = 0.0;
      v66 = 0.0;
      goto LABEL_31;
    }

    v46 = v45;
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    v49 = swift_getObjectType();
    [v48 frame];
    v95 = v50;
    v92 = v52;
    v93 = v51;
    v91 = v53;
    v54 = (*(v47 + 48))(v49, v47);
    if (!v54 || (v55 = v54, [v54 frame], v57 = v56, v59 = v58, v61 = v60, v63 = v62, v55, v109.origin.x = 0.0, v109.origin.y = 0.0, v109.size.width = 0.0, v109.size.height = 0.0, v99.origin.x = v57, v99.origin.y = v59, v99.size.width = v61, v99.size.height = v63, CGRectEqualToRect(v99, v109)))
    {
      [v48 frame];
      v110.origin.x = 0.0;
      v110.origin.y = 0.0;
      v110.size.width = 0.0;
      v110.size.height = 0.0;
      if (CGRectEqualToRect(v100, v110))
      {
        if (*(v7 + 64))
        {
          v57 = v95;
          v61 = v92;
          v59 = v93;
          v63 = v91;
        }

        else
        {
          v61 = *(v7 + 48);
          v63 = *(v7 + 56);
          v57 = *(v7 + 32);
          v59 = *(v7 + 40);
        }

        goto LABEL_29;
      }

      [v48 frame];
      v57 = v67;
      v59 = v68;
      v61 = v69;
      v63 = v70;
    }

    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 1;
LABEL_29:
    result = [v46 view];
    if (!result)
    {
      goto LABEL_41;
    }

    v71 = result;
    v72 = [v48 superview];
    [v71 convertRect:v72 fromView:{v57, v59, v61, v63}];
    v96 = v73;
    v64 = v74;
    v65 = v75;
    v66 = v76;

LABEL_31:
    v101.origin.x = v31;
    v101.origin.y = v32;
    v101.size.width = v33;
    v101.size.height = v34;
    v77 = v34;
    v78 = v33;
    v79 = v32;
    v80 = v31;
    MinY = CGRectGetMinY(v101);
    v102.origin.x = v96;
    v102.origin.y = v64;
    v102.size.width = v65;
    v102.size.height = v66;
    if (MinY >= CGRectGetMinY(v102))
    {
      v103.origin.x = v80;
      v103.origin.y = v79;
      v103.size.width = v78;
      v103.size.height = v77;
      v82 = CGRectGetMinY(v103);
      v104.origin.x = v96;
      v104.origin.y = v64;
      v104.size.width = v65;
      v104.size.height = v66;
      if (v82 != CGRectGetMinY(v104))
      {

LABEL_5:
        a3 = v90 + 1;
        v4 = v89 + 1;
        v5 = v88 - 1;
        if (v90 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v105.origin.x = v80;
      v105.origin.y = v79;
      v105.size.width = v78;
      v105.size.height = v77;
      MinX = CGRectGetMinX(v105);
      v106.origin.x = v96;
      v106.origin.y = v64;
      v106.size.width = v65;
      v106.size.height = v66;
      v84 = CGRectGetMinX(v106);

      if (MinX >= v84)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    if (!v94)
    {
      break;
    }

    v85 = *v4;
    v6 = v4[1];
    *v4 = v6;
    v4[1] = v85;
    --v4;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_24EEDB82C(uint64_t *a1)
{
  v2 = a1[1];
  swift_retain_n();
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v7[1] = v5;

      sub_24EEDA298(v7, v8, a1, v4);

      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {

    sub_24EEDB2DC(0, v2, 1, a1);
  }
}

uint64_t sub_24EEDB988(uint64_t *a1)
{
  v2 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;

  sub_24EEDB82C(v6);

  sub_24F92C958();
}

uint64_t sub_24EEDBA34()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24EAEACA0(*(v2 + 16), 0);
    v23 = sub_24EAEAC98(v26, v4 + 32, v3, v2);
    swift_bridgeObjectRetain_n();

    sub_24E6586B4();
    if (v23 != v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  *&v26[0] = v4;

  sub_24EEDB988(v26);

  v5 = *&v26[0];
  if ((*&v26[0] & 0x8000000000000000) == 0 && (*&v26[0] & 0x4000000000000000) == 0)
  {
    v6 = *(*&v26[0] + 16);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_18:

    v8 = MEMORY[0x277D84F90];
LABEL_19:
    *(v1 + 56) = v8;

    sub_24EED8A04();
    return *(v1 + 56);
  }

  v20 = *&v26[0];
  v6 = sub_24F92C738();
  v5 = v20;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_8:
  v4 = v5;
  v25 = MEMORY[0x277D84F90];
  sub_24F457B3C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v25;
    v9 = v4;
    v22 = v1;
    v24 = v4 & 0xC000000000000001;
    v10 = v4;
    do
    {
      if (v24)
      {
        v11 = MEMORY[0x253052270](v7, v9);
      }

      else
      {
        v11 = *(v9 + 8 * v7 + 32);
      }

      v12 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);

      v14(v26, ObjectType, v12);

      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24F457B3C((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v25 + 16) = v16 + 1;
      v17 = v25 + 40 * v16;
      v18 = v26[0];
      v19 = v26[1];
      *(v17 + 64) = v27;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      v9 = v10;
    }

    while (v6 != v7);

    v1 = v22;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t GuidedSearchToken.__allocating_init(id:value:isSelected:leadingIconSymbolName:displayName:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v14) = a4;
  v34 = a2;
  v35 = a3;
  v33 = a10;
  v36 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_24E60169C(a1, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v21 = v40;
    *(v20 + 80) = v39;
    *(v20 + 96) = v21;
    *(v20 + 112) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v31 = v14;
    v14 = a6;
    v23 = a8;
    v24 = v22;
    v32 = a5;
    v25 = a7;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v37 = v24;
    v38 = v27;
    a8 = v23;
    a6 = v14;
    LOBYTE(v14) = v31;
    a7 = v25;
    a5 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v33, v20 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
  v28 = v35;
  *(v20 + 16) = v34;
  *(v20 + 24) = v28;
  *(v20 + 32) = v14 & 1;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = v36;
  return v20;
}

uint64_t GuidedSearchToken.init(id:value:isSelected:leadingIconSymbolName:displayName:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  LODWORD(v16) = a4;
  v35 = a2;
  v36 = a3;
  v34 = a10;
  v37 = a9;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v40, &qword_27F235830);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v32 = v16;
    v16 = a6;
    v23 = a8;
    v24 = v22;
    v33 = a5;
    v25 = a7;
    v27 = v26;
    (*(v19 + 8))(v21, v18);
    v38 = v24;
    v39 = v27;
    a8 = v23;
    a6 = v16;
    LOBYTE(v16) = v32;
    a7 = v25;
    a5 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v28 = v44;
  *(v11 + 80) = v43;
  *(v11 + 96) = v28;
  *(v11 + 112) = v45;
  sub_24E65E0D4(v34, v11 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
  v29 = v36;
  *(v11 + 16) = v35;
  *(v11 + 24) = v29;
  *(v11 + 32) = v16 & 1;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = v37;
  return v11;
}

uint64_t GuidedSearchToken.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  MEMORY[0x28223BE20](v3);
  v81 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v82 = &v72 - v7;
  v8 = sub_24F91F6B8();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = &v72 - v14;
  MEMORY[0x28223BE20](v15);
  v86 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v29 = a1;
  sub_24F928398();
  v80 = sub_24F928348();
  v31 = v30;
  v34 = *(v11 + 8);
  v32 = v11 + 8;
  v33 = v34;
  v34(v28, v10);
  if (!v31)
  {
    v42 = sub_24F92AC38();
    sub_24EEDD3E4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v43 = 0x65756C6176;
    v44 = v90;
    v43[1] = 0xE500000000000000;
    v43[2] = v44;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
LABEL_7:
    swift_willThrow();
    (*(v92 + 8))(v99, v91);
    v33(v29, v10);
    return v25;
  }

  v89 = v31;
  sub_24F928398();
  v77 = sub_24F928348();
  v36 = v35;
  v33(v25, v10);
  if (!v36)
  {

    v45 = sub_24F92AC38();
    sub_24EEDD3E4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v46 = 0x4E79616C70736964;
    v46[1] = 0xEB00000000656D61;
    v46[2] = v90;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D22530], v45);
    goto LABEL_7;
  }

  v78 = v36;
  v25 = 0x7463656C65537369;
  sub_24F928398();
  v74 = sub_24F928278();
  v37 = v74;
  v33(v22, v10);
  v38 = v33;
  v39 = v29;
  if (v37 == 2)
  {

    v40 = sub_24F92AC38();
    sub_24EEDD3E4(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v41 = 0x7463656C65537369;
    v41[1] = 0xEA00000000006465;
    v41[2] = v90;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v92 + 8))(v99, v91);
    v38(v29, v10);
  }

  else
  {
    v75 = v38;
    v76 = v32;
    sub_24F928398();
    v48 = sub_24F928348();
    if (v49)
    {
      *&v95 = v48;
      *(&v95 + 1) = v49;
    }

    else
    {
      v50 = v83;
      sub_24F91F6A8();
      v51 = sub_24F91F668();
      v53 = v52;
      (*(v84 + 8))(v50, v85);
      *&v95 = v51;
      *(&v95 + 1) = v53;
    }

    sub_24F92C7F8();
    v54 = v75;
    v75(v19, v10);
    v55 = v86;
    sub_24F928398();
    v72 = sub_24F928348();
    v73 = v56;
    v54(v55, v10);
    type metadata accessor for Action();
    v57 = v87;
    sub_24F928398();
    v25 = v39;
    v58 = v99;
    v59 = v88;
    v60 = static Action.makeInstance(byDeserializing:using:)(v57, v99);
    if (v59)
    {

      (*(v92 + 8))(v58, v91);
      v54(v25, v10);
      v54(v57, v10);
      sub_24E601704(v98, &qword_27F235830);
    }

    else
    {
      v86 = v60;
      v87 = v10;
      v54(v57, v10);
      sub_24F929608();
      v88 = v25;
      sub_24F928398();
      v61 = v91;
      (*(v92 + 16))(v81, v58, v91);
      v62 = v82;
      sub_24F929548();
      v25 = swift_allocObject();
      sub_24E60169C(v98, &v95, &qword_27F235830);
      if (*(&v96 + 1))
      {
        v63 = v96;
        *(v25 + 80) = v95;
        *(v25 + 96) = v63;
        *(v25 + 112) = v97;
      }

      else
      {
        v64 = v83;
        sub_24F91F6A8();
        v65 = sub_24F91F668();
        v67 = v66;
        (*(v84 + 8))(v64, v85);
        v93 = v65;
        v94 = v67;
        sub_24F92C7F8();
        sub_24E601704(&v95, &qword_27F235830);
      }

      v68 = v73;
      v69 = v72;
      (*(v92 + 8))(v99, v61);
      v75(v88, v87);
      sub_24E601704(v98, &qword_27F235830);
      sub_24E65E0D4(v62, v25 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
      v70 = v89;
      *(v25 + 16) = v80;
      *(v25 + 24) = v70;
      *(v25 + 32) = v74 & 1;
      *(v25 + 40) = v69;
      *(v25 + 48) = v68;
      v71 = v78;
      *(v25 + 56) = v77;
      *(v25 + 64) = v71;
      *(v25 + 72) = v86;
    }
  }

  return v25;
}

uint64_t GuidedSearchToken.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GuidedSearchToken.leadingIconSymbolName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GuidedSearchToken.displayName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t GuidedSearchToken.segue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 72);
  a1[3] = type metadata accessor for Action();
  a1[4] = sub_24EEDD3E4(&qword_27F216DE8, type metadata accessor for Action);
  *a1 = v3;
}

uint64_t GuidedSearchToken.withSelection(_:)(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_24F91F6B8();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_24E65864C((v2 + 10), v33);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[6];
  v26 = v2[5];
  v12 = v2[7];
  v13 = v2[8];
  v24 = v9;
  v25 = v12;
  v14 = v2[9];
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics, v8, &qword_27F213E68);
  v15 = swift_allocObject();
  sub_24E60169C(v33, &v30, &qword_27F235830);
  if (*(&v31 + 1))
  {
    v16 = v31;
    *(v15 + 80) = v30;
    *(v15 + 96) = v16;
    *(v15 + 112) = v32;
  }

  else
  {

    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v22 + 8))(v5, v23);
    v28 = v17;
    v29 = v19;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830);
  }

  sub_24E601704(v33, &qword_27F235830);
  sub_24E65E0D4(v8, v15 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics);
  *(v15 + 16) = v24;
  *(v15 + 24) = v10;
  *(v15 + 32) = v27 & 1;
  v20 = v25;
  *(v15 + 40) = v26;
  *(v15 + 48) = v11;
  *(v15 + 56) = v20;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  return v15;
}

uint64_t GuidedSearchToken.deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t GuidedSearchToken.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17GuidedSearchToken_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEDD0C4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  a1[3] = type metadata accessor for Action();
  a1[4] = sub_24EEDD3E4(&qword_27F216DE8, type metadata accessor for Action);
  *a1 = v3;
}

uint64_t sub_24EEDD148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GuidedSearchToken.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t GuidedSearchToken.debugDescription.getter()
{
  v4 = *(v0 + 16);

  MEMORY[0x253050C20](8250, 0xE200000000000000);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v1, v2);

  return v4;
}

uint64_t sub_24EEDD244()
{
  v1 = *v0;
  v5 = *(*v0 + 16);

  MEMORY[0x253050C20](8250, 0xE200000000000000);
  if (*(v1 + 32))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v2, v3);

  return v5;
}

BOOL _s12GameStoreKit17GuidedSearchTokenC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_24F92CE08() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}

uint64_t sub_24EEDD3E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GuidedSearchToken()
{
  result = qword_27F233148;
  if (!qword_27F233148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEDD480()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 ShareSheetProductMetadata.__allocating_init(adamId:storeFrontIdentifier:name:subtitle:genreName:icon:screenshots:videos:isMessagesOnlyApp:messagesAppIcon:notesMetadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v20 = swift_allocObject();
  v21 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 24) = v21;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  *(v20 + 64) = a6;
  *(v20 + 72) = a7;
  *(v20 + 80) = a8;
  result = a9;
  *(v20 + 88) = a9;
  *(v20 + 104) = a10;
  *(v20 + 112) = a11;
  *(v20 + 120) = a12;
  *(v20 + 128) = a13;
  *(v20 + 136) = a14;
  return result;
}

uint64_t ShareSheetProductMetadata.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ShareSheetProductMetadata.storeFrontIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetProductMetadata.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ShareSheetProductMetadata.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ShareSheetProductMetadata.genreName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ShareSheetProductMetadata.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetProductMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

void (**ShareSheetProductMetadata.init(deserializing:using:)(uint64_t a1, uint64_t a2))(void)
{
  v3 = v2;
  v89 = a2;
  v87 = v3;
  v85 = *v3;
  v88 = sub_24F9285B8();
  v86 = *(v88 - 8);
  v5 = MEMORY[0x28223BE20](v88);
  v83 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v81 = &v74[-v7];
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v74[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v74[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v74[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v74[-v20];
  v22 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v28(v21, v8);
  if (!v25)
  {
    v36 = 0x64496D616461;
    v38 = v22;
    v39 = v86;
    v37 = v87;
    v40 = v26;
    v41 = 0xE600000000000000;
LABEL_8:
    v42 = sub_24F92AC38();
    sub_24EEDE1EC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v43 = v36;
    v43[1] = v41;
    v43[2] = v85;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v39 + 8))(v89, v88);
    v40(v38, v8);
    goto LABEL_9;
  }

  v78 = v23;
  sub_24F928398();
  v29 = sub_24F928348();
  v31 = v30;
  v26(v19, v8);
  if (!v31)
  {
    v35 = v26;
    v79 = 0xE400000000000000;
    v36 = 1701667182;
    v38 = v22;
    v37 = v87;
    goto LABEL_7;
  }

  v76 = v29;
  v79 = 0x800000024FA62000;
  sub_24F928398();
  v32 = sub_24F928278();
  v26(v16, v8);
  v33 = v8;
  v34 = v27;
  if (v32 == 2)
  {
    v35 = v26;
    v36 = 0xD000000000000011;
    v8 = v33;

    v37 = v87;
    v38 = v22;
LABEL_7:

    v39 = v86;
    v41 = v79;
    v40 = v35;
    goto LABEL_8;
  }

  v75 = v32;
  v37 = v87;
  v87[2] = v78;
  v37[3] = v25;
  v45 = v22;
  v46 = v33;
  v47 = v84;
  sub_24F928398();
  v48 = sub_24F928348();
  v50 = v49;
  v26(v47, v46);
  v37[4] = v48;
  v37[5] = v50;
  v37[6] = v76;
  v37[7] = v31;
  v77 = v45;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v26(v47, v46);
  v37[8] = v51;
  v37[9] = v53;
  sub_24F928398();
  v54 = sub_24F928348();
  v56 = v55;
  v78 = v46;
  v79 = v34;
  v26(v47, v46);
  v37[10] = v54;
  v37[11] = v56;
  v57 = type metadata accessor for Artwork();
  v58 = v80;
  sub_24F928398();
  v76 = v26;
  v59 = v86;
  v60 = v81;
  v61 = v88;
  v62 = v89;
  v85 = *(v86 + 16);
  v85(v81);
  v81 = v57;
  v63 = v82;
  v64 = Artwork.__allocating_init(deserializing:using:)(v58, v60);
  if (!v63)
  {
    v37[12] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273D0);
    sub_24F928398();
    v65 = v83;
    v66 = v62;
    v67 = v88;
    (v85)(v83, v66, v88);
    sub_24EAC2CBC();
    sub_24F929548();
    v37[13] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233158);
    sub_24F928398();
    v68 = v65;
    v69 = v89;
    v70 = v85;
    (v85)(v68, v89, v67);
    sub_24EEDE138();
    sub_24F929548();
    v37[14] = v90;
    *(v37 + 120) = v75 & 1;
    sub_24F928398();
    v71 = v69;
    v72 = v88;
    v70(v83, v71, v88);
    sub_24EEDE1EC(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v37[16] = v90;
    type metadata accessor for ShareSheetNotesMetadata();
    sub_24F928398();
    v73 = v89;
    (v85)(v83, v89, v72);
    sub_24EEDE1EC(&qword_27F233168, type metadata accessor for ShareSheetNotesMetadata);
    sub_24F929548();
    (*(v59 + 8))(v73, v72);
    (v76)(v77, v78);
    v37[17] = v90;
    return v37;
  }

  (*(v59 + 8))(v62, v61);
  (v76)(v77, v78);

LABEL_9:
  type metadata accessor for ShareSheetProductMetadata();
  swift_deallocPartialClassInstance();
  return v37;
}

uint64_t ShareSheetProductMetadata.init(adamId:storeFrontIdentifier:name:subtitle:genreName:icon:screenshots:videos:isMessagesOnlyApp:messagesAppIcon:notesMetadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 24) = v15;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a6;
  *(v14 + 72) = a7;
  *(v14 + 80) = a8;
  *(v14 + 88) = a9;
  *(v14 + 104) = a10;
  *(v14 + 112) = a11;
  *(v14 + 120) = a12;
  *(v14 + 128) = a13;
  *(v14 + 136) = a14;
  return v14;
}

unint64_t sub_24EEDE138()
{
  result = qword_27F233160;
  if (!qword_27F233160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233158);
    sub_24EEDE1EC(&qword_27F221590, type metadata accessor for Video);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233160);
  }

  return result;
}

uint64_t sub_24EEDE1EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ShareSheetProductMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetProductMetadata.__deallocating_deinit()
{
  ShareSheetProductMetadata.deinit();

  return swift_deallocClassInstance();
}

void (**sub_24EEDE2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(void)
{
  type metadata accessor for ShareSheetProductMetadata();
  v7 = swift_allocObject();
  result = ShareSheetProductMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_24EEDE3B4(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v4);

  return MaxY;
}

double UIView.firstBaselineFromTop.getter()
{
  [v0 frame];

  return CGRectGetMaxY(*&v1);
}

double sub_24EEDE440(void *a1)
{
  v1 = a1;
  [v1 frame];
  MaxY = CGRectGetMaxY(v6);
  [v1 lastBaselineFromBottom];
  v4 = v3;

  return MaxY - v4;
}

double UIView.lastBaselineMaxY.getter()
{
  [v0 frame];
  MaxY = CGRectGetMaxY(v4);
  [v0 lastBaselineFromBottom];
  return MaxY - v2;
}

double sub_24EEDE51C(void *a1)
{
  v1 = a1;
  v2 = UIButton.lastBaselineFromBottom.getter();

  return v2;
}

double UIButton.lastBaselineFromBottom.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 contentRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  MaxY = CGRectGetMaxY(v29);
  v19 = [v0 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 _baselineOffsetFromBottom];
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = vabdd_f64(Height, MaxY);
  [v0 contentEdgeInsets];
  v25 = v24;
  [v0 titleEdgeInsets];
  return v23 + v22 + v25 + v26;
}

double sub_24EEDE674(void *a1)
{
  v1 = a1;
  v2 = UIImageView.lastBaselineFromBottom.getter();

  return v2;
}

double UIImageView.lastBaselineFromBottom.getter()
{
  v1 = [v0 image];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 preferredSymbolConfiguration];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 traitCollection];
      v7 = [v5 configurationWithTraitCollection_];

      v8 = [v3 imageByApplyingSymbolConfiguration_];
      if (!v8)
      {

        return v2;
      }

      v9 = v8;
      v10 = sub_24F92C3C8();
      v12 = v11;

      if (v12)
      {
        return v2;
      }

      return *&v10;
    }

    v10 = sub_24F92C3C8();
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      return *&v10;
    }
  }

  return v2;
}

uint64_t sub_24EEDE7E0()
{
  sub_24E68FF30();

  return sub_24F924868();
}

uint64_t sub_24EEDE870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233170);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *(v7 + 16);
  v47 = a1;
  v18(&v43 - v16, a1, v6);
  v46 = v18;
  v18(v15, v17, v6);
  v19 = *MEMORY[0x277CDF9A8];
  v45 = *(v7 + 104);
  v45(v5, v19, v6);
  v50 = sub_24EEDEF70(&qword_27F22DF90);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v49 = sub_24EEDEF70(&qword_27F233178);
  v21 = sub_24F92AF98();
  sub_24E601704(v5, &qword_27F233170);
  v48 = *(v7 + 8);
  v48(v15, v6);
  v22 = MEMORY[0x277CDF988];
  if (v21)
  {
    v23 = 0x405B800000000000;
    v24 = v12;
LABEL_4:
    v48(v17, v6);
    goto LABEL_14;
  }

  v25 = (*(v7 + 88))(v17, v6);
  if (v25 == *MEMORY[0x277CDFA00])
  {
    v23 = 0x4050800000000000;
    v24 = v12;
  }

  else
  {
    v24 = v12;
    if (v25 == *MEMORY[0x277CDFA10])
    {
      v26 = 0x4051800000000000;
    }

    else if (v25 == *v22)
    {
      v26 = 0x4056800000000000;
    }

    else
    {
      if (v25 != *MEMORY[0x277CDF998])
      {
        v23 = 0x4050000000000000;
        goto LABEL_4;
      }

      v26 = 0x4059000000000000;
    }

    v23 = v26;
  }

LABEL_14:
  v46(v24, v47, v6);
  v27 = *v22;
  v28 = v45;
  v45(v5, v27, v6);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = sub_24F92AF98();
  sub_24E601704(v5, &qword_27F233170);
  if (v29)
  {
    v48(v24, v6);
    v30 = 16.0;
    v31 = v44;
  }

  else
  {
    v28(v5, *MEMORY[0x277CDF9F0], v6);
    result = sub_24F92AFF8();
    v31 = v44;
    if ((result & 1) == 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v32 = sub_24F92AF98();
    sub_24E601704(v5, &qword_27F233170);
    v48(v12, v6);
    if (v32)
    {
      v30 = 14.0;
    }

    else
    {
      v30 = 10.0;
    }
  }

  v46(v31, v47, v6);
  v28(v5, v27, v6);
  result = sub_24F92AFF8();
  if ((result & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v33 = sub_24F92AF98();
  sub_24E601704(v5, &qword_27F233170);
  if (v33)
  {
    v48(v31, v6);
    sub_24F925A18();
    v34 = v43;
LABEL_28:
    v36 = sub_24F9258E8();

    v37 = type metadata accessor for OfferButtonDesign.Metrics(0);
    v38 = v37[9];
    v39 = sub_24F91EFA8();
    (*(*(v39 - 8) + 56))(v34 + v38, 1, 1, v39);
    v40 = v37[13];
    v41 = *MEMORY[0x277CE1058];
    v42 = sub_24F926E78();
    result = (*(*(v42 - 8) + 104))(v34 + v40, v41, v42);
    *v34 = 0x403C000000000000;
    *(v34 + 8) = v23;
    *(v34 + 16) = 0x406E000000000000;
    *(v34 + 24) = v30;
    *(v34 + 32) = v36;
    *(v34 + v37[10]) = 1;
    *(v34 + v37[11]) = 0x3FEB333333333333;
    *(v34 + v37[12]) = 0x3FF2AAAAAAAAAAABLL;
    return result;
  }

  v28(v5, *MEMORY[0x277CDF9F0], v6);
  result = sub_24F92AFF8();
  if (result)
  {
    v35 = sub_24F92AF98();
    sub_24E601704(v5, &qword_27F233170);
    v48(v31, v6);
    v34 = v43;
    if (v35)
    {
      sub_24F925A08();
    }

    else
    {
      sub_24F925A18();
    }

    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_24EEDEF70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F923E98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EEDEFFC(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfferButtonDesign(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  (*(v8 + 104))(v10, *a3, v7);
  v13 = *(v11 + 20);
  (*(v8 + 32))(&v12[v13], v10, v7);
  result = (*(v8 + 56))(&v12[v13], 0, 1, v7);
  *v12 = a4;
  *(v12 + 1) = 0;
  return result;
}

uint64_t sub_24EEDF144@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v66 = a2;
  v3 = sub_24F926E78();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v64 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v63 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = v57 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v69 = v57 - v13;
  MEMORY[0x28223BE20](v12);
  v61 = v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v57 - v16;
  v18 = sub_24F923E98();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x277CDFA10];
  v23 = *(v19 + 104);
  v23(v21, v22, v18);
  sub_24EEDEF70(&qword_27F233178);
  v65 = a1;
  LOBYTE(a1) = sub_24F92AF78();
  v24 = *(v19 + 8);
  v24(v21, v18);
  if (a1)
  {
    v61 = v17;
    v25 = type metadata accessor for OfferButtonDesign.Context(0);
    v26 = *(v65 + *(v25 + 24));
    if (v26 < 1)
    {
      LODWORD(v62) = 0;
    }

    else
    {
      LODWORD(v62) = *(v65 + *(v25 + 28));
    }

    v41 = sub_24F91EFA8();
    v42 = *(v41 - 8);
    v58 = *(v42 + 56);
    v59 = v41;
    v57[1] = v42 + 56;
    v58(v69, 1, 1);
    v23(v21, v22, v18);
    v43 = sub_24F92AF78();
    v24(v21, v18);
    if (v43)
    {
      v44 = v26;
      v45 = v26 < 14;
      v34 = v67;
      v33 = v68;
      v30 = v63;
      v35 = v64;
      v46 = v61;
      if (v45)
      {
        v52 = v62;
        if ((v44 > 9) | v62 & 1)
        {
          sub_24F925A18();
          v28 = sub_24F9258E8();

          v37 = 0;
          v40 = 1;
        }

        else
        {
          sub_24F9259D8();
          v28 = sub_24F9258E8();

          v40 = 1;
          v37 = 0xBFE5555555555555;
        }
      }

      else
      {
        sub_24F925918();
        v49 = sub_24F925908();
        (*(*(v49 - 8) + 56))(v46, 1, 1, v49);
        v28 = sub_24F925968();
        sub_24E601704(v46, &qword_27F214698);
        v50 = v60;
        sub_24F91EF98();
        v51 = v69;
        sub_24E601704(v69, &qword_27F233180);
        (v58)(v50, 0, 1, v59);
        sub_24EEDF918(v50, v51);
        v37 = 0;
        v40 = 2;
        v52 = v62;
      }
    }

    else
    {
      sub_24F925918();
      v47 = sub_24F925908();
      v40 = 1;
      v48 = v61;
      (*(*(v47 - 8) + 56))(v61, 1, 1, v47);
      v28 = sub_24F925968();
      sub_24E601704(v48, &qword_27F214698);
      v37 = 0;
      v34 = v67;
      v33 = v68;
      v30 = v63;
      v35 = v64;
      v52 = v62;
    }

    sub_24EEDF918(v69, v30);
    v53 = MEMORY[0x277CE1058];
    if (!v52)
    {
      v53 = MEMORY[0x277CE1048];
    }

    (*(v34 + 104))(v35, *v53, v33);
    v36 = xmmword_24F9AC800;
    v38 = 1.0;
    v39 = 10.0;
  }

  else
  {
    sub_24F925918();
    v27 = sub_24F925908();
    (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
    v28 = sub_24F925968();
    sub_24E601704(v17, &qword_27F214698);
    v29 = sub_24F91EFA8();
    v30 = v61;
    (*(*(v29 - 8) + 56))(v61, 1, 1, v29);
    v31 = type metadata accessor for OfferButtonDesign.Context(0);
    if (*(v65 + *(v31 + 24)) >= 1 && (*(v65 + *(v31 + 28)) & 1) != 0)
    {
      v32 = MEMORY[0x277CE1058];
    }

    else
    {
      v32 = MEMORY[0x277CE1048];
    }

    v34 = v67;
    v33 = v68;
    v35 = v62;
    (*(v67 + 104))(v62, *v32, v68);
    v36 = xmmword_24F9AC7F0;
    v37 = 0;
    v38 = 0.8125;
    v39 = 18.0;
    v40 = 1;
  }

  v54 = v66;
  *v66 = v36;
  v54[2] = 240.0;
  v54[3] = v39;
  *(v54 + 4) = v28;
  v55 = type metadata accessor for OfferButtonDesign.Metrics(0);
  sub_24EEDF918(v30, v54 + v55[9]);
  *(v54 + v55[10]) = v40;
  *(v54 + v55[11]) = v38;
  *(v54 + v55[12]) = v37;
  return (*(v34 + 32))(v54 + v55[13], v35, v33);
}

uint64_t sub_24EEDF918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEDF9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EEDFA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F923E98();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_24EEDFB44()
{
  sub_24F923E98();
  if (v0 <= 0x3F)
  {
    sub_24EEDFBE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EEDFBE0()
{
  if (!qword_27F233198)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F233198);
    }
  }
}

uint64_t sub_24EEDFC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F926E78();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EEDFD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F926E78();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EEDFEB8()
{
  sub_24EEDFF6C();
  if (v0 <= 0x3F)
  {
    sub_24F926E78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EEDFF6C()
{
  if (!qword_27F2331B0)
  {
    sub_24F91EFA8();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2331B0);
    }
  }
}

uint64_t sub_24EEDFFD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OfferButtonDesign.Size(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24EEE00B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OfferButtonDesign.Size(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24EEE015C()
{
  result = sub_24E6C5550();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OfferButtonDesign.Size(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EEE01F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9234F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EEE0274(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F9234F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24EEE02F4()
{
  v0 = sub_24F9234F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_24EEE034C()
{
  v0 = type metadata accessor for OfferButtonDesign(0);
  __swift_allocate_value_buffer(v0, qword_27F39CCD8);
  v1 = __swift_project_value_buffer(v0, qword_27F39CCD8);
  if (qword_27F2107F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F39CCA8);

  return sub_24EEE0464(v2, v1);
}

uint64_t sub_24EEE03E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210800 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OfferButtonDesign(0);
  v3 = __swift_project_value_buffer(v2, qword_27F39CCD8);

  return sub_24EEE0464(v3, a1);
}

uint64_t sub_24EEE0464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonDesign(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TodayCardMediaList.init(deserializing:using:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v85 = a2;
  v77 = v3;
  v68 = *v3;
  v78 = sub_24F9285B8();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v65 - v7;
  MEMORY[0x28223BE20](v8);
  v72 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v65 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v70 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = v65 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v65 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v65 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v67 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v79 = v65 - v30;
  v86 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v71 = v16;
  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v83 = v32;
  v84 = v15;
  v32(v25, v15);
  v75 = v27;
  v33 = *(v27 + 48);
  v80 = v26;
  if (v33(v14, 1, v26) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0);
    v34 = sub_24F92AC38();
    sub_24EEE0F74(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v35 = 0x7370756B636F6CLL;
    v35[1] = 0xE700000000000000;
    v35[2] = v68;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v82 + 8))(v85, v78);
    v83(v86, v84);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v75;
    v37 = *(v75 + 32);
    v68 = v31;
    v37(v79, v14, v80);
    sub_24F929608();
    v38 = v78;
    sub_24F928398();
    v39 = v82 + 16;
    v40 = *(v82 + 16);
    v41 = v72;
    v42 = v85;
    v40(v72, v85, v38);
    sub_24F929548();
    v43 = v81;
    v66 = v40;
    v40(v81, v42, v38);
    (*(v36 + 16))(v67, v79, v80);
    v44 = v43;
    v40(v41, v43, v38);
    type metadata accessor for Lockup();
    sub_24EEE0F74(&qword_27F221FB8, type metadata accessor for Lockup);
    v45 = sub_24F92B6A8();
    v46 = v77;
    *(v77 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups) = v45;
    v47 = v86;
    sub_24F928398();
    v48 = sub_24F928348();
    v50 = v49;
    v83(v22, v84);
    v51 = (v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);
    *v51 = v48;
    v51[1] = v50;
    sub_24F928398();
    v52 = v44;
    v53 = v44;
    v54 = v78;
    v55 = v66;
    v66(v41, v53, v78);
    type metadata accessor for Artwork();
    sub_24EEE0F74(&qword_27F219660, type metadata accessor for Artwork);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks) = sub_24F92B698();
    sub_24F928398();
    v55(v41, v52, v54);
    v65[1] = v39;
    type metadata accessor for Video();
    sub_24EEE0F74(&qword_27F221590, type metadata accessor for Video);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos) = sub_24F92B698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
    sub_24F928398();
    v55(v41, v81, v54);
    sub_24E9E115C();
    sub_24F929548();
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = v87;
    v56 = v69;
    sub_24F928398();
    LOBYTE(v48) = sub_24F928278();
    v57 = v84;
    v83(v56, v84);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_isMediaDark) = v48 & 1;
    v58 = v70;
    (*(v71 + 16))(v70, v47, v57);
    v59 = v73;
    v55(v73, v85, v54);
    v60 = v74;
    v61 = TodayCardMedia.init(deserializing:using:)(v58, v59);
    if (v60)
    {
      v26 = v82 + 8;
      v62 = *(v82 + 8);
      v62(v85, v54);
      v83(v86, v84);
      v62(v81, v54);
      sub_24E601704(v76, &qword_27F213E68);
      (*(v75 + 8))(v79, v80);
    }

    else
    {
      v26 = v61;
      v64 = *(v82 + 8);
      v64(v85, v54);
      v83(v86, v84);
      v64(v81, v54);
      sub_24E601704(v76, &qword_27F213E68);
      (*(v75 + 8))(v79, v80);
    }
  }

  return v26;
}

uint64_t sub_24EEE0F74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TodayCardMediaList.__allocating_init(lockups:marketingText:artworks:videos:artworkLayoutsWithMetrics:isMediaDark:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v16 = sub_24F91F6B8();
  v27 = *(v16 - 8);
  v28 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups) = a1;
  v20 = (v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);
  *v20 = a2;
  v20[1] = a3;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks) = a4;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos) = a5;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = a6;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_isMediaDark) = a7;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_24E60169C(a8, v19 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);
  sub_24E60169C(v34, &v31, &qword_27F235830);
  if (*(&v32 + 1))
  {
    v21 = v32;
    *(v19 + 32) = v31;
    *(v19 + 48) = v21;
    *(v19 + 64) = v33;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v27 + 8))(v18, v28);
    v29 = v22;
    v30 = v24;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830);
  }

  sub_24E601704(a8, &qword_27F213E68);
  sub_24E601704(v34, &qword_27F235830);
  *(v19 + 16) = 2;
  *(v19 + 24) = 1;
  return v19;
}

uint64_t TodayCardMediaList.init(lockups:marketingText:artworks:videos:artworkLayoutsWithMetrics:isMediaDark:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v17 = sub_24F91F6B8();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v29 - v21;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups) = a1;
  v23 = (v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);
  *v23 = a2;
  v23[1] = a3;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks) = a4;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos) = a5;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworkLayoutsWithMetrics) = a6;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_isMediaDark) = v31;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_24E60169C(a8, v22, &qword_27F213E68);
  sub_24E60169C(v40, &v34, &qword_27F235830);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v29 + 8))(v19, v30);
    v32 = v24;
    v33 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  sub_24E601704(a8, &qword_27F213E68);
  sub_24E601704(v40, &qword_27F235830);
  v27 = v38;
  *(v9 + 32) = v37;
  *(v9 + 48) = v27;
  *(v9 + 64) = v39;
  sub_24E65E0D4(v22, v9 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v9 + 16) = 2;
  *(v9 + 24) = 1;
  return v9;
}

uint64_t TodayCardMediaList.marketingText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_marketingText);

  return v1;
}

uint64_t TodayCardMediaList.artworks.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL TodayCardMediaList.hasMedia.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_artworks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (sub_24F92C738())
    {
      return 1;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_videos);
  if (v4 >> 62)
  {
    v5 = sub_24F92C738();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

char *TodayCardMediaList.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaList_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EEE1890()
{
}

uint64_t TodayCardMediaList.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t TodayCardMediaList.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaList()
{
  result = qword_27F2331D8;
  if (!qword_27F2331D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.init(pageFacetsMetricsProvider:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = *(type metadata accessor for PageFacetsFieldsProvider() + 20);
  v5 = *MEMORY[0x277D22340];
  v6 = sub_24F92A2D8();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  *(a2 + 8) = a1;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for PageFacetsFieldsProvider()
{
  result = qword_27F2331F0;
  if (!qword_27F2331F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageFacetsFieldsProvider() + 20);
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageFacetsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v40 = (*(v4 + 8))(ObjectType, v4);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_24F929A18();
  v38 = a1;
  if (*(v6 + 16) && (v7 = sub_24E76D644(0x65446E6F69746361, 0xED0000736C696174), (v8 & 1) != 0))
  {
    sub_24E643A9C(*(v6 + 56) + 32 * v7, &v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    if (swift_dynamicCast())
    {
      v9 = *&v41[0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = sub_24E608448(MEMORY[0x277D84F90]);
LABEL_8:
  v10 = 0;
  v11 = v40 + 64;
  v12 = 1 << *(v40 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v40 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = v15;
  while (v14)
  {
    v17 = v10;
LABEL_18:
    v18 = __clz(__rbit64(v14)) | (v17 << 6);
    v19 = (*(v40 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    *&v41[0] = *(*(v40 + 56) + 8 * v18);
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E907170();
    v22 = sub_24F92AF68();
    v24 = v23;

    v43 = MEMORY[0x277D837D0];
    *&v42 = v22;
    *(&v42 + 1) = v24;
    sub_24E612B0C(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    v27 = sub_24E76D644(v21, v20);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_30;
    }

    v31 = v26;
    if (v9[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8AD8E4();
      }
    }

    else
    {
      sub_24E89873C(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_24E76D644(v21, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_32;
      }

      v27 = v32;
    }

    v14 &= v14 - 1;
    if (v31)
    {

      v9 = v44;
      v16 = (v44[7] + 32 * v27);
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_24E612B0C(v41, v16);
    }

    else
    {
      v9 = v44;
      v44[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v9[6] + 16 * v27);
      *v34 = v21;
      v34[1] = v20;
      sub_24E612B0C(v41, (v9[7] + 32 * v27));
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v9[2] = v37;
    }

    v10 = v17;
    v15 = v39;
    v11 = v40 + 64;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      *&v42 = v9;
      __swift_mutable_project_boxed_opaque_existential_1(v38, *(v38 + 24));
      sub_24F929A28();
      return __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    v14 = *(v11 + 8 * v17);
    ++v10;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2384D0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for PageFacetsFieldsProvider();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929F48();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_24F929098();
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = *(v4 + 20);
  v15 = *MEMORY[0x277D22340];
  v16 = sub_24F92A2D8();
  (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
  *(v6 + 1) = v21;
  swift_unknownObjectWeakAssign();
  v24[3] = v4;
  v24[4] = sub_24EEE24E0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  sub_24EEE2538(v6, boxed_opaque_existential_1);
  if (qword_27F2102E8 != -1)
  {
    swift_once();
  }

  v18 = sub_24F92A2C8();
  __swift_project_value_buffer(v18, qword_27F229D10);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_24ED44204();
  (*(v8 + 16))(v10, v13, v7);
  sub_24F929128();
  sub_24F929148();
  sub_24F929108();
  sub_24F9290A8();
  sub_24EEE259C(v6);
  return (*(v8 + 8))(v13, v7);
}

unint64_t sub_24EEE24E0()
{
  result = qword_27F2331E8;
  if (!qword_27F2331E8)
  {
    type metadata accessor for PageFacetsFieldsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2331E8);
  }

  return result;
}

uint64_t sub_24EEE2538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsFieldsProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEE259C(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsFieldsProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEE2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 48);
    v9 = a1 + *(a3 + 20);

    return v8(v9, a2, v7);
  }
}

void *sub_24EEE26E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = sub_24F92A2D8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EEE2788()
{
  result = sub_24F92A2D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

GameStoreKit::LockupsIntent __swiftcall LockupsIntent.init(bundleIds:)(Swift::OpaquePointer bundleIds)
{
  strcpy(v1, "LockupsIntent");
  *(v1 + 14) = -4864;
  *(v1 + 16) = bundleIds;
  result.kind._countAndFlagsBits = bundleIds._rawValue;
  return result;
}

uint64_t LockupsIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall LockupsIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v5 = isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v6 = [v2 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EEE296C()
{
  result = qword_27F233200;
  if (!qword_27F233200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233200);
  }

  return result;
}

unint64_t sub_24EEE29C4()
{
  result = qword_27F233208;
  if (!qword_27F233208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233208);
  }

  return result;
}

unint64_t sub_24EEE2A1C()
{
  result = qword_27F233210;
  if (!qword_27F233210)
  {
    type metadata accessor for LockupsResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233210);
  }

  return result;
}

GameStoreKit::InAppPurchaseTheme_optional __swiftcall InAppPurchaseTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InAppPurchaseTheme.rawValue.getter()
{
  v1 = 0x7265666E69;
  v2 = 1802658148;
  if (*v0 != 2)
  {
    v2 = 0x6867696C746F7073;
  }

  if (*v0)
  {
    v1 = 0x746867696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24EEE2BB4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEE2C6C()
{
  sub_24F92B218();
}

uint64_t sub_24EEE2D10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EEE2DD0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265666E69;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (*v1 != 2)
  {
    v5 = 0x6867696C746F7073;
    v4 = 0xE900000000000074;
  }

  if (*v1)
  {
    v3 = 0x746867696CLL;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t InAppPurchaseLockup.descriptionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_descriptionText);

  return v1;
}

uint64_t InAppPurchaseLockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v54 = a2;
  v49 = *v4;
  v50 = v3;
  v53 = sub_24F9285B8();
  v6 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v44 = &v42 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = a1;
  sub_24F928398();
  LOBYTE(a1) = sub_24F928328();
  v47 = v14;
  v52 = *(v14 + 8);
  v52(v23, v13);
  v51 = v6;
  if (a1)
  {
    v25 = sub_24F92AC38();
    sub_24EEE3640(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v26 = 0x746E65726170;
    v27 = v49;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
  }

  else
  {
    sub_24F928398();
    v49 = *(v6 + 16);
    v49(v12, v54, v53);
    type metadata accessor for Lockup();
    v25 = swift_allocObject();
    v28 = v50;
    v29 = Lockup.init(deserializing:using:)(v20, v12);
    if (!v28)
    {
      *&v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_parent] = v29;
      sub_24F928398();
      v31 = sub_24F928348();
      v33 = v32;
      v52(v23, v13);
      v34 = &v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_descriptionText];
      *v34 = v31;
      v34[1] = v33;
      sub_24F928398();
      sub_24EEE35EC();
      sub_24F928208();
      v52(v23, v13);
      v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_theme] = v56;
      type metadata accessor for FlowAction();
      sub_24F928398();
      v49(v45, v54, v53);
      sub_24EEE3640(&qword_27F22C0E0, type metadata accessor for FlowAction);
      sub_24F929548();
      *&v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_productAction] = v55;
      v35 = v44;
      v43 = v24;
      sub_24F928398();
      LOBYTE(v31) = sub_24F928278();
      v52(v35, v13);
      v4[OBJC_IVAR____TtC12GameStoreKit19InAppPurchaseLockup_isSubscription] = v31 & 1;
      v36 = v46;
      (*(v47 + 16))(v46, v24, v13);
      v37 = v48;
      v39 = v53;
      v38 = v54;
      v49(v48, v54, v53);
      v40 = Lockup.init(deserializing:using:)(v36, v37);
      v41 = v43;
      v25 = v40;
      (*(v51 + 8))(v38, v39);
      v52(v41, v13);
      return v25;
    }
  }

  (*(v51 + 8))(v54, v53);
  v52(v24, v13);
  type metadata accessor for InAppPurchaseLockup();
  swift_deallocPartialClassInstance();
  return v25;
}

uint64_t type metadata accessor for InAppPurchaseLockup()
{
  result = qword_27F233228;
  if (!qword_27F233228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EEE35EC()
{
  result = qword_27F233218;
  if (!qword_27F233218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233218);
  }

  return result;
}

uint64_t sub_24EEE3640(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EEE36BC()
{
}

uint64_t InAppPurchaseLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t InAppPurchaseLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24EEE381C()
{
  result = qword_27F233220;
  if (!qword_27F233220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233220);
  }

  return result;
}

uint64_t SearchTextPresenter.__allocating_init(ghostHintMetricsTracker:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  v3 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233240);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onApplyTermExpansion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233248);
  swift_allocObject();
  *(v2 + v5) = sub_24F9280D8();
  v6 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onHintsTermChange;
  swift_allocObject();
  *(v2 + v6) = sub_24F9280D8();
  v7 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker) = a1;
  return v2;
}

uint64_t SearchTextPresenter.init(ghostHintMetricsTracker:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v4 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233240);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onApplyTermExpansion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233248);
  swift_allocObject();
  *(v2 + v6) = sub_24F9280D8();
  v7 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_onHintsTermChange;
  swift_allocObject();
  *(v2 + v7) = sub_24F9280D8();
  v8 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker) = a1;
  return v2;
}

uint64_t sub_24EEE3C40(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F233268);
  v3 = *a2;
  swift_beginAccess();
  sub_24E60169C(v3 + 16, v5, &qword_27F233268);
  swift_beginAccess();
  sub_24EEE3DC4(v6, v3 + 16);
  swift_endAccess();
  sub_24EEE3E34(v5);
  sub_24E601704(v5, &qword_27F233268);
  return sub_24E601704(v6, &qword_27F233268);
}

uint64_t SearchTextPresenter.inputSource.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_24E60169C(v1 + 16, v4, &qword_27F233268);
  swift_beginAccess();
  sub_24EEE3DC4(a1, v1 + 16);
  swift_endAccess();
  sub_24EEE3E34(v4);
  sub_24E601704(a1, &qword_27F233268);
  return sub_24E601704(v4, &qword_27F233268);
}

uint64_t sub_24EEE3DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233268);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEE3E34(uint64_t a1)
{
  v2 = v1;
  v30 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233240);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31[-1] - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  swift_beginAccess();
  sub_24E60169C(v2 + v14, v9, &qword_27F233270);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_27F233270;
    v16 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_24E60169C(a1, v31, &qword_27F233268);
    v17 = v32;
    if (v32)
    {
      v18 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v18 + 16))(v17, v18);
      sub_24F92AD78();

      (*(v11 + 8))(v13, v10);
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_7;
    }

    (*(v11 + 8))(v13, v10);
    v15 = &qword_27F233268;
    v16 = v31;
  }

  sub_24E601704(v16, v15);
LABEL_7:
  swift_beginAccess();
  v19 = v2[5];
  if (v19)
  {
    v20 = v2[6];
    v21 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v22 = *(v19 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v31[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    (*(v20 + 16))(v19, v20);
    (*(v22 + 8))(v25, v19);
    v26 = sub_24E74EC40();
    v27 = sub_24F92BEF8();
    v32 = v26;
    v33 = MEMORY[0x277D225C0];
    v31[0] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233290);
    sub_24EEE58CC();
    sub_24F9288C8();

    __swift_destroy_boxed_opaque_existential_1(v31);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v11 + 56))(v6, v28, 1, v10);
  swift_beginAccess();
  sub_24EEE585C(v6, v2 + v14);
  return swift_endAccess();
}

uint64_t sub_24EEE42C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v16[0] = *a1;
  v15 = v16[0];
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = (a2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot);
  v7 = *(a2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot);
  v8 = *(a2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8);
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v16[1] = v2;
  v17 = v3;
  v18 = v5;
  v19 = v4;
  sub_24EEE4974(v7, v8);
  sub_24EEE49B8(&v20, v16);
  sub_24EEE4930(v20, v21);
  v12 = *v6;
  v13 = v6[1];
  *v6 = v15;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;

  return sub_24EEE4930(v12, v13);
}

void (*SearchTextPresenter.inputSource.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  swift_beginAccess();
  sub_24E60169C(v1 + 16, v4, &qword_27F233268);
  return sub_24EEE4498;
}

void sub_24EEE4498(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    sub_24E60169C(*a1, v2 + 40, &qword_27F233268);
    sub_24E60169C(v3 + 16, v2 + 80, &qword_27F233268);
    swift_beginAccess();
    sub_24EEE3DC4(v2 + 40, v3 + 16);
    swift_endAccess();
    sub_24EEE3E34(v2 + 80);
    sub_24E601704(v2 + 80, &qword_27F233268);
  }

  else
  {
    sub_24E60169C(v3 + 16, v2 + 40, &qword_27F233268);
    swift_beginAccess();
    sub_24EEE3DC4(v2, v3 + 16);
    swift_endAccess();
    sub_24EEE3E34(v2 + 40);
  }

  sub_24E601704(v2 + 40, &qword_27F233268);
  sub_24E601704(v2, &qword_27F233268);

  free(v2);
}

Swift::Void __swiftcall SearchTextPresenter.suggestGhostHint(toExpand:to:)(Swift::String toExpand, Swift::String to)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot);
  v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8);
  if (v4)
  {
    object = to._object;
    countAndFlagsBits = to._countAndFlagsBits;
    v7 = *v3;
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[4];
    v11 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
    if (v11)
    {
      v13 = *(v11 + 24);
      v14 = *(v11 + 16);
      *(v11 + 16) = toExpand;
      *(v11 + 32) = to;
      *(v11 + 48) = 0;
      sub_24EEE4974(v7, v4);

      sub_24EAD7A40(v14, v13);
    }

    else
    {
    }

    v12 = v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
    *v12 = countAndFlagsBits;
    *(v12 + 8) = object;
    *(v12 + 16) = 0;

    v15[0] = v7;
    v15[1] = v4;
    v16 = v8 & 1;
    v17 = v9;
    v18 = v10;
    sub_24EEE4734(v15);
    sub_24EEE4930(v7, v4);
  }
}

uint64_t *sub_24EEE4734(uint64_t *result)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState + 8);
  if (v3 && (*(v2 + 16) & 1) == 0)
  {
    v4 = *result;
    v5 = result[1];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = *result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = *v2;
      sub_24F92B198();
      sub_24F92B198();

      v8 = sub_24F92B358();

      if (v8 & 1) == 0 || (v4 == v7 ? (v9 = v3 == v5) : (v9 = 0), v9 || (sub_24F92CE08()))
      {
      }

      else
      {
        swift_beginAccess();
        if (*(v1 + 40))
        {
          v10 = v1;
          sub_24E615E00(v1 + 16, v16);
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_1(v16, v17);
          v13 = (*(v12 + 8))(v7, v3, v11, v12);
          __swift_destroy_boxed_opaque_existential_1(v16);
          if (v13)
          {
            v16[0] = v7;
            v16[1] = v3;
            sub_24F9280C8();
            if (*(v2 + 8))
            {
              *(v2 + 16) = 1;
            }

            if (*(v10 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker))
            {
              v14._countAndFlagsBits = v7;
              v14._object = v3;
              v15._countAndFlagsBits = v4;
              v15._object = v5;
              SearchGhostHintMetricsTracker.trackDisplayedExpansion(of:from:)(v14, v15);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EEE4930(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24EEE4974(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t *sub_24EEE49B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v27 = a1[4];
  v28 = a1[2];
  v24 = *a2;
  v25 = a1[3];
  v26 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = v3;
  v22 = v5;
  v23 = *(a2 + 16);
  if (v3)
  {
    if (v26)
    {
      v8 = v4 == v24 && v3 == v26;
      if (!v8 && (sub_24F92CE08() & 1) == 0 || v23 != (v28 & 1))
      {
        goto LABEL_9;
      }

      if (v27)
      {
        if (!v6)
        {
          v9 = 0;
          goto LABEL_10;
        }

        if (v25 != v5 || v27 != v6)
        {
          v20 = sub_24F92CE08();

          sub_24EEE4974(v4, v7);
          sub_24EEE4974(v4, v7);
          v9 = v6;
          sub_24EEE4930(v24, v26);
          if ((v20 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_30;
        }

        sub_24EEE4974(v4, v7);
        sub_24EEE4974(v4, v7);
        v16 = v24;
        v17 = v26;
      }

      else
      {
        if (v6)
        {
LABEL_9:

          v9 = v6;
LABEL_10:

          sub_24EEE4974(v4, v7);
          sub_24EEE4974(v4, v7);
          sub_24EEE4930(v24, v26);
LABEL_11:

          sub_24EEE4930(v4, v7);
          v10 = v9;
LABEL_16:
          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v5;
          v33 = v10;
          v11 = v5;
          v12 = v10;
          v21 = v10;
          sub_24EEE4ED4(&v34, &v29);
          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v11;
          v33 = v12;
          v13 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState);
          v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState + 8);

          sub_24EEE5010(&v34, &v29, v13, v14);

          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v22;
          v33 = v21;
          sub_24EEE52F8(&v34, &v29);
          v34 = v24;
          v35 = v26;
          LOBYTE(v36) = v23;
          v37 = v22;
          v38 = v21;
          return sub_24EEE4734(&v34);
        }

        sub_24EEE4974(v4, v7);
        sub_24EEE4974(v4, v7);
        v16 = v24;
        v17 = v26;
      }

      sub_24EEE4930(v16, v17);
LABEL_30:

      v18 = v4;
      v19 = v7;
      goto LABEL_31;
    }

    sub_24EEE4974(v4, v7);
    sub_24EEE4974(v4, v7);

LABEL_15:
    sub_24EEE4930(v4, v7);
    sub_24EEE4930(v24, v26);
    v10 = v6;
    goto LABEL_16;
  }

  if (v26)
  {

    sub_24EEE4974(v4, 0);
    goto LABEL_15;
  }

  sub_24EEE4974(v4, 0);
  v18 = v4;
  v19 = 0;
LABEL_31:

  return sub_24EEE4930(v18, v19);
}

void sub_24EEE4ED4(uint64_t a1, uint64_t *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState);
  v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_textExpansionState + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = *v3;
      sub_24F92B198();
      sub_24F92B198();

      v9 = sub_24F92B358();

      if ((v9 & 1) == 0 || (v5 == v8 ? (v10 = v4 == v6) : (v10 = 0), v10))
      {
      }

      else
      {
        v11 = sub_24F92CE08();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }
    }

    *(v3 + 16) = 0;
    *v3 = 0;
    v3[1] = 0;
  }
}

uint64_t sub_24EEE5010(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *result;
    v7 = *(result + 8);
    v9 = *(result + 24);
    v10 = *(result + 32);
    v11 = *a2;
    v12 = a2[1];
    v30 = a2[4];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v31 = *(result + 24);
      sub_24F92B198();
      sub_24F92B198();
      v14 = sub_24F92B358();

      if (v14)
      {
        if (v11 == a3 && v12 == a4)
        {
          v15 = 0;
        }

        else
        {
          result = sub_24F92CE08();
          v15 = result ^ 1;
        }
      }

      else
      {
        v15 = 0;
      }

      v9 = v31;
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v15 = 0;
      if (!v7)
      {
        return result;
      }
    }

    if (v10)
    {
      v19 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v19 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if (v30)
        {
          v20 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v20 = *v29 & 0xFFFFFFFFFFFFLL;
          }

          v21 = v20 == 0;
          if (v11 == v8 && v7 == v12)
          {
            if ((v15 & (v20 == 0)) == 0)
            {
              return result;
            }

LABEL_41:
            v22 = *(v28 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
            if (v22)
            {
              v23 = *(v22 + 24);
              if (v23)
              {
                v24 = *(v22 + 32);
                v25 = *(v22 + 40);
                v26 = v11 == *(v22 + 16) && v23 == v12;
                if (v26 || (result = sub_24F92CE08(), (result & 1) != 0))
                {
                  v27 = v24 == a3 && v25 == a4;
                  if (v27 || (result = sub_24F92CE08(), (result & 1) != 0))
                  {
                    *(v22 + 48) = 2;
                  }
                }
              }
            }

            return result;
          }
        }

        else
        {
          v21 = 1;
          if (v11 == v8 && v7 == v12)
          {
            if ((v15 & 1) == 0)
            {
              return result;
            }

            goto LABEL_41;
          }
        }

        result = sub_24F92CE08();
        if ((v15 & v21 & 1) == 0 || (result & 1) == 0)
        {
          return result;
        }

        goto LABEL_41;
      }
    }

    if (v11 != v8 || v7 != v12)
    {

      return sub_24F92CE08();
    }
  }

  else
  {
    v16 = *(v4 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
    if (v16)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0;

      return sub_24EAD7A40(v17, v18);
    }
  }

  return result;
}

uint64_t sub_24EEE52F8(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    v13 = 0;
    if ((v5 & 0x2000000000000000) != 0)
    {
LABEL_17:
      if ((v5 & 0xF00000000000000) == 0)
      {
        return result;
      }

LABEL_21:
      if ((v13 & 1) == 0)
      {
        return sub_24F9280C8();
      }

      return result;
    }

LABEL_20:
    if ((v4 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  v6 = result;
  result = *result;
  v7 = *(v6 + 32);
  if (v7)
  {
    v8 = *(v6 + 24);
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = a2[4];
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = a2[3] & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v10) & 0xF;
      }

      if (!v11)
      {
LABEL_25:
        if (v4 == v8 && v7 == v5)
        {
          v13 = 1;
          if (result == v8 && v3 == v7)
          {
            return result;
          }
        }

        else
        {
          v14 = v3;
          v15 = result;
          v13 = sub_24F92CE08();
          result = v15;
          if (v15 == v4 && v14 == v5)
          {
            return result;
          }
        }

LABEL_15:
        result = sub_24F92CE08();
        if (result)
        {
          return result;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }
  }

  if (result != v4 || v3 != v5)
  {
    v13 = 0;
    goto LABEL_15;
  }

  return result;
}

uint64_t SearchTextPresenter.deinit()
{
  sub_24E601704(v0 + 16, &qword_27F233268);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription, &qword_27F233270);

  sub_24EEE4930(*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot), *(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8));

  return v0;
}

uint64_t SearchTextPresenter.__deallocating_deinit()
{
  sub_24E601704(v0 + 16, &qword_27F233268);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_snapshotUpdateSubscription, &qword_27F233270);

  sub_24EEE4930(*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot), *(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchTextPresenter_lastSnapshot + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_24EEE55E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 16, a2, &qword_27F233268);
}

uint64_t type metadata accessor for SearchTextPresenter()
{
  result = qword_27F233278;
  if (!qword_27F233278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEE569C()
{
  sub_24EEE5788();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EEE5788()
{
  if (!qword_27F233288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233240);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F233288);
    }
  }
}

uint64_t sub_24EEE57FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_24F92CE08();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_24EEE585C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EEE58CC()
{
  result = qword_27F233298;
  if (!qword_27F233298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233298);
  }

  return result;
}

unint64_t sub_24EEE594C()
{
  result = qword_27F2332A0;
  if (!qword_27F2332A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332A0);
  }

  return result;
}

uint64_t TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, __int128 *a11)
{
  v19 = a10;
  v18 = a11;
  sub_24E94275C(a1, a9);
  sub_24E615E00(a2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221210);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    sub_24F9224C8();
    v20 = a5;
    v21 = a8;
    v22 = v34;
    v23 = v35;
    v24 = __swift_project_boxed_opaque_existential_1(v33, v34);
    *(&v38 + 1) = v22;
    v25 = *(v23 + 8);
    a8 = v21;
    a5 = v20;
    v39 = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
    v27 = v24;
    v18 = a11;
    v19 = a10;
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v27, v22);
    sub_24E601704(a1, &qword_27F229780);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (*(&v38 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(a2);
      sub_24E612C80(&v37, &v40);
      goto LABEL_7;
    }
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_24E601704(a1, &qword_27F229780);
    sub_24E601704(&v40, &unk_27F22B200);
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
  }

  sub_24E612C80(a2, &v40);
  if (*(&v38 + 1))
  {
    sub_24E601704(&v37, &qword_27F229780);
  }

LABEL_7:
  sub_24E612C80(&v40, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  v28 = *(a6 + 16);
  *(a9 + 200) = *a6;
  *(a9 + 216) = v28;
  *(a9 + 232) = *(a6 + 32);
  v29 = *(a7 + 16);
  *(a9 + 240) = *a7;
  *(a9 + 256) = v29;
  *(a9 + 272) = *(a7 + 32);
  sub_24E612C80(a8, a9 + 280);
  sub_24E612C80(v19, a9 + 320);
  return sub_24E612C80(v18, a9 + 360);
}

GameStoreKit::TitleHeaderLayout::ChildrenHorizontalAlignment_optional __swiftcall TitleHeaderLayout.ChildrenHorizontalAlignment.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24EEE5D20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  v14 = *a4;
  v15 = *a6;
  v16 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v16;
  *(a8 + 32) = *(a1 + 32);
  result = sub_24E612C80(a2, a8 + 40);
  *(a8 + 80) = a5;
  *(a8 + 88) = v15;
  *(a8 + 96) = v11;
  *(a8 + 104) = v12;
  *(a8 + 112) = v13;
  *(a8 + 113) = v14;
  *(a8 + 114) = a7;
  return result;
}

__n128 TitleHeaderLayout.accessoryVerticalAlignment.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[7].n128_u8[0];
  result = v1[6];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_24EEE5E30@<X0>(uint64_t a1@<X8>)
{
  sub_24E94275C(v1, &v4);
  if (!v5)
  {
    result = sub_24E601704(&v4, &qword_27F229780);
    goto LABEL_5;
  }

  sub_24E612C80(&v4, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (sub_24F922238())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_5:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  sub_24E615E00(v6, a1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

double sub_24EEE5EEC(void *a1)
{
  v22 = a1;
  v2 = sub_24F9225E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922618();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D22788], v2, v7);
  sub_24F9225F8();
  v10 = *(v1 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + 32;
    v13 = MEMORY[0x277D228E0];
    do
    {
      sub_24EEE9880(v12, v27);
      sub_24E615E00(v28, v23);
      v14 = sub_24F9229A8();
      v25 = v14;
      v26 = v13;
      __swift_allocate_boxed_opaque_existential_1(v24);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_24E615E00(v29, v23);
      v25 = v14;
      v26 = v13;
      __swift_allocate_boxed_opaque_existential_1(v24);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v24);
      sub_24E94275C(&v30, v24);
      if (v25)
      {
        sub_24E601704(v24, &qword_27F229780);
        v15 = [v22 traitCollection];
        v16 = sub_24F92BF98();

        if (v16)
        {
          sub_24E615E00(v28, v23);
          v25 = v14;
          v26 = v13;
          __swift_allocate_boxed_opaque_existential_1(v24);
          sub_24F9229B8();
          sub_24F922608();
          __swift_destroy_boxed_opaque_existential_1(v24);
          sub_24E615E00(v29, v23);
          v25 = v14;
          v26 = v13;
          __swift_allocate_boxed_opaque_existential_1(v24);
          sub_24F9229B8();
          sub_24F922608();
          sub_24EEE98B8(v27);
          __swift_destroy_boxed_opaque_existential_1(v24);
        }

        else
        {
          sub_24EEE98B8(v27);
        }
      }

      else
      {
        sub_24EEE98B8(v27);
        sub_24E601704(v24, &qword_27F229780);
      }

      v12 += 400;
      --v11;
    }

    while (v11);
  }

  sub_24F9225D8();
  v18 = v17;
  (*(v20 + 8))(v9, v21);
  return v18;
}

double TitleHeaderLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 0.0)
  {
    return sub_24EEE5EEC(a1);
  }

  sub_24EEE5E30(&v21);
  if (v22)
  {
    sub_24E612C80(&v21, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_24F922288();
    v13 = v12;
    __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
    sub_24E8ED7D8();
    sub_24F9223A8();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v16 = [a1 traitCollection];
    v17 = v16;
    if (*(v4 + 114) == 1)
    {
      v18 = sub_24F92BF98();

      if (v18)
      {
        sub_24EEE6548(a1, a2, a3, a2, a3);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1(v23);
        return a2;
      }
    }

    else
    {
    }

    if (*(v4 + 112))
    {
      v19 = a2 - (v13 + v15);
    }

    else
    {
      v19 = a2 - (v13 + v15) - *(v4 + 96);
    }

    sub_24EEE6548(a1, a2, a3, v19, 1.79769313e308);
    goto LABEL_13;
  }

  sub_24E601704(&v21, &qword_27F229780);
  sub_24EEE6548(a1, a2, a3, a2, a3);
  return a2;
}

void sub_24EEE6548(void *a1, double a2, double a3, double a4, double a5)
{
  v144 = a5;
  v136 = a2;
  v137 = a3;
  v8 = sub_24F92CDB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F9229F8();
  MEMORY[0x28223BE20](v12);
  v129 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v119 - v15;
  MEMORY[0x28223BE20](v17);
  v138 = &v119 - v19;
  v148 = v5;
  v20 = *(v5 + 80);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return;
  }

  v125 = v11;
  v126 = v8;
  v22 = 0;
  v23 = 0;
  v142 = (&v163[16] + 8);
  v146 = (v18 + 8);
  v24 = *MEMORY[0x277D22A78];
  v134 = *(MEMORY[0x277D22A78] + 8);
  v135 = v24;
  v128 = (v9 + 8);
  v25 = v20 + 32;
  v123 = v21 - 1;
  v124 = v20 + 32;
  v26 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v145 = a1;
  v143 = v16;
  v140 = v21;
  v141 = v20;
  do
  {
    v130 = v29;
    v131 = v26;
    LODWORD(v127) = v23;
    v132 = v27;
    v133 = v28;
    for (i = v25 + 400 * v22; ; i += 400)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        return;
      }

      *&v163[0] = v22;
      sub_24EEE9880(i, v163 + 8);
      if (!*(&v163[4] + 1))
      {
        return;
      }

      v31 = v12;
      v32 = *&v163[0];
      v33 = *v142;
      v34 = v142[1];
      v35 = v142[2];
      v36 = v142[3];
      v37 = v142[4];
      v38 = v142[5];
      v39 = v142[6];
      v40 = v142[7];
      v41 = v142[8];
      v163[0] = *(v163 + 8);
      v163[1] = *(&v163[1] + 8);
      v163[2] = *(&v163[2] + 8);
      v163[3] = *(&v163[3] + 8);
      v163[4] = *(&v163[4] + 8);
      v163[5] = *(&v163[5] + 8);
      v163[6] = *(&v163[6] + 8);
      v163[7] = *(&v163[7] + 8);
      v163[8] = *(&v163[8] + 8);
      v163[9] = *(&v163[9] + 8);
      v163[10] = *(&v163[10] + 8);
      v163[11] = *(&v163[11] + 8);
      v163[12] = *(&v163[12] + 8);
      v163[13] = *(&v163[13] + 8);
      v163[14] = *(&v163[14] + 8);
      v163[15] = *(&v163[15] + 8);
      v163[16] = v33;
      v164[0] = v34;
      v164[1] = v35;
      v165 = v36;
      v166[0] = v37;
      v166[1] = v38;
      v167[0] = v39;
      v167[1] = v40;
      v167[2] = v41;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_80;
      }

      v42 = a4;
      if (*(v148 + 112) == 1)
      {
        v44 = *(v148 + 96);
        v43 = *(v148 + 104);
        if (v44 <= 1)
        {
          if (v44 | v43)
          {
LABEL_17:
            if (v32 + 1 == *(v20 + 16))
            {
              v42 = a4;
            }

            else
            {
              v42 = v136;
            }

            goto LABEL_20;
          }

LABEL_14:
          if (v32)
          {
            v42 = v136;
          }

          else
          {
            v42 = a4;
          }

          goto LABEL_20;
        }

        if (!(v44 ^ 2 | v43))
        {
          goto LABEL_17;
        }

        v42 = v136;
        if (!(v44 ^ 3 | v43))
        {
          goto LABEL_14;
        }
      }

LABEL_20:
      v147 = v22;
      sub_24E94275C(v163, &v157);
      if (v158)
      {
        sub_24E612C80(&v157, v160);
        v46 = v161;
        v45 = v162;
        v47 = __swift_project_boxed_opaque_existential_1(v160, v161);
        v158 = v46;
        v159 = *(v45 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
        v49 = v47;
        a1 = v145;
        (*(*(v46 - 8) + 16))(boxed_opaque_existential_1, v49, v46);
        v156 = MEMORY[0x277D22A30];
        v155 = MEMORY[0x277D839F8];
        v153 = MEMORY[0x277D22A30];
        *&v154 = 0;
        v152 = MEMORY[0x277D839F8];
        *&v151 = 0;
        v50 = v138;
        sub_24F9229E8();
        sub_24F922288();
        v52 = v51;
        v54 = v53;
        (*v146)(v50, v31);
        __swift_destroy_boxed_opaque_existential_1(v160);
      }

      else
      {
        sub_24E601704(&v157, &qword_27F229780);
        v54 = v134;
        v52 = v135;
      }

      v55 = [a1 traitCollection];
      v56 = v55;
      v139 = *(v148 + 114);
      if (v139 != 1)
      {

LABEL_29:
        sub_24E615E00(&v163[7] + 8, v160);
        goto LABEL_30;
      }

      v57 = sub_24F92BF98();

      if (v57 & 1) == 0 || v32 || (*(v148 + 112))
      {
        goto LABEL_29;
      }

      v161 = sub_24F922418();
      v162 = MEMORY[0x277D226F0];
      __swift_allocate_boxed_opaque_existential_1(v160);
      sub_24F922408();
LABEL_30:
      v58 = v163[4];
      v59 = __swift_project_boxed_opaque_existential_1(&v163[2] + 1, *&v163[4]);
      v158 = v58;
      v159 = *(*(&v58 + 1) + 8);
      v60 = __swift_allocate_boxed_opaque_existential_1(&v157);
      (*(*(v58 - 8) + 16))(v60, v59, v58);
      sub_24E615E00(v160, &v154);
      sub_24E615E00(&v163[10], &v151);
      v61 = v143;
      sub_24F9229E8();
      a1 = v145;
      v12 = v31;
      sub_24F922288();
      v66 = v65;
      v67 = v62;
      if (fabs(v65) >= COERCE_DOUBLE(1) && fabs(v62) >= COERCE_DOUBLE(1))
      {
        break;
      }

      v22 = v147 + 1;
      (*v146)(v61, v31);
      __swift_destroy_boxed_opaque_existential_1(v160);
      sub_24EEE98B8(v163);
      v20 = v141;
      if (v140 == v22)
      {
        return;
      }
    }

    v68 = v64;
    v69 = v133;
    if ((LOBYTE(v127) & 1) == 0)
    {
      v69 = v63;
    }

    v133 = v69;
    sub_24E94275C(&v163[12] + 8, &v154);
    if (v155)
    {
      sub_24E612C80(&v154, &v157);
      v70 = v158;
      v71 = v159;
      v72 = __swift_project_boxed_opaque_existential_1(&v157, v158);
      v155 = v70;
      v156 = *(v71 + 8);
      v73 = __swift_allocate_boxed_opaque_existential_1(&v154);
      (*(*(v70 - 8) + 16))(v73, v72, v70);
      sub_24E615E00(v166, &v151);
      sub_24E615E00(v167 + 8, v150);
      sub_24F9229E8();
      sub_24F922288();
      v122 = v74;
      v127 = v75;
      v130 = v76;
      sub_24E94275C(&v163[15], &v151);
      if (v152)
      {
        sub_24E612C80(&v151, &v154);
        v77 = v155;
        v78 = v156;
        v79 = __swift_project_boxed_opaque_existential_1(&v154, v155);
        v152 = v77;
        v153 = *(v78 + 8);
        v80 = __swift_allocate_boxed_opaque_existential_1(&v151);
        (*(*(v77 - 8) + 16))(v80, v79, v77);
        sub_24E615E00(&v163[7] + 8, v150);
        sub_24E615E00(&v163[10], &v149);
        v81 = v138;
        sub_24F9229E8();
        sub_24F922288();
        v121 = v82;
        (*v146)(v81, v31);
        __swift_destroy_boxed_opaque_existential_1(&v154);
      }

      else
      {
        sub_24E601704(&v151, &qword_27F229780);
        v121 = v135;
      }

      __swift_project_boxed_opaque_existential_1(v164 + 1, v165);
      v85 = v125;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v87 = v86;
      v88 = *v128;
      v89 = v126;
      (*v128)(v85, v126);
      v90 = v66 + v87;
      sub_24E94275C(v163, &v154);
      v91 = v155;
      sub_24E601704(&v154, &qword_27F229780);
      v120 = v88;
      if (v91)
      {
        v119 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1(&v163[5], *(&v163[6] + 1)));
        sub_24E8ED7D8();
        sub_24F9223A8();
        v119 = v92;
        v88(v85, v89);
        v90 = v90 + v52 + v119;
      }

      v93 = v42 - v90;
      sub_24E94275C(&v163[15], &v154);
      v94 = v155;
      if (v155)
      {
        __swift_project_boxed_opaque_existential_1(&v154, v155);
        v94 = sub_24F9221E8();
        __swift_destroy_boxed_opaque_existential_1(&v154);
        v95 = v121;
        v96 = v94 & (v121 <= v93);
      }

      else
      {
        sub_24E601704(&v154, &qword_27F229780);
        v96 = 0;
      }

      v97 = v122;
      v98 = [a1 traitCollection];
      v99 = sub_24F92BF98();

      if (v97 <= v93 || ((v99 | v94) & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v164 + 1, v165);
        v100 = v125;
        sub_24E8ED7D8();
        sub_24F9223A8();
        v102 = v101;
        v120(v100, v126);
        (*v146)(v129, v31);
        v84 = v97 + v102;
        goto LABEL_53;
      }

      if (v96)
      {
        goto LABEL_52;
      }

      if (v99)
      {
        (*v146)(v129, v31);
        v83 = 0;
        v67 = v67 - v68;
        goto LABEL_76;
      }

      sub_24E94275C(&v163[15], &v154);
      if (v155)
      {
        sub_24E601704(&v154, &qword_27F229780);
LABEL_52:
        __swift_project_boxed_opaque_existential_1(v164 + 1, v165);
        v103 = v125;
        sub_24E8ED7D8();
        sub_24F9223A8();
        v105 = v104;
        v120(v103, v126);
        (*v146)(v129, v31);
        v84 = v121 + v105;
LABEL_53:
        v83 = 1;
        v130 = 0.0;
        v127 = 0.0;
      }

      else
      {
        (*v146)(v129, v31);
        sub_24E601704(&v154, &qword_27F229780);
        v83 = 1;
        v130 = 0.0;
        v127 = 0.0;
LABEL_76:
        v84 = 0.0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v157);
      v61 = v143;
    }

    else
    {
      sub_24E601704(&v154, &qword_27F229780);
      v83 = 1;
      v130 = 0.0;
      v127 = 0.0;
      v84 = 0.0;
    }

    v106 = [a1 traitCollection];
    v107 = v106;
    if (v139)
    {
      v108 = sub_24F92BF98();

      if (v108)
      {
        v109 = v131;
        if (v131 <= v66)
        {
          v109 = v66;
        }

        if (v109 > v52 + v84)
        {
          v110 = v109;
        }

        else
        {
          v110 = v52 + v84;
        }

        (*v146)(v61, v31);
        __swift_destroy_boxed_opaque_existential_1(v160);
        v111 = v54 + v67;
        goto LABEL_70;
      }
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(&v163[5], *(&v163[6] + 1));
    v112 = v125;
    sub_24E8ED7D8();
    sub_24F9223A8();
    v114 = v113;
    (*v128)(v112, v126);
    (*v146)(v61, v31);
    v115 = v84 + v66 + v52 + v114;
    v110 = v131;
    if (v131 <= v115)
    {
      v110 = v115;
    }

    if (v54 > v67)
    {
      v111 = v54;
    }

    else
    {
      v111 = v67;
    }

    __swift_destroy_boxed_opaque_existential_1(v160);
LABEL_70:
    v20 = v141;
    v25 = v124;
    v116 = v147;
    v22 = v147 + 1;
    v117 = v132 + v127 + v111;
    if (v83)
    {
      v118 = v68;
    }

    else
    {
      v118 = v130;
    }

    sub_24EEE98B8(v163);
    v29 = v118;
    v27 = v117;
    v23 = 1;
    v26 = v110;
    v28 = v133;
  }

  while (v123 != v116);
}

double sub_24EEE7348(void *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v17 = sub_24F92CDB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v9 + 40), *(v9 + 64));
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v18 + 8))(v20, v17);
  v21 = [a1 traitCollection];
  v22 = v21;
  if (*(v10 + 114) != 1)
  {

    goto LABEL_5;
  }

  v23 = sub_24F92BF98();

  if ((v23 & 1) == 0)
  {
LABEL_5:
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    MinX = CGRectGetMinX(v31);
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMinY(v32);
    v33.origin.x = a6;
    v33.origin.y = a7;
    v33.size.width = a8;
    v33.size.height = a9;
    CGRectGetWidth(v33);
    v34.origin.x = a6;
    v34.origin.y = a7;
    v34.size.width = a8;
    v34.size.height = a9;
    CGRectGetHeight(v34);
    return MinX;
  }

  v27.origin.x = a6;
  v27.origin.y = a7;
  v27.size.width = a8;
  v27.size.height = a9;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = a6;
  v28.origin.y = a7;
  v28.size.width = a8;
  v28.size.height = a9;
  CGRectGetMinY(v28);
  *&v26[1] = a3;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetWidth(v29);
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetHeight(v30);
  return MinX;
}

uint64_t sub_24EEE75B4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10)
{
  v159 = a8;
  v160 = a9;
  v158 = a7;
  *&v138[1] = a6;
  v151 = sub_24F922C28();
  v23 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_24F9221D8();
  v25 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v139 = v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v145 = v138 - v28;
  MEMORY[0x28223BE20](v29);
  v148 = v138 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = v138 - v32;
  MEMORY[0x28223BE20](v34);
  v149 = v138 - v35;
  v156 = sub_24F92CDB8();
  v36 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a2;
  v144 = a3;
  v193.origin.x = a2;
  v193.origin.y = a3;
  v193.size.width = a4;
  v193.size.height = a5;
  MinY = CGRectGetMinY(v193);
  v177 = v17;
  v38 = *(*(v17 + 80) + 16);

  if (!v38)
  {
    v44 = MEMORY[0x277D84F90];
LABEL_74:

    return v44;
  }

  v40 = 0.0;
  v157 = a10;
  v152 = (&v186[16] + 8);
  v41 = result + 32;
  v154 = (v36 + 8);
  v42 = *(MEMORY[0x277D22A78] + 8);
  v146 = *MEMORY[0x277D22A78];
  v43 = *(MEMORY[0x277D22A78] + 24);
  v141 = *(MEMORY[0x277D22A78] + 16);
  v142 = v42;
  v140 = v43;
  v164 = (v25 + 8);
  v147 = (v23 + 8);
  v44 = MEMORY[0x277D84F90];
  v163 = a5;
  v166 = a4;
  v153 = result;
  while (*&v40 < v38)
  {
    *v186 = v40;
    v170 = v41;
    result = sub_24EEE9880(v41, v186 + 8);
    if (!*(&v186[4] + 1))
    {
      goto LABEL_74;
    }

    v45 = *&v186[0];
    v46 = *v152;
    v47 = v152[1];
    v48 = v152[2];
    v49 = v152[3];
    v50 = v152[4];
    v51 = v152[5];
    v52 = v152[6];
    v53 = v152[7];
    v54 = v152[8];
    v186[0] = *(v186 + 8);
    v186[1] = *(&v186[1] + 8);
    v186[2] = *(&v186[2] + 8);
    v186[3] = *(&v186[3] + 8);
    v186[4] = *(&v186[4] + 8);
    v186[5] = *(&v186[5] + 8);
    v186[6] = *(&v186[6] + 8);
    v186[7] = *(&v186[7] + 8);
    v186[8] = *(&v186[8] + 8);
    v186[9] = *(&v186[9] + 8);
    v186[10] = *(&v186[10] + 8);
    v186[11] = *(&v186[11] + 8);
    v186[12] = *(&v186[12] + 8);
    v186[13] = *(&v186[13] + 8);
    v186[14] = *(&v186[14] + 8);
    v186[15] = *(&v186[15] + 8);
    v186[16] = v46;
    v187[0] = v47;
    v187[1] = v48;
    v188 = v49;
    v189 = v50;
    v190 = v51;
    v191[0] = v52;
    v191[1] = v53;
    v192 = v54;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_76;
    }

    v55 = v158;
    v56 = v159;
    v57 = v160;
    v58 = v157;
    if (*(v177 + 112) == 1)
    {
      v59 = *(v177 + 96);
      v60 = *(v177 + 104);
      if (v59 <= 1)
      {
        if (!(v59 | v60))
        {
          goto LABEL_14;
        }
      }

      else if (v59 ^ 2 | v60)
      {
        if (!(v59 ^ 3 | v60))
        {
LABEL_14:
          v55 = v158;
          v56 = v159;
          v57 = v160;
          v58 = v157;
          if (!v45)
          {
            goto LABEL_16;
          }
        }

LABEL_15:
        v55 = v143;
        v56 = v144;
        v57 = a4;
        v58 = a5;
        goto LABEL_16;
      }

      v55 = v158;
      v56 = v159;
      v57 = v160;
      v58 = v157;
      if (v45 + 1 != v38)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v169 = v44;
    sub_24E94275C(v186, &v182);
    if (v183)
    {
      sub_24E612C80(&v182, v184);
      __swift_project_boxed_opaque_existential_1(v184, v185);
      sub_24F922288();
      v173 = v61;
      v161 = v63;
      v162 = v62;
      __swift_project_boxed_opaque_existential_1(&v186[5], *(&v186[6] + 1));
      v64 = v155;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v176 = v65;
      (*v154)(v64, v156);
      __swift_destroy_boxed_opaque_existential_1(v184);
    }

    else
    {
      sub_24E601704(&v182, &qword_27F229780);
      v176 = 0.0;
      v173 = v142;
      v161 = v140;
      v162 = v141;
    }

    v194.origin.x = v55;
    v194.origin.y = v56;
    v194.size.width = v57;
    v194.size.height = v58;
    CGRectGetMinX(v194);
    v195.origin.x = v55;
    v195.origin.y = v56;
    v195.size.width = v57;
    v195.size.height = v58;
    CGRectGetMinY(v195);
    v196.origin.x = v55;
    v196.origin.y = v56;
    v196.size.width = v57;
    v196.size.height = v58;
    CGRectGetWidth(v196);
    v197.origin.x = v55;
    v197.origin.y = v56;
    v197.size.width = v57;
    v197.size.height = v58;
    CGRectGetHeight(v197);
    v66 = [a1 traitCollection];
    v67 = v66;
    v68 = *(v177 + 114);
    if (v68 == 1)
    {
      v69 = sub_24F92BF98();

      if (v69)
      {
        v198.origin.x = v55;
        v198.origin.y = v56;
        v198.size.width = v57;
        v198.size.height = v58;
        CGRectGetMinX(v198);
        v199.origin.x = v55;
        v199.origin.y = v56;
        v199.size.width = v57;
        v199.size.height = v58;
        CGRectGetMinY(v199);
        v200.origin.x = v55;
        v200.origin.y = v56;
        v200.size.width = v57;
        v200.size.height = v58;
        CGRectGetWidth(v200);
        v201.origin.x = v55;
        v201.origin.y = v56;
        v201.size.width = v57;
        v201.size.height = v58;
        CGRectGetHeight(v201);
      }
    }

    else
    {
    }

    v179 = v55;
    __swift_project_boxed_opaque_existential_1(&v186[2] + 1, *&v186[4]);
    sub_24F922288();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    __swift_project_boxed_opaque_existential_1(&v186[7] + 1, *&v186[9]);
    v174 = v73;
    v175 = v75;
    v167 = v77;
    sub_24F9223C8();
    v78 = *(v177 + 88);
    v79 = [a1 traitCollection];
    v80 = v79;
    v178 = v56;
    v168 = v71;
    if (v68)
    {
      v81 = sub_24F92BF98();

      if (v78)
      {
        if (v81)
        {
          v202.origin.y = v178;
          v82 = v179;
          v202.origin.x = v179;
          v202.size.width = v57;
          v202.size.height = v58;
          floor(CGRectGetMinX(v202));
          v203.origin.x = v82;
          v203.origin.y = v178;
          v203.size.width = v57;
          v203.size.height = v58;
          CGRectGetWidth(v203);
          v204.origin.x = v82;
          v204.origin.y = v178;
          v204.size.width = v57;
          v204.size.height = v58;
          floor(CGRectGetMinX(v204));
          v205.origin.x = v82;
          v205.origin.y = v178;
          v205.size.width = v57;
          v205.size.height = v58;
          CGRectGetWidth(v205);
          goto LABEL_32;
        }

LABEL_28:
        v83 = v179;
        v206.origin.x = v179;
        v206.origin.y = v56;
        v206.size.width = v57;
        v206.size.height = v58;
        floor(CGRectGetMinX(v206));
        v207.origin.x = v83;
        v207.origin.y = v56;
        v207.size.width = v57;
        v207.size.height = v58;
        CGRectGetWidth(v207);
        goto LABEL_32;
      }

      if (v81)
      {
        v208.origin.x = v179;
        v208.origin.y = v56;
        v208.size.width = v57;
        v208.size.height = v58;
        CGRectGetMinX(v208);
        v209.origin.x = v179;
        v209.origin.y = v56;
        v209.size.width = v57;
        v209.size.height = v58;
        CGRectGetMinX(v209);
        goto LABEL_32;
      }
    }

    else
    {

      if (v78)
      {
        goto LABEL_28;
      }
    }

    v210.origin.y = v178;
    v84 = v179;
    v210.origin.x = v179;
    v210.size.width = v57;
    v210.size.height = v58;
    CGRectGetMinX(v210);
    v211.origin.x = v84;
    v211.origin.y = v178;
    v211.size.width = v57;
    v211.size.height = v58;
    CGRectGetMinX(v211);
LABEL_32:
    v172 = v58;
    v176 = v57;
    sub_24E94275C(v186, &v182);
    if (v183)
    {
      sub_24E612C80(&v182, v184);
      v85 = v149;
      sub_24F922138();
      __swift_project_boxed_opaque_existential_1(v184, v185);
      sub_24F9221A8();
      sub_24F922158();
      sub_24F92C1D8();
      sub_24F922228();
      (*v164)(v85, v165);
      __swift_destroy_boxed_opaque_existential_1(v184);
    }

    else
    {
      sub_24E601704(&v182, &qword_27F229780);
    }

    sub_24F922138();
    __swift_project_boxed_opaque_existential_1(&v186[2] + 1, *&v186[4]);
    sub_24F9221A8();
    sub_24F922158();
    v86 = v176;
    sub_24F92C1D8();
    sub_24F922228();
    sub_24F9221A8();
    v88 = v87;
    sub_24F922158();
    v90 = v89;
    __swift_project_boxed_opaque_existential_1(&v186[10], *(&v186[11] + 1));
    sub_24F922398();
    v92 = v91;
    __swift_project_boxed_opaque_existential_1(&v186[2] + 1, *&v186[4]);
    sub_24F922218();
    v93 = CGRectGetMinY(v212);
    v44 = v169;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_24E617EB4(0, *(v44 + 2) + 1, 1, v44);
    }

    v95 = *(v44 + 2);
    v94 = *(v44 + 3);
    a5 = v163;
    if (v95 >= v94 >> 1)
    {
      v44 = sub_24E617EB4((v94 > 1), v95 + 1, 1, v44);
    }

    MinY = v88 + v90 + v92;
    v96 = v175 + v93;
    *(v44 + 2) = v95 + 1;
    *&v44[8 * v95 + 32] = v96;
    sub_24E94275C(&v186[12] + 8, &v182);
    if (v183)
    {
      sub_24E612C80(&v182, v184);
      __swift_project_boxed_opaque_existential_1(v184, v185);
      sub_24F922288();
      v98 = v97;
      __swift_project_boxed_opaque_existential_1(v187 + 1, v188);
      v99 = v155;
      sub_24E8ED7D8();
      sub_24F9223A8();
      v101 = v100;
      (*v154)(v99, v156);
      sub_24E94275C(&v186[15], &v180);
      if (v181)
      {
        sub_24E612C80(&v180, &v182);
        __swift_project_boxed_opaque_existential_1(&v182, v183);
        sub_24F922288();
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_1(&v182);
      }

      else
      {
        sub_24E601704(&v180, &qword_27F229780);
        v103 = v146;
      }

      v175 = v40;
      sub_24F9221A8();
      v105 = v104;
      sub_24F922158();
      v107 = v86 - (v105 + v106) - v101;
      sub_24E94275C(&v186[15], &v182);
      v108 = v44;
      if (v183)
      {
        __swift_project_boxed_opaque_existential_1(&v182, v183);
        v109 = sub_24F9221E8();
        __swift_destroy_boxed_opaque_existential_1(&v182);
        v110 = v109 & (v103 <= v107);
      }

      else
      {
        sub_24E601704(&v182, &qword_27F229780);
        v110 = 0;
        v109 = 0;
      }

      v111 = [a1 traitCollection];
      v112 = sub_24F92BF98();

      sub_24F9221A8();
      sub_24F922158();
      sub_24F9221A8();
      v113 = v150;
      sub_24F9221C8();
      sub_24F922BE8();
      (*v147)(v113, v151);
      if (v98 > v107 && ((v112 | v109) & 1) != 0)
      {
        a4 = v166;
        v44 = v108;
        v40 = v175;
        v114 = v179;
        if (v110)
        {
          goto LABEL_59;
        }

        if (v112)
        {
          v116 = v143;
          v115 = v144;
          v213.origin.x = v143;
          v213.origin.y = v144;
          v213.size.width = v166;
          v213.size.height = a5;
          CGRectGetWidth(v213);
          sub_24F9221A8();
          v214.origin.x = v116;
          v214.origin.y = v115;
          v214.size.width = a4;
          v214.size.height = a5;
          CGRectGetHeight(v214);
          __swift_project_boxed_opaque_existential_1(v184, v185);
          sub_24F922288();
          v118 = v117;
          sub_24F9221A8();
          __swift_project_boxed_opaque_existential_1(&v189, *(&v190 + 1));
          sub_24F9223C8();
          v174 = v118;
          sub_24F922138();
          __swift_project_boxed_opaque_existential_1(v184, v185);
          sub_24F9221A8();
          sub_24F922158();
          sub_24F92C1D8();
          sub_24F922228();
          sub_24E94275C(&v186[15], &v182);
          if (v183)
          {
            __swift_project_boxed_opaque_existential_1(&v182, v183);
            sub_24F922248();
            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            sub_24E601704(&v182, &qword_27F229780);
          }

          __swift_project_boxed_opaque_existential_1(v184, v185);
          sub_24F922248();
          sub_24F9221A8();
          v124 = v123;
          sub_24F922158();
          v126 = v125;
          __swift_project_boxed_opaque_existential_1(v191 + 1, v192);
          v127 = v174;
          sub_24F922398();
          v129 = v128;
          __swift_project_boxed_opaque_existential_1(v184, v185);
          sub_24F922218();
          v130 = CGRectGetMinY(v217);
          v132 = *(v44 + 2);
          v131 = *(v44 + 3);
          *&v179 = v132 + 1;
          if (v132 >= v131 >> 1)
          {
            v136 = v130;
            v137 = sub_24E617EB4((v131 > 1), v132 + 1, 1, v44);
            v130 = v136;
            a4 = v166;
            v44 = v137;
          }

          a5 = v163;
          MinY = v124 + v126 + v129;
          v133 = v127 + v130;
          v134 = v165;
          v135 = *v164;
          (*v164)(v139, v165);
          v135(v33, v134);
          *(v44 + 2) = v179;
          *&v44[8 * v132 + 32] = v133;
          goto LABEL_67;
        }

        sub_24E94275C(&v186[15], &v182);
        v121 = v183;
        sub_24E601704(&v182, &qword_27F229780);
        if (v121)
        {
LABEL_59:
          v216.origin.x = v114;
          v216.origin.y = v178;
          v216.size.width = v176;
          v216.size.height = v172;
          CGRectGetHeight(v216);
          __swift_project_boxed_opaque_existential_1(v184, v185);
          sub_24F922288();
          sub_24F922138();
          sub_24E94275C(&v186[15], &v182);
          if (v183)
          {
            __swift_project_boxed_opaque_existential_1(&v182, v183);
            sub_24F9221A8();
            sub_24F922158();
            sub_24F92C1D8();
            sub_24F922228();
            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            sub_24E601704(&v182, &qword_27F229780);
          }

          sub_24E94275C(&v186[15], &v182);
          a5 = v163;
          a4 = v166;
          if (v183)
          {
            __swift_project_boxed_opaque_existential_1(&v182, v183);
            sub_24F922248();
            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            sub_24E601704(&v182, &qword_27F229780);
          }

          __swift_project_boxed_opaque_existential_1(v184, v185);
          sub_24F922248();
          v119 = *v164;
          v120 = v145;
          goto LABEL_66;
        }

        (*v164)(v33, v165);
      }

      else
      {
        v215.origin.x = v179;
        v215.origin.y = v178;
        v215.size.width = v176;
        v215.size.height = v172;
        CGRectGetHeight(v215);
        __swift_project_boxed_opaque_existential_1(v184, v185);
        sub_24F922288();
        sub_24F922138();
        __swift_project_boxed_opaque_existential_1(v184, v185);
        sub_24F9221A8();
        sub_24F922158();
        sub_24F92C1D8();
        sub_24F922228();
        sub_24E94275C(&v186[15], &v182);
        a4 = v166;
        v44 = v108;
        if (v183)
        {
          __swift_project_boxed_opaque_existential_1(&v182, v183);
          sub_24F922248();
          __swift_destroy_boxed_opaque_existential_1(&v182);
        }

        else
        {
          sub_24E601704(&v182, &qword_27F229780);
        }

        v40 = v175;
        a5 = v163;
        __swift_project_boxed_opaque_existential_1(v184, v185);
        sub_24F922248();
        v119 = *v164;
        v120 = v148;
LABEL_66:
        v122 = v165;
        v119(v120, v165);
        v119(v33, v122);
      }

LABEL_67:
      __swift_destroy_boxed_opaque_existential_1(v184);
      goto LABEL_4;
    }

    (*v164)(v33, v165);
    sub_24E601704(&v182, &qword_27F229780);
    a4 = v166;
LABEL_4:
    ++*&v40;
    sub_24EEE98B8(v186);
    result = v153;
    v38 = *(v153 + 16);
    v41 = v170 + 400;
    if (*&v40 == v38)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void sub_24EEE8ABC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C(v5, &v45);
  if (!v46)
  {
    sub_24E601704(&v45, &qword_27F229780);
    return;
  }

  sub_24E612C80(&v45, v50);
  if (*(v5 + 112) == 1)
  {
    v16 = [a1 traitCollection];
    v17 = v16;
    if (*(v6 + 114) == 1)
    {
      v18 = sub_24F92BF98();

      if (v18)
      {
        __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
        sub_24E8ED7D8();
        sub_24F9223A8();
        (*(v13 + 8))(v15, v12);
        v51.origin.x = a2;
        v51.origin.y = a3;
        v51.size.width = a4;
        v51.size.height = a5;
        CGRectGetMinX(v51);
        v52.origin.x = a2;
        v52.origin.y = a3;
        v52.size.width = a4;
        v52.size.height = a5;
        CGRectGetMaxY(v52);
        sub_24F92C1D8();
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  if (*(v6 + 113))
  {
    if ((*(v6 + 112) & 1) == 0)
    {
      v19 = [a1 traitCollection];
      v20 = sub_24F92BF88();

      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      if (v20)
      {
        CGRectGetMinX(*&v21);
        v25 = *(v6 + 96);
        v26 = *(v6 + 104);
        if (*(v6 + 112) != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        CGRectGetMaxX(*&v21);
        v25 = *(v6 + 96);
        v26 = *(v6 + 104);
        if ((*(v6 + 112) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v40 = v25;
      goto LABEL_25;
    }
  }

  else
  {
    v27 = *(v6 + 80);
    if (*(v27 + 16))
    {
      sub_24E615E00(v27 + 72, &v45);
      __swift_project_boxed_opaque_existential_1((v6 + 40), *(v6 + 64));
      sub_24E8ED7D8();
      sub_24F9223A8();
      (*(v13 + 8))(v15, v12);
      v28 = [a1 traitCollection];
      v29 = sub_24F92BF88();

      __swift_project_boxed_opaque_existential_1(&v45, v46);
      sub_24F922218();
      if (v29)
      {
        CGRectGetMinX(*&v30);
      }

      else
      {
        CGRectGetMaxX(*&v30);
      }

      __swift_destroy_boxed_opaque_existential_1(&v45);
      goto LABEL_21;
    }
  }

  v34 = [a1 traitCollection];
  v35 = sub_24F92BF88();

  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  if (v35)
  {
    CGRectGetMinX(*&v36);
  }

  else
  {
    CGRectGetMaxX(*&v36);
  }

LABEL_21:
  v26 = *(v6 + 104);
  if (*(v6 + 112) != 1)
  {
    goto LABEL_27;
  }

  v40 = *(v6 + 96);
LABEL_25:
  if (v40 <= 2)
  {
    if (__PAIR128__(v26, v40) >= 2)
    {
      v42 = *(v6 + 80);
      v43 = *(v42 + 16);
      if (v43)
      {
        sub_24E615E00(v42 + 400 * v43 - 328, &v45);
        __swift_project_boxed_opaque_existential_1(&v45, v46);
        sub_24F922218();
        CGRectGetMidY(v54);
        __swift_destroy_boxed_opaque_existential_1(&v45);
      }
    }

    goto LABEL_27;
  }

  if (!(v40 ^ 3 | v26))
  {
    v41 = *(v6 + 80);
    if (*(v41 + 16))
    {
      sub_24EEE9880(v41 + 32, &v45);
      __swift_project_boxed_opaque_existential_1(v47, v48);
      if (sub_24F9221E8())
      {
        __swift_project_boxed_opaque_existential_1(v47, v48);
        sub_24F922218();
        CGRectGetMidY(v53);
      }

      else
      {
        v58.origin.x = a2;
        v58.origin.y = a3;
        v58.size.width = a4;
        v58.size.height = a5;
        CGRectGetMidY(v58);
      }

      sub_24EEE98B8(&v45);
    }

    goto LABEL_27;
  }

  v44 = *(v6 + 80);
  if (*(v44 + 16) != 2)
  {
LABEL_27:
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  sub_24E615E00(v44 + 472, &v45);
  __swift_project_boxed_opaque_existential_1(&v45, v46);
  sub_24F922218();
  CGRectGetMaxY(v55);
  if (*(v44 + 16))
  {
    sub_24E615E00(v44 + 72, v49);
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_24F922218();
    CGRectGetMinY(v56);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(&v45);
    if (*(v44 + 16))
    {
      sub_24E615E00(v44 + 72, &v45);
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      sub_24F922218();
      CGRectGetMinY(v57);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t TitleHeaderLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_24F922C28();
  MEMORY[0x28223BE20](v12 - 8);
  sub_24EEE5E30(&v29);
  if (v30)
  {
    sub_24E612C80(&v29, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_24F922288();
    v14 = v13;
    v15 = a2;
    sub_24EEE7348(a1, v16, v13, v17, v18, a2, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v14 = *(MEMORY[0x277D22A78] + 8);
    sub_24E601704(&v29, &qword_27F229780);
    v15 = a2;
  }

  sub_24F92C1D8();
  v23 = v22;
  v24 = *(v5 + 104);
  if (*(v5 + 112))
  {
    v24 = 0.0;
  }

  v25 = sub_24EEE75B4(a1, v15, a3, a4, a5, v14 + v24, v23, v19, v20, v21);
  sub_24EEE8ABC(a1, v15, a3, a4, a5);
  sub_24ED6EC84(v25);
  v26 = [a1 traitCollection];
  v27 = v26;
  if (*(v6 + 114) == 1)
  {
    sub_24F92BF98();
  }

  else
  {
  }

  sub_24ED78F74(v25);

  sub_24F922C08();
  return sub_24F922188();
}

BOOL _s12GameStoreKit17TitleHeaderLayoutV26AccessoryVerticalAlignmentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v3 <= 1uLL)
    {
      if (*&v3 | *&v2)
      {
        if (*(a2 + 16) && !(*&v5 ^ 1 | *&v4))
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 | *&v4))
      {
        return 1;
      }
    }

    else if (*&v3 ^ 2 | *&v2)
    {
      if (*&v3 ^ 3 | *&v2)
      {
        if (*(a2 + 16) && __PAIR128__(*&v4, *&v5) >= 4)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 3 | *&v4))
      {
        return 1;
      }
    }

    else if (*(a2 + 16) && !(*&v5 ^ 2 | *&v4))
    {
      return 1;
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return 0;
}

unint64_t sub_24EEE95BC()
{
  result = qword_27F2332A8;
  if (!qword_27F2332A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332A8);
  }

  return result;
}

unint64_t sub_24EEE9614()
{
  result = qword_27F2332B0;
  if (!qword_27F2332B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332B0);
  }

  return result;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24EEE9694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 115))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEE96DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 114) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 115) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 115) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}