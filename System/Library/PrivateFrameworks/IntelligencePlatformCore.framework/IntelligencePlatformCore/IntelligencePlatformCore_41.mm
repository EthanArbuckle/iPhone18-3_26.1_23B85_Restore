uint64_t sub_1C47906EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = type metadata accessor for EventLogTypedEvent();
  v20 = &a9[v19[10]];
  v21 = &a9[v19[12]];
  v22 = &a9[v19[14]];
  *a9 = a1;
  v23 = v19[9];
  v24 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v24);
  (*(v25 + 32))(&a9[v23], a2);
  *v20 = a3;
  v20[8] = a4 & 1;
  v26 = &a9[v19[11]];
  *v26 = a5;
  *(v26 + 1) = a6;
  *v21 = a7;
  v21[8] = a8 & 1;
  *&a9[v19[13]] = a10;
  *v22 = a11;
  *(v22 + 1) = a12;
  v27 = *(*(a14 - 8) + 32);
  v28 = &a9[v19[15]];

  return v27(v28, a13, a14);
}

uint64_t sub_1C4790868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v202 = a2;
  v232 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v232);
  v228 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v192 = v9;
  sub_1C43FBE44();
  v10 = sub_1C4EFDFF8();
  v11 = sub_1C43FCDF8(v10);
  v225 = v12;
  v226 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v231 = v16;
  sub_1C43FBE44();
  v227 = sub_1C4EFE038();
  v17 = sub_1C43FCDF8(v227);
  v222 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v213 = v22;
  sub_1C43FBE44();
  v221 = sub_1C4EFDF68();
  v23 = sub_1C43FBCE0(v221);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v26 = sub_1C456902C(&qword_1EC0B8C80, &unk_1C4F3E850);
  v27 = sub_1C43FCDF8(v26);
  v224 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v33 = v31 - v32;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v186 - v36;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v186 - v39;
  v41 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v42 = sub_1C43FBD18(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBD08();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v186 - v49;
  v235 = MEMORY[0x1E69E7CC0];
  v233 = 0;
  v234 = 0;
  v51 = v230;
  sub_1C4791F74(a1, v229, &v233, &v235);
  if (v51)
  {
    goto LABEL_24;
  }

  v212 = v40;
  v209 = v33;
  v191 = v47;
  v220 = v26;
  v210 = v2;
  v216 = v3;
  v204 = v50;
  v52 = v234;
  if (!v234 || (v53 = a1, v54 = v235, (v205 = *(v235 + 16)) == 0))
  {
    type metadata accessor for EventLogEvent(0);
    sub_1C43FCF64();
    goto LABEL_23;
  }

  v188 = v53;
  v190 = 0;
  v187 = v233;
  LODWORD(v229) = 1;
  sub_1C443F1AC();
  sub_1C43FCF64();
  sub_1C440BAA8(v55, v56, v57, v232);
  v207 = v54 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
  v58 = (v228 + 32);
  v59 = v220;
  v206 = *(v220 + 48);
  v198 = v222 + 32;
  v197 = v225 + 32;
  v199 = v225 + 8;
  v200 = v222 + 8;
  v230 = (v228 + 8);
  v189 = v52;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v195 = 0;
  v194 = 0;
  v217 = 0;
  v218 = 0;
  v201 = 0;
  v196 = 0;
  v219 = 0;
  v61 = 0;
  v225 = 0xF000000000000000;
  v62 = 0.0;
  v193 = 1;
  v63 = v216;
  v64 = v231;
  v65 = v212;
  v208 = v37;
  v223 = v58;
  v203 = v54;
  do
  {
    if (v61 >= *(v54 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1C4796E28(v207 + *(v224 + 72) * v61, v65);
    v66 = *(v59 + 48);
    v67 = *v58;
    v68 = sub_1C442A90C();
    v222 = v69;
    (v69)(v68);
    v70 = sub_1C4EFE058();
    sub_1C43FCF8C(v70);
    v72 = v71;
    (*(v71 + 32))(v63 + v66, v65 + v206, v70);
    sub_1C4796E28(v63, v37);
    v73 = *(v59 + 48);
    v74 = v210;
    sub_1C4EFDF98();
    v75 = *(v72 + 8);
    v75(&v37[v73], v70);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v225 >> 60;
    v228 = v230 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!EnumCaseMultiPayload)
    {

      sub_1C4402C08(&v230);
      v94 = v213;
      v95 = sub_1C43FD018();
      v79 = v227;
      v96(v95);
      if (v77 < 0xF)
      {
        sub_1C443E154();
        sub_1C4441018();

        v142 = sub_1C43FE99C();
        sub_1C441DFEC(v142, v143);
        v144 = sub_1C43FE99C();
        sub_1C441DFEC(v144, v145);
      }

      else
      {
        if (v229)
        {
          v196 = sub_1C4EFE018();
          v219 = v97;
          sub_1C4420C3C(v204, &unk_1EC0B84E0, qword_1C4F0D2D0);
          v98 = v216;
          v99 = v75;
          v211 = v75;
          v100 = v209;
          sub_1C4796E28(v216, v209);
          v59 = v220;
          v229 = *(v220 + 48);
          v101 = sub_1C44C1208();
          v102(v101);
          sub_1C447F7E0();
          v99(v100 + v229, v70);
          v103 = v213;
          v195 = sub_1C4EFE028();
          v104 = sub_1C43FD258();
          sub_1C4796E28(v104, v105);
          v106 = *(v59 + 48);
          sub_1C4EF9AD8();
          v63 = v98;
          v64 = v231;
          v62 = v107;
          sub_1C4402C08(&v232);
          v108(v103, v227);
          sub_1C4420C3C(v63, &qword_1EC0B8C80, &unk_1C4F3E850);
          v109 = *v230;
          (*v230)(v100, v232);
          v110 = v70;
          v88 = v109;
          v211(v100 + v106, v110);
          LODWORD(v229) = 0;
          v193 = 0;
          goto LABEL_17;
        }

        sub_1C4441018();
      }

      sub_1C4402C08(&v232);
      v151 = v94;
LABEL_34:
      v152 = v79;
LABEL_37:
      v150(v151, v152);
      sub_1C4420C3C(v216, &qword_1EC0B8C80, &unk_1C4F3E850);
      v154 = sub_1C443F1AC();
      sub_1C4420C3C(v154, v155, v156);
      type metadata accessor for EventLogEvent(0);
      sub_1C43FCF64();
      sub_1C440BAA8(v157, v158, v159, v160);
      (*v230)(v208, v232);
    }

    v78 = v209;
    if (EnumCaseMultiPayload == 1)
    {

      sub_1C4402C08(&v229);
      v79 = v226;
      v80(v215, v74, v226);
      v59 = v220;
      if (v77 < 0xF)
      {
        sub_1C443E154();
        sub_1C4441018();

        v146 = sub_1C43FE99C();
        sub_1C441DFEC(v146, v147);
        v148 = sub_1C43FE99C();
        sub_1C441DFEC(v148, v149);
      }

      else
      {
        if ((v229 & 1) == 0)
        {
          v81 = v216;
          sub_1C4796E28(v216, v78);
          v82 = v75;
          v83 = *(v59 + 48);
          sub_1C4EF9AD8();
          v85 = v84;
          v86 = *v230;
          (*v230)(v78, v232);
          v62 = v85 - v62;
          v87 = v70;
          v88 = v86;
          v82(v78 + v83, v87);
          v89 = v215;
          v201 = sub_1C4EFDFE8();
          v225 = v90;
          v218 = sub_1C4EFDFC8();
          v194 = sub_1C4EFDFD8();
          v217 = v91;
          sub_1C4402C08(&v231);
          v92 = v89;
          v63 = v81;
          v64 = v231;
          v93(v92, v226);
          sub_1C4420C3C(v63, &qword_1EC0B8C80, &unk_1C4F3E850);
          LODWORD(v229) = 0;
          goto LABEL_17;
        }

        sub_1C4441018();
      }

      sub_1C4402C08(&v231);
      v151 = v215;
      goto LABEL_34;
    }

    v111 = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
    sub_1C4402C08(&v230);
    v112(v214, v74, v227);
    sub_1C4402C08(&v229);
    v113 = v74 + v111;
    v114 = v226;
    v115(v64, v113, v226);
    if (v77 < 0xF)
    {
      sub_1C4441018();
      sub_1C4798CA8();
LABEL_36:
      sub_1C4402C08(&v231);
      v153(v64, v114);
      sub_1C4402C08(&v232);
      v151 = v214;
      v152 = v227;
      goto LABEL_37;
    }

    if ((v229 & 1) == 0)
    {
      sub_1C4441018();
      goto LABEL_36;
    }

    v116 = v214;
    v196 = sub_1C4EFE018();
    v219 = v117;
    v211 = v75;
    sub_1C4420C3C(v204, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v118 = v216;
    v119 = sub_1C43FD258();
    sub_1C4796E28(v119, v120);
    v121 = *(v220 + 48);
    v122 = sub_1C44C1208();
    v123(v122);
    LODWORD(v229) = 1;
    sub_1C447F7E0();
    v211(v78 + v121, v70);
    v195 = sub_1C4EFE028();
    v201 = sub_1C4EFDFE8();
    v225 = v124;
    v218 = sub_1C4EFDFC8();
    v125 = sub_1C4EFDFD8();
    v63 = v118;
    v64 = v231;
    v194 = v125;
    v217 = v126;
    sub_1C4402C08(&v231);
    v127(v64, v226);
    sub_1C4402C08(&v232);
    v128 = v116;
    v59 = v220;
    v129(v128, v227);
    sub_1C4420C3C(v63, &qword_1EC0B8C80, &unk_1C4F3E850);
    v193 = 0;
    v88 = *v230;
LABEL_17:
    ++v61;
    v37 = v208;
    result = (v88)(v208, v232);
    v65 = v212;
    v58 = v223;
    v54 = v203;
  }

  while (v205 != v61);
  v130 = v219;
  if (!v219)
  {
    sub_1C4441018();

    v139 = sub_1C443F1AC();
    sub_1C4420C3C(v139, v140, v141);
    sub_1C4798CA8();
    goto LABEL_44;
  }

  v131 = v218;
  if (v225 >> 60 == 15)
  {
    v132 = sub_1C443F1AC();
    sub_1C4420C3C(v132, v133, v134);

    sub_1C4441018();

LABEL_44:
    type metadata accessor for EventLogEvent(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v182, v183, v184, v185);
    goto LABEL_24;
  }

  v161 = sub_1C443F1AC();
  v162 = v191;
  sub_1C44973B8(v161, v191, v163, v164);
  sub_1C440175C(v162, 1, v232);
  if (v165)
  {

    sub_1C4441018();
    sub_1C4798CA8();

    sub_1C4420C3C(v162, &unk_1EC0B84E0, qword_1C4F0D2D0);
    goto LABEL_44;
  }

  v166 = v88;
  v167 = v192;
  v168 = v222;
  (v222)(v192, v162, v232);
  if (!v131)
  {
    v166(v167, v232);

    sub_1C4441018();

    sub_1C4798CA8();
    goto LABEL_44;
  }

  v169 = v195;
  v170 = v193 | (v195 == 0);
  v171 = type metadata accessor for EventLogEvent(0);
  v172 = v202;
  v168(v202 + v171[5], v167, v232);
  v173 = (v172 + v171[6]);
  v174 = v172 + v171[8];
  v175 = (v172 + v171[11]);
  *v172 = v188;
  *v173 = v62;
  *(v173 + 8) = v229;
  v176 = (v172 + v171[7]);
  *v176 = v196;
  v176[1] = v130;
  *v174 = v169;
  v174[8] = v170 & 1;
  *(v172 + v171[9]) = v131;
  v177 = (v172 + v171[10]);
  v178 = v189;
  *v177 = v187;
  v177[1] = v178;
  v179 = v217;
  *v175 = v194;
  v175[1] = v179;
  v180 = (v172 + v171[12]);
  v181 = v225;
  *v180 = v201;
  v180[1] = v181;
  v135 = sub_1C4460210();
  v137 = 1;
  v138 = v171;
LABEL_23:
  sub_1C440BAA8(v135, v136, v137, v138);
LABEL_24:
}

uint64_t sub_1C479170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v37 = a1;
  v36 = sub_1C456902C(&qword_1EC0B8C80, &unk_1C4F3E850);
  v39 = *(v36 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v36 - v8;
  v10 = sub_1C4EFDFF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C4EFDF68();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  sub_1C4EFDF98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v24 = sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260);
    (*(v11 + 32))(v14, &v18[*(v24 + 48)], v10);
    v25 = sub_1C4EFDFA8();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = a3[1];
    *a3 = v25;
    a3[1] = v27;

LABEL_5:
    v29 = sub_1C4EFE038();
    (*(*(v29 - 8) + 8))(v18, v29);
    goto LABEL_6;
  }

  (*(v11 + 32))(v14, v18, v10);
  v20 = sub_1C4EFDFA8();
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  v23 = a3[1];
  *a3 = v20;
  a3[1] = v22;

LABEL_6:
  v30 = *(v36 + 48);
  v31 = sub_1C4EF9CD8();
  (*(*(v31 - 8) + 16))(v9, v37, v31);
  v32 = sub_1C4EFE058();
  (*(*(v32 - 8) + 16))(&v9[v30], v38, v32);
  sub_1C45892C0();
  v33 = *(*a4 + 16);
  sub_1C4589E60();
  v34 = *a4;
  *(v34 + 16) = v33 + 1;
  return sub_1C44973B8(v9, v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, &qword_1EC0B8C80, &unk_1C4F3E850);
}

void sub_1C4791AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1C4EFB768();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  sub_1C440DED0();
  if (v13)
  {
    v15 = 0;
  }

  sub_1C4EFBC58();
  v22 = *(v10 + 16);
  sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
  v23 = sub_1C44331AC();
  v24 = MEMORY[0x1E69E7360];
  *(v23 + 16) = xmmword_1C4F0D130;
  v25 = MEMORY[0x1E69A01D0];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = v15;
  sub_1C4EFB728();
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_1C441C09C();
  sub_1C4EFBBB8();
  if (v11)
  {
    sub_1C4420C3C(&v37, &unk_1EC0BC770, &qword_1C4F10DC0);
    v26 = *(v19 + 8);
    v27 = sub_1C43FE5F8();
    v28(v27);
  }

  else
  {
    sub_1C4420C3C(&v37, &unk_1EC0BC770, &qword_1C4F10DC0);
    v29 = *(v19 + 8);
    v30 = sub_1C43FE5F8();
    v31(v30);
    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C441C09C();
      if (!sub_1C4458EE8())
      {
        break;
      }

      sub_1C4EFBC68();
      if (*(&v38 + 1))
      {
        sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = *(v32 + 16);
            sub_1C458BE44();
            v32 = v35;
          }

          v33 = *(v32 + 16);
          if (v33 >= *(v32 + 24) >> 1)
          {
            sub_1C458BE44();
            v32 = v36;
          }

          *(v32 + 16) = v33 + 1;
          *(v32 + 8 * v33 + 32) = a10;
        }

        else
        {
        }
      }

      else
      {

        sub_1C4420C3C(&v37, &qword_1EC0B9038, &unk_1C4F231C0);
      }
    }
  }

  sub_1C43FBC80();
}

