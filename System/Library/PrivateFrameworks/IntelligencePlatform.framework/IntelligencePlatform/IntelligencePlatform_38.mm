void sub_1ABD56610(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = a3[1];
  v9[0] = *a3;
  v9[1] = v8;
  sub_1ABD52CBC(v10, a2, v9, a4);
}

void sub_1ABD56680(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v4 = a1[1];
  v5 = a1[2];
  v44 = v5;
  v45 = *a1;
  v42 = a1[4];
  v43 = a1[3];
  v41 = a1[5];
  v40 = *(a1 + 48);
  v47 = *(a3 + 1);
  v38 = a3[3];
  v39 = *a3;
  v48 = *(v4 + 16);
  v49 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = 104 * v3 + 32; ; i += 104)
  {
    if (v48 == v3)
    {
      v19 = 0;
      v20 = *(v49 + 16);
      v21 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v22 = v49 + 72 + 104 * v19;
      while (v20 != v19)
      {
        if (v19 >= *(v49 + 16))
        {
          goto LABEL_53;
        }

        if (!*(v22 + 57))
        {
          v23 = *v22;
          v24 = *(v22 + 8);
          v25 = *v22 == 49 && v24 == 0xE100000000000000;
          if (v25 || (v26 = *v22, v27 = *(v22 + 8), (sub_1ABA8CD24() & 1) != 0))
          {
            v29 = 1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_39:
              v31 = *(v21 + 16);
              v30 = *(v21 + 24);
              if (v31 >= v30 >> 1)
              {
                sub_1ABA7BBEC(v30);
                sub_1ABA8BB08();
                sub_1ABAD8AA4();
                v21 = v34;
              }

              ++v19;
              *(v21 + 16) = v31 + 1;
              *(v21 + v31 + 32) = v29;
              goto LABEL_23;
            }

LABEL_43:
            v32 = *(v21 + 16);
            sub_1ABA7BEF0();
            sub_1ABAD8AA4();
            v21 = v33;
            goto LABEL_39;
          }

          v28 = v23 == 48 && v24 == 0xE100000000000000;
          if (v28 || (sub_1ABD5AA18() & 1) != 0)
          {
            v29 = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        v22 += 104;
        ++v19;
      }

      if (*(v21 + 16))
      {
        v35 = *(v21 + 32);

        if (v35)
        {
          v36 = v47;
          v37 = v47;
LABEL_49:
          __dst[0] = v45;
          __dst[1] = v4;
          __dst[2] = v44;
          __dst[3] = v43;
          __dst[4] = v42;
          __dst[5] = v41;
          LOBYTE(__dst[6]) = v40;
          v50 = v39;
          v51 = v47;
          v52 = v38;
          sub_1ABD52CBC(__dst, a2, &v50, v36);
          return;
        }
      }

      else
      {
      }

      v36 = 0;
      goto LABEL_49;
    }

    if (v3 >= *(v4 + 16))
    {
      break;
    }

    memcpy(__dst, (v4 + i), 0x62uLL);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_54;
    }

    if (*(_Records_GDEntityPredicate_records + 331) >= 3481)
    {
      goto LABEL_51;
    }

    if (*(_Records_GDEntityPredicate_records + 332) >= 4281)
    {
      goto LABEL_52;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_56;
    }

    v8 = __dst[0];
    v7 = __dst[1];
    sub_1ABB3E5B4(__dst, &v50, &qword_1EB4D1148, &qword_1ABF332D0);

    v9 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_55;
    }

    v11 = v9;
    v12 = v10;
    sub_1ABF23DD4();
    if (v8 == v11 && v7 == v12)
    {

LABEL_17:
      v15 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADDCAC();
        v15 = v54;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1ABA7BBEC(v17);
        sub_1ABADDCAC();
        v15 = v54;
      }

      ++v3;
      *(v15 + 16) = v18 + 1;
      v49 = v15;
      sub_1ABAB571C(v15 + 104 * v18);
      goto LABEL_2;
    }

    v14 = sub_1ABF25054();

    if (v14)
    {
      goto LABEL_17;
    }

    sub_1ABAB480C(__dst, &qword_1EB4D1148, &qword_1ABF332D0);
    ++v3;
  }

  __break(1u);
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_1ABD56AD0()
{
  v0 = sub_1ABD52D48();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v2 = result;
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1320], *(_Records_GDEntityPredicate_records + 331), *(_Records_GDEntityPredicate_records + 332), &v3);
    sub_1ABAB5D34(v4, v3);
    v3.n128_u64[0] = v0;
    sub_1ABD7DC38(v2);
    return v3.n128_u64[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD56B94(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a4;
  v199 = sub_1ABF21FE4();
  v7 = sub_1ABA7BB64(v199);
  v208 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  sub_1ABA8147C(v12 - v11);
  v13 = sub_1ABAD219C(&qword_1EB4D2BE8, &unk_1ABF5E770);
  sub_1ABA7AB80(v13);
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA8147C(&v190 - v17);
  v212 = sub_1ABF21A74();
  v18 = sub_1ABA7BB64(v212);
  v213 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  sub_1ABA8147C(v23 - v22);
  v217 = sub_1ABF23C54();
  v24 = sub_1ABA7BB64(v217);
  v214 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  sub_1ABA8147C(v29 - v28);
  v209 = sub_1ABF21EB4();
  v30 = sub_1ABA7BB64(v209);
  v201 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7C068();
  v190 = v34;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA88E50();
  v197 = v36;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA972D4();
  sub_1ABA8147C(v38);
  v39 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v40 = sub_1ABA7AB80(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7C068();
  v195 = v43;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA88E50();
  v207 = v45;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v190 - v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA972D4();
  sub_1ABA8147C(v50);
  v52 = *a2;
  v51 = a2[1];
  v53 = a3[1];
  v192 = *a3;
  v191 = v53;
  v54 = *(a1 + 16);
  v193 = a1;
  v55 = a1 + 32;
  v219 = 0;
  v56 = 0;
  v220 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v57 = v55 + (v56 << 6);
  while (v54 != v56)
  {
    if (v56 >= v54)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      return;
    }

    v58 = *(v57 + 16);
    v225 = *v57;
    v226 = v58;
    *v227 = *(v57 + 32);
    *&v227[9] = *(v57 + 41);
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_93;
    }

    v60 = v225.n128_u64[0] == v52 && v225.n128_u64[1] == v51;
    if (v60 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABAB6950();
      v61 = v220;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221[0] = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA9F048();
        v61 = v221;
        sub_1ABA83F84();
        sub_1ABADDCCC();
        sub_1ABAA0480();
      }

      v64 = v61[2];
      v63 = v61[3];
      if (v64 >= v63 >> 1)
      {
        sub_1ABA7BBEC(v63);
        v61 = v221;
        sub_1ABADDCCC();
        sub_1ABAA0480();
      }

      v61[2] = v64 + 1;
      v220 = v61;
      sub_1ABA83A14(&v61[8 * v64], v225, v226, *v227, *&v227[9]);
      v56 = v59;
      goto LABEL_2;
    }

    v57 += 64;
    ++v56;
  }

  v65 = 0;
  v66 = v220[2];
  sub_1ABA960D4();
  v214 = v69 + 8;
  v203 = v213 + 4;
  v202 = v213 + 1;
  v213 = (v201 + 32);
  v196 = v208 + 8;
  v208 = MEMORY[0x1E69E7CC0];
  v70 = 4;
  v210 = v54;
  v204 = v48;
  v215 = v68;
  while (v68 != v65)
  {
    if (v65 >= v67[2])
    {
      goto LABEL_94;
    }

    v71 = sub_1ABA7F5F0(&v67[v70]);
    sub_1ABAA0764(v71, v72, v73, v74);
    if ((v75 & 1) == 0)
    {
      v76 = *(v218 + 32);
      sub_1ABAB6950();
      v77 = sub_1ABAA4604();
      sub_1ABD5A830(v77, v78, v79);
      v80 = v216;
      sub_1ABF23C44();
      sub_1ABF23C14();
      v82 = v81;
      sub_1ABA8086C(&v229);
      v83(v80, v217);
      if (v82 >> 60 == 15)
      {
        v84 = sub_1ABAA4604();
        sub_1ABD5A840(v84, v85, v86);
        sub_1ABB6DBB8(&v225);
      }

      else
      {
        sub_1ABB255A4();
        v87 = v211;
        v88 = v212;
        v89 = v219;
        sub_1ABF217D4();
        if (v89)
        {

          v90 = sub_1ABAA4604();
          sub_1ABD5A840(v90, v91, v92);
          sub_1ABB6DBB8(&v225);
          v93 = sub_1ABAA0904();
          sub_1ABAC9310(v93, v94);
          sub_1ABA7ED8C();
          sub_1ABA7B9B4(v95, v96, v97, v88);
          sub_1ABAB480C(v87, &qword_1EB4D2BE8, &unk_1ABF5E770);
          v219 = 0;
          v54 = v210;
        }

        else
        {
          v219 = 0;
          sub_1ABA8C6E0();
          sub_1ABA7B9B4(v98, v99, v100, v88);
          sub_1ABA8086C(&v225.n128_i64[1]);
          v101 = v206;
          v102();
          v103 = v207;
          sub_1ABF21A34();
          v104 = v103;
          v105 = v209;
          if (sub_1ABA7E1E0(v104, 1, v209) == 1)
          {
            v106 = v198;
            sub_1ABF21FC4();
            v107 = v204;
            sub_1ABF21F94();
            v108 = sub_1ABAA0904();
            sub_1ABAC9310(v108, v109);
            v110 = sub_1ABAA4604();
            sub_1ABD5A840(v110, v111, v112);
            sub_1ABB6DBB8(&v225);
            sub_1ABA8086C(v224);
            v113 = v106;
            v114 = v207;
            v115(v113, v199);
            sub_1ABA8086C(&v225);
            v116(v101, v212);
            sub_1ABA7BDE4(v114);
            v54 = v210;
            if (!v60)
            {
              sub_1ABAB480C(v114, &qword_1EB4D9BF0, &qword_1ABF34240);
            }
          }

          else
          {
            sub_1ABB6DBB8(&v225);
            v117 = sub_1ABAA0904();
            sub_1ABAC9310(v117, v118);
            v119 = sub_1ABAA4604();
            sub_1ABD5A840(v119, v120, v121);
            sub_1ABA8086C(&v225);
            v122(v101, v88);
            sub_1ABA8086C(&v228);
            v107 = v204;
            sub_1ABAA1A1C();
            v123();
            sub_1ABAA4A54();
            sub_1ABA7B9B4(v124, v125, v126, v127);
            v54 = v210;
          }

          sub_1ABA7BDE4(v107);
          if (v60)
          {
            sub_1ABAB480C(v107, &qword_1EB4D9BF0, &qword_1ABF34240);
          }

          else
          {
            v128 = *v213;
            v129 = v197;
            (*v213)(v197, v107, v105);
            v128(v205, v129, v105);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            if ((v130 & 1) == 0)
            {
              v136 = *(v208 + 16);
              sub_1ABA7BEF0();
              sub_1ABAD96B8();
              v208 = v137;
            }

            v132 = *(v208 + 16);
            v131 = *(v208 + 24);
            if (v132 >= v131 >> 1)
            {
              sub_1ABA7BBEC(v131);
              sub_1ABAD96B8();
              v208 = v138;
            }

            *(v208 + 16) = v132 + 1;
            sub_1ABA7AD90();
            v128(v134 + v133 + *(v135 + 72) * v132, v205, v209);
          }
        }
      }

      v67 = v220;
      v68 = v215;
    }

    v70 += 8;
    ++v65;
  }

  v139 = v200;
  sub_1ABB2BAE0(v208);

  v140 = v195;
  sub_1ABB3E5B4(v139, v195, &qword_1EB4D9BF0, &qword_1ABF34240);
  v141 = v209;
  if (sub_1ABA7E1E0(v140, 1, v209) == 1)
  {
    sub_1ABAB480C(v140, &qword_1EB4D9BF0, &qword_1ABF34240);
    v142 = 0;
    v143 = v193 + 32;
    v144 = MEMORY[0x1E69E7CC0];
    v145 = v192;
    v146 = v191;
LABEL_41:
    v147 = v143 + (v142 << 6);
    while (v54 != v142)
    {
      if (v142 >= v54)
      {
        goto LABEL_95;
      }

      v148 = *(v147 + 16);
      v225 = *v147;
      v226 = v148;
      *v227 = *(v147 + 32);
      *&v227[9] = *(v147 + 41);
      if (__OFADD__(v142, 1))
      {
        goto LABEL_96;
      }

      v149 = v225.n128_u64[0] == v145 && v225.n128_u64[1] == v146;
      if (v149 || (sub_1ABF25054() & 1) != 0)
      {
        sub_1ABAB6950();
        v150 = swift_isUniquelyReferenced_nonNull_native();
        v221[0] = v144;
        if ((v150 & 1) == 0)
        {
          sub_1ABA9F048();
          v144 = v221;
          sub_1ABA83F84();
          sub_1ABADDCCC();
          sub_1ABAA0480();
        }

        v152 = v144[2];
        v151 = v144[3];
        if (v152 >= v151 >> 1)
        {
          sub_1ABA7BBEC(v151);
          v144 = v221;
          sub_1ABA975A4();
          sub_1ABADDCCC();
          sub_1ABAA0480();
        }

        v144[2] = v152 + 1;
        sub_1ABA83A14(&v144[8 * v152], v225, v226, *v227, *&v227[9]);
        ++v142;
        goto LABEL_41;
      }

      v147 += 64;
      ++v142;
    }

    v157 = 0;
    v158 = v144[2];
    v220 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v159 = (v157 << 6) | 0x20;
    while (v158 != v157)
    {
      if (v157 >= v144[2])
      {
        goto LABEL_97;
      }

      v160 = sub_1ABA7F5F0(v144 + v159);
      sub_1ABAA0764(v160, v161, v162, v163);
      if ((v165 & 1) == 0)
      {
        v166 = *&v227[8];
        v167 = *&v227[16];
        v223 = 0;
        MEMORY[0x1EEE9AC00](v164);
        *(&v190 - 2) = &v223;
        if ((v167 & 0x1000000000000000) == 0)
        {
          if ((v167 & 0x2000000000000000) != 0)
          {
            v221[0] = v166;
            v221[1] = v167 & 0xFFFFFFFFFFFFFFLL;
            switch(v166)
            {
              case 0:
              case 9:
              case 10:
              case 11:
              case 12:
              case 13:
                goto LABEL_67;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_73;
              default:
                if (v166 == 32)
                {
LABEL_67:
                  sub_1ABAB6950();
                  goto LABEL_68;
                }

LABEL_73:
                sub_1ABAB6950();
                v168 = _swift_stdlib_strtod_clocale();
                if (v168 && !*v168)
                {
                  goto LABEL_77;
                }

                goto LABEL_68;
            }
          }

          if ((v166 & 0x1000000000000000) != 0)
          {
            switch(*((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
            {
              case 0:
              case 9:
              case 0xA:
              case 0xB:
              case 0xC:
              case 0xD:
                goto LABEL_67;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
                goto LABEL_73;
              default:
                if (*((v167 & 0xFFFFFFFFFFFFFFFLL) + 0x20) != 32)
                {
                  goto LABEL_73;
                }

                goto LABEL_67;
            }
          }
        }

        sub_1ABAB6950();
        v169 = v219;
        sub_1ABF24A74();
        v219 = v169;
        if (v222)
        {
LABEL_77:
          v170 = v223;
          sub_1ABB6DBB8(&v225);
          v171 = v220;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v174 = v171[2];
            sub_1ABA7BEF0();
            sub_1ABAD91B4();
            v171 = v175;
          }

          v173 = v171[2];
          v172 = v171[3];
          if (v173 >= v172 >> 1)
          {
            sub_1ABA7BBEC(v172);
            sub_1ABA8BB08();
            sub_1ABAD91B4();
            v171 = v176;
          }

          ++v157;
          v171[2] = v173 + 1;
          v220 = v171;
          v171[v173 + 4] = v170;
          goto LABEL_58;
        }

LABEL_68:
        sub_1ABB6DBB8(&v225);
      }

      v159 += 64;
      ++v157;
    }

    v177 = v220[2];
    if (v177)
    {
      v178 = v220 + 4;
      v179 = MEMORY[0x1E69E7CC0];
      v180 = v209;
      v181 = v201;
      v182 = v190;
      v183 = v200;
      do
      {
        v184 = *v178;
        sub_1ABF21E04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = *(v179 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD96B8();
          v179 = v188;
        }

        v186 = *(v179 + 16);
        v185 = *(v179 + 24);
        if (v186 >= v185 >> 1)
        {
          sub_1ABA7C480(v185);
          sub_1ABAD96B8();
          v179 = v189;
        }

        *(v179 + 16) = v186 + 1;
        (*(v181 + 32))(v179 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v186, v182, v180);
        ++v178;
        --v177;
      }

      while (v177);
    }

    else
    {
      v179 = MEMORY[0x1E69E7CC0];
      v183 = v200;
    }

    sub_1ABB2BAE0(v179);

    sub_1ABAB480C(v183, &qword_1EB4D9BF0, &qword_1ABF34240);
  }

  else
  {
    sub_1ABAB480C(v139, &qword_1EB4D9BF0, &qword_1ABF34240);
    sub_1ABA8086C(&v228);
    v153(v194, v140, v141);
    sub_1ABA8C6E0();
    sub_1ABA7B9B4(v154, v155, v156, v141);
  }
}

void sub_1ABD57A0C()
{
  sub_1ABA7E2A8();
  v435 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABF21EB4();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C068();
  v420 = v13;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v418 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v418 - v18;
  v20 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v21 = sub_1ABA7AB80(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7C068();
  v430 = v24;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA88E50();
  v429 = v26;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA88E50();
  v422 = v28;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA88E50();
  v423 = v30;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA88E50();
  v428 = v32;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA972D4();
  v434 = v35;
  v445 = 0;
  v446 = 0xE000000000000000;
  v432 = v36;
  v427 = v6;
  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_399;
  }

  v419 = v16;
  v421 = v19;
  v426 = v10;
  v431 = v7;
  v37 = v435[10];
  v38 = v435[11];
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v444);
  v39 = v37 == v444[2] && v38 == v444[3];
  if (v39)
  {
  }

  else
  {
    v40 = sub_1ABA8CF7C();

    if ((v40 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  swift_bridgeObjectRetain_n();
  sub_1ABD52B98(1);
  v41 = sub_1ABF247F4();

  sub_1ABAA958C(1uLL, v37, v38);
  sub_1ABD59C3C();
  v42 = v41;
  v44 = v43;

  v444[0] = v42;
  v444[1] = v44;
  MEMORY[0x1AC5A9410](32, 0xE100000000000000);
  sub_1ABAB6610();

LABEL_10:
  MEMORY[0x1AC5A9410](v4, v2);
  v45 = v435[15];
  v438 = *(v45 + 16);
  v439 = 279;
  v441 = 3481;
  v440 = 4281;

  v437 = MEMORY[0x1E69E7CC0];
  v46 = 32;
  v436 = 32;
  while (v438)
  {
    if (!*(v45 + 16))
    {
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
LABEL_361:
      __break(1u);
LABEL_362:
      __break(1u);
LABEL_363:
      __break(1u);
LABEL_364:
      __break(1u);
LABEL_365:
      __break(1u);
LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
      goto LABEL_372;
    }

    memcpy(v444, (v45 + v46), 0x62uLL);
    if (v439 < 91)
    {
      goto LABEL_335;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_381;
    }

    v47 = *(_Records_GDEntityPredicate_records + 271);
    sub_1ABAA114C();
    if (v49 == v50)
    {
      goto LABEL_336;
    }

    if (*(v48 + 2176) >= v440)
    {
      goto LABEL_337;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_383;
    }

    v51 = v444[0];
    v52 = v444[1];
    v53 = sub_1ABAB5510();
    sub_1ABB3E5B4(v53, v54, &qword_1EB4D1148, &qword_1ABF332D0);

    v55 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_382;
    }

    v57 = v55;
    v58 = v56;
    sub_1ABF23DD4();
    if (v51 == v57 && v52 == v58)
    {

LABEL_27:
      v61 = sub_1ABA9FDA8();
      v442[0] = v46;
      if ((v61 & 1) == 0)
      {
        v62 = *(v46 + 16);
        sub_1ABA94B3C();
        sub_1ABADDCAC();
      }

      sub_1ABAA1FB0();
      if (v64)
      {
        sub_1ABA994E4(v63);
        sub_1ABADDCAC();
        v46 = v436;
      }

      sub_1ABA97C24();
    }

    else
    {
      v60 = sub_1ABF25054();

      if (v60)
      {
        goto LABEL_27;
      }

      sub_1ABAB480C(v444, &qword_1EB4D1148, &qword_1ABF332D0);
      sub_1ABA7FD00();
    }
  }

  v65 = 0;
  v66 = v437;
  v67 = v437[2];
  v68 = v437 + 129;
  v69 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v70 = &v68[104 * v65];
  while (v67 != v65)
  {
    if (v65 >= v66[2])
    {
      goto LABEL_338;
    }

    sub_1ABA8C22C(v70);
    if (v39)
    {
      sub_1ABA90960();
      BYTE1(v444[7]) = 1;
      sub_1ABD191AC(v444, v442);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = *(v69 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD8B88();
        v69 = v74;
      }

      v72 = *(v69 + 16);
      v71 = *(v69 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_1ABA7C480(v71);
        sub_1ABAD8B88();
        v69 = v75;
      }

      ++v65;
      *(v69 + 16) = v72 + 1;
      sub_1ABA7F5D0(v69 + (v72 << 6));
      goto LABEL_33;
    }

    sub_1ABAA0BD0();
  }

  v76 = 0;
  v77 = *(v69 + 16);
  v78 = MEMORY[0x1E69E7CC0];
  v79 = 48;
  while (v77 != v76)
  {
    if (v76 >= *(v69 + 16))
    {
      goto LABEL_339;
    }

    v80 = *(v69 + v79);
    v81 = *(v80 + 16);
    v82 = *(v78 + 16);
    if (__OFADD__(v82, v81))
    {
      goto LABEL_340;
    }

    v83 = *(v69 + v79);

    if (!swift_isUniquelyReferenced_nonNull_native() || v82 + v81 > *(v78 + 24) >> 1)
    {
      sub_1ABAB531C();
      sub_1ABAD89AC();
      v78 = v84;
    }

    if (*(v80 + 16))
    {
      v85 = *(v78 + 16);
      v86 = *(v78 + 24);
      sub_1ABA84218();
      if (v87 < v81)
      {
        goto LABEL_371;
      }

      swift_arrayInitWithCopy();

      if (v81)
      {
        v88 = *(v78 + 16);
        v50 = __OFADD__(v88, v81);
        v89 = v88 + v81;
        if (v50)
        {
          goto LABEL_375;
        }

        *(v78 + 16) = v89;
      }
    }

    else
    {

      if (v81)
      {
        goto LABEL_341;
      }
    }

    v79 += 64;
    ++v76;
  }

  v90 = 0;
  v438 = *(v78 + 16);
  v437 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v91 = ((v90 << 6) | 0x20);
  while (v438 != v90)
  {
    if (v90 >= *(v78 + 16))
    {
      goto LABEL_342;
    }

    v92 = sub_1ABA7F5F0(v91 + v78);
    sub_1ABA8C79C(v92, v93, v94, v95);
    if (v439 < 52)
    {
      goto LABEL_343;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_384;
    }

    v96 = *(_Records_GDEntityPredicate_records + 154);
    sub_1ABAA114C();
    if (v49 == v50)
    {
      goto LABEL_344;
    }

    if (*(v97 + 1240) >= v440)
    {
      goto LABEL_345;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_386;
    }

    v99 = v444[0];
    v98 = v444[1];
    v100 = sub_1ABAB5510();
    sub_1ABD1927C(v100, v101);

    v102 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_385;
    }

    v104 = v102;
    v105 = v103;
    sub_1ABF23DD4();
    if (v99 == v104 && v98 == v105)
    {

LABEL_75:
      v108 = sub_1ABA9FDA8();
      v442[0] = v91;
      if ((v108 & 1) == 0)
      {
        v109 = v91[2];
        sub_1ABA94B3C();
        sub_1ABADDCCC();
        v91 = v442[0];
      }

      v111 = v91[2];
      v110 = v91[3];
      if (v111 >= v110 >> 1)
      {
        sub_1ABA994E4(v110);
        sub_1ABADDCCC();
        v91 = v442[0];
      }

      ++v90;
      v91[2] = v111 + 1;
      v437 = v91;
      sub_1ABA7F5D0(&v91[8 * v111]);
      goto LABEL_58;
    }

    v107 = sub_1ABF25054();

    if (v107)
    {
      goto LABEL_75;
    }

    sub_1ABB6DBB8(v444);
    v91 += 8;
    ++v90;
  }

  v112 = v437;
  v113 = v437[2];
  v114 = (v437 + 11);
  v115 = MEMORY[0x1E69E7CC0];
LABEL_81:
  v116 = v114;
  while (v113)
  {
    if (!v112[2])
    {
      goto LABEL_346;
    }

    sub_1ABA8BCE8(v116);
    if (v118)
    {
      v119 = *(v117 - 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = *(v115 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD89C8();
        v115 = v124;
      }

      v121 = *(v115 + 16);
      v120 = *(v115 + 24);
      v122 = v115;
      if (v121 >= v120 >> 1)
      {
        sub_1ABA7C480(v120);
        sub_1ABAD89C8();
        v122 = v125;
      }

      *(v122 + 16) = v121 + 1;
      v115 = v122;
      *(v122 + 8 * v121 + 32) = v119;
      v112 = v437;
      goto LABEL_81;
    }
  }

  v126 = *(v115 + 16);
  v433 = v115;
  if (v126)
  {
    v127 = v435[3];
    v128 = (v115 + 32);
    v129 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v127 + 16))
      {
        v130 = *v128;
        v131 = sub_1ABAF81A8();
        if (v132)
        {
          v133 = (*(v127 + 56) + 16 * v131);
          v135 = *v133;
          v134 = v133[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA80DB8();
            sub_1ABAAA4F4();
            v129 = v139;
          }

          v137 = v129[2];
          v136 = v129[3];
          if (v137 >= v136 >> 1)
          {
            sub_1ABA7BBEC(v136);
            sub_1ABAA53EC();
            sub_1ABAAA4F4();
            v129 = v140;
          }

          v129[2] = v137 + 1;
          v138 = &v129[2 * v137];
          v138[4] = v135;
          v138[5] = v134;
        }
      }

      ++v128;
      --v126;
    }

    while (v126);
  }

  else
  {
    v129 = MEMORY[0x1E69E7CC0];
  }

  v141 = v129[2];
  if (v141)
  {
    if (v141 == 1)
    {
      v425 = 1;
      sub_1ABC43DF0(0, 1, v129);
      v142 = v129[4];
      v143 = v129[5];

      strcpy(v444, " at location ");
      HIWORD(v444[1]) = -4864;
      v144 = sub_1ABA7E79C();
      MEMORY[0x1AC5A9410](v144);

      sub_1ABAB6610();
    }

    else
    {
      v444[0] = v129;
      v145 = sub_1ABA8CD18();
      sub_1ABAD219C(v145, v146);
      sub_1ABA7E760();
      sub_1ABAB47C4(v147, v148, &unk_1ABF3A8C0);
      sub_1ABF23ED4();

      strcpy(v444, " at locations ");
      HIBYTE(v444[1]) = -18;
      v149 = sub_1ABA7E79C();
      MEMORY[0x1AC5A9410](v149);

      sub_1ABAB6610();

      v425 = 1;
    }
  }

  else
  {

    v425 = 0;
  }

  sub_1ABA8B6F8(v435);
  v437 = MEMORY[0x1E69E7CC0];
  v150 = v436;
  while (v438)
  {
    if (!v129[2])
    {
      goto LABEL_347;
    }

    sub_1ABA8AF74(v444);
    if (v439 < 111)
    {
      goto LABEL_348;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_387;
    }

    v151 = *(_Records_GDEntityPredicate_records + 331);
    sub_1ABAA114C();
    if (v49 == v50)
    {
      goto LABEL_349;
    }

    if (*(v152 + 2656) >= v440)
    {
      goto LABEL_350;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_389;
    }

    v154 = v444[0];
    v153 = v444[1];
    v155 = sub_1ABAB5510();
    sub_1ABB3E5B4(v155, v156, &qword_1EB4D1148, &qword_1ABF332D0);

    v157 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_388;
    }

    v159 = v157;
    v160 = v158;
    sub_1ABF23DD4();
    if (v154 == v159 && v153 == v160)
    {
    }

    else
    {
      v162 = sub_1ABA8CF7C();

      if ((v162 & 1) == 0)
      {
        sub_1ABAB480C(v444, &qword_1EB4D1148, &qword_1ABF332D0);
        sub_1ABA7FD00();
        continue;
      }
    }

    v163 = sub_1ABA9FDA8();
    v442[0] = v150;
    if ((v163 & 1) == 0)
    {
      v164 = *(v150 + 16);
      sub_1ABA94B3C();
      sub_1ABADDCAC();
    }

    sub_1ABAA1FB0();
    if (v64)
    {
      sub_1ABA994E4(v165);
      sub_1ABADDCAC();
      v150 = v436;
    }

    sub_1ABA97C24();
  }

  v166 = 0;
  v167 = v437;
  v168 = v437[2];
  v169 = MEMORY[0x1E69E7CC0];
