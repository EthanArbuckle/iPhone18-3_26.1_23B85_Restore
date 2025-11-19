uint64_t sub_241C9CDE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v158 = a4;
  v154 = a1;
  v7 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v169 = &v152 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v157 = &v152 - v15;
  MEMORY[0x28223BE20](v14);
  v156 = &v152 - v16;
  v17 = sub_241CF8D88();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v172 = &v152 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v22);
  v159 = &v152 - v27;
  v165 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_121:
    a3 = *v154;
    if (!*v154)
    {
      goto LABEL_161;
    }

    v11 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_155;
    }

    result = v11;
LABEL_124:
    v181 = result;
    v11 = *(result + 16);
    if (v11 >= 2)
    {
      while (*v165)
      {
        v148 = *(result + 16 * v11);
        v149 = result;
        v150 = *(result + 16 * (v11 - 1) + 40);
        sub_241CA0478((*v165 + 40 * v148), (*v165 + 40 * *(result + 16 * (v11 - 1) + 32)), *v165 + 40 * v150, a3);
        if (v5)
        {
        }

        if (v150 < v148)
        {
          goto LABEL_148;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_241CDE470(v149);
        }

        if (v11 - 2 >= *(v149 + 2))
        {
          goto LABEL_149;
        }

        v151 = &v149[16 * v11];
        *v151 = v148;
        *(v151 + 1) = v150;
        v181 = v149;
        sub_241CDE3E4(v11 - 1);
        result = v181;
        v11 = *(v181 + 16);
        if (v11 <= 1)
        {
        }
      }

      goto LABEL_159;
    }
  }

  v155 = v26;
  v167 = v25;
  v29 = 0;
  v173 = (v24 + 48);
  v170 = (v24 + 8);
  v171 = (v24 + 32);
  v30 = MEMORY[0x277D84F90];
  v168 = v11;
  while (1)
  {
    v160 = v30;
    if (v29 + 1 >= v28)
    {
      v28 = v29 + 1;
      v62 = v158;
      goto LABEL_35;
    }

    v31 = *v165;
    v11 = 40;
    sub_241C96F9C(*v165 + 40 * (v29 + 1), &v178);
    sub_241C96F9C(v31 + 40 * v29, v175);
    LODWORD(v174) = sub_241C95BC8(&v178, v175);
    if (v5)
    {
      sub_241C8EEE8(v175);
      sub_241C8EEE8(&v178);
    }

    sub_241C8EEE8(v175);
    result = sub_241C8EEE8(&v178);
    v32 = v29 + 2;
    v153 = v29;
    v33 = 40 * v29;
    a3 = v31 + 40 * v29 + 80;
    v164 = 0;
    v166 = v28;
    while (v28 != v32)
    {
      sub_241C96F9C(a3, &v178);
      sub_241C96F9C(a3 - 40, v175);
      v44 = v179;
      v45 = v180;
      sub_241C97000(&v178, v179);
      AssetInfo.seriesSortKey.getter(v44, v45);
      if (v46 & 1) != 0 && (v47 = v176, v48 = v177, sub_241C97000(v175, v176), AssetInfo.seriesSortKey.getter(v47, v48), (v49))
      {
        v50 = v179;
        v51 = v180;
        sub_241C97000(&v178, v179);
        v52 = v156;
        AssetInfo.releaseDate.getter(v50, v51, v156);
        v53 = v52;
        v54 = *v173;
        if ((*v173)(v53, 1, v17) == 1)
        {
          sub_241CF8D28();
          if (v54(v53, 1, v17) != 1)
          {
            sub_241CA0DE4(v53);
          }
        }

        else
        {
          (*v171)(v159, v53, v17);
        }

        v55 = v176;
        v56 = v177;
        sub_241C97000(v175, v176);
        v57 = v157;
        AssetInfo.releaseDate.getter(v55, v56, v157);
        v58 = v57;
        if (v54(v57, 1, v17) == 1)
        {
          v59 = v155;
          sub_241CF8D28();
          if (v54(v58, 1, v17) != 1)
          {
            sub_241CA0DE4(v58);
          }
        }

        else
        {
          v59 = v155;
          (*v171)(v155, v58, v17);
        }

        v60 = v159;
        v11 = sub_241CF8D58();
        v61 = *v170;
        (*v170)(v59, v17);
        v61(v60, v17);
      }

      else
      {
        v34 = v179;
        v35 = v180;
        sub_241C97000(&v178, v179);
        v36 = AssetInfo.seriesSortKey.getter(v34, v35);
        v38 = v37;
        v39 = v176;
        v40 = v177;
        sub_241C97000(v175, v176);
        v41 = AssetInfo.seriesSortKey.getter(v39, v40);
        if (v42)
        {
          v43 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        v11 = (v36 < v43) & ~v38;
      }

      sub_241C8EEE8(v175);
      result = sub_241C8EEE8(&v178);
      ++v32;
      a3 += 40;
      v5 = v164;
      v28 = v166;
      if ((v174 ^ v11))
      {
        v28 = v32 - 1;
        break;
      }
    }

    v62 = v158;
    v29 = v153;
    if (v174)
    {
      if (v28 < v153)
      {
        goto LABEL_154;
      }

      if (v153 < v28)
      {
        v63 = v28;
        v64 = 40 * v28 - 40;
        v166 = v63;
        do
        {
          if (v29 != --v63)
          {
            v65 = *v165;
            if (!*v165)
            {
              goto LABEL_158;
            }

            a3 = v65 + v33;
            v11 = v65 + v64;
            sub_241C914E4((v65 + v33), &v178);
            v66 = *(v11 + 32);
            v67 = *(v11 + 16);
            *a3 = *v11;
            *(a3 + 16) = v67;
            *(a3 + 32) = v66;
            result = sub_241C914E4(&v178, v11);
            v62 = v158;
          }

          ++v29;
          v64 -= 40;
          v33 += 40;
        }

        while (v29 < v63);
        v29 = v153;
        v28 = v166;
      }
    }

LABEL_35:
    v68 = v165[1];
    if (v28 >= v68)
    {
      goto LABEL_44;
    }

    if (__OFSUB__(v28, v29))
    {
      goto LABEL_151;
    }

    if (v28 - v29 >= v62)
    {
      goto LABEL_44;
    }

    if (__OFADD__(v29, v62))
    {
      goto LABEL_152;
    }

    if (v29 + v62 >= v68)
    {
      a3 = v165[1];
    }

    else
    {
      a3 = v29 + v62;
    }

    if (a3 < v29)
    {
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      result = sub_241CDE470(v11);
      goto LABEL_124;
    }

    if (v28 == a3)
    {
LABEL_44:
      a3 = v28;
      if (v28 < v29)
      {
        goto LABEL_150;
      }

      goto LABEL_45;
    }

    v164 = v5;
    v174 = *v165;
    v114 = v174 + 40 * v28;
    v153 = v29;
    v115 = v29 - v28;
    v161 = a3;
LABEL_96:
    v166 = v28;
    v162 = v115;
    v163 = v114;
    v116 = v114;
    sub_241C96F9C(v116, &v178);
    sub_241C96F9C(v116 - 40, v175);
    v117 = v179;
    v118 = v180;
    sub_241C97000(&v178, v179);
    AssetInfo.seriesSortKey.getter(v117, v118);
    if ((v119 & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_97:
    v120 = v176;
    v121 = v177;
    sub_241C97000(v175, v176);
    AssetInfo.seriesSortKey.getter(v120, v121);
    if (v122)
    {
      v123 = v179;
      v124 = v180;
      sub_241C97000(&v178, v179);
      v125 = v169;
      AssetInfo.releaseDate.getter(v123, v124, v169);
      v126 = v125;
      v127 = *v173;
      if ((*v173)(v126, 1, v17) == 1)
      {
        sub_241CF8D28();
        if (v127(v126, 1, v17) != 1)
        {
          sub_241CA0DE4(v126);
        }
      }

      else
      {
        (*v171)(v172, v126, v17);
      }

      v138 = v176;
      v139 = v177;
      sub_241C97000(v175, v176);
      v140 = v168;
      AssetInfo.releaseDate.getter(v138, v139, v168);
      v141 = v140;
      if (v127(v140, 1, v17) == 1)
      {
        v142 = v167;
        sub_241CF8D28();
        v143 = v17;
        if (v127(v141, 1, v17) != 1)
        {
          sub_241CA0DE4(v141);
        }
      }

      else
      {
        v142 = v167;
        (*v171)(v167, v141, v17);
        v143 = v17;
      }

      v144 = v172;
      v11 = sub_241CF8D58();
      v145 = *v170;
      (*v170)(v142, v143);
      v145(v144, v143);
      v17 = v143;
    }

    else
    {
LABEL_102:
      v128 = v179;
      v129 = v180;
      sub_241C97000(&v178, v179);
      v130 = AssetInfo.seriesSortKey.getter(v128, v129);
      v132 = v131;
      v133 = v176;
      v134 = v177;
      sub_241C97000(v175, v176);
      v135 = AssetInfo.seriesSortKey.getter(v133, v134);
      v137 = (v136 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v135;
      v11 = (v130 < v137) & ~v132;
    }

    sub_241C8EEE8(v175);
    result = sub_241C8EEE8(&v178);
    if (v11)
    {
      break;
    }

LABEL_95:
    v28 = v166 + 1;
    v114 = v163 + 40;
    v115 = v162 - 1;
    a3 = v161;
    if (v166 + 1 != v161)
    {
      goto LABEL_96;
    }

    v5 = v164;
    v29 = v153;
    if (v161 < v153)
    {
      goto LABEL_150;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v160;
    }

    else
    {
      result = sub_241CBFB88(0, *(v160 + 2) + 1, 1, v160);
      v30 = result;
    }

    v70 = *(v30 + 2);
    v69 = *(v30 + 3);
    v11 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_241CBFB88((v69 > 1), v70 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v11;
    v71 = &v30[16 * v70];
    *(v71 + 4) = v29;
    *(v71 + 5) = a3;
    v161 = a3;
    a3 = *v154;
    if (!*v154)
    {
      goto LABEL_160;
    }

    if (v70)
    {
      while (1)
      {
        v72 = v11 - 1;
        if (v11 >= 4)
        {
          break;
        }

        if (v11 == 3)
        {
          v73 = *(v30 + 4);
          v74 = *(v30 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_64:
          if (v76)
          {
            goto LABEL_139;
          }

          v89 = &v30[16 * v11];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_142;
          }

          v95 = &v30[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_146;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v11 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v99 = &v30[16 * v11];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_78:
        if (v94)
        {
          goto LABEL_141;
        }

        v102 = &v30[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_144;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_85:
        v110 = v72 - 1;
        if (v72 - 1 >= v11)
        {
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (!*v165)
        {
          goto LABEL_157;
        }

        v111 = v30;
        v11 = *&v30[16 * v110 + 32];
        v112 = *&v30[16 * v72 + 40];
        sub_241CA0478((*v165 + 40 * v11), (*v165 + 40 * *&v30[16 * v72 + 32]), *v165 + 40 * v112, a3);
        if (v5)
        {
        }

        if (v112 < v11)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_241CDE470(v111);
        }

        if (v110 >= *(v111 + 2))
        {
          goto LABEL_136;
        }

        v113 = &v111[16 * v110];
        *(v113 + 4) = v11;
        *(v113 + 5) = v112;
        v181 = v111;
        result = sub_241CDE3E4(v72);
        v30 = v181;
        v11 = *(v181 + 16);
        if (v11 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v30[16 * v11 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_137;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_138;
      }

      v84 = &v30[16 * v11];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_140;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_143;
      }

      if (v88 >= v80)
      {
        v106 = &v30[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_147;
        }

        if (v75 < v109)
        {
          v72 = v11 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v28 = v165[1];
    v29 = v161;
    if (v161 >= v28)
    {
      goto LABEL_121;
    }
  }

  if (v174)
  {
    sub_241C914E4(v116, &v178);
    v146 = *(v116 - 24);
    *v116 = *(v116 - 40);
    *(v116 + 16) = v146;
    *(v116 + 32) = *(v116 - 8);
    sub_241C914E4(&v178, v116 - 40);
    v116 -= 40;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_241C9DBE4(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 >= v10)
  {
    v23 = a2;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v4[40 * v10];
    if (v9 < 40 || v23 <= v6)
    {
      v39 = v23;
    }

    else
    {
      v49 = v4;
      do
      {
        __dsta = v23;
        v24 = (v23 - 40);
        v25 = (v12 - 40);
        v5 -= 40;
        while (1)
        {
          v12 = (v25 + 40);
          v28 = (v5 + 40);
          sub_241C96F9C(v25, v46);
          v29 = v24;
          sub_241C96F9C(v24, v43);
          v31 = v47;
          v30 = v48;
          sub_241C97000(v46, v47);
          AssetInfo.title.getter(v31, v30);
          v32 = v44;
          v33 = v45;
          sub_241C97000(v43, v44);
          AssetInfo.title.getter(v32, v33);
          sub_241C8DFF0();
          v34 = sub_241CF95D8();

          sub_241C8EEE8(v43);
          sub_241C8EEE8(v46);
          if (v34 == -1)
          {
            break;
          }

          if (v28 != v12)
          {
            v35 = *v25;
            v36 = *(v25 + 16);
            *(v5 + 32) = *(v25 + 32);
            *v5 = v35;
            *(v5 + 16) = v36;
          }

          v26 = v25 - 40;
          v5 -= 40;
          v27 = v25 > v49;
          v25 -= 40;
          v24 = v29;
          if (!v27)
          {
            v12 = (v26 + 40);
            v39 = __dsta;
            v4 = v49;
            goto LABEL_36;
          }
        }

        v39 = v29;
        if (v28 != __dsta)
        {
          v37 = *v29;
          v38 = *(v29 + 1);
          *(v5 + 32) = *(v29 + 4);
          *v5 = v37;
          *(v5 + 16) = v38;
        }

        v4 = v49;
        if (v12 <= v49)
        {
          break;
        }

        v23 = v39;
      }

      while (v39 > v6);
      v12 = (v25 + 40);
    }
  }

  else
  {
    if (__dst != __src || &__src[40 * v8] <= __dst)
    {
      memmove(__dst, __src, 40 * v8);
    }

    v12 = &v4[40 * v8];
    if (v7 >= 40 && a2 < v5)
    {
      v13 = a2;
      while (1)
      {
        sub_241C96F9C(v13, v46);
        sub_241C96F9C(v4, v43);
        v14 = v47;
        v15 = v48;
        sub_241C97000(v46, v47);
        AssetInfo.title.getter(v14, v15);
        v16 = v44;
        v17 = v45;
        sub_241C97000(v43, v44);
        AssetInfo.title.getter(v16, v17);
        sub_241C8DFF0();
        v18 = sub_241CF95D8();

        sub_241C8EEE8(v43);
        sub_241C8EEE8(v46);
        if (v18 != -1)
        {
          break;
        }

        v19 = v13;
        v20 = v6 == v13;
        v13 += 40;
        if (!v20)
        {
          goto LABEL_10;
        }

LABEL_11:
        v6 += 40;
        if (v4 >= v12 || v13 >= v5)
        {
          goto LABEL_34;
        }
      }

      v19 = v4;
      v20 = v6 == v4;
      v4 += 40;
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_10:
      v21 = *v19;
      v22 = *(v19 + 1);
      *(v6 + 4) = *(v19 + 4);
      *v6 = v21;
      *(v6 + 1) = v22;
      goto LABEL_11;
    }

LABEL_34:
    v39 = v6;
  }

LABEL_36:
  v40 = (v12 - v4) / 40;
  if (v39 != v4 || v39 >= &v4[40 * v40])
  {
    memmove(v39, v4, 40 * v40);
  }

  return 1;
}

uint64_t sub_241C9DFD4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v116 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = (&v109 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v109 - v15;
  MEMORY[0x28223BE20](v14);
  v113 = (&v109 - v16);
  v117 = sub_241CF8D88();
  v17 = *(v117 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v117);
  v112 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v119 = &v109 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v111 = &v109 - v24;
  MEMORY[0x28223BE20](v23);
  v118 = &v109 - v25;
  v26 = (a2 - a1) / 40;
  v27 = (a3 - a2) / 40;
  if (v26 >= v27)
  {
    if (a4 != a2 || &a2[40 * v27] <= a4)
    {
      memmove(a4, a2, 40 * v27);
    }

    v28 = &a4[40 * v27];
    if ((a3 - a2) < 40 || a2 <= a1)
    {
LABEL_70:
      v67 = a2;
    }

    else
    {
      v118 = (v17 + 48);
      v113 = (v17 + 32);
      v110 = a4;
      v111 = (v17 + 8);
      do
      {
        v67 = a2 - 40;
        v68 = (v28 - 40);
        a3 -= 40;
        v126 = a2;
        v114 = a2 - 40;
        while (1)
        {
          sub_241C96F9C(v68, v123);
          sub_241C96F9C(v67, v120);
          v71 = v124;
          v72 = v125;
          sub_241C97000(v123, v124);
          AssetInfo.seriesSortKey.getter(v71, v72);
          if ((v73 & 1) == 0)
          {
            goto LABEL_49;
          }

          v74 = v121;
          v75 = v122;
          sub_241C97000(v120, v121);
          AssetInfo.seriesSortKey.getter(v74, v75);
          if (v76)
          {
            v77 = v124;
            v78 = v125;
            sub_241C97000(v123, v124);
            v79 = v115;
            AssetInfo.releaseDate.getter(v77, v78, v115);
            v80 = v117;
            v81 = *v118;
            if ((*v118)(v79, 1, v117) == 1)
            {
              sub_241CF8D28();
              if (v81(v79, 1, v80) != 1)
              {
                sub_241CA0DE4(v79);
              }
            }

            else
            {
              (*v113)(v119, v79, v80);
            }

            v93 = v121;
            v94 = v122;
            sub_241C97000(v120, v121);
            v95 = v116;
            AssetInfo.releaseDate.getter(v93, v94, v116);
            v96 = v95;
            if (v81(v95, 1, v80) == 1)
            {
              v97 = v112;
              sub_241CF8D28();
              v98 = v81(v96, 1, v80);
              v99 = v97;
              a2 = v126;
              if (v98 != 1)
              {
                sub_241CA0DE4(v96);
              }
            }

            else
            {
              v99 = v112;
              (*v113)(v112, v95, v80);
              a2 = v126;
            }

            v100 = v119;
            v92 = sub_241CF8D58();
            v101 = v99;
            v102 = *v111;
            (*v111)(v101, v80);
            v102(v100, v80);
            v67 = v114;
            a4 = v110;
          }

          else
          {
LABEL_49:
            v82 = v124;
            v83 = v125;
            sub_241C97000(v123, v124);
            v84 = AssetInfo.seriesSortKey.getter(v82, v83);
            v86 = (v85 & 1) != 0 ? 0 : v84;
            v87 = v121;
            v88 = v122;
            sub_241C97000(v120, v121);
            v89 = AssetInfo.seriesSortKey.getter(v87, v88);
            v91 = (v90 & 1) != 0 ? 0 : v89;
            v92 = v86 < v91;
          }

          sub_241C8EEE8(v120);
          sub_241C8EEE8(v123);
          if (v92)
          {
            break;
          }

          if (a3 + 40 != v68 + 40)
          {
            v103 = *v68;
            v104 = *(v68 + 16);
            *(a3 + 32) = *(v68 + 32);
            *a3 = v103;
            *(a3 + 16) = v104;
          }

          v69 = v68 - 40;
          a3 -= 40;
          v70 = v68 > a4;
          v68 -= 40;
          if (!v70)
          {
            v28 = (v69 + 40);
            goto LABEL_70;
          }
        }

        if ((a3 + 40) != a2)
        {
          v105 = *v67;
          v106 = *(v67 + 1);
          *(a3 + 32) = *(v67 + 4);
          *a3 = v105;
          *(a3 + 16) = v106;
        }

        v28 = (v68 + 40);
        if (v68 + 40 <= a4)
        {
          break;
        }

        a2 = v67;
      }

      while (v67 > a1);
      v28 = (v68 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v26] <= a4)
    {
      memmove(a4, a1, 40 * v26);
    }

    v28 = &a4[40 * v26];
    v29 = v117;
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v119 = (v17 + 48);
      v115 = (v17 + 32);
      v116 = &a4[40 * v26];
      v112 = (v17 + 8);
      while (1)
      {
        sub_241C96F9C(a2, v123);
        sub_241C96F9C(a4, v120);
        v30 = v124;
        v31 = v125;
        sub_241C97000(v123, v124);
        AssetInfo.seriesSortKey.getter(v30, v31);
        if ((v32 & 1) == 0)
        {
          goto LABEL_13;
        }

        v33 = v121;
        v34 = v122;
        sub_241C97000(v120, v121);
        AssetInfo.seriesSortKey.getter(v33, v34);
        if (v35)
        {
          v36 = v124;
          v37 = v125;
          sub_241C97000(v123, v124);
          v38 = v113;
          AssetInfo.releaseDate.getter(v36, v37, v113);
          v39 = *v119;
          if ((*v119)(v38, 1, v29) == 1)
          {
            sub_241CF8D28();
            if (v39(v38, 1, v29) != 1)
            {
              sub_241CA0DE4(v38);
            }
          }

          else
          {
            (*v115)(v118, v38, v29);
          }

          v126 = a2;
          v51 = v121;
          v52 = v122;
          sub_241C97000(v120, v121);
          v53 = v114;
          AssetInfo.releaseDate.getter(v51, v52, v114);
          v54 = v53;
          if (v39(v53, 1, v29) == 1)
          {
            v55 = v111;
            sub_241CF8D28();
            v56 = v39(v53, 1, v29);
            v57 = v55;
            v58 = v116;
            v59 = v29;
            if (v56 != 1)
            {
              sub_241CA0DE4(v54);
            }
          }

          else
          {
            v57 = v111;
            (*v115)(v111, v53, v29);
            v58 = v116;
            v59 = v29;
          }

          v60 = v118;
          v50 = sub_241CF8D58();
          v61 = v57;
          v62 = *v112;
          (*v112)(v61, v59);
          v62(v60, v59);
          v29 = v59;
          v28 = v58;
          a2 = v126;
        }

        else
        {
LABEL_13:
          v40 = v124;
          v41 = v125;
          sub_241C97000(v123, v124);
          v42 = AssetInfo.seriesSortKey.getter(v40, v41);
          v44 = (v43 & 1) != 0 ? 0 : v42;
          v45 = v121;
          v46 = v122;
          sub_241C97000(v120, v121);
          v47 = AssetInfo.seriesSortKey.getter(v45, v46);
          v49 = (v48 & 1) != 0 ? 0 : v47;
          v50 = v44 < v49;
        }

        sub_241C8EEE8(v120);
        sub_241C8EEE8(v123);
        if ((v50 & 1) == 0)
        {
          break;
        }

        v63 = a2;
        v64 = a1 == a2;
        a2 += 40;
        if (!v64)
        {
          goto LABEL_31;
        }

LABEL_32:
        a1 += 40;
        if (a4 >= v28 || a2 >= a3)
        {
          goto LABEL_34;
        }
      }

      v63 = a4;
      v64 = a1 == a4;
      a4 += 40;
      if (v64)
      {
        goto LABEL_32;
      }

LABEL_31:
      v65 = *v63;
      v66 = *(v63 + 1);
      *(a1 + 4) = *(v63 + 4);
      *a1 = v65;
      *(a1 + 1) = v66;
      goto LABEL_32;
    }

LABEL_34:
    v67 = a1;
  }

  v107 = (v28 - a4) / 40;
  if (v67 != a4 || v67 >= &a4[40 * v107])
  {
    memmove(v67, a4, 40 * v107);
  }

  return 1;
}

uint64_t sub_241C9E924(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v107 = (v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v99 = v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v100 = v98 - v15;
  MEMORY[0x28223BE20](v14);
  v103 = (v98 - v16);
  v17 = sub_241CF8D88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v102 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v108 = v98 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v104 = v98 - v25;
  MEMORY[0x28223BE20](v24);
  v106 = v98 - v26;
  v109 = a1;
  v27 = a2 - a1;
  v28 = (a2 - a1) / 40;
  v116 = a3;
  v29 = a3 - a2;
  v30 = (a3 - a2) / 40;
  if (v28 >= v30)
  {
    if (a4 != a2 || &a2[40 * v30] <= a4)
    {
      memmove(a4, a2, 40 * v30);
    }

    v105 = &a4[40 * v30];
    if (v29 < 40 || a2 <= v109)
    {
      v63 = a2;
    }

    else
    {
      v64 = a2;
      v106 = (v18 + 48);
      v103 = (v18 + 32);
      v100 = (v18 + 8);
      v101 = a4;
      v65 = v99;
      do
      {
        v98[0] = v64;
        v66 = (v64 - 40);
        v67 = (v105 - 40);
        v116 -= 40;
        v104 = v64 - 40;
        while (1)
        {
          sub_241C96F9C(v67, v113);
          sub_241C96F9C(v66, v110);
          v69 = v114;
          v70 = v115;
          sub_241C97000(v113, v114);
          AssetInfo.releaseDate.getter(v69, v70, v65);
          v71 = *v106;
          if ((*v106)(v65, 1, v17) == 1)
          {
            sub_241CF8D28();
            if (v71(v65, 1, v17) != 1)
            {
              sub_241CA0DE4(v65);
            }
          }

          else
          {
            (*v103)(v108, v65, v17);
          }

          v72 = v111;
          v73 = v112;
          sub_241C97000(v110, v111);
          v74 = v107;
          AssetInfo.releaseDate.getter(v72, v73, v107);
          if (v71(v74, 1, v17) == 1)
          {
            v75 = v102;
            sub_241CF8D28();
            if (v71(v107, 1, v17) != 1)
            {
              sub_241CA0DE4(v107);
            }
          }

          else
          {
            v75 = v102;
            (*v103)(v102, v107, v17);
          }

          if (sub_241CF8D68())
          {
            v76 = v114;
            v77 = v115;
            sub_241C97000(v113, v114);
            v78 = AssetInfo.seriesSortKey.getter(v76, v77);
            v80 = (v79 & 1) != 0 ? 0 : v78;
            v81 = v111;
            v82 = v112;
            sub_241C97000(v110, v111);
            v83 = AssetInfo.seriesSortKey.getter(v81, v82);
            LOBYTE(v82) = v84;
            v85 = *v100;
            (*v100)(v75, v17);
            v85(v108, v17);
            v65 = v99;
            v86 = (v82 & 1) != 0 ? 0 : v83;
            v87 = v86 < v80;
          }

          else
          {
            v88 = v108;
            v87 = sub_241CF8D48();
            v89 = *v100;
            (*v100)(v75, v17);
            v89(v88, v17);
          }

          a4 = v101;
          sub_241C8EEE8(v110);
          sub_241C8EEE8(v113);
          if (v87)
          {
            break;
          }

          if (v116 + 40 != v67 + 40)
          {
            v90 = *v67;
            v91 = *(v67 + 16);
            v92 = v116;
            *(v116 + 32) = *(v67 + 32);
            *v92 = v90;
            v92[1] = v91;
          }

          v68 = v67 - 40;
          v116 -= 40;
          v31 = v67 > a4;
          v67 -= 40;
          v66 = v104;
          if (!v31)
          {
            v105 = (v68 + 40);
            v63 = v98[0];
            goto LABEL_69;
          }
        }

        v63 = v104;
        if (v116 + 40 != v98[0])
        {
          v93 = *v104;
          v94 = *(v104 + 1);
          v95 = v116;
          *(v116 + 32) = *(v104 + 4);
          *v95 = v93;
          v95[1] = v94;
        }

        v105 = (v67 + 40);
        if (v67 + 40 <= a4)
        {
          break;
        }

        v64 = v63;
      }

      while (v63 > v109);
      v105 = (v67 + 40);
    }
  }

  else
  {
    if (a4 != v109 || &v109[40 * v28] <= a4)
    {
      memmove(a4, v109, 40 * v28);
    }

    v105 = &a4[40 * v28];
    v31 = v27 < 40;
    v32 = v100;
    v33 = v104;
    if (!v31 && a2 < v116)
    {
      v107 = (v18 + 32);
      v108 = (v18 + 48);
      v102 = (v18 + 8);
      while (1)
      {
        sub_241C96F9C(a2, v113);
        sub_241C96F9C(a4, v110);
        v34 = v114;
        v35 = v115;
        sub_241C97000(v113, v114);
        v36 = v103;
        AssetInfo.releaseDate.getter(v34, v35, v103);
        v37 = v36;
        v38 = *v108;
        if ((*v108)(v37, 1, v17) == 1)
        {
          sub_241CF8D28();
          if (v38(v37, 1, v17) != 1)
          {
            sub_241CA0DE4(v37);
          }
        }

        else
        {
          (*v107)(v106, v37, v17);
        }

        v39 = v111;
        v40 = v112;
        sub_241C97000(v110, v111);
        AssetInfo.releaseDate.getter(v39, v40, v32);
        if (v38(v32, 1, v17) == 1)
        {
          sub_241CF8D28();
          if (v38(v32, 1, v17) != 1)
          {
            sub_241CA0DE4(v32);
          }
        }

        else
        {
          (*v107)(v33, v32, v17);
        }

        v41 = v106;
        if (sub_241CF8D68())
        {
          v42 = v114;
          v43 = v115;
          sub_241C97000(v113, v114);
          v44 = AssetInfo.seriesSortKey.getter(v42, v43);
          v46 = v41;
          v47 = (v45 & 1) != 0 ? 0 : v44;
          v48 = v111;
          v49 = v112;
          sub_241C97000(v110, v111);
          v50 = AssetInfo.seriesSortKey.getter(v48, v49);
          LOBYTE(v49) = v51;
          v52 = a2;
          v53 = a4;
          v54 = *v102;
          (*v102)(v104, v17);
          v54(v46, v17);
          a4 = v53;
          a2 = v52;
          v33 = v104;
          v32 = v100;
          v55 = (v49 & 1) != 0 ? 0 : v50;
          v56 = v55 < v47;
        }

        else
        {
          v56 = sub_241CF8D48();
          v57 = *v102;
          (*v102)(v33, v17);
          v57(v41, v17);
        }

        sub_241C8EEE8(v110);
        sub_241C8EEE8(v113);
        if ((v56 & 1) == 0)
        {
          break;
        }

        v58 = a2;
        v59 = v109 == a2;
        a2 += 40;
        if (!v59)
        {
          goto LABEL_30;
        }

LABEL_31:
        v109 += 40;
        if (a4 >= v105 || a2 >= v116)
        {
          goto LABEL_33;
        }
      }

      v58 = a4;
      v59 = v109 == a4;
      a4 += 40;
      if (v59)
      {
        goto LABEL_31;
      }

LABEL_30:
      v60 = *v58;
      v61 = *(v58 + 1);
      v62 = v109;
      *(v109 + 4) = *(v58 + 4);
      *v62 = v60;
      *(v62 + 1) = v61;
      goto LABEL_31;
    }

LABEL_33:
    v63 = v109;
  }

LABEL_69:
  v96 = (v105 - a4) / 40;
  if (v63 != a4 || v63 >= &a4[40 * v96])
  {
    memmove(v63, a4, 40 * v96);
  }

  return 1;
}

uint64_t sub_241C9F2D8(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v55 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v27 = v7;
      v48 = v4;
      do
      {
        __dst = v27;
        v28 = (v27 - 40);
        v29 = (v55 - 40);
        v5 -= 40;
        while (1)
        {
          sub_241C96F9C(v29, v52);
          v32 = v28;
          sub_241C96F9C(v28, v49);
          v33 = v53;
          v34 = v54;
          sub_241C97000(v52, v53);
          AssetInfo.sequenceNumber.getter(v33, v34);
          if ((v35 & 0x100000000) != 0)
          {
            MEMORY[0x245CFDCB0](0);
          }

          v36 = v50;
          v37 = v51;
          sub_241C97000(v49, v50);
          v38 = AssetInfo.sequenceNumber.getter(v36, v37);
          if ((v39 & 0x100000000) != 0)
          {
            v38 = MEMORY[0x245CFDCB0](0);
          }

          v40 = MEMORY[0x245CFDCD0](v38);
          sub_241C8EEE8(v49);
          sub_241C8EEE8(v52);
          if (v40)
          {
            break;
          }

          if (v5 + 40 != v29 + 40)
          {
            v41 = *v29;
            v42 = *(v29 + 16);
            *(v5 + 32) = *(v29 + 32);
            *v5 = v41;
            *(v5 + 16) = v42;
          }

          v30 = v29 - 40;
          v5 -= 40;
          v31 = v29 > v48;
          v29 -= 40;
          v28 = v32;
          if (!v31)
          {
            v55 = (v30 + 40);
            v7 = __dst;
            v4 = v48;
            goto LABEL_40;
          }
        }

        v7 = v32;
        if ((v5 + 40) != __dst)
        {
          v43 = *v32;
          v44 = *(v32 + 1);
          *(v5 + 32) = *(v32 + 4);
          *v5 = v43;
          *(v5 + 16) = v44;
        }

        v55 = (v29 + 40);
        v4 = v48;
        if (v29 + 40 <= v48)
        {
          break;
        }

        v27 = v7;
      }

      while (v7 > __src);
      v55 = (v29 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v55 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_241C96F9C(v7, v52);
        sub_241C96F9C(v4, v49);
        v14 = v53;
        v15 = v54;
        sub_241C97000(v52, v53);
        AssetInfo.sequenceNumber.getter(v14, v15);
        if ((v16 & 0x100000000) != 0)
        {
          MEMORY[0x245CFDCB0](0);
        }

        v17 = v50;
        v18 = v51;
        sub_241C97000(v49, v50);
        v19 = AssetInfo.sequenceNumber.getter(v17, v18);
        if ((v20 & 0x100000000) != 0)
        {
          v19 = MEMORY[0x245CFDCB0](0);
        }

        v21 = MEMORY[0x245CFDCD0](v19);
        sub_241C8EEE8(v49);
        sub_241C8EEE8(v52);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v22 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_15;
        }

LABEL_16:
        __src += 40;
        if (v4 >= v55 || v7 >= v5)
        {
          goto LABEL_18;
        }
      }

      v22 = v4;
      v23 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_15:
      v24 = *v22;
      v25 = *(v22 + 1);
      *(__src + 4) = *(v22 + 4);
      *__src = v24;
      *(__src + 1) = v25;
      goto LABEL_16;
    }

LABEL_18:
    v7 = __src;
  }

LABEL_40:
  v45 = (v55 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v45])
  {
    memmove(v7, v4, 40 * v45);
  }

  return 1;
}

uint64_t sub_241C9F6E4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = (&v107 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v107 - v15;
  MEMORY[0x28223BE20](v14);
  v111 = (&v107 - v16);
  v115 = sub_241CF8D88();
  v17 = *(v115 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v115);
  v110 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v117 = &v107 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v109 = &v107 - v24;
  MEMORY[0x28223BE20](v23);
  v116 = &v107 - v25;
  v26 = (a2 - a1) / 40;
  v27 = (a3 - a2) / 40;
  if (v26 >= v27)
  {
    if (a4 != a2 || &a2[40 * v27] <= a4)
    {
      memmove(a4, a2, 40 * v27);
    }

    v28 = &a4[40 * v27];
    if ((a3 - a2) < 40 || a2 <= a1)
    {
LABEL_64:
      v66 = a2;
    }

    else
    {
      v116 = (v17 + 48);
      v111 = (v17 + 32);
      v108 = a4;
      v109 = (v17 + 8);
      do
      {
        v66 = a2 - 40;
        v67 = (v28 - 40);
        a3 -= 40;
        v124 = a2;
        v112 = a2 - 40;
        while (1)
        {
          sub_241C96F9C(v67, v121);
          sub_241C96F9C(v66, v118);
          v70 = v122;
          v71 = v123;
          sub_241C97000(v121, v122);
          AssetInfo.seriesSortKey.getter(v70, v71);
          if ((v72 & 1) == 0)
          {
            goto LABEL_46;
          }

          v73 = v119;
          v74 = v120;
          sub_241C97000(v118, v119);
          AssetInfo.seriesSortKey.getter(v73, v74);
          if (v75)
          {
            v76 = v122;
            v77 = v123;
            sub_241C97000(v121, v122);
            v78 = v113;
            AssetInfo.releaseDate.getter(v76, v77, v113);
            v79 = v115;
            v80 = *v116;
            if ((*v116)(v78, 1, v115) == 1)
            {
              sub_241CF8D28();
              if (v80(v78, 1, v79) != 1)
              {
                sub_241CA0DE4(v78);
              }
            }

            else
            {
              (*v111)(v117, v78, v79);
            }

            v91 = v119;
            v92 = v120;
            sub_241C97000(v118, v119);
            v93 = v114;
            AssetInfo.releaseDate.getter(v91, v92, v114);
            v94 = v93;
            if (v80(v93, 1, v79) == 1)
            {
              v95 = v110;
              sub_241CF8D28();
              v96 = v80(v94, 1, v79);
              v97 = v95;
              a2 = v124;
              if (v96 != 1)
              {
                sub_241CA0DE4(v94);
              }
            }

            else
            {
              v97 = v110;
              (*v111)(v110, v93, v79);
              a2 = v124;
            }

            v98 = v117;
            v90 = sub_241CF8D48();
            v99 = v97;
            v100 = *v109;
            (*v109)(v99, v79);
            v100(v98, v79);
            v66 = v112;
            a4 = v108;
          }

          else
          {
LABEL_46:
            v81 = v122;
            v82 = v123;
            sub_241C97000(v121, v122);
            v83 = AssetInfo.seriesSortKey.getter(v81, v82);
            v85 = (v84 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v83;
            v86 = v119;
            v87 = v120;
            sub_241C97000(v118, v119);
            v88 = AssetInfo.seriesSortKey.getter(v86, v87) < v85;
            v90 = v88 & ~v89;
          }

          sub_241C8EEE8(v118);
          sub_241C8EEE8(v121);
          if (v90)
          {
            break;
          }

          if (a3 + 40 != v67 + 40)
          {
            v101 = *v67;
            v102 = *(v67 + 16);
            *(a3 + 32) = *(v67 + 32);
            *a3 = v101;
            *(a3 + 16) = v102;
          }

          v68 = v67 - 40;
          a3 -= 40;
          v69 = v67 > a4;
          v67 -= 40;
          if (!v69)
          {
            v28 = (v68 + 40);
            goto LABEL_64;
          }
        }

        if ((a3 + 40) != a2)
        {
          v103 = *v66;
          v104 = *(v66 + 1);
          *(a3 + 32) = *(v66 + 4);
          *a3 = v103;
          *(a3 + 16) = v104;
        }

        v28 = (v67 + 40);
        if (v67 + 40 <= a4)
        {
          break;
        }

        a2 = v66;
      }

      while (v66 > a1);
      v28 = (v67 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v26] <= a4)
    {
      memmove(a4, a1, 40 * v26);
    }

    v28 = &a4[40 * v26];
    v29 = v115;
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v117 = (v17 + 48);
      v113 = (v17 + 32);
      v114 = &a4[40 * v26];
      v110 = (v17 + 8);
      while (1)
      {
        sub_241C96F9C(a2, v121);
        sub_241C96F9C(a4, v118);
        v30 = v122;
        v31 = v123;
        sub_241C97000(v121, v122);
        AssetInfo.seriesSortKey.getter(v30, v31);
        if ((v32 & 1) == 0)
        {
          goto LABEL_13;
        }

        v33 = v119;
        v34 = v120;
        sub_241C97000(v118, v119);
        AssetInfo.seriesSortKey.getter(v33, v34);
        if (v35)
        {
          v36 = v122;
          v37 = v123;
          sub_241C97000(v121, v122);
          v38 = v111;
          AssetInfo.releaseDate.getter(v36, v37, v111);
          v39 = *v117;
          if ((*v117)(v38, 1, v29) == 1)
          {
            sub_241CF8D28();
            if (v39(v38, 1, v29) != 1)
            {
              sub_241CA0DE4(v38);
            }
          }

          else
          {
            (*v113)(v116, v38, v29);
          }

          v124 = a2;
          v50 = v119;
          v51 = v120;
          sub_241C97000(v118, v119);
          v52 = v112;
          AssetInfo.releaseDate.getter(v50, v51, v112);
          v53 = v52;
          if (v39(v52, 1, v29) == 1)
          {
            v54 = v109;
            sub_241CF8D28();
            v55 = v39(v52, 1, v29);
            v56 = v54;
            v57 = v114;
            v58 = v29;
            if (v55 != 1)
            {
              sub_241CA0DE4(v53);
            }
          }

          else
          {
            v56 = v109;
            (*v113)(v109, v52, v29);
            v57 = v114;
            v58 = v29;
          }

          v59 = v116;
          v49 = sub_241CF8D48();
          v60 = v56;
          v61 = *v110;
          (*v110)(v60, v58);
          v61(v59, v58);
          v29 = v58;
          v28 = v57;
          a2 = v124;
        }

        else
        {
LABEL_13:
          v40 = v122;
          v41 = v123;
          sub_241C97000(v121, v122);
          v42 = AssetInfo.seriesSortKey.getter(v40, v41);
          v44 = (v43 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v42;
          v45 = v119;
          v46 = v120;
          sub_241C97000(v118, v119);
          v47 = AssetInfo.seriesSortKey.getter(v45, v46) < v44;
          v49 = v47 & ~v48;
        }

        sub_241C8EEE8(v118);
        sub_241C8EEE8(v121);
        if ((v49 & 1) == 0)
        {
          break;
        }

        v62 = a2;
        v63 = a1 == a2;
        a2 += 40;
        if (!v63)
        {
          goto LABEL_28;
        }

LABEL_29:
        a1 += 40;
        if (a4 >= v28 || a2 >= a3)
        {
          goto LABEL_31;
        }
      }

      v62 = a4;
      v63 = a1 == a4;
      a4 += 40;
      if (v63)
      {
        goto LABEL_29;
      }

LABEL_28:
      v64 = *v62;
      v65 = *(v62 + 1);
      *(a1 + 4) = *(v62 + 4);
      *a1 = v64;
      *(a1 + 1) = v65;
      goto LABEL_29;
    }

LABEL_31:
    v66 = a1;
  }

  v105 = (v28 - a4) / 40;
  if (v66 != a4 || v66 >= &a4[40 * v105])
  {
    memmove(v66, a4, 40 * v105);
  }

  return 1;
}

uint64_t sub_241CA0034(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v69 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v34 = v7;
      v62 = v4;
      do
      {
        __dst = v34;
        v35 = (v34 - 40);
        v36 = (v69 - 40);
        v5 -= 40;
        while (1)
        {
          sub_241C96F9C(v36, v66);
          v39 = v35;
          sub_241C96F9C(v35, v63);
          v40 = v67;
          v41 = v68;
          sub_241C97000(v66, v67);
          v42 = AssetInfo.sequenceNumber.getter(v40, v41);
          v45 = (v44 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v42;
          v46 = v43;
          v47 = v44;
          v48 = v64;
          v49 = v65;
          sub_241C97000(v63, v64);
          v50 = AssetInfo.sequenceNumber.getter(v48, v49);
          v53 = (v52 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v50;
          v54 = MEMORY[0x245CFDCD0](v45, v46, v47, v53, v51, v52);
          sub_241C8EEE8(v63);
          sub_241C8EEE8(v66);
          if (v54)
          {
            break;
          }

          if (v5 + 40 != v36 + 40)
          {
            v55 = *v36;
            v56 = *(v36 + 16);
            *(v5 + 32) = *(v36 + 32);
            *v5 = v55;
            *(v5 + 16) = v56;
          }

          v37 = v36 - 40;
          v5 -= 40;
          v38 = v36 > v62;
          v36 -= 40;
          v35 = v39;
          if (!v38)
          {
            v69 = (v37 + 40);
            v7 = __dst;
            v4 = v62;
            goto LABEL_44;
          }
        }

        v7 = v39;
        if ((v5 + 40) != __dst)
        {
          v57 = *v39;
          v58 = *(v39 + 1);
          *(v5 + 32) = *(v39 + 4);
          *v5 = v57;
          *(v5 + 16) = v58;
        }

        v69 = (v36 + 40);
        v4 = v62;
        if (v36 + 40 <= v62)
        {
          break;
        }

        v34 = v7;
      }

      while (v7 > __src);
      v69 = (v36 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v69 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_241C96F9C(v7, v66);
        sub_241C96F9C(v4, v63);
        v14 = v67;
        v15 = v68;
        sub_241C97000(v66, v67);
        v16 = AssetInfo.sequenceNumber.getter(v14, v15);
        v19 = (v18 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v16;
        v20 = v17;
        v21 = v18;
        v22 = v64;
        v23 = v65;
        sub_241C97000(v63, v64);
        v24 = AssetInfo.sequenceNumber.getter(v22, v23);
        v27 = (v26 & 0x100000000) != 0 ? MEMORY[0x245CFDCB0](0) : v24;
        v28 = MEMORY[0x245CFDCD0](v19, v20, v21, v27, v25, v26);
        sub_241C8EEE8(v63);
        sub_241C8EEE8(v66);
        if ((v28 & 1) == 0)
        {
          break;
        }

        v29 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_17;
        }

LABEL_18:
        __src += 40;
        if (v4 >= v69 || v7 >= v5)
        {
          goto LABEL_20;
        }
      }

      v29 = v4;
      v30 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      v31 = *v29;
      v32 = *(v29 + 1);
      *(__src + 4) = *(v29 + 4);
      *__src = v31;
      *(__src + 1) = v32;
      goto LABEL_18;
    }

LABEL_20:
    v7 = __src;
  }

LABEL_44:
  v59 = (v69 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v59])
  {
    memmove(v7, v4, 40 * v59);
  }

  return 1;
}

uint64_t sub_241CA0478(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v118 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = (&v113 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v119 = (&v113 - v15);
  MEMORY[0x28223BE20](v14);
  v116 = (&v113 - v16);
  v121 = sub_241CF8D88();
  v17 = *(v121 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v121);
  v115 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v120 = &v113 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v114 = &v113 - v24;
  MEMORY[0x28223BE20](v23);
  v129 = &v113 - v25;
  v26 = (a2 - a1) / 40;
  v27 = (a3 - a2) / 40;
  if (v26 >= v27)
  {
    if (a4 != a2 || &a2[40 * v27] <= a4)
    {
      memmove(a4, a2, 40 * v27);
    }

    v28 = &a4[40 * v27];
    if ((a3 - a2) < 40 || a2 <= a1)
    {
      v68 = a2;
    }

    else
    {
      v119 = (v17 + 48);
      v116 = (v17 + 32);
      v114 = (v17 + 8);
      v122 = a4;
      do
      {
        v113 = a2;
        v69 = (a2 - 40);
        v70 = v28 - 40;
        a3 -= 40;
        v129 = a2 - 40;
        while (1)
        {
          sub_241C96F9C(v70, v126);
          sub_241C96F9C(v69, v123);
          v73 = v127;
          v74 = v128;
          sub_241C97000(v126, v127);
          AssetInfo.seriesSortKey.getter(v73, v74);
          if ((v75 & 1) == 0)
          {
            goto LABEL_45;
          }

          v76 = v124;
          v77 = v125;
          sub_241C97000(v123, v124);
          AssetInfo.seriesSortKey.getter(v76, v77);
          if (v78)
          {
            v79 = v127;
            v80 = v128;
            sub_241C97000(v126, v127);
            v81 = v79;
            v82 = v117;
            AssetInfo.releaseDate.getter(v81, v80, v117);
            v83 = *v119;
            v84 = v121;
            if ((*v119)(v82, 1, v121) == 1)
            {
              sub_241CF8D28();
              if (v83(v82, 1, v84) != 1)
              {
                sub_241CA0DE4(v82);
              }
            }

            else
            {
              (*v116)(v120, v82, v84);
            }

            v96 = v124;
            v97 = v125;
            sub_241C97000(v123, v124);
            v98 = v96;
            v99 = v118;
            AssetInfo.releaseDate.getter(v98, v97, v118);
            if (v83(v99, 1, v84) == 1)
            {
              v100 = v115;
              sub_241CF8D28();
              v101 = v83(v99, 1, v84);
              v102 = v84;
              a4 = v122;
              if (v101 != 1)
              {
                sub_241CA0DE4(v99);
              }
            }

            else
            {
              v100 = v115;
              (*v116)(v115, v99, v84);
              v102 = v84;
              a4 = v122;
            }

            v103 = v120;
            v104 = sub_241CF8D58();
            v105 = v100;
            v95 = v104;
            v106 = *v114;
            (*v114)(v105, v102);
            v106(v103, v102);
          }

          else
          {
LABEL_45:
            v85 = v127;
            v86 = v128;
            sub_241C97000(v126, v127);
            v87 = AssetInfo.seriesSortKey.getter(v85, v86);
            v89 = v88;
            v91 = v124;
            v90 = v125;
            sub_241C97000(v123, v124);
            v92 = AssetInfo.seriesSortKey.getter(v91, v90);
            v94 = (v93 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v92;
            v95 = (v87 < v94) & ~v89;
          }

          sub_241C8EEE8(v123);
          sub_241C8EEE8(v126);
          if (v95)
          {
            break;
          }

          v69 = v129;
          if (a3 + 40 != v70 + 40)
          {
            v107 = *v70;
            v108 = *(v70 + 16);
            *(a3 + 32) = *(v70 + 32);
            *a3 = v107;
            *(a3 + 16) = v108;
          }

          v71 = v70 - 40;
          a3 -= 40;
          v72 = v70 > a4;
          v70 -= 40;
          if (!v72)
          {
            v28 = v71 + 40;
            v68 = v113;
            goto LABEL_64;
          }
        }

        v68 = v129;
        if ((a3 + 40) != v113)
        {
          v109 = *v129;
          v110 = *(v129 + 1);
          *(a3 + 32) = *(v129 + 4);
          *a3 = v109;
          *(a3 + 16) = v110;
        }

        v28 = v70 + 40;
        if (v70 + 40 <= a4)
        {
          break;
        }

        a2 = v68;
      }

      while (v68 > a1);
      v28 = v70 + 40;
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v26] <= a4)
    {
      memmove(a4, a1, 40 * v26);
    }

    v28 = &a4[40 * v26];
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v120 = (v17 + 48);
      v117 = (v17 + 32);
      v118 = v28;
      v115 = (v17 + 8);
      while (1)
      {
        sub_241C96F9C(a2, v126);
        sub_241C96F9C(a4, v123);
        v29 = v127;
        v30 = v128;
        sub_241C97000(v126, v127);
        AssetInfo.seriesSortKey.getter(v29, v30);
        if ((v31 & 1) == 0)
        {
          goto LABEL_13;
        }

        v32 = v124;
        v33 = v125;
        sub_241C97000(v123, v124);
        AssetInfo.seriesSortKey.getter(v32, v33);
        if (v34)
        {
          v35 = v127;
          v36 = v128;
          sub_241C97000(v126, v127);
          v37 = v35;
          v38 = v116;
          AssetInfo.releaseDate.getter(v37, v36, v116);
          v39 = v121;
          v40 = *v120;
          if ((*v120)(v38, 1, v121) == 1)
          {
            sub_241CF8D28();
            if (v40(v38, 1, v39) != 1)
            {
              sub_241CA0DE4(v38);
            }
          }

          else
          {
            (*v117)(v129, v38, v39);
          }

          v122 = a4;
          v52 = v124;
          v53 = v125;
          sub_241C97000(v123, v124);
          v54 = v52;
          v55 = v119;
          AssetInfo.releaseDate.getter(v54, v53, v119);
          if (v40(v55, 1, v39) == 1)
          {
            v56 = v114;
            sub_241CF8D28();
            v57 = v40(v55, 1, v39);
            v58 = v39;
            v59 = v118;
            if (v57 != 1)
            {
              sub_241CA0DE4(v55);
            }
          }

          else
          {
            v56 = v114;
            (*v117)(v114, v55, v39);
            v58 = v39;
            v59 = v118;
          }

          v60 = v129;
          v61 = sub_241CF8D58();
          v62 = v56;
          v51 = v61;
          v63 = *v115;
          (*v115)(v62, v58);
          v63(v60, v58);
          v28 = v59;
          a4 = v122;
        }

        else
        {
LABEL_13:
          v41 = v127;
          v42 = v128;
          sub_241C97000(v126, v127);
          v43 = AssetInfo.seriesSortKey.getter(v41, v42);
          v45 = v44;
          v46 = v124;
          v47 = v125;
          sub_241C97000(v123, v124);
          v48 = AssetInfo.seriesSortKey.getter(v46, v47);
          v50 = 0x7FFFFFFFFFFFFFFFLL;
          if ((v49 & 1) == 0)
          {
            v50 = v48;
          }

          v51 = (v43 < v50) & ~v45;
        }

        sub_241C8EEE8(v123);
        sub_241C8EEE8(v126);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v64 = a2;
        v65 = a1 == a2;
        a2 += 40;
        if (!v65)
        {
          goto LABEL_27;
        }

LABEL_28:
        a1 += 40;
        if (a4 >= v28 || a2 >= a3)
        {
          goto LABEL_30;
        }
      }

      v64 = a4;
      v65 = a1 == a4;
      a4 += 40;
      if (v65)
      {
        goto LABEL_28;
      }

LABEL_27:
      v66 = *v64;
      v67 = *(v64 + 1);
      *(a1 + 4) = *(v64 + 4);
      *a1 = v66;
      *(a1 + 1) = v67;
      goto LABEL_28;
    }

LABEL_30:
    v68 = a1;
  }

LABEL_64:
  v111 = (v28 - a4) / 40;
  if (v68 != a4 || v68 >= &a4[40 * v111])
  {
    memmove(v68, a4, 40 * v111);
  }

  return 1;
}

uint64_t sub_241CA0DE4(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69DF0, &unk_241CFB1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CA0E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a4;
  v39 = a1;
  v5 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_241CF9598();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v38 = &v36 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  if (a2 < 1)
  {
    sub_241CF9438();
  }

  else
  {
    sub_241CF9478();
  }

  sub_241CF9428();
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v20, AssociatedTypeWitness);
    (*(v36 + 8))(v11, v37);
LABEL_8:
    v25 = *(v5 + 8);
    v26 = swift_getAssociatedTypeWitness();
    return (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  }

  v21 = v38;
  (*(v12 + 32))(v38, v11, AssociatedTypeWitness);
  sub_241CF9478();
  v22 = *(swift_getAssociatedConformanceWitness() + 8);
  v23 = sub_241CF8FF8();
  v24 = *(v12 + 8);
  v24(v16, AssociatedTypeWitness);
  if (v23)
  {
    v24(v21, AssociatedTypeWitness);
    v24(v20, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v28 = sub_241CF94E8();
  v30 = v29;
  v31 = *(v5 + 8);
  v32 = swift_getAssociatedTypeWitness();
  v33 = *(v32 - 8);
  v34 = v21;
  v35 = v40;
  (*(v33 + 16))(v40, v30, v32);
  v28(v41, 0);
  v24(v34, AssociatedTypeWitness);
  v24(v20, AssociatedTypeWitness);
  return (*(v33 + 56))(v35, 0, 1, v32);
}

uint64_t RandomAccessCollection.element(_:equatedBy:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a4;
  v27 = a1;
  v28 = a3;
  v29 = a7;
  v10 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_241CF9598();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v24);
  v16 = &v24 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v24 - v19;
  v30 = a5;
  v31 = a6;
  v26 = a6;
  v32 = a2;
  v33 = v28;
  v34 = v27;
  sub_241CF9498();
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v16, v24);
    v21 = *(v10 + 8);
    v22 = swift_getAssociatedTypeWitness();
    return (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  }

  else
  {
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    sub_241CA0E4C(v20, v25, v26, v29);
    return (*(v17 + 8))(v20, AssociatedTypeWitness);
  }
}

uint64_t RandomAccessCollection.firstAndLast.getter@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v32 = a2;
  v29 = *(a1 + 8);
  v2 = *(*(v29 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_241CF9598();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  sub_241CF94A8();
  v18 = *(v12 + 48);
  if (v18(v11, 1, AssociatedTypeWitness) == 1)
  {
    v8 = v11;
LABEL_5:
    (*(v30 + 8))(v8, v31);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v32, 1, 1, TupleTypeMetadata2);
  }

  v19 = v11;
  v20 = *(v12 + 32);
  v20(v17, v19, AssociatedTypeWitness);
  sub_241CF8F98();
  if (v18(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v17, AssociatedTypeWitness);
    goto LABEL_5;
  }

  v23 = v28;
  v20(v28, v8, AssociatedTypeWitness);
  v24 = swift_getTupleTypeMetadata2();
  v25 = *(v24 + 48);
  v26 = v32;
  v20(v32, v17, AssociatedTypeWitness);
  v20(&v26[v25], v23, AssociatedTypeWitness);
  return (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
}

uint64_t RandomAccessCollection<>.element(_:offsetBy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v19 = a1;
  v20 = a2;
  v4 = *(*(a2 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_241CF9598();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  sub_241CF94D8();
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v16 = *(v4 + 8);
    v17 = swift_getAssociatedTypeWitness();
    return (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  }

  else
  {
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    sub_241CA0E4C(v15, v19, v20, v22);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }
}

CGRect __swiftcall CGRect.center(in:)(CGRect in)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  rect = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  MaxX = CGRectGetMaxX(in);
  v22.origin.x = v8;
  v22.origin.y = v7;
  v22.size.width = v6;
  v22.size.height = v5;
  v13 = (MaxX - CGRectGetMaxX(v22)) * 0.5;
  v23.origin.x = v8;
  v23.origin.y = v7;
  v23.size.width = v6;
  v23.size.height = v5;
  v14 = CGRectGetMinX(v23) + v13;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = rect;
  MaxY = CGRectGetMaxY(v24);
  v25.origin.x = v8;
  v25.origin.y = v7;
  v25.size.width = v6;
  v25.size.height = v5;
  v16 = (MaxY - CGRectGetMaxY(v25)) * 0.5;
  v26.origin.x = v8;
  v26.origin.y = v7;
  v26.size.width = v6;
  v26.size.height = v5;
  v17 = CGRectGetMinY(v26) + v16;
  v18 = v14;
  v19 = v6;
  v20 = v5;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

CGSize __swiftcall CGRect.scaledToFit(in:times:horizontally:)(CGSize in, Swift::Int times, Swift::Bool horizontally)
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  if (horizontally)
  {
    width = in.width;
    v20.origin.x = v3;
    v20.origin.y = v4;
    v20.size.width = v5;
    v20.size.height = v6;
    v13 = CGRectGetWidth(v20);
  }

  else
  {
    height = in.height;
    v21.origin.x = v3;
    v21.origin.y = v4;
    v21.size.width = v5;
    v21.size.height = v6;
    v13 = CGRectGetHeight(v21);
    width = height;
  }

  v15 = width / (v13 * times);
  v22.origin.x = v10;
  v22.origin.y = v9;
  v22.size.width = v8;
  v22.size.height = v7;
  v16 = floor(v15 * CGRectGetWidth(v22));
  v23.origin.x = v10;
  v23.origin.y = v9;
  v23.size.width = v8;
  v23.size.height = v7;
  v17 = floor(v15 * CGRectGetHeight(v23));
  v18 = v16;
  result.height = v17;
  result.width = v18;
  return result;
}

CGFloat sub_241CA1D1C(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  v10 = CGRectGetWidth(v12) - a1;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetHeight(v13);
  return v10;
}

uint64_t sub_241CA1D94()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69DF8);
  sub_241C936C0(v0, qword_27EC69DF8);
  return sub_241CF8E78();
}

uint64_t sub_241CA1E34()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69E10);
  sub_241C936C0(v0, qword_27EC69E10);
  return sub_241CF8E78();
}

uint64_t sub_241CA1ED8()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69E28);
  sub_241C936C0(v0, qword_27EC69E28);
  return sub_241CF8E78();
}

uint64_t sub_241CA1F78()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69E40);
  sub_241C936C0(v0, qword_27EC69E40);
  return sub_241CF8E78();
}

uint64_t sub_241CA201C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_241CF8E88();
  v6 = sub_241C936C0(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_241CA20B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_241CA2124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CA2190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAudiobookInfo.seriesInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryAudiobookInfo() + 20);

  return sub_241CA22A4(v3, a1);
}