void sub_1C4791D9C()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&qword_1EC0BC788, &unk_1C4F30600);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440DED0();
  v12 = type metadata accessor for EventLogEvent(0);
  v13 = sub_1C43FBCE0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  sub_1C4791AA4(v7, v5 & 1, v19, v20, v21, v22, v23, v24, v31, v32);
  if (v0)
  {
LABEL_11:
    sub_1C43FBC80();
  }

  else
  {
    v26 = v25;
    v33 = v3;
    v27 = 0;
    v28 = *(v25 + 16);
    while (1)
    {
      if (v28 == v27)
      {
LABEL_10:

        goto LABEL_11;
      }

      if (v27 >= *(v26 + 16))
      {
        break;
      }

      sub_1C4790868(*(v26 + 8 * v27 + 32), v1);
      sub_1C440175C(v1, 1, v12);
      if (v29)
      {
        sub_1C4420C3C(v1, &qword_1EC0BC788, &unk_1C4F30600);
      }

      else
      {
        sub_1C44C8EE8(v1, v18);
        v30 = v33(v18);
        sub_1C4453D98();
        if ((v30 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      ++v27;
    }

    __break(1u);
  }
}

uint64_t sub_1C4791F74(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v98 = a4;
  v85 = a3;
  v94 = a2;
  v90 = sub_1C4EF9CD8();
  v84 = *(v90 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1C4EFDF68();
  v7 = *(*(v88 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v81 - v10;
  v11 = sub_1C456902C(&qword_1EC0BC718, &qword_1C4F29240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v81 - v13;
  v97 = sub_1C4EFE058();
  v82 = *(v97 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v81 - v18;
  v19 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v81 - v24;
  v25 = sub_1C4EFBD38();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  v93 = *(v92 - 8);
  v30 = *(v93 + 64);
  v31 = MEMORY[0x1EEE9AC00](v92);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v81 - v34;
  v102[3] = v25;
  v102[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v102);
  sub_1C4EFBD48();
  v101[3] = MEMORY[0x1E69E7360];
  v101[4] = MEMORY[0x1E69A01C8];
  v101[0] = a1;
  v103[3] = sub_1C4EFB298();
  v103[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v103);
  sub_1C4EFBB28();
  sub_1C4420C3C(v101, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v102);
  v91 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry;
  sub_1C44FAED4(&qword_1EDDE7128, type metadata accessor for EventLogDatabase.EventLogDatabaseEntry);
  v104 = v19;
  sub_1C4EFAE28();
  sub_1C440962C(v103);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C4F0D130;
  sub_1C4EFBD48();
  v37 = sub_1C4EFADA8();
  v38 = MEMORY[0x1E699FDA8];
  *(v36 + 56) = v37;
  *(v36 + 64) = v38;
  sub_1C4422F90((v36 + 32));
  sub_1C4EFB908();
  (*(v26 + 8))(v29, v25);
  sub_1C4401CBC(&unk_1EC0BC760, &qword_1EC0BC728, &unk_1C4F29250);
  v39 = v35;
  v40 = v92;
  sub_1C4EFB2F8();

  v41 = *(v93 + 8);
  v41(v33, v40);
  v42 = *(v94 + 16);
  sub_1C4401CBC(&qword_1EC0BC740, &qword_1EC0BC728, &unk_1C4F29250);
  sub_1C44FAED4(&qword_1EC0BC748, v91);
  v43 = v95;
  v44 = sub_1C4EFAFD8();
  result = (v41)(v39, v40);
  if (!v43)
  {
    v93 = v84 + 16;
    v94 = v82 + 32;
    v95 = (v82 + 8);
    v46 = v85;
    v47 = v83;
    v48 = v100;
    while (1)
    {
      v49 = v99;
      v50 = v44;
      sub_1C47882A8(v99);
      v51 = v104;
      if (sub_1C44157D4(v49, 1, v104) == 1)
      {

        return sub_1C4420C3C(v49, &qword_1EC0BC720, &qword_1C4F29248);
      }

      v52 = v46;
      sub_1C44C8EE8(v49, v48);
      sub_1C4430ACC(v48, v23);
      v53 = v51;
      if (*(v23 + v51[6]))
      {
        if (*(v23 + v51[6]) == 1)
        {
          v54 = (v23 + v51[7]);
          if (!v54[1])
          {
            goto LABEL_18;
          }

          v55 = v23 + v51[8];
          if (v55[8])
          {
            goto LABEL_18;
          }

          v56 = *v54;
          v57 = *v55;
          v58 = v54[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v59 = v86;
          sub_1C4EFE008();
        }

        else
        {
          if (!*(v23 + v51[9]))
          {
            goto LABEL_18;
          }

          v69 = (v23 + v51[10]);
          if (!v69[1])
          {
            goto LABEL_18;
          }

          v70 = (v23 + v51[12]);
          v71 = v70[1];
          if (v71 >> 60 == 15)
          {
            goto LABEL_18;
          }

          v92 = *v69;
          v85 = *v70;
          v77 = v85;
          v78 = v23 + v53[11];
          v79 = *(v78 + 1);
          v91 = *v78;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4431E64(v77, v71);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v59 = v86;
          v51 = v104;
          sub_1C4EFDFB8();
        }
      }

      else
      {
        v60 = (v23 + v51[7]);
        if (!v60[1] || (v61 = v23 + v51[8], (v61[8] & 1) != 0) || !*(v23 + v51[9]) || (v62 = v23 + v51[10], !*(v62 + 1)) || (v63 = (v23 + v51[12]), v64 = v63[1], v64 >> 60 == 15))
        {
LABEL_18:
          sub_1C4453D98();
          v72 = 1;
          goto LABEL_19;
        }

        v85 = *v60;
        v84 = *v61;
        v91 = *v62;
        v92 = *v63;
        v83 = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4431E64(v92, v64);
        v82 = v64;
        v65 = v86;
        sub_1C4EFE008();
        v66 = (v23 + v104[11]);
        v67 = *v66;
        v68 = v66[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v59 = v65;
        v51 = v104;
        sub_1C4EFDFB8();
      }

      swift_storeEnumTagMultiPayload();
      v80 = *v23;
      (*v93)(v89, v23 + v51[5], v90);
      sub_1C4430ACC(v59, v87);
      sub_1C4EFDF78();
      sub_1C4453D98();
      sub_1C4453D98();
      v72 = 0;
LABEL_19:
      v46 = v52;
      v73 = v97;
      sub_1C440BAA8(v47, v72, 1, v97);
      v74 = sub_1C44157D4(v47, 1, v73);
      v75 = v98;
      v76 = v96;
      v48 = v100;
      if (v74 == 1)
      {
        sub_1C4453D98();
        sub_1C4420C3C(v47, &qword_1EC0BC718, &qword_1C4F29240);
      }

      else
      {
        (*v94)(v96, v47, v73);
        sub_1C479170C(v48 + v104[5], v76, v46, v75);
        (*v95)(v76, v73);
        sub_1C4453D98();
      }

      v44 = v50;
    }
  }

  return result;
}

void sub_1C4792BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v141 = v21;
  v139 = v20;
  v145 = v25;
  v140 = v26;
  sub_1C43FBE94();
  v135 = sub_1C4EF9CD8();
  v27 = sub_1C43FCDF8(v135);
  v130 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD2D8();
  v134 = v31;
  sub_1C43FBE44();
  v133 = sub_1C4EFDF68();
  v32 = sub_1C43FBCE0(v133);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  sub_1C43FCE30(v36);
  v37 = sub_1C456902C(&qword_1EC0BC718, &qword_1C4F29240);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v143 = v41;
  sub_1C43FBE44();
  v144 = sub_1C4EFE058();
  v42 = sub_1C43FCDF8(v144);
  v129 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2D8();
  v142 = v46;
  v47 = sub_1C456902C(&qword_1EC0BC720, &qword_1C4F29248);
  sub_1C43FBD18(v47);
  v49 = *(v48 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBC74();
  v149 = v51;
  v52 = sub_1C43FBE44();
  v53 = type metadata accessor for EventLogDatabase.EventLogDatabaseEntry(v52);
  v54 = sub_1C43FBCE0(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBD08();
  sub_1C441598C();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v128 = v58;
  sub_1C43FBE44();
  v59 = sub_1C4EFBD38();
  v60 = sub_1C43FCDF8(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBCC4();
  v67 = v66 - v65;
  v137 = sub_1C456902C(&qword_1EC0BC728, &unk_1C4F29250);
  v68 = sub_1C43FCDF8(v137);
  v138 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBD08();
  v74 = v72 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v127 - v76;
  v147[3] = v59;
  v147[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v147);
  sub_1C4EFBD48();
  v146[3] = MEMORY[0x1E69E7360];
  v146[4] = MEMORY[0x1E69A01C8];
  v146[0] = v20;
  v148[3] = sub_1C4EFB298();
  v148[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v148);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v146, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v147);
  sub_1C441DCE4();
  v136 = v78;
  sub_1C44FAED4(v79, v80);
  sub_1C4EFAE28();
  sub_1C440962C(v148);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v81 = sub_1C44331AC();
  *(v81 + 16) = xmmword_1C4F0D130;
  sub_1C43FC144();
  sub_1C441D6B4();
  sub_1C4EFBD48();
  v82 = sub_1C4EFADA8();
  v83 = MEMORY[0x1E699FDA8];
  *(v81 + 56) = v82;
  *(v81 + 64) = v83;
  sub_1C4422F90((v81 + 32));
  sub_1C4EFB908();
  (*(v62 + 8))(v67, v59);
  sub_1C441F858();
  sub_1C4401CBC(v84, &qword_1EC0BC728, &unk_1C4F29250);
  v85 = v77;
  v86 = v137;
  sub_1C4EFB2F8();

  v87 = *(v138 + 8);
  v87(v74, v86);
  v88 = *(v139 + 16);
  sub_1C441310C();
  sub_1C4401CBC(v89, &qword_1EC0BC728, &unk_1C4F29250);
  sub_1C441C9C0();
  sub_1C44FAED4(v90, v136);
  sub_1C445698C();
  v91 = v141;
  v92 = sub_1C4EFAFD8();
  v87(v85, v86);
  if (!v91)
  {
    v137 = (v130 + 16);
    v138 = v129 + 32;
    v139 = v129 + 8;
    v141 = v92;
    v93 = v128;
    while (1)
    {
      sub_1C47882A8(v149);
      sub_1C440175C(v149, 1, v53);
      if (v94)
      {

        sub_1C4420C3C(v149, &qword_1EC0BC720, &qword_1C4F29248);
        break;
      }

      sub_1C4434FF4();
      sub_1C44C8EE8(v149, v93);
      sub_1C442FD20();
      sub_1C4430ACC(v93, v22);
      if (*(v22 + v53[6]))
      {
        if (*(v22 + v53[6]) == 1)
        {
          sub_1C4475AD8();
          if (*(v95 + 8))
          {
            sub_1C4459B48();
            if ((v98 & 1) == 0)
            {
              v99 = *v96;
              v100 = *v97;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v101 = v131;
              sub_1C4EFE008();
LABEL_24:
              swift_storeEnumTagMultiPayload();
              v126 = *v22;
              (*v137)(v134, v22 + v53[5], v135);
              sub_1C44340E4();
              sub_1C4430ACC(v101, v132);
              v118 = v143;
              sub_1C43FBC98();
              sub_1C4EFDF78();
              sub_1C4419580();
              sub_1C4453D98();
              sub_1C443F5D0();
              sub_1C4453D98();
              v117 = 0;
              goto LABEL_20;
            }
          }
        }

        else if (*(v22 + v53[9]))
        {
          v114 = v22 + v53[10];
          if (*(v114 + 1))
          {
            v115 = (v22 + v53[12]);
            v116 = v115[1];
            if (v116 >> 60 != 15)
            {
              v136 = *v114;
              v123 = *v115;
              sub_1C445ABAC();
              v125 = v124[1];
              v130 = *v124;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4431E64(v123, v116);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v101 = v131;
              sub_1C4EFDFB8();
              goto LABEL_24;
            }
          }
        }
      }

      else
      {
        sub_1C4475AD8();
        if (*(v102 + 8))
        {
          sub_1C4459B48();
          if ((v105 & 1) == 0)
          {
            if (*(v22 + v53[9]))
            {
              v106 = v22 + v53[10];
              if (*(v106 + 1))
              {
                v107 = (v22 + v53[12]);
                v108 = v107[1];
                if (v108 >> 60 != 15)
                {
                  v130 = *v103;
                  v129 = *v104;
                  v136 = *v106;
                  v127[0] = *v107;
                  v109 = v127[0];
                  v127[1] = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4431E64(v109, v108);
                  v110 = v131;
                  sub_1C4EFE008();
                  sub_1C445ABAC();
                  v112 = *v111;
                  v113 = v111[1];
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v101 = v110;
                  sub_1C4EFDFB8();
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }

      sub_1C4419580();
      sub_1C4453D98();
      v117 = 1;
      v118 = v143;
LABEL_20:
      v119 = v144;
      sub_1C440BAA8(v118, v117, 1, v144);
      sub_1C440175C(v118, 1, v119);
      v120 = v142;
      if (v94)
      {
        sub_1C4419580();
        sub_1C4453D98();
        sub_1C4420C3C(v118, &qword_1EC0BC718, &qword_1C4F29240);
      }

      else
      {
        sub_1C4402C08(&a17);
        v121(v120, v118, v119);
        v140(v93 + v53[5], v120);
        sub_1C4402C08(&a18);
        v122(v120, v119);
        sub_1C4419580();
        sub_1C4453D98();
      }
    }
  }

  sub_1C43FBC80();
}

uint64_t EventLogDatabase.Reader.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t EventLogDatabase.Reader.__deallocating_deinit()
{
  EventLogDatabase.Reader.deinit();

  return swift_deallocClassInstance();
}

void sub_1C4793674()
{
  sub_1C43FE96C();
  v93 = v0;
  v1 = sub_1C43FBE94();
  v2 = type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry(v1);
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  v94 = v6;
  sub_1C43FBE44();
  v7 = sub_1C4EFDFF8();
  v8 = sub_1C43FCDF8(v7);
  v91 = v9;
  v92 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v85 = v12;
  sub_1C43FBE44();
  v13 = sub_1C4EFE038();
  v14 = sub_1C43FCDF8(v13);
  v89 = v15;
  v90 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v84 = v18;
  sub_1C43FBE44();
  v87 = sub_1C4EFDF68();
  v19 = sub_1C43FBCE0(v87);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = sub_1C4EF9CD8();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  swift_allocBox();
  v35 = v34;
  v36 = sub_1C4EFDF88();
  sub_1C4EFE048();
  *v35 = v36;
  (*(v28 + 32))(v35 + v2[5], v33, v25);
  v86 = v2[6];
  *(v35 + v86) = 0;
  v37 = (v35 + v2[7]);
  *v37 = 0;
  v37[1] = 0;
  v38 = v35 + v2[8];
  *v38 = 0;
  v38[8] = 1;
  v39 = v2[9];
  *(v35 + v39) = 0;
  v40 = (v35 + v2[10]);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v35 + v2[11]);
  *v41 = 0;
  v41[1] = 0;
  v83 = v35 + v2[12];
  *v83 = xmmword_1C4F29230;
  sub_1C4EFDF98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v43 = *(v91 + 32);
      v44 = sub_1C442A90C();
      v45(v44);
      *(v35 + v86) = 2;
      v46 = sub_1C4EFDFC8();
      v47 = *(v35 + v39);
      *(v35 + v39) = v46;

      v48 = sub_1C4EFDFA8();
      v49 = v40[1];
      *v40 = v48;
      v40[1] = v50;

      v51 = sub_1C4EFDFD8();
      v52 = v41[1];
      *v41 = v51;
      v41[1] = v53;

      v54 = sub_1C4EFDFE8();
      v56 = v55;
      (*(v91 + 8))(v85, v92);
      v57 = *v83;
      v58 = *(v83 + 1);
      *v83 = v54;
      *(v83 + 1) = v56;
    }

    else
    {
      v88 = *(sub_1C456902C(&unk_1EC0BC670, &unk_1C4F29260) + 48);
      (*(v89 + 32))();
      (*(v91 + 32))(v85, v24 + v88, v92);
      *(v35 + v86) = 0;
      v66 = sub_1C4EFE018();
      v67 = v37[1];
      *v37 = v66;
      v37[1] = v68;

      *v38 = sub_1C4EFE028();
      v38[8] = 0;
      v69 = sub_1C4EFDFC8();
      v70 = *(v35 + v39);
      *(v35 + v39) = v69;

      v71 = sub_1C4EFDFA8();
      v72 = v40[1];
      *v40 = v71;
      v40[1] = v73;

      v74 = sub_1C4EFDFD8();
      v75 = v41[1];
      *v41 = v74;
      v41[1] = v76;

      v77 = sub_1C4EFDFE8();
      v79 = v78;
      (*(v91 + 8))(v85, v92);
      v80 = sub_1C4401D04();
      v81(v80);
      v57 = *v83;
      v58 = *(v83 + 1);
      *v83 = v77;
      *(v83 + 1) = v79;
    }

    sub_1C441DFEC(v57, v58);
  }

  else
  {
    v59 = *(v89 + 32);
    v60 = sub_1C442A90C();
    v61(v60);
    *(v35 + v86) = 1;
    v62 = sub_1C4EFE018();
    v63 = v37[1];
    *v37 = v62;
    v37[1] = v64;

    v65 = sub_1C4EFE028();
    (*(v89 + 8))(v84, v90);
    *v38 = v65;
    v38[8] = 0;
  }

  sub_1C4F00288();

  sub_1C4F00278();

  swift_beginAccess();
  sub_1C445FD14();
  sub_1C4430ACC(v35, v94);
  v82 = *(v93 + 16);
  sub_1C44FAED4(&qword_1EC0BC790, type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry);
  sub_1C4EFB6C8();
  sub_1C4423B3C();

  sub_1C43FBC80();
}

uint64_t sub_1C4793C0C()
{
  v0 = type metadata accessor for EventLogDatabase.TemporaryEventLogDatabaseEntry(0);
  v1 = swift_projectBox();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x6D614E746E657645;
  *(inited + 40) = 0xE900000000000065;
  swift_beginAccess();
  v3 = (v1 + v0[7]);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F01108();

  *(inited + 48) = v6;
  *(inited + 56) = 0x6E694B746E657645;
  *(inited + 64) = 0xE900000000000064;
  swift_beginAccess();
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(inited + 80) = 0x5464616F6C796150;
  *(inited + 88) = 0xEB00000000657079;
  swift_beginAccess();
  v7 = (v1 + v0[10]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4F01108();

  *(inited + 96) = v10;
  *(inited + 104) = 0x5364616F6C796150;
  *(inited + 112) = 0xEB00000000657A69;
  swift_beginAccess();
  v11 = 0;
  v12 = (v1 + v0[12]);
  if (v12[1] >> 60 != 15)
  {
    v11 = MEMORY[0x1C6938780](*v12);
  }

  swift_endAccess();
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
  return sub_1C4F00F28();
}

uint64_t sub_1C4793E94()
{
  v2 = sub_1C4EFBC98();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = *(v0 + 16);
  MEMORY[0x1C693A960](0xD00000000000002CLL, 0x80000001C4F9A280);
  sub_1C4EFC008();
  if (v1)
  {
    return (*(v5 + 8))(v13, v2);
  }

  v16 = *(v5 + 8);
  v16(v13, v2);
  MEMORY[0x1C693A960](0xD000000000000017, 0x80000001C4F9A2B0);
  sub_1C4EFC008();
  return (v16)(v10, v2);
}

uint64_t EventLogEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventLogEvent(0) + 20);
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t EventLogEvent.startTime.setter()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EventLogEvent(v2) + 20);
  v4 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*EventLogEvent.startTime.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 20);
  return nullsub_1;
}

uint64_t EventLogEvent.duration.getter()
{
  v1 = (v0 + *(type metadata accessor for EventLogEvent(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void EventLogEvent.duration.setter()
{
  v0 = sub_1C44158BC();
  v1 = type metadata accessor for EventLogEvent(v0);
  sub_1C4443428(*(v1 + 24));
}

uint64_t (*EventLogEvent.duration.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 24);
  return nullsub_1;
}

uint64_t EventLogEvent.name.getter()
{
  v0 = type metadata accessor for EventLogEvent(0);
  sub_1C444ACBC(*(v0 + 28));
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  v6 = type metadata accessor for EventLogEvent(v5);
  result = sub_1C4425724(*(v6 + 28));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t (*EventLogEvent.name.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 28);
  return nullsub_1;
}

uint64_t EventLogEvent.parent.getter()
{
  v1 = (v0 + *(type metadata accessor for EventLogEvent(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void EventLogEvent.parent.setter()
{
  v0 = sub_1C44158BC();
  v1 = type metadata accessor for EventLogEvent(v0);
  sub_1C4443428(*(v1 + 32));
}

uint64_t (*EventLogEvent.parent.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 32);
  return nullsub_1;
}

uint64_t EventLogEvent.dependencies.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventLogEvent(0) + 36));

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t EventLogEvent.dependencies.setter()
{
  v2 = sub_1C4403FC0();
  v3 = *(type metadata accessor for EventLogEvent(v2) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*EventLogEvent.dependencies.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 36);
  return nullsub_1;
}

uint64_t EventLogEvent.payloadType.getter()
{
  v0 = type metadata accessor for EventLogEvent(0);
  sub_1C444ACBC(*(v0 + 40));
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.payloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  v6 = type metadata accessor for EventLogEvent(v5);
  result = sub_1C4425724(*(v6 + 40));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t (*EventLogEvent.payloadType.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 40);
  return nullsub_1;
}

uint64_t EventLogEvent.payloadVariant.getter()
{
  v0 = type metadata accessor for EventLogEvent(0);
  sub_1C444ACBC(*(v0 + 44));
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.payloadVariant.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  v6 = type metadata accessor for EventLogEvent(v5);
  result = sub_1C4425724(*(v6 + 44));
  *v2 = v3;
  v2[1] = a2;
  return result;
}

uint64_t (*EventLogEvent.payloadVariant.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 44);
  return nullsub_1;
}

uint64_t EventLogEvent.payload.getter()
{
  v1 = (v0 + *(type metadata accessor for EventLogEvent(0) + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1C43FBC98();
  sub_1C44344B8(v4, v5);
  return sub_1C43FBC98();
}

uint64_t EventLogEvent.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C44158BC();
  v6 = v2 + *(type metadata accessor for EventLogEvent(v5) + 48);
  result = sub_1C4434000(*v6, *(v6 + 8));
  *v6 = v3;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*EventLogEvent.payload.modify())(void)
{
  v0 = sub_1C4403FC0();
  v1 = *(type metadata accessor for EventLogEvent(v0) + 48);
  return nullsub_1;
}

uint64_t sub_1C4794640@<X0>(uint64_t *a1@<X8>)
{
  result = EventLogEvent.id.getter();
  *a1 = result;
  return result;
}

uint64_t EventLogTypedEvent.startTime.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1C4EF9CD8();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t EventLogTypedEvent.startTime.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t EventLogTypedEvent.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4425724(*(a3 + 44));
  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t EventLogTypedEvent.dependencies.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t EventLogTypedEvent.eventVariant.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4425724(*(a3 + 56));
  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t sub_1C47949CC@<X0>(uint64_t *a1@<X8>)
{
  result = EventLogTypedEvent.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C47949F4()
{
  type metadata accessor for EventLogBufferedWriter.TerminationSignal();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1C456902C(&qword_1EC0BC9B8, &qword_1C4F29B28);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EC151D80 = result;
  return result;
}

uint64_t sub_1C4794A58()
{
  if (qword_1EC0B69C0 != -1)
  {
    sub_1C4422AA0();
  }

  v0 = qword_1EC151D80;

  os_unfair_lock_lock((v0 + 24));
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_unlock((v0 + 24));

  return v1;
}

uint64_t sub_1C4794AC8(char a1)
{
  if (qword_1EC0B69C0 != -1)
  {
    sub_1C4422AA0();
  }

  v2 = qword_1EC151D80;

  os_unfair_lock_lock((v2 + 24));
  *(*(v2 + 16) + 16) = a1 & 1;
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1C4794B48()
{
  v3 = v0;
  sub_1C44158BC();
  v4 = sub_1C4F023E8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction) = 0;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler) = 0;
  *(v3 + 112) = v1;

  sub_1C4F023C8();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert, v2, v4);
  *(v3 + 120) = MEMORY[0x1E69E7CC0];
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2E088);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  if (os_log_type_enabled(v11, v12))
  {
    sub_1C43FD1A8();
    *swift_slowAlloc() = 0;
    sub_1C4424954();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    v19 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v19);
  }

  return v3;
}

void sub_1C4794CE4()
{
  sub_1C43FBD3C();
  v2 = v0;
  v3 = sub_1C4F00D58();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4F00D88();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v18 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler;
  if (!*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler))
  {
    sub_1C4461BB8(0, &qword_1EDDFA490, 0x1E69E9630);
    v23 = v6;
    v19 = sub_1C4F01DD8();
    swift_getObjectType();
    v20 = swift_allocObject();
    swift_weakInit();
    v24[4] = sub_1C47986E8;
    v24[5] = v20;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 1107296256;
    v24[2] = sub_1C4833DD0;
    v24[3] = &unk_1F43EB390;
    v21 = _Block_copy(v24);

    sub_1C4F00D78();
    sub_1C479516C();
    sub_1C43FE5F8();
    sub_1C4F01DE8();
    _Block_release(v21);
    (*(v23 + 8))(v11, v3);
    (*(v15 + 8))(v1, v12);

    sub_1C4F01E08();
    v22 = *(v2 + v18);
    *(v2 + v18) = v19;
    swift_unknownObjectRelease();
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4794F44()
{
  v0 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1C4F018C8();
    sub_1C440BAA8(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_1C4785250();
  }

  return result;
}

uint64_t sub_1C4795060()
{
  sub_1C43FCF70();
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDE2E088);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (sub_1C4402B64(v3))
  {
    sub_1C43FD1A8();
    v4 = swift_slowAlloc();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "EventLogBufferedWriter: Handling SIGTERM");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  sub_1C44246F8(v7);

  return sub_1C4795258();
}

uint64_t sub_1C479516C()
{
  sub_1C4F00D58();
  sub_1C44FAED4(&qword_1EDDFCF08, MEMORY[0x1E69E7F60]);
  sub_1C456902C(&qword_1EC0BC9C0, &qword_1C4F29B30);
  sub_1C4401CBC(&qword_1EDDFCED8, &qword_1EC0BC9C0, &qword_1C4F29B30);
  return sub_1C4F020C8();
}

uint64_t sub_1C4795274()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  type metadata accessor for EventLogBufferedWriter(0);
  sub_1C4794AC8(1);
  if (*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {

    sub_1C4F01918();
  }

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  sub_1C44246F8(v2);

  return sub_1C4796880();
}

uint64_t sub_1C479534C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_1C43FBDAC();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C479544C, v3, 0);
}

uint64_t sub_1C479544C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler);
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler) = 0;
  swift_unknownObjectRelease();
  sub_1C43FBDA0();

  return v3();
}

void sub_1C47954B4()
{
  v1 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C444BFE4();
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task;
  if (!*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {
    type metadata accessor for EventLogBufferedWriter(0);
    if ((sub_1C4794A58() & 1) == 0)
    {
      sub_1C4F01898();
      sub_1C4F018C8();
      v6 = sub_1C445698C();
      sub_1C440BAA8(v6, 0, 1, v7);
      v8 = sub_1C44FAED4(&qword_1EC0BC9A8, type metadata accessor for EventLogBufferedWriter);
      v9 = swift_allocObject();
      v9[2] = v0;
      v9[3] = v8;
      v9[4] = v0;
      swift_retain_n();
      sub_1C445A93C();
      v10 = *(v0 + v5);
      *(v0 + v5) = v11;
    }
  }
}

uint64_t sub_1C47955EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v6 = sub_1C4F023F8();
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = sub_1C4F023E8();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4795730, a4, 0);
}

uint64_t sub_1C4795730()
{
  v5 = v1[17];
  v6 = os_transaction_create();
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction;
  v1[27] = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction;
  v8 = *(v5 + v7);
  *(v5 + v7) = v6;
  swift_unknownObjectRelease();
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v9 = sub_1C4F00978();
  v1[28] = sub_1C442B738(v9, qword_1EDE2E088);
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CB8();
  if (os_log_type_enabled(v10, v11))
  {
    sub_1C43FD1A8();
    v12 = swift_slowAlloc();
    sub_1C43FBD24(v12);
    _os_log_impl(&dword_1C43F8000, v10, v11, "EventLogBufferedWriter: Opening buffer.", v0, 2u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v13 = v1[17];

  sub_1C4794CE4();
  v1[29] = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert;
  swift_beginAccess();
  sub_1C44883A4();
  v14 = sub_1C448F0F0();
  v3(v14);
  sub_1C44578A8();
  v15 = sub_1C445C154();
  v4(v15);
  LOBYTE(v13) = sub_1C4F023B8();
  v16 = sub_1C43FD2BC();
  v4(v16);
  (v4)(v0, v2);
  if ((v13 & 1) == 0)
  {
    v24 = v1[28];
    v25 = v1[17];
    v26 = *(v25 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);
    *(v25 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;

    type metadata accessor for EventLogBufferedWriter(0);
    v27 = sub_1C4794A58();

    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CB8();
    v30 = sub_1C4402B64(v29);
    v31 = v1[17];
    if (v27)
    {
      if (!v30)
      {
        v38 = v1[17];

        goto LABEL_19;
      }

      v32 = sub_1C43FD084();
      sub_1C4430610(v32, 3.852e-34);
      sub_1C44102BC();
      sub_1C4403014(&dword_1C43F8000, v33, v34, "EventLogBufferedWriter: Stopping immediately. %ld items will be lost.");
    }

    else
    {
      if (v30)
      {
        v27 = sub_1C43FD084();
        sub_1C441B394(v27, 3.852e-34);
        sub_1C44102BC();
        sub_1C4403014(&dword_1C43F8000, v35, v36, "EventLogBufferedWriter: Flushing %ld items.");
        v37 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v37);
      }

      else
      {
        v39 = v1[17];
      }

      sub_1C4460804();
      v41 = *(v40 + OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_pool);
      swift_task_alloc();
      sub_1C43FC278();
      *(v42 + 16) = v43;
      *(v42 + 24) = v27;
      sub_1C446C37C(sub_1C4798C8C, v31);

      sub_1C4460630();
      v44 = *(v27 + 120);
      *(v27 + 120) = MEMORY[0x1E69E7CC0];

      v28 = sub_1C4F00968();
      v45 = sub_1C4F01CB8();
      if (!sub_1C4402B64(v45))
      {
LABEL_19:

        sub_1C441C200();

        sub_1C43FBDA0();
        sub_1C43FEA3C();

        __asm { BRAA            X1, X16 }
      }

      sub_1C43FD1A8();
      v46 = swift_slowAlloc();
      sub_1C43FBD24(v46);
      sub_1C43FFFD8(&dword_1C43F8000, v47, v48, "EventLogBufferedWriter: Flush complete.");
    }

    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    goto LABEL_19;
  }

  v17 = sub_1C4455364();
  v3(v17);
  sub_1C44578A8();
  v18 = sub_1C440A9B8();
  v4(v18);
  sub_1C44A1780();
  v19 = *(MEMORY[0x1E69E86D0] + 4);
  v20 = swift_task_alloc();
  v1[32] = v20;
  sub_1C441AE88();
  sub_1C44FAED4(v21, v22);
  *v20 = v1;
  sub_1C447F014();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DA68]();
}

uint64_t sub_1C4795B3C()
{
  sub_1C43FBDE4();
  v5 = v4;
  v6 = *(v4 + 256);
  v7 = *v2;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v5 + 264) = v0;

  v9 = sub_1C443EF00();
  v10(v9);
  if (v0)
  {
    v3(v0, v1);
    v11 = sub_1C4795FA8;
  }

  else
  {
    v3(0, v1);
    v11 = sub_1C4795C8C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v5, 0);
}

uint64_t sub_1C4795C8C()
{
  sub_1C44883A4();
  v5 = sub_1C448F0F0();
  v3(v5);
  sub_1C44578A8();
  v6 = sub_1C445C154();
  v4(v6);
  v7 = sub_1C4F023B8();
  v8 = sub_1C43FD2BC();
  v4(v8);
  (v4)(v0, v2);
  if ((v7 & 1) == 0)
  {
    v16 = v1[28];
    v17 = v1[17];
    v18 = *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);
    *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;

    type metadata accessor for EventLogBufferedWriter(0);
    v19 = sub_1C4794A58();

    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CB8();
    v22 = sub_1C4402B64(v21);
    v23 = v1[17];
    if (v19)
    {
      if (!v22)
      {
        v30 = v1[17];

        goto LABEL_15;
      }

      v24 = sub_1C43FD084();
      sub_1C4430610(v24, 3.852e-34);
      sub_1C44102BC();
      sub_1C4403014(&dword_1C43F8000, v25, v26, "EventLogBufferedWriter: Stopping immediately. %ld items will be lost.");
    }

    else
    {
      if (v22)
      {
        v19 = sub_1C43FD084();
        sub_1C441B394(v19, 3.852e-34);
        sub_1C44102BC();
        sub_1C4403014(&dword_1C43F8000, v27, v28, "EventLogBufferedWriter: Flushing %ld items.");
        v29 = sub_1C43FEF7C();
        MEMORY[0x1C6942830](v29);
      }

      else
      {
        v31 = v1[17];
      }

      sub_1C4460804();
      v33 = *(v32 + OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_pool);
      swift_task_alloc();
      sub_1C43FC278();
      *(v34 + 16) = v35;
      *(v34 + 24) = v19;
      sub_1C446C37C(sub_1C4798C8C, v23);

      sub_1C4460630();
      v36 = *(v19 + 120);
      *(v19 + 120) = MEMORY[0x1E69E7CC0];

      v20 = sub_1C4F00968();
      v37 = sub_1C4F01CB8();
      if (!sub_1C4402B64(v37))
      {
LABEL_15:

        sub_1C441C200();

        sub_1C43FBDA0();
        sub_1C43FEA3C();

        __asm { BRAA            X1, X16 }
      }

      sub_1C43FD1A8();
      v38 = swift_slowAlloc();
      sub_1C43FBD24(v38);
      sub_1C43FFFD8(&dword_1C43F8000, v39, v40, "EventLogBufferedWriter: Flush complete.");
    }

    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    goto LABEL_15;
  }

  v9 = sub_1C4455364();
  v3(v9);
  sub_1C44578A8();
  v10 = sub_1C440A9B8();
  v4(v10);
  sub_1C44A1780();
  v11 = *(MEMORY[0x1E69E86D0] + 4);
  v12 = swift_task_alloc();
  v1[32] = v12;
  sub_1C441AE88();
  sub_1C44FAED4(v13, v14);
  *v12 = v1;
  sub_1C447F014();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DA68]();
}

uint64_t sub_1C4795FA8()
{
  v1 = *(v0 + 224);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CB8();
  if (sub_1C4402B64(v3))
  {
    sub_1C43FD1A8();
    v4 = swift_slowAlloc();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "EventLogBufferedWriter: Early wakeup.");
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v7 = *(v0 + 224);
  v8 = *(v0 + 136);
  v9 = *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task) = 0;

  type metadata accessor for EventLogBufferedWriter(0);
  v10 = sub_1C4794A58();

  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CB8();
  v13 = sub_1C4402B64(v12);
  v14 = *(v0 + 136);
  if (v10)
  {
    if (!v13)
    {
      v21 = *(v0 + 136);

      goto LABEL_13;
    }

    v15 = sub_1C43FD084();
    sub_1C4430610(v15, 3.852e-34);
    sub_1C44102BC();
    sub_1C4403014(&dword_1C43F8000, v16, v17, "EventLogBufferedWriter: Stopping immediately. %ld items will be lost.");
  }

  else
  {
    if (v13)
    {
      v10 = sub_1C43FD084();
      sub_1C441B394(v10, 3.852e-34);
      sub_1C44102BC();
      sub_1C4403014(&dword_1C43F8000, v18, v19, "EventLogBufferedWriter: Flushing %ld items.");
      v20 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v20);
    }

    else
    {
      v22 = *(v0 + 136);
    }

    sub_1C4460804();
    v24 = *(v23 + OBJC_IVAR____TtC24IntelligencePlatformCore16EventLogDatabase_pool);
    swift_task_alloc();
    sub_1C43FC278();
    *(v25 + 16) = v26;
    *(v25 + 24) = v10;
    sub_1C446C37C(sub_1C4798C8C, v14);

    sub_1C4460630();
    v27 = *(v10 + 120);
    *(v10 + 120) = MEMORY[0x1E69E7CC0];

    v11 = sub_1C4F00968();
    v28 = sub_1C4F01CB8();
    if (!sub_1C4402B64(v28))
    {
      goto LABEL_13;
    }

    sub_1C43FD1A8();
    v29 = swift_slowAlloc();
    sub_1C43FBD24(v29);
    sub_1C43FFFD8(&dword_1C43F8000, v30, v31, "EventLogBufferedWriter: Flush complete.");
  }

  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_13:

  sub_1C441C200();

  sub_1C43FBDA0();

  return v32();
}