LABEL_130:
  v170 = 13 * v166;
  while (v168 != v166)
  {
    if (v166 >= v167[2])
    {
      goto LABEL_351;
    }

    v171 = &v167[v170];
    if (!BYTE1(v167[v170 + 16]))
    {
      v172 = v171[9];
      v173 = v171[10];
      v174 = v172 == 49 && v173 == 0xE100000000000000;
      if (v174 || (sub_1ABA7E79C(), (sub_1ABA8CD24() & 1) != 0))
      {
        v176 = 1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_146:
          v178 = *(v169 + 16);
          v177 = *(v169 + 24);
          v167 = v437;
          if (v178 >= v177 >> 1)
          {
            sub_1ABA7C480(v177);
            sub_1ABAD8AA4();
            v167 = v437;
            v169 = v180;
          }

          ++v166;
          *(v169 + 16) = v178 + 1;
          *(v169 + v178 + 32) = v176;
          goto LABEL_130;
        }

LABEL_150:
        sub_1ABA80DB8();
        sub_1ABAD8AA4();
        v169 = v179;
        goto LABEL_146;
      }

      v175 = v172 == 48 && v173 == 0xE100000000000000;
      if (v175 || (sub_1ABA7E79C(), (sub_1ABD5AA18() & 1) != 0))
      {
        v176 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_146;
        }

        goto LABEL_150;
      }
    }

    sub_1ABA7FD00();
  }

  if (*(v169 + 16))
  {
    sub_1ABC43DF0(0, 1, v169);
    v181 = *(v169 + 32);

    v182 = 48;
    if (v181)
    {
      v182 = 40;
    }
  }

  else
  {

    v182 = 48;
  }

  v424 = v182;
  v183 = v436;
  sub_1ABA8B6F8(v435);
  v437 = MEMORY[0x1E69E7CC0];
  while (v438)
  {
    if (!*(v169 + 16))
    {
      goto LABEL_352;
    }

    sub_1ABA8AF74(v444);
    if (v439 < 146)
    {
      goto LABEL_353;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_390;
    }

    v184 = *(_Records_GDEntityPredicate_records + 436);
    sub_1ABAA114C();
    if (v49 == v50)
    {
      goto LABEL_354;
    }

    if (*(v185 + 3496) >= v440)
    {
      goto LABEL_355;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_392;
    }

    v187 = v444[0];
    v186 = v444[1];
    v188 = sub_1ABAB5510();
    sub_1ABB3E5B4(v188, v189, &qword_1EB4D1148, &qword_1ABF332D0);

    v190 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_391;
    }

    v192 = v190;
    v193 = v191;
    sub_1ABF23DD4();
    if (v187 == v192 && v186 == v193)
    {
    }

    else
    {
      v195 = sub_1ABA8CF7C();

      if ((v195 & 1) == 0)
      {
        sub_1ABAB480C(v444, &qword_1EB4D1148, &qword_1ABF332D0);
        sub_1ABA7FD00();
        continue;
      }
    }

    v196 = sub_1ABA9FDA8();
    v442[0] = v183;
    if ((v196 & 1) == 0)
    {
      v197 = *(v183 + 16);
      sub_1ABA94B3C();
      sub_1ABADDCAC();
    }

    sub_1ABAA1FB0();
    if (v64)
    {
      sub_1ABA994E4(v198);
      sub_1ABADDCAC();
      v183 = v436;
    }

    sub_1ABA97C24();
  }

  v199 = 0;
  v200 = v437;
  v201 = v437[2];
  v202 = v437 + 129;
  v203 = MEMORY[0x1E69E7CC0];
LABEL_179:
  v204 = &v202[104 * v199];
  while (v201 != v199)
  {
    if (v199 >= v200[2])
    {
      goto LABEL_356;
    }

    sub_1ABA8C22C(v204);
    if (v39)
    {
      sub_1ABA90960();
      BYTE1(v444[7]) = 1;
      sub_1ABD191AC(v444, v442);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABAD8B88();
        v203 = v207;
      }

      v206 = *(v203 + 16);
      v205 = *(v203 + 24);
      if (v206 >= v205 >> 1)
      {
        sub_1ABA7C480(v205);
        sub_1ABAD8B88();
        v203 = v208;
      }

      ++v199;
      *(v203 + 16) = v206 + 1;
      sub_1ABA7F5D0(v203 + (v206 << 6));
      goto LABEL_179;
    }

    sub_1ABAA0BD0();
  }

  v209 = 0;
  v210 = *(v203 + 16);
  v211 = MEMORY[0x1E69E7CC0];
  v212 = 48;
  while (v210 != v209)
  {
    sub_1ABAA05B4();
    if (v64)
    {
      goto LABEL_357;
    }

    v213 = *(v203 + v212);
    v214 = *(v213 + 16);
    v215 = *(v211 + 16);
    if (__OFADD__(v215, v214))
    {
      goto LABEL_358;
    }

    v216 = *(v203 + v212);

    if (!swift_isUniquelyReferenced_nonNull_native() || v215 + v214 > *(v211 + 24) >> 1)
    {
      sub_1ABAB531C();
      sub_1ABAD89AC();
      v211 = v217;
    }

    if (*(v213 + 16))
    {
      v218 = *(v211 + 16);
      v219 = *(v211 + 24);
      sub_1ABA84218();
      if (v220 < v214)
      {
        goto LABEL_373;
      }

      swift_arrayInitWithCopy();

      if (v214)
      {
        v221 = *(v211 + 16);
        v50 = __OFADD__(v221, v214);
        v222 = v221 + v214;
        if (v50)
        {
          goto LABEL_376;
        }

        *(v211 + 16) = v222;
      }
    }

    else
    {

      if (v214)
      {
        goto LABEL_359;
      }
    }

    v212 += 64;
    ++v209;
  }

  if (v439 < 3)
  {
    goto LABEL_378;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_400;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), v444);
  if (v439 < 0x99)
  {
    goto LABEL_379;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_401:
    __break(1u);
    goto LABEL_402;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), v443);
  sub_1ABD56B94(v211, v444, v443, v434);

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1548], *(_Records_GDEntityPredicate_records + 388), *(_Records_GDEntityPredicate_records + 389), v444);
  v224 = v431;
  v223 = v432;
  if (v439 == 153)
  {
    goto LABEL_380;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_403;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), v443);
  v225 = v435;
  sub_1ABD56B94(v211, v444, v443, v223);

  v226 = *(v225 + v424);
  v227 = v428;
  sub_1ABB3E5B4(v434, v428, &qword_1EB4D9BF0, &qword_1ABF34240);
  v228 = sub_1ABA7E1E0(v227, 1, v224);
  v437 = v226;
  if (v228 == 1)
  {
    v229 = v226;
    sub_1ABAB480C(v227, &qword_1EB4D9BF0, &qword_1ABF34240);
    v230 = v422;
    sub_1ABA97340();
    sub_1ABB3E5B4(v231, v232, v233, v234);
    if (sub_1ABA7E1E0(v230, 1, v224) == 1)
    {
      sub_1ABAB480C(v230, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    else
    {
      v249 = v426;
      v250 = v420;
      (*(v426 + 32))(v420, v230, v224);
      v251 = sub_1ABF21E34();
      v252 = [v229 &off_1E7963478];

      sub_1ABF23C04();
      sub_1ABA97340();
      v253 = MEMORY[0x1AC5A9380]();
      v255 = v254;

      MEMORY[0x1AC5A9410](v253, v255);

      (*(v249 + 8))(v250, v224);
      v425 = 1;
    }
  }

  else
  {
    v235 = v426;
    v236 = *(v426 + 32);
    v237 = v421;
    sub_1ABAA0334();
    v236();
    v238 = v226;
    v239 = sub_1ABF21E34();
    v240 = [v238 stringFromDate_];

    v241 = sub_1ABF23C04();
    v243 = v242;

    v244 = MEMORY[0x1AC5A9380](0x6174732073616820, 0xEE00206E6F207472, v241, v243);
    v246 = v245;

    MEMORY[0x1AC5A9410](v244, v246);
    v247 = v431;

    v248 = v423;
    sub_1ABB3E5B4(v432, v423, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (sub_1ABA7E1E0(v248, 1, v247) == 1)
    {
      (*(v235 + 8))(v237, v247);
      sub_1ABAB480C(v248, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    else
    {
      v256 = v419;
      sub_1ABAA0334();
      v257();
      v258 = sub_1ABF21E34();
      v259 = [v238 stringFromDate_];

      sub_1ABF23C04();
      sub_1ABA97340();
      v260 = MEMORY[0x1AC5A9380]();
      v262 = v261;

      MEMORY[0x1AC5A9410](v260, v262);

      v263 = *(v235 + 8);
      v263(v256, v247);
      v263(v237, v247);
    }

    v425 = 1;
  }

  v264 = v436;
  v265 = v435[15];
  v439 = *(v265 + 16);

  v266 = 0;
  v438 = MEMORY[0x1E69E7CC0];
LABEL_219:
  v267 = v264 + 104 * v266;
  while (v439 != v266)
  {
    if (v266 >= *(v265 + 16))
    {
      goto LABEL_360;
    }

    memcpy(v444, (v265 + v267), 0x62uLL);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_393;
    }

    v268 = *(_Records_GDEntityPredicate_records + 349);
    sub_1ABAA114C();
    if (v49 == v50)
    {
      goto LABEL_361;
    }

    if (*(v269 + 2800) >= v440)
    {
      goto LABEL_362;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_394;
    }

    v271 = v444[0];
    v270 = v444[1];
    v272 = sub_1ABAB5510();
    sub_1ABB3E5B4(v272, v273, &qword_1EB4D1148, &qword_1ABF332D0);

    v274 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_395;
    }

    v276 = v274;
    v277 = v275;
    sub_1ABF23DD4();
    if (v271 == v276 && v270 == v277)
    {

LABEL_235:
      v280 = v438;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v442[0] = v280;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v282 = *(v280 + 16);
        sub_1ABA94B3C();
        sub_1ABADDCAC();
        v280 = v442[0];
      }

      v264 = v436;
      v284 = *(v280 + 16);
      v283 = *(v280 + 24);
      if (v284 >= v283 >> 1)
      {
        sub_1ABA9A558(v283);
        sub_1ABA975A4();
        sub_1ABADDCAC();
        v264 = v436;
        v280 = v442[0];
      }

      ++v266;
      *(v280 + 16) = v284 + 1;
      v438 = v280;
      memcpy((v280 + 104 * v284 + 32), v444, 0x62uLL);
      goto LABEL_219;
    }

    sub_1ABAA0904();
    v279 = sub_1ABA8CF7C();

    if (v279)
    {
      goto LABEL_235;
    }

    sub_1ABAB480C(v444, &qword_1EB4D1148, &qword_1ABF332D0);
    sub_1ABA7FD00();
  }

  v285 = 0;
  v286 = v438;
  v287 = *(v438 + 16);
  v288 = v438 + 129;
  v289 = MEMORY[0x1E69E7CC0];
LABEL_241:
  v290 = (v288 + 104 * v285);
  while (v287 != v285)
  {
    if (v285 >= *(v286 + 16))
    {
      goto LABEL_363;
    }

    sub_1ABA8C22C(v290);
    if (v39)
    {
      sub_1ABA90960();
      BYTE1(v444[7]) = 1;
      sub_1ABD191AC(v444, v442);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80DB8();
        sub_1ABAD8B88();
        v289 = v293;
      }

      v292 = *(v289 + 16);
      v291 = *(v289 + 24);
      if (v292 >= v291 >> 1)
      {
        sub_1ABA7C480(v291);
        sub_1ABAD8B88();
        v289 = v294;
      }

      ++v285;
      *(v289 + 16) = v292 + 1;
      sub_1ABA7F5D0(v289 + (v292 << 6));
      v286 = v438;
      goto LABEL_241;
    }

    sub_1ABAA0BD0();
  }

  v295 = 0;
  v296 = *(v289 + 16);
  v297 = MEMORY[0x1E69E7CC0];
  v298 = 48;
  while (v296 != v295)
  {
    sub_1ABAA05B4();
    if (v64)
    {
      goto LABEL_364;
    }

    v299 = *(v289 + v298);
    v300 = *(v299 + 16);
    v301 = *(v297 + 16);
    if (__OFADD__(v301, v300))
    {
      goto LABEL_365;
    }

    v302 = *(v289 + v298);

    if (!swift_isUniquelyReferenced_nonNull_native() || v301 + v300 > *(v297 + 24) >> 1)
    {
      sub_1ABAB531C();
      sub_1ABAD89AC();
      v297 = v303;
    }

    if (*(v299 + 16))
    {
      v304 = *(v297 + 16);
      v305 = *(v297 + 24);
      sub_1ABA84218();
      if (v306 < v300)
      {
        goto LABEL_374;
      }

      swift_arrayInitWithCopy();

      if (v300)
      {
        v307 = *(v297 + 16);
        v50 = __OFADD__(v307, v300);
        v308 = v307 + v300;
        if (v50)
        {
          goto LABEL_377;
        }

        *(v297 + 16) = v308;
      }
    }

    else
    {

      if (v300)
      {
        goto LABEL_366;
      }
    }

    v298 += 64;
    ++v295;
  }

  v309 = 0;
  v439 = *(v297 + 16);
  v438 = MEMORY[0x1E69E7CC0];
LABEL_266:
  v310 = (v309 << 6) | 0x20;
  while (v439 != v309)
  {
    if (v309 >= *(v297 + 16))
    {
      goto LABEL_367;
    }

    v311 = sub_1ABA7F5F0(v297 + v310);
    sub_1ABA8C79C(v311, v312, v313, v314);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_396;
    }

    v315 = *(_Records_GDEntityPredicate_records + 82);
    sub_1ABAA114C();
    if (v49 == v50)
    {
      goto LABEL_368;
    }

    if (*(v316 + 664) >= v440)
    {
      goto LABEL_369;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_397;
    }

    v318 = v444[0];
    v317 = v444[1];
    v319 = sub_1ABAB5510();
    sub_1ABD1927C(v319, v320);

    v321 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_398;
    }

    v323 = v321;
    v324 = v322;
    sub_1ABF23DD4();
    if (v318 == v323 && v317 == v324)
    {

LABEL_282:
      v327 = v438;
      v328 = swift_isUniquelyReferenced_nonNull_native();
      v442[0] = v327;
      if ((v328 & 1) == 0)
      {
        v329 = *(v327 + 16);
        sub_1ABA94B3C();
        sub_1ABADDCCC();
        v327 = v442[0];
      }

      sub_1ABA97888();
      if (v64)
      {
        sub_1ABA9A558(v330);
        sub_1ABA975A4();
        sub_1ABADDCCC();
        v327 = v442[0];
      }

      ++v309;
      *(v327 + 16) = v324;
      v438 = v327;
      sub_1ABA7F5D0(v327 + (v317 << 6));
      goto LABEL_266;
    }

    v326 = sub_1ABA8CF7C();

    if (v326)
    {
      goto LABEL_282;
    }

    sub_1ABB6DBB8(v444);
    v310 += 64;
    ++v309;
  }

  v331 = v438;
  v332 = *(v438 + 16);
  v333 = (v438 + 88);
  v334 = MEMORY[0x1E69E7CC0];