uint64_t type metadata accessor for LibraryAudiobookInfo()
{
  result = qword_27EC69E80;
  if (!qword_27EC69E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CA22A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69E58, &qword_241CFB200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAudiobookInfo.seriesInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LibraryAudiobookInfo() + 20);

  return sub_241CA2358(a1, v3);
}

uint64_t sub_241CA2358(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69E58, &qword_241CFB200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LibraryAudiobookInfo.supplementalContents.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibraryAudiobookInfo() + 28));
}

uint64_t LibraryAudiobookInfo.init(commonInfo:seriesInfo:isSG:supplementalContents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LibraryAudiobookInfo();
  v11 = a5 + v10[5];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  sub_241CA24F8(a1, a5);
  result = sub_241CA2358(a2, v11);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_241CA24F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonLibraryAssetInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_241CA2578(uint64_t a1, uint64_t a2))()
{
  result = nullsub_3;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_241CA259C(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA25EC(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA2630(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E70);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA2674(uint64_t a1)
{
  result = sub_241CA26B8(&qword_27EC69E78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA26B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibraryAudiobookInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_241CA2728()
{
  type metadata accessor for CommonLibraryAssetInfo();
  if (v0 <= 0x3F)
  {
    sub_241CA27FC(319, &qword_27EC69E90, &qword_27EC69E98, "2x");
    if (v1 <= 0x3F)
    {
      sub_241CA27FC(319, &qword_27EC69EA0, &qword_27EC69EA8, "2x");
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_241CA27FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_241C9452C(a3, a4);
    v5 = sub_241CF9598();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t SeriesArtistInfo.ArtistPlurality.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t SeriesArtistInfo.ArtistType.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t SeriesArtistInfo.totalArtistCount.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

unint64_t sub_241CA2C30()
{
  result = qword_27EC69EB0;
  if (!qword_27EC69EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69EB0);
  }

  return result;
}

unint64_t sub_241CA2C88()
{
  result = qword_27EC69EB8;
  if (!qword_27EC69EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69EB8);
  }

  return result;
}

__n128 sub_241CA2CDC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_241CA2CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_241CA2D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinishedDateKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinishedDateKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241CA2F08(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_241CF9448();
  if (!v26)
  {
    return sub_241CF92C8();
  }

  v48 = v26;
  v52 = sub_241CF9748();
  v39 = sub_241CF9758();
  sub_241CF9728();
  result = sub_241CF9438();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_241CF94E8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_241CF9738();
      result = sub_241CF9488();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BookFoundation::SeriesType_optional __swiftcall SeriesType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SeriesType.rawValue.getter()
{
  if (*v0)
  {
    result = 1802465122;
  }

  else
  {
    result = 0x6F6F626F69647561;
  }

  *v0;
  return result;
}

uint64_t sub_241CA33C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1802465122;
  }

  else
  {
    v4 = 0x6F6F626F69647561;
  }

  if (v3)
  {
    v5 = 0xE90000000000006BLL;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1802465122;
  }

  else
  {
    v6 = 0x6F6F626F69647561;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE90000000000006BLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_241CF98C8();
  }

  return v9 & 1;
}

uint64_t sub_241CA3468()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CA34E8()
{
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CA3554()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CA35D0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_241CF9838();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_241CA3630(uint64_t *a1@<X8>)
{
  v2 = 1802465122;
  if (!*v1)
  {
    v2 = 0x6F6F626F69647561;
  }

  v3 = 0xE90000000000006BLL;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MappedSeriesInfo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SeriesInfo.assets.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = sub_241CA3B00(a1, a2);
  if (!v2)
  {
    v38 = result;
    v39 = 0;
    v6 = v3[7](a1, v3);
    if (v6)
    {
      v7 = v6;
      if (v6 >> 62)
      {
        if (sub_241CF97D8())
        {
          v8 = sub_241CF97D8();
          if (!v8)
          {
            v36 = v3;
            v37 = a1;

            v9 = MEMORY[0x277D84F90];
            if (*(MEMORY[0x277D84F90] + 16))
            {
LABEL_17:
              sub_241C93918(&qword_27EC69EC0, &qword_241CFB470);
              v27 = sub_241CF9808();
              goto LABEL_22;
            }

LABEL_21:
            v27 = MEMORY[0x277D84F98];
LABEL_22:
            v41 = v27;
            sub_241CA83BC(v9, 1, &v41);
            v3 = v39;
            if (!v39)
            {

              v29 = v41;
              v41 = v38;
              MEMORY[0x28223BE20](v28);
              v35[2] = v37;
              v35[3] = v36;
              v35[4] = v29;
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v31 = sub_241CF9308();
              WitnessTable = swift_getWitnessTable();
              v34 = sub_241CA2F08(sub_241CA865C, v35, v31, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v33);

              return v34;
            }

            goto LABEL_28;
          }

LABEL_5:
          v40 = v7;
          v41 = MEMORY[0x277D84F90];
          sub_241C94574(0, v8 & ~(v8 >> 63), 0);
          if (v8 < 0)
          {
            __break(1u);
LABEL_28:

            __break(1u);
            return result;
          }

          v36 = v3;
          v37 = a1;
          v9 = v41;
          v10 = v40;
          if ((v40 & 0xC000000000000001) != 0)
          {
            v11 = 0;
            do
            {
              v12 = MEMORY[0x245CFDE40](v11, v10);
              v13 = *(v12 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
              v14 = *(v12 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
              v41 = v9;
              v16 = v9[2];
              v15 = v9[3];

              if (v16 >= v15 >> 1)
              {
                sub_241C94574((v15 > 1), v16 + 1, 1);
                v10 = v40;
                v9 = v41;
              }

              ++v11;
              v9[2] = v16 + 1;
              v17 = &v9[3 * v16];
              v17[4] = v13;
              v17[5] = v14;
              v17[6] = v12;
            }

            while (v8 != v11);
          }

          else
          {
            v18 = (v40 + 32);
            do
            {
              v19 = *v18;
              v20 = (*v18 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
              v21 = *v20;
              v22 = v20[1];
              v41 = v9;
              v24 = v9[2];
              v23 = v9[3];
              v25 = v19;

              if (v24 >= v23 >> 1)
              {
                sub_241C94574((v23 > 1), v24 + 1, 1);
                v9 = v41;
              }

              v9[2] = v24 + 1;
              v26 = &v9[3 * v24];
              v26[4] = v21;
              v26[5] = v22;
              v26[6] = v25;
              ++v18;
              --v8;
            }

            while (v8);
          }

          if (v9[2])
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_5;
        }
      }
    }

    return v38;
  }

  return result;
}

uint64_t sub_241CA3B00(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v100 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v84 - v10;
  v98 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ContentDataSource();
  v99 = *(v12 - 8);
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v84 - v16);
  v18 = *(v4 + 40);
  v97 = v2;
  v101 = a1;
  v95 = v18;
  v18(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v37 = *v17;
      v38 = MSeries.assetsEnrichedWithSeries.getter();

      if (v38)
      {
        v104 = v38;
        MEMORY[0x28223BE20](v39);
        v40 = v103;
        *(&v84 - 4) = v101;
        *(&v84 - 3) = v40;
        *(&v84 - 2) = v37;
        sub_241C93918(&qword_27EC69F20, &unk_241CFB968);
        swift_getAssociatedTypeWitness();
        sub_241CA8CE8();
        AssociatedTypeWitness = sub_241CF91E8();
      }

      else
      {
        sub_241CA8C74();
        swift_allocError();
        *v50 = 0;
        v50[1] = 0;
        swift_willThrow();
      }

      return AssociatedTypeWitness;
    }

    (*(v99 + 8))(v17, v12);
    v20 = v102;
LABEL_13:
    v42 = v96;
    v43 = v101;
    v95(v101, v4);
    v44 = swift_getEnumCaseMultiPayload();
    if (v44)
    {
      v45 = v100;
      if (v44 != 1)
      {
        swift_getAssociatedTypeWitness();
        AssociatedTypeWitness = sub_241CF92C8();
        (*(v99 + 8))(v42, v12);
        return AssociatedTypeWitness;
      }
    }

    else
    {

      v45 = v100;
    }

    (*(v6 + 32))(v45, v42, AssociatedTypeWitness);
    v46 = v103;
    v47 = v43;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v49 = sub_241CC09A0(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v49)
    {
      v94 = v6;
      v102 = &v84;
      v104 = v49;
      MEMORY[0x28223BE20](v49);
      *(&v84 - 4) = v47;
      *(&v84 - 3) = v46;
      *(&v84 - 2) = v45;
      swift_getAssociatedTypeWitness();
      sub_241CF9308();
      swift_getAssociatedTypeWitness();
      swift_getWitnessTable();
      sub_241CF91E8();
      if (v20)
      {

        (*(v94 + 8))(v45, AssociatedTypeWitness);
      }

      else
      {

        v55 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
        v93 = AssociatedTypeWitness;
        if (v55)
        {
          LOBYTE(v104) = 0;
          sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
          v56 = sub_241CF9778();

          SeriesListSortOrder.sortedAssets(for:)(v56);

          AssociatedTypeWitness = sub_241CF9778();
        }

        else
        {
          sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
          v67 = sub_241CF9778();

          v104 = v67;

          sub_241C96F5C(&v104);

          AssociatedTypeWitness = sub_241CF9778();
        }

        (*(v94 + 8))(v100, v93);
      }
    }

    else
    {
      sub_241CA8C74();
      swift_allocError();
      *v51 = 0;
      v51[1] = 0;
      swift_willThrow();
      (*(v6 + 8))(v45, AssociatedTypeWitness);
    }

    return AssociatedTypeWitness;
  }

  v90 = *(v17 + *(swift_getTupleTypeMetadata2() + 48));
  (*(v6 + 32))(v11, v17, AssociatedTypeWitness);
  v21 = v101;
  v22 = swift_getAssociatedConformanceWitness();
  v91 = v11;
  v23 = sub_241CC09A0(AssociatedTypeWitness, v22);
  v94 = v6;
  v88 = v12;
  if (!v23)
  {
    swift_getAssociatedTypeWitness();
    v23 = sub_241CF92C8();
  }

  v92 = v23;
  v89 = &v84;
  v104 = v23;
  MEMORY[0x28223BE20](v23);
  v24 = v103;
  *(&v84 - 2) = v21;
  *(&v84 - 1) = v24;
  v85 = v25;
  swift_getAssociatedTypeWitness();
  v26 = sub_241CF9308();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = AssociatedTypeWitness;
  v28 = TupleTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  v87 = v26;
  v29 = v102;
  v104 = sub_241CA2F08(sub_241CA8D4C, (&v84 - 4), v26, v28, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v30);
  MEMORY[0x28223BE20](v104);
  *(&v84 - 2) = v21;
  *(&v84 - 1) = v24;
  sub_241CF9308();
  swift_getWitnessTable();
  v31 = sub_241CF8F48();
  AssociatedTypeWitness = v29;
  v32 = v90;
  v33 = MSeries.assetsEnrichedWithSeries.getter();

  if (!v33)
  {

    v41 = v93;
    v6 = v94;
    (*(v94 + 8))(v91, v93);
    v20 = v29;
    AssociatedTypeWitness = v41;
    v12 = v88;
    goto LABEL_13;
  }

  v104 = v33;
  MEMORY[0x28223BE20](v34);
  *(&v84 - 4) = v101;
  *(&v84 - 3) = v24;
  *(&v84 - 2) = v32;
  *(&v84 - 1) = v31;
  sub_241C93918(&qword_27EC69F20, &unk_241CFB968);
  v35 = swift_getAssociatedTypeWitness();
  sub_241CA8CE8();
  v36 = sub_241CF91E8();
  v102 = v29;
  if (v29)
  {

    (*(v94 + 8))(v91, v93);
    return AssociatedTypeWitness;
  }

  AssociatedTypeWitness = v36;
  v100 = v32;

  v104 = v92;
  v53 = sub_241CF94C8();
  v54 = v91;
  if (v53)
  {

    (*(v94 + 8))(v54, v93);
    return AssociatedTypeWitness;
  }

  if (v33 >> 62)
  {
    v57 = sub_241CF97D8();
  }

  else
  {
    v57 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v103;
  v99 = v35;
  if (!v57)
  {

    v59 = MEMORY[0x277D84F90];
LABEL_45:
    v75 = sub_241CDE8A8(v59);

    v104 = v92;
    MEMORY[0x28223BE20](v76);
    v77 = v101;
    *(&v84 - 4) = v101;
    *(&v84 - 3) = v58;
    *(&v84 - 2) = v75;
    swift_getWitnessTable();
    v78 = v102;
    v79 = sub_241CF9718();

    v104 = v79;
    MEMORY[0x28223BE20](v80);
    *(&v84 - 4) = v77;
    *(&v84 - 3) = v58;
    *(&v84 - 2) = v54;
    swift_getWitnessTable();
    sub_241CF91E8();
    if (v78)
    {

      (*(v94 + 8))(v54, v93);
    }

    else
    {

      sub_241CF92B8();

      v81 = v93;
      if ((*(v85 + 72))(v93))
      {
        LOBYTE(v104) = 0;
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        v82 = sub_241CF9778();

        SeriesListSortOrder.sortedAssets(for:)(v82);

        AssociatedTypeWitness = sub_241CF9778();

        (*(v94 + 8))(v54, v81);
      }

      else
      {
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        v83 = sub_241CF9778();

        v104 = v83;

        sub_241C96F5C(&v104);

        AssociatedTypeWitness = sub_241CF9778();

        (*(v94 + 8))(v54, v93);
      }
    }

    return AssociatedTypeWitness;
  }

  v104 = MEMORY[0x277D84F90];
  sub_241C94488(0, v57 & ~(v57 >> 63), 0);
  if ((v57 & 0x8000000000000000) == 0)
  {
    v59 = v104;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v60 = 0;
      do
      {
        v61 = MEMORY[0x245CFDE40](v60, v33);
        v63 = *(v61 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v62 = *(v61 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);

        swift_unknownObjectRelease();
        v104 = v59;
        v65 = v59[2];
        v64 = v59[3];
        if (v65 >= v64 >> 1)
        {
          sub_241C94488((v64 > 1), v65 + 1, 1);
          v59 = v104;
        }

        ++v60;
        v59[2] = v65 + 1;
        v66 = &v59[2 * v65];
        v66[4] = v63;
        v66[5] = v62;
      }

      while (v57 != v60);
    }

    else
    {
      v68 = (v33 + 32);
      do
      {
        v69 = (*v68 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v71 = *v69;
        v70 = v69[1];
        v104 = v59;
        v73 = v59[2];
        v72 = v59[3];

        if (v73 >= v72 >> 1)
        {
          sub_241C94488((v72 > 1), v73 + 1, 1);
          v59 = v104;
        }

        v59[2] = v73 + 1;
        v74 = &v59[2 * v73];
        v74[4] = v71;
        v74[5] = v70;
        ++v68;
        --v57;
      }

      while (v57);
    }

    v54 = v91;
    v58 = v103;
    goto LABEL_45;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_241CA4AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v29 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_241CF9598();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v12 = a1;
  v13 = swift_checkMetadataState();
  v14 = ContentInfo.storeData.getter(v13, v5);
  if (v14)
  {
  }

  else
  {
    v26 = v8;
    v27 = v12;
    v16 = ContentInfo.id.getter(v13, v5);
    if (*(v28 + 16))
    {
      v25[1] = AssociatedConformanceWitness;
      v18 = sub_241C8E1DC(v16, v17);
      v20 = v19;

      v12 = v27;
      if (v20)
      {
        v21 = *(*(v28 + 56) + 8 * v18);
        ContentInfo.libraryData.getter(v13, v5, v11);
        v22 = *(AssociatedTypeWitness - 8);
        if ((*(v22 + 48))(v11, 1, AssociatedTypeWitness) == 1)
        {
          (*(v26 + 8))(v11, v7);
          v32 = 0;
          v30 = 0u;
          v31 = 0u;
        }

        else
        {
          *(&v31 + 1) = AssociatedTypeWitness;
          v32 = swift_getAssociatedConformanceWitness();
          v23 = sub_241CA8DEC(&v30);
          (*(v22 + 32))(v23, v11, AssociatedTypeWitness);
        }

        v24 = v21;
        static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(&v30, v21, &v33);

        sub_241C8EA54(&v30, &qword_27EC69F10, &qword_241CFB960);
        if (v34)
        {
          sub_241C914E4(&v33, v35);
          sub_241C914E4(v35, &v33);
          sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
          return swift_dynamicCast();
        }

        sub_241C8EA54(&v33, &qword_27EC69EC8, &qword_241CFD7D0);
      }
    }

    else
    {

      v12 = v27;
    }
  }

  return (*(*(v13 - 8) + 16))(v29, v12, v13);
}

uint64_t SeriesInfo.assetCount.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_241CC3C40(KeyPath, v5, a1, *(a2 + 8), &v7);

  return v7;
}

uint64_t sub_241CA4EE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 32);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  return result;
}

uint64_t sub_241CA4F8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *(*(a2 + a3 - 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_241CF92F8();
  *a4 = result;
  return result;
}

uint64_t SeriesInfo.assetMinimumCount.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

void *SeriesInfo.contentsForArtwork.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v38 - v8;
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v38 - v12);
  (*(v4 + 40))(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v9, v13, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v16 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
      if (v16)
      {
        *&v38 = &v38;
        *&v43 = v16;
        MEMORY[0x28223BE20](v16);
        *(&v38 - 2) = a1;
        *(&v38 - 1) = a2;
        swift_getAssociatedTypeWitness();
        sub_241CF9308();
        v39 = v6;
        swift_getWitnessTable();
        v17 = sub_241CF91F8();

        *&v40 = v17;
        swift_getWitnessTable();
        v18 = sub_241CF94B8();
        v38 = v43;
        v40 = v43;
        v41 = v44;
        MEMORY[0x28223BE20](v18);
        *(&v38 - 2) = a1;
        *(&v38 - 1) = a2;
        sub_241CF9608();
        sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
        swift_getWitnessTable();
        v19 = sub_241CF91E8();
        swift_unknownObjectRelease();
        (*(v39 + 8))(v9, AssociatedTypeWitness);
        return v19;
      }

      (*(v6 + 8))(v9, AssociatedTypeWitness);
      return 0;
    }

    v20 = *v13;
  }

  else
  {
    v20 = *(v13 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v6 + 8))(v13, AssociatedTypeWitness);
  }

  v21 = sub_241CA8188(@"contents-for-artwork", sub_241CF1858);

  if (!v21)
  {
    return 0;
  }

  if (v21 >> 62)
  {
    goto LABEL_31;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_10:
    v23 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x245CFDE40](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v22 = sub_241CF97D8();
        if (!v22)
        {
          goto LABEL_32;
        }

        goto LABEL_10;
      }

      type metadata accessor for MBook();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        break;
      }

      type metadata accessor for MAudiobook();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = v32;
        v34 = type metadata accessor for AudiobookInfo();
        *(&v41 + 1) = v34;
        v42 = sub_241CA86F4(&qword_27EC69ED0, type metadata accessor for AudiobookInfo);
        v30 = sub_241CA8DEC(&v40);
        *v30 = v33;
        sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
        swift_storeEnumTagMultiPayload();
        *(v30 + *(v34 + 20)) = 0;
        v31 = (v34 + 24);
        goto LABEL_21;
      }

      *(&v44 + 1) = type metadata accessor for MAsset();
      *&v43 = v25;
      sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
      sub_241CBC000(&v43);
      sub_241C8EEE8(&v43);
      v40 = 0u;
      v41 = 0u;
      v42 = 0;
      sub_241C8EA54(&v40, &qword_27EC69EC8, &qword_241CFD7D0);
LABEL_12:
      ++v23;
      if (v26 == v22)
      {
        goto LABEL_33;
      }
    }

    v28 = v27;
    v29 = type metadata accessor for BookInfo();
    *(&v41 + 1) = v29;
    v42 = sub_241CA86F4(&qword_27EC69EE0, type metadata accessor for BookInfo);
    v30 = sub_241CA8DEC(&v40);
    *v30 = v28;
    sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
    swift_storeEnumTagMultiPayload();
    v31 = (v29 + 20);
LABEL_21:
    *(v30 + *v31) = 1;
    sub_241C914E4(&v40, &v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_241CBFD98(0, v19[2] + 1, 1, v19);
    }

    v36 = v19[2];
    v35 = v19[3];
    if (v36 >= v35 >> 1)
    {
      v19 = sub_241CBFD98((v35 > 1), v36 + 1, 1, v19);
    }

    v19[2] = v36 + 1;
    sub_241C914E4(&v43, &v19[5 * v36 + 4]);
    goto LABEL_12;
  }

LABEL_32:
  v19 = MEMORY[0x277D84F90];
LABEL_33:

  return v19;
}