uint64_t sub_1C4796204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFE058();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a2 + 120);
  v10 = *(v9 + 16);
  v14[5] = v5 + 16;
  v11 = (v5 + 8);
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {
    }

    if (i >= *(v9 + 16))
    {
      break;
    }

    (*(v5 + 16))(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v4);
    sub_1C4793674();
    if (v2)
    {
      (*v11)(v8, v4);
    }

    result = (*v11)(v8, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47963A4()
{
  sub_1C43FBCD4();
  *(v1 + 112) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v0;
  v4 = sub_1C4F023E8();
  *(v1 + 80) = v4;
  v5 = *(v4 - 8);
  *(v1 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4796464, v0, 0);
}

uint64_t sub_1C4796464()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  swift_beginAccess();
  sub_1C458926C();
  v6 = *(*(v3 + 120) + 16);
  sub_1C4589E0C();
  v7 = *(v3 + 120);
  *(v7 + 16) = v6 + 1;
  v8 = sub_1C4EFE058();
  sub_1C43FBCE0(v8);
  (*(v9 + 16))(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6, v5);
  *(v3 + 120) = v7;
  swift_endAccess();
  sub_1C4F023C8();
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert;
  swift_beginAccess();
  (*(v2 + 40))(v3 + v10, v1, v4);
  swift_endAccess();
  sub_1C47954B4();
  if (*(*(v3 + 120) + 16) < 0x65uLL)
  {
    goto LABEL_8;
  }

  v11 = *(v0 + 72);
  if (*(v11 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {
    v12 = *(v11 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);

    sub_1C4F01918();
  }

  if (*(v0 + 112) == 1)
  {
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_1C4796698;
    v14 = *(v0 + 72);

    return sub_1C4796880();
  }

  else
  {
LABEL_8:
    v16 = *(v0 + 96);

    sub_1C43FBDA0();

    return v17();
  }
}

uint64_t sub_1C4796698()
{
  sub_1C43FBCD4();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = *(v1 + 96);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1C47967B8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task))
  {
    v2 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);

    sub_1C4F01918();
  }

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  sub_1C44246F8(v3);

  return sub_1C4796880();
}