LABEL_288:
  v335 = v333;
  while (v332)
  {
    if (!*(v331 + 16))
    {
      goto LABEL_370;
    }

    sub_1ABA8BCE8(v335);
    if (v337)
    {
      v338 = *(v336 - 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v341 = *(v334 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD89C8();
        v334 = v342;
      }

      v340 = *(v334 + 16);
      v339 = *(v334 + 24);
      v331 = v438;
      if (v340 >= v339 >> 1)
      {
        sub_1ABA7BBEC(v339);
        sub_1ABA975A4();
        sub_1ABAD89C8();
        v331 = v438;
        v334 = v343;
      }

      *(v334 + 16) = v340 + 1;
      *(v334 + 8 * v340 + 32) = v338;
      goto LABEL_288;
    }
  }

  v344 = *(v334 + 16);
  if (v344)
  {
    v345 = v435[3];
    v346 = (v334 + 32);
    v347 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v345 + 16))
      {
        v348 = *v346;
        v349 = sub_1ABAF81A8();
        if (v350)
        {
          v351 = (*(v345 + 56) + 16 * v349);
          v353 = *v351;
          v352 = v351[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA80DB8();
            sub_1ABAAA4F4();
            v347 = v357;
          }

          v355 = v347[2];
          v354 = v347[3];
          if (v355 >= v354 >> 1)
          {
            sub_1ABA7BBEC(v354);
            sub_1ABAA53EC();
            sub_1ABAAA4F4();
            v347 = v358;
          }

          v347[2] = v355 + 1;
          v356 = &v347[2 * v355];
          v356[4] = v353;
          v356[5] = v352;
        }
      }

      ++v346;
      --v344;
    }

    while (v344);
  }

  else
  {
    v347 = MEMORY[0x1E69E7CC0];
  }

  v359 = v347[2];
  if (v359)
  {
    if (v359 == 1 && (v360 = sub_1ABB2B834(v347), v361))
    {
      v362 = v360;
      v363 = v361;

      v444[0] = 0x7461206874697720;
      v444[1] = 0xEF206565646E6574;
      MEMORY[0x1AC5A9410](v362, v363);
    }

    else
    {
      v444[0] = v347;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABA7E760();
      sub_1ABAB47C4(v364, v365, &unk_1ABF3A8C0);
      v366 = sub_1ABF23ED4();
      v368 = v367;

      v444[0] = 0xD000000000000010;
      v444[1] = 0x80000001ABF8EA60;
      MEMORY[0x1AC5A9410](v366, v368);
    }

    MEMORY[0x1AC5A9410](v444[0], v444[1]);

    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
LABEL_315:
    v440 = v446;
    v441 = v445;
    sub_1ABA97340();
    sub_1ABB3E5B4(v369, v370, v371, v372);
    sub_1ABA97340();
    sub_1ABB3E5B4(v373, v374, v375, v376);
    v377 = v435[3];
    v378 = 1 << *(v377 + 32);
    v379 = -1;
    if (v378 < 64)
    {
      v379 = ~(-1 << v378);
    }

    v380 = v379 & *(v377 + 64);
    v381 = (v378 + 63) >> 6;
    v382 = v435[3];

    v383 = 0;
    v384 = MEMORY[0x1E69E7CC0];
    while (v380)
    {
LABEL_323:
      v386 = __clz(__rbit64(v380));
      v380 &= v380 - 1;
      v387 = *(*(v377 + 48) + ((v383 << 9) | (8 * v386)));
      if (sub_1ABD51FB4(v387, v433) || sub_1ABD51FB4(v387, v334))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v391 = *(v384 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD89C8();
          v384 = v392;
        }

        v389 = *(v384 + 16);
        v388 = *(v384 + 24);
        v390 = v389 + 1;
        if (v389 >= v388 >> 1)
        {
          sub_1ABA7BBEC(v388);
          v439 = v393;
          sub_1ABAD89C8();
          v390 = v439;
          v384 = v394;
        }

        *(v384 + 16) = v390;
        *(v384 + 8 * v389 + 32) = v387;
      }
    }

    while (1)
    {
      v385 = v383 + 1;
      if (__OFADD__(v383, 1))
      {
        break;
      }

      if (v385 >= v381)
      {

        sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
        v395 = swift_allocObject();
        v396 = sub_1ABB7D7F8(v395, 1);
        *v397 = v435[14];
        v444[0] = v384;
        sub_1ABD7DAF4(v396);

        sub_1ABAA1A1C();
        sub_1ABAB480C(v398, v399, v400);
        sub_1ABAA1A1C();
        sub_1ABAB480C(v401, v402, v403);
        v404 = v444[0];
        v405 = v427;
        v406 = v440;
        *v427 = v441;
        v405[1] = v406;
        v407 = type metadata accessor for K2TTextualization();
        sub_1ABAE84E0(v429, v405 + v407[5]);
        sub_1ABAE84E0(v430, v405 + v407[6]);
        *(v405 + v407[7]) = v404;
        sub_1ABA8C6E0();
        v411 = v407;
        goto LABEL_331;
      }

      v380 = *(v377 + 64 + 8 * v385);
      ++v383;
      if (v380)
      {
        v383 = v385;
        goto LABEL_323;
      }
    }

LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    __break(1u);
    goto LABEL_401;
  }

  MEMORY[0x1AC5A9410](46, 0xE100000000000000);
  if (v425)
  {
    goto LABEL_315;
  }

  sub_1ABAA1A1C();
  sub_1ABAB480C(v412, v413, v414);
  sub_1ABAA1A1C();
  sub_1ABAB480C(v415, v416, v417);

  type metadata accessor for K2TTextualization();
  sub_1ABA7ED8C();
LABEL_331:
  sub_1ABA7B9B4(v408, v409, v410, v411);
  sub_1ABA7BC1C();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1ABD59C3C()
{
  sub_1ABD5A7DC();

  sub_1ABF23D94();
}

uint64_t sub_1ABD59CA8()
{
  v0 = sub_1ABD51DA8();
  v1 = v0[15];
  v2 = v0[17];
  v3 = v0[19];

  return swift_deallocClassInstance();
}

_BYTE *sub_1ABD59D34@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_1ABD59DA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABD59F98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1ABD59EA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABD59EA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 104 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 13) && v10[1] == *(v10 - 12))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 13, 0x68uLL);
        result = memcpy(v10 - 13, __dst, 0x62uLL);
        v10 -= 13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 104;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD59F98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 104 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 104 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1ABF25054();
        }

        v6 = v8 + 2;
        v16 = 104 * v8;
        v17 = (v9 + 104 * v8 + 216);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 14) && *v17 == *(v17 - 13))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v6;
          v17 += 13;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 104 * v6 - 104;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x68uLL);
              memcpy((v22 + v19), __dst, 0x62uLL);
            }

            ++v21;
            v19 -= 104;
            v16 += 104;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v6 != v24)
          {
            v79 = v7;
            v25 = *a3;
            v26 = *a3 + 104 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 13) && v29[1] == *(v29 - 12);
                if (v30 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 13, 0x68uLL);
                memcpy(v29 - 13, __dst, 0x62uLL);
                v29 -= 13;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 104;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v79;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = v7[2];
        sub_1ABAD8820();
        v7 = v75;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v76;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v80 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1ABD5A618((*a3 + 104 * *v69), (*a3 + 104 * *v71), (*a3 + 104 * v72), v80);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v83 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1ABD5A4E0(&v83, *a1, a3);
LABEL_103:
}

uint64_t sub_1ABD5A4E0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABD5A618((*a3 + 104 * *v4), (*a3 + 104 * *v9), (*a3 + 104 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABD5A618(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = (a2 - __src) / 104;
  v9 = (a3 - a2) / 104;
  if (v8 < v9)
  {
    sub_1ABADD418(__src, (a2 - __src) / 104, __dst);
    v10 = &v4[104 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 104;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 104;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 104;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x68uLL);
    goto LABEL_17;
  }

  sub_1ABADD418(a2, (a3 - a2) / 104, __dst);
  v10 = &v4[104 * v9];
LABEL_19:
  v14 = v6 - 104;
  for (v5 -= 104; v10 > v4 && v6 > v7; v5 -= 104)
  {
    v16 = *(v10 - 13) == *(v6 - 13) && *(v10 - 12) == *(v6 - 12);
    if (!v16 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 104 == v6;
      v6 -= 104;
      if (!v12)
      {
        memmove(v5, v14, 0x68uLL);
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 104)
    {
      memmove(v5, v10 - 104, 0x68uLL);
    }

    v10 -= 104;
  }

LABEL_36:
  v17 = 104 * ((v10 - v4) / 104);
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, v17);
  }

  return 1;
}

unint64_t sub_1ABD5A7DC()
{
  result = qword_1EB4D90D8;
  if (!qword_1EB4D90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90D8);
  }

  return result;
}

uint64_t sub_1ABD5A830(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1ABD5A840(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1ABD5A850(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1ABF24CA4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABD5A8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1ABB32CF4(v5, v7) & 1;
}

uint64_t sub_1ABD5A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9)
  {
    if (a9 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1ABD5A9DC()
{
  result = *(v0 - 344);
  v2 = *(result + 16);
  return result;
}

uint64_t sub_1ABD5AA18()
{

  return sub_1ABF25054();
}

uint64_t sub_1ABD5AA34(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1ABB668FC();
  v2 = MEMORY[0x1E69E7CC0];
  v67 = sub_1ABF239C4();
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    v70 = *(v1 + 16);
    v69 = v1 + 32;
    do
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        result = sub_1ABF25104();
        __break(1u);
        return result;
      }

      v6 = v5 + 104 * v4;
      v7 = *(v6 + 97);
      if (v7 == 1)
      {
        v10 = v1;
        v11 = *(v6 + 56);
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *(v6 + 56);

          v14 = (v11 + 88);
          do
          {
            if (*v14)
            {
              v15 = *(v14 - 2);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = *(v2 + 16);
                sub_1ABAD89C8();
                v2 = v18;
              }

              v16 = *(v2 + 16);
              if (v16 >= *(v2 + 24) >> 1)
              {
                sub_1ABAD89C8();
                v2 = v19;
              }

              *(v2 + 16) = v16 + 1;
              *(v2 + 8 * v16 + 32) = v15;
            }

            v14 += 64;
            --v12;
          }

          while (v12);
        }

        v1 = v10;
        v3 = v70;
        v5 = v69;
      }

      else if (v7 == 2)
      {
        v8 = *(v6 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v2 + 16);
          sub_1ABAD89C8();
          v2 = v21;
        }

        v9 = *(v2 + 16);
        if (v9 >= *(v2 + 24) >> 1)
        {
          sub_1ABAD89C8();
          v2 = v22;
        }

        *(v2 + 16) = v9 + 1;
        *(v2 + 8 * v9 + 32) = v8;
      }

      ++v4;
    }

    while (v4 != v3);
  }

  v23 = v68[5];
  v69 = v68[6];
  v70 = sub_1ABA93E20(v68 + 2, v23);
  v71[0] = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *&v74 = AssociatedTypeWitness;
  *(&v74 + 1) = v25;
  *&v75 = AssociatedConformanceWitness;
  *(&v75 + 1) = v27;
  *v76 = swift_getAssociatedConformanceWitness();
  *&v77[24] = type metadata accessor for EntitySequence();
  *&v77[32] = swift_getWitnessTable();
  sub_1ABA93DC0(v77);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABD5B86C();
  GraphObjectBareContextProtocol.entities<A>(for:)();
  if (v66)
  {

    sub_1ABD5B8D0(v77);
    return v23;
  }

  v29 = *&v77[24];
  v30 = sub_1ABA93E20(v77, *&v77[24]);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  (*(v33 + 16))(&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = swift_getAssociatedTypeWitness();
  v80 = swift_getAssociatedConformanceWitness();
  sub_1ABA93DC0(v78);
  sub_1ABF23F04();
  sub_1ABA84B54(v77);
  v70 = 0x80000001ABF8EAE0;
  v23 = v67;
  while (1)
  {
    while (1)
    {
      sub_1ABA94E50(v78, v79);
      sub_1ABF24864();
      *&v77[42] = *&v76[10];
      *&v77[16] = v75;
      *&v77[32] = *v76;
      *v77 = v74;
      if ((*&v76[24] & 0xFF00) == 0xFE00)
      {
        sub_1ABA84B54(v78);
        return v23;
      }

      v34 = *v77;
      if (HIBYTE(*&v76[24]) <= 0xFEu)
      {
        break;
      }

LABEL_38:
      swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v23;
      v50 = sub_1ABAF81A8();
      if (__OFADD__(v23[2], (v51 & 1) == 0))
      {
        goto LABEL_52;
      }

      v52 = v50;
      v53 = v51;
      sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
      if (sub_1ABF24C64())
      {
        v54 = sub_1ABAF81A8();
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_56;
        }

        v52 = v54;
      }

      v23 = v74;
      if (v53)
      {
        v56 = (*(v74 + 56) + 16 * v52);
        v57 = v56[1];
        *v56 = 0xD000000000000011;
        v56[1] = v70;

        sub_1ABD5B920(v77);
      }

      else
      {
        *(v74 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        *(v23[6] + 8 * v52) = v34;
        v58 = (v23[7] + 16 * v52);
        *v58 = 0xD000000000000011;
        v58[1] = v70;
        sub_1ABD5B920(v77);
        v59 = v23[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_53;
        }

        v23[2] = v61;
      }
    }

    v35 = *&v77[8];
    if ((*&v76[24] & 0x100) != 0)
    {
      break;
    }

    v74 = *&v77[8];
    v75 = *&v77[24];
    *v76 = *&v77[40];
    v76[16] = v76[24];
    sub_1ABD5B988(*&v77[8], *&v77[16], *&v77[24], *&v77[32], *&v77[40], *&v77[48], *&v76[24]);
    sub_1ABD5B340(v71, &v74, 0);
    sub_1ABD5B920(v77);
    v36 = v72;
    v37 = v73;
    sub_1ABA93E20(v71, v72);
    v38 = (*(v37 + 16))(v36, v37);
    if (!v39)
    {
      sub_1ABA84B54(v71);
      goto LABEL_38;
    }

    v40 = v38;
    v41 = v39;
    swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v23;
    v42 = sub_1ABAF81A8();
    if (__OFADD__(v23[2], (v43 & 1) == 0))
    {
      goto LABEL_54;
    }

    v44 = v42;
    v45 = v43;
    sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
    if (sub_1ABF24C64())
    {
      v46 = sub_1ABAF81A8();
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_56;
      }

      v44 = v46;
    }

    v23 = v74;
    if (v45)
    {
      v48 = (*(v74 + 56) + 16 * v44);
      v49 = v48[1];
      *v48 = v40;
      v48[1] = v41;

      sub_1ABD5B920(v77);
    }

    else
    {
      *(v74 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      *(v23[6] + 8 * v44) = v34;
      v62 = (v23[7] + 16 * v44);
      *v62 = v40;
      v62[1] = v41;
      sub_1ABD5B920(v77);
      v63 = v23[2];
      v60 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v60)
      {
        goto LABEL_55;
      }

      v23[2] = v64;
    }

    sub_1ABA84B54(v71);
  }

  v65 = *&v77[8];

  v81 = v35;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  swift_willThrowTypedImpl();
  sub_1ABD5B920(v77);
  sub_1ABA84B54(v78);
  return v23;
}

uint64_t sub_1ABD5B340@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (a2)
  {
    v26 = *a1;
    v27 = v6;
    v28 = v7;
    v29 = v8;
    v30 = v10;
    v31 = v9;
    v32 = v11;
    result = sub_1ABD5AA34(&v26);
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1ABB668FC();
    sub_1ABF239C4();
  }

  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v10;
  v31 = v9;
  v32 = v11;
  v13 = v3[7];
  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;

  v17 = v14;
  v18 = v15;
  v19 = v16;
  sub_1ABD62C00(&v26, &v22, v33);

  v20 = v23;
  v21 = v24;
}