BOOL sub_241CA5EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 240);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, AssociatedConformanceWitness);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v11 = v6(v7, AssociatedConformanceWitness);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  return v10 < v13;
}

uint64_t sub_241CA5FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  v9[4] = swift_getAssociatedConformanceWitness();
  v7 = sub_241CA8DEC(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, a1, AssociatedTypeWitness);
  static ContentInfoUtilities.assetInfo(libraryAssetInfo:)(v9, a3);
  return sub_241C8EEE8(v9);
}

uint64_t SeriesInfo.mappedSeriesInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v7, a1, *(a2 + 8), a3);
}

unint64_t sub_241CA61B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_241CF21E4(@"mapped-series");
  if (!result)
  {
    goto LABEL_13;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v9 = result;
  v10 = sub_241CF97D8();
  result = v9;
  if (!v10)
  {
LABEL_12:

LABEL_13:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return result;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CFDE40](0);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v4 = *(result + 32);
  }

  v6 = *(v4 + 40);
  v5 = *(v4 + 48);
  v7 = *(v4 + 56);

  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  return result;
}

double sub_241CA62A8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 104);
  v8 = swift_checkMetadataState();
  v7(&v11, v8, AssociatedConformanceWitness);
  v9 = v12;
  result = *&v11;
  *a3 = v11;
  *(a3 + 16) = v9;
  return result;
}