uint64_t sub_1C479689C()
{
  sub_1C43FBCD4();
  v1 = *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);
  v0[3] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86B0] + 4);

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1C47969A0;
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 5, v1, v6, v4, v5);
  }

  else
  {
    sub_1C43FBDA0();

    return v7();
  }
}

uint64_t sub_1C47969A0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C4796ABC, v4, 0);
}

uint64_t sub_1C4796ADC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_timeOfLastInsert;
  v4 = sub_1C4F023E8();
  sub_1C43FBCE0(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_task);

  v7 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_transaction);
  swift_unknownObjectRelease();
  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22EventLogBufferedWriter_signalHandler);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C4796B7C()
{
  sub_1C4796ADC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4796BC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1C478DA34(a1, *(v1 + 24));
}

uint64_t sub_1C4796C3C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1C4401CBC(&unk_1EDDFA350, &qword_1EC0BC918, &qword_1C4F29AE0);
  return sub_1C4EFB4D8();
}

uint64_t sub_1C4796CE8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1C4401CBC(&qword_1EDDFA338, &qword_1EC0BC920, &qword_1C4F29AE8);
  return sub_1C4EFB4D8();
}

uint64_t sub_1C4796D94@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  result = sub_1C4800918(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8 & 1;
  }

  return result;
}

uint64_t sub_1C4796E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8C80, &unk_1C4F3E850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4796EC4()
{
  result = qword_1EC0BC798;
  if (!qword_1EC0BC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC798);
  }

  return result;
}