void sub_1ABD5B45C(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v8 = v3[6];
  sub_1ABA93E20(v3 + 2, v3[5]);
  v14 = v7;
  GraphObjectBareContextProtocol.entity(for:)();
  if (!v4)
  {
    v9 = v13;
    if (v13)
    {
      v10 = v12;
      sub_1ABD5B340(&v12, a2 & 1, a3);
      sub_1ABD5B81C(v10, v9);
    }

    else
    {
      sub_1ABD5B7C8();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1ABD5B590(uint64_t *a1)
{
  v6 = *a1;
  sub_1ABD5B45C(&v6, 0, v7);
  if (!v2)
  {
    v3 = v8;
    v4 = v9;
    sub_1ABA93E20(v7, v8);
    v1 = (*(v4 + 16))(v3, v4);
    sub_1ABA84B54(v7);
  }

  return v1;
}

uint64_t sub_1ABD5B62C(void *a1, uint64_t a2)
{
  sub_1ABA8F688(a1, a2);
  if (!v3)
  {
    v5 = v9;
    v6 = v10;
    sub_1ABA93E20(v8, v9);
    v2 = (*(v6 + 24))(a2, v5, v6);
    sub_1ABA84B54(v8);
  }

  return v2;
}

void sub_1ABD5B6BC(void *a1, uint64_t a2)
{
  sub_1ABA8F688(a1, a2);
  if (!v2)
  {
    v3 = v6;
    v4 = v7;
    sub_1ABA93E20(v5, v6);
    (*(v4 + 32))(v3, v4);
    sub_1ABA84B54(v5);
  }
}

uint64_t sub_1ABD5B740()
{
  sub_1ABA84B54((v0 + 16));
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABD5B7C8()
{
  result = qword_1EB4D90E8;
  if (!qword_1EB4D90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90E8);
  }

  return result;
}

uint64_t sub_1ABD5B81C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABD5B86C()
{
  result = qword_1EB4CF830;
  if (!qword_1EB4CF830)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF830);
  }

  return result;
}

uint64_t *sub_1ABD5B8D0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1AC5AB8B0);
  }

  return result;
}

uint64_t sub_1ABD5B920(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D90F8, &qword_1ABF5E7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1ABD5B988(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE1(a7) != 255)
  {
    return sub_1ABD5B9A0(result, a2, a3, a4, a5, a6, a7, BYTE1(a7) & 1);
  }

  return result;
}

id sub_1ABD5B9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1ABD5B9FC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v8 = sub_1ABA93DC0(&v12);
  (*(*(a4 - 8) + 32))(v8, a1, a4);
  v9 = swift_allocObject();
  sub_1ABA946C0(&v12, v9 + 16);
  v10 = a2[1];
  *(v9 + 56) = *a2;
  *(v9 + 72) = v10;
  return v9;
}

uint64_t sub_1ABD5BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v6 = sub_1ABA93DC0(v42);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  v7 = v43;
  v8 = sub_1ABA93E20(v42, v43);
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  (*(v12 + 16))(v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA93DC0(v39);
  sub_1ABF23F04();
  v35 = MEMORY[0x1E69E7CC8];
  *&v13 = 136315138;
  v36 = v13;
  while (1)
  {
    do
    {
      sub_1ABA94E50(v39, AssociatedTypeWitness);
      sub_1ABF24864();
      if (v38)
      {
        sub_1ABA84B54(v39);
        sub_1ABA84B54(v42);
        return v35;
      }

      v14 = v37;
      v15 = sub_1ABD5B590(&v37);
      v17 = v16;
    }

    while (!v16);
    v18 = v15;
    v19 = v35;
    v34[1] = swift_isUniquelyReferenced_nonNull_native();
    v37 = v19;
    v20 = sub_1ABAF81A8();
    if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
    {
      break;
    }

    v22 = v20;
    LODWORD(v35) = v21;
    sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
    if (sub_1ABF24C64())
    {
      v23 = sub_1ABAF81A8();
      v25 = v35;
      if ((v35 & 1) != (v24 & 1))
      {
        goto LABEL_16;
      }

      v22 = v23;
    }

    else
    {
      v25 = v35;
    }

    v26 = v37;
    v35 = v37;
    if (v25)
    {
      v27 = (v37[7] + 16 * v22);
      v28 = v27[1];
      *v27 = v18;
      v27[1] = v17;
    }

    else
    {
      v37[(v22 >> 6) + 8] |= 1 << v22;
      *(v26[6] + 8 * v22) = v14;
      v29 = (v26[7] + 16 * v22);
      *v29 = v18;
      v29[1] = v17;
      v30 = v26[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_15;
      }

      v26[2] = v32;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABD5BF1C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2CC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABD5FB9C(v6);
  *a1 = v2;
  return result;
}

void sub_1ABD5BF88(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, void *a7)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *(a4 + 3);
  v17 = *(a4 + 16);
  *(v7 + 112) = *a1;
  v18 = *(a1 + 24);
  *(v7 + 128) = *(a1 + 16);
  *(v7 + 136) = v18;
  *(v7 + 144) = v10;
  *(v7 + 152) = v11;
  *(v7 + 160) = v12;
  *(v7 + 168) = v13;
  *(v7 + 176) = a2;
  *(v7 + 184) = a3;
  *(v7 + 192) = v14;
  *(v7 + 208) = v15;
  *(v7 + 216) = v16;
  *(v7 + 224) = v17;
  v21[0] = v18;
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v12;
  v22 = v13;
  v19 = a6[1];
  v20[0] = *a6;
  v20[1] = v19;

  sub_1ABD4F784(v21, a5, v20, a7);
}

void sub_1ABD5C038()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v57 = type metadata accessor for K2TTextualization();
  v10 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v61 = *(v13 + 16);
  if (!v61)
  {
LABEL_36:
    sub_1ABA7BC1C();
    return;
  }

  v55 = v12;
  v60 = v13 + 32;

  v15 = 0;
  v63 = 0;
  v58 = v14;
  v56 = v3;
  v62 = v9;
  v59 = v13;
  while (v15 < *(v13 + 16))
  {
    sub_1ABA7DB18(v60 + (v15 << 6));
    if (*(v3 + 24))
    {
      sub_1ABAA35B0();
    }

    else
    {
      v16 = *(v1 + 16);
      v17 = *(v16 + 16);
      if (v17)
      {
        v9 = v1;
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v70 = MEMORY[0x1E69E7CC0];

        sub_1ABADDC4C();
        v18 = v70;
        v19 = v17 - 1;
        for (i = 32; ; i += 64)
        {
          v21 = sub_1ABA7F5F0(v16 + i);
          sub_1ABA96D40(v21, v22, v23, v24);
          v70 = v18;
          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            sub_1ABA7BBEC(v25);
            sub_1ABADDC4C();
            v18 = v70;
          }

          v27 = sub_1ABA90984(&type metadata for Subfact);
          sub_1ABAA53F8(v27);
          v18[2] = v26 + 1;
          sub_1ABA946C0(&v64, &v18[5 * v26 + 4]);
          if (!v19)
          {
            break;
          }

          --v19;
        }

        v1 = v9;
        v3 = v56;
        sub_1ABAB551C();
      }

      else
      {
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v18 = MEMORY[0x1E69E7CC0];
      }

      v13 = v59;
      v28 = sub_1ABD605E0(v71, v18);

      sub_1ABB6DBB8(v71);
      if (v28)
      {
        sub_1ABB6DBB8(v71);
        goto LABEL_34;
      }
    }

    if (*(v3 + 24))
    {
      sub_1ABA93E64(v3, &v64);
    }

    else
    {
      v29 = *(v3 + 16);
      v64 = *v3;
      v65 = v29;
      v66 = *(v3 + 32);
    }

    if (*(&v65 + 1))
    {
      sub_1ABA946C0(&v64, v67);
      sub_1ABA93E20(v67, v68);
      sub_1ABAA31A8();
      MEMORY[0x1EEE9AC00](v30);
      sub_1ABA7E918();
      *(v31 - 16) = v1;
      *(v31 - 8) = v71;
      v9 = v63;
      v32 = sub_1ABF23FE4();
      v63 = v9;
      if ((v32 & 1) == 0)
      {
        sub_1ABB6DBB8(v71);
        sub_1ABA84B54(v67);
LABEL_28:
        sub_1ABAB551C();
        goto LABEL_34;
      }

      sub_1ABA84B54(v67);
      sub_1ABAB551C();
    }

    v33 = *(v1 + 22);
    v34 = *(v1 + 23);
    v68 = &type metadata for Subfact;
    v69 = &protocol witness table for Subfact;
    sub_1ABA97C54();
    v67[0] = swift_allocObject();
    sub_1ABA81984(v67[0]);
    v35 = *(v3 + 24);

    sub_1ABD51B4C();

    sub_1ABA84B54(v67);
    sub_1ABA886B8(v9, 1, &v72);
    if (!v36)
    {
      v37 = v55;
      v38 = sub_1ABD51E70(v9, v55);
      v39 = v37[1];
      v54 = *v37;
      v67[0] = v54;
      v67[1] = v39;
      MEMORY[0x1EEE9AC00](v38);
      sub_1ABA7E918();
      *(v40 - 16) = v67;
      v41 = v58;
      v9 = v63;
      v43 = sub_1ABB2F764(sub_1ABC7A930, v42, v58);
      v63 = v9;
      v13 = v59;
      if (!v43)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v45, v46, v41);
          sub_1ABAAA4F4();
        }

        sub_1ABAB551C();
        v58 = v47;
        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1ABA7BBEC(v48);
          sub_1ABAAA4F4();
          v58 = v52;
        }

        sub_1ABD51F38(v55);
        v50 = v58;
        *(v58 + 16) = v49 + 1;
        v51 = v50 + 16 * v49;
        *(v51 + 32) = v54;
        *(v51 + 40) = v39;
        v3 = v56;
        goto LABEL_34;
      }

      sub_1ABD51F38(v37);
      v3 = v56;
      goto LABEL_28;
    }

    sub_1ABD5FB34(v9);
    v13 = v59;
LABEL_34:
    if (++v15 == v61)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
}

void sub_1ABD5C5B0()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - v8;
  v10 = type metadata accessor for K2TTextualization();
  v11 = sub_1ABA8E5AC(v10, &v106[24]);
  v89 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v86 - v17);
  v104.n128_u64[0] = *(v0 + 128);
  swift_bridgeObjectRetain_n();
  sub_1ABD5BF1C(&v104);

  v19 = MEMORY[0x1E69E7CC0];
  if (*(v104.n128_u64[0] + 16))
  {
    v91 = 0;
    v92 = v18;
    v87 = v3;
    v20 = 0;
    v97 = v104.n128_u64[0] + 32;
    v94 = MEMORY[0x1E69E7CC0];
    v96 = v9;
    v21 = v104.n128_u64[0];
    v95 = v104.n128_u64[0];
    while (v20 < v21[2])
    {
      v99 = v20;
      sub_1ABAA1158();
      v24 = sub_1ABA7F5F0(v22 + (v23 << 6));
      *&v106[9] = v25;
      v105 = v26;
      *v106 = v27;
      v104 = v24;
      v28 = *(v1 + 128);
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v1;
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v103 = v19;

        sub_1ABADDC4C();
        v31 = v103;
        v9 = (v29 - 1);
        for (i = 32; ; i += 64)
        {
          v33 = sub_1ABA7F5F0(v28 + i);
          sub_1ABA96D40(v33, v34, v35, v36);
          v103 = v31;
          v38 = v31[2];
          v37 = v31[3];
          if (v38 >= v37 >> 1)
          {
            sub_1ABA7BBEC(v37);
            sub_1ABADDC4C();
            v31 = v103;
          }

          v39 = sub_1ABA90984(&type metadata for Subfact);
          sub_1ABAA53F8(v39);
          v31[2] = v38 + 1;
          sub_1ABA946C0(v100, &v31[5 * v38 + 4]);
          if (!v9)
          {
            break;
          }

          --v9;
        }

        v1 = v30;
        sub_1ABA958E4();
        v19 = MEMORY[0x1E69E7CC0];
        v21 = v95;
      }

      else
      {
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v31 = v19;
      }

      v40 = sub_1ABD605E0(&v104, v31);

      sub_1ABB6DBB8(&v104);
      if (v40)
      {
        sub_1ABB6DBB8(&v104);
      }

      else
      {
        v41 = sub_1ABA90984(&type metadata for Subfact);
        *&v100[0] = v41;
        v42 = v105;
        v41[1] = v104;
        v41[2] = v42;
        v41[3] = *v106;
        *(v41 + 57) = *&v106[9];
        sub_1ABAA35B0();
        sub_1ABD515A4();
        sub_1ABA84B54(v100);
        sub_1ABA886B8(v9, 1, &v106[24]);
        if (v43)
        {
          sub_1ABB6DBB8(&v104);
          sub_1ABD5FB34(v9);
        }

        else
        {
          v44 = v105;
          v45 = v92;
          sub_1ABD51E70(v9, v92);
          v9 = v45[1];
          v101 = *v45;
          v102 = v9;

          MEMORY[0x1AC5A9410](10272, 0xE200000000000000);

          MEMORY[0x1AC5A9410](v44, *(&v44 + 1));
          sub_1ABB6DBB8(&v104);

          sub_1ABA97C60();

          v47 = v102;
          *v45 = v101;
          v45[1] = v47;
          MEMORY[0x1EEE9AC00](v46);
          sub_1ABA7E918();
          *(v48 - 16) = v45;
          v49 = v94;
          v50 = v91;
          v52 = sub_1ABB2FA20(sub_1ABD5A9C0, v51, v94);
          v91 = v50;
          if (v52)
          {
            sub_1ABA958E4();
            v19 = MEMORY[0x1E69E7CC0];
            v21 = v95;
          }

          else
          {
            sub_1ABD51ED4(v45, v90);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = *(v49 + 16);
              sub_1ABADB500();
              v94 = v60;
            }

            sub_1ABA958E4();
            v19 = MEMORY[0x1E69E7CC0];
            v21 = v95;
            v54 = *(v94 + 16);
            v53 = *(v94 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1ABA7BBEC(v53);
              sub_1ABADB500();
              v94 = v61;
            }

            *(v94 + 16) = v54 + 1;
            sub_1ABA935AC(&v105 + 8);
            sub_1ABD51E70(v90, v56 + v55 + *(v57 + 72) * v54);
          }

          sub_1ABD51F38(v92);
        }
      }

      sub_1ABAA3CF0();
      if (v20 == v58)
      {

        v3 = v87;
        v62 = v94;
        goto LABEL_28;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v63 = *(v62 + 16);
    if (v63)
    {
      v99 = v1;
      v101 = v19;

      sub_1ABADDBD4();
      v64 = v101;
      sub_1ABA935AC(&v105 + 8);
      v94 = v62;
      v66 = v62 + v65;
      v68 = *(v67 + 72);
      v69 = v88;
      do
      {
        v70 = sub_1ABA8B14C();
        sub_1ABD51ED4(v70, v71);
        v73 = *v69;
        v72 = v69[1];

        sub_1ABD51F38(v69);
        v101 = v64;
        v75 = *(v64 + 16);
        v74 = *(v64 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1ABA7BBEC(v74);
          sub_1ABADDBD4();
          v69 = v88;
          v64 = v101;
        }

        *(v64 + 16) = v75 + 1;
        v76 = v64 + 16 * v75;
        *(v76 + 32) = v73;
        *(v76 + 40) = v72;
        v66 += v68;
        --v63;
      }

      while (v63);
      v101 = v64;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      v77 = sub_1ABF23B54();
      v79 = v78;

      v101 = 40;
      v102 = 0xE100000000000000;
      sub_1ABA8A034();
      v81 = *(v80 + 208);
      v82 = *(v80 + 216);
      v83 = sub_1ABF23C84();
      MEMORY[0x1AC5A9410](v83);

      MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
      MEMORY[0x1AC5A9410](v77, v79);

      sub_1ABA97C60();
      v84 = v94;

      sub_1ABD63788(v101, v102, v84, MEMORY[0x1E69E7CC0], v3);
      v85 = 0;
    }

    else
    {

      v85 = 1;
    }

    sub_1ABA7B9B4(v3, v85, 1, v93);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD5CCE4()
{
  v1 = v0[16];
  v2 = v0[18];
  v3 = v0[20];

  v4 = v0[23];

  v5 = v0[25];
  v6 = v0[27];
}

void *sub_1ABD5CD50()
{
  v0 = sub_1ABD51DA8();
  v1 = v0[16];
  v2 = v0[18];
  v3 = v0[20];

  v4 = v0[23];

  v5 = v0[25];
  v6 = v0[27];

  return v0;
}

uint64_t sub_1ABD5CDBC()
{
  sub_1ABD5CD50();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD5CEA8()
{
  sub_1ABD4FAC8();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v1 = sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), &v9);
    sub_1ABAA4F20(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD5CF50()
{
  sub_1ABA7E2A8();
  v119 = v1;
  v2 = 0;
  v3 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  v4 = sub_1ABA7AB80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  v114 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v113 - v9;
  v117 = type metadata accessor for K2TTextualization();
  v11 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  sub_1ABA7C068();
  v113 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v113 - v14;
  v129 = v0;
  v15 = sub_1ABAA15AC();
  v127 = v16;
  v128 = 279;
  v132 = 3481;
  v130 = v15;
  v131 = 4281;

  v17 = 32;
  v122 = 0;
  for (i = v10; ; v10 = i)
  {
    if (v127 == v2)
    {

      v33 = 0;
      v34 = 0;
      goto LABEL_22;
    }

    if (v2 >= *(v130 + 16))
    {
      goto LABEL_105;
    }

    v18 = sub_1ABA7F5F0(v130 + v17);
    *(v140 + 1) = v19;
    sub_1ABA960E0(v18, v20, v21);
    if (v128 < 34)
    {
      break;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_116;
    }

    if (*(_Records_GDEntityPredicate_records + 100) >= v132)
    {
      goto LABEL_107;
    }

    if (*(_Records_GDEntityPredicate_records + 101) >= v131)
    {
      goto LABEL_108;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_117;
    }

    v23 = v22;
    v24 = v139[0];
    v25 = v139[1];
    sub_1ABD1927C(v139, &v136);

    v26 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_118;
    }

    v28 = v26;
    v29 = v27;
    v30 = v140[0];
    v125 = v140[1];
    LODWORD(v124) = LOBYTE(v140[2]);
    sub_1ABF23DD4();
    v31 = v24 == v28 && v25 == v29;
    if (v31)
    {

LABEL_18:

      v35 = v125;
      v36 = v124;
      sub_1ABD5A830(v30, v125, v124);
      sub_1ABB6DBB8(v139);
      if (v36)
      {
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v33 = sub_1ABF23C84();
        v34 = v37;
        sub_1ABD5A840(v30, v35, 0);
      }

      v10 = i;
LABEL_22:
      v38 = swift_allocObject();
      v38[2] = v33;
      v38[3] = v34;
      v39 = v129;
      v116 = v38;
      v38[4] = v129;
      v40 = v39[16];
      v41 = *(v40 + 16);
      v123 = v40 + 32;
      v124 = v41;

      v125 = v40;

      v42 = 0;
      v118 = MEMORY[0x1E69E7CC0];
LABEL_23:
      if (v42 == v124)
      {

        sub_1ABA7BC1C();
        return;
      }

      if (v42 >= *(v125 + 16))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        break;
      }

      v43 = sub_1ABA7F5F0(v123 + (v42 << 6));
      *(v140 + 1) = v44;
      sub_1ABA960E0(v43, v45, v46);
      if (v128 < 34)
      {
        goto LABEL_102;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_113;
      }

      if (*(_Records_GDEntityPredicate_records + 100) >= v132)
      {
        goto LABEL_103;
      }

      if (*(_Records_GDEntityPredicate_records + 101) >= v131)
      {
        goto LABEL_104;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_114;
      }

      v48 = sub_1ABAA235C(v47);
      sub_1ABD1927C(v48, &v136);
      sub_1ABAFF1DC(v141, &v136);
      sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_115;
      }

      v50 = v49;
      ++v42;
      v51 = v141[0];
      v52 = v141[1];
      sub_1ABF23DD4();
      sub_1ABA82EB0();
      if (v31 && v52 == v50)
      {
        sub_1ABAE4478(v141);

LABEL_38:
        v120 = v52;
        v121 = v51;
        v127 = v42;
        v55 = v129[16];
        v130 = *(v55 + 16);

        v56 = 0;
        for (j = 32; ; j += 64)
        {
          if (v130 == v56)
          {

            v10 = i;
            v42 = v127;
            v52 = v120;
            goto LABEL_56;
          }

          if (v56 >= *(v55 + 16))
          {
            break;
          }

          v58 = sub_1ABA7F5F0(v55 + j);
          *(v138 + 9) = v59;
          v137 = v60;
          v138[0] = v61;
          v136 = v58;
          if (!_Records_GDEntityPredicate_records)
          {
            goto LABEL_110;
          }

          if (*(_Records_GDEntityPredicate_records + 97) >= v132 || *(_Records_GDEntityPredicate_records + 98) >= v131)
          {
            goto LABEL_100;
          }

          if (!_Records_GDEntityPredicate_predicateIds)
          {
            goto LABEL_112;
          }

          v63 = v136;
          sub_1ABD1927C(&v136, &v133);

          v64 = sub_1ABF23DD4();
          if (!_Records_GDEntityPredicate_labels)
          {
            goto LABEL_111;
          }

          v66 = v64;
          v67 = v65;
          sub_1ABF23DD4();
          if (v63.n128_u64[0] == v66 && v63.n128_u64[1] == v67)
          {
            sub_1ABB6DBB8(&v136);

LABEL_59:

            sub_1ABB6DBB8(v139);
            v10 = i;
            v42 = v127;
            goto LABEL_23;
          }

          v69 = sub_1ABF25054();
          sub_1ABB6DBB8(&v136);

          if (v69)
          {
            goto LABEL_59;
          }

          ++v56;
        }

        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      sub_1ABAA5934();
      v54 = sub_1ABF25054();
      sub_1ABAE4478(v141);

      if (v54)
      {
        goto LABEL_38;
      }

LABEL_56:
      if (*(v119 + 24))
      {
        sub_1ABA93E64(v119, &v133);
      }

      else
      {
        v70 = *(v119 + 16);
        v133 = *v119;
        v134 = v70;
        v135 = *(v119 + 32);
      }

      if (*(&v134 + 1))
      {
        sub_1ABA946C0(&v133, &v136);
        sub_1ABA93E20(&v136, *(&v137 + 1));
        sub_1ABAA31A8();
        MEMORY[0x1EEE9AC00](v71);
        sub_1ABA7E918();
        *(v72 - 16) = v129;
        *(v72 - 8) = v139;
        sub_1ABAA1A28();
        v73 = v122;
        v74 = sub_1ABF23FE4();
        v122 = v73;
        if ((v74 & 1) == 0)
        {
          sub_1ABB6DBB8(v139);
          sub_1ABA84B54(&v136);
          goto LABEL_23;
        }

        sub_1ABA84B54(&v136);
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_119;
      }

      v75 = *(_Records_GDEntityPredicate_records + 98);
      if (*(_Records_GDEntityPredicate_records + 97) >= v132 || v75 >= v131)
      {
        goto LABEL_109;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_121;
      }

      sub_1ABAFF1DC(v141, &v136);
      sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_120;
      }

      v78 = v77;
      sub_1ABF23DD4();
      sub_1ABA82EB0();
      if (v31 && v52 == v78)
      {
        sub_1ABAE4478(v141);
      }

      else
      {
        sub_1ABAA5934();
        v80 = sub_1ABF25054();
        sub_1ABAE4478(v141);

        if ((v80 & 1) == 0)
        {
          v81 = v129;
          v83 = v129[22];
          v82 = v129[23];
          *(&v137 + 1) = &type metadata for Subfact;
          *&v138[0] = &protocol witness table for Subfact;
          sub_1ABA97C54();
          v136.n128_u64[0] = swift_allocObject();
          sub_1ABA83A24(v136.n128_i64[0]);
          sub_1ABAA1FC4();
          v84 = v114;
          sub_1ABA95340();
          sub_1ABD51B4C();

          sub_1ABA84B54(&v136);
          if (sub_1ABA7E1E0(v84, 1, v117) == 1)
          {
            sub_1ABD5FB34(v84);
            goto LABEL_23;
          }

          v99 = v84;
          v85 = v113;
          sub_1ABD51E70(v99, v113);
          sub_1ABAA1370();
          MEMORY[0x1EEE9AC00](v100);
          sub_1ABA7E918();
          *(v101 - 16) = &v136;
          v104 = sub_1ABAA0F0C(v102, v103);
          v122 = v82;
          if (v104)
          {
            goto LABEL_90;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v108 = v118;
          }

          else
          {
            sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v106, v107, v118);
            sub_1ABAAA4F4();
          }

          sub_1ABAA1CEC(v108);
          v96 = v113;
          if (v97)
          {
            sub_1ABA7BBEC(v109);
            sub_1ABAAA4F4();
            v118 = v112;
            v96 = v113;
          }

LABEL_95:
          sub_1ABD51F38(v96);
          v110 = v118;
          *(v118 + 16) = v82;
          v111 = v110 + 16 * v83;
          *(v111 + 32) = v75;
          *(v111 + 40) = v81;
          goto LABEL_23;
        }
      }

      v81 = v129;
      v83 = v129[22];
      v82 = v129[23];
      *(&v137 + 1) = &type metadata for Subfact;
      *&v138[0] = &protocol witness table for Subfact;
      sub_1ABA97C54();
      v136.n128_u64[0] = swift_allocObject();
      sub_1ABA83A24(v136.n128_i64[0]);
      sub_1ABAA1FC4();

      sub_1ABD51B4C();

      sub_1ABA84B54(&v136);
      if (sub_1ABA7E1E0(v10, 1, v117) == 1)
      {
        sub_1ABD5FB34(v10);
        goto LABEL_23;
      }

      v85 = v115;
      sub_1ABD51E70(v10, v115);
      sub_1ABAA1370();
      MEMORY[0x1EEE9AC00](v86);
      sub_1ABA7E918();
      *(v87 - 16) = &v136;
      v90 = sub_1ABAA0F0C(v88, v89);
      v122 = v82;
      if (v90)
      {
LABEL_90:
        sub_1ABD51F38(v85);
        goto LABEL_23;
      }

      v91 = swift_isUniquelyReferenced_nonNull_native();
      if (v91)
      {
        v94 = v118;
      }

      else
      {
        sub_1ABA7C494(v91, v92, v93, v118);
        sub_1ABAAA4F4();
      }

      sub_1ABAA1CEC(v94);
      v96 = v115;
      if (v97)
      {
        sub_1ABA7BBEC(v95);
        sub_1ABAAA4F4();
        v118 = v98;
        v96 = v115;
      }

      goto LABEL_95;
    }

    v32 = sub_1ABF25054();

    if (v32)
    {
      goto LABEL_18;
    }

    sub_1ABB6DBB8(v139);
    v17 = v23 + 64;
    ++v2;
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1ABD5DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {

    MEMORY[0x1AC5A9410](2126631, 0xE300000000000000);
    MEMORY[0x1AC5A9410](a5, a6);
    v11 = 544434464;
    v12 = 0xE400000000000000;
  }

  else
  {

    MEMORY[0x1AC5A9410](32, 0xE100000000000000);
    v14 = *(a7 + 208);
    v15 = *(a7 + 216);

    MEMORY[0x1AC5A9410](v14, v15);

    v11 = 0x206874697720;
    v12 = 0xE600000000000000;
  }

  MEMORY[0x1AC5A9410](v11, v12);
  MEMORY[0x1AC5A9410](a3, a4);
}