uint64_t SeriesInfo.nextHref.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &v6);

  return v6;
}

uint64_t sub_241CA6494@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 72);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t SeriesInfo.url.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v27 = a1;
  v28 = a2;
  KeyPath = swift_getKeyPath();
  v25 = a1;
  v26 = a2;
  v13 = swift_getKeyPath();
  v14 = *(a2 + 8);
  sub_241CC4574(KeyPath, v13, a1, v14, v11);

  v15 = sub_241CF8CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) != 1)
  {
    v9 = v11;
    return (*(v16 + 32))(v24, v9, v15);
  }

  v23 = v17;
  sub_241C8EA54(v11, &qword_27EC69EF0, &unk_241CFBC20);
  (*(a2 + 40))(&v29, a1, a2);
  if (v29)
  {
    v18 = sub_241CF98C8();

    if ((v18 & 1) == 0)
    {
      v19 = 0xEB00000000736569;
      v20 = 0x7265732D6B6F6F62;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = 0x8000000241D004E0;
  v20 = 0xD000000000000010;
LABEL_8:
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_241CF96C8();

  v29 = 0xD000000000000018;
  v30 = 0x8000000241D004C0;
  MEMORY[0x245CFD860](v20, v19);

  MEMORY[0x245CFD860](47, 0xE100000000000000);
  v21 = ContentInfo.id.getter(a1, v14);
  MEMORY[0x245CFD860](v21);

  sub_241CF8CD8();

  result = v23(v9, 1, v15);
  if (result != 1)
  {
    return (*(v16 + 32))(v24, v9, v15);
  }

  __break(1u);
  return result;
}

uint64_t sub_241CA686C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(a2 + a3 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 72);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_241CA6930(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v5, a1, *(a2 + 8), &v7);

  return v7;
}