uint64_t sub_1C4796F70()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Configuration();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventLogDatabase.EventKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void sub_1C47973AC()
{
  sub_1C4EF9CD8();
  if (v0 <= 0x3F)
  {
    sub_1C4797E18(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      v2 = MEMORY[0x1E69E6158];
      sub_1C4797E18(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C4797E18(319, qword_1EC0BC7B8, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1C4797E18(319, &qword_1EDDFEAB0, v2, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4797524(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    sub_1C4797E18(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1C4797E18(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1C4797E18(319, qword_1EC0BC7B8, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
        if (v5 <= 0x3F)
        {
          sub_1C4797E18(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            swift_checkMetadataState();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47976B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v17 = *(*(v6 - 8) + 64) + 23;
  v18 = v15 + 16;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v19 = ((v18 + ((((((v17 + ((v14 + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + v16;
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_10;
  }

  v23 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v23))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_28;
      }

LABEL_18:
      v24 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v24 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v25 = v19;
        }

        else
        {
          v25 = 4;
        }

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      return v13 + (v26 | v24) + 1;
    }

    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  v27 = (a1 + v14 + 8) & ~v14;
  if (v8 == v13)
  {
    v11 = v8;
    v9 = v6;
LABEL_35:

    return sub_1C44157D4(v27, v11, v9);
  }

  v28 = (v17 + v27) & 0xFFFFFFFFFFFFFFF8;
  if ((v12 & 0x80000000) != 0)
  {
    v27 = (v18 + ((((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    goto LABEL_35;
  }

  v29 = *(v28 + 8);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void sub_1C4797944(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  v17 = *(*(v8 - 8) + 64) + 23;
  v18 = *(v12 + 80);
  v19 = ((v18 + 16 + ((((((v17 + ((v16 + 8) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + *(v12 + 64);
  v20 = 8 * v19;
  if (a3 <= v15)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v15 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        v27 = &a1[v16 + 8] & ~v16;
        if (v10 == v15)
        {
          v28 = a2;
          v11 = v8;
        }

        else
        {
          v29 = ((v17 + v27) & 0xFFFFFFFFFFFFFFF8);
          if ((v14 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *v29 = a2 & 0x7FFFFFFF;
              v29[1] = 0;
            }

            else
            {
              v29[1] = (a2 - 1);
            }

            return;
          }

          v27 = (v18 + 16 + ((((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v18;
          v28 = a2;
          v10 = v13;
        }

        sub_1C440BAA8(v27, v28, v10, v11);
        break;
    }
  }

  else
  {
    v22 = ~v15 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4797CA4()
{
  result = sub_1C4F023E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C4797DB4()
{
  if (!qword_1EDDDBBA8)
  {
    sub_1C4572308(&qword_1EC0BC860, &unk_1C4F29660);
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBBA8);
    }
  }
}

void sub_1C4797E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C4797E7C(uint64_t a1, int a2)
{
  sub_1C4403FC0();
  v3 = sub_1C4EF9CD8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == a2)
  {
    v5 = sub_1C4456280();

    return sub_1C44157D4(v5, v6, v7);
  }

  else
  {
    sub_1C4458490();
    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C4797F28(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  sub_1C44158BC();
  v8 = sub_1C4EF9CD8();
  result = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_1C442902C();

    return sub_1C440BAA8(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C4797FC0()
{
  v0 = sub_1C4EF9CD8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C44042D0(v0, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C44042D0(v3, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1C4797DB4();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C44042D0(v5, &qword_1EDDFA3F8, MEMORY[0x1E6969080]);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C47982C8()
{
  sub_1C4403FC0();
  v1 = sub_1C4EFE058();
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_1C43FCF54(v7);
  *v8 = v9;
  v8[1] = sub_1C442E8C4;

  return sub_1C4789D80();
}

unint64_t sub_1C4798484()
{
  result = qword_1EC0BC940;
  if (!qword_1EC0BC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC940);
  }

  return result;
}

unint64_t sub_1C47984D8()
{
  result = qword_1EC0BC950;
  if (!qword_1EC0BC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BC950);
  }

  return result;
}

unint64_t sub_1C479852C()
{
  result = qword_1EDDE7168;
  if (!qword_1EDDE7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7168);
  }

  return result;
}

uint64_t sub_1C4798580(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BC860, &unk_1C4F29660);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C47985EC()
{
  result = qword_1EDDE7158;
  if (!qword_1EDDE7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7158);
  }

  return result;
}

uint64_t sub_1C4798640()
{
  sub_1C43FCF70();
  sub_1C4424CA8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C441E37C(v1);

  return sub_1C47955EC(v3, v4, v5, v6);
}

uint64_t sub_1C47986F0()
{
  sub_1C43FCF70();
  sub_1C4424CA8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C441E37C(v1);

  return sub_1C4795040(v3, v4, v5, v6);
}

uint64_t sub_1C479877C()
{
  sub_1C43FCF70();
  sub_1C4424CA8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C441E37C(v1);

  return sub_1C47893B8();
}

unint64_t sub_1C4798808()
{
  result = qword_1EDDE7160;
  if (!qword_1EDDE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7160);
  }

  return result;
}

_BYTE *sub_1C4798908(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C47989E8()
{
  result = qword_1EC0BCB00;
  if (!qword_1EC0BCB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB00);
  }

  return result;
}

unint64_t sub_1C4798A40()
{
  result = qword_1EC0BCB08;
  if (!qword_1EC0BCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB08);
  }

  return result;
}

unint64_t sub_1C4798A98()
{
  result = qword_1EDDE7140;
  if (!qword_1EDDE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7140);
  }

  return result;
}

unint64_t sub_1C4798AF0()
{
  result = qword_1EDDE7148;
  if (!qword_1EDDE7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE7148);
  }

  return result;
}

unint64_t sub_1C4798B48()
{
  result = qword_1EC0BCB10;
  if (!qword_1EC0BCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB10);
  }

  return result;
}

unint64_t sub_1C4798BA0()
{
  result = qword_1EC0BCB18;
  if (!qword_1EC0BCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB18);
  }

  return result;
}

uint64_t sub_1C4798CA8()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 184);

  return sub_1C441DFEC(v2, v3);
}

uint64_t sub_1C4798CC4()
{
  v4 = *(v0 + 16);
  v5 = *(v1 + 16);
  v6 = *(v2 - 96);

  return sub_1C4EF96D8();
}

uint64_t EventMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventMatcher();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for EventMatcher()
{
  result = qword_1EDDF8CA0;
  if (!qword_1EDDF8CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EventMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  sub_1C4471EF8(a2, a4);
  v7 = type metadata accessor for EventMatcher();
  *(a4 + *(v7 + 20)) = v6;
  return sub_1C4471EF8(a1, a4 + *(v7 + 24));
}

uint64_t sub_1C4798E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v72 = a3;
  v73 = a2;
  v4 = sub_1C4EF9CD8();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v67 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v63 - v13;
  v15 = type metadata accessor for EntityTriple(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v63 - v21;
  v23 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v63 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v63 - v31;
  v33 = v75;
  result = sub_1C4ACE63C();
  if (!v33)
  {
    v65 = v3;
    v66 = v30;
    v63[0] = v27;
    v63[1] = 0;
    v75 = v18;
    v64 = v10;
    v36 = v70;
    v35 = v71;
    v37 = v32;
    v38 = v72;
    if (v73)
    {
      sub_1C44F1938(v73, v22);
      v39 = type metadata accessor for GraphTriple(0);
      v40 = v36;
      v41 = v14;
      if (sub_1C44157D4(v22, 1, v39) == 1)
      {
        sub_1C4420C3C(v22, &unk_1EC0BC900, &unk_1C4F142D0);
        v42 = 1;
      }

      else
      {
        (*(v36 + 16))(v37, v22, v35);
        sub_1C44DBD5C(v22, type metadata accessor for GraphTriple);
        v42 = 0;
      }

      v43 = v74;
    }

    else
    {
      v42 = 1;
      v40 = v70;
      v43 = v74;
      v41 = v14;
    }

    sub_1C440BAA8(v37, v42, 1, v35);
    sub_1C44D0BD8(v43, v41);
    v44 = sub_1C44157D4(v41, 1, v15);
    v45 = v38;
    v46 = v75;
    v47 = v66;
    if (v44 == 1)
    {
      sub_1C4420C3C(v41, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDE2DE10);
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CD8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v49, v50, "Event Matcher: skipping entityTriples are empty", v51, 2u);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471EF8(v41, v75);
      sub_1C4EFF008();
      sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v47, 0, 1, v35);
      sub_1C44DDDBC(v47, v37);
      v53 = v63[0];
      sub_1C457E858(v37, v63[0]);
      v54 = sub_1C44157D4(v53, 1, v35);
      v74 = v37;
      if (v54 == 1)
      {
        sub_1C4420C3C(v53, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v55 = v46;
        v56 = v64;
        (*(v40 + 32))(v64, v53, v35);
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        v57 = type metadata accessor for EntityMatch(0);
        v58 = *(v40 + 16);
        v58(v45 + v57[5], v46, v35);
        v58(v45 + v57[6], v56, v35);
        v59 = v67;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v68 + 8))(v59, v69);
        (*(v40 + 8))(v56, v35);
        sub_1C44DBD5C(v55, type metadata accessor for EntityTriple);
        sub_1C4420C3C(v74, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = type metadata accessor for EventMatcher();
        v62 = *(v65 + *(result + 20));
        *(v45 + v57[7]) = 1056964608;
        *(v45 + v57[8]) = v61;
        *(v45 + v57[9]) = v62;
        *(v45 + v57[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4799584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a1;
  v72 = a3;
  v73 = a2;
  v4 = sub_1C4EF9CD8();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v67 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFF0C8();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v63 - v13;
  v15 = type metadata accessor for EntityTriple(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C456902C(&unk_1EC0BCAE0, &unk_1C4F142A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v63 - v21;
  v23 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v63 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = v63 - v31;
  v33 = v75;
  result = sub_1C4ACE63C();
  if (!v33)
  {
    v65 = v3;
    v66 = v30;
    v63[0] = v27;
    v63[1] = 0;
    v75 = v18;
    v64 = v10;
    v36 = v70;
    v35 = v71;
    v37 = v32;
    v38 = v72;
    if (v73)
    {
      sub_1C486854C(v73, v22);
      v39 = type metadata accessor for ConstructionGraphTriple(0);
      v40 = v36;
      v41 = v14;
      if (sub_1C44157D4(v22, 1, v39) == 1)
      {
        sub_1C4420C3C(v22, &unk_1EC0BCAE0, &unk_1C4F142A0);
        v42 = 1;
      }

      else
      {
        (*(v36 + 16))(v37, v22, v35);
        sub_1C44DBD5C(v22, type metadata accessor for ConstructionGraphTriple);
        v42 = 0;
      }

      v43 = v74;
    }

    else
    {
      v42 = 1;
      v40 = v70;
      v43 = v74;
      v41 = v14;
    }

    sub_1C440BAA8(v37, v42, 1, v35);
    sub_1C44D0BD8(v43, v41);
    v44 = sub_1C44157D4(v41, 1, v15);
    v45 = v38;
    v46 = v75;
    v47 = v66;
    if (v44 == 1)
    {
      sub_1C4420C3C(v41, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v48 = sub_1C4F00978();
      sub_1C442B738(v48, qword_1EDE2DE10);
      v49 = sub_1C4F00968();
      v50 = sub_1C4F01CD8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1C43F8000, v49, v50, "Event Matcher: skipping entityTriples are empty", v51, 2u);
        MEMORY[0x1C6942830](v51, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471EF8(v41, v75);
      sub_1C4EFF008();
      sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v47, 0, 1, v35);
      sub_1C44DDDBC(v47, v37);
      v53 = v63[0];
      sub_1C457E858(v37, v63[0]);
      v54 = sub_1C44157D4(v53, 1, v35);
      v74 = v37;
      if (v54 == 1)
      {
        sub_1C4420C3C(v53, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        v55 = v46;
        v56 = v64;
        (*(v40 + 32))(v64, v53, v35);
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        v57 = type metadata accessor for EntityMatch(0);
        v58 = *(v40 + 16);
        v58(v45 + v57[5], v46, v35);
        v58(v45 + v57[6], v56, v35);
        v59 = v67;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v61 = v60;
        (*(v68 + 8))(v59, v69);
        (*(v40 + 8))(v56, v35);
        sub_1C44DBD5C(v55, type metadata accessor for EntityTriple);
        sub_1C4420C3C(v74, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = type metadata accessor for EventMatcher();
        v62 = *(v65 + *(result + 20));
        *(v45 + v57[7]) = 1056964608;
        *(v45 + v57[8]) = v61;
        *(v45 + v57[9]) = v62;
        *(v45 + v57[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t EventMatcher.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = *(*(sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4799D90, 0, 0);
}

uint64_t sub_1C4799D90()
{
  v44 = v0;
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for EventMatcher();
  v5 = v3 + *(v4 + 24);
  v6 = *(v5 + *(type metadata accessor for PhaseStores() + 24));
  v7 = *(v4 + 20);
  LOBYTE(v43[0]) = *(v3 + v7);
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v8, v9, v10, v2);
  sub_1C44ABA54(v43, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v7))
  {
    case 1:
    case 3:
      v11 = v0[7];
      v12 = v0[4];
      v13 = v0[5];
      v14 = v0[3];
      _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
      v15 = *(v3 + v7);
      *(swift_task_alloc() + 16) = v14;
      v16 = sub_1C4406CC8();
      sub_1C44AC170(v16, v17, v18, v19, v20, v21);
      goto LABEL_5;
    case 2:
      v13 = v0[5];
      v11 = v0[6];
      v24 = v0[3];
      v12 = v0[4];
      _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
      v15 = *(v3 + v7);
      *(swift_task_alloc() + 16) = v24;
      v25 = sub_1C4406CC8();
      sub_1C46CE408(v25, v26, v27, v28, v29, v30);
LABEL_5:
      (*(v13 + 8))(v11, v12);

      if (v15)
      {
        v32 = v0[7];
        v31 = v0[8];
        v33 = v0[6];
      }

      else
      {
        v36 = v0[7];
        v35 = v0[8];
        v37 = v0[6];
        v39 = v0[3];
        v38 = v0[4];
        LOBYTE(v43[0]) = *(v3 + v7);
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C43FBD94();
        sub_1C440BAA8(v40, v41, v42, v38);
        sub_1C44A8814(v43, v35);
        sub_1C4420C3C(v35, &qword_1EC0B8568, &unk_1C4F319B0);
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C46418CC();
      }

      v34 = v0[1];

      result = v34();
      break;
    default:
      v43[0] = 0;
      v43[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA548, &qword_1C4F29E20);
      v22 = sub_1C4F01198();
      MEMORY[0x1C6940010](v22);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v3 + v7));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C479A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5();
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C479A170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return EventMatcher.execute()();
}

uint64_t sub_1C479A260(uint64_t a1)
{
  result = sub_1C479A2E8(&qword_1EDDF8CB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C479A2A4(uint64_t a1)
{
  result = sub_1C479A2E8(qword_1EDDF8CC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C479A2E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventMatcher();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C479A354()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t EventParticipant.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C479A410()
{
  if (qword_1EC0B7118 != -1)
  {
    swift_once();
  }

  qword_1EC0BCB20 = qword_1EC0C3868;
  unk_1EC0BCB28 = *algn_1EC0C3870;
  qword_1EC0BCB38 = qword_1EC0C3880;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static EventParticipant.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B69C8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0BCB38;
  *a1 = qword_1EC0BCB20;
  *(a1 + 8) = unk_1EC0BCB28;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t EventParticipant.identifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void EventParticipant.init(mapLocation:identifier:participantType:isCurrentUser:url:name:emailAddress:phoneNumber:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v74 = a2;
  v75 = a8;
  v73 = a1;
  v20 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v69 - v22;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0CE60;
  *(v24 + 32) = 0x696669746E656469;
  *(v24 + 40) = 0xEA00000000007265;
  *(v24 + 48) = a3;
  *(v24 + 56) = a4;
  *(v24 + 72) = 0;
  *(v24 + 80) = 0;
  *(v24 + 64) = 0;
  *(v24 + 88) = 1;
  v76 = a5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4F02858();
  *(v24 + 96) = 1701869940;
  *(v24 + 104) = 0xE400000000000000;
  *(v24 + 112) = v25;
  *(v24 + 120) = v26;
  *(v24 + 136) = 0;
  *(v24 + 144) = 0;
  *(v24 + 128) = 0;
  *(v24 + 152) = 1;
  if (a6)
  {
    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1C4406CE8(v27);
      sub_1C458A900();
      v24 = v62;
    }

    *(v24 + 16) = v28 + 1;
    v29 = v24 + (v28 << 6);
    strcpy((v29 + 32), "isCurrentUser");
    *(v29 + 46) = -4864;
    *(v29 + 48) = 1702195828;
    *(v29 + 56) = 0xE400000000000000;
    sub_1C4404B30(v29);
  }

  v71 = a11;
  v72 = a7;
  sub_1C479AF64(a7, v23);
  v30 = sub_1C4EF98F8();
  if (sub_1C44157D4(v23, 1, v30) == 1)
  {
    sub_1C46CF3CC(v23);
  }

  else
  {
    v31 = sub_1C4EF9818();
    v33 = v32;
    (*(*(v30 - 8) + 8))(v23, v30);
    v34 = *(v24 + 16);
    if (v34 >= *(v24 + 24) >> 1)
    {
      sub_1C458A900();
      v24 = v63;
    }

    *(v24 + 16) = v34 + 1;
    v35 = (v24 + (v34 << 6));
    v35[4] = 7107189;
    v35[5] = 0xE300000000000000;
    v35[6] = v31;
    v35[7] = v33;
    sub_1C4404B30(v35);
  }

  sub_1C442C9BC();
  if (!a10)
  {
    if (!a12)
    {
      goto LABEL_29;
    }

    v50 = v71;
    goto LABEL_36;
  }

  v70 = a4;
  v38 = a3;
  v39 = objc_allocWithZone(MEMORY[0x1E6996728]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v40 = [v39 init];
  v41 = sub_1C4F01108();
  v42 = [v40 typeOfHandleString_];

  v44 = *(v24 + 16);
  v43 = *(v24 + 24);
  v45 = v42 == 1;
  if (v42 == 1)
  {
    v46 = 0x6464416C69616D65;
  }

  else
  {
    v46 = 1701667182;
  }

  if (v45)
  {
    v47 = 0xEC00000073736572;
  }

  else
  {
    v47 = 0xE400000000000000;
  }

  if (v44 >= v43 >> 1)
  {
    sub_1C4406CE8(v43);
    sub_1C458A900();
    v24 = v60;
  }

  *(v24 + 16) = v44 + 1;
  v48 = (v24 + (v44 << 6));
  v48[4] = v46;
  v48[5] = v47;
  v48[6] = v75;
  v48[7] = a10;
  sub_1C4404B30(v48);
  if (!a12)
  {
    a3 = v38;
    a4 = v70;
    goto LABEL_29;
  }

  v50 = v71;
  v51 = v71 == v49 && a12 == a10;
  a3 = v38;
  if (v51)
  {

    a4 = v70;
    if (a14)
    {
      goto LABEL_30;
    }

LABEL_39:
    sub_1C46CF3CC(v72);
    goto LABEL_40;
  }

  v52 = sub_1C4F02938();

  a4 = v70;
  if ((v52 & 1) == 0)
  {
    sub_1C442C9BC();
LABEL_36:
    v57 = *(v24 + 16);
    v56 = *(v24 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1C4406CE8(v56);
      v65 = v64;
      v67 = v66;
      sub_1C458A900();
      v37 = v67;
      v36 = v65;
      v24 = v68;
    }

    *(v24 + 16) = v57 + 1;
    v58 = (v24 + (v57 << 6));
    v58[4] = v36;
    v58[5] = v37;
    v58[6] = v50;
    v58[7] = a12;
    sub_1C4404B30(v58);
    if (a14)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

LABEL_29:

  if (!a14)
  {
    goto LABEL_39;
  }

LABEL_30:
  v54 = *(v24 + 16);
  v53 = *(v24 + 24);
  if (v54 >= v53 >> 1)
  {
    sub_1C4406CE8(v53);
    sub_1C458A900();
    v24 = v61;
  }

  sub_1C46CF3CC(v72);
  *(v24 + 16) = v54 + 1;
  v55 = (v24 + (v54 << 6));
  v55[4] = 0x6D754E656E6F6870;
  v55[5] = 0xEB00000000726562;
  v55[6] = a13;
  v55[7] = a14;
  sub_1C4404B30(v55);
LABEL_40:
  v59 = v74;
  *a9 = v73;
  a9[1] = v59;
  a9[2] = v24;
  a9[3] = a3;
  a9[4] = a4;
}

uint64_t sub_1C479AA00(uint64_t a1)
{
  v2 = sub_1C479AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C479AA3C(uint64_t a1)
{
  v2 = sub_1C479AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventParticipant.encode(to:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0BCB40, &unk_1C4F29ED0);
  v5 = sub_1C43FFC58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v18 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v18[2] = v1[3];
  v19 = v14;
  v18[1] = v1[4];
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C479AFD4();
  sub_1C4F02BF8();
  v24 = 0;
  v16 = v20;
  sub_1C4F02798();
  if (!v16)
  {
    v21 = v19;
    v23 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
    v22 = 2;
    sub_1C4F02738();
  }

  return (*(v7 + 8))(v11, v2);
}

uint64_t EventParticipant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1C456902C(&qword_1EC0BCB50, &qword_1C4F29EE0);
  v7 = sub_1C43FFC58(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v23 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C479AFD4();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v29 = 0;
  v15 = sub_1C4F02678();
  v25 = v16;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v28 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v24 = v26;
  v27 = 2;
  v17 = sub_1C4F02618();
  v19 = v18;
  v20 = v17;
  (*(v9 + 8))(v13, v3);
  v21 = v25;
  *a2 = v15;
  a2[1] = v21;
  a2[2] = v24;
  a2[3] = v20;
  a2[4] = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C479AF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C479AFD4()
{
  result = qword_1EC0BCB48;
  if (!qword_1EC0BCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB48);
  }

  return result;
}

unint64_t sub_1C479B028(uint64_t a1)
{
  result = sub_1C479B050();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C479B050()
{
  result = qword_1EC0BCB58;
  if (!qword_1EC0BCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB58);
  }

  return result;
}

unint64_t sub_1C479B0A4(uint64_t a1)
{
  *(a1 + 8) = sub_1C479B0D4();
  result = sub_1C479B128();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C479B0D4()
{
  result = qword_1EC0BCB60;
  if (!qword_1EC0BCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB60);
  }

  return result;
}

unint64_t sub_1C479B128()
{
  result = qword_1EC0BCB68;
  if (!qword_1EC0BCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventParticipant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C479B26C()
{
  result = qword_1EC0BCB70;
  if (!qword_1EC0BCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB70);
  }

  return result;
}

unint64_t sub_1C479B2C4()
{
  result = qword_1EC0BCB78;
  if (!qword_1EC0BCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB78);
  }

  return result;
}

unint64_t sub_1C479B31C()
{
  result = qword_1EC0BCB80;
  if (!qword_1EC0BCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCB80);
  }

  return result;
}

void sub_1C479B3C8(uint64_t (*a1)(uint64_t *))
{
  sub_1C4432274();
  v6 = *(v2 + 56);
  v5 = v2 + 56;
  sub_1C4406D00(v7, v8, v9);
  v10 = 0;
  if (v4)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      v12 = sub_1C441F8CC();
      v20 = sub_1C4411C74(v12, v13, v14, v15, v16, v17, v18, v19, v23);
      v21 = a1(v20);
      if (v1)
      {
        break;
      }

      v22 = v21;

      if (v22)
      {
        goto LABEL_10;
      }

      v4 &= v4 - 1;
      v10 = v11;
      if (!v4)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_1C44030B0();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
LABEL_10:

        goto LABEL_11;
      }

      v4 = *(v5 + 8 * v11);
      ++v10;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1C479B4B4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4428DA0();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
LABEL_11:
      sub_1C44030B0();
      return;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6940F90](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

BOOL sub_1C479B5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FD6BC(a1, a2, a3);
  v6 = (v5 + 48);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v21 = *(v6 - 1);
    v22 = *v6;
    v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4411C74(v9, v10, v11, v12, v13, v14, v15, v16, v21);
    v18 = v4(v17);
    if (v3)
    {

      return v8 != 0;
    }

    v19 = v18;
    v6 += 3;
  }

  while ((v19 & 1) == 0);
  return v8 != 0;
}

void sub_1C479B674(uint64_t (*a1)(uint64_t *))
{
  sub_1C4432274();
  v6 = *(v2 + 64);
  v5 = v2 + 64;
  sub_1C4406D00(v7, v8, v9);
  v10 = 0;
  if (v4)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      v12 = sub_1C441F8CC();
      v20 = sub_1C4411C74(v12, v13, v14, v15, v16, v17, v18, v19, v23);
      v21 = a1(v20);
      if (v1)
      {
        break;
      }

      v22 = v21;

      if (v22)
      {
        goto LABEL_10;
      }

      v4 &= v4 - 1;
      v10 = v11;
      if (!v4)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    sub_1C44030B0();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
LABEL_10:

        goto LABEL_11;
      }

      v4 = *(v5 + 8 * v11);
      ++v10;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

BOOL sub_1C479B790(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = *(a4(0) - 8);
    v12 = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v12 & 1) == 0);
  return v9 != v10;
}

uint64_t EventSender.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t EventSender.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventSender.mapLocation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t EventSender.mapLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1C479B984()
{
  if (qword_1EC0B7128 != -1)
  {
    swift_once();
  }

  qword_1EC0BCB88 = qword_1EC0C38A8;
  *&qword_1EC0BCB90 = *&qword_1EC0C38B0;
  qword_1EC0BCBA0 = qword_1EC0C38C0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C479BA04()
{
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598();
  }

  return &qword_1EC0BCB88;
}

uint64_t static EventSender.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598();
  }

  swift_beginAccess();
  v2 = qword_1EC0BCBA0;
  *a1 = qword_1EC0BCB88;
  *(a1 + 8) = *&qword_1EC0BCB90;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static EventSender.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598();
  }

  swift_beginAccess();
  qword_1EC0BCB88 = v1;
  *&qword_1EC0BCB90 = v4;
  qword_1EC0BCBA0 = v2;
}

uint64_t (*static EventSender.type.modify())()
{
  if (qword_1EC0B69D0 != -1)
  {
    sub_1C4419598();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C479BBD0@<X0>(uint64_t a1@<X8>)
{
  sub_1C479BA04();
  swift_beginAccess();
  v2 = qword_1EC0BCBA0;
  *a1 = qword_1EC0BCB88;
  *(a1 + 8) = *&qword_1EC0BCB90;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C479BC38(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C479BA04();
  swift_beginAccess();
  qword_1EC0BCB88 = v1;
  *&qword_1EC0BCB90 = v4;
  qword_1EC0BCBA0 = v2;
}

uint64_t EventSender.basicProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1C479C0B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636F4C70616DLL && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F72506369736162 && a2 == 0xEF73656974726570)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C479C1DC(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x7461636F4C70616DLL;
  }

  return 0x6F72506369736162;
}

uint64_t sub_1C479C254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C479C0B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C479C27C(uint64_t a1)
{
  v2 = sub_1C479C7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C479C2B8(uint64_t a1)
{
  v2 = sub_1C479C7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventSender.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BCBA8, &unk_1C4F2A0F8);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v19 = v1[4];
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C479C7D0();
  sub_1C4F02BF8();
  v26 = 0;
  v15 = v22;
  sub_1C4F02738();
  if (!v15)
  {
    v16 = v19;
    v25 = 1;
    sub_1C4F02798();
    v23 = v16;
    v24 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t EventSender.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BCBB8, &qword_1C4F2A108);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C479C7D0();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    v10 = sub_1C4F02618();
    v13 = v12;
    v20 = v10;
    v14 = sub_1C4F02678();
    v16 = v15;
    v19 = v14;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
    sub_1C4F026C8();
    v17 = sub_1C43FBF04();
    v18(v17);
    *a2 = v20;
    a2[1] = v13;
    a2[2] = v19;
    a2[3] = v16;
    a2[4] = v21;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(a1);
  }
}

unint64_t sub_1C479C7D0()
{
  result = qword_1EC0BCBB0;
  if (!qword_1EC0BCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBB0);
  }

  return result;
}

unint64_t sub_1C479C824(uint64_t a1)
{
  result = sub_1C479C84C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C479C84C()
{
  result = qword_1EC0BCBC0;
  if (!qword_1EC0BCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBC0);
  }

  return result;
}

unint64_t sub_1C479C8A0(uint64_t a1)
{
  *(a1 + 8) = sub_1C479C8D0();
  result = sub_1C479C924();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C479C8D0()
{
  result = qword_1EC0BCBC8;
  if (!qword_1EC0BCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBC8);
  }

  return result;
}

unint64_t sub_1C479C924()
{
  result = qword_1EC0BCBD0;
  if (!qword_1EC0BCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBD0);
  }

  return result;
}

uint64_t sub_1C479C978(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C479C9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventSender.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C479CAF0()
{
  result = qword_1EC0BCBD8;
  if (!qword_1EC0BCBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBD8);
  }

  return result;
}

unint64_t sub_1C479CB48()
{
  result = qword_1EC0BCBE0;
  if (!qword_1EC0BCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBE0);
  }

  return result;
}

unint64_t sub_1C479CBA0()
{
  result = qword_1EC0BCBE8;
  if (!qword_1EC0BCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCBE8);
  }

  return result;
}

uint64_t sub_1C479CBF4(unint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1C479CC54(v2, a1, a2, &v7);
  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t sub_1C479CC54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v99 = a3;
  v94 = a2;
  v86 = a4;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v84 - v11;
  v13 = sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v89 = sub_1C4F00F28();
  v87 = v13;
  v14 = sub_1C4F00F28();
  if (*(a1 + 16))
  {
    v15 = *(a1 + 16);
    v16 = v99;
    v17 = v94;
  }

  else
  {
    v93 = type metadata accessor for ActivityModelDataSource();
    v18 = *(v6 + 16);
    v19 = v94;
    v18(v12, v94, v5);
    v16 = v99;
    v18(v10, v99, v5);
    v20 = *(a1 + 24);
    v98 = 0;
    memset(v97, 0, sizeof(v97));
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    v21 = v20;
    v22 = sub_1C4F01108();
    LODWORD(v18) = sub_1C44C1028(v22);

    v17 = v19;
    v15 = sub_1C4574C14(v12, v10, v20, v97, v95, v18);
  }

  v23 = sub_1C4575C24(v17, v16);
  v99 = sub_1C4428DA0(v23);
  if (!v99)
  {
LABEL_52:

    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x80000001C4F9A5A0;
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    v80 = sub_1C479D644();
    if (!v80)
    {
      v80 = [objc_opt_self() undefinedFeatureValueWithType_];
    }

    *(inited + 48) = v80;
    *(inited + 56) = 0xD00000000000001DLL;
    *(inited + 64) = 0x80000001C4F8ABF0;
    v81 = sub_1C479D644();
    if (!v81)
    {
      v81 = [objc_opt_self() undefinedFeatureValueWithType_];
    }

    *(inited + 72) = v81;
    v82 = sub_1C4F00F28();

    *v86 = v82;
    return result;
  }

  v24 = 0;
  v94 = v23 & 0xC000000000000001;
  v92 = v23 & 0xFFFFFFFFFFFFFF8;
  v93 = *MEMORY[0x1E6999318];
  v91 = *MEMORY[0x1E6999310];
  v84[0] = v15;
  v90 = v23;
  while (1)
  {
    if (v94)
    {
      v25 = MEMORY[0x1C6940F90](v24, v23);
    }

    else
    {
      if (v24 >= *(v92 + 16))
      {
        goto LABEL_58;
      }

      v25 = *(v23 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v28 = sub_1C4F01138();
    v30 = v29;
    v31 = v26;
    v32 = sub_1C479D6D8(v28, v30, v31);
    if (!v32 || (*&v97[0] = v32, sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) == 0))
    {

      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v51 = sub_1C4F00978();
      sub_1C442B738(v51, qword_1EDDFECB8);
      v52 = sub_1C4F00968();
      v53 = sub_1C4F01CF8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = v53;
        v56 = v52;
        v57 = "Could not get suggested event meta data from event object";
        goto LABEL_33;
      }

LABEL_34:

      goto LABEL_35;
    }

    v33 = *&v95[0];
    v34 = sub_1C4F01138();
    if (!*(v33 + 16))
    {

      goto LABEL_29;
    }

    v36 = sub_1C445FAA8(v34, v35);
    v38 = v37;

    if ((v38 & 1) == 0)
    {

LABEL_28:

      v23 = v90;
LABEL_29:
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v58 = sub_1C4F00978();
      sub_1C442B738(v58, qword_1EDDFECB8);
      v52 = sub_1C4F00968();
      v59 = sub_1C4F01CF8();
      if (os_log_type_enabled(v52, v59))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = v59;
        v56 = v52;
        v57 = "Could not get suggested event meta category from meta data dictionary";
LABEL_33:
        _os_log_impl(&dword_1C43F8000, v56, v55, v57, v54, 2u);
        MEMORY[0x1C6942830](v54, -1, -1);
      }

      goto LABEL_34;
    }

    sub_1C442B870(*(v33 + 56) + 32 * v36, v97);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_28;
    }

    v39 = v95[0];
    v85 = sub_1C4F01EC8();
    v40 = v89;
    swift_isUniquelyReferenced_nonNull_native();
    *&v97[0] = v40;
    v88 = v39;
    v41 = sub_1C445FAA8(v39, *(&v39 + 1));
    if (__OFADD__(*(v40 + 16), (v42 & 1) == 0))
    {
      goto LABEL_59;
    }

    v43 = v41;
    v44 = v42;
    v84[1] = sub_1C456902C(&qword_1EC0BCBF8, &qword_1C4F2A328);
    if (sub_1C4F02458())
    {
      v45 = sub_1C445FAA8(v88, *(&v88 + 1));
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_63;
      }

      v43 = v45;
    }

    v47 = *&v97[0];
    v89 = *&v97[0];
    if (v44)
    {
      v48 = *(*&v97[0] + 56);
      v49 = *(v48 + 8 * v43);
      *(v48 + 8 * v43) = v85;

      v50 = *(&v88 + 1);
    }

    else
    {
      *(*&v97[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v60 = (v47[6] + 16 * v43);
      v50 = *(&v88 + 1);
      *v60 = v88;
      v60[1] = v50;
      *(v47[7] + 8 * v43) = v85;
      v61 = v47[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_61;
      }

      v47[2] = v63;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v64 = [v31 calendar];

    if (v64 && (v65 = [v64 isSuggestedEventCalendar], v64, (v65 & 1) != 0))
    {

      v23 = v90;
    }

    else
    {
      v66 = sub_1C4F01EC8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v97[0] = v14;
      v67 = sub_1C445FAA8(v88, v50);
      v69 = v68;
      if (__OFADD__(v14[2], (v68 & 1) == 0))
      {
        goto LABEL_60;
      }

      v70 = v67;
      if (sub_1C4F02458())
      {
        v71 = sub_1C445FAA8(v88, *(&v88 + 1));
        v23 = v90;
        if ((v69 & 1) != (v72 & 1))
        {
          goto LABEL_63;
        }

        v70 = v71;
      }

      else
      {
        v23 = v90;
      }

      v14 = *&v97[0];
      if (v69)
      {
        v73 = *(*&v97[0] + 56);
        v74 = *(v73 + 8 * v70);
        *(v73 + 8 * v70) = v66;

        v31 = v74;
      }

      else
      {
        *(*&v97[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
        v75 = (v14[6] + 16 * v70);
        v76 = *(&v88 + 1);
        *v75 = v88;
        v75[1] = v76;
        *(v14[7] + 8 * v70) = v66;
        v77 = v14[2];
        v62 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v62)
        {
          goto LABEL_62;
        }

        v14[2] = v78;
      }
    }

LABEL_35:
    ++v24;
    if (v27 == v99)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

id sub_1C479D644()
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v0 = sub_1C4F00EC8();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithStringKeyDictionary_];

  return v1;
}

id sub_1C479D6D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4F01108();

  v5 = [a3 customObjectForKey_];

  return v5;
}

uint64_t sub_1C479D7A4()
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEA48);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1C45C2C2C();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C44FCC6C(319, &qword_1EDDF05D8);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          v1 = type metadata accessor for CalendarItem(319);
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C479D964()
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C45C2C2C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1C44FCC6C(319, qword_1EDDE1BB8);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1C44FCC6C(319, &qword_1EDDFEA48);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1C479DA90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 19))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C479DAE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C479DB4C(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1C479DB84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C479DB4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C479DBB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C479DB60(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C479DD3C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = sub_1C4F00FF8();
  v4 = v3;

  v5 = v2 == 1701736302 && v4 == 0xE400000000000000;
  if (v5 || (sub_1C43FEC00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v2 == 0x746867696C66 && v4 == 0xE600000000000000;
    if (v7 || (sub_1C43FEC00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v2 == 1685024614 && v4 == 0xE400000000000000;
      if (v8 || (sub_1C43FEC00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v2 == 0x6E69617274 && v4 == 0xE500000000000000;
        if (v9 || (sub_1C43FEC00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v2 == 7566690 && v4 == 0xE300000000000000;
          if (v10 || (sub_1C43FEC00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v2 == 1952542562 && v4 == 0xE400000000000000;
            if (v11 || (sub_1C43FEC00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v2 == 0x61746E6572726163 && v4 == 0xEF70756B6369706CLL;
              if (v12 || (sub_1C43FEC00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = v2 == 0xD000000000000010 && 0x80000001C4F9A5E0 == v4;
                if (v13 || (sub_1C43FEC00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = v2 == 0x74656B636974 && v4 == 0xE600000000000000;
                  if (v14 || (sub_1C43FEC00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = v2 == 0x6569766F6DLL && v4 == 0xE500000000000000;
                    if (v15 || (sub_1C43FEC00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = v2 == 0x676E6967646F6CLL && v4 == 0xE700000000000000;
                      if (v16 || (sub_1C43FEC00() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (v2 == 0x6C6169636F73 && v4 == 0xE600000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v18 = sub_1C43FEC00();

                        if (v18)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C479E1C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1C47851D4(a1);
  [a1 isCurrentUser];
  sub_1C4442C70([a1 participantRole]);
  v3 = [a1 participantType];

  sub_1C4442C70(v3);
  return v2;
}

uint64_t sub_1C479E28C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7069636974726170 && a2 == 0xEF656C6F52746E61;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7069636974726170 && a2 == 0xEF65707954746E61)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C479E3FC(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6E65727275437369;
      break;
    case 2:
    case 3:
      result = 0x7069636974726170;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C479E488()
{
  sub_1C43FE96C();
  v13[3] = v1;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0BCCC8, &qword_1C4F2A720);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v13 - v10;
  v12 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C47A2C68();
  sub_1C4F02BF8();
  sub_1C4F02738();
  if (!v0)
  {
    sub_1C440D3E4();
    sub_1C4F027A8();
    sub_1C47A2D64();
    sub_1C440D3E4();
    sub_1C4F027E8();
    sub_1C47A2DB8();
    sub_1C440D3E4();
    sub_1C4F027E8();
  }

  (*(v6 + 8))(v11, v4);
  sub_1C43FBC80();
}

void sub_1C479E64C()
{
  sub_1C43FE96C();
  v1 = v0;
  v2 = sub_1C456902C(&qword_1EC0BCCA8, &qword_1C4F2A718);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = v1[4];
  sub_1C4409678(v1, v1[3]);
  sub_1C47A2C68();
  sub_1C4F02BC8();
  sub_1C440BCD8();
  sub_1C4F02618();
  sub_1C440BCD8();
  sub_1C4F02688();
  sub_1C47A2CBC();
  sub_1C440BCD8();
  sub_1C4F026C8();
  sub_1C47A2D10();
  sub_1C440BCD8();
  sub_1C4F026C8();
  v7 = sub_1C43FD6E4();
  v8(v7);
  sub_1C440962C(v1);
  sub_1C43FBC80();
}

uint64_t sub_1C479E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C479E28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C479E8BC(uint64_t a1)
{
  v2 = sub_1C47A2C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C479E8F8(uint64_t a1)
{
  v2 = sub_1C47A2C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C479E934(uint64_t a1@<X8>)
{
  sub_1C479E64C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 17) = BYTE1(v5);
    *(a1 + 18) = BYTE2(v5);
  }
}

void sub_1C479E978()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16) | (*(v0 + 17) << 8) | (*(v0 + 18) << 16);
  sub_1C479E488();
}

void sub_1C479E9A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - v12;
  *a2 = sub_1C45B4BF8(a1, &selRef_eventIdentifier);
  *(a2 + 8) = v14;
  *(a2 + 16) = [a1 isAllDay];
  v15 = [a1 startDate];
  if (v15)
  {
    v16 = v15;
    sub_1C4EF9C78();

    v17 = sub_1C4EF9CD8();
    v18 = 0;
  }

  else
  {
    v17 = sub_1C4EF9CD8();
    v18 = 1;
  }

  v19 = 1;
  sub_1C440BAA8(v13, v18, 1, v17);
  v20 = type metadata accessor for CalendarItem(0);
  sub_1C45B69E4(v13, a2 + v20[6]);
  v21 = [a1 endDate];
  if (v21)
  {
    v22 = v21;
    sub_1C4EF9C78();

    v19 = 0;
  }

  v23 = sub_1C4EF9CD8();
  sub_1C440BAA8(v10, v19, 1, v23);
  sub_1C45B69E4(v10, a2 + v20[7]);
  v24 = a1;
  v25 = sub_1C45C28F0(v24, &selRef_title);
  if (!v26)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_1C4433340(v25, v26, v20[8]);
  v27 = v24;
  v28 = sub_1C45C28F0(v27, &selRef_location);
  sub_1C4433340(v28, v29, v20[9]);
  v30 = sub_1C479E1C8([v27 organizer]);
  sub_1C4433340(v30, v31, v20[10]);
  *(v33 + 18) = v32;
  *(v33 + 16) = v34;
  v35 = v27;
  v36 = sub_1C45C28F0(v35, &selRef_notes);
  sub_1C4433340(v36, v37, v20[11]);
  *(a2 + v20[12]) = [v35 hasAlarms];
  *(a2 + v20[13]) = [v35 hasRecurrenceRules];
  v38 = [v35 calendar];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 title];

    v39 = sub_1C4F01138();
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = (a2 + v20[14]);
  *v43 = v39;
  v43[1] = v42;
  v44 = v35;
  if (sub_1C47A2E24(v44))
  {
    v45 = sub_1C4428DA0();
  }

  else
  {
    v45 = 0;
  }

  *(a2 + v20[15]) = v45;
  v46 = [v44 calendar];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 isAffectingAvailability];
  }

  else
  {
    v48 = 2;
  }

  *(a2 + v20[16]) = v48;
  v49 = [v44 calendar];
  if (!v49)
  {
    v52 = 2;
    goto LABEL_20;
  }

  v50 = v49;
  v51 = [v49 source];

  if (!v51)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v52 = [v51 supportsLocationDirectorySearches];

LABEL_20:
  *(a2 + v20[17]) = v52;
  v53 = [v44 calendar];

  if (v53)
  {
    v54 = [v53 title];

    v55 = sub_1C4F01138();
    v57 = v56;

    v59[2] = v55;
    v59[3] = v57;
    v59[0] = 1802661751;
    v59[1] = 0xE400000000000000;
    sub_1C4415EA8();
    LOBYTE(v55) = sub_1C4F02018();

    v58 = v55 & 1;
  }

  else
  {

    v58 = 2;
  }

  *(a2 + v20[18]) = v58;
}

uint64_t sub_1C479EE00()
{
  v1 = v0;
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v2 = sub_1C4F00F28();
  v3 = type metadata accessor for CalendarItem(0);
  v4 = *(v0 + v3[15]);
  if ([objc_opt_self() featureValueWithInt64_])
  {
    sub_1C4402288();
    sub_1C440C4DC();
    sub_1C4414A6C();
    sub_1C4660314();
    v2 = v13;
  }

  else
  {
    sub_1C445FAA8(0xD000000000000014, 0x80000001C4F9A600);
    if (v5)
    {
      sub_1C4402288();
      v13 = v2;
      v6 = *(v2 + 24);
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v2 = v13;
      v7 = *(*(v13 + 48) + 16 * v4 + 8);

      v8 = *(*(v13 + 56) + 8 * v4);
      sub_1C4F02478();
    }
  }

  v9 = *(v1 + v3[18]);
  if (v9 != 2)
  {
    sub_1C4A3B8F8(v9 & 1);
    sub_1C4402288();
    sub_1C440C4DC();
    sub_1C4414A6C();
    sub_1C4660314();
    v2 = v13;
  }

  v10 = *(v1 + v3[16]);
  if (v10 != 2)
  {
    sub_1C4A3B8F8(v10 & 1);
    sub_1C4402288();
    sub_1C440C4DC();
    sub_1C4414A6C();
    sub_1C4660314();
    v2 = v13;
  }

  v11 = *(v1 + v3[17]);
  if (v11 != 2)
  {
    sub_1C4A3B8F8(v11 & 1);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C440C4DC();
    sub_1C4660314();
    return v13;
  }

  return v2;
}

uint64_t sub_1C479F058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657A696E6167726FLL && a2 == 0xE900000000000072;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D72616C41736168 && a2 == 0xE900000000000073;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4F9A730 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7261646E656C6163 && a2 == 0xED0000656C746954;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E657474416D756ELL && a2 == 0xEC00000073656564;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4F9A750 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000021 && 0x80000001C4F9A770 == a2;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000019 && 0x80000001C4F9A670 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C4F02938();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C479F4D8(char a1)
{
  result = 0x656449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7961446C6C417369;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x65746144646E65;
      break;
    case 4:
      result = 0x656C746974;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x657A696E6167726FLL;
      break;
    case 7:
      result = 0x7365746F6ELL;
      break;
    case 8:
      result = 0x6D72616C41736168;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7261646E656C6163;
      break;
    case 11:
      result = 0x6E657474416D756ELL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C479F6B0()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0BCC90, &unk_1C4F2A708);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4401780();
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  sub_1C442DF0C();
  sub_1C47A2AF8();
  sub_1C444B100();
  v14 = *v3;
  v15 = v3[1];
  sub_1C440AA84();
  sub_1C4F02738();
  if (!v1)
  {
    v16 = *(v3 + 16);
    sub_1C4406D60(1);
    sub_1C4F027A8();
    v17 = type metadata accessor for CalendarItem(0);
    v18 = v17[6];
    sub_1C4EF9CD8();
    sub_1C44195B8();
    sub_1C47A28A4(v19, v20);
    sub_1C440E244();
    v21 = v17[7];
    sub_1C440E244();
    sub_1C4401774(v17[8]);
    sub_1C440AA84();
    sub_1C4F02798();
    sub_1C4401774(v17[9]);
    sub_1C440AA84();
    sub_1C4F02738();
    v22 = (v3 + v17[10]);
    v29 = *v22;
    v31 = *(v22 + 18);
    v30 = *(v22 + 8);
    sub_1C47A2C14();
    sub_1C4400324();
    sub_1C4F02778();
    sub_1C4401774(v17[11]);
    sub_1C440AA84();
    sub_1C4F02738();
    v23 = *(v3 + v17[12]);
    sub_1C4406D60(8);
    sub_1C4F027A8();
    v24 = *(v3 + v17[13]);
    sub_1C4406D60(9);
    sub_1C4F027A8();
    sub_1C4401774(v17[14]);
    sub_1C440AA84();
    sub_1C4F02738();
    v25 = *(v3 + v17[15]);
    sub_1C4406D60(11);
    sub_1C4F027D8();
    v26 = *(v3 + v17[16]);
    sub_1C4406D60(12);
    sub_1C4F02748();
    v27 = *(v3 + v17[17]);
    sub_1C4406D60(13);
    sub_1C4F02748();
    v28 = *(v3 + v17[18]);
    sub_1C4406D60(14);
    sub_1C4F02748();
  }

  (*(v8 + 8))(v2, v6);
  sub_1C43FBC80();
}

void sub_1C479F9C8()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v64 = sub_1C456902C(&qword_1EC0BCC78, &qword_1C4F2A700);
  sub_1C43FCDF8(v64);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1C4402274();
  v68 = type metadata accessor for CalendarItem(v21);
  v22 = sub_1C43FBCE0(v68);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v65 = v3;
  v66 = (v26 - v25);
  v28 = v3[3];
  v27 = v3[4];
  sub_1C442DF0C();
  sub_1C47A2AF8();
  sub_1C4F02BC8();
  if (v0)
  {
    v67 = v0;
    sub_1C44042F8();
    v30 = v66;
    sub_1C440962C(v65);
    v31 = v68;
    if (v15)
    {
      sub_1C4420C3C(v30 + v68[7], &unk_1EC0B84E0, qword_1C4F0D2D0);
      if ((v1 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    if (v1)
    {
LABEL_5:
      sub_1C44102F0(v31[8]);
    }
  }

  else
  {
    v62 = v5;
    v63 = v17;
    LOBYTE(v69) = 0;
    v29 = sub_1C4F02618();
    v32 = v66;
    *v66 = v29;
    v32[1] = v33;
    sub_1C4411C80(1);
    *(v32 + 16) = sub_1C4F02688() & 1;
    v34 = sub_1C4EF9CD8();
    LOBYTE(v69) = 2;
    sub_1C44195B8();
    v37 = sub_1C47A28A4(v35, v36);
    v67 = v34;
    v61 = v37;
    sub_1C4F02658();
    v38 = v68;
    sub_1C45B69E4(v15, v32 + v68[6]);
    LOBYTE(v69) = 3;
    sub_1C4F02658();
    sub_1C45B69E4(v12, v32 + v38[7]);
    sub_1C4411C80(4);
    v39 = sub_1C4F02678();
    sub_1C4433340(v39, v40, v38[8]);
    sub_1C4411C80(5);
    v41 = sub_1C4F02618();
    sub_1C4433340(v41, v42, v38[9]);
    sub_1C47A2B60();
    sub_1C4F02658();
    v43 = v70;
    v44 = v71;
    v45 = v32 + v38[10];
    *v45 = v69;
    v45[18] = v44;
    *(v45 + 8) = v43;
    sub_1C4411C80(7);
    v46 = sub_1C4F02618();
    sub_1C4433340(v46, v47, v38[11]);
    sub_1C4411C80(8);
    v48 = sub_1C4F02688();
    v67 = 0;
    *(v32 + v68[12]) = v48 & 1;
    sub_1C4411C80(9);
    v49 = sub_1C4F02688();
    v67 = 0;
    *(v66 + v68[13]) = v49 & 1;
    sub_1C43FD6D0(10);
    v50 = sub_1C4F02618();
    v67 = 0;
    v51 = (v66 + v68[14]);
    *v51 = v50;
    v51[1] = v52;
    sub_1C43FD6D0(11);
    v53 = sub_1C4F026B8();
    v67 = 0;
    *(v66 + v68[15]) = v53;
    sub_1C43FD6D0(12);
    v54 = sub_1C4F02628();
    v67 = 0;
    *(v66 + v68[16]) = v54;
    sub_1C43FD6D0(13);
    v55 = sub_1C4F02628();
    v67 = 0;
    *(v66 + v68[17]) = v55;
    sub_1C43FD6D0(14);
    v56 = sub_1C4F02628();
    v67 = 0;
    LOBYTE(v34) = v56;
    v57 = sub_1C4409C54();
    v58(v57);
    v59 = v66;
    *(v66 + v68[18]) = v34;
    sub_1C47A2BB4(v59, v62, type metadata accessor for CalendarItem);
    sub_1C440962C(v65);
    sub_1C4425ADC();
    sub_1C47A2950(v59, v60);
  }

LABEL_8:
  sub_1C43FBC80();
}

uint64_t sub_1C47A00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C479F058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47A00F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46167CC();
  *a1 = result;
  return result;
}

uint64_t sub_1C47A0120(uint64_t a1)
{
  v2 = sub_1C47A2AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47A015C(uint64_t a1)
{
  v2 = sub_1C47A2AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C47A01D0()
{
  result = qword_1EC0BCC00;
  if (!qword_1EC0BCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC00);
  }

  return result;
}

unint64_t sub_1C47A0228()
{
  result = qword_1EC0BCC08;
  if (!qword_1EC0BCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC08);
  }

  return result;
}

void sub_1C47A027C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v73 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v73 - v15;
  *a2 = sub_1C45B4BF8(a1, &selRef_eventIdentifier);
  *(a2 + 8) = v17;
  *(a2 + 16) = [a1 isAllDay];
  v18 = [a1 startDate];
  if (v18)
  {
    v19 = v18;
    sub_1C4EF9C78();

    v20 = sub_1C4EF9CD8();
    v21 = 0;
  }

  else
  {
    v20 = sub_1C4EF9CD8();
    v21 = 1;
  }

  v22 = 1;
  sub_1C440BAA8(v16, v21, 1, v20);
  v23 = type metadata accessor for EventFoundInAppsContent(0);
  sub_1C45B69E4(v16, a2 + v23[6]);
  v24 = [a1 endDate];
  if (v24)
  {
    v25 = v24;
    sub_1C4EF9C78();

    v22 = 0;
  }

  v26 = sub_1C4EF9CD8();
  sub_1C440BAA8(v14, v22, 1, v26);
  sub_1C45B69E4(v14, a2 + v23[7]);
  v27 = [a1 structuredLocation];
  if (v27)
  {
    v27 = sub_1C45C28F0(v27, &selRef_title);
  }

  else
  {
    v28 = 0;
  }

  sub_1C4433340(v27, v28, v23[8]);
  v29 = [a1 structuredLocation];
  v30 = 0;
  if (v29 && (v31 = v29, v32 = [v29 geoLocation], v31, v32))
  {
    [v32 coordinate];
    v34 = v33;

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = 0;
  }

  v36 = a2 + v23[9];
  *v36 = v34;
  *(v36 + 8) = v35;
  v37 = [a1 structuredLocation];
  if (v37 && (v38 = v37, v39 = [v37 geoLocation], v38, v39))
  {
    [v39 coordinate];
    v30 = v40;

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = a2 + v23[10];
  *v42 = v30;
  *(v42 + 8) = v41;
  v43 = [a1 organizer];
  if (v43)
  {
    v43 = sub_1C45C28F0(v43, &selRef_name);
  }

  else
  {
    v44 = 0;
  }

  sub_1C4433340(v43, v44, v23[11]);
  v45 = sub_1C479DB4C([a1 availability]);
  if (v45 == 5)
  {
    v46 = 4;
  }

  else
  {
    v46 = v45;
  }

  *(a2 + v23[12]) = v46;
  v47 = sub_1C45AD7A4([a1 status]);
  if (v47 == 4)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  *(a2 + v23[13]) = v48;
  *(a2 + v23[14]) = [a1 isDetached];
  v49 = [a1 occurrenceDate];
  if (v49)
  {
    v50 = v49;
    sub_1C4EF9C78();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  sub_1C440BAA8(v10, v51, 1, v26);
  sub_1C45B69E4(v10, a2 + v23[15]);
  v52 = sub_1C45B4BF8(a1, &selRef_birthdayContactIdentifier);
  sub_1C4433340(v52, v53, v23[16]);
  v54 = *MEMORY[0x1E6999318];
  v55 = sub_1C4F01138();
  v57 = v56;
  v58 = a1;
  v59 = sub_1C479D6D8(v55, v57, v58);
  if (v59 && (v74[0] = v59, sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) != 0))
  {
    v60 = v73[0];
    v61 = *MEMORY[0x1E6999310];
    v62 = sub_1C4F01138();
    sub_1C465C4B8(v62, v63, v60);

    if (v74[3])
    {
      v64 = swift_dynamicCast();
      v65 = v73[0];
      v66 = v73[1];
      if (!v64)
      {
        v65 = 0;
        v66 = 0;
      }
    }

    else
    {
      sub_1C4420C3C(v74, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      v65 = 0;
      v66 = 0;
    }

    v68 = (a2 + v23[17]);
    *v68 = v65;
    v68[1] = v66;
  }

  else
  {
    v67 = (a2 + v23[17]);
    *v67 = 0;
    v67[1] = 0;
  }

  v69 = v23[18];
  v70 = v58;
  sub_1C479E9A8(v70, a2 + v69);
  v71 = [v70 calendar];

  if (v71)
  {
    v72 = [v71 isSuggestedEventCalendar];
  }

  else
  {
    v72 = 0;
  }

  *(a2 + v23[19]) = v72;
}

uint64_t sub_1C47A0814()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C4F9A5C0;
  v2 = (v0 + *(type metadata accessor for EventFoundInAppsContent(0) + 68));
  v3 = *v2;
  v4 = v2[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  LOBYTE(v3) = sub_1C479DD3C(v3, v4);
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  return sub_1C4F00F28();
}

uint64_t sub_1C47A0914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7961446C6C61 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C4F9A690 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001ALL && 0x80000001C4F9A6B0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x80000001C4F9A6D0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x657A696E6167726FLL && a2 == 0xED0000656D614E72;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6863617465447369 && a2 == 0xEA00000000006465;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6572727563636FLL && a2 == 0xEE00657461446563;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001C4F9A6F0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x746143746E657665 && a2 == 0xED000079726F6765;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7261646E656C6163 && a2 == 0xEC0000006D657449;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000011 && 0x80000001C4F9A710 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C4F02938();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47A0E08(char a1)
{
  result = 0x656449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x7961446C6C61;
      break;
    case 2:
      v3 = 0x447472617473;
      goto LABEL_14;
    case 3:
      result = 0x65746144646E65;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0x657A696E6167726FLL;
      break;
    case 8:
      result = 0x6962616C69617661;
      break;
    case 9:
      result = 0x737574617473;
      break;
    case 10:
      result = 0x6863617465447369;
      break;
    case 11:
      result = 0x6E6572727563636FLL;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      v3 = 0x43746E657665;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 14:
      result = 0x7261646E656C6163;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C47A1010()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0BCC40, &unk_1C4F2A6F0);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4401780();
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  sub_1C442DF0C();
  sub_1C47A27A8();
  sub_1C444B100();
  v14 = *v3;
  v15 = v3[1];
  sub_1C440AA84();
  sub_1C4F02738();
  if (!v1)
  {
    v16 = *(v3 + 16);
    sub_1C441599C(1);
    sub_1C4400324();
    sub_1C4F02748();
    v17 = type metadata accessor for EventFoundInAppsContent(0);
    v18 = v17[6];
    sub_1C4EF9CD8();
    sub_1C44195B8();
    sub_1C47A28A4(v19, v20);
    sub_1C440E244();
    v21 = v17[7];
    sub_1C440E244();
    sub_1C4401774(v17[8]);
    sub_1C442C9DC(4);
    sub_1C4F02738();
    v22 = (v3 + v17[9]);
    v23 = *v22;
    v24 = *(v22 + 8);
    sub_1C442C9DC(5);
    sub_1C4F02758();
    v25 = (v3 + v17[10]);
    v26 = *v25;
    v27 = *(v25 + 8);
    sub_1C442C9DC(6);
    sub_1C4F02758();
    sub_1C4401774(v17[11]);
    sub_1C442C9DC(7);
    sub_1C4F02738();
    v34 = *(v3 + v17[12]);
    sub_1C47A29A8();
    sub_1C4400324();
    sub_1C4F027E8();
    v35 = *(v3 + v17[13]);
    sub_1C47A29FC();
    sub_1C4400324();
    sub_1C4F027E8();
    v28 = *(v3 + v17[14]);
    sub_1C441599C(10);
    sub_1C4400324();
    sub_1C4F02748();
    v29 = v17[15];
    sub_1C440E244();
    sub_1C4401774(v17[16]);
    sub_1C442C9DC(12);
    sub_1C4F02738();
    sub_1C4401774(v17[17]);
    sub_1C442C9DC(13);
    sub_1C4F02738();
    v30 = v17[18];
    type metadata accessor for CalendarItem(0);
    sub_1C442FD38();
    sub_1C47A28A4(v31, v32);
    sub_1C4F027E8();
    v33 = *(v3 + v17[19]);
    sub_1C441599C(15);
    sub_1C4400324();
    sub_1C4F027A8();
  }

  (*(v8 + 8))(v2, v6);
  sub_1C43FBC80();
}

void sub_1C47A1394()
{
  sub_1C43FE96C();
  v97 = v0;
  v3 = v2;
  v91 = v4;
  v5 = type metadata accessor for CalendarItem(0);
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v18 = v16 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v89 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v89 - v23;
  v94 = sub_1C456902C(&qword_1EC0BCC10, &qword_1C4F2A6E8);
  sub_1C43FCDF8(v94);
  v92 = v25;
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v29 = sub_1C4402274();
  v99 = type metadata accessor for EventFoundInAppsContent(v29);
  v30 = sub_1C43FBCE0(v99);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v98 = (v34 - v33);
  v36 = v3[3];
  v35 = v3[4];
  v96 = v3;
  sub_1C442DF0C();
  sub_1C47A27A8();
  v93 = v1;
  v37 = v97;
  sub_1C4F02BC8();
  if (v37)
  {
    sub_1C44042F8();
    v40 = 0;
    v41 = v98;
    v42 = v99;
    v97 = v37;
    sub_1C440962C(v96);
    v44 = 0;
    v45 = 0;
    LODWORD(v95) = 0;
    v46 = 0;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v38 = v24;
    LODWORD(v1) = v22;
    v97 = v18;
    v89[1] = v5;
    v90 = v11;
    v39 = sub_1C4F02618();
    v51 = v98;
    *v98 = v39;
    v51[1] = v52;
    sub_1C4413124(1);
    v53 = sub_1C4F02628();
    v54 = v99;
    *(v51 + 16) = v53;
    v55 = sub_1C4EF9CD8();
    sub_1C44195B8();
    v58 = sub_1C47A28A4(v56, v57);
    sub_1C441C22C();
    sub_1C45B69E4(v38, v51 + v54[6]);
    sub_1C441599C(3);
    sub_1C441C22C();
    v95 = v58;
    sub_1C45B69E4(v22, v51 + v54[7]);
    sub_1C4413124(4);
    v59 = sub_1C4F02618();
    sub_1C4433340(v59, v60, v54[8]);
    sub_1C4413124(5);
    v61 = sub_1C4F02638();
    sub_1C447F048(v61, v62, v54[9]);
    sub_1C4413124(6);
    v63 = sub_1C4F02638();
    sub_1C447F048(v63, v64, v54[10]);
    sub_1C4413124(7);
    v65 = sub_1C4F02618();
    sub_1C4433340(v65, v66, v54[11]);
    sub_1C47A27FC();
    sub_1C440BCB4();
    *(v51 + v54[12]) = 2;
    sub_1C47A2850();
    sub_1C440BCB4();
    *(v98 + v99[13]) = 2;
    sub_1C443500C(10);
    *(v98 + v99[14]) = sub_1C4F02628();
    sub_1C441599C(11);
    sub_1C4F02658();
    sub_1C45B69E4(v97, v98 + v99[15]);
    sub_1C443500C(12);
    v67 = sub_1C4F02618();
    LODWORD(v95) = 1;
    v97 = 0;
    v69 = (v98 + v99[16]);
    *v69 = v67;
    v69[1] = v68;
    sub_1C443500C(13);
    v70 = v97;
    v71 = sub_1C4F02618();
    v97 = v70;
    if (v70)
    {
      v73 = sub_1C4410C00();
      v74(v73);
      v45 = 0;
      v44 = 0;
    }

    else
    {
      v75 = (v98 + v99[17]);
      *v75 = v71;
      v75[1] = v72;
      sub_1C442FD38();
      sub_1C47A28A4(v76, v77);
      v78 = v97;
      sub_1C4F026C8();
      v97 = v78;
      if (v78)
      {
        v79 = sub_1C4410C00();
        v80(v79);
        v44 = 0;
        v45 = 1;
      }

      else
      {
        sub_1C47A28EC(v90, v98 + v99[18]);
        sub_1C443500C(15);
        v81 = v97;
        v82 = sub_1C4F02688();
        v97 = v81;
        if (!v81)
        {
          v85 = v82;
          v86 = sub_1C4410C00();
          v87(v86);
          v88 = v98;
          *(v98 + v99[19]) = v85 & 1;
          sub_1C47A2BB4(v88, v91, type metadata accessor for EventFoundInAppsContent);
          sub_1C440962C(v96);
          v48 = type metadata accessor for EventFoundInAppsContent;
          v50 = v88;
          goto LABEL_20;
        }

        v83 = sub_1C4410C00();
        v84(v83);
        v45 = 1;
        v44 = 1;
      }
    }

    sub_1C440962C(v96);
    sub_1C43FC290();
    v40 = 1;
    v46 = 1;
    v41 = v98;
    v42 = v99;
    v43 = v98[1];

    sub_1C4420C3C(v41 + v42[6], &unk_1EC0B84E0, qword_1C4F0D2D0);
    if ((v55 & 1) == 0)
    {
LABEL_5:
      if (v1)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  sub_1C4420C3C(v41 + v42[7], &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v1)
  {
LABEL_6:
    sub_1C44102F0(v42[8]);
    if ((v40 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if (!v40)
  {
LABEL_7:
    if (v46)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_1C44102F0(v42[11]);
  if (v46)
  {
LABEL_8:
    sub_1C4420C3C(v41 + v42[15], &unk_1EC0B84E0, qword_1C4F0D2D0);
    if ((v95 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (!v95)
  {
LABEL_9:
    if (v45)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_1C44102F0(v42[16]);
  if (v45)
  {
LABEL_10:
    sub_1C44102F0(v42[17]);
    if ((v44 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v44)
  {
LABEL_19:
    v47 = v42[18];
    sub_1C4425ADC();
    v50 = v41 + v49;
LABEL_20:
    sub_1C47A2950(v50, v48);
  }

LABEL_21:
  sub_1C43FBC80();
}

uint64_t sub_1C47A1B48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47A1B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47A0914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47A1BC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C47A0E00();
  *a1 = result;
  return result;
}

uint64_t sub_1C47A1BEC(uint64_t a1)
{
  v2 = sub_1C47A27A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47A1C28(uint64_t a1)
{
  v2 = sub_1C47A27A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47A1CB4()
{
  v1 = sub_1C456902C(&unk_1EC0BCD18, &qword_1C4F2A760);
  sub_1C43FCDF8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4401780();
  sub_1C4461BB8(0, &unk_1EDDF0390, 0x1E6966A08);
  (*(v3 + 104))(v0, *MEMORY[0x1E69E8650], v1);
  return sub_1C4F018F8();
}

uint64_t sub_1C47A1DC8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1C47A2EA4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4575BB0;
  aBlock[3] = &unk_1F43EBA78;
  v13 = _Block_copy(aBlock);

  [a2 enumerateEventsMatchingPredicate:a3 usingBlock:v13];
  _Block_release(v13);
  return sub_1C4F018E8();
}

void sub_1C47A1F88(void *a1, _BYTE *a2)
{
  v4 = sub_1C456902C(&unk_1EC0BCD30, &qword_1C4F2A770);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  if (*a2 == 1)
  {
    sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
    sub_1C4F018E8();
  }

  v16 = [a1 startDate];
  if (!v16)
  {
    v26 = sub_1C4EF9CD8();
    sub_1C440BAA8(v15, 1, 1, v26);
    v27 = v15;
LABEL_15:
    sub_1C4420C3C(v27, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return;
  }

  v17 = v16;
  sub_1C4EF9C78();

  v18 = sub_1C4EF9CD8();
  sub_1C440BAA8(v15, 0, 1, v18);
  sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v19 = [a1 endDate];
  if (!v19)
  {
    sub_1C440BAA8(v13, 1, 1, v18);
    v27 = v13;
    goto LABEL_15;
  }

  v20 = v19;
  sub_1C4EF9C78();

  sub_1C440BAA8(v13, 0, 1, v18);
  sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v21 = *MEMORY[0x1E6999318];
  v22 = sub_1C4F01138();
  v24 = sub_1C479D6D8(v22, v23, a1);
  if (v24 && (v33 = v24, sub_1C456902C(&unk_1EC0BCD00, &unk_1C4F0CE00), sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00), (swift_dynamicCast() & 1) != 0))
  {

    v33 = a1;
    v25 = a1;
    sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
    sub_1C4F018D8();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDDFECB8);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CF8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "Event did not originate from suggested event", v31, 2u);
      MEMORY[0x1C6942830](v31, -1, -1);
    }
  }
}

void sub_1C47A236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v25 = v24;
  v26 = sub_1C456902C(&unk_1EC0BCCE0, &unk_1C4F2A728);
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBD08();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = *(v20 + 24);
  v39 = sub_1C4EF9BF8();
  v40 = v25 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  v41 = sub_1C4EF9BF8();
  v42 = [v38 predicateForEventsWithStartDate:v39 endDate:v41 calendars:0];

  sub_1C47A1CB4();
  (*(v29 + 16))(v34, v37, v26);
  sub_1C456902C(&unk_1EC0BCCF0, qword_1C4F2A740);
  sub_1C4401CBC(&unk_1EDDDBB98, &unk_1EC0BCCE0, &unk_1C4F2A728);
  sub_1C4F02448();

  (*(v29 + 8))(v37, v26);
  sub_1C43FBC80();
}

uint64_t sub_1C47A2564(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v4 = sub_1C4EF9CD8();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[6] = v7;
  v2[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C47A2638, 0, 0);
}

id sub_1C47A2638()
{
  result = [*(v0 + 56) startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1C4EF9C78();

  result = [v4 endDate];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  sub_1C4EF9C78();

  v12 = sub_1C456902C(&unk_1EC0BCCF0, qword_1C4F2A740);
  sub_1C47A027C(v7, v11 + *(v12 + 32));
  v13 = *(v9 + 32);
  v13(v11, v6, v10);
  v13(v11 + *(v12 + 28), v8, v10);

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_1C47A27A8()
{
  result = qword_1EC0BCC18;
  if (!qword_1EC0BCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC18);
  }

  return result;
}

unint64_t sub_1C47A27FC()
{
  result = qword_1EC0BCC28;
  if (!qword_1EC0BCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC28);
  }

  return result;
}

unint64_t sub_1C47A2850()
{
  result = qword_1EC0BCC30;
  if (!qword_1EC0BCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC30);
  }

  return result;
}

uint64_t sub_1C47A28A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C47A28EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47A2950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C47A29A8()
{
  result = qword_1EC0BCC50;
  if (!qword_1EC0BCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC50);
  }

  return result;
}

unint64_t sub_1C47A29FC()
{
  result = qword_1EC0BCC58;
  if (!qword_1EC0BCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC58);
  }

  return result;
}

unint64_t sub_1C47A2A50()
{
  result = qword_1EC0BCC68;
  if (!qword_1EC0BCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC68);
  }

  return result;
}

unint64_t sub_1C47A2AA4()
{
  result = qword_1EC0BCC70;
  if (!qword_1EC0BCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC70);
  }

  return result;
}

unint64_t sub_1C47A2AF8()
{
  result = qword_1EC0BCC80;
  if (!qword_1EC0BCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC80);
  }

  return result;
}

uint64_t sub_1C47A2B4C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1C47A2B60()
{
  result = qword_1EC0BCC88;
  if (!qword_1EC0BCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC88);
  }

  return result;
}

uint64_t sub_1C47A2BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C47A2C14()
{
  result = qword_1EC0BCC98;
  if (!qword_1EC0BCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCC98);
  }

  return result;
}

unint64_t sub_1C47A2C68()
{
  result = qword_1EC0BCCB0;
  if (!qword_1EC0BCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCB0);
  }

  return result;
}

unint64_t sub_1C47A2CBC()
{
  result = qword_1EC0BCCB8;
  if (!qword_1EC0BCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCB8);
  }

  return result;
}

unint64_t sub_1C47A2D10()
{
  result = qword_1EC0BCCC0;
  if (!qword_1EC0BCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCC0);
  }

  return result;
}

unint64_t sub_1C47A2D64()
{
  result = qword_1EC0BCCD0;
  if (!qword_1EC0BCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCD0);
  }

  return result;
}

unint64_t sub_1C47A2DB8()
{
  result = qword_1EC0BCCD8;
  if (!qword_1EC0BCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCCD8);
  }

  return result;
}

uint64_t sub_1C47A2E24(void *a1)
{
  v2 = [a1 attendees];

  if (!v2)
  {
    return 0;
  }

  sub_1C4461BB8(0, &unk_1EDDDBAF0, 0x1E6966A80);
  v3 = sub_1C4F01678();

  return v3;
}

void sub_1C47A2EA4(void *a1, _BYTE *a2)
{
  v4 = sub_1C456902C(&qword_1EC0BCD28, &qword_1C4F2A768);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 80);

  sub_1C47A1F88(a1, a2);
}

_BYTE *sub_1C47A2F2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EventFoundInAppsContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C47A3258(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C47A3338()
{
  result = qword_1EC0BCD48;
  if (!qword_1EC0BCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD48);
  }

  return result;
}

unint64_t sub_1C47A3390()
{
  result = qword_1EC0BCD50;
  if (!qword_1EC0BCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD50);
  }

  return result;
}

unint64_t sub_1C47A33E8()
{
  result = qword_1EC0BCD58;
  if (!qword_1EC0BCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD58);
  }

  return result;
}

unint64_t sub_1C47A3440()
{
  result = qword_1EC0BCD60;
  if (!qword_1EC0BCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD60);
  }

  return result;
}

unint64_t sub_1C47A3498()
{
  result = qword_1EC0BCD68;
  if (!qword_1EC0BCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD68);
  }

  return result;
}

unint64_t sub_1C47A34F0()
{
  result = qword_1EC0BCD70;
  if (!qword_1EC0BCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD70);
  }

  return result;
}

unint64_t sub_1C47A3548()
{
  result = qword_1EC0BCD78;
  if (!qword_1EC0BCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD78);
  }

  return result;
}

unint64_t sub_1C47A35A0()
{
  result = qword_1EC0BCD80;
  if (!qword_1EC0BCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD80);
  }

  return result;
}

unint64_t sub_1C47A35F8()
{
  result = qword_1EC0BCD88;
  if (!qword_1EC0BCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD88);
  }

  return result;
}

unint64_t sub_1C47A3650()
{
  result = qword_1EC0BCD90;
  if (!qword_1EC0BCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD90);
  }

  return result;
}

unint64_t sub_1C47A36A8()
{
  result = qword_1EC0BCD98;
  if (!qword_1EC0BCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCD98);
  }

  return result;
}

unint64_t sub_1C47A36FC()
{
  result = qword_1EC0BCDA0;
  if (!qword_1EC0BCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCDA0);
  }

  return result;
}

unint64_t sub_1C47A3750()
{
  result = qword_1EC0BCDA8;
  if (!qword_1EC0BCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BCDA8);
  }

  return result;
}

uint64_t sub_1C47A37BC()
{
  sub_1C45C8228();

  return swift_deallocClassInstance();
}

uint64_t sub_1C47A3814@<X0>(int a1@<W8>)
{
  v4 = sub_1C4440988();
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4402FE0();
  v9 = type metadata accessor for EventStreamsDataCollection(v8);
  sub_1C4460108(v1 + *(v9 + 32), v2, &qword_1EC0BCF68, &qword_1C4F2C1A0);
  v10 = type metadata accessor for EventStreamsEvent(0);
  sub_1C440A6F0(v2);
  if (v11)
  {
    sub_1C4F00318();
    v12 = *(v10 + 20);
    if (qword_1EDDEF908 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v2, &qword_1EC0BCF68, &qword_1C4F2C1A0);
    }
  }

  else
  {
    sub_1C4410C10();
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A3930()
{
  v1 = sub_1C4403FC0();
  v2 = type metadata accessor for EventStreamsDataCollection(v1);
  sub_1C4420C3C(v0 + *(v2 + 32), &qword_1EC0BCF68, &qword_1C4F2C1A0);
  sub_1C4410C10();
  sub_1C44022A0();
  sub_1C47C0140();
  type metadata accessor for EventStreamsEvent(0);
  v3 = sub_1C4410B98();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t sub_1C47A39A0@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for EventStreamsDataCollection(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v2[8];
  type metadata accessor for EventStreamsEvent(0);
  sub_1C43FCF64();
  result = sub_1C440BAA8(v7, v8, v9, v10);
  v12 = a1 + v2[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t sub_1C47A3A34()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C4410328(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BD030, &unk_1C4F2C270);
  }

  return result;
}

uint64_t sub_1C47A3B14()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BD030, &unk_1C4F2C270);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.MotionState(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A3BF0()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C4410328(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BD020, &qword_1C4F2C260);
  }

  return result;
}

uint64_t sub_1C47A3CD0(uint64_t (*a1)(void))
{
  sub_1C4F00318();
  v2 = a1(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v4);
  v8 = *(v2 + 24);
  sub_1C43FCF64();

  return sub_1C440BAA8(v9, v10, v11, v4);
}

uint64_t sub_1C47A3D50()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BD020, &qword_1C4F2C260);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.InferredMode(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A3E4C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A3F40()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4034()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4128()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A421C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A42F0@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6A38 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0BD010, &unk_1C4F2C248);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A4420()
{
  sub_1C4405A6C();
  v4 = v3;
  sub_1C4F00318();
  v5 = *(v2(0) + 20);
  if (*v1 != -1)
  {
    swift_once();
  }

  *(v4 + v5) = *v0;
}

uint64_t sub_1C47A44A0()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BD010, &unk_1C4F2C248);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.LocationVisit(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A459C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4670()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C4410328(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCFF0, &qword_1C4F2C228);
  }

  return result;
}

uint64_t sub_1C47A4750()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BCFF0, &qword_1C4F2C228);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.VirtualInteractions(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A484C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4920()
{
  v1 = sub_1C4440988();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C44042B0();
  sub_1C4410328(v5);
  sub_1C43FC2BC();
  sub_1C4410308();
  type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C4400334();
  if (!v6)
  {
    return sub_1C4418410();
  }

  sub_1C4F00318();
  v7 = sub_1C4401790();
  result = sub_1C441F900(v7);
  if (!v6)
  {
    return sub_1C4420C3C(v0, &qword_1EC0BCFE0, &qword_1C4F2C218);
  }

  return result;
}

uint64_t sub_1C47A4A00()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BCFE0, &qword_1C4F2C218);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.NowPlayingState(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4ADC@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6AA8 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0BCFD0, &qword_1C4F2C208);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A4C0C()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BCFD0, &qword_1C4F2C208);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.AmbientLight(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4CE8@<X0>(int a1@<W8>)
{
  v2 = sub_1C4440988();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_1C44089E8();
  sub_1C43FC2BC();
  sub_1C4414A7C();
  v8 = type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C440A6F0(v7);
  if (v9)
  {
    sub_1C4F00318();
    v10 = *(v8 + 20);
    if (qword_1EC0B6A20 != -1)
    {
      swift_once();
    }

    result = sub_1C440E1D8();
    if (a1 != 1)
    {
      return sub_1C4420C3C(v7, &qword_1EC0BCFC0, &qword_1C4F2C1F8);
    }
  }

  else
  {
    sub_1C43FD024();
    return sub_1C47C0140();
  }

  return result;
}

uint64_t sub_1C47A4E18()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BCFC0, &qword_1C4F2C1F8);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C441EB9C();
  v11 = type metadata accessor for EventStreamsEvent.Wallet(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}

uint64_t sub_1C47A4F14()
{
  sub_1C44159A8();
  v2 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = sub_1C447F05C(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    sub_1C4425AF4();
    v9 = sub_1C43FD6F4();
    v10 = sub_1C47A8B9C(v9);
    sub_1C44222F4(v10);
  }

  sub_1C44195D0();
  sub_1C4404C28();
  sub_1C47C0140();
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C440CBF4(v11);
  sub_1C43FC29C();
  v12 = sub_1C44022A0();
  sub_1C44408D4(v12, v13, v14, v15);
  return swift_endAccess();
}