void sub_1ABD5DB24()
{
  sub_1ABA7E2A8();
  v108 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8147C(&v105 - v8);
  v9 = type metadata accessor for K2TTextualization();
  v10 = sub_1ABA8E5AC(v9, v129);
  v107 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA8147C(&v105 - v16);
  v115 = v0;
  sub_1ABAA15AC();
  v119 = v17;
  v120 = 279;
  v122 = 3481;
  v121 = 4281;
  v18 = 0;
  v19 = 32;

  while (1)
  {
    sub_1ABAA1158();
    if (v21 == v18)
    {

      sub_1ABAB58A4();
      sub_1ABA994FC();
      goto LABEL_22;
    }

    v22 = *(v20 + 16);
    if (v18 >= v22)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);

      __break(1u);
      return;
    }

    sub_1ABA7DB18(v20 + v19);
    sub_1ABAA3CF0();
    if (v22 < 34)
    {
      goto LABEL_85;
    }

    v22 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_94;
    }

    v23 = *(_Records_GDEntityPredicate_records + 100);
    sub_1ABAB5738();
    if (v23 >= v24)
    {
      goto LABEL_86;
    }

    v25 = *(v22 + 808);
    sub_1ABA8A034();
    if (v25 >= v22)
    {
      goto LABEL_87;
    }

    v22 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_95;
    }

    v1 = v127;
    v26 = v128;
    sub_1ABA97898();

    v27 = sub_1ABF23DD4();
    v22 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_96;
    }

    i = v27;
    v29 = v28;
    v30 = v129[0];
    v31 = v129[1];
    LODWORD(v117) = v130;
    sub_1ABF23DD4();
    v32 = v1 == i && v26 == v29;
    if (v32)
    {
      sub_1ABAA2168();

      goto LABEL_19;
    }

    v1 = sub_1ABAB532C();

    if (v1)
    {
      break;
    }

    sub_1ABB6DBB8(&v127);
    v19 += 64;
    ++v18;
    sub_1ABAA2168();
  }

  sub_1ABAA2168();
LABEL_19:

  v33 = v30;
  v34 = v117;
  sub_1ABD5A830(v33, v31, v117);
  sub_1ABB6DBB8(&v127);
  sub_1ABA994FC();
  if (v34)
  {
    sub_1ABAB58A4();
  }

  else
  {
    sub_1ABA8B14C();
    v105 = sub_1ABF23C84();
    v111 = v35;
    v36 = sub_1ABA8B14C();
    sub_1ABD5A840(v36, v37, 0);
  }

LABEL_22:
  v127 = *(v1 + 128);
  swift_bridgeObjectRetain_n();
  sub_1ABD5BF1C(&v127);
  v109 = 0;

  v38 = 0;
  v117 = *(v127 + 16);
  v118 = v127;
  v116 = v127 + 32;
  v112 = MEMORY[0x1E69E7CC0];
LABEL_23:
  while (v38 != v117)
  {
    v22 = *(v118 + 16);
    if (v38 >= v22)
    {
      goto LABEL_80;
    }

    sub_1ABA7DB18(v116 + (v38 << 6));
    sub_1ABAA3CF0();
    if (v22 < 34)
    {
      goto LABEL_81;
    }

    v22 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_91;
    }

    v39 = *(_Records_GDEntityPredicate_records + 100);
    sub_1ABAB5738();
    if (v39 >= v40)
    {
      goto LABEL_82;
    }

    v41 = *(v22 + 808);
    sub_1ABA8A034();
    if (v41 >= v22)
    {
      goto LABEL_83;
    }

    v22 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_92;
    }

    v42 = v127;
    v43 = v128;
    sub_1ABA97898();

    v44 = sub_1ABF23DD4();
    v22 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_93;
    }

    v46 = v44;
    v47 = v45;
    ++v38;
    sub_1ABF23DD4();
    if (v42 == v46 && v43 == v47)
    {

LABEL_38:
      v119 = v38;
      v50 = *(v1 + 128);
      v51 = *(v50 + 16);

      v52 = 0;
      for (i = 32; ; i += 64)
      {
        if (v51 == v52)
        {

          sub_1ABA994FC();
          v38 = v119;
          goto LABEL_58;
        }

        v22 = *(v50 + 16);
        if (v52 >= v22)
        {
          break;
        }

        v53 = sub_1ABA7F5F0(v50 + i);
        *&v126[9] = v54;
        v125 = v55;
        *v126 = v56;
        v124 = v53;
        v22 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_88;
        }

        v22 = v121;
        if (*(_Records_GDEntityPredicate_records + 100) >= v122 || *(_Records_GDEntityPredicate_records + 101) >= v121)
        {
          goto LABEL_79;
        }

        v22 = &_Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_89;
        }

        v58 = v124.n128_u64[1];
        v1 = v124.n128_u64[0];
        sub_1ABD1927C(&v124, &v123);

        v59 = sub_1ABF23DD4();
        v22 = _Records_GDEntityPredicate_labels;
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_90;
        }

        v61 = v59;
        v62 = v60;
        sub_1ABF23DD4();
        if (v1 == v61 && v58 == v62)
        {
          sub_1ABB6DBB8(&v124);
        }

        else
        {
          v64 = sub_1ABF25054();
          sub_1ABB6DBB8(&v124);

          if ((v64 & 1) == 0)
          {

            sub_1ABB6DBB8(&v127);
            sub_1ABA994FC();
            v38 = v119;
            goto LABEL_23;
          }
        }

        ++v52;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v49 = sub_1ABF25054();

    if (v49)
    {
      goto LABEL_38;
    }