uint64_t sub_241CA69C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(*(a1 + a2 - 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 64);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CA6A74@<X0>(uint64_t *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = AssetInfo.author.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_241CA6B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_241CA6C2C(a1, a2, a3, a4, a5, a6);
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_2810D5780 & 1) == 0)
  {
    return (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  }

  sub_241CA8C74();
  swift_allocError();
  *v11 = a2;
  v11[1] = a3;
  swift_willThrow();
}

void sub_241CA6C2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_241CF9A08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C93664(a1, v37);
  sub_241CF99D8();
  sub_241CF99E8();
  (*(v13 + 8))(v16, v12);
  if (a3)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0x6E776F6E6B6E753CLL;
  }

  if (a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0xE90000000000003ELL;
  }

  if (a5)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0x6E776F6E6B6E753CLL;
  }

  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = 0xE90000000000003ELL;
  }

  v21 = qword_27EC69A98;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_241CF8E88();
  sub_241C936C0(v22, qword_27EC69E10);

  v23 = sub_241CF8E68();
  v24 = sub_241CF9518();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36[1] = a6;
    v37[0] = v26;
    v27 = v26;
    *v25 = 136315906;
    v28 = sub_241CF9A58();
    v30 = sub_241CB3A88(v28, v29, v37);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    v31 = sub_241CB3A88(v17, v18, v37);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2082;
    v32 = sub_241CB3A88(v19, v20, v37);

    *(v25 + 24) = v32;
    *(v25 + 32) = 2082;
    v33 = sub_241CF9A58();
    v35 = sub_241CB3A88(v33, v34, v37);

    *(v25 + 34) = v35;
    _os_log_impl(&dword_241C8C000, v23, v24, "%s '%{public}s' in series '%{public}s' is expected to be %{public}s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v27, -1, -1);
    MEMORY[0x245CFE970](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_241CA6F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *a3 = (*(*(AssociatedConformanceWitness + 8) + 32))(AssociatedTypeWitness);
  *(a3 + 1) = v9;
  return (*(*(AssociatedTypeWitness - 8) + 16))(&a3[v7], a1, AssociatedTypeWitness);
}

uint64_t sub_241CA7094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a3, a1, AssociatedTypeWitness);
}

uint64_t sub_241CA716C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = a2;
  v67 = a3;
  v71 = a1;
  v72 = a5;
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = v6;
  v8 = swift_getAssociatedTypeWitness();
  v68 = type metadata accessor for ContentDataSource();
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = (&v57 - v10);
  v11 = sub_241CF9598();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v57 - v14;
  v65 = AssociatedTypeWitness;
  v64 = *(AssociatedTypeWitness - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v57 - v16;
  v17 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_241CF9598();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v57 - v23;
  v25 = *(v18 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v22);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v61 = v8;
  v62 = &v57 - v30;
  v31 = *v71;
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    v73[3] = type metadata accessor for MAsset();
    v73[0] = v31;
    v36 = *&v31[OBJC_IVAR____TtC14BookFoundation9MResource_id];
    v37 = *&v31[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
    v38 = *(v66 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
    v39 = *(v66 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
    v40 = v31;
    v41 = swift_checkMetadataState();
    sub_241CA6B18(v73, v36, v37, v38, v39, v41, v72);
    return sub_241C8EEE8(v73);
  }

  v71 = v32;
  v33 = *&v31[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
  v73[0] = *&v31[OBJC_IVAR____TtC14BookFoundation9MResource_id];
  v73[1] = v33;
  v34 = v31;

  sub_241CF8F58();

  v35 = v25;
  if ((*(v25 + 48))(v24, 1, v18) == 1)
  {
    (*(v20 + 8))(v24, v19);
LABEL_8:
    v55 = v72;
    v51 = swift_checkMetadataState();
    v56 = v69;
    *v69 = v71;
    swift_storeEnumTagMultiPayload();
    (*(v70 + 48))(v56, v51);
    return (*(*(v51 - 8) + 56))(v55, 0, 1, v51);
  }

  v43 = *(v25 + 32);
  v44 = v62;
  v43(v62, v24, v18);
  (*(v35 + 16))(v29, v44, v18);
  v45 = v63;
  v46 = v65;
  v47 = swift_dynamicCast();
  v48 = v64;
  v49 = *(v64 + 56);
  if ((v47 & 1) == 0)
  {
    v49(v45, 1, 1, v46);
    (*(v35 + 8))(v44, v18);
    (*(v58 + 8))(v45, v59);
    goto LABEL_8;
  }

  v49(v45, 0, 1, v46);
  v50 = v60;
  (*(v48 + 32))(v60, v45, v46);
  v51 = swift_checkMetadataState();
  v52 = v35;
  v53 = *(swift_getTupleTypeMetadata2() + 48);
  v54 = v69;
  (*(v48 + 16))(v69, v50, v46);
  *(v54 + v53) = v71;
  swift_storeEnumTagMultiPayload();
  v55 = v72;
  (*(v70 + 48))(v54, v51);
  (*(v48 + 8))(v50, v46);
  (*(v52 + 8))(v44, v18);
  return (*(*(v51 - 8) + 56))(v55, 0, 1, v51);
}

BOOL sub_241CA7874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  v7 = *(v6 + 32);
  v8 = swift_checkMetadataState();
  v9 = v7(v8, v6);
  LOBYTE(a2) = sub_241CE0D08(v9, v10, a2);

  return (a2 & 1) == 0;
}

uint64_t sub_241CA7994@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for ContentDataSource();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v25 - v9);
  v11 = *a1;
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = swift_checkMetadataState();
    *v10 = v13;
    swift_storeEnumTagMultiPayload();
    v15 = *(v6 + 48);
    v16 = v11;
    v15(v10, v14, v6);
    return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
  }

  else
  {
    v25[3] = type metadata accessor for MAsset();
    v25[0] = v11;
    v18 = *&v11[OBJC_IVAR____TtC14BookFoundation9MResource_id];
    v19 = *&v11[OBJC_IVAR____TtC14BookFoundation9MResource_id + 8];
    v20 = a2 + OBJC_IVAR____TtC14BookFoundation9MResource_id;
    v21 = *(a2 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
    v22 = *(v20 + 8);
    v23 = v11;
    v24 = swift_checkMetadataState();
    sub_241CA6B18(v25, v18, v19, v21, v22, v24, a3);
    return sub_241C8EEE8(v25);
  }
}