LABEL_58:
    *(&v125 + 1) = &type metadata for Subfact;
    *v126 = &protocol witness table for Subfact;
    sub_1ABA97C54();
    v124.n128_u64[0] = swift_allocObject();
    sub_1ABA81984(v124.n128_i64[0]);
    sub_1ABD515A4();
    sub_1ABA84B54(&v124);
    sub_1ABA886B8(i, 1, v129);
    if (v32)
    {
      sub_1ABD5FB34(i);
    }

    else
    {
      v65 = v110;
      sub_1ABD51E70(i, v110);
      v66 = v105;
      v67 = v111;
      if (!v111)
      {
        v68 = *(v1 + 208);
        v69 = *(v1 + 216);
        v66 = sub_1ABF23C84();
      }

      v124.n128_u64[0] = v66;
      v124.n128_u64[1] = v67;

      MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
      MEMORY[0x1AC5A9410](*v65, v65[1]);

      v71 = v124.n128_u64[1];
      *v65 = v124.n128_u64[0];
      v65[1] = v71;
      MEMORY[0x1EEE9AC00](v70);
      sub_1ABA7E918();
      *(v72 - 16) = v65;
      v73 = v109;
      v75 = sub_1ABB2FA20(sub_1ABD5A9C0, v74, v112);
      v109 = v73;
      if (!v75)
      {
        sub_1ABD51ED4(v65, v106);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v77, v78, v112);
          sub_1ABADB500();
          v112 = v84;
        }

        v80 = *(v112 + 16);
        v79 = *(v112 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_1ABA7BBEC(v79);
          sub_1ABADB500();
          v112 = v85;
        }

        *(v112 + 16) = v80 + 1;
        sub_1ABA935AC(&v126[16]);
        sub_1ABD51E70(v106, v82 + v81 + *(v83 + 72) * v80);
      }

      sub_1ABD51F38(v110);
    }
  }

  sub_1ABAA2168();

  v86 = v112;
  v87 = *(v112 + 16);
  if (v87)
  {
    v127 = MEMORY[0x1E69E7CC0];

    sub_1ABADDBD4();
    v88 = v127;
    sub_1ABA935AC(&v126[16]);
    v90 = v86 + v89;
    v92 = *(v91 + 72);
    do
    {
      v93 = v113;
      sub_1ABD51ED4(v90, v113);
      v95 = *v93;
      v94 = v93[1];

      sub_1ABD51F38(v93);
      v127 = v88;
      v97 = *(v88 + 16);
      v96 = *(v88 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1ABA7BBEC(v96);
        sub_1ABADDBD4();
        v88 = v127;
      }

      *(v88 + 16) = v97 + 1;
      v98 = v88 + 16 * v97;
      *(v98 + 32) = v95;
      *(v98 + 40) = v94;
      v90 += v92;
      --v87;
    }

    while (v87);
    v127 = v88;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v99 = sub_1ABF23B54();
    v101 = v100;

    v127 = 40;
    v128 = 0xE100000000000000;
    MEMORY[0x1AC5A9410](v99, v101);

    sub_1ABA97C60();
    v102 = v112;

    v103 = v108;
    sub_1ABD63788(v127, v128, v102, MEMORY[0x1E69E7CC0], v108);
    v104 = 0;
  }

  else
  {

    v104 = 1;
    v103 = v108;
  }

  sub_1ABA7B9B4(v103, v104, 1, v114);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD5E5B4()
{
  sub_1ABD4FAC8();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v1 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), &v9);
    sub_1ABAA4F20(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD5E65C()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = 0;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v87 - v8;
  v91 = v0;
  sub_1ABAA15AC();
  v100 = v9;
  v98 = 279;
  v102 = 3481;
  v101 = 4281;

  v11 = 32;
  v96 = v2;
  v97 = 0;
  while (1)
  {
    if (v100 == v3)
    {

      v88 = 0;
      v26 = 0;
      goto LABEL_24;
    }

    if (v3 >= *(v10 + 16))
    {
      goto LABEL_87;
    }

    v12 = sub_1ABA7F5F0(v10 + v11);
    *(v110 + 1) = v13;
    sub_1ABA960E0(v12, v14, v15);
    if (v98 < 94)
    {
      break;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_97;
    }

    if (*(_Records_GDEntityPredicate_records + 280) >= v102)
    {
      goto LABEL_89;
    }

    if (*(_Records_GDEntityPredicate_records + 281) >= v101)
    {
      goto LABEL_90;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_98;
    }

    v17 = v16;
    v18 = v109[0];
    v19 = v109[1];
    sub_1ABD1927C(v109, &v106);

    v20 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_99;
    }

    v22 = v20;
    v23 = v21;
    v95 = v110[0];
    v99 = v110[1];
    LODWORD(v94) = LOBYTE(v110[2]);
    sub_1ABF23DD4();
    v24 = v18 == v22 && v19 == v23;
    if (v24)
    {

LABEL_18:

      v27 = v95;
      v2 = v96;
      v28 = v99;
      v29 = v94;
      sub_1ABD5A830(v95, v99, v94);
      sub_1ABB6DBB8(v109);
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v27;
      }

      v88 = v30;
      if (v29)
      {
        v26 = 0;
      }

      else
      {
        v26 = v28;
      }

LABEL_24:
      v31 = v91;
      v32 = v91[16];
      v33 = *(v32 + 16);
      v93 = v32 + 32;
      v94 = v33;
      v95 = v32;

      v34 = 0;
      v89 = MEMORY[0x1E69E7CC0];
      v92 = v26;
      while (1)
      {
        if (v34 == v94)
        {

          sub_1ABA7BC1C();
          return;
        }

        if (v34 >= *(v95 + 16))
        {
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v35 = sub_1ABA7F5F0(v93 + (v34 << 6));
        *(v110 + 1) = v36;
        sub_1ABA960E0(v35, v37, v38);
        if (v98 < 94)
        {
          goto LABEL_84;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_94;
        }

        if (*(_Records_GDEntityPredicate_records + 280) >= v102)
        {
          goto LABEL_85;
        }

        if (*(_Records_GDEntityPredicate_records + 281) >= v101)
        {
          goto LABEL_86;
        }

        v99 = v40;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_95;
        }

        v41 = sub_1ABAA235C(v39);
        sub_1ABD1927C(v41, &v106);
        sub_1ABAFF1DC(v111, &v106);
        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_96;
        }

        v43 = v42;
        ++v99;
        v44 = v111[1];
        sub_1ABF23DD4();
        sub_1ABA82EB0();
        if (v24 && v44 == v43)
        {
          sub_1ABAE4478(v111);

LABEL_40:
          v47 = v31[16];
          v100 = *(v47 + 16);

          v48 = 0;
          for (i = 32; ; i += 64)
          {
            if (v100 == v48)
            {

              v31 = v91;
              v2 = v96;
              goto LABEL_60;
            }

            if (v48 >= *(v47 + 16))
            {
              break;
            }

            v50 = sub_1ABA7F5F0(v47 + i);
            *(v108 + 9) = v51;
            v107 = v52;
            v108[0] = v53;
            v106 = v50;
            if (!_Records_GDEntityPredicate_records)
            {
              goto LABEL_91;
            }

            if (*(_Records_GDEntityPredicate_records + 280) >= v102 || *(_Records_GDEntityPredicate_records + 281) >= v101)
            {
              goto LABEL_82;
            }

            if (!_Records_GDEntityPredicate_predicateIds)
            {
              goto LABEL_92;
            }

            v55 = v106.n128_u64[1];
            sub_1ABD1927C(&v106, &v103);

            sub_1ABF23DD4();
            if (!_Records_GDEntityPredicate_labels)
            {
              goto LABEL_93;
            }

            v57 = v56;
            sub_1ABF23DD4();
            sub_1ABA82EB0();
            if (v24 && v55 == v57)
            {
              sub_1ABB6DBB8(&v106);
            }

            else
            {
              sub_1ABAA5934();
              v59 = sub_1ABF25054();
              sub_1ABB6DBB8(&v106);

              if ((v59 & 1) == 0)
              {

                sub_1ABB6DBB8(v109);
                v31 = v91;
                v2 = v96;
                goto LABEL_71;
              }
            }

            ++v48;
          }

          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        sub_1ABAA5934();
        v46 = sub_1ABF25054();
        sub_1ABAE4478(v111);

        if (v46)
        {
          goto LABEL_40;
        }

LABEL_60:
        if (*(v2 + 24))
        {
          sub_1ABA93E64(v2, &v103);
        }

        else
        {
          v60 = *(v2 + 16);
          v103 = *v2;
          v104 = v60;
          v105 = *(v2 + 32);
        }

        if (*(&v104 + 1))
        {
          sub_1ABA946C0(&v103, &v106);
          sub_1ABA93E20(&v106, *(&v107 + 1));
          sub_1ABAA31A8();
          MEMORY[0x1EEE9AC00](v61);
          sub_1ABA7E918();
          *(v62 - 16) = v31;
          *(v62 - 8) = v109;
          sub_1ABAA1A28();
          v63 = v97;
          v64 = sub_1ABF23FE4();
          v97 = v63;
          if ((v64 & 1) == 0)
          {
            sub_1ABB6DBB8(v109);
            sub_1ABA84B54(&v106);
            goto LABEL_71;
          }

          sub_1ABA84B54(&v106);
        }

        v65 = v31[22];
        v66 = v31[23];
        *(&v104 + 1) = &type metadata for Subfact;
        v105 = &protocol witness table for Subfact;
        sub_1ABA97C54();
        *&v103 = swift_allocObject();
        sub_1ABA83A24(v103);
        v67 = *(v2 + 24) == 0;
        sub_1ABD1927C(v109, &v106);

        v68 = v90;
        sub_1ABA95340();
        sub_1ABD51B4C();

        sub_1ABA84B54(&v103);
        v69 = type metadata accessor for K2TTextualization();
        if (sub_1ABA7E1E0(v68, 1, v69) == 1)
        {
          sub_1ABB6DBB8(v109);
          sub_1ABD5FB34(v68);
LABEL_71:
          v34 = v99;
          continue;
        }

        v70 = *v68;
        v71 = v68[1];

        sub_1ABD51F38(v68);
        v72 = v92;
        if (v92)
        {
          v106.n128_u64[0] = v70;
          v106.n128_u64[1] = v71;

          MEMORY[0x1AC5A9410](10272, 0xE200000000000000);

          sub_1ABB6DBB8(v109);
          MEMORY[0x1AC5A9410](v88, v72);

          sub_1ABA97C60();
          v71 = v106.n128_u64[1];
          v70 = v106.n128_u64[0];
        }

        else
        {
          v73 = sub_1ABB6DBB8(v109);
        }

        v106.n128_u64[0] = v70;
        v106.n128_u64[1] = v71;
        MEMORY[0x1EEE9AC00](v73);
        sub_1ABA7E918();
        *(v74 - 16) = &v106;
        v75 = v97;
        v77 = sub_1ABB2F764(sub_1ABB342A0, v76, v89);
        v97 = v75;
        if (v77)
        {

          v34 = v99;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v79, v80, v89);
            sub_1ABAAA4F4();
            v89 = v85;
          }

          v82 = *(v89 + 16);
          v81 = *(v89 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_1ABA7BBEC(v81);
            sub_1ABAAA4F4();
            v89 = v86;
          }

          v83 = v89;
          *(v89 + 16) = v82 + 1;
          v84 = v83 + 16 * v82;
          *(v84 + 32) = v70;
          *(v84 + 40) = v71;
          v34 = v99;
        }
      }
    }

    v25 = sub_1ABF25054();

    if (v25)
    {
      goto LABEL_18;
    }

    sub_1ABB6DBB8(v109);
    v11 += 64;
    ++v3;
    v2 = v96;
    v10 = v17;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1ABD5EED4(void *a1, void *a2, void *a3)
{
  if (*a1 != a2[14])
  {
    return 0;
  }

  v6 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  v8 = a1[1] == a2[24] && a1[2] == a2[25];
  if (!v8 && (sub_1ABF25054() & 1) == 0 || v6 != a2[15])
  {
    return 0;
  }

  if (v5 == *a3 && v7 == a3[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

void sub_1ABD5EF90()
{
  sub_1ABA7E2A8();
  v114 = v1;
  v2 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8147C(&v110 - v6);
  v7 = type metadata accessor for K2TTextualization();
  v8 = sub_1ABA8E5AC(v7, v138);
  v112 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA8147C(&v110 - v14);
  v128 = v0;
  sub_1ABAA15AC();
  v126 = v15;
  v127 = 279;
  v130 = 3481;
  v129 = 4281;

  v17 = 0;
  v18 = 32;
  for (i = v16; ; v16 = i)
  {
    if (v126 == v17)
    {

      v110 = 0;
      v113 = 0;
      goto LABEL_25;
    }

    v19 = *(v16 + 16);
    if (v17 >= v19)
    {
      goto LABEL_91;
    }

    sub_1ABA7DB18(v16 + v18);
    sub_1ABAA1158();
    if (v19 < 94)
    {
      goto LABEL_92;
    }

    v19 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_101;
    }

    v20 = *(_Records_GDEntityPredicate_records + 280);
    sub_1ABAB5738();
    if (v20 >= v21)
    {
      goto LABEL_93;
    }

    v22 = *(v19 + 2248);
    sub_1ABA8A034();
    if (v22 >= v19)
    {
      goto LABEL_94;
    }

    v19 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_102;
    }

    v23 = v134;
    v24 = v135;
    sub_1ABA97898();

    v25 = sub_1ABF23DD4();
    v19 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_103;
    }

    v27 = v25;
    v28 = v26;
    v29 = v138[1];
    v30 = v138[2];
    LODWORD(v124) = v139;
    sub_1ABF23DD4();
    v31 = v23 == v27 && v24 == v28;
    if (v31)
    {
      break;
    }

    v32 = sub_1ABF25054();

    if (v32)
    {
      goto LABEL_18;
    }

    sub_1ABB6DBB8(&v134);
    v18 += 64;
    ++v17;
  }

LABEL_18:

  v33 = v29;
  v34 = v29;
  v35 = v124;
  sub_1ABD5A830(v34, v30, v124);
  sub_1ABB6DBB8(&v134);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v33;
  }

  v110 = v36;
  if (v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = v30;
  }

  v113 = v37;
LABEL_25:
  sub_1ABAA3CF0();
  v134 = *(v38 + 128);
  swift_bridgeObjectRetain_n();
  sub_1ABD5BF1C(&v134);
  v115 = 0;

  v39 = 0;
  v123 = *(v134 + 16);
  v124 = v134;
  v122 = v134 + 32;
  v117 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_26:
    if (v39 == v123)
    {

      if (*(v117 + 16))
      {
        sub_1ABAA3CF0();
        v87 = *(v86 + 208);
        v88 = *(v86 + 216);
        v134 = sub_1ABF23C84();
        v135 = v89;
        if (v113)
        {
          *&v132[0] = 10272;
          *(&v132[0] + 1) = 0xE200000000000000;
          MEMORY[0x1AC5A9410](v110, v113);

          sub_1ABA97C60();
          MEMORY[0x1AC5A9410](*&v132[0], *(&v132[0] + 1));
        }

        v55 = v117;
        v90 = *(v117 + 16);
        if (!v90)
        {
          goto LABEL_84;
        }

        *&v132[0] = MEMORY[0x1E69E7CC0];
        v91 = v117;

        sub_1ABADDBD4();
        v92 = *&v132[0];
        sub_1ABA935AC(v133);
        v94 = v91 + v93;
        v96 = *(v95 + 72);
        do
        {
          v97 = v118;
          sub_1ABD51ED4(v94, v118);
          v99 = *v97;
          v98 = v97[1];

          sub_1ABD51F38(v97);
          *&v132[0] = v92;
          v101 = *(v92 + 16);
          v100 = *(v92 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_1ABA7BBEC(v100);
            sub_1ABADDBD4();
            v92 = *&v132[0];
          }

          *(v92 + 16) = v101 + 1;
          v102 = v92 + 16 * v101;
          *(v102 + 32) = v99;
          *(v102 + 40) = v98;
          v94 += v96;
          --v90;
        }

        while (v90);
        v103 = v117;
LABEL_85:
        *&v132[0] = v92;
        sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
        sub_1ABAAA5C0();
        v106 = sub_1ABF23B54();
        v108 = v107;

        *&v132[0] = 40;
        *(&v132[0] + 1) = 0xE100000000000000;
        MEMORY[0x1AC5A9410](v134, v135);

        MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v106, v108);

        sub_1ABA97C60();

        v109 = v114;
        sub_1ABD63788(*&v132[0], *(&v132[0] + 1), v103, MEMORY[0x1E69E7CC0], v114);
        v104 = v109;
        v105 = 0;
      }

      else
      {

        v104 = v114;
        v105 = 1;
      }

      sub_1ABA7B9B4(v104, v105, 1, v120);
      sub_1ABA7BC1C();
      return;
    }

    v19 = *(v124 + 16);
    if (v39 >= v19)
    {
      break;
    }

    sub_1ABA7DB18(v122 + (v39 << 6));
    sub_1ABAA1158();
    if (v19 < 94)
    {
      goto LABEL_88;
    }

    v19 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_98;
    }

    v40 = *(_Records_GDEntityPredicate_records + 280);
    sub_1ABAB5738();
    if (v40 >= v41)
    {
      goto LABEL_89;
    }

    v42 = *(v19 + 2248);
    sub_1ABA8A034();
    if (v42 >= v19)
    {
      goto LABEL_90;
    }

    v19 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_99;
    }

    v44 = v134;
    v43 = v135;
    v45 = v137;
    v121 = v136;
    sub_1ABD1927C(&v134, v132);

    v46 = sub_1ABF23DD4();
    v19 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_100;
    }

    v48 = v46;
    v49 = v47;
    ++v39;
    sub_1ABF23DD4();
    if (v44 == v48 && v43 == v49)
    {

LABEL_41:
      i = v45;
      v126 = v39;
      sub_1ABAA3CF0();
      v53 = *(v52 + 128);
      v54 = *(v53 + 16);

      v56 = 0;
      for (j = 32; ; j += 64)
      {
        if (v54 == v56)
        {

          sub_1ABA958E4();
          v45 = i;
          goto LABEL_61;
        }

        if (v56 >= *(v53 + 16))
        {
          break;
        }

        v58 = sub_1ABA7F5F0(v53 + j);
        *&v133[9] = v59;
        v132[1] = v60;
        *v133 = v61;
        v132[0] = v58;
        v19 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_95;
        }

        if (*(_Records_GDEntityPredicate_records + 280) >= v130 || *(_Records_GDEntityPredicate_records + 281) >= v129)
        {
          goto LABEL_83;
        }

        v19 = &_Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_96;
        }

        v63 = v132[0];
        sub_1ABD1927C(v132, v131);

        v64 = sub_1ABF23DD4();
        v19 = _Records_GDEntityPredicate_labels;
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_97;
        }

        v39 = v64;
        v66 = v65;
        sub_1ABF23DD4();
        if (v63 == v39 && *(&v63 + 1) == v66)
        {
          sub_1ABB6DBB8(v132);
        }

        else
        {
          v39 = sub_1ABAB532C();
          sub_1ABB6DBB8(v132);

          if ((v39 & 1) == 0)
          {

            sub_1ABB6DBB8(&v134);
            sub_1ABA958E4();
            goto LABEL_26;
          }
        }

        ++v56;
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      v103 = v55;

      v92 = MEMORY[0x1E69E7CC0];
      goto LABEL_85;
    }

    sub_1ABA8B14C();
    v51 = sub_1ABF25054();

    if (v51)
    {
      goto LABEL_41;
    }

LABEL_61:
    v131[3] = &type metadata for Subfact;
    v131[4] = &protocol witness table for Subfact;
    sub_1ABA97C54();
    v131[0] = swift_allocObject();
    sub_1ABA81984(v131[0]);
    sub_1ABD1927C(&v134, v132);
    v68 = v119;
    sub_1ABD515A4();
    sub_1ABA84B54(v131);
    sub_1ABA886B8(v68, 1, v138);
    if (v31)
    {
      sub_1ABB6DBB8(&v134);
      sub_1ABD5FB34(v68);
    }

    else
    {
      v69 = v116;
      sub_1ABD51E70(v68, v116);
      v70 = v69[1];
      *&v132[0] = *v69;
      *(&v132[0] + 1) = v70;

      MEMORY[0x1AC5A9410](10272, 0xE200000000000000);

      MEMORY[0x1AC5A9410](v121, v45);
      sub_1ABB6DBB8(&v134);

      sub_1ABA97C60();

      v72 = *(&v132[0] + 1);
      *v69 = *&v132[0];
      v69[1] = v72;
      MEMORY[0x1EEE9AC00](v71);
      sub_1ABA7E918();
      *(v73 - 16) = v69;
      v74 = v115;
      v76 = sub_1ABB2FA20(sub_1ABD5A95C, v75, v117);
      v115 = v74;
      if (!v76)
      {
        sub_1ABD51ED4(v69, v111);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v80 = v117;
        }

        else
        {
          sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v78, v79, v117);
          sub_1ABADB500();
        }

        v82 = *(v80 + 16);
        v81 = *(v80 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_1ABA7BBEC(v81);
          sub_1ABADB500();
        }

        *(v80 + 16) = v82 + 1;
        sub_1ABA935AC(v133);
        v117 = v83;
        sub_1ABD51E70(v111, v83 + v84 + *(v85 + 72) * v82);
      }

      sub_1ABD51F38(v116);
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);

  __break(1u);
}

void sub_1ABD5FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(a4 + 32);
  v12 = *a4;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = a6[1];
  v11[0] = *a6;
  v11[1] = v10;
  sub_1ABD5BF88(a1, a2, a3, &v12, a5, v11, a7);
}

uint64_t sub_1ABD5FB34(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABD5FB9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABD5FD8C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1ABD5FC90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABD5FC90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 6));
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        v11 = v10 - 4;
        if (*v10 == *(v10 - 8) && *(v10 + 1) == *(v10 - 7))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = v10[1];
        *v18 = v10[2];
        *&v18[9] = *(v10 + 41);
        v14 = *v10;
        v15 = *(v10 - 3);
        *v10 = *v11;
        v10[1] = v15;
        v16 = *(v10 - 1);
        v10[2] = *(v10 - 2);
        v10[3] = v16;
        *(v10 - 23) = *&v18[9];
        *(v10 - 3) = v13;
        *(v10 - 2) = *v18;
        v10 -= 4;
        *v11 = v14;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 4;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD5FD8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = (*a3 + (i << 6));
        v10 = (*a3 + (v8 << 6));
        if (*v9 == *v10 && v9[1] == v10[1])
        {
          v12 = 0;
        }

        else
        {
          v12 = sub_1ABF25054();
        }

        v13 = v8 << 6;
        v14 = v10 + 17;
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v14 - 1) == *(v14 - 9) && *v14 == *(v14 - 8))
          {
            if (v12)
            {
              goto LABEL_21;
            }
          }

          else if ((v12 ^ sub_1ABF25054()))
          {
            break;
          }

          v14 += 8;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_128;
        }

        if (v8 < i)
        {
          v16 = (i << 6) - 64;
          v17 = i;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v20 = (v19 + v13);
              v21 = (v19 + v16);
              v89 = *v20;
              v90 = v20[1];
              *v91 = v20[2];
              *&v91[9] = *(v20 + 41);
              v22 = v13 != v16 || v20 >= v21 + 4;
              if (v22)
              {
                v23 = *v21;
                v24 = v21[1];
                v25 = v21[3];
                v20[2] = v21[2];
                v20[3] = v25;
                *v20 = v23;
                v20[1] = v24;
              }

              *v21 = v89;
              v21[1] = v90;
              v21[2] = *v91;
              *(v21 + 41) = *&v91[9];
            }

            ++v18;
            v16 -= 64;
            v13 += 64;
          }

          while (v18 < v17);
        }
      }

LABEL_34:
      v26 = a3[1];
      if (i < v26)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_127;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v8 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v8 + a4;
          }

          if (v27 < v8)
          {
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
            return;
          }

          if (i != v27)
          {
            v28 = *a3;
            v29 = *a3 + (i << 6);
            v86 = v8;
            v30 = v8 - i;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = v32 - 4;
                v34 = *v32 == *(v32 - 8) && *(v32 + 1) == *(v32 - 7);
                if (v34 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_131;
                }

                v35 = v32[1];
                *v92 = v32[2];
                *&v92[9] = *(v32 + 41);
                v36 = *v32;
                v37 = *(v32 - 3);
                *v32 = *v33;
                v32[1] = v37;
                v38 = *(v32 - 1);
                v32[2] = *(v32 - 2);
                v32[3] = v38;
                *(v32 - 23) = *&v92[9];
                *(v32 - 3) = v35;
                *(v32 - 2) = *v92;
                v32 -= 4;
                *v33 = v36;
                v22 = __CFADD__(v31++, 1);
              }

              while (!v22);
              ++i;
              v29 += 64;
              --v30;
            }

            while (i != v27);
            i = v27;
            v8 = v86;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = v7[2];
        sub_1ABAD8820();
        v7 = v82;
      }

      v39 = v7[2];
      v40 = v39 + 1;
      if (v39 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v83;
      }

      v7[2] = v40;
      v41 = v7 + 4;
      v42 = &v7[2 * v39 + 4];
      *v42 = v8;
      v42[1] = i;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v7[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v7[4];
            v47 = v7[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_75:
            if (v49)
            {
              goto LABEL_116;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_119;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_122;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_124;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          if (v40 < 2)
          {
            goto LABEL_118;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_90:
          if (v64)
          {
            goto LABEL_121;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_123;
          }

          if (v71 < v63)
          {
            goto LABEL_104;
          }

LABEL_97:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_132;
          }

          v75 = v7;
          v76 = &v41[2 * v43 - 2];
          v77 = *v76;
          v78 = &v41[2 * v43];
          v79 = v78[1];
          sub_1ABD6041C((*a3 + (*v76 << 6)), (*a3 + (*v78 << 6)), (*a3 + (v79 << 6)), v87);
          if (v4)
          {
            goto LABEL_109;
          }

          if (v79 < v77)
          {
            goto LABEL_111;
          }

          v80 = v75[2];
          if (v43 > v80)
          {
            goto LABEL_112;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v43 >= v80)
          {
            goto LABEL_113;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v78 + 2, 16 * (v80 - 1 - v43));
          v7 = v75;
          v75[2] = v80 - 1;
          if (v80 <= 2)
          {
            goto LABEL_104;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_114;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_115;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_117;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_125;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_75;
      }

LABEL_104:
      v5 = a3[1];
      if (i >= v5)
      {
        v93 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_135;
  }

  sub_1ABD602F0(&v93, *a1, a3);
LABEL_109:
}

uint64_t sub_1ABD602F0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABD6041C((*a3 + (*v9 << 6)), (*a3 + (*v11 << 6)), (*a3 + (v12 << 6)), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABD6041C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 64;
  v9 = (a3 - a2) / 64;
  if (v8 < v9)
  {
    sub_1ABADD3F8(a1, (a2 - a1) / 64, a4);
    v10 = &v4[64 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 64;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 64;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 64;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 3);
    *(v7 + 2) = *(v13 + 2);
    *(v7 + 3) = v16;
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_1ABADD3F8(a2, (a3 - a2) / 64, a4);
  v10 = &v4[64 * v9];
LABEL_19:
  v17 = v6 - 64;
  for (v5 -= 64; v10 > v4 && v6 > v7; v5 -= 64)
  {
    v19 = *(v10 - 8) == *(v6 - 8) && *(v10 - 7) == *(v6 - 7);
    if (!v19 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 64 == v6;
      v6 -= 64;
      if (!v12)
      {
        v23 = *v17;
        v24 = *(v17 + 1);
        v25 = *(v17 + 3);
        *(v5 + 2) = *(v17 + 2);
        *(v5 + 3) = v25;
        *v5 = v23;
        *(v5 + 1) = v24;
        v6 = v17;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 64)
    {
      v20 = *(v10 - 4);
      v21 = *(v10 - 3);
      v22 = *(v10 - 1);
      *(v5 + 2) = *(v10 - 2);
      *(v5 + 3) = v22;
      *v5 = v20;
      *(v5 + 1) = v21;
    }

    v10 -= 64;
  }

LABEL_36:
  if (v6 != v4 || v6 >= &v4[64 * ((v10 - v4) / 64)])
  {
    v27 = sub_1ABA8B14C();
    memmove(v27, v28, v29);
  }

  return 1;
}

void *sub_1ABD605E0(void *result, void *a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v3 = *result;
  v4 = result[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_45:
    v19 = (a2 + 4);
    v20 = a2[2] + 1;
    while (1)
    {
      v21 = --v20 != 0;
      if (!v20)
      {
        return v21;
      }

      sub_1ABA93E64(v19, &v100);
      v22 = v102;
      v23 = v103;
      a2 = sub_1ABA93E20(&v100, v102);
      result = (*(v23 + 24))(&v98, v22, v23);
      if (!_Records_GDEntityPredicate_records)
      {
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
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      if (*(_Records_GDEntityPredicate_records + 175) >= 3481)
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (*(_Records_GDEntityPredicate_records + 176) >= 4281)
      {
        goto LABEL_101;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_158;
      }

      v25 = v98;
      v24 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_159;
      }

      v27 = result;
      v28 = v26;
      sub_1ABF23DD4();
      if (v25 == v27 && v24 == v28)
      {
LABEL_150:

        sub_1ABA84B54(&v100);
        return v21;
      }

      v19 += 40;
      v30 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v30)
      {
        return v21;
      }
    }
  }

  v6 = sub_1ABF25054();

  if (v6)
  {
    goto LABEL_45;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1884], *(_Records_GDEntityPredicate_records + 472), *(_Records_GDEntityPredicate_records + 473), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_59:
    v31 = (a2 + 4);
    v32 = a2[2] + 1;
    while (1)
    {
      v21 = --v32 != 0;
      if (!v32)
      {
        return v21;
      }

      sub_1ABA93E64(v31, &v100);
      v33 = v102;
      v34 = v103;
      a2 = sub_1ABA93E20(&v100, v102);
      result = (*(v34 + 24))(&v98, v33, v34);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_162;
      }

      if (*(_Records_GDEntityPredicate_records + 220) >= 3481)
      {
        __break(1u);
LABEL_117:
        __break(1u);
        __break(1u);
        goto LABEL_118;
      }

      if (*(_Records_GDEntityPredicate_records + 221) >= 4281)
      {
        goto LABEL_117;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_164;
      }

      v36 = v98;
      v35 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_163;
      }

      v38 = result;
      v39 = v37;
      sub_1ABF23DD4();
      if (v36 == v38 && v35 == v39)
      {
        goto LABEL_150;
      }

      v31 += 40;
      v41 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v41)
      {
        return v21;
      }
    }
  }

  v8 = sub_1ABF25054();

  if (v8)
  {
    goto LABEL_59;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_73:
    v42 = (a2 + 4);
    v43 = a2[2] + 1;
    while (1)
    {
      v44 = --v43 != 0;
      if (!v43)
      {
        return v44;
      }

      sub_1ABA93E64(v42, &v100);
      v45 = v102;
      v46 = v103;
      a2 = sub_1ABA93E20(&v100, v102);
      result = (*(v46 + 24))(&v98, v45, v46);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_168;
      }

      if (*(_Records_GDEntityPredicate_records + 469) >= 3481)
      {
        __break(1u);
LABEL_135:
        __break(1u);
        __break(1u);
        goto LABEL_136;
      }

      if (*(_Records_GDEntityPredicate_records + 470) >= 4281)
      {
        goto LABEL_135;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_169;
      }

      v48 = v98;
      v47 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_170;
      }

      v50 = result;
      v51 = v49;
      sub_1ABF23DD4();
      if (v48 == v50 && v47 == v51)
      {
LABEL_132:

        sub_1ABA84B54(&v100);
        return v44;
      }

      v42 += 40;
      v53 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v53)
      {
        return v44;
      }
    }
  }

  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_73;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2160], *(_Records_GDEntityPredicate_records + 541), *(_Records_GDEntityPredicate_records + 542), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_87:
    v54 = (a2 + 4);
    v55 = a2[2] + 1;
    while (1)
    {
      v44 = --v55 != 0;
      if (!v55)
      {
        return v44;
      }

      sub_1ABA93E64(v54, &v100);
      v56 = v102;
      v57 = v103;
      sub_1ABA93E20(&v100, v102);
      result = (*(v57 + 24))(&v98, v56, v57);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_172;
      }

      if (*(_Records_GDEntityPredicate_records + 538) >= 3481)
      {
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        __break(1u);
        goto LABEL_157;
      }

      if (*(_Records_GDEntityPredicate_records + 539) >= 4281)
      {
        goto LABEL_154;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_174;
      }

      v59 = v98;
      v58 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_173;
      }

      v61 = result;
      v62 = v60;
      sub_1ABF23DD4();
      if (v59 == v61 && v58 == v62)
      {
        goto LABEL_132;
      }

      v54 += 40;
      v64 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v64)
      {
        return v44;
      }
    }
  }

  v12 = sub_1ABF25054();

  if (v12)
  {
    goto LABEL_87;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), &v100);
  if (v100 == v3 && v101 == v4)
  {
LABEL_102:

LABEL_103:
    v65 = (a2 + 4);
    v66 = a2[2] + 1;
    while (1)
    {
      v44 = --v66 != 0;
      if (!v66)
      {
        return v44;
      }

      sub_1ABA93E64(v65, &v100);
      v67 = v102;
      v68 = v103;
      sub_1ABA93E20(&v100, v102);
      result = (*(v68 + 24))(&v98, v67, v68);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_176;
      }

      if (*(_Records_GDEntityPredicate_records + 7) >= 3481)
      {
        goto LABEL_155;
      }

      if (*(_Records_GDEntityPredicate_records + 8) >= 4281)
      {
        goto LABEL_156;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_178;
      }

      v70 = v98;
      v69 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_177;
      }

      v72 = result;
      v73 = v71;
      sub_1ABF23DD4();
      if (v70 == v72 && v69 == v73)
      {
        goto LABEL_132;
      }

      v65 += 40;
      v75 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v75)
      {
        return v44;
      }
    }
  }

  v14 = sub_1ABF25054();

  if (v14)
  {
    goto LABEL_103;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), &v100);
  if (v100 == v3 && v101 == v4)
  {
LABEL_118:

LABEL_119:
    v76 = (a2 + 4);
    v77 = a2[2] + 1;
    do
    {
      v44 = --v77 != 0;
      if (!v77)
      {
        break;
      }

      sub_1ABA93E64(v76, &v100);
      v78 = v102;
      v79 = v103;
      sub_1ABA93E20(&v100, v102);
      result = (*(v79 + 24))(&v98, v78, v79);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_180;
      }

      if (*(_Records_GDEntityPredicate_records + 388) >= 3481)
      {
        goto LABEL_160;
      }

      if (*(_Records_GDEntityPredicate_records + 389) >= 4281)
      {
        goto LABEL_161;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_182;
      }

      v81 = v98;
      v80 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_181;
      }

      v83 = result;
      v84 = v82;
      sub_1ABF23DD4();
      if (v81 == v83 && v80 == v84)
      {
        goto LABEL_132;
      }

      v76 += 40;
      v86 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
    }

    while ((v86 & 1) == 0);
    return v44;
  }

  v16 = sub_1ABF25054();

  if (v16)
  {
    goto LABEL_119;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_188:
    __break(1u);
    return result;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1848], *(_Records_GDEntityPredicate_records + 463), *(_Records_GDEntityPredicate_records + 464), &v100);
  if (v100 == v3 && v101 == v4)
  {
LABEL_136:
  }

  else
  {
    v18 = sub_1ABF25054();

    result = 0;
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  v87 = (a2 + 4);
  v88 = a2[2] + 1;
  do
  {
    v21 = --v88 != 0;
    if (!v88)
    {
      break;
    }

    sub_1ABA93E64(v87, &v100);
    v89 = v102;
    v90 = v103;
    sub_1ABA93E20(&v100, v102);
    result = (*(v90 + 24))(&v98, v89, v90);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_184;
    }

    if (*(_Records_GDEntityPredicate_records + 334) >= 3481)
    {
      goto LABEL_165;
    }

    if (*(_Records_GDEntityPredicate_records + 335) >= 4281)
    {
      goto LABEL_166;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_186;
    }

    v92 = v98;
    v91 = v99;
    result = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_185;
    }

    v94 = result;
    v95 = v93;
    sub_1ABF23DD4();
    if (v92 == v94 && v91 == v95)
    {
      goto LABEL_150;
    }

    v87 += 40;
    v97 = sub_1ABF25054();

    sub_1ABA84B54(&v100);
  }

  while ((v97 & 1) == 0);
  return v21;
}

void sub_1ABD61374(uint64_t *a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), v227);
  sub_1ABA94B50(v7, v8, v9, v10, v11, v12, v13, v14, v178, v185, v192, v199, v206, v213, v220, v227[0]);
  v15 = v15 && v2 == v6;
  if (v15)
  {

LABEL_45:
    sub_1ABAA4A64();
    v79 = v78 + 1;
    while (--v79)
    {
      sub_1ABA7ADA0(v71, v72, v73, v74, v75, v76, v77);
      v80 = v229;
      sub_1ABA93E20(v227, v228);
      v81 = sub_1ABA8F6AC();
      v82(v81);
      if (!_Records_GDEntityPredicate_records)
      {
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
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
        goto LABEL_169;
      }

      v83 = *(_Records_GDEntityPredicate_records + 175);
      sub_1ABAA4160();
      if (v85 == v86)
      {
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (*(v84 + 1408) >= 4281)
      {
        goto LABEL_104;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_160;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_161;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v80)
      {
LABEL_154:

        sub_1ABA84B54(v227);
        return;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      v71 = sub_1ABA84B54(v227);
      if (v3)
      {
        return;
      }
    }

    return;
  }

  sub_1ABA90228();
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_45;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v16 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1884], *(_Records_GDEntityPredicate_records + 472), *(_Records_GDEntityPredicate_records + 473), v227);
  sub_1ABA94B50(v16, v17, v18, v19, v20, v21, v22, v23, v179, v186, v193, v200, v207, v214, v221, v227[0]);
  if (v15 && v2 == v6)
  {

LABEL_60:
    sub_1ABAA4A64();
    v96 = v95 + 1;
    while (--v96)
    {
      sub_1ABA7ADA0(v88, v89, v90, v91, v92, v93, v94);
      v97 = v229;
      sub_1ABA93E20(v227, v228);
      v98 = sub_1ABA8F6AC();
      v99(v98);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_164;
      }

      v100 = *(_Records_GDEntityPredicate_records + 220);
      sub_1ABAA4160();
      if (v85 == v86)
      {
        __break(1u);
LABEL_120:
        __break(1u);
        __break(1u);
        goto LABEL_121;
      }

      if (*(v101 + 1768) >= 4281)
      {
        goto LABEL_120;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_166;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_165;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v97)
      {
        goto LABEL_154;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      v88 = sub_1ABA84B54(v227);
      if (v3)
      {
        return;
      }
    }

    return;
  }

  sub_1ABA90228();
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_60;
  }

  if (!_Records_GDEntityPredicate_records)
  {
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

  v25 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), v227);
  sub_1ABA94B50(v25, v26, v27, v28, v29, v30, v31, v32, v180, v187, v194, v201, v208, v215, v222, v227[0]);
  if (v15 && v2 == v6)
  {

LABEL_75:
    sub_1ABAA4A64();
    v104 = v103 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v104)
      {
        return;
      }

      sub_1ABA7ADA0(v105, v106, v107, v108, v109, v110, v111);
      v112 = v229;
      sub_1ABA93E20(v227, v228);
      v113 = sub_1ABA8F6AC();
      v114(v113);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_170;
      }

      v115 = *(_Records_GDEntityPredicate_records + 469);
      sub_1ABAA4160();
      if (v85 == v86)
      {
        __break(1u);
LABEL_138:
        __break(1u);
        __break(1u);
        goto LABEL_139;
      }

      if (*(v116 + 3760) >= 4281)
      {
        goto LABEL_138;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_171;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_172;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v112)
      {
LABEL_136:

        sub_1ABA84B54(v227);
        return;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v227);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228();
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_75;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v34 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2160], *(_Records_GDEntityPredicate_records + 541), *(_Records_GDEntityPredicate_records + 542), v227);
  sub_1ABA94B50(v34, v35, v36, v37, v38, v39, v40, v41, v181, v188, v195, v202, v209, v216, v223, v227[0]);
  if (v15 && v2 == v6)
  {

LABEL_90:
    sub_1ABAA4A64();
    v119 = v118 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v119)
      {
        return;
      }

      sub_1ABA7ADA0(v120, v121, v122, v123, v124, v125, v126);
      v127 = v229;
      sub_1ABA93E20(v227, v228);
      v128 = sub_1ABA8F6AC();
      v129(v128);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_174;
      }

      v130 = *(_Records_GDEntityPredicate_records + 538);
      sub_1ABAA4160();
      if (v85 == v86)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        __break(1u);
        goto LABEL_159;
      }

      if (*(v131 + 4312) >= 4281)
      {
        goto LABEL_156;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_176;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_175;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v127)
      {
        goto LABEL_136;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v227);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228();
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_90;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v43 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), v227);
  sub_1ABA94B50(v43, v44, v45, v46, v47, v48, v49, v50, v182, v189, v196, v203, v210, v217, v224, v227[0]);
  if (v15 && v2 == v6)
  {
LABEL_105:

LABEL_106:
    sub_1ABAA4A64();
    v134 = v133 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v134)
      {
        return;
      }

      sub_1ABA7ADA0(v135, v136, v137, v138, v139, v140, v141);
      v142 = v229;
      sub_1ABA93E20(v227, v228);
      v143 = sub_1ABA8F6AC();
      v144(v143);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_178;
      }

      v145 = *(_Records_GDEntityPredicate_records + 7);
      sub_1ABAA4160();
      if (v85 == v86)
      {
        goto LABEL_157;
      }

      if (*(v146 + 64) >= 4281)
      {
        goto LABEL_158;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_180;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_179;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v142)
      {
        goto LABEL_136;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v227);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228();
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_106;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v52 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), v227);
  sub_1ABA94B50(v52, v53, v54, v55, v56, v57, v58, v59, v183, v190, v197, v204, v211, v218, v225, v227[0]);
  if (v15 && v2 == v6)
  {
LABEL_121:

LABEL_122:
    sub_1ABAA4A64();
    v149 = v148 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v149)
      {
        return;
      }

      sub_1ABA7ADA0(v150, v151, v152, v153, v154, v155, v156);
      v157 = v229;
      sub_1ABA93E20(v227, v228);
      v158 = sub_1ABA8F6AC();
      v159(v158);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_182;
      }

      v160 = *(_Records_GDEntityPredicate_records + 388);
      sub_1ABAA4160();
      if (v85 == v86)
      {
        goto LABEL_162;
      }

      if (*(v161 + 3112) >= 4281)
      {
        goto LABEL_163;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_184;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_183;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v157)
      {
        goto LABEL_136;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v227);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228();
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_122;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_190:
    __break(1u);
    return;
  }

  v61 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1848], *(_Records_GDEntityPredicate_records + 463), *(_Records_GDEntityPredicate_records + 464), v227);
  sub_1ABA94B50(v61, v62, v63, v64, v65, v66, v67, v68, v184, v191, v198, v205, v212, v219, v226, v227[0]);
  if (v15 && v2 == v6)
  {
LABEL_139:
  }

  else
  {
    v70 = sub_1ABA90228();

    if ((v70 & 1) == 0)
    {
      return;
    }
  }

  sub_1ABAA4A64();
  v171 = v170 + 1;
  do
  {
    if (!--v171)
    {
      break;
    }

    sub_1ABA7ADA0(v163, v164, v165, v166, v167, v168, v169);
    v172 = v229;
    sub_1ABA93E20(v227, v228);
    v173 = sub_1ABA8F6AC();
    v174(v173);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_186;
    }

    v175 = *(_Records_GDEntityPredicate_records + 334);
    sub_1ABAA4160();
    if (v85 == v86)
    {
      goto LABEL_167;
    }

    if (*(v176 + 2680) >= 4281)
    {
      goto LABEL_168;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_188;
    }

    sub_1ABA8E334();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_187;
    }

    sub_1ABA84224();
    sub_1ABAA4614();
    if (v15 && a2 == v172)
    {
      goto LABEL_154;
    }

    sub_1ABA80DD0();
    sub_1ABA8288C();

    v163 = sub_1ABA84B54(v227);
  }

  while ((v3 & 1) == 0);
}