uint64_t sub_241CA7BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  v53 = a2;
  v57 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = swift_getAssociatedTypeWitness();
  v51 = v8;
  v54 = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  v50 = type metadata accessor for ContentDataSource();
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &AssociatedConformanceWitness - v11;
  v12 = sub_241CF9598();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &AssociatedConformanceWitness - v14;
  v48 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v52 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &AssociatedConformanceWitness - v20;
  v22 = *(v9 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &AssociatedConformanceWitness - v24;
  v26 = *(v17 + 16);
  v26(v21, v57, v16);
  v27 = swift_dynamicCast();
  v28 = *(v22 + 56);
  if (v27)
  {
    v28(v15, 0, 1, v9);
    (*(v22 + 32))(v25, v15, v9);
    v29 = swift_checkMetadataState();
    v30 = v49;
    (*(v22 + 16))(v49, v25, v9);
    swift_storeEnumTagMultiPayload();
    v31 = v55;
    (*(v51 + 48))(v30, v29);
    (*(v22 + 8))(v25, v9);
    return (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
  }

  else
  {
    v28(v15, 1, 1, v9);
    (*(v46 + 8))(v15, v47);
    v56[3] = v16;
    v33 = sub_241CA8DEC(v56);
    v26(v33, v57, v16);
    v34 = swift_getAssociatedConformanceWitness();
    v35 = (*(*(v34 + 8) + 32))(v16);
    v37 = v36;
    v38 = swift_getAssociatedConformanceWitness();
    v39 = *(v38 + 32);
    v40 = swift_checkMetadataState();
    v41 = v39(v40, v38);
    v43 = v42;
    v44 = swift_checkMetadataState();
    sub_241CA6B18(v56, v35, v37, v41, v43, v44, v55);

    return sub_241C8EEE8(v56);
  }
}

uint64_t sub_241CA8188(void *a1, uint64_t (*a2)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_241CBC9DC();
  if (v5)
  {
    v6 = v5;
    v7 = sub_241CF9038();
    if (*(v6 + 16))
    {
      v9 = sub_241C8E1DC(v7, v8);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v6 + 56) + 8 * v9);

        v14 = a2(v13);

        return v14;
      }
    }

    else
    {
    }
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v16 = sub_241CF8E88();
  sub_241C936C0(v16, qword_27EC69E28);
  v17 = a1;
  v18 = sub_241CF8E68();
  v19 = sub_241CF9508();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315394;
    v22 = sub_241CF9038();
    v24 = sub_241CB3A88(v22, v23, &v28);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = sub_241CBE228(ObjectType);
    v27 = sub_241CB3A88(v25, v26, &v28);

    *(v20 + 14) = v27;
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v21, -1, -1);
    MEMORY[0x245CFE970](v20, -1, -1);
  }

  return 0;
}

void sub_241CA83BC(void *a1, char a2, void *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return;
  }

  LOBYTE(i) = a2;
  v6 = a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = v9;
  v12 = sub_241C8E1DC(v8, v7);
  v14 = v10[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v18) = v13;
  if (v10[3] < v17)
  {
    sub_241CC6E84(v17, i & 1);
    v19 = *a3;
    v12 = sub_241C8E1DC(v8, v7);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = sub_241CF9938();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v21 = *a3;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_11:
    v21[(v12 >> 6) + 8] |= 1 << v12;
    v27 = (v21[6] + 16 * v12);
    *v27 = v8;
    v27[1] = v7;
    *(v21[7] + 8 * v12) = v11;
    v28 = v21[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v21[2] = v29;
    v18 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return;
  }

  v26 = v12;
  sub_241CC8488();
  v12 = v26;
  v21 = *a3;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = v12;
  v23 = *(v21[7] + 8 * v12);

  v24 = v21[7];
  v25 = *(v24 + 8 * v22);
  *(v24 + 8 * v22) = v23;

  v18 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v11 = *(i - 2);
      v6 = *(i - 1);
      v34 = *i;
      v35 = *a3;

      v7 = v34;
      v36 = sub_241C8E1DC(v11, v6);
      v38 = v35[2];
      v39 = (v37 & 1) == 0;
      v16 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v16)
      {
        break;
      }

      v8 = v37;
      if (v35[3] < v40)
      {
        sub_241CC6E84(v40, 1);
        v41 = *a3;
        v36 = sub_241C8E1DC(v11, v6);
        if ((v8 & 1) != (v42 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v30 = v36;
        v31 = *(v3[7] + 8 * v36);

        v32 = v3[7];
        v33 = *(v32 + 8 * v30);
        *(v32 + 8 * v30) = v31;
      }

      else
      {
        v3[(v36 >> 6) + 8] |= 1 << v36;
        v43 = (v3[6] + 16 * v36);
        *v43 = v11;
        v43[1] = v6;
        *(v3[7] + 8 * v36) = v7;
        v44 = v3[2];
        v16 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v16)
        {
          goto LABEL_24;
        }

        v3[2] = v45;
      }

      if (!--v18)
      {
        return;
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_241CA865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_241CA4AC8(a1, v2[4], a2);
}

uint64_t sub_241CA8680@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_241CA86F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_241CA874C()
{
  result = qword_27EC69EF8;
  if (!qword_27EC69EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69EF8);
  }

  return result;
}

uint64_t sub_241CA87A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CA87F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_241CA8844(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_241CA885C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_241CA889C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_241CA88B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241CA88F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241CA8984()
{
  result = qword_27EC69F00;
  if (!qword_27EC69F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F00);
  }

  return result;
}

uint64_t sub_241CA89D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_241CA6A74(a1);
}

uint64_t sub_241CA89F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 + 40;
  result = MEMORY[0x277D84F90];
  v32 = v5;
  do
  {
    v33 = result;
    v7 = (v5 + 16 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        result = sub_241CF9938();
        __break(1u);
        return result;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_24;
      }

      v34 = i + 1;
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = a2;
      v14 = *a2;
      v35 = v14;
      v15 = sub_241C8E1DC(v10, v9);
      v17 = v14[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_25;
      }

      v21 = v16;
      if (v14[3] >= v20)
      {
        break;
      }

      sub_241CC6E98(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_241C8E1DC(v10, v9);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_27;
      }

LABEL_11:
      a2 = v13;
      v23 = v35;
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_12:
      *(v23[7] + v15) = 1;
      *a2 = v23;

      v7 += 2;
      if (v34 == v2)
      {
        return v33;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v15;
    sub_241CC849C();
    a2 = v13;
    v15 = v24;
    v23 = v35;
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_15:
    v23[(v15 >> 6) + 8] |= 1 << v15;
    v25 = (v23[6] + 16 * v15);
    *v25 = v10;
    v25[1] = v9;
    *(v23[7] + v15) = 1;
    v26 = v23[2];
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
      goto LABEL_26;
    }

    v23[2] = v27;
    *a2 = v23;

    v28 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_241C94488(0, *(v33 + 16) + 1, 1);
      a2 = v13;
      v28 = v33;
    }

    v5 = v32;
    result = v28;
    v29 = *(v28 + 16);
    v30 = *(result + 24);
    if (v29 >= v30 >> 1)
    {
      sub_241C94488((v30 > 1), v29 + 1, 1);
      a2 = v13;
      result = v33;
    }

    *(result + 16) = v29 + 1;
    v31 = result + 16 * v29;
    *(v31 + 32) = v10;
    *(v31 + 40) = v9;
    v4 = v34;
  }

  while (v34 != v2);
  return result;
}

unint64_t sub_241CA8C74()
{
  result = qword_27EC69F18;
  if (!qword_27EC69F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F18);
  }

  return result;
}

uint64_t sub_241CA8CC8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_241CA7994(a1, v2[4], a2);
}

unint64_t sub_241CA8CE8()
{
  result = qword_27EC69F28;
  if (!qword_27EC69F28)
  {
    sub_241C9452C(&qword_27EC69F20, &unk_241CFB968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F28);
  }

  return result;
}

uint64_t *sub_241CA8DEC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t LibraryBookInfo.seriesInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryBookInfo() + 20);

  return sub_241CA22A4(v3, a1);
}

uint64_t type metadata accessor for LibraryBookInfo()
{
  result = qword_27EC69F50;
  if (!qword_27EC69F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryBookInfo.seriesInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LibraryBookInfo() + 20);

  return sub_241CA2358(a1, v3);
}

uint64_t LibraryBookInfo.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LibraryBookInfo();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t LibraryBookInfo.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LibraryBookInfo() + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_241CA9034(v4, v5);
}

uint64_t sub_241CA9034(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t LibraryBookInfo.init(commonInfo:seriesInfo:kind:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = a4[1];
  v11 = type metadata accessor for LibraryBookInfo();
  v12 = a5 + v11[5];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  sub_241CA24F8(a1, a5);
  result = sub_241CA2358(a2, v12);
  *(a5 + v11[6]) = v8;
  v14 = (a5 + v11[7]);
  *v14 = v9;
  v14[1] = v10;
  return result;
}

uint64_t sub_241CA90E0(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA9124(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA9168(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA91AC(uint64_t a1)
{
  result = sub_241CA91F0(&qword_27EC69F48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CA91F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibraryBookInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_241CA9260()
{
  type metadata accessor for CommonLibraryAssetInfo();
  if (v0 <= 0x3F)
  {
    sub_241CA92FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241CA92FC()
{
  if (!qword_27EC69E90)
  {
    sub_241C9452C(&qword_27EC69E98, "2x");
    v0 = sub_241CF9598();
    if (!v1)
    {
      atomic_store(v0, &qword_27EC69E90);
    }
  }
}

uint64_t sub_241CA9360(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241CA9384(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CA93EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_241CA943C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t MResourceSet.__allocating_init(with:config:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  MResourceSet.init(with:config:)(a1, a2);
  return v4;
}

uint64_t *MResourceSet.init(with:config:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = *(a2 + 1);
  v2[6] = 0;
  v2[7] = 1;
  v2[2] = a1;
  *(v2 + 24) = v5;
  v2[4] = v6;
  v2[5] = 0;
  sub_241CA95A4();

  sub_241CD7154(a1, MEMORY[0x277D837D0], &v9);

  v7 = v2[6];
  *(v2 + 5) = v9;

  return v2;
}

unint64_t sub_241CA95A4()
{
  result = qword_27EC69F78;
  if (!qword_27EC69F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F78);
  }

  return result;
}

uint64_t sub_241CA95F8()
{
  v1 = *(v0 + 16);

  v3 = sub_241CAB1E0(v2);

  return v3;
}

uint64_t sub_241CA9644()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CA95A4();
  sub_241CD7154(v2, v3, &v5);

  return v5;
}

uint64_t sub_241CA9704()
{
  v0 = sub_241CAAE20();
  if (!v0)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v0);
  sub_241C93918(&qword_27EC69F80, &unk_241CFBAA0);
  sub_241CABA3C(&qword_27EC69F88, &qword_27EC69F80, &unk_241CFBAA0);
  v1 = sub_241CF91E8();

  return v1;
}

uint64_t sub_241CA981C()
{
  v1 = [objc_opt_self() defaultBag];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_241CA98F0;
  v3 = v0[2];

  return sub_241CA9CC4(v1, &unk_241CFBAB0, 0);
}

uint64_t sub_241CA98F0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_241CABA98, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_241CA9A2C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 104) = v4;
  *v4 = v1;
  v4[1] = sub_241CA9AE0;

  return MCatalogRequest.fetch()();
}

uint64_t sub_241CA9AE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_241C91D74;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_241CA9C08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241CA9C08()
{
  v1 = *(v0 + 120);
  v2 = [v1 responseDictionary];

  if (v2)
  {
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_241CA9CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v4[52] = *v3;
  v5 = *(*(sub_241C93918(&qword_27EC69FA0, &qword_241CFEBC0) - 8) + 64) + 15;
  v4[53] = swift_task_alloc();
  v6 = sub_241CF8B38();
  v4[54] = v6;
  v7 = *(v6 - 8);
  v4[55] = v7;
  v8 = *(v7 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241CA9DF4, 0, 0);
}

uint64_t sub_241CA9DF4()
{
  v97 = v0;
  v1 = v0[51];
  v2 = (v1 + 40);
  v3 = *(v1 + 48);
  if (!v3)
  {
    goto LABEL_23;
  }

  v90 = *(v1 + 40);

  if (!sub_241CAAE20())
  {

    v65 = v0[51];
LABEL_23:
    if (sub_241CAAE20())
    {
    }

    else
    {
      if (qword_27EC69AB0 != -1)
      {
LABEL_33:
        swift_once();
      }

      v66 = v0[51];
      v67 = sub_241CF8E88();
      sub_241C936C0(v67, qword_27EC69F60);

      v68 = sub_241CF8E68();
      v69 = sub_241CF9508();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v96 = v71;
        *v70 = 136315138;
        v72 = *(v1 + 48);
        v0[44] = *(v1 + 40);
        v0[45] = v72;

        sub_241C93918(&qword_27EC69FA8, &qword_241CFBBE0);
        v73 = sub_241CF9058();
        v75 = sub_241CB3A88(v73, v74, &v96);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_241C8C000, v68, v69, "Tried to fetchNext with empty resources for href: %s", v70, 0xCu);
        sub_241C8EEE8(v71);
        MEMORY[0x245CFE970](v71, -1, -1);
        MEMORY[0x245CFE970](v70, -1, -1);
      }
    }

    v76 = *(v1 + 48);
    *v2 = 0;
    v2[1] = 0;

    v78 = v0[56];
    v77 = v0[57];
    v79 = v0[53];

    v80 = v0[1];

    return v80();
  }

  v88 = v3;
  v4 = v0[55];
  v5 = v0[51];
  v6 = v0[48];

  v7 = sub_241CDE940(&unk_2853DB480);
  sub_241C8EA54(&unk_2853DB4A0, &qword_27EC69FB0, &qword_241CFBBE8);
  v87 = v5;
  v86 = *(v5 + 24);
  v8 = MEMORY[0x277D84F90];
  v85 = sub_241CE0390(MEMORY[0x277D84F90]);
  v9 = v6;
  v84 = sub_241CDE8A8(v8);
  v89 = v8;
  v10 = sub_241CDE8A8(v8);
  v11 = v7 + 64;
  v12 = -1;
  v13 = -1 << *(v7 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v7 + 64);
  v1 = (63 - v13) >> 6;
  v91 = (v4 + 48);
  v92 = (v4 + 56);
  v81 = v4;
  v82 = (v4 + 32);
  v83 = v10;
  v94 = v7;

  v15 = 0;
  v93 = v7 + 64;
LABEL_6:
  v16 = v15;
  if (!v14)
  {
    goto LABEL_8;
  }

  do
  {
    v15 = v16;
LABEL_11:
    v17 = v0[53];
    v18 = v0[54];
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = (v15 << 10) | (16 * v19);
    v21 = (*(v94 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(v94 + 56) + v20);
    v25 = *v24;
    v2 = v24[1];

    sub_241CF8B18();
    (*v92)(v17, 0, 1, v18);

    if ((*v91)(v17, 1, v18) != 1)
    {
      v27 = v0[56];
      v26 = v0[57];
      v28 = v0[54];
      v2 = v0;
      v29 = *v82;
      (*v82)(v26, v0[53], v28);
      v29(v27, v26, v28);
      v30 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_241CBF9B0(0, v89[2] + 1, 1, v89);
      }

      v11 = v93;
      v32 = v30[2];
      v31 = v30[3];
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v36 = sub_241CBF9B0(v31 > 1, v32 + 1, 1, v30);
        v33 = v32 + 1;
        v30 = v36;
      }

      v34 = v2[56];
      v35 = v2[54];
      v30[2] = v33;
      v89 = v30;
      v29(v30 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v32, v34, v35);
      v0 = v2;
      goto LABEL_6;
    }

    sub_241C8EA54(v0[53], &qword_27EC69FA0, &qword_241CFEBC0);
    v16 = v15;
    v11 = v93;
  }

  while (v14);
  while (1)
  {
LABEL_8:
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v15 >= v1)
    {
      break;
    }

    v14 = *(v11 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[51];
  v38 = v0[48];

  v0[24] = v85;
  v0[25] = v84;
  v0[26] = v83;
  v0[27] = v89;
  v0[28] = v38;
  *(v0 + 232) = v86;
  v0[30] = v90;
  v0[31] = v88;
  v39 = *(v87 + 24);
  v40 = *(v37 + 32);
  v41 = objc_opt_self();
  sub_241C9300C((v0 + 24), (v0 + 32));
  v42 = v40;
  v43 = [v41 defaultBag];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 defaultSessionConfiguration];
  v47 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

  v48 = v0[49];
  v49 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v50 = v45;
  v51 = v47;
  v52 = sub_241CF9008();

  v53 = [v49 initWithClientIdentifier:v52 bag:v50];

  v54 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v51 setProtocolHandler_];

  v55 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v53 bag:v50];
  [v55 setAccount_];

  v56 = [objc_opt_self() currentProcess];
  [v55 setClientInfo_];

  v57 = *(v0 + 14);
  v58 = *(v0 + 15);
  *(v0 + 4) = v57;
  *(v0 + 5) = v58;
  v60 = *(v0 + 12);
  v59 = *(v0 + 13);
  *(v0 + 2) = v60;
  *(v0 + 3) = v59;
  v0[2] = v55;
  v0[3] = v51;
  v0[12] = v50;
  v0[23] = v50;
  *(v0 + 15) = v60;
  *(v0 + 21) = v58;
  *(v0 + 19) = v57;
  *(v0 + 17) = v59;
  *(v0 + 13) = *(v0 + 1);
  v95 = (v48 + *v48);
  v61 = v48[1];
  v62 = swift_task_alloc();
  v0[58] = v62;
  *v62 = v0;
  v62[1] = sub_241CAA6B8;
  v63 = v0[50];

  return v95(v0 + 13);
}

uint64_t sub_241CAA6B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 464);
  v7 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v5 = sub_241CAA990;
  }

  else
  {
    v5 = sub_241CAA7CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241CAA7CC()
{
  if (*(v0 + 472))
  {
    v1 = *(v0 + 408);
    v2 = sub_241CAAF4C(*(v0 + 472));
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 408);
      v5 = sub_241CAAE94((v0 + 320));
      if (*v6)
      {
        sub_241CD84C0(v3);
      }

      else
      {
      }

      v5((v0 + 320), 0);
    }

    v12 = *(v0 + 472);
    v14 = *(v0 + 408);
    v13 = *(v0 + 416);
    *(v0 + 488) = 2;
    sub_241CA95A4();
    sub_241CD7154(v12, MEMORY[0x277D837D0], v0 + 368);
    sub_241C93068(v0 + 192);
    sub_241C930BC(v0 + 16);

    v15 = *(v14 + 48);
    *(v14 + 40) = *(v0 + 368);

    v17 = *(v0 + 448);
    v16 = *(v0 + 456);
    v18 = *(v0 + 424);

    v11 = *(v0 + 8);
  }

  else
  {
    sub_241CAB9BC();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
    sub_241C930BC(v0 + 16);
    sub_241C93068(v0 + 192);
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 424);

    v11 = *(v0 + 8);
  }

  return v11();
}

uint64_t sub_241CAA990()
{
  sub_241C93068((v0 + 24));
  sub_241C930BC((v0 + 2));
  v1 = v0[60];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[53];

  v5 = v0[1];

  return v5();
}

uint64_t sub_241CAAA40()
{
  if (*(v0[2] + 48))
  {
    v1 = [objc_opt_self() defaultBag];
    v0[3] = v1;
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_241CAAB54;
    v3 = v0[2];

    return sub_241CA9CC4(v1, &unk_241CFBAB0, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_241CAAB54()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_241CAAC70;
  }

  else
  {

    v4 = sub_241CABA90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CAAC70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_241CAACE0()
{
  v1 = *v0;
  sub_241CF9998();
  v2 = *&aData_3[8 * v1];
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAAD3C()
{
  v1 = *&aData_3[8 * *v0];
  sub_241CF90B8();
}

uint64_t sub_241CAAD7C()
{
  v1 = *v0;
  sub_241CF9998();
  v2 = *&aData_3[8 * v1];
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAADD4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_241CAB970();
  *a2 = result;
  return result;
}

uint64_t sub_241CAAE20()
{
  v1 = *(v0 + 56);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = *(v0 + 16);

    v2 = sub_241CAAF4C(v4);

    v5 = *(v0 + 56);
    *(v0 + 56) = v2;

    sub_241CAB458(v5);
  }

  sub_241CABA10(v1);
  return v2;
}

uint64_t (*sub_241CAAE94(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_241CAAE20();
  return sub_241CAAEDC;
}

uint64_t sub_241CAAEDC(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;
  if (a2)
  {

    sub_241CAB458(v3);
  }

  else
  {

    return sub_241CAB458(v3);
  }
}

uint64_t sub_241CAAF4C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  LOBYTE(v13) = 0;
  v5 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CA95A4();
  result = sub_241CD7154(a1, v5, &v14);
  v7 = v14;
  if (!v14)
  {
    return 0;
  }

  v8 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_10:

    return v8;
  }

  v10 = 0;
  while (v10 < *(v7 + 16))
  {
    v13 = *(v7 + 32 + 8 * v10);

    sub_241CAB0F4(&v13, v2, &v12);

    if (v12)
    {
      MEMORY[0x245CFD9D0](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241CF92A8();
      }

      result = sub_241CF92E8();
      v8 = v14;
    }

    if (v9 == ++v10)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241CAB0F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_241CA95A4();
  sub_241CD7154(v5, MEMORY[0x277D837D0], &v12);
  if (v13 && (v6 = static MResourceType.classType(for:)(v12, v13), , v6))
  {
    v7 = *(a2 + 32);
    LOBYTE(v12) = *(a2 + 24);
    v13 = v7;
    v8 = *(v6 + 128);
    v9 = v7;

    result = v8(v10, &v12);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_241CAB1E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CA95A4();
  v6 = sub_241CD7154(a1, v5, &v9);
  if (!v9)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v6);
  type metadata accessor for MSparseResource();
  sub_241CABA3C(&qword_27EC69FC0, &qword_27EC69F98, &qword_241CFF7D0);
  v7 = sub_241CF91E8();

  return v7;
}

id sub_241CAB34C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = swift_dynamicCastClass();
  v7 = result;
  if (result)
  {
    result = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_241CAB39C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for MSparseResource();
  v6 = *(a2 + 32);
  v10[0] = *(a2 + 24);
  v11 = v6;
  v7 = v6;

  result = sub_241CD39B4(v8, v10);
  *a3 = result;
  return result;
}

uint64_t MResourceSet.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  sub_241CAB458(*(v0 + 56));
  return v0;
}

uint64_t sub_241CAB458(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t MResourceSet.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  sub_241CAB458(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of MResourceSet.fetchNext()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241CABA94;

  return v6();
}

uint64_t dispatch thunk of MResourceSet.fetchAll()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241CAB794;

  return v6();
}

uint64_t sub_241CAB794()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_241CAB89C()
{
  result = qword_27EC69F90;
  if (!qword_27EC69F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69F90);
  }

  return result;
}

uint64_t sub_241CAB8F0()
{
  v0 = sub_241CF8E88();
  sub_241CA20B4(v0, qword_27EC69F60);
  sub_241C936C0(v0, qword_27EC69F60);
  return sub_241CF8E78();
}

uint64_t sub_241CAB970()
{
  v0 = sub_241CF9838();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_241CAB9BC()
{
  result = qword_27EC69FB8;
  if (!qword_27EC69FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC69FB8);
  }

  return result;
}

uint64_t sub_241CABA10(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_241CABA3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_241C9452C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void NSBundle.path(forExactResource:ofType:)()
{
  sub_241CF96D8();
  v1 = sub_241CF9008();

  sub_241CF96D8();
  v2 = sub_241CF9008();

  v3 = [v0 pathForResource:v1 ofType:v2];

  if (v3)
  {
    sub_241CF9038();
  }

  else
  {
    __break(1u);
  }
}

uint64_t URL.init(object:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v12[0] = 0;
      v12[1] = 0;
      sub_241CF9028();
    }
  }

  sub_241CF8CD8();

  v8 = sub_241CF8CF8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8))
  {
    sub_241CABCEC(v7);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t sub_241CABCEC(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t URL.isEquivalent(to:)()
{
  v0 = sub_241CF8CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_241CF8C68();
  sub_241CF8C78();
  v14 = *(v1 + 8);
  v14(v13, v0);
  sub_241CF8C68();
  sub_241CF8C78();
  v14(v8, v0);
  v15 = sub_241CF8CA8();
  v14(v5, v0);
  v14(v11, v0);
  return v15 & 1;
}

Swift::String __swiftcall URL.pathWithoutLeadingSlash()()
{
  v0 = sub_241CF8C88();
  v1 = v0;
  v2 = *(v0 + 2);
  if (v2)
  {
    if (*(v0 + 4) == 47 && *(v0 + 5) == 0xE100000000000000)
    {
      goto LABEL_12;
    }

    if (sub_241CF98C8())
    {
      v2 = *(v1 + 2);
      if (v2)
      {
        goto LABEL_12;
      }

      while (1)
      {
        __break(1u);
LABEL_9:
        if ((sub_241CF98C8() & 1) == 0)
        {
          break;
        }

        v2 = *(v1 + 2);
        while (v2)
        {
LABEL_12:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v2 - 1) > *(v1 + 3) >> 1)
          {
            v1 = sub_241CBFC8C(isUniquelyReferenced_nonNull_native, v2, 1, v1);
          }

          sub_241CAC18C((v1 + 32));
          v5 = *(v1 + 2);
          v6 = memmove(v1 + 32, v1 + 48, 16 * v5 - 16);
          v2 = v5 - 1;
          *(v1 + 2) = v5 - 1;
          if (v5 < 2)
          {
            __break(1u);
            goto LABEL_23;
          }

          if (*(v1 + 4) != 47 || *(v1 + 5) != 0xE100000000000000)
          {
            goto LABEL_9;
          }
        }
      }
    }

    sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
    sub_241CAC078();
    v2 = sub_241CF8FA8();
    v9 = v8;
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v9 = 0xE000000000000000;
  }

  v6 = v2;
  v7 = v9;
LABEL_23:
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_241CAC078()
{
  result = qword_2810D56D8;
  if (!qword_2810D56D8)
  {
    sub_241C9452C(&qword_27EC69FC8, &unk_241CFBC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D56D8);
  }

  return result;
}

Swift::String __swiftcall URL.pathQueryAndFragmentWithoutLeadingSlash()()
{
  v0 = URL.pathWithoutLeadingSlash()();
  v1 = sub_241CF8CC8();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    MEMORY[0x245CFD860](63, 0xE100000000000000);
    MEMORY[0x245CFD860](v3, v4);
  }

  v5 = sub_241CF8CE8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    MEMORY[0x245CFD860](35, 0xE100000000000000);
    MEMORY[0x245CFD860](v7, v8);
  }

  countAndFlagsBits = v0._countAndFlagsBits;
  object = v0._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

_OWORD *sub_241CAC1E0(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_241C8E30C(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_241CB4030(v17, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_241C8EA54(a1, &qword_27EC6A0B0, &qword_241CFE350);
    v8 = *v2;
    v9 = sub_241CF45F0(a2 & 1);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_241CC8604();
        v14 = v16;
      }

      sub_241C8E30C((*(v14 + 56) + 32 * v11), v17);
      sub_241CF4818(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_241C8EA54(v17, &qword_27EC6A0B0, &qword_241CFE350);
  }

  return result;
}

uint64_t sub_241CAC2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_241CB415C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_241C8E1DC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_241CC8780();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_241CF49AC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_241CAC3DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x7475626972747461;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1717924456;
  if (a1 != 6)
  {
    v6 = 0xD000000000000011;
    v5 = 0x8000000241D00100;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (a1 != 4)
  {
    v8 = 25705;
    v7 = 0xE200000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x7377656976;
  if (a1 != 2)
  {
    v10 = 1635018093;
    v9 = 0xE400000000000000;
  }

  v11 = 0x6E6F6974616C6572;
  v12 = 0xED00007370696873;
  if (!a1)
  {
    v11 = 0x7475626972747461;
    v12 = 0xEA00000000007365;
  }

  if (a1 <= 1u)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE400000000000000;
        if (v13 != 1717924456)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x8000000241D00100;
        if (v13 != 0xD000000000000011)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE400000000000000;
      if (v13 != 1701869940)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE200000000000000;
      if (v13 != 25705)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x7377656976)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE400000000000000;
      v3 = 1635018093;
    }

    else if (a2)
    {
      v2 = 0xED00007370696873;
      if (v13 != 0x6E6F6974616C6572)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_241CF98C8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_241CAC608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000676E697461;
  v3 = 0x52746E65746E6F63;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x65726564724F7369;
    v14 = 0xE900000000000064;
    if (a1 == 2)
    {
      v13 = 0x52746E65746E6F63;
      v14 = 0xED0000676E697461;
    }

    v15 = 0x8000000241D00200;
    v16 = 0xD000000000000011;
    if (a1)
    {
      v16 = 0xD000000000000010;
      v15 = 0x8000000241D00220;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x8000000241D00260;
    v6 = 0xD00000000000001ALL;
    v7 = 0xE400000000000000;
    v8 = 1701667182;
    if (a1 != 7)
    {
      v8 = 7107189;
      v7 = 0xE300000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x8000000241D00240;
    v10 = 0xD000000000000013;
    if (a1 != 4)
    {
      v10 = 1684957547;
      v9 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x8000000241D00220;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x8000000241D00200;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 2)
    {
      v2 = 0xE900000000000064;
      if (v11 != 0x65726564724F7369)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x8000000241D00240;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1684957547)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0x8000000241D00260;
      if (v11 != 0xD00000000000001ALL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1701667182)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v2 = 0xE300000000000000;
    v3 = 7107189;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_241CF98C8();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_241CAC8D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x6449746E65726170;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x614E746E65726170;
    }

    else
    {
      v3 = 7107189;
    }

    if (v2 == 3)
    {
      v4 = 0xEA0000000000656DLL;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6449746E65726170)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA0000000000656DLL;
    if (v3 != 0x614E746E65726170)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    if (v3 != 7107189)
    {
LABEL_34:
      v7 = sub_241CF98C8();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_241CACA4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7959906;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006461;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6F6C6E776F646572;
    }

    else
    {
      v6 = 0x726564726F657270;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE300000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 7628135;
    }

    else
    {
      v6 = 7959906;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x6F6C6E776F646572;
  v9 = 0xEA00000000006461;
  if (a2 != 2)
  {
    v8 = 0x726564726F657270;
    v9 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 7628135;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_241CF98C8();
  }

  return v12 & 1;
}

uint64_t sub_241CACB7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 1702521203;
  if (a1 != 5)
  {
    v4 = 1701869940;
  }

  v5 = 0x726F466563697270;
  v6 = 0xEE0064657474616DLL;
  if (a1 != 3)
  {
    v5 = 0x6563697270;
    v6 = 0xE500000000000000;
  }

  if (a1 > 4u)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  v8 = 0xD000000000000013;
  v9 = 0x8000000241D00090;
  if (a1 != 1)
  {
    v8 = 0x6E6F697461727564;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737465737361;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000241D00090;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6E6F697461727564)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x737465737361)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    v12 = 0xE400000000000000;
    if (a2 == 5)
    {
      if (v10 != 1702521203)
      {
        goto LABEL_40;
      }
    }

    else if (v10 != 1701869940)
    {
LABEL_40:
      v13 = sub_241CF98C8();
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEE0064657474616DLL;
    if (v10 != 0x726F466563697270)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6563697270)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_241CACD90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 0x656E696C676174;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x647261646E617473;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x74726F6873;
  if (a2 != 2)
  {
    v8 = 0x656E696C676174;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x647261646E617473;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CACEC4()
{
  v0 = sub_241CF96D8();
  v2 = v1;
  if (v0 == sub_241CF96D8() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_241CF98C8();
  }

  return v4 & 1;
}

uint64_t sub_241CAD008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000067;
  v3 = 0x6E69646E65637361;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x69646E6563736564;
    }

    else
    {
      v5 = 0x6E69646E65637361;
    }

    if (v4)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x44657361656C6572;
    v6 = 0xEB00000000657461;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x72616C75706F70;
    }

    else
    {
      v5 = 0x656C746974;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0x44657361656C6572;
  v8 = 0xEB00000000657461;
  v9 = 0xE700000000000000;
  v10 = 0x72616C75706F70;
  if (a2 != 3)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x69646E6563736564;
    v2 = 0xEA0000000000676ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_241CF98C8();
  }

  return v13 & 1;
}

uint64_t sub_241CAD19C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x736B6F6F6269;
    }

    if (v2)
    {
      v3 = 0x8000000241D00130;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x8000000241D00150;
    v4 = 0xD000000000000016;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000241D00170;
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0x8000000241D00190;
    v4 = 0xD000000000000015;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = 0x736B6F6F6269;
    }

    if (a2)
    {
      v6 = 0x8000000241D00130;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0x8000000241D00150;
    if (v4 != 0xD000000000000016)
    {
LABEL_34:
      v8 = sub_241CF98C8();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000241D00170;
    }

    else
    {
      v6 = 0x8000000241D00190;
    }

    if (v4 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_241CAD32C(char a1, char a2)
{
  v12 = a1;
  v11 = a2;
  BooksFeatureFlag.rawValue.getter(&v10);
  BooksFeatureFlag.rawValue.getter(&v9);
  v2 = sub_241CF96D8();
  v4 = v3;
  if (v2 == sub_241CF96D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_241CF98C8();
  }

  return v7 & 1;
}

uint64_t sub_241CAD3F4(char a1, char a2)
{
  if (*&aData_4[8 * a1] == *&aData_4[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_241CF98C8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_241CAD45C()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAD578()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAD6A8()
{
  if (*(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache);
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
    *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache) = MEMORY[0x277D84F98];
  }

  return v1;
}

uint64_t MAsset.CacheKey.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t MAsset.artistName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_artistName);
  v2 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_artistName + 8);

  return v1;
}

id sub_241CAD7F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_241CF9008();

  return v6;
}

uint64_t MAsset.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_name);
  v2 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_name + 8);

  return v1;
}