uint64_t sub_1ABD61D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v207 = a3;
  v208 = a4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_106;
  }

  v5 = v4;
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = *(_Records_GDEntityPredicate_records + 4);
  v11 = *(_Records_GDEntityPredicate_records + 5);
  v12 = _Records_GDEntityPredicate_records[12];

  v13 = sub_1ABA91D48(v12, v10, v11, &v209);
  sub_1ABA8F6C8(v13, v14, v15, v16, v17, v18, v19, v20, v194, v207, v208, v209);
  v21 = v21 && v10 == v8;
  if (v21)
  {

LABEL_9:

    sub_1ABA936CC();
    v22 = 0x20656D616E207327;
    v23 = 0xEB00000000207369;
LABEL_10:
    MEMORY[0x1AC5A9410](v22, v23);
    v24 = v207;
    v25 = v208;
LABEL_11:
    MEMORY[0x1AC5A9410](v24, v25);
    return v209;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    __break(1u);
    goto LABEL_110;
  }

  v27 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1056], *(_Records_GDEntityPredicate_records + 265), *(_Records_GDEntityPredicate_records + 266), &v209);
  sub_1ABA8F6C8(v27, v28, v29, v30, v31, v32, v33, v34, v195, v207, v208, v209);
  if (v21 && v10 == v8)
  {

LABEL_20:

    sub_1ABA80DF8();
    sub_1ABF24AB4();

    v209 = a1;
    v210 = a2;
    v22 = 0x6974696320736920;
    v23 = 0xEF20666F206E657ALL;
    goto LABEL_10;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
    goto LABEL_20;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_109;
  }

  v36 = sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), &v209);
  sub_1ABA8F6C8(v36, v37, v38, v39, v40, v41, v42, v43, v196, v207, v208, v209);
  if (v21 && v10 == v8)
  {

LABEL_29:

    sub_1ABA80DF8();
    sub_1ABF24AB4();

    v209 = a1;
    v210 = a2;
    v23 = 0x80000001ABF8ED30;
LABEL_30:
    v22 = 0xD000000000000011;
    goto LABEL_10;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
    goto LABEL_29;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_113;
  }

  v45 = sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), &v209);
  sub_1ABA8F6C8(v45, v46, v47, v48, v49, v50, v51, v52, v197, v207, v208, v209);
  if (v21 && v10 == v8)
  {

LABEL_39:

    sub_1ABA80DF8();
    sub_1ABF24AB4();

    v209 = a1;
    v210 = a2;
    v22 = 0xD000000000000012;
    v23 = 0x80000001ABF8ED10;
    goto LABEL_10;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
    goto LABEL_39;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_123;
  }

  v54 = sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), &v209);
  sub_1ABA8F6C8(v54, v55, v56, v57, v58, v59, v60, v61, v198, v207, v208, v209);
  if (v21 && v10 == v8)
  {
    goto LABEL_60;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
LABEL_46:
    v64 = v207;
    v63 = v208;
LABEL_61:

    v209 = a1;
    v210 = a2;
    sub_1ABA7E928();
    sub_1ABA7C4A8();
    v84 = v83 + 1;
LABEL_62:
    MEMORY[0x1AC5A9410](v84, 0x80000001EB4DC9C0);
    v24 = v64;
    v25 = v63;
    goto LABEL_11;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_138;
  }

  v65 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), &v209);
  sub_1ABA8F6C8(v65, v66, v67, v68, v69, v70, v71, v72, v199, v207, v208, v209);
  if (v21 && v10 == v8)
  {
LABEL_60:
    v64 = v207;
    v63 = v208;

    goto LABEL_61;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
    goto LABEL_46;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_151;
  }

  v74 = sub_1ABA91D48(_Records_GDEntityPredicate_records[960], *(_Records_GDEntityPredicate_records + 241), *(_Records_GDEntityPredicate_records + 242), &v209);
  sub_1ABA8F6C8(v74, v75, v76, v77, v78, v79, v80, v81, v200, v207, v208, v209);
  if (v21 && v10 == v8)
  {
    goto LABEL_100;
  }

  sub_1ABA7DB38();
  sub_1ABA7F600();

  if (v12)
  {
LABEL_59:
    v64 = v207;
    v63 = v208;
LABEL_101:

    v209 = a1;
    v210 = a2;
    sub_1ABA7E928();
    sub_1ABA7C4A8();
    v84 = v139 | 4;
    goto LABEL_62;
  }

  if (_Records_GDEntityPredicate_records)
  {
    v85 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), &v209);
    sub_1ABA8F6C8(v85, v86, v87, v88, v89, v90, v91, v92, v201, v207, v208, v209);
    if (!v21 || v10 != v8)
    {
      sub_1ABA7DB38();
      sub_1ABA7F600();

      if (v12)
      {
        goto LABEL_59;
      }

      if (_Records_GDEntityPredicate_records)
      {
        v94 = sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), &v209);
        sub_1ABA8F6C8(v94, v95, v96, v97, v98, v99, v100, v101, v202, v207, v208, v209);
        if (v21 && v10 == v8)
        {
          goto LABEL_102;
        }

        sub_1ABA7DB38();
        sub_1ABA7F600();

        if (v12)
        {
          goto LABEL_103;
        }

        if (_Records_GDEntityPredicate_records)
        {
          v103 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), &v209);
          sub_1ABA8F6C8(v103, v104, v105, v106, v107, v108, v109, v110, v203, v207, v208, v209);
          if (!v21 || v10 != v8)
          {
            sub_1ABA7DB38();
            sub_1ABA7F600();

            if ((v12 & 1) == 0)
            {
              if (_Records_GDEntityPredicate_records)
              {
                v112 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1548], *(_Records_GDEntityPredicate_records + 388), *(_Records_GDEntityPredicate_records + 389), &v209);
                sub_1ABA8F6C8(v112, v113, v114, v115, v116, v117, v118, v119, v204, v207, v208, v209);
                if (v21 && v10 == v8)
                {
                  goto LABEL_106;
                }

                sub_1ABA7DB38();
                sub_1ABA7F600();

                if (v12)
                {
                  goto LABEL_107;
                }

                if (_Records_GDEntityPredicate_records)
                {
                  v121 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), &v209);
                  sub_1ABA8F6C8(v121, v122, v123, v124, v125, v126, v127, v128, v205, v207, v208, v209);
                  if (!v21 || v10 != v8)
                  {
                    sub_1ABA7DB38();
                    sub_1ABA7F600();

                    if ((v12 & 1) == 0)
                    {
                      if (_Records_GDEntityPredicate_records)
                      {
                        v130 = sub_1ABA91D48(_Records_GDEntityPredicate_records[324], *(_Records_GDEntityPredicate_records + 82), *(_Records_GDEntityPredicate_records + 83), &v209);
                        sub_1ABA8F6C8(v130, v131, v132, v133, v134, v135, v136, v137, v206, v207, v208, v209);
                        if (!v21 || v10 != v8)
                        {
                          sub_1ABA7DB38();
                          sub_1ABA7F600();

                          if (v12)
                          {
                            goto LABEL_111;
                          }

LABEL_113:
                          if (_Records_GDEntityPredicate_records)
                          {
                            v141 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), &v209);
                            sub_1ABA8F6C8(v141, v142, v143, v144, v145, v146, v147, v148, v197, v207, v208, v209);
                            if (v21 && v10 == v8)
                            {

LABEL_121:

                              v209 = a1;
                              v210 = a2;
                              sub_1ABA7E928();
                              v23 = 0x80000001EB4DC9C0;
                              goto LABEL_30;
                            }

                            sub_1ABA7DB38();
                            sub_1ABA7F600();

                            if (v12)
                            {
                              goto LABEL_121;
                            }

LABEL_123:
                            if (_Records_GDEntityPredicate_records)
                            {
                              v150 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1320], *(_Records_GDEntityPredicate_records + 331), *(_Records_GDEntityPredicate_records + 332), &v209);
                              sub_1ABA8F6C8(v150, v151, v152, v153, v154, v155, v156, v157, v198, v207, v208, v209);
                              if (v21 && v10 == v8)
                              {

LABEL_131:

                                v159 = v207 == 49 && v208 == 0xE100000000000000;
                                if (v159 || (sub_1ABF25054() & 1) != 0)
                                {
                                  sub_1ABA936CC();
                                  v24 = 0x206C6C6120736920;
                                  v25 = 0xEB00000000796164;
                                }

                                else
                                {
                                  sub_1ABA936CC();
                                  v24 = 0x20746F6E20736920;
                                  v25 = 0xEF796164206C6C61;
                                }

                                goto LABEL_11;
                              }

                              sub_1ABA7DB38();
                              sub_1ABA7F600();

                              if (v12)
                              {
                                goto LABEL_131;
                              }

LABEL_138:
                              if (_Records_GDEntityPredicate_records)
                              {
                                v160 = sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), &v209);
                                sub_1ABA8F6C8(v160, v161, v162, v163, v164, v165, v166, v167, v199, v207, v208, v209);
                                if (v21 && v10 == v8)
                                {

LABEL_148:

                                  v209 = a1;
                                  v210 = a2;
                                  sub_1ABA7E928();
                                  sub_1ABA7C4A8();
                                  v22 = v169 | 2;
LABEL_149:
                                  v23 = 0x80000001EB4DC9C0;
                                  goto LABEL_10;
                                }

                                sub_1ABA7DB38();
                                sub_1ABA7F600();

                                if (v12)
                                {
                                  goto LABEL_148;
                                }

LABEL_151:
                                if (_Records_GDEntityPredicate_records)
                                {
                                  v170 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), &v209);
                                  sub_1ABA8F6C8(v170, v171, v172, v173, v174, v175, v176, v177, v200, v207, v208, v209);
                                  if (v21 && v10 == v8)
                                  {

LABEL_159:

                                    v209 = a1;
                                    v210 = a2;
                                    sub_1ABA7E928();
                                    sub_1ABA7C4A8();
                                    v22 = v179 + 21;
                                    goto LABEL_149;
                                  }

                                  sub_1ABA7DB38();
                                  sub_1ABA7F600();

                                  if (v12)
                                  {
                                    goto LABEL_159;
                                  }

                                  goto LABEL_161;
                                }

LABEL_178:
                                __break(1u);
                                goto LABEL_179;
                              }

LABEL_177:
                              __break(1u);
                              goto LABEL_178;
                            }

LABEL_176:
                            __break(1u);
                            goto LABEL_177;
                          }

LABEL_175:
                          __break(1u);
                          goto LABEL_176;
                        }

LABEL_110:

LABEL_111:

                        sub_1ABA936CC();
                        v22 = 0x7474612073616820;
                        v140 = 0x206565646E65;
                        goto LABEL_104;
                      }

LABEL_174:
                      __break(1u);
                      goto LABEL_175;
                    }

LABEL_107:

                    sub_1ABA936CC();
                    v22 = 0x646E652073616820;
                    v23 = 0xEC000000206E6F20;
                    goto LABEL_10;
                  }

LABEL_106:

                  goto LABEL_107;
                }

LABEL_173:
                __break(1u);
                goto LABEL_174;
              }

LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

LABEL_103:

            sub_1ABA936CC();
            v22 = 0x6174732073616820;
            v140 = 0x206E6F207472;
LABEL_104:
            v23 = v140 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            goto LABEL_10;
          }

LABEL_102:

          goto LABEL_103;
        }
      }

      else
      {
        __break(1u);
        __break(1u);
      }

      __break(1u);
      goto LABEL_172;
    }

LABEL_100:
    v64 = v207;
    v63 = v208;

    goto LABEL_101;
  }

  __break(1u);
LABEL_161:
  if (_Records_GDEntityPredicate_records)
  {
    v180 = sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), &v209);
    sub_1ABA8F6C8(v180, v181, v182, v183, v184, v185, v186, v187, v201, v207, v208, v209);
    if (v21 && v10 == v8)
    {
    }

    else
    {
      v189 = sub_1ABA7DB38();

      if ((v189 & 1) == 0)
      {
        sub_1ABA936CC();
        MEMORY[0x1AC5A9410](32, 0xE100000000000000);
        v190 = *(v5 + 32);
        v191 = *(v5 + 40);
        v192 = sub_1ABF23C84();
        MEMORY[0x1AC5A9410](v192);

        v22 = 32;
        v23 = 0xE100000000000000;
        goto LABEL_10;
      }
    }

    v209 = a1;
    v210 = a2;
    sub_1ABA7E928();
    sub_1ABA7C4A8();
    v22 = v193 | 0xC;
    goto LABEL_149;
  }

LABEL_179:
  __break(1u);
  return result;
}

uint64_t sub_1ABD6277C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_1ABD627EC(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v8 = a1[1];
  v134 = *a1;
  v135 = v8;
  *v136 = a1[2];
  *&v136[9] = *(a1 + 41);
  v102 = a8;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v9 = *(a4 + 8);
  v92 = *a4;
  v95 = *(a4 + 16);
  v86 = *(a4 + 24);
  HIDWORD(v98) = *(a4 + 32);
  v89 = *a6;
  v99 = a6[1];
  v100 = a6[2];
  v101 = a6[3];
  v10 = *(&v135 + 1);
  v11 = *v136;
  v12 = *&v136[8];
  v13 = *&v136[16];
  v14 = *(_Records_GDEntityClass_records + 0x4D0);
  v15 = *(_Records_GDEntityClass_records + 0x4D8);
  v16 = *(_Records_GDEntityClass_records + 0x4C8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1ABA8882C(v16, v14, v15, v131);
  v17 = v132 == v12 && v133 == v13;
  if (v17 || (sub_1ABA83A44() & 1) != 0)
  {
    sub_1ABA88934(v131);

LABEL_8:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1ABA8F6D8();
    v128[0] = v10;
    v128[1] = v11;
    v129 = &v123;
    v130 = v101;
    type metadata accessor for K2TAgentAffiliationRelationshipTextualizer();
    v18 = sub_1ABA819A4();
    sub_1ABA8EAC0(v18, v19, v20, v21, v22, v23, v24, v25, a7, v86, v89, v92, v95);

    v26 = v11;
    v27 = &v123;
    v28 = v101;
    v29 = sub_1ABD5E58C(&v123, a2, a3, &v118, a5, v128, 0);
LABEL_9:
    v102[3] = v13;
    v102[4] = &off_1F209BD18;
    *v102 = v29;
    return;
  }

  v123 = v10;
  v124 = v11;
  sub_1ABA7E940();
  sub_1ABAA6788();
  v31 = v30;

  sub_1ABA88934(v131);

  if (v31)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_31;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x198), *(_Records_GDEntityClass_records + 0x1A0), *(_Records_GDEntityClass_records + 0x1A0 + 8), v128);
  v32 = v129 == v12 && v130 == v13;
  if (v32 || (sub_1ABA83A44() & 1) != 0)
  {
    sub_1ABA88934(v128);

    goto LABEL_18;
  }

  v123 = v10;
  v124 = v11;
  sub_1ABA7E940();
  sub_1ABAA6788();
  v53 = v52;

  sub_1ABA88934(v128);

  if (v53)
  {
    goto LABEL_18;
  }

  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v125);
    v54 = v126 == v12 && v127 == v13;
    if (!v54 && (sub_1ABA83A44() & 1) == 0)
    {
      v123 = v10;
      v124 = v11;
      sub_1ABA7E940();
      sub_1ABAA6788();
      v56 = v55;

      sub_1ABA88934(v125);

      if ((v56 & 1) == 0)
      {
        sub_1ABA8F6D8();
        sub_1ABA94B60();
        type metadata accessor for K2TSubEntityTextualizer();
        v57 = sub_1ABA819A4();
        sub_1ABA8EAC0(v57, v58, v59, v60, v61, v62, v63, v64, a7, v86, v89, v92, v95);

        v65 = v11;
        v66 = &v123;
        v67 = v12;
        v68 = v85;
        v69 = v85;
        v77 = sub_1ABA80E08(v69, v70, v71, v72, v73, v74, v75, v76, v85, v88, v91, v94, v97, v98, v99, v100, v101, v102, a2, a3, a5, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
        sub_1ABD5BF88(v77, v78, v79, v80, v81, v82, v68);
        goto LABEL_9;
      }

      goto LABEL_19;
    }

    sub_1ABA88934(v125);
LABEL_18:

LABEL_19:
    sub_1ABA8F6D8();
    sub_1ABA94B60();
    type metadata accessor for K2TAddressAndLocationRelationshipTextualizer();
    v33 = sub_1ABA819A4();
    sub_1ABA8EAC0(v33, v34, v35, v36, v37, v38, v39, v40, a7, v86, v89, v92, v95);

    v41 = v11;
    v42 = &v123;
    v43 = v12;
    v51 = sub_1ABA80E08(v43, v44, v45, v46, v47, v48, v49, v50, v84, v87, v90, v93, v96, v98, v99, v100, v101, v102, a2, a3, a5, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    v29 = sub_1ABD61D7C(v51);
    goto LABEL_9;
  }

LABEL_32:
  __break(1u);
}

void sub_1ABD62C00(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(a1 + 48);
  v31 = *a1;
  v32 = *a2;
  v33 = a2[1];
  v34 = a2[2];
  v35 = a2[3];
  v9 = *(_Records_GDEntityClass_records + 0xB0);
  v10 = *(_Records_GDEntityClass_records + 0xB0 + 8);
  v11 = *(_Records_GDEntityClass_records + 0xA8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1ABA8882C(v11, v9, v10, v45);
  v12 = v46 == v7 && v47 == v6;
  if (v12 || (sub_1ABA936E4() & 1) != 0)
  {
    sub_1ABA88934(v45);

LABEL_8:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1ABA7DB58();
    *&v42 = v11;
    *(&v42 + 1) = v10;
    v43 = v4;
    v44 = v35;
    type metadata accessor for K2TLocationTextualizer();
    sub_1ABA7C4B4();
    sub_1ABA8C258();

    sub_1ABA99510();

    v13 = v10;
    v14 = v4;
    v15 = v35;
    sub_1ABD56610(v38, 181, &v42, 0);
    goto LABEL_9;
  }

  sub_1ABA7F618();
  sub_1ABAA6788();
  v10 = v17;

  sub_1ABA88934(v45);

  if (v10)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_31;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v42);
  v18 = v43 == v7 && v44 == v6;
  if (v18 || (sub_1ABA936E4() & 1) != 0)
  {
    sub_1ABA88934(&v42);

LABEL_18:

    sub_1ABA7DB58();
    *&v39 = &_Records_GDEntityClass_records;
    *(&v39 + 1) = v10;
    v40 = v4;
    v41 = v35;
    type metadata accessor for K2TPersonTextualizer();
    sub_1ABA7C4B4();
    sub_1ABA8C258();

    sub_1ABA99510();

    v19 = v10;
    v20 = v4;
    v21 = v35;
    v16 = sub_1ABD54AF0(v38, 181, &v39, 0);
    goto LABEL_9;
  }

  sub_1ABA7F618();
  sub_1ABAA6788();
  v10 = v22;

  sub_1ABA88934(&v42);

  if (v10)
  {
    goto LABEL_18;
  }

  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x378), *(_Records_GDEntityClass_records + 0x380), *(_Records_GDEntityClass_records + 0x388), &v39);
    v23 = v40 == v7 && v41 == v6;
    if (v23 || (sub_1ABA936E4() & 1) != 0)
    {
      sub_1ABA88934(&v39);
    }

    else
    {
      sub_1ABA7F618();
      sub_1ABAA6788();
      v10 = v27;

      sub_1ABA88934(&v39);

      if ((v10 & 1) == 0)
      {
        sub_1ABA7DB58();
        sub_1ABA90248();
        type metadata accessor for K2TEntityTextualizer();
        sub_1ABA7C4B4();
        sub_1ABA8C258();

        sub_1ABA99510();

        v28 = v10;
        v29 = v4;
        v30 = v8;
        sub_1ABD52CBC(v38, 181, v37, 0);
        goto LABEL_9;
      }
    }

    sub_1ABA7DB58();
    sub_1ABA90248();
    type metadata accessor for K2TEventTextualizer();
    sub_1ABA7C4B4();
    sub_1ABA8C258();

    sub_1ABA99510();

    v24 = v10;
    v25 = v4;
    v26 = v8;
    sub_1ABD56680(v38, 181, v37);
LABEL_9:
    a3[3] = v7;
    a3[4] = &off_1F209BCA0;
    *a3 = v16;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1ABD6300C()
{
  v0 = sub_1ABD632CC();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1ABF39090;
  *(v3 + 32) = type metadata accessor for K2TEntityTextualizer();
  *(v3 + 40) = type metadata accessor for K2TPersonTextualizer();
  *(v3 + 48) = type metadata accessor for K2TLocationTextualizer();
  *(v3 + 56) = type metadata accessor for K2TEventTextualizer();
  *(v3 + 64) = type metadata accessor for K2TSubEntityTextualizer();
  *(v3 + 72) = type metadata accessor for K2TAgentAffiliationRelationshipTextualizer();
  result = type metadata accessor for K2TAddressAndLocationRelationshipTextualizer();
  *(v3 + 80) = result;
  qword_1EB549890 = v3;
  return result;
}

void sub_1ABD630B4()
{
  if (qword_1EB4D03C0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v0 = *(qword_1EB549890 + 16);
    if (!v0)
    {
      break;
    }

    v1 = qword_1EB549890 + 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v3 = (*(*v1 + 152))();
      v4 = *(v3 + 16);
      v5 = *(v2 + 16);
      if (__OFADD__(v5, v4))
      {
        break;
      }

      v6 = v3;
      if (!swift_isUniquelyReferenced_nonNull_native() || v5 + v4 > *(v2 + 24) >> 1)
      {
        sub_1ABAD8B6C();
        v2 = v7;
      }

      if (*(v6 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v4)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v4)
        {
          v8 = *(v2 + 16);
          v9 = __OFADD__(v8, v4);
          v10 = v8 + v4;
          if (v9)
          {
            goto LABEL_22;
          }

          *(v2 + 16) = v10;
        }
      }

      else
      {

        if (v4)
        {
          goto LABEL_20;
        }
      }

      v1 += 8;
      if (!--v0)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_17:
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v12 = inited;
    sub_1ABA91D48(*_Records_GDEntityPredicate_records, *(_Records_GDEntityPredicate_records + 1), *(_Records_GDEntityPredicate_records + 2), &v16);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    *(v12 + 32) = v16;
    *(v12 + 48) = v13;
    *(v12 + 56) = v14;
    *(v12 + 64) = v15;
    *&v16 = v2;
    sub_1ABD7DC38(v12);
    sub_1ABE8ACC8(v16);
  }

  else
  {
    __break(1u);
  }
}