uint64_t MAsset.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BookFoundation6MAsset_url;
  v4 = sub_241CF8CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static MAsset.requiredAttributeKeys.getter()
{
  v21 = MEMORY[0x277D84F90];
  sub_241C94488(0, 4, 0);
  v0 = 0;
  v1 = v21;
  v2 = 0x8000000241D00000;
  v3 = 0x8000000241CFFFB0;
  v4 = 0x8000000241CFFF80;
  v5 = 0x8000000241CFFF20;
  v6 = 0xEB00000000656C61;
  v7 = 0x8000000241CFFEF0;
  do
  {
    v8 = 0xEA0000000000656DLL;
    v9 = 0x614E747369747261;
    switch(byte_2853DB540[v0 + 32])
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x6B726F77747261;
        break;
      case 2:
        v9 = 0x636F4C6F69647561;
        v8 = v6;
        break;
      case 3:
        v9 = 0xD000000000000012;
        v8 = v7;
        break;
      case 4:
        v8 = 0xED0000656C746954;
        v9 = 0x6B726F576B6F6F62;
        break;
      case 5:
        v9 = 0xD000000000000015;
        v8 = v5;
        break;
      case 6:
        v8 = 0xE900000000000073;
        v9 = 0x6D61726150797562;
        break;
      case 7:
        v8 = 0xED0000676E697461;
        v9 = 0x52746E65746E6F63;
        break;
      case 8:
        v8 = 0xEB000000006E6F69;
        v9 = 0x7470697263736564;
        break;
      case 9:
        v8 = 0xEE007365746F4E6CLL;
        v9 = 0x6169726F74696465;
        break;
      case 0xA:
        v8 = 0xEB00000000646E69;
        v9 = 0x4B6E6F6974696465;
        break;
      case 0xB:
        v8 = 0xEA00000000007365;
        v9 = 0x6D614E65726E6567;
        break;
      case 0xC:
        v9 = 0xD000000000000016;
        v8 = v4;
        break;
      case 0xD:
        v8 = 0xE700000000000000;
        v9 = 0x6B6F6F42497369;
        break;
      case 0xE:
        v8 = 0xE400000000000000;
        v9 = 1196651369;
        break;
      case 0xF:
        v8 = 0xE400000000000000;
        v9 = 1701667182;
        break;
      case 0x10:
        v8 = 0xE600000000000000;
        v9 = 0x73726566666FLL;
        break;
      case 0x11:
        v9 = 0xD000000000000018;
        v8 = v3;
        break;
      case 0x12:
        v8 = 0xE800000000000000;
        v9 = 0x7377656976657270;
        break;
      case 0x13:
        v8 = 0xED0000656C61636FLL;
        v9 = 0x4C7972616D697270;
        break;
      case 0x14:
        v8 = 0xED00006F666E4972;
        v9 = 0x656873696C627570;
        break;
      case 0x15:
        v8 = v6 + 2048;
        v9 = 0x44657361656C6572;
        break;
      case 0x16:
        v8 = 0xEA00000000006F66;
        v9 = 0x6E49736569726573;
        break;
      case 0x17:
        v9 = 0xD00000000000001ALL;
        v8 = v2;
        break;
      case 0x18:
        v8 = 0xEA0000000000676ELL;
        v9 = 0x6974615272657375;
        break;
      case 0x19:
        v8 = 0xE300000000000000;
        v9 = 7107189;
        break;
      case 0x1A:
        v8 = 0xE700000000000000;
        v9 = 0x6E6F6973726576;
        break;
      case 0x1B:
        v8 = 0xEE0079726F747369;
        v9 = 0x486E6F6973726576;
        break;
      default:
        break;
    }

    v22 = v1;
    v11 = *(v1 + 16);
    v10 = *(v1 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v6;
      v19 = v3;
      v20 = v2;
      v17 = v5;
      v18 = v4;
      v16 = v7;
      sub_241C94488((v10 > 1), v11 + 1, 1);
      v7 = v16;
      v5 = v17;
      v4 = v18;
      v3 = v19;
      v6 = v13;
      v2 = v20;
      v1 = v22;
    }

    ++v0;
    *(v1 + 16) = v11 + 1;
    v12 = v1 + 16 * v11;
    *(v12 + 32) = v9;
    *(v12 + 40) = v8;
  }

  while (v0 != 4);
  v14 = sub_241CDE8A8(v1);

  return v14;
}

unint64_t sub_241CADE44(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x636F4C6F69647561;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6B726F576B6F6F62;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6D61726150797562;
      break;
    case 7:
      result = 0x52746E65746E6F63;
      break;
    case 8:
      result = 0x7470697263736564;
      break;
    case 9:
      result = 0x6169726F74696465;
      break;
    case 10:
      result = 0x4B6E6F6974696465;
      break;
    case 11:
      result = 0x6D614E65726E6567;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x6B6F6F42497369;
      break;
    case 14:
      result = 1196651369;
      break;
    case 15:
      result = 1701667182;
      break;
    case 16:
      result = 0x73726566666FLL;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x7377656976657270;
      break;
    case 19:
      result = 0x4C7972616D697270;
      break;
    case 20:
      result = 0x656873696C627570;
      break;
    case 21:
      result = 0x44657361656C6572;
      break;
    case 22:
      result = 0x6E49736569726573;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 24:
      result = 0x6974615272657375;
      break;
    case 25:
      result = 7107189;
      break;
    case 26:
      result = 0x6E6F6973726576;
      break;
    case 27:
      result = 0x486E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

id MAsset.init(with:config:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_241CF8CF8();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a2;
  v15 = *(a2 + 1);
  v16 = OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache;
  *(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache) = 0;
  v55 = 0;

  v17 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v17, &v53);

  v18 = v53;
  if (!v53)
  {

    goto LABEL_12;
  }

  v51 = v15;
  v52 = v16;
  v55 = 0;
  sub_241CB4490();
  sub_241CD7154(v18, MEMORY[0x277D837D0], &v53);
  v19 = v54;
  if (!v54)
  {
LABEL_11:

    v16 = v52;
    goto LABEL_12;
  }

  v47 = v53;
  v55 = 1;
  sub_241CD7154(v18, v17, &v53);
  v20 = v53;
  if (!v53)
  {
LABEL_10:

    goto LABEL_11;
  }

  v55 = 15;
  sub_241CD7154(v18, MEMORY[0x277D837D0], &v53);
  if (!v54)
  {

    goto LABEL_10;
  }

  v46 = v54;
  v45 = v53;
  v55 = 25;
  sub_241CD7154(v18, MEMORY[0x277D837D0], &v53);

  if (!v54)
  {

    goto LABEL_11;
  }

  sub_241CF8CD8();

  v21 = v49;
  v22 = v50;
  v23 = (*(v49 + 48))(v10, 1, v50);
  v16 = v52;
  if (v23 != 1)
  {
    (*(v21 + 32))(v14, v10, v22);
    v40 = (v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_artistName);
    *v40 = v47;
    v40[1] = v19;
    *(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork) = v20;
    *(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_kind) = 2;
    v41 = (v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_name);
    v42 = v46;
    *v41 = v45;
    v41[1] = v42;
    (*(v21 + 16))(v3 + OBJC_IVAR____TtC14BookFoundation6MAsset_url, v14, v22);
    LOBYTE(v53) = v48;
    v54 = v51;
    v43 = MResource.init(with:config:)(a1, &v53);
    (*(v21 + 8))(v14, v22);
    return v43;
  }

  sub_241C8EA54(v10, &qword_27EC69EF0, &unk_241CFBC20);
LABEL_12:
  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v24 = sub_241CF8E88();
  sub_241C936C0(v24, qword_27EC69E28);

  v25 = sub_241CF8E68();
  v26 = sub_241CF9508();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v53 = v28;
    *v27 = 136315394;
    v29 = sub_241CAE848(ObjectType);
    v31 = sub_241CB3A88(v29, v30, &v53);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = sub_241CF8F08();
    v34 = v33;

    v35 = sub_241CB3A88(v32, v34, &v53);

    *(v27 + 14) = v35;
    _os_log_impl(&dword_241C8C000, v25, v26, "Invalid data for %s: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CFE970](v28, -1, -1);
    MEMORY[0x245CFE970](v27, -1, -1);
  }

  else
  {
  }

  v36 = *(v3 + v16);

  type metadata accessor for MAsset();
  v37 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v38 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_241CAE848(uint64_t a1)
{
  (*(a1 + 136))(&v6);
  v1 = 0x6F622D6F69647561;
  v2 = 0x736B6F6F62;
  v3 = 0x7265732D6B6F6F62;
  if (v6 != 4)
  {
    v3 = 0x7365726E6567;
  }

  if (v6 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (v6 != 1)
  {
    v4 = 0x73726F68747561;
  }

  if (v6)
  {
    v1 = v4;
  }

  if (v6 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_241CAE9F0()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v2);
  return v2 == 3;
}

BOOL sub_241CAEA94()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v2);
  return v2 == 0;
}

uint64_t sub_241CAEB00()
{
  v1 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache);

  v2 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_artistName + 8);

  v3 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork);

  v4 = *(v0 + OBJC_IVAR____TtC14BookFoundation6MAsset_name + 8);

  v5 = OBJC_IVAR____TtC14BookFoundation6MAsset_url;
  v6 = sub_241CF8CF8();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

id MAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MAsset.cache(object:for:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_241C93664(a1, v7);
  v6 = sub_241CAD6A8();
  sub_241CAC1E0(v7, v3);
  v4 = *(v2 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache);
  *(v2 + OBJC_IVAR____TtC14BookFoundation6MAsset____lazy_storage___cache) = v6;
}

double MAsset.cachedValue(for:)@<D0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_241CAD6A8();
  if (*(v4 + 16) && (v5 = sub_241CF45F0(v3), (v6 & 1) != 0))
  {
    sub_241C93664(*(v4 + 56) + 32 * v5, a2);
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_241CAED94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65636E6575716573;
  v4 = 0xEE007265626D754ELL;
  v5 = 0x8000000241CFFEB0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x8000000241CFFEB0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x614E736569726573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA0000000000656DLL;
  }

  v8 = 0x65636E6575716573;
  if (*a2 == 1)
  {
    v5 = 0xEE007265626D754ELL;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x614E736569726573;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEA0000000000656DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CAEEA8()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAEF60()
{
  *v0;
  *v0;
  sub_241CF90B8();
}

uint64_t sub_241CAF004()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAF0B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_241CB4704();
  *a2 = result;
  return result;
}

void sub_241CAF0E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656DLL;
  v4 = 0xEE007265626D754ELL;
  v5 = 0x65636E6575716573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000241CFFEB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614E736569726573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t MAsset.sequenceNumber.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  v2 = sub_241CAF20C(1, v1);

  return v2;
}

uint64_t sub_241CAF20C(char a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0A8, &unk_241CFC460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (a1)
  {
    v8 = 0x65636E6575716573;
    if (a1 == 1)
    {
      v9 = 0xEE007265626D754ELL;
    }

    else
    {
      v8 = 0xD000000000000014;
      v9 = 0x8000000241CFFEB0;
    }
  }

  else
  {
    v9 = 0xEA0000000000656DLL;
    v8 = 0x614E736569726573;
  }

  v18[1] = v8;
  v18[2] = v9;
  sub_241CF9668();
  if (!*(a2 + 16) || (v10 = sub_241CF45AC(v19), (v11 & 1) == 0))
  {
    sub_241C93610(v19);
    goto LABEL_13;
  }

  sub_241C93664(*(a2 + 56) + 32 * v10, v20);
  sub_241C93610(v19);
  sub_241C93664(v20, v19);
  if (!swift_dynamicCast())
  {
    sub_241C8EEE8(v20);
    goto LABEL_13;
  }

  v12 = sub_241CF8D98();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = sub_241CF9588();
  v15 = v14;

  sub_241C8EA54(v7, &qword_27EC6A0A8, &unk_241CFC460);
  sub_241C8EEE8(v20);
  if ((v15 & 0x100000000) != 0)
  {
LABEL_13:
    result = 0;
    v16 = 1;
    goto LABEL_14;
  }

  v16 = 0;
  result = v13;
LABEL_14:
  v19[0] = v16;
  return result;
}

id sub_241CAF458(void *a1)
{
  swift_getObjectType();
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x140);
  v3 = a1;
  v4 = v2();
  sub_241CB44E4();
  sub_241CD7154(v4, MEMORY[0x277D837D0], v7);

  if (v7[1])
  {
    v5 = sub_241CF9008();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_241CAF574()
{
  swift_getObjectType();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  sub_241CB44E4();
  sub_241CD7154(v1, MEMORY[0x277D837D0], &v3);

  return v3;
}

uint64_t sub_241CAF638(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_241CADE44(*a1);
  v5 = v4;
  if (v3 == sub_241CADE44(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_241CF98C8();
  }

  return v8 & 1;
}

uint64_t sub_241CAF6C0()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CADE44(v1);
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAF724()
{
  sub_241CADE44(*v0);
  sub_241CF90B8();
}

uint64_t sub_241CAF778()
{
  v1 = *v0;
  sub_241CF9998();
  sub_241CADE44(v1);
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CAF7D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_241CB4750();
  *a2 = result;
  return result;
}

unint64_t sub_241CAF808@<X0>(unint64_t *a1@<X8>)
{
  result = sub_241CADE44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MAsset.isExplicit.getter()
{
  result = [v0 contentRating];
  if (result)
  {
    v2 = result;
    v3 = sub_241CF9038();
    v5 = v4;

    if (v3 == 0x746963696C707865 && v5 == 0xE800000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_241CF98C8();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t MAsset.genreName.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v5);

  if (!v5)
  {
    return 0;
  }

  if (!v5[2])
  {

    return 0;
  }

  v2 = v5[4];
  v3 = v5[5];

  return v2;
}

uint64_t MAsset.buyParams.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69F98, &qword_241CFF7D0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, &v4);

  if (!v4)
  {
    goto LABEL_5;
  }

  if (!*(v4 + 16))
  {

LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  v2 = *(v4 + 32);

LABEL_6:
  sub_241CD7154(v2, MEMORY[0x277D837D0], &v4);

  return v4;
}

uint64_t MAsset.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_241CF8D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241CF8E38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 21;
  v12 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v12, MEMORY[0x277D837D0], v21);

  if (v21[1])
  {
    v19 = a1;
    v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    sub_241CF8E28();
    v14 = sub_241CF8E18();
    (*(v8 + 8))(v11, v7);
    [v13 setTimeZone_];

    [v13 setFormatOptions_];
    v15 = sub_241CF9008();

    v16 = [v13 dateFromString_];

    if (v16)
    {
      sub_241CF8D78();

      a1 = v19;
      (*(v3 + 32))(v19, v6, v2);
      v17 = 0;
    }

    else
    {

      v17 = 1;
      a1 = v19;
    }
  }

  else
  {
    v17 = 1;
  }

  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t sub_241CB00C8@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_241CF8D88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_241CF8E38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  if (a1)
  {
    sub_241CF8E28();
    v14 = sub_241CF8E18();
    (*(v9 + 8))(v12, v8);
    [v13 setTimeZone_];
  }

  [v13 setFormatOptions_];
  v15 = sub_241CF9008();

  v16 = [v13 dateFromString_];

  if (v16)
  {
    sub_241CF8D78();

    v17 = v21;
    (*(v4 + 32))(v21, v7, v3);
    v18 = 0;
  }

  else
  {

    v18 = 1;
    v17 = v21;
  }

  return (*(v4 + 56))(v17, v18, 1, v3);
}

uint64_t sub_241CB033C(char a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v6 = sub_241CADE44(a1);
  sub_241CF9668();
  if (*(a2 + 16) && (v3 = sub_241CF45AC(v7), (v4 & 1) != 0))
  {
    sub_241C93664(*(a2 + 56) + 32 * v3, v8);
    sub_241C93610(v7);
    result = swift_dynamicCast();
    if (result)
    {
      return v6;
    }
  }

  else
  {
    sub_241C93610(v7);
    return 0;
  }

  return result;
}

uint64_t MAsset.bookSampleDownloadURL.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v2, MEMORY[0x277D837D0], v5);

  if (v5[1])
  {
    sub_241CF8CD8();
  }

  else
  {
    v4 = sub_241CF8CF8();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t MAsset.locale.getter()
{
  ObjectType = swift_getObjectType();
  (*(ObjectType + 136))(&v3);
  v1 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v1, MEMORY[0x277D837D0], &v3);

  return v3;
}

uint64_t MAsset.pagesAreRTL.getter()
{
  v1 = [v0 pageProgressionDirection];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF9038();
    v5 = v4;

    if (v3 == 7107698 && v5 == 0xE300000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_241CF98C8();

      return v7 & 1;
    }
  }

  else
  {

    return _s14BookFoundation23LocaleLanguageDirectionV5isRTLSbvgZ_0();
  }
}

id sub_241CB08B4(void *a1)
{
  swift_getObjectType();
  v2 = a1;
  v3 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v3, MEMORY[0x277D837D0], v6);

  if (v6[1])
  {
    v4 = sub_241CF9008();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_241CB0994()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  sub_241CB4490();
  sub_241CD7154(v0, MEMORY[0x277D837D0], &v2);

  return v2;
}

uint64_t sub_241CB0A3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  swift_getObjectType();
  v5 = sub_241CF1C04(0);
  v6 = sub_241C93918(a2, a3);
  sub_241CB4490();
  sub_241CD7154(v5, v6, &v8);

  return v8;
}

uint64_t sub_241CB0AF0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = sub_241CF1C04(0);
  v6 = sub_241CB033C(a3, v5);

  return v6 & 1;
}

uint64_t sub_241CB0B54(char a1)
{
  v2 = sub_241CF1C04(0);
  v3 = sub_241CB033C(a1, v2);

  return v3 & 1;
}

uint64_t MAsset.publisherName.getter()
{
  swift_getObjectType();
  v5 = 20;
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB4490();
  sub_241CD7154(v0, v1, v4);

  v2 = v4[0];
  if (!v4[0])
  {
    return 0;
  }

  sub_241CB47A4();
  sub_241CD7154(v2, MEMORY[0x277D837D0], v4);

  if (v4[1])
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CB0CF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F43676E69746172;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEB00000000746E75;
  }

  if (*a2)
  {
    v6 = 0x6F43676E69746172;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E75;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_241CF98C8();
  }

  return v9 & 1;
}