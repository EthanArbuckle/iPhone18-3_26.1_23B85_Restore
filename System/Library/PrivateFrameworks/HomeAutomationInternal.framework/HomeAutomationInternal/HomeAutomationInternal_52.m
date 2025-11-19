uint64_t sub_252CFD198(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v545 = v3;
  v5 = v4;
  v549 = v6;
  v529 = v7;
  v527 = v8;
  v547 = v2;
  v511 = v9;
  v10 = sub_252E34874();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v537 = (&v508 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v512 = &v508 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v513 = &v508 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v514 = &v508 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v515 = &v508 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v516 = &v508 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v517 = &v508 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v518 = &v508 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v508 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v508 - v33;
  v35 = sub_252E34804();
  v542 = *(v35 - 8);
  v36 = *(v542 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v539 = &v508 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  *&v538 = &v508 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v546 = &v508 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v531 = &v508 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v540 = (&v508 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v508 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v532 = &v508 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v543 = (&v508 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v508 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v520 = &v508 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v525 = &v508 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v521 = &v508 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v522 = &v508 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v523 = &v508 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  *&v524 = &v508 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v510 = &v508 - v70;
  MEMORY[0x28223BE20](v69);
  v541 = &v508 - v71;
  memcpy(v607, v1, sizeof(v607));
  v548 = v1;
  memcpy(v563, v1, sizeof(v563));
  sub_2529353AC(v607, v608);
  sub_252CF5B00(v549, v562);
  memcpy(v608, v563, 0x1F8uLL);
  sub_252935408(v608);
  v72 = v562[0];
  v549 = v35;
  v530 = v10;
  v544 = v5;
  v509 = v56;
  v519 = v32;
  if (v562[0] != 21 && !sub_2529A6F34(v562[0], v607[11]))
  {
    v79 = v5[11];
    v73 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_2529F82D8(0, *(v79 + 2) + 1, 1, v79);
    }

    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_2529F82D8((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v79[v81 + 32] = v72;
    v5[11] = v79;
    goto LABEL_12;
  }

  v73 = v11;
  memcpy(v562, v548, sizeof(v562));
  memcpy(v561, v548, sizeof(v561));
  sub_2529353AC(v562, v560);
  sub_252D01354(v547, v34);
  memcpy(v563, v561, sizeof(v563));
  sub_252935408(v563);
  v74 = v542;
  if ((*(v542 + 48))(v34, 1, v35) == 1)
  {
    sub_25293847C(v34, &qword_27F541D70, &unk_252E5B5A0);
    v75 = v547;
LABEL_13:
    v82 = v73;
    goto LABEL_14;
  }

  v76 = v541;
  (*(v74 + 32))(v541, v34, v35);
  v77._countAndFlagsBits = sub_252E347E4();
  PlaceHintSemantic.init(rawValue:)(v77);
  v78 = v561[0];
  if (v561[0] == 21)
  {
    (*(v74 + 8))(v76, v35);
LABEL_12:
    v75 = v547;
    v10 = v530;
    goto LABEL_13;
  }

  v99 = v5[11];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v99 = sub_2529F82D8(0, *(v99 + 2) + 1, 1, v99);
  }

  v82 = v73;
  v101 = *(v99 + 2);
  v100 = *(v99 + 3);
  if (v101 >= v100 >> 1)
  {
    v99 = sub_2529F82D8((v100 > 1), v101 + 1, 1, v99);
  }

  *(v99 + 2) = v101 + 1;
  v99[v101 + 32] = v78;
  v5[11] = v99;
  if ((v545 & 1) == 0)
  {
    goto LABEL_41;
  }

  v35 = v549;
  (*(v542 + 8))(v76);
LABEL_33:
  v75 = v547;
  v10 = v530;
LABEL_14:
  v83 = v537;
LABEL_15:
  memcpy(v563, v548, sizeof(v563));
  v84 = *MEMORY[0x277D5E508];
  *&v536 = v82[13];
  (v536)(v83, v84, v10);
  v85 = v519;
  sub_252D02F3C(v75, v83, v519);
  v535 = v82[1];
  (v535)(v83, v10);
  v86 = v542;
  v533 = *(v542 + 48);
  v534 = v542 + 48;
  v87 = v533(v85, 1, v35);
  v5 = v544;
  v541 = v49;
  v526 = (v82 + 1);
  v528 = (v82 + 13);
  if (v87 != 1)
  {
    v76 = v510;
    (*(v86 + 32))();
    v88 = sub_252E347E4();
    v90 = v89;
    v91 = v5[6];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_413;
    }

    goto LABEL_18;
  }

  sub_25293847C(v85, &qword_27F541D70, &unk_252E5B5A0);
  while (1)
  {
    memcpy(v563, v548, sizeof(v563));
    v120 = v537;
    (v536)(v537, *MEMORY[0x277D5E528], v10);
    v121 = v518;
    sub_252D02F3C(v75, v120, v518);
    (v535)(v120, v10);
    if (v533(v121, 1, v35) == 1)
    {
      sub_25293847C(v121, &qword_27F541D70, &unk_252E5B5A0);
      v122 = v544;
      v123 = v537;
      goto LABEL_77;
    }

    v124 = v121;
    v125 = v35;
    (*(v542 + 32))(v524, v124, v35);
    v126 = sub_252E347E4();
    v128 = v127;
    v129 = v544;
    v130 = v544[13];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_2529F7A80(0, *(v130 + 2) + 1, 1, v130);
    }

    v123 = v537;
    v132 = *(v130 + 2);
    v131 = *(v130 + 3);
    if (v132 >= v131 >> 1)
    {
      v130 = sub_2529F7A80((v131 > 1), v132 + 1, 1, v130);
    }

    *(v130 + 2) = v132 + 1;
    v133 = &v130[16 * v132];
    *(v133 + 4) = v126;
    *(v133 + 5) = v128;
    v129[13] = v130;
    v75 = v547;
    v134 = v524;
    v35 = v125;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v75, v134, &v572);
      memcpy(v563, v561, sizeof(v563));
      result = sub_252935408(v563);
      if (v575 != 1)
      {
        if ((v574 & 1) == 0)
        {
          v141 = v573;
          result = sub_25293847C(&v572, &qword_27F545530, &unk_252E5B5C0);
          v142 = v544[40];
          v106 = __OFADD__(v142, v141);
          v143 = v142 + v141;
          v75 = v547;
          if (v106)
          {
            goto LABEL_419;
          }

          v544[40] = v143;
          goto LABEL_70;
        }

        v135 = v544;
        if (v575)
        {
          v136 = *(&v572 + 1) - v572;
          if (__OFSUB__(*(&v572 + 1), v572))
          {
            goto LABEL_433;
          }

          v137 = sub_252AD4324();
          sub_25293847C(&v572, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v572, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v136, v137))
          {
            goto LABEL_438;
          }

          v138 = (v136 - v137) & ~((v136 - v137) >> 63);
          v139 = v135[40];
          v106 = __OFADD__(v139, v138);
          v140 = v139 + v138;
          v75 = v547;
          if (v106)
          {
            goto LABEL_442;
          }

          v135[40] = v140;
          goto LABEL_70;
        }
      }

      v75 = v547;
    }

LABEL_70:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v75, v134, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v144 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v134, v35);
      v10 = v530;
      v122 = v544;
    }

    else
    {
      v145 = *v559;
      v146 = v559[24];
      v147 = v559[16];
      v148 = *&v559[20];
      v149 = v544[55];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_2529F8360(0, *(v149 + 2) + 1, 1, v149);
      }

      v151 = *(v149 + 2);
      v150 = *(v149 + 3);
      if (v151 >= v150 >> 1)
      {
        v149 = sub_2529F8360((v150 > 1), v151 + 1, 1, v149);
      }

      v35 = v549;
      (*(v542 + 8))(v524, v549);
      *(v149 + 2) = v151 + 1;
      v152 = &v149[32 * v151];
      *(v152 + 4) = v145;
      *(v152 + 5) = v144;
      v152[48] = v147;
      *(v152 + 13) = v148;
      v152[56] = v146;
      v122 = v544;
      v544[55] = v149;
      v75 = v547;
      v49 = v541;
      v10 = v530;
      v123 = v537;
    }

LABEL_77:
    memcpy(v563, v548, sizeof(v563));
    *v123 = 0xD000000000000018;
    v123[1] = 0x8000000252E932F0;
    LODWORD(v524) = *MEMORY[0x277D5E510];
    (v536)(v123);
    v153 = v517;
    sub_252D02F3C(v75, v537, v517);
    v154 = v153;
    (v535)(v537, v10);
    if (v533(v153, 1, v35) == 1)
    {
      v155 = v75;
      sub_25293847C(v154, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_103;
    }

    (*(v542 + 32))(v523, v153, v35);
    v156 = sub_252E347E4();
    v158 = v157;
    v159 = v122[14];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v159 = sub_2529F7A80(0, *(v159 + 2) + 1, 1, v159);
    }

    v161 = *(v159 + 2);
    v160 = *(v159 + 3);
    if (v161 >= v160 >> 1)
    {
      v159 = sub_2529F7A80((v160 > 1), v161 + 1, 1, v159);
    }

    *(v159 + 2) = v161 + 1;
    v162 = &v159[16 * v161];
    *(v162 + 4) = v156;
    *(v162 + 5) = v158;
    v122[14] = v159;
    v155 = v547;
    v163 = v523;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v155, v163, &v576);
      memcpy(v563, v561, sizeof(v563));
      result = sub_252935408(v563);
      if (v579 == 1)
      {
        v155 = v547;
        goto LABEL_95;
      }

      if (v578)
      {
        if (!v579)
        {

          v155 = v547;
          goto LABEL_95;
        }

        v164 = *(&v576 + 1) - v576;
        if (__OFSUB__(*(&v576 + 1), v576))
        {
          goto LABEL_434;
        }

        v165 = sub_252AD4324();
        sub_25293847C(&v576, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v576, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v164, v165))
        {
          goto LABEL_439;
        }

        v166 = (v164 - v165) & ~((v164 - v165) >> 63);
        v167 = v122[40];
        v106 = __OFADD__(v167, v166);
        v168 = v167 + v166;
        v155 = v547;
        if (!v106)
        {
          goto LABEL_94;
        }

        __break(1u);
      }

      v169 = v577;
      result = sub_25293847C(&v576, &qword_27F545530, &unk_252E5B5C0);
      v170 = v122[40];
      v106 = __OFADD__(v170, v169);
      v168 = v170 + v169;
      v155 = v547;
      if (v106)
      {
        goto LABEL_420;
      }

LABEL_94:
      v122[40] = v168;
    }

LABEL_95:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v155, v163, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v171 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v163, v35);
    }

    else
    {
      v172 = *v559;
      v173 = v559[24];
      v174 = v559[16];
      v175 = *&v559[20];
      v176 = v122[56];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = sub_2529F8360(0, *(v176 + 2) + 1, 1, v176);
      }

      v178 = *(v176 + 2);
      v177 = *(v176 + 3);
      if (v178 >= v177 >> 1)
      {
        v176 = sub_2529F8360((v177 > 1), v178 + 1, 1, v176);
      }

      v35 = v549;
      (*(v542 + 8))(v523, v549);
      *(v176 + 2) = v178 + 1;
      v179 = &v176[32 * v178];
      *(v179 + 4) = v172;
      *(v179 + 5) = v171;
      v179[48] = v174;
      *(v179 + 13) = v175;
      v179[56] = v173;
      v544[56] = v176;
      v155 = v547;
      v49 = v541;
    }

    v10 = v530;
LABEL_103:
    memcpy(v563, v548, sizeof(v563));
    v180 = v537;
    (v536)(v537, *MEMORY[0x277D5E530], v10);
    v181 = v516;
    sub_252D02F3C(v155, v180, v516);
    (v535)(v180, v10);
    if (v533(v181, 1, v35) == 1)
    {
      sub_25293847C(v181, &qword_27F541D70, &unk_252E5B5A0);
      v182 = v537;
      v183 = v155;
      v184 = v524;
      goto LABEL_128;
    }

    (*(v542 + 32))(v522, v181, v35);
    v185 = sub_252E347E4();
    v187 = v186;
    v188 = v544;
    v189 = v544[28];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = sub_2529F7A80(0, *(v189 + 2) + 1, 1, v189);
    }

    v182 = v537;
    v191 = *(v189 + 2);
    v190 = *(v189 + 3);
    if (v191 >= v190 >> 1)
    {
      v189 = sub_2529F7A80((v190 > 1), v191 + 1, 1, v189);
    }

    *(v189 + 2) = v191 + 1;
    v192 = &v189[16 * v191];
    *(v192 + 4) = v185;
    *(v192 + 5) = v187;
    v188[28] = v189;
    v183 = v547;
    v193 = v522;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v183, v193, &v580);
      memcpy(v563, v561, sizeof(v563));
      result = sub_252935408(v563);
      if (v583 == 1)
      {
        v183 = v547;
        goto LABEL_121;
      }

      if ((v582 & 1) == 0)
      {
        goto LABEL_119;
      }

      if (v583)
      {
        v194 = *(&v580 + 1) - v580;
        if (__OFSUB__(*(&v580 + 1), v580))
        {
          goto LABEL_435;
        }

        v195 = sub_252AD4324();
        sub_25293847C(&v580, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v580, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v194, v195))
        {
          goto LABEL_440;
        }

        v196 = (v194 - v195) & ~((v194 - v195) >> 63);
        v197 = v188[40];
        v106 = __OFADD__(v197, v196);
        v198 = v197 + v196;
        v183 = v547;
        if (v106)
        {
          __break(1u);
LABEL_119:
          v199 = v581;
          result = sub_25293847C(&v580, &qword_27F545530, &unk_252E5B5C0);
          v200 = v188[40];
          v106 = __OFADD__(v200, v199);
          v198 = v200 + v199;
          v183 = v547;
          if (v106)
          {
            goto LABEL_421;
          }
        }

        v188[40] = v198;
        goto LABEL_121;
      }

      v183 = v547;
    }

LABEL_121:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v183, v193, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v201 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v193, v35);
      v10 = v530;
      v184 = v524;
    }

    else
    {
      v202 = *v559;
      LODWORD(v523) = v559[24];
      v203 = v559[16];
      v204 = *&v559[20];
      v205 = v188[57];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v188[57] = v205;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v205 = sub_2529F8360(0, *(v205 + 2) + 1, 1, v205);
        v188[57] = v205;
      }

      v208 = *(v205 + 2);
      v207 = *(v205 + 3);
      v184 = v524;
      if (v208 >= v207 >> 1)
      {
        v205 = sub_2529F8360((v207 > 1), v208 + 1, 1, v205);
        v544[57] = v205;
      }

      v35 = v549;
      (*(v542 + 8))(v522, v549);
      *(v205 + 2) = v208 + 1;
      v209 = &v205[32 * v208];
      *(v209 + 4) = v202;
      *(v209 + 5) = v201;
      v209[48] = v203;
      *(v209 + 13) = v204;
      v209[56] = v523;
      v544[57] = v205;
      v183 = v547;
      v49 = v541;
      v10 = v530;
      v182 = v537;
    }

LABEL_128:
    memcpy(v563, v548, sizeof(v563));
    *v182 = 0xD000000000000017;
    v182[1] = 0x8000000252E93310;
    (v536)(v182, v184, v10);
    v210 = v515;
    sub_252D02F3C(v183, v182, v515);
    v211 = v210;
    v212 = v182;
    (v535)(v182, v10);
    if (v533(v211, 1, v35) == 1)
    {
      sub_25293847C(v211, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_153;
    }

    (*(v542 + 32))(v521, v211, v35);
    v213 = sub_252E347E4();
    v215 = v214;
    v216 = v544;
    v217 = v544[15];
    v218 = swift_isUniquelyReferenced_nonNull_native();
    v216[15] = v217;
    if ((v218 & 1) == 0)
    {
      v217 = sub_2529F7A80(0, *(v217 + 2) + 1, 1, v217);
      v216[15] = v217;
    }

    v220 = *(v217 + 2);
    v219 = *(v217 + 3);
    if (v220 >= v219 >> 1)
    {
      v217 = sub_2529F7A80((v219 > 1), v220 + 1, 1, v217);
    }

    *(v217 + 2) = v220 + 1;
    v221 = &v217[16 * v220];
    *(v221 + 4) = v213;
    *(v221 + 5) = v215;
    v216[15] = v217;
    v183 = v547;
    v222 = v521;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v183, v222, &v584);
      memcpy(v563, v561, sizeof(v563));
      result = sub_252935408(v563);
      if (v587 == 1)
      {
        v183 = v547;
        goto LABEL_146;
      }

      if ((v586 & 1) == 0)
      {
        goto LABEL_144;
      }

      if (v587)
      {
        v223 = *(&v584 + 1) - v584;
        if (__OFSUB__(*(&v584 + 1), v584))
        {
          goto LABEL_436;
        }

        v224 = sub_252AD4324();
        sub_25293847C(&v584, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v584, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v223, v224))
        {
          goto LABEL_441;
        }

        v225 = (v223 - v224) & ~((v223 - v224) >> 63);
        v226 = v216[40];
        v106 = __OFADD__(v226, v225);
        v227 = v226 + v225;
        v183 = v547;
        if (v106)
        {
          __break(1u);
LABEL_144:
          v228 = v585;
          result = sub_25293847C(&v584, &qword_27F545530, &unk_252E5B5C0);
          v229 = v216[40];
          v106 = __OFADD__(v229, v228);
          v227 = v229 + v228;
          v183 = v547;
          if (v106)
          {
            goto LABEL_422;
          }
        }

        v216[40] = v227;
        goto LABEL_146;
      }

      v183 = v547;
    }

LABEL_146:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v183, v222, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v230 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v222, v35);
      v10 = v530;
    }

    else
    {
      v231 = *v559;
      v232 = v559[24];
      v233 = v559[16];
      v234 = *&v559[20];
      v235 = v216[58];
      v236 = swift_isUniquelyReferenced_nonNull_native();
      v216[58] = v235;
      if ((v236 & 1) == 0)
      {
        v235 = sub_2529F8360(0, *(v235 + 2) + 1, 1, v235);
        v216[58] = v235;
      }

      v238 = *(v235 + 2);
      v237 = *(v235 + 3);
      if (v238 >= v237 >> 1)
      {
        v235 = sub_2529F8360((v237 > 1), v238 + 1, 1, v235);
        v544[58] = v235;
      }

      v35 = v549;
      (*(v542 + 8))(v521, v549);
      *(v235 + 2) = v238 + 1;
      v239 = &v235[32 * v238];
      *(v239 + 4) = v231;
      *(v239 + 5) = v230;
      v239[48] = v233;
      *(v239 + 13) = v234;
      v239[56] = v232;
      v544[58] = v235;
      v183 = v547;
      v49 = v541;
      v10 = v530;
      v212 = v537;
    }

LABEL_153:
    memcpy(v563, v548, sizeof(v563));
    (v536)(v212, *MEMORY[0x277D5E550], v10);
    v240 = v212;
    v241 = v514;
    sub_252D02F3C(v183, v240, v514);
    v242 = v241;
    v243 = v240;
    (v535)(v240, v10);
    if (v533(v242, 1, v35) == 1)
    {
      sub_25293847C(v242, &qword_27F541D70, &unk_252E5B5A0);
      v5 = v544;
      goto LABEL_183;
    }

    (*(v542 + 32))(v525, v242, v35);
    v244 = sub_252E347E4();
    v246 = v245;
    v5 = v544;
    v247 = v544[20];
    v248 = swift_isUniquelyReferenced_nonNull_native();
    v5[20] = v247;
    if ((v248 & 1) == 0)
    {
      v247 = sub_2529F7A80(0, *(v247 + 2) + 1, 1, v247);
      v5[20] = v247;
    }

    v250 = *(v247 + 2);
    v249 = *(v247 + 3);
    if (v250 >= v249 >> 1)
    {
      v247 = sub_2529F7A80((v249 > 1), v250 + 1, 1, v247);
    }

    *(v247 + 2) = v250 + 1;
    v251 = &v247[16 * v250];
    *(v251 + 4) = v244;
    *(v251 + 5) = v246;
    v5[20] = v247;
    v183 = v547;
    v252 = v525;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v183, v252, &v588);
      memcpy(v563, v561, sizeof(v563));
      sub_252935408(v563);
      v253 = v589;
      v254 = v590;
      if (*(&v591 + 1))
      {
        if (*(&v591 + 1) == 1)
        {
          v183 = v547;
          v35 = v549;
          goto LABEL_176;
        }

        v524 = v591;
        v243 = *(&v588 + 1);
        v523 = v588;
        v256 = v5[45];

        result = swift_isUniquelyReferenced_nonNull_native();
        v5[45] = v256;
        if ((result & 1) == 0)
        {
          goto LABEL_415;
        }

        while (1)
        {
          v260 = *(v256 + 16);
          v259 = *(v256 + 24);
          v261 = v524;
          if (v260 >= v259 >> 1)
          {
            result = sub_2529F7A80((v259 > 1), v260 + 1, 1, v256);
            v261 = v524;
            v256 = result;
          }

          *(v256 + 16) = v260 + 1;
          *(v256 + 16 * v260 + 32) = v261;
          v5 = v544;
          v544[45] = v256;
          if (v254)
          {
            v262 = v243 - v523;
            if (__OFSUB__(v243, v523))
            {
              goto LABEL_423;
            }

            v263 = sub_252AD4324();
            sub_25293847C(&v588, &qword_27F545530, &unk_252E5B5C0);
            result = sub_25293847C(&v588, &qword_27F545530, &unk_252E5B5C0);
            if (__OFSUB__(v262, v263))
            {
              goto LABEL_426;
            }

            v264 = (v262 - v263) & ~((v262 - v263) >> 63);
            v265 = v5[40];
            v106 = __OFADD__(v265, v264);
            v266 = v265 + v264;
            v183 = v547;
            v35 = v549;
            v243 = v537;
            v252 = v525;
            if (v106)
            {
              goto LABEL_429;
            }

            v5[40] = v266;
            goto LABEL_176;
          }

LABEL_173:
          sub_25293847C(&v588, &qword_27F545530, &unk_252E5B5C0);
          v267 = v5[40];
          v106 = __OFADD__(v267, v253);
          v268 = v267 + v253;
          if (!v106)
          {
            break;
          }

          __break(1u);
LABEL_415:
          result = sub_2529F7A80(0, *(v256 + 16) + 1, 1, v256);
          v256 = result;
          v5[45] = result;
        }

        v5[40] = v268;
      }

      else
      {
        v255 = v529;

        sub_2529F77E0();
        v256 = *(v5[45] + 16);
        sub_2529F7934(v256);
        v257 = v5[45];
        *(v257 + 16) = v256 + 1;
        v258 = v257 + 16 * v256;
        *(v258 + 32) = v527;
        *(v258 + 40) = v255;
        v5[45] = v257;
        if ((v254 & 1) == 0)
        {
          goto LABEL_173;
        }
      }

      v183 = v547;
      v35 = v549;
      v243 = v537;
      v252 = v525;
    }

LABEL_176:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v183, v252, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v269 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v252, v35);
      v10 = v530;
    }

    else
    {
      v270 = *v559;
      v271 = v559[24];
      v272 = v559[16];
      v273 = *&v559[20];
      v274 = v5[50];
      v275 = swift_isUniquelyReferenced_nonNull_native();
      v5[50] = v274;
      if ((v275 & 1) == 0)
      {
        v274 = sub_2529F8360(0, *(v274 + 2) + 1, 1, v274);
        v5[50] = v274;
      }

      v277 = *(v274 + 2);
      v276 = *(v274 + 3);
      if (v277 >= v276 >> 1)
      {
        v274 = sub_2529F8360((v276 > 1), v277 + 1, 1, v274);
        v544[50] = v274;
      }

      v35 = v549;
      (*(v542 + 8))(v525, v549);
      *(v274 + 2) = v277 + 1;
      v278 = &v274[32 * v277];
      *(v278 + 4) = v270;
      *(v278 + 5) = v269;
      v278[48] = v272;
      *(v278 + 13) = v273;
      v278[56] = v271;
      v5 = v544;
      v544[50] = v274;
      v183 = v547;
      v49 = v541;
      v10 = v530;
      v243 = v537;
    }

LABEL_183:
    memcpy(v563, v548, sizeof(v563));
    (v536)(v243, *MEMORY[0x277D5E558], v10);
    v279 = v513;
    sub_252D02F3C(v183, v243, v513);
    (v535)(v243, v10);
    if (v533(v279, 1, v35) == 1)
    {
      sub_25293847C(v279, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_208;
    }

    (*(v542 + 32))(v520, v279, v35);
    v280 = sub_252E347E4();
    v282 = v281;
    v283 = v5[21];
    v284 = swift_isUniquelyReferenced_nonNull_native();
    v5[21] = v283;
    if ((v284 & 1) == 0)
    {
      v283 = sub_2529F7A80(0, *(v283 + 2) + 1, 1, v283);
      v5[21] = v283;
    }

    v286 = *(v283 + 2);
    v285 = *(v283 + 3);
    if (v286 >= v285 >> 1)
    {
      v283 = sub_2529F7A80((v285 > 1), v286 + 1, 1, v283);
    }

    *(v283 + 2) = v286 + 1;
    v287 = &v283[16 * v286];
    *(v287 + 4) = v280;
    *(v287 + 5) = v282;
    v5[21] = v283;
    v183 = v547;
    v288 = v520;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v183, v288, &v592);
      memcpy(v563, v561, sizeof(v563));
      sub_252935408(v563);
      v289 = v593;
      v290 = v594;
      v291 = v596;
      if (v596)
      {
        if (v596 == 1)
        {
          v183 = v547;
          v35 = v549;
LABEL_203:
          v288 = v520;
          goto LABEL_204;
        }

        *&v524 = *(&v592 + 1);
        v525 = v592;
        v296 = v595;

        sub_2529F77E0();
        v297 = *(v5[44] + 16);
        result = sub_2529F7934(v297);
        v298 = v5[44];
        *(v298 + 16) = v297 + 1;
        v299 = v298 + 16 * v297;
        *(v299 + 32) = v296;
        *(v299 + 40) = v291;
        v5[44] = v298;
        if (v290)
        {
          v300 = v524 - v525;
          if (__OFSUB__(v524, v525))
          {
            goto LABEL_424;
          }

          v301 = sub_252AD4324();
          sub_25293847C(&v592, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v592, &qword_27F545530, &unk_252E5B5C0);
          v5 = v544;
          if (__OFSUB__(v300, v301))
          {
            goto LABEL_427;
          }

          v302 = (v300 - v301) & ~((v300 - v301) >> 63);
          v303 = v544[40];
          v106 = __OFADD__(v303, v302);
          v304 = v303 + v302;
          v183 = v547;
          v35 = v549;
          v243 = v537;
          v288 = v520;
          if (v106)
          {
            goto LABEL_430;
          }

          v544[40] = v304;
          goto LABEL_204;
        }

LABEL_200:
        result = sub_25293847C(&v592, &qword_27F545530, &unk_252E5B5C0);
        v305 = v5[40];
        v106 = __OFADD__(v305, v289);
        v306 = v305 + v289;
        if (v106)
        {
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
LABEL_425:
          __break(1u);
LABEL_426:
          __break(1u);
LABEL_427:
          __break(1u);
LABEL_428:
          __break(1u);
LABEL_429:
          __break(1u);
LABEL_430:
          __break(1u);
LABEL_431:
          __break(1u);
LABEL_432:
          __break(1u);
LABEL_433:
          __break(1u);
LABEL_434:
          __break(1u);
LABEL_435:
          __break(1u);
LABEL_436:
          __break(1u);
LABEL_437:
          __break(1u);
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
          return result;
        }

        v5[40] = v306;
      }

      else
      {
        v292 = v529;

        sub_2529F77E0();
        v293 = *(v5[44] + 16);
        sub_2529F7934(v293);
        v294 = v5[44];
        *(v294 + 16) = v293 + 1;
        v295 = v294 + 16 * v293;
        *(v295 + 32) = v527;
        *(v295 + 40) = v292;
        v5[44] = v294;
        if ((v290 & 1) == 0)
        {
          goto LABEL_200;
        }
      }

      v183 = v547;
      v35 = v549;
      v243 = v537;
      goto LABEL_203;
    }

LABEL_204:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v183, v288, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v307 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v288, v35);
    }

    else
    {
      LODWORD(v525) = v559[24];
      v308 = v288;
      v309 = v559[16];
      v310 = *v559;
      v311 = *&v559[20];
      sub_2529F7864();
      v312 = *(v544[52] + 16);
      sub_2529F79B0(v312);
      (*(v542 + 8))(v308, v549);
      v313 = v544[52];
      *(v313 + 16) = v312 + 1;
      v314 = v313 + 32 * v312;
      v183 = v547;
      *(v314 + 32) = v310;
      *(v314 + 40) = v307;
      *(v314 + 48) = v309;
      *(v314 + 52) = v311;
      v5 = v544;
      *(v314 + 56) = v525;
      v35 = v549;
      v5[52] = v313;
    }

    v10 = v530;
LABEL_208:
    memcpy(v563, v548, sizeof(v563));
    (v536)(v243, *MEMORY[0x277D5E548], v10);
    v315 = v512;
    sub_252D02F3C(v183, v243, v512);
    (v535)(v243, v10);
    if (v533(v315, 1, v35) == 1)
    {
      sub_25293847C(v315, &qword_27F541D70, &unk_252E5B5A0);
      goto LABEL_231;
    }

    v316 = v509;
    (*(v542 + 32))(v509, v315, v35);
    v317 = sub_252E347E4();
    v319 = v318;
    v320 = v5[19];
    v321 = swift_isUniquelyReferenced_nonNull_native();
    v5[19] = v320;
    if ((v321 & 1) == 0)
    {
      v320 = sub_2529F7A80(0, *(v320 + 2) + 1, 1, v320);
      v5[19] = v320;
    }

    v323 = *(v320 + 2);
    v322 = *(v320 + 3);
    if (v323 >= v322 >> 1)
    {
      v320 = sub_2529F7A80((v322 > 1), v323 + 1, 1, v320);
    }

    *(v320 + 2) = v323 + 1;
    v324 = &v320[16 * v323];
    *(v324 + 4) = v317;
    *(v324 + 5) = v319;
    v5[19] = v320;
    v183 = v547;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v183, v316, &v597);
      memcpy(v563, v561, sizeof(v563));
      sub_252935408(v563);
      v325 = v598;
      v326 = v599;
      v327 = v601;
      if (v601)
      {
        if (v601 == 1)
        {
          v183 = v547;
          v35 = v549;
          goto LABEL_228;
        }

        v332 = *(&v597 + 1);
        v537 = v597;
        v333 = v600;

        sub_2529F77E0();
        v334 = *(v5[43] + 16);
        result = sub_2529F7934(v334);
        v335 = v5[43];
        *(v335 + 16) = v334 + 1;
        v336 = v335 + 16 * v334;
        *(v336 + 32) = v333;
        *(v336 + 40) = v327;
        v5[43] = v335;
        if (v326)
        {
          v337 = v332 - v537;
          if (__OFSUB__(v332, v537))
          {
            goto LABEL_425;
          }

          v338 = sub_252AD4324();
          sub_25293847C(&v597, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v597, &qword_27F545530, &unk_252E5B5C0);
          v5 = v544;
          if (__OFSUB__(v337, v338))
          {
            goto LABEL_428;
          }

          v339 = (v337 - v338) & ~((v337 - v338) >> 63);
          v340 = v544[40];
          v106 = __OFADD__(v340, v339);
          v341 = v340 + v339;
          v183 = v547;
          v35 = v549;
          v49 = v541;
          v316 = v509;
          if (v106)
          {
            goto LABEL_431;
          }

          v544[40] = v341;
          goto LABEL_228;
        }

LABEL_225:
        result = sub_25293847C(&v597, &qword_27F545530, &unk_252E5B5C0);
        v342 = v5[40];
        v106 = __OFADD__(v342, v325);
        v343 = v342 + v325;
        if (v106)
        {
          goto LABEL_417;
        }

        v5[40] = v343;
      }

      else
      {
        v328 = v529;

        sub_2529F77E0();
        v329 = *(v5[43] + 16);
        sub_2529F7934(v329);
        v330 = v5[43];
        *(v330 + 16) = v329 + 1;
        v331 = v330 + 16 * v329;
        *(v331 + 32) = v527;
        *(v331 + 40) = v328;
        v5[43] = v330;
        if ((v326 & 1) == 0)
        {
          goto LABEL_225;
        }
      }

      v183 = v547;
      v35 = v549;
      v49 = v541;
      v316 = v509;
    }

LABEL_228:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v183, v316, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v344 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v316, v35);
    }

    else
    {
      v345 = v559[24];
      v346 = v559[16];
      v347 = *v559;
      v348 = *&v559[20];
      sub_2529F7864();
      v349 = *(v5[51] + 16);
      sub_2529F79B0(v349);
      (*(v542 + 8))(v316, v549);
      v350 = v5[51];
      *(v350 + 16) = v349 + 1;
      v351 = v350 + 32 * v349;
      v183 = v547;
      *(v351 + 32) = v347;
      *(v351 + 40) = v344;
      *(v351 + 48) = v346;
      *(v351 + 52) = v348;
      v49 = v541;
      *(v351 + 56) = v345;
      v35 = v549;
      v5[51] = v350;
    }

LABEL_231:
    v353 = sub_252D01B8C(v183);
    v354 = v352;
    if (!*(v353 + 2))
    {
      break;
    }

    v355 = 6;
LABEL_235:
    sub_2529F78D8();
    v356 = *(v5[47] + 16);
    sub_2529F7A18(v356);
    v357 = v5[47];
    *(v357 + 16) = v356 + 1;
    v356[v357 + 32] = v355;
    v5[47] = v357;
    v563[0] = v354;
    sub_25297BA5C(v353);
    v358 = v563[0];
    v359 = *(v563[0] + 16);
    v360 = MEMORY[0x277D84F90];
    v528 = v563[0];
    if (v359)
    {
      v563[0] = MEMORY[0x277D84F90];
      sub_2529507DC(v359);
      v537 = *(v542 + 16);
      v361 = v358 + ((*(v542 + 80) + 32) & ~*(v542 + 80));
      *&v536 = *(v542 + 72);
      v362 = (v542 + 8);
      do
      {
        v363 = v543;
        v364 = v549;
        (v537)(v543, v361, v549);
        v365 = sub_252E347E4();
        v367 = v366;
        (*v362)(v363, v364);
        v360 = v563[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA3A0(0, *(v360 + 16) + 1, 1);
          v360 = v563[0];
        }

        v369 = *(v360 + 16);
        v368 = *(v360 + 24);
        if (v369 >= v368 >> 1)
        {
          sub_2529AA3A0((v368 > 1), v369 + 1, 1);
          v360 = v563[0];
        }

        *(v360 + 16) = v369 + 1;
        v370 = v360 + 16 * v369;
        *(v370 + 32) = v365;
        *(v370 + 40) = v367;
        v361 += v536;
        --v359;
      }

      while (v359);
      v5 = v544;
      v35 = v549;
      v49 = v541;
    }

    v371 = sub_252DF88E4(v360);

    sub_25297A744(v371);
    v372 = *(v528 + 2);
    v373 = v532;
    if (!v372)
    {
      goto LABEL_268;
    }

    memcpy(v563, v548, sizeof(v563));
    v76 = (v542 + 16);
    v537 = *(v542 + 16);
    v374 = &v528[(*(v542 + 80) + 32) & ~*(v542 + 80)];
    v535 = *(v542 + 72);
    *&v536 = v542 + 8;
    v543 = (v372 - 1);
    v90 = v547;
    v530 = (v542 + 16);
    (v537)(v532, v374, v35);
    while (1)
    {
      if (v545)
      {
        goto LABEL_260;
      }

      v377 = v35;
      v35 = v49;
      v49 = v374;
      memcpy(v561, v548, sizeof(v561));
      memcpy(v560, v548, sizeof(v560));
      sub_2529353AC(v561, v559);
      sub_252D01540(v90, v373, &v602);
      v88 = v606;
      memcpy(v562, v560, sizeof(v562));
      sub_252935408(v562);
      v91 = v606;
      if (v606 == 1)
      {
        goto LABEL_258;
      }

      if (v604)
      {
        if (v606)
        {
          v378 = *(&v602 + 1) - v602;
          if (__OFSUB__(*(&v602 + 1), v602))
          {
            goto LABEL_404;
          }

          v534 = v605;

          v88 = sub_252AD4324();
          v91 = &qword_27F545530;
          sub_25293847C(&v602, &qword_27F545530, &unk_252E5B5C0);
          sub_25293847C(&v602, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v378, v88))
          {
            goto LABEL_405;
          }

          v379 = (v378 - v88) & ~((v378 - v88) >> 63);
          v380 = v5[40];
          v106 = __OFADD__(v380, v379);
          v381 = v380 + v379;
          if (v106)
          {
            goto LABEL_406;
          }

          v5[40] = v381;
          v373 = v532;
        }

        else
        {
        }

LABEL_258:
        v374 = v49;
        goto LABEL_259;
      }

      v88 = v603;
      sub_25293847C(&v602, &qword_27F545530, &unk_252E5B5C0);
      v382 = v5[40];
      v106 = __OFADD__(v382, v88);
      v383 = v382 + v88;
      if (v106)
      {
        break;
      }

      v374 = v49;
      v5[40] = v383;
LABEL_259:
      v49 = v35;
      v35 = v377;
LABEL_260:
      memcpy(v561, v563, sizeof(v561));
      sub_2529353AC(v563, v560);
      sub_252D02164(v90, v373, sub_252D083F0, v559);
      memcpy(v562, v561, sizeof(v562));
      sub_252935408(v562);
      v384 = *&v559[8];
      if (*&v559[8] == 1)
      {
        v375 = v49;
        (*v536)(v373, v35);
        v376 = v543;
        if (!v543)
        {
          goto LABEL_266;
        }
      }

      else
      {
        v385 = *v559;
        LODWORD(v534) = v559[24];
        LODWORD(v533) = *&v559[16];
        v386 = v5;
        v387 = *&v559[20];
        v388 = v386[60];
        v389 = swift_isUniquelyReferenced_nonNull_native();
        v386[60] = v388;
        if ((v389 & 1) == 0)
        {
          v388 = sub_2529F8360(0, *(v388 + 2) + 1, 1, v388);
          v544[60] = v388;
        }

        v391 = *(v388 + 2);
        v390 = *(v388 + 3);
        if (v391 >= v390 >> 1)
        {
          v388 = sub_2529F8360((v390 > 1), v391 + 1, 1, v388);
          v544[60] = v388;
        }

        v373 = v532;
        v35 = v549;
        (*v536)(v532, v549);
        *(v388 + 2) = v391 + 1;
        v392 = &v388[32 * v391];
        *(v392 + 4) = v385;
        *(v392 + 5) = v384;
        v392[48] = v533;
        *(v392 + 13) = v387;
        v392[56] = v534;
        v5 = v544;
        v544[60] = v388;
        v90 = v547;
        v375 = v541;
        v76 = v530;
        v376 = v543;
        if (!v543)
        {
LABEL_266:

          v49 = v375;
          goto LABEL_269;
        }
      }

      v543 = (v376 - 1);
      v374 += v535;
      v49 = v375;
      (v537)(v373, v374, v35);
    }

    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    __break(1u);
LABEL_405:
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    v91 = sub_2529F7A80(0, *(v91 + 2) + 1, 1, v91);
LABEL_18:
    v93 = *(v91 + 2);
    v92 = *(v91 + 3);
    v73 = (v93 + 1);
    if (v93 >= v92 >> 1)
    {
      v91 = sub_2529F7A80((v92 > 1), v93 + 1, 1, v91);
    }

    *(v91 + 2) = v73;
    v94 = &v91[16 * v93];
    *(v94 + 4) = v88;
    *(v94 + 5) = v90;
    v5[6] = v91;
    v95 = v5[47];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_2529F846C(0, *(v95 + 2) + 1, 1, v95);
    }

    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    if (v97 >= v96 >> 1)
    {
      v95 = sub_2529F846C((v96 > 1), v97 + 1, 1, v95);
    }

    *(v95 + 2) = v97 + 1;
    v95[v97 + 32] = 8;
    v5[47] = v95;
    v75 = v547;
    if ((v545 & 1) == 0)
    {
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D01540(v75, v76, &v568);
      memcpy(v563, v561, sizeof(v563));
      result = sub_252935408(v563);
      if (v571 == 1)
      {
        v75 = v547;
        goto LABEL_45;
      }

      if ((v570 & 1) == 0)
      {
        v109 = v569;
        result = sub_25293847C(&v568, &qword_27F545530, &unk_252E5B5C0);
        v110 = v5[40];
        v106 = __OFADD__(v110, v109);
        v107 = v110 + v109;
        v75 = v547;
        if (!v106)
        {
          goto LABEL_44;
        }

        goto LABEL_418;
      }

      if (!v571)
      {

        v75 = v547;
        goto LABEL_45;
      }

      v102 = *(&v568 + 1) - v568;
      if (__OFSUB__(*(&v568 + 1), v568))
      {
        goto LABEL_432;
      }

      v103 = sub_252AD4324();
      v82 = &unk_252E5B5C0;
      sub_25293847C(&v568, &qword_27F545530, &unk_252E5B5C0);
      result = sub_25293847C(&v568, &qword_27F545530, &unk_252E5B5C0);
      if (__OFSUB__(v102, v103))
      {
        goto LABEL_437;
      }

      v104 = (v102 - v103) & ~((v102 - v103) >> 63);
      v105 = v5[40];
      v106 = __OFADD__(v105, v104);
      v107 = v105 + v104;
      v75 = v547;
      if (!v106)
      {
LABEL_44:
        v5[40] = v107;
        goto LABEL_45;
      }

      __break(1u);
LABEL_41:
      memcpy(v560, v548, sizeof(v560));
      memcpy(v559, v548, sizeof(v559));
      sub_2529353AC(v560, &v550);
      sub_252D01540(v547, v76, &v564);
      memcpy(v561, v559, sizeof(v561));
      sub_252935408(v561);
      result = v76;
      v108 = v549;
      v10 = v530;
      if (v567 == 1)
      {
        v35 = v549;
        (*(v542 + 8))(result, v549);
        v75 = v547;
        goto LABEL_14;
      }

      if (v566)
      {
        if (!v567)
        {
          v507 = *(v542 + 8);

          v35 = v108;
          v507(v541, v108);
          goto LABEL_33;
        }

        v498 = *(&v564 + 1) - v564;
        if (__OFSUB__(*(&v564 + 1), v564))
        {
          goto LABEL_444;
        }

        v499 = sub_252AD4324();
        sub_25293847C(&v564, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(&v564, &qword_27F545530, &unk_252E5B5C0);
        result = (*(v542 + 8))(v541, v108);
        if (__OFSUB__(v498, v499))
        {
          goto LABEL_445;
        }

        v500 = (v498 - v499) & ~((v498 - v499) >> 63);
        v501 = v5[40];
        v106 = __OFADD__(v501, v500);
        v502 = v501 + v500;
        v75 = v547;
        v10 = v530;
        if (v106)
        {
          goto LABEL_446;
        }

        v35 = v108;
        v82 = v73;
        v5[40] = v502;
        goto LABEL_14;
      }

      v503 = v565;
      sub_25293847C(&v564, &qword_27F545530, &unk_252E5B5C0);
      v35 = v108;
      result = (*(v542 + 8))(v541, v108);
      v504 = v5[40];
      v106 = __OFADD__(v504, v503);
      v505 = v504 + v503;
      v506 = v5;
      v83 = v537;
      if (v106)
      {
        goto LABEL_443;
      }

      v506[40] = v505;
      v75 = v547;
      goto LABEL_15;
    }

LABEL_45:
    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D02164(v75, v76, sub_252D083F0, v559);
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v111 = *&v559[8];
    if (*&v559[8] == 1)
    {
      (*(v542 + 8))(v76, v35);
    }

    else
    {
      v112 = *v559;
      v113 = v559[24];
      v114 = v559[16];
      v115 = *&v559[20];
      v116 = v5[59];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_2529F8360(0, *(v116 + 2) + 1, 1, v116);
      }

      v118 = *(v116 + 2);
      v117 = *(v116 + 3);
      if (v118 >= v117 >> 1)
      {
        v116 = sub_2529F8360((v117 > 1), v118 + 1, 1, v116);
      }

      v35 = v549;
      (*(v542 + 8))(v510, v549);
      *(v116 + 2) = v118 + 1;
      v119 = &v116[32 * v118];
      *(v119 + 4) = v112;
      *(v119 + 5) = v111;
      v119[48] = v114;
      *(v119 + 13) = v115;
      v119[56] = v113;
      v544[59] = v116;
      v75 = v547;
      v49 = v541;
    }

    v10 = v530;
  }

  if (*(v352 + 16))
  {
    v355 = 7;
    goto LABEL_235;
  }

LABEL_268:

  v90 = v547;
LABEL_269:
  v393 = *(v90 + 16);
  v532 = v393;
  if (v393)
  {
    v394 = *(v542 + 16);
    *&v536 = (*(v542 + 80) + 32) & ~*(v542 + 80);
    v395 = v90 + v536;
    v537 = 0x8000000252E7B360;
    v396 = *(v542 + 72);
    v397 = (v542 + 8);
    v535 = v542 + 32;
    v543 = MEMORY[0x277D84F90];
    v394(v49, v395, v549);
    while (1)
    {
      v398 = sub_252E347F4();
      if (!v399)
      {
        break;
      }

      if (v398 == 0xD00000000000001BLL && v399 == v537)
      {
      }

      else
      {
        v400 = sub_252E37DB4();

        if ((v400 & 1) == 0)
        {
          break;
        }
      }

      v394(v540, v49, v549);
      v401 = v543;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v401 = sub_2529F85CC(0, v401[2] + 1, 1, v401);
      }

      v403 = v401[2];
      v402 = v401[3];
      v543 = v401;
      if (v403 >= v402 >> 1)
      {
        v543 = sub_2529F85CC(v402 > 1, v403 + 1, 1, v543);
      }

      v404 = v49;
      v405 = v549;
      (*v397)(v404, v549);
      v406 = v543;
      v543[2] = v403 + 1;
      v407 = v405;
      v49 = v541;
      (*v535)(&v406[v536 + v403 * v396], v540, v407);
LABEL_272:
      v395 += v396;
      if (!--v393)
      {
        goto LABEL_285;
      }

      v394(v49, v395, v549);
    }

    (*v397)(v49, v549);
    goto LABEL_272;
  }

  v543 = MEMORY[0x277D84F90];
LABEL_285:
  v5 = v544;
  v408 = v543[2];
  if (v408)
  {
    v76 = (v542 + 16);
    v409 = *(v542 + 16);
    v91 = v543 + ((*(v542 + 80) + 32) & ~*(v542 + 80));
    v410 = *(v542 + 72);
    v540 = (v542 + 8);
    v541 = v410;
    v35 = v549;
    v411 = v531;
    v533 = (v542 + 16);
    v537 = v409;
    (v409)(v531, v91, v549);
    while (1)
    {
      v412._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v412);
      v413 = v563[0];
      if (LOBYTE(v563[0]) == 52)
      {
        (*v540)(v411, v35);
        goto LABEL_288;
      }

      v414 = v5[18];
      v415 = swift_isUniquelyReferenced_nonNull_native();
      v5[18] = v414;
      if ((v415 & 1) == 0)
      {
        v414 = sub_2529F80DC(0, *(v414 + 2) + 1, 1, v414);
        v5[18] = v414;
      }

      v417 = *(v414 + 2);
      v416 = *(v414 + 3);
      if (v417 >= v416 >> 1)
      {
        v414 = sub_2529F80DC((v416 > 1), v417 + 1, 1, v414);
      }

      *(v414 + 2) = v417 + 1;
      v414[v417 + 32] = v413;
      v5[18] = v414;
      if ((v545 & 1) == 0)
      {
        memcpy(v562, v548, sizeof(v562));
        memcpy(v561, v548, sizeof(v561));
        sub_2529353AC(v562, v560);
        sub_252D01540(v547, v411, &v550);
        v88 = *(&v553 + 1);
        memcpy(v563, v561, sizeof(v563));
        sub_252935408(v563);
        v90 = v551;
        v35 = v552;
        v49 = *(&v553 + 1);
        if (*(&v553 + 1))
        {
          if (*(&v553 + 1) != 1)
          {
            v536 = v553;
            v534 = *(&v550 + 1);
            v418 = v550;
            v419 = v5;
            v420 = v5[42];
            sub_252938414(&v550, v561, &qword_27F545530, &unk_252E5B5C0);
            v421 = swift_isUniquelyReferenced_nonNull_native();
            v419[42] = v420;
            v535 = v418;
            if ((v421 & 1) == 0)
            {
              v420 = sub_2529F7A80(0, *(v420 + 2) + 1, 1, v420);
              v544[42] = v420;
            }

            v423 = *(v420 + 2);
            v422 = *(v420 + 3);
            v424 = v536;
            if (v423 >= v422 >> 1)
            {
              v445 = sub_2529F7A80((v422 > 1), v423 + 1, 1, v420);
              v424 = v536;
              v420 = v445;
            }

            *(v420 + 2) = v423 + 1;
            *&v420[16 * v423 + 32] = v424;
            v425 = v544;
            v544[42] = v420;
            v5 = v425;
            v76 = v533;
            if (v35)
            {
              v90 = v534 - v535;
              v411 = v531;
              if (__OFSUB__(v534, v535))
              {
                goto LABEL_407;
              }

              v88 = sub_252AD4324();
              v35 = &qword_27F545530;
              v49 = &unk_252E5B5C0;
              sub_25293847C(&v550, &qword_27F545530, &unk_252E5B5C0);
              sub_25293847C(&v550, &qword_27F545530, &unk_252E5B5C0);
              if (__OFSUB__(v90, v88))
              {
                goto LABEL_408;
              }

              v426 = (v90 - v88) & ~((v90 - v88) >> 63);
              v427 = v5[40];
              v106 = __OFADD__(v427, v426);
              v428 = v427 + v426;
              if (v106)
              {
                goto LABEL_409;
              }
            }

            else
            {
LABEL_314:
              sub_25293847C(&v550, &qword_27F545530, &unk_252E5B5C0);
              v434 = v5[40];
              v106 = __OFADD__(v434, v90);
              v428 = v434 + v90;
              v411 = v531;
              if (v106)
              {
                goto LABEL_402;
              }
            }

            v5[40] = v428;
          }
        }

        else
        {
          v49 = v5[42];

          v429 = swift_isUniquelyReferenced_nonNull_native();
          v5[42] = v49;
          if ((v429 & 1) == 0)
          {
            v49 = sub_2529F7A80(0, *(v49 + 2) + 1, 1, v49);
            v5[42] = v49;
          }

          v431 = *(v49 + 2);
          v430 = *(v49 + 3);
          if (v431 >= v430 >> 1)
          {
            v49 = sub_2529F7A80((v430 > 1), v431 + 1, 1, v49);
          }

          *(v49 + 2) = v431 + 1;
          v432 = &v49[16 * v431];
          v433 = v529;
          *(v432 + 4) = v527;
          *(v432 + 5) = v433;
          v5 = v544;
          v544[42] = v49;
          if ((v35 & 1) == 0)
          {
            goto LABEL_314;
          }

          v411 = v531;
        }
      }

      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D02164(v547, v411, sub_252D083F0, v559);
      memcpy(v563, v561, sizeof(v563));
      sub_252935408(v563);
      v435 = *&v559[8];
      if (*&v559[8] == 1)
      {
        v35 = v549;
        (*v540)(v411, v549);
      }

      else
      {
        v436 = *v559;
        v437 = v559[24];
        v438 = v5;
        v439 = *&v559[16];
        LODWORD(v534) = *&v559[20];
        v440 = v438[54];
        v441 = swift_isUniquelyReferenced_nonNull_native();
        v438[54] = v440;
        *&v536 = v436;
        LODWORD(v535) = v439;
        if ((v441 & 1) == 0)
        {
          v440 = sub_2529F8360(0, *(v440 + 2) + 1, 1, v440);
          v544[54] = v440;
        }

        v443 = *(v440 + 2);
        v442 = *(v440 + 3);
        if (v443 >= v442 >> 1)
        {
          v440 = sub_2529F8360((v442 > 1), v443 + 1, 1, v440);
          v544[54] = v440;
        }

        v411 = v531;
        v35 = v549;
        (*v540)(v531, v549);
        *(v440 + 2) = v443 + 1;
        v444 = &v440[32 * v443];
        *(v444 + 4) = v536;
        *(v444 + 5) = v435;
        v444[48] = v535;
        *(v444 + 13) = v534;
        v444[56] = v437;
        v5 = v544;
        v544[54] = v440;
        v76 = v533;
      }

      v409 = v537;
LABEL_288:
      v91 += v541;
      if (!--v408)
      {

        goto LABEL_326;
      }

      (v409)(v411, v91, v35);
    }
  }

  v35 = v549;
LABEL_326:
  v446 = v532;
  if (v532)
  {
    v447 = *(v542 + 16);
    v540 = ((*(v542 + 80) + 32) & ~*(v542 + 80));
    v448 = v540 + v547;
    v541 = 0x8000000252E7B340;
    v449 = *(v542 + 72);
    v450 = (v542 + 8);
    v537 = (v542 + 32);
    v543 = MEMORY[0x277D84F90];
    v447(v546, v540 + v547, v35);
    while (1)
    {
      v451 = sub_252E347F4();
      if (!v452)
      {
        break;
      }

      if (v451 == 0xD000000000000015 && v452 == v541)
      {
      }

      else
      {
        v453 = sub_252E37DB4();

        if ((v453 & 1) == 0)
        {
          break;
        }
      }

      v447(v538, v546, v35);
      v454 = v543;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v454 = sub_2529F85CC(0, v454[2] + 1, 1, v454);
      }

      v456 = v454[2];
      v455 = v454[3];
      if (v456 >= v455 >> 1)
      {
        v543 = sub_2529F85CC(v455 > 1, v456 + 1, 1, v454);
      }

      else
      {
        v543 = v454;
      }

      v457 = v549;
      (*v450)(v546, v549);
      v458 = v543;
      v543[2] = v456 + 1;
      v459 = v540 + v458 + v456 * v449;
      v35 = v457;
      (*v537)(v459, v538, v457);
LABEL_329:
      v448 += v449;
      if (!--v446)
      {
        goto LABEL_343;
      }

      v447(v546, v448, v35);
    }

    (*v450)(v546, v35);
    goto LABEL_329;
  }

  v543 = MEMORY[0x277D84F90];
LABEL_343:
  v460 = v543[2];
  if (v460)
  {
    v76 = *(v542 + 16);
    v91 = v543 + ((*(v542 + 80) + 32) & ~*(v542 + 80));
    v546 = *(v542 + 72);
    v541 = v542 + 8;
    v542 += 16;
    v49 = v544;
    v461 = v539;
    *&v536 = v76;
    v76(v539, v91, v35);
    while (1)
    {
      v462._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v462);
      v463 = v563[0];
      if (LOBYTE(v563[0]) == 52)
      {
LABEL_345:
        (*v541)(v461, v35);
        goto LABEL_346;
      }

      v464 = *(v49 + 17);
      v465 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 17) = v464;
      if ((v465 & 1) == 0)
      {
        v464 = sub_2529F80DC(0, *(v464 + 2) + 1, 1, v464);
        *(v49 + 17) = v464;
      }

      v467 = *(v464 + 2);
      v466 = *(v464 + 3);
      if (v467 >= v466 >> 1)
      {
        v464 = sub_2529F80DC((v466 > 1), v467 + 1, 1, v464);
      }

      *(v464 + 2) = v467 + 1;
      v464[v467 + 32] = v463;
      *(v49 + 17) = v464;
      v35 = v549;
      v461 = v539;
      if ((v545 & 1) == 0)
      {
        break;
      }

LABEL_375:
      memcpy(v562, v548, sizeof(v562));
      memcpy(v561, v548, sizeof(v561));
      sub_2529353AC(v562, v560);
      sub_252D02164(v547, v461, sub_252D083F0, &v554);
      memcpy(v563, v561, sizeof(v563));
      sub_252935408(v563);
      v485 = v555;
      if (v555 == 1)
      {
        goto LABEL_345;
      }

      v537 = v554;
      v486 = v558;
      v487 = v556;
      v488 = v557;
      v489 = *(v49 + 53);
      v490 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 53) = v489;
      LODWORD(v538) = v488;
      if ((v490 & 1) == 0)
      {
        v489 = sub_2529F8360(0, *(v489 + 2) + 1, 1, v489);
        v544[53] = v489;
      }

      v492 = *(v489 + 2);
      v491 = *(v489 + 3);
      LODWORD(v540) = v486;
      if (v492 >= v491 >> 1)
      {
        v489 = sub_2529F8360((v491 > 1), v492 + 1, 1, v489);
        v544[53] = v489;
      }

      v461 = v539;
      v35 = v549;
      (*v541)(v539, v549);
      *(v489 + 2) = v492 + 1;
      v493 = &v489[32 * v492];
      *(v493 + 4) = v537;
      *(v493 + 5) = v485;
      v493[48] = v487;
      *(v493 + 13) = v538;
      v493[56] = v540;
      v49 = v544;
      v544[53] = v489;
      v76 = v536;
LABEL_346:
      v91 = &v546[v91];
      if (!--v460)
      {

        goto LABEL_383;
      }

      v76(v461, v91, v35);
    }

    memcpy(v562, v548, sizeof(v562));
    memcpy(v561, v548, sizeof(v561));
    sub_2529353AC(v562, v560);
    sub_252D01540(v547, v461, v559);
    v468 = *&v559[40];
    memcpy(v563, v561, sizeof(v563));
    sub_252935408(v563);
    v90 = *&v559[16];
    v88 = v559[24];
    v5 = *&v559[40];
    if (*&v559[40])
    {
      if (*&v559[40] == 1)
      {
        v49 = v544;
        goto LABEL_375;
      }

      v538 = *&v559[32];
      v537 = *v559;
      v535 = *&v559[8];
      v475 = v544;
      v476 = v544[41];
      sub_252938414(v559, v561, &qword_27F545530, &unk_252E5B5C0);
      v477 = swift_isUniquelyReferenced_nonNull_native();
      v475[41] = v476;
      v540 = v468;
      if ((v477 & 1) == 0)
      {
        v476 = sub_2529F7A80(0, *(v476 + 2) + 1, 1, v476);
        v544[41] = v476;
      }

      v479 = *(v476 + 2);
      v478 = *(v476 + 3);
      v480 = v538;
      if (v479 >= v478 >> 1)
      {
        v494 = sub_2529F7A80((v478 > 1), v479 + 1, 1, v476);
        v480 = v538;
        v476 = v494;
      }

      *(v476 + 2) = v479 + 1;
      *&v476[16 * v479 + 32] = v480;
      v49 = v544;
      v544[41] = v476;
      if (v88)
      {
        v90 = v535 - v537;
        v35 = v549;
        v461 = v539;
        if (__OFSUB__(v535, v537))
        {
          goto LABEL_410;
        }

        v88 = sub_252AD4324();
        v49 = &qword_27F545530;
        v5 = &unk_252E5B5C0;
        sub_25293847C(v559, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(v559, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v90, v88))
        {
          goto LABEL_411;
        }

        v481 = (v90 - v88) & ~((v90 - v88) >> 63);
        v49 = v544;
        v482 = v544[40];
        v106 = __OFADD__(v482, v481);
        v483 = v482 + v481;
        if (v106)
        {
          goto LABEL_412;
        }

        goto LABEL_374;
      }
    }

    else
    {
      v5 = v544;
      v469 = v544[41];

      v470 = swift_isUniquelyReferenced_nonNull_native();
      v5[41] = v469;
      v540 = v468;
      if ((v470 & 1) == 0)
      {
        v469 = sub_2529F7A80(0, *(v469 + 2) + 1, 1, v469);
        v5[41] = v469;
      }

      v472 = *(v469 + 2);
      v471 = *(v469 + 3);
      if (v472 >= v471 >> 1)
      {
        v469 = sub_2529F7A80((v471 > 1), v472 + 1, 1, v469);
      }

      *(v469 + 2) = v472 + 1;
      v473 = &v469[16 * v472];
      v474 = v529;
      *(v473 + 4) = v527;
      *(v473 + 5) = v474;
      v5[41] = v469;
      v49 = v5;
      if (v88)
      {

        v35 = v549;
        v461 = v539;
        goto LABEL_375;
      }
    }

    sub_25293847C(v559, &qword_27F545530, &unk_252E5B5C0);
    v484 = *(v49 + 40);
    v106 = __OFADD__(v484, v90);
    v483 = v484 + v90;
    v35 = v549;
    v461 = v539;
    if (v106)
    {
      goto LABEL_403;
    }

LABEL_374:
    *(v49 + 40) = v483;
    goto LABEL_375;
  }

  v49 = v544;
LABEL_383:
  v495 = sub_252D02644(v547);
  if (*(v495 + 16))
  {
    v49[385] = 1;
    sub_2529F77F8();
    v496 = *(*(v49 + 12) + 16);
    sub_2529F794C(v496);
    v497 = *(v49 + 12);
    *(v497 + 16) = v496 + 1;
    *(v497 + 8 * v496 + 32) = v495;
    *(v49 + 12) = v497;
  }

  else
  {
  }

  memcpy(v563, v49, sizeof(v563));
  memcpy(v511, v49, 0x1F8uLL);
  return sub_2529353AC(v563, v562);
}

uint64_t sub_252D01354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v20 = v5;
    v21 = a2;
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v22 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v11(v8, v12, v4);
    while (1)
    {
      v15 = sub_252E347F4();
      if (v16)
      {
        if (v15 == 0xD000000000000017 && v16 == 0x8000000252E7BB30)
        {

LABEL_10:
          v5 = v20;
          a2 = v21;
          (*(v20 + 32))(v21, v8, v4);
          v17 = 0;
          return (*(v5 + 56))(a2, v17, 1, v4);
        }

        v14 = sub_252E37DB4();

        if (v14)
        {
          goto LABEL_10;
        }
      }

      (*(v10 - 8))(v8, v4);
      v12 += v13;
      if (!--v9)
      {
        break;
      }

      v22(v8, v12, v4);
    }

    v17 = 1;
    v5 = v20;
    a2 = v21;
  }

  else
  {
    v17 = 1;
  }

  return (*(v5 + 56))(a2, v17, 1, v4);
}

uint64_t sub_252D01540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v50 = a3;
  v5 = sub_252E34804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v49 = a2;
  v51 = a2;
  sub_2529A18DC(sub_252D07D34, a1, &v47 - v20);
  v22 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v22 + 288), &v52);

  v24 = v53;
  v23 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, v53);
  LOBYTE(a1) = (*(v23 + 88))(v24, v23);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  if ((a1 & 1) == 0)
  {
LABEL_11:
    sub_252938414(v21, v16, &qword_27F541D70, &unk_252E5B5A0);
    if ((*(v6 + 48))(v16, 1, v5) == 1)
    {
      sub_25293847C(v16, &qword_27F541D70, &unk_252E5B5A0);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v44 = sub_252E36AD4();
      __swift_project_value_buffer(v44, qword_27F544D90);
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000049, 0x8000000252E93330);
      (*(v6 + 16))(v48, v49, v5);
      v45 = sub_252E36F94();
      MEMORY[0x2530AD570](v45);

      sub_252CC4050(v52, *(&v52 + 1), 0xD000000000000077, 0x8000000252E92DE0, 0xD00000000000001DLL, 0x8000000252E93380, 1940);

      result = sub_25293847C(v21, &qword_27F541D70, &unk_252E5B5A0);
      v33 = 0;
      v32 = 0;
      v27 = 0;
      v34 = 0uLL;
      v29 = 1;
    }

    else
    {
      v35 = sub_252E347E4();
      v37 = v36;
      (*(v6 + 8))(v16, v5);
      v38 = sub_252E32994();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_252E32984();
      v41 = sub_252ABF638(v35, v37);
      v43 = v42;
      sub_252D07D54();
      sub_252E32974();
      sub_25293847C(v21, &qword_27F541D70, &unk_252E5B5A0);
      sub_25296464C(v41, v43);

      v33 = 0;
      v34 = v52;
      v32 = 1;
      v27 = v54;
      v29 = v55;
    }

    goto LABEL_17;
  }

  sub_252938414(v21, v19, &qword_27F541D70, &unk_252E5B5A0);
  if ((*(v6 + 48))(v19, 1, v5) == 1)
  {
    sub_25293847C(v19, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_11;
  }

  (*(v6 + 32))(v11, v19, v5);
  sub_252E347E4();
  v25 = sub_252A4CC98();
  v27 = v26;
  v29 = v28;

  if (v29 == 1)
  {
    (*(v6 + 8))(v11, v5);
    goto LABEL_11;
  }

  if ((v25 & 0x100000000) != 0)
  {
    (*(v6 + 8))(v11, v5);
    sub_252D07DA8(v25, v27, v29);
    goto LABEL_11;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D90);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E933A0, 0xD000000000000077, 0x8000000252E92DE0);
  (*(v6 + 8))(v11, v5);
  result = sub_25293847C(v21, &qword_27F541D70, &unk_252E5B5A0);
  v32 = 0;
  v33 = v25;
  v34 = 0uLL;
LABEL_17:
  v46 = v50;
  *v50 = v34;
  v46[2] = v33;
  v46[3] = v32;
  v46[4] = v27;
  v46[5] = v29;
  return result;
}

char *sub_252D01B8C(uint64_t a1)
{
  v56 = a1;
  v2 = sub_252E34874();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - v9;
  v11 = sub_252E34804();
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v59 = MEMORY[0x277D84F90];
  memcpy(v60, v1, sizeof(v60));
  memcpy(v58, v1, sizeof(v58));
  (*(v3 + 104))(v6, *MEMORY[0x277D5E538], v2);
  sub_2529353AC(v60, v61);
  sub_252D02F3C(v56, v6, v10);
  v23 = v11;
  v24 = v2;
  v25 = v54;
  (*(v3 + 8))(v6, v24);
  memcpy(v61, v58, 0x1F8uLL);
  sub_252935408(v61);
  v26 = (*(v25 + 48))(v10, 1, v11);
  v57 = v11;
  if (v26 == 1)
  {
    sub_25293847C(v10, &qword_27F541D70, &unk_252E5B5A0);
    v50 = MEMORY[0x277D84F90];
  }

  else
  {
    v53 = *(v25 + 32);
    v53(v22, v10, v11);
    (*(v25 + 16))(v20, v22, v11);
    v27 = sub_2529F85CC(0, 1, 1, MEMORY[0x277D84F90]);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    v50 = v27;
    v30 = v20;
    if (v29 >= v28 >> 1)
    {
      v50 = sub_2529F85CC(v28 > 1, v29 + 1, 1, v50);
    }

    v31 = v57;
    (*(v25 + 8))(v22, v57);
    v32 = v50;
    *(v50 + 2) = v29 + 1;
    v23 = v31;
    v53(&v32[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v29], v30, v31);
  }

  v33 = *(v56 + 16);
  if (v33)
  {
    v36 = *(v25 + 16);
    v35 = v25 + 16;
    v34 = v36;
    v52 = (*(v35 + 64) + 32) & ~*(v35 + 64);
    v37 = v56 + v52;
    v54 = 0x8000000252E7BAB0;
    v56 = *(v35 + 56);
    v38 = (v35 - 8);
    v51 = (v35 + 16);
    v39 = MEMORY[0x277D84F90];
    v53 = v36;
    while (1)
    {
      v41 = v35;
      v34(v17, v37, v23);
      v42 = sub_252E347F4();
      if (v43)
      {
        if (v42 == 0xD000000000000013 && v43 == v54)
        {

LABEL_15:
          v34(v55, v17, v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_2529F85CC(0, v39[2] + 1, 1, v39);
          }

          v46 = v39[2];
          v45 = v39[3];
          if (v46 >= v45 >> 1)
          {
            v39 = sub_2529F85CC(v45 > 1, v46 + 1, 1, v39);
          }

          v23 = v57;
          (*v38)(v17, v57);
          v39[2] = v46 + 1;
          v47 = v39 + v52 + v46 * v56;
          v40 = v56;
          (*v51)(v47, v55, v23);
          v34 = v53;
          goto LABEL_9;
        }

        v44 = sub_252E37DB4();

        if (v44)
        {
          goto LABEL_15;
        }
      }

      v23 = v57;
      (*v38)(v17, v57);
      v40 = v56;
LABEL_9:
      v37 += v40;
      --v33;
      v35 = v41;
      if (!v33)
      {
        goto LABEL_21;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
LABEL_21:
  if (v39[2])
  {
    sub_25297BA5C(v39);
  }

  else
  {
  }

  return v50;
}

uint64_t sub_252D02164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v7 = sub_252E34804();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v39 = a2;
  v41 = a2;
  sub_2529A18DC(a3, a1, &v39 - v17);
  sub_252938414(v18, v16, &qword_27F541D70, &unk_252E5B5A0);
  if ((*(v8 + 48))(v16, 1, v7) == 1)
  {
    sub_25293847C(v18, &qword_27F541D70, &unk_252E5B5A0);
    v19 = v16;
LABEL_9:
    result = sub_25293847C(v19, &qword_27F541D70, &unk_252E5B5A0);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    goto LABEL_10;
  }

  (*(v8 + 32))(v11, v16, v7);
  v20 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v20 + 288), v42);

  v21 = v43;
  v22 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v23 = (*(v22 + 88))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v42);
  if ((v23 & 1) == 0 || (sub_252E347E4(), v24 = sub_252C601E4(), v24 == 4))
  {
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544D90);
    sub_252CC4050(0xD000000000000021, 0x8000000252E931D0, 0xD000000000000080, 0x8000000252E93200, 0xD000000000000023, 0x8000000252E93290, 204);
    goto LABEL_8;
  }

  v29 = v24;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544D90);
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E932C0, 0xD000000000000080, 0x8000000252E93200);
  if (!v29)
  {

LABEL_8:
    (*(v8 + 8))(v11, v7);
    v19 = v18;
    goto LABEL_9;
  }

  v33 = sub_252E37DB4();

  if (v33)
  {
    goto LABEL_8;
  }

  v27 = sub_252E347E4();
  v30 = v34;
  v35 = COERCE_DOUBLE(sub_252E34754());
  v37 = v36;
  (*(v8 + 8))(v11, v7);
  result = sub_25293847C(v18, &qword_27F541D70, &unk_252E5B5A0);
  *&v38 = v35;
  v28 = (v38 << 32) | 0x34;
  if (v37)
  {
    v28 = 52;
  }

LABEL_10:
  v31 = v40;
  *v40 = v27;
  v31[1] = v30;
  v31[2] = v28;
  *(v31 + 24) = v29;
  return result;
}

uint64_t sub_252D02644(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84FA0];
  v20 = MEMORY[0x277D84FA0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v17 = *(v9 + 56);
    v18 = v10;
    v10(v6, v11, v2);
    while (1)
    {
      v12 = sub_252E347F4();
      if (v13)
      {
        v19[0] = v12;
        v19[1] = v13;
        MEMORY[0x28223BE20](v12);
        *(&v17 - 2) = v19;
        v14 = sub_2529ED970(sub_25296A69C, (&v17 - 4), &unk_2864A33B8);

        if (v14)
        {
          v15 = sub_252E347E4();
          sub_252DA6CD0(v19, v15, v16);
        }
      }

      (*(v9 - 8))(v6, v2);
      v11 += v17;
      if (!--v8)
      {
        break;
      }

      v18(v6, v11, v2);
    }

    return v20;
  }

  return result;
}

uint64_t sub_252D02830(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = sub_252E34804();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v45 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v45 - v20;
  memcpy(v61, v2, 0x1F8uLL);
  v57 = a1;
  v22 = sub_252D032E4(a1, a2);
  v23 = v22;
  v48 = *(v22 + 16);
  if (!v48)
  {
LABEL_15:

    return 0;
  }

  v59 = v16;
  v60 = 0;
  v45[0] = v21;
  v24 = 0;
  v25 = v58;
  v54 = v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v52 = v58 + 48;
  v53 = v58 + 16;
  v49 = "lue not available";
  v50 = v11;
  v45[1] = 0x8000000252E65390;
  v46 = "ue(for:using:type:)";
  v51 = v22;
  v55 = (v58 + 8);
  v56 = (v58 + 32);
  while (1)
  {
    if (v24 >= *(v23 + 2))
    {
      __break(1u);
      goto LABEL_23;
    }

    v26 = (*(v25 + 16))(v19, v54 + *(v25 + 72) * v24, v12);
    MEMORY[0x28223BE20](v26);
    v45[-2] = v19;
    v27 = v60;
    sub_2529A18DC(sub_252D07CF4, v57, v11);
    sub_252938414(v11, v9, &qword_27F541D70, &unk_252E5B5A0);
    if ((*(v25 + 48))(v9, 1, v12) == 1)
    {
      sub_25293847C(v11, &qword_27F541D70, &unk_252E5B5A0);
      sub_25293847C(v9, &qword_27F541D70, &unk_252E5B5A0);

      v43 = v55;
      v25 = v45[0];
      (*v56)(v45[0], v19, v12);
      goto LABEL_21;
    }

    v60 = v27;
    v23 = v19;
    v28 = v9;
    v29 = v9;
    v9 = v12;
    v47 = *v56;
    v47(v59, v29, v12);
    v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v30 + 288), v61);

    v32 = v61[3];
    v31 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v33 = (*(v31 + 88))(v32, v31);
    __swift_destroy_boxed_opaque_existential_1(v61);
    if ((v33 & 1) == 0 || (sub_252E347E4(), v34 = sub_252C601E4(), v34 == 4))
    {
      v25 = v45[0];
      if (qword_27F53F4F8 == -1)
      {
LABEL_17:
        v42 = sub_252E36AD4();
        __swift_project_value_buffer(v42, qword_27F544D90);
        sub_252CC4050(0xD000000000000021, 0x8000000252E931D0, 0xD000000000000080, v49 | 0x8000000000000000, 0xD000000000000023, 0x8000000252E93290, 204);
        v43 = v55;
        v12 = v9;
        (*v55)(v59, v9);
        sub_25293847C(v50, &qword_27F541D70, &unk_252E5B5A0);

        v19 = v23;
        goto LABEL_20;
      }

LABEL_23:
      swift_once();
      goto LABEL_17;
    }

    v35 = v34;
    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544D90);
    sub_252CC3D90(0xD00000000000002ELL, v46 | 0x8000000000000000, 0xD000000000000080, v49 | 0x8000000000000000);
    v37 = v35;
    if (v35 > 1u)
    {
      v19 = v23;
      goto LABEL_13;
    }

    v19 = v23;
    if (v37 != 1)
    {
      break;
    }

LABEL_13:
    v38 = sub_252E37DB4();

    if (v38)
    {
      goto LABEL_19;
    }

    ++v24;
    sub_252E347E4();
    v39 = v59;
    sub_252E34754();
    v40 = *v55;
    (*v55)(v39, v9);
    v11 = v50;
    sub_25293847C(v50, &qword_27F541D70, &unk_252E5B5A0);
    v12 = v9;

    v40(v19, v9);
    v23 = v51;
    v9 = v28;
    v25 = v58;
    if (v48 == v24)
    {
      goto LABEL_15;
    }
  }

LABEL_19:
  v43 = v55;
  v12 = v9;
  (*v55)(v59, v9);
  sub_25293847C(v50, &qword_27F541D70, &unk_252E5B5A0);

  v25 = v45[0];
LABEL_20:
  v47(v25, v19, v12);
LABEL_21:
  v44 = sub_252E347E4();
  (*v43)(v25, v12);
  return v44;
}

uint64_t sub_252D02F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = sub_252E34804();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v41 = a2;
  sub_2529A18DC(sub_252D0840C, a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25293847C(v12, &qword_27F541D70, &unk_252E5B5A0);
    return (*(v14 + 56))(a3, 1, 1, v13);
  }

  else
  {
    v34 = *(v14 + 32);
    v35 = v14 + 32;
    v34(v20, v12, v13);
    v22 = sub_252E34744();
    v36 = v20;
    v23 = sub_252E347A4();
    v24 = *(a1 + 16);
    v37 = v14;
    if (v24)
    {
      v32 = v10;
      v33 = a3;
      v40 = *(v14 + 16);
      v25 = (v14 + 8);
      v26 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v38 = *(v14 + 72);
      v39 = v22 | ((HIDWORD(v22) & 1) << 32);
      v27 = v23 | ((HIDWORD(v23) & 1) << 32);
      v31 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        v40(v18, v26, v13);
        v28 = sub_252D04374(v18, v39, v27);
        v29 = *v25;
        if (v28)
        {
          break;
        }

        v29(v18, v13);
        v26 += v38;
        if (!--v24)
        {
          v10 = v32;
          a3 = v33;
          goto LABEL_9;
        }
      }

      v29(v36, v13);
      v10 = v32;
      v34(v32, v18, v13);
      v30 = 0;
      a3 = v33;
    }

    else
    {
      v29 = *(v14 + 8);
LABEL_9:
      v29(v36, v13);
      v30 = 1;
    }

    (*(v37 + 56))(v10, v30, 1, v13);
    return sub_25293DDF0(v10, a3, &qword_27F541D70, &unk_252E5B5A0);
  }
}

uint64_t sub_252D032E4(uint64_t a1, uint64_t a2)
{
  v106 = sub_252E34B74();
  v4 = *(v106 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v106);
  v105 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v82 - v8;
  v124 = sub_252E34B94();
  v9 = *(v124 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v124);
  v99 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v12 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v125 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v115 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v107 = &v82 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - v20;
  v122 = sub_252E34804();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v122);
  v87 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v82 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v84 = &v82 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v86 = &v82 - v31;
  MEMORY[0x28223BE20](v30);
  v95 = &v82 - v32;
  v127 = a2;

  result = sub_252E12064(sub_252D07D14, v126, a1);
  v94 = *(result + 16);
  if (!v94)
  {

    return MEMORY[0x277D84F90];
  }

  v34 = 0;
  v92 = *(a1 + 16);
  v35 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v91 = result + v35;
  v121 = v22 + 16;
  v119 = v22 + 8;
  v83 = v35;
  v89 = a1 + v35;
  v114 = *MEMORY[0x277D5E6E0];
  v112 = (v9 + 56);
  v113 = (v9 + 104);
  v36 = (v9 + 48);
  v98 = (v9 + 32);
  v109 = (v9 + 8);
  v103 = *MEMORY[0x277D5E6B0];
  v102 = (v4 + 104);
  v101 = (v4 + 8);
  v85 = (v22 + 32);
  v88 = MEMORY[0x277D84F90];
  v37 = &unk_252E5B5B0;
  v38 = v107;
  v110 = v21;
  v39 = v122;
  v40 = v123;
  v90 = v22;
  v93 = result;
  v111 = v36;
LABEL_5:
  if (v34 < *(result + 16))
  {
    v41 = *(v22 + 72);
    v96 = v34;
    v118 = v41;
    v42 = v95;
    v120 = *(v22 + 16);
    v120(v95, v91 + v41 * v34, v39);
    v100 = sub_252E34744();
    v43 = sub_252E347A4();
    v39 = v122;
    v97 = v43;
    v117 = *(v22 + 8);
    v117(v42, v122);
    if (!v92)
    {
      goto LABEL_4;
    }

    v44 = v89;
    v45 = v92;
    while (1)
    {
      v120(v40, v44, v39);
      sub_252E34794();
      v46 = v38;
      v47 = v38;
      v48 = v21;
      v49 = v124;
      (*v113)(v46, v114, v124);
      (*v112)(v47, 0, 1, v49);
      v50 = *(v116 + 48);
      v51 = v125;
      sub_252938414(v48, v125, &qword_27F541D98, v37);
      sub_252938414(v47, v51 + v50, &qword_27F541D98, v37);
      v52 = *v111;
      if ((*v111)(v51, 1, v49) == 1)
      {
        v53 = v47;
        sub_25293847C(v47, &qword_27F541D98, v37);
        sub_25293847C(v48, &qword_27F541D98, v37);
        v54 = v52(v125 + v50, 1, v124);
        v40 = v123;
        v21 = v48;
        if (v54 != 1)
        {
          goto LABEL_9;
        }

        sub_25293847C(v125, &qword_27F541D98, v37);
      }

      else
      {
        v53 = v47;
        v55 = v125;
        sub_252938414(v125, v115, &qword_27F541D98, v37);
        if (v52(v55 + v50, 1, v124) == 1)
        {
          sub_25293847C(v47, &qword_27F541D98, v37);
          v21 = v48;
          sub_25293847C(v48, &qword_27F541D98, v37);
          (*v109)(v115, v124);
          v40 = v123;
LABEL_9:
          sub_25293847C(v125, &qword_27F543358, &qword_252E4B5B8);
          v38 = v53;
          goto LABEL_10;
        }

        v56 = v125 + v50;
        v57 = v99;
        v58 = v124;
        (*v98)(v99, v56, v124);
        sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708]);
        v59 = v115;
        v108 = sub_252E36EF4();
        v60 = *v109;
        v61 = v57;
        v21 = v110;
        (*v109)(v61, v58);
        v38 = v53;
        sub_25293847C(v53, &qword_27F541D98, v37);
        sub_25293847C(v21, &qword_27F541D98, v37);
        v60(v59, v58);
        sub_25293847C(v125, &qword_27F541D98, v37);
        v40 = v123;
        if ((v108 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v62 = v37;
      v63 = v104;
      sub_252E34784();
      v64 = v105;
      v65 = v106;
      (*v102)(v105, v103, v106);
      v66 = MEMORY[0x2530AB010](v63, v64);
      v67 = *v101;
      v68 = v64;
      v21 = v110;
      (*v101)(v68, v65);
      v69 = v63;
      v37 = v62;
      v70 = v65;
      v38 = v107;
      v67(v69, v70);
      v40 = v123;
      if (v66)
      {
        v71 = sub_252E34744();
        if ((v71 & 0x100000000) != 0)
        {
          if ((v100 & 0x100000000) == 0)
          {
            goto LABEL_10;
          }
        }

        else if ((v100 & 0x100000000) != 0 || v71 != v100)
        {
          goto LABEL_10;
        }

        v72 = sub_252E347A4();
        if ((v72 & 0x100000000) != 0)
        {
          if ((v97 & 0x100000000) != 0)
          {
            goto LABEL_27;
          }
        }

        else if ((v97 & 0x100000000) == 0 && v72 == v97)
        {
LABEL_27:
          v73 = *v85;
          v74 = v84;
          v75 = v122;
          (*v85)(v84, v40, v122);
          v76 = v86;
          v73(v86, v74, v75);
          v120(v87, v76, v75);
          v77 = v88;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_2529F85CC(0, v77[2] + 1, 1, v77);
          }

          v79 = v77[2];
          v78 = v77[3];
          if (v79 >= v78 >> 1)
          {
            v88 = sub_2529F85CC(v78 > 1, v79 + 1, 1, v77);
          }

          else
          {
            v88 = v77;
          }

          v80 = v122;
          v117(v86, v122);
          v81 = v88;
          *(v88 + 16) = v79 + 1;
          v39 = v80;
          v73((v81 + v83 + v79 * v118), v87, v80);
          v22 = v90;
          v40 = v123;
          v37 = v62;
LABEL_4:
          v34 = v96 + 1;
          result = v93;
          if (v96 + 1 == v94)
          {

            return v88;
          }

          goto LABEL_5;
        }
      }

LABEL_10:
      v39 = v122;
      v117(v40, v122);
      v44 += v118;
      if (!--v45)
      {
        v22 = v90;
        goto LABEL_4;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D03E58(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v39 = sub_252E34874();
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_252E34B94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v40 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v32[-v21];
  v36 = a1;
  sub_252E34794();
  (*(v6 + 104))(v20, *MEMORY[0x277D5E6E8], v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v23 = *(v10 + 56);
  sub_252938414(v22, v13, &qword_27F541D98, &unk_252E5B5B0);
  sub_252938414(v20, &v13[v23], &qword_27F541D98, &unk_252E5B5B0);
  v24 = *(v6 + 48);
  if (v24(v13, 1, v5) == 1)
  {
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v22, &qword_27F541D98, &unk_252E5B5B0);
    if (v24(&v13[v23], 1, v5) == 1)
    {
      sub_25293847C(v13, &qword_27F541D98, &unk_252E5B5B0);
LABEL_9:
      v30 = v35;
      sub_252E34774();
      v25 = MEMORY[0x2530AAD20](v30, v38);
      (*(v37 + 8))(v30, v39);
      return v25 & 1;
    }

    goto LABEL_6;
  }

  sub_252938414(v13, v40, &qword_27F541D98, &unk_252E5B5B0);
  if (v24(&v13[v23], 1, v5) == 1)
  {
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v22, &qword_27F541D98, &unk_252E5B5B0);
    (*(v6 + 8))(v40, v5);
LABEL_6:
    sub_25293847C(v13, &qword_27F543358, &qword_252E4B5B8);
    goto LABEL_7;
  }

  v26 = &v13[v23];
  v27 = v34;
  (*(v6 + 32))(v34, v26, v5);
  sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708]);
  v28 = v40;
  v33 = sub_252E36EF4();
  v29 = *(v6 + 8);
  v29(v27, v5);
  sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
  sub_25293847C(v22, &qword_27F541D98, &unk_252E5B5B0);
  v29(v28, v5);
  sub_25293847C(v13, &qword_27F541D98, &unk_252E5B5B0);
  if (v33)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = 0;
  return v25 & 1;
}

BOOL sub_252D04374(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v47 = a3;
  v49 = a2;
  v4 = sub_252E34B74();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v50 = &v45[-v8];
  v9 = sub_252E34B94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v55 = &v45[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v45[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v45[-v25];
  v54 = a1;
  sub_252E34794();
  (*(v10 + 104))(v24, *MEMORY[0x277D5E6E0], v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  v27 = *(v14 + 56);
  sub_252938414(v26, v17, &qword_27F541D98, &unk_252E5B5B0);
  sub_252938414(v24, &v17[v27], &qword_27F541D98, &unk_252E5B5B0);
  v28 = *(v10 + 48);
  if (v28(v17, 1, v9) == 1)
  {
    sub_25293847C(v24, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v26, &qword_27F541D98, &unk_252E5B5B0);
    if (v28(&v17[v27], 1, v9) == 1)
    {
      sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
      goto LABEL_10;
    }

LABEL_6:
    sub_25293847C(v17, &qword_27F543358, &qword_252E4B5B8);
    return 0;
  }

  sub_252938414(v17, v55, &qword_27F541D98, &unk_252E5B5B0);
  if (v28(&v17[v27], 1, v9) == 1)
  {
    sub_25293847C(v24, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v26, &qword_27F541D98, &unk_252E5B5B0);
    (*(v10 + 8))(v55, v9);
    goto LABEL_6;
  }

  v30 = v48;
  (*(v10 + 32))(v48, &v17[v27], v9);
  sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708]);
  v31 = v55;
  v46 = sub_252E36EF4();
  v32 = *(v10 + 8);
  v32(v30, v9);
  sub_25293847C(v24, &qword_27F541D98, &unk_252E5B5B0);
  sub_25293847C(v26, &qword_27F541D98, &unk_252E5B5B0);
  v32(v31, v9);
  sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v33 = v50;
  sub_252E34784();
  v35 = v51;
  v34 = v52;
  v36 = *(v52 + 104);
  v37 = v53;
  v36(v51, *MEMORY[0x277D5E6B0], v53);
  v38 = MEMORY[0x2530AB010](v33, v35);
  v39 = *(v34 + 8);
  v39(v35, v37);
  v39(v33, v37);
  if ((v38 & 1) == 0)
  {
    sub_252E34784();
    *v35 = 0x76726553656D6F48;
    v35[1] = 0xEF61657241656369;
    v36(v35, *MEMORY[0x277D5E698], v37);
    v40 = MEMORY[0x2530AB010](v33, v35);
    v39(v35, v37);
    v39(v33, v37);
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  v41 = sub_252E34744();
  if ((v41 & 0x100000000) == 0)
  {
    v42 = v41;
    result = 0;
    if ((v49 & 0x100000000) != 0 || v42 != v49)
    {
      return result;
    }

    goto LABEL_17;
  }

  if ((v49 & 0x100000000) == 0)
  {
    return 0;
  }

LABEL_17:
  v43 = sub_252E347A4();
  if ((v43 & 0x100000000) != 0)
  {
    return HIDWORD(v47) & 1;
  }

  return (v47 & 0x100000000) == 0 && v43 == v47;
}

BOOL sub_252D049D0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_252E34B94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v38 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v33[-v19];
  v36 = a1;
  sub_252E34794();
  (*(v4 + 104))(v18, *MEMORY[0x277D5E6C8], v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_252938414(v20, v11, &qword_27F541D98, &unk_252E5B5B0);
  sub_252938414(v18, &v11[v21], &qword_27F541D98, &unk_252E5B5B0);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) == 1)
  {
    sub_25293847C(v18, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
    if (v22(&v11[v21], 1, v3) == 1)
    {
      sub_25293847C(v11, &qword_27F541D98, &unk_252E5B5B0);
      goto LABEL_10;
    }

LABEL_6:
    sub_25293847C(v11, &qword_27F543358, &qword_252E4B5B8);
    return 0;
  }

  sub_252938414(v11, v38, &qword_27F541D98, &unk_252E5B5B0);
  if (v22(&v11[v21], 1, v3) == 1)
  {
    sub_25293847C(v18, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
    (*(v4 + 8))(v38, v3);
    goto LABEL_6;
  }

  v24 = &v11[v21];
  v25 = v35;
  (*(v4 + 32))(v35, v24, v3);
  sub_252D07DD4(&qword_27F543368, MEMORY[0x277D5E708]);
  v26 = v38;
  v34 = sub_252E36EF4();
  v27 = *(v4 + 8);
  v27(v25, v3);
  sub_25293847C(v18, &qword_27F541D98, &unk_252E5B5B0);
  sub_25293847C(v20, &qword_27F541D98, &unk_252E5B5B0);
  v27(v26, v3);
  sub_25293847C(v11, &qword_27F541D98, &unk_252E5B5B0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v28 = sub_252E34744();
  v29 = sub_252E34744();
  if ((v28 & 0x100000000) == 0)
  {
    result = 0;
    if ((v29 & 0x100000000) != 0 || v28 != v29)
    {
      return result;
    }

    goto LABEL_15;
  }

  if ((v29 & 0x100000000) == 0)
  {
    return 0;
  }

LABEL_15:
  v30 = sub_252E347A4();
  v31 = sub_252E347A4();
  if ((v30 & 0x100000000) != 0)
  {
    return HIDWORD(v31) & 1;
  }

  return (v31 & 0x100000000) == 0 && v30 == v31;
}

BOOL sub_252D04EA0()
{
  v0 = sub_252E34B94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E347F4();
  v7 = v6;
  (*(v1 + 104))(v4, *MEMORY[0x277D5E6C0], v0);
  v8 = sub_252E34B84();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  if (!v7)
  {

    return 0;
  }

  if (v5 == v8 && v7 == v10)
  {
  }

  else
  {
    v12 = sub_252E37DB4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = sub_252E34744();
  v14 = sub_252E34744();
  if ((v13 & 0x100000000) == 0)
  {
    result = 0;
    if ((v14 & 0x100000000) != 0 || v13 != v14)
    {
      return result;
    }

    goto LABEL_15;
  }

  if ((v14 & 0x100000000) == 0)
  {
    return 0;
  }

LABEL_15:
  v16 = sub_252E347A4();
  v17 = sub_252E347A4();
  v19 = (v17 & 0x100000000) == 0 && v16 == v17;
  if ((v16 & 0x100000000) != 0)
  {
    return BYTE4(v17) & 1;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_252D05090()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 288), v9);

  v1 = v10;
  v2 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v3)
  {
    v4 = sub_252E34A44();
    if (v4)
    {
      if (*(v4 + 16))
      {
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v5 = sub_252E36AD4();
        __swift_project_value_buffer(v5, qword_27F544D90);
        sub_252CC3D90(0xD000000000000034, 0x8000000252E937C0, 0xD000000000000077, 0x8000000252E92DE0);
        sub_252E34B04();
        v6 = sub_252E34AE4();

        v7 = sub_252A491E4(v6, MEMORY[0x277D84F90], 0, 0);

        return v7;
      }
    }
  }

  result = sub_252E34A64();
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_252D05234()
{
  v0 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v0 + 288), v50);

  v1 = v51;
  v2 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v50);
  if (v3)
  {
    sub_252E34644();
    v4 = sub_252E359F4();

    if (*(v4 + 16))
    {
      v5 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
      if (v6)
      {
        v7 = *(*(v4 + 56) + 8 * v5);

        if (v7 >> 62)
        {
          goto LABEL_33;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
        {
          v9 = 0;
          v10 = MEMORY[0x277D84F90];
          while ((v7 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v9, v7);
            v12 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_27;
            }

LABEL_12:
            v13 = sub_252E35914();

            v14 = *(v13 + 16);
            v15 = v10[2];
            v16 = v15 + v14;
            if (__OFADD__(v15, v14))
            {
              goto LABEL_29;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v16 <= v10[3] >> 1)
            {
              if (*(v13 + 16))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v15 <= v16)
              {
                v18 = v15 + v14;
              }

              else
              {
                v18 = v15;
              }

              v10 = sub_2529F85F4(isUniquelyReferenced_nonNull_native, v18, 1, v10);
              if (*(v13 + 16))
              {
LABEL_21:
                v19 = (v10[3] >> 1) - v10[2];
                v20 = *(sub_252E34724() - 8);
                if (v19 < v14)
                {
                  goto LABEL_31;
                }

                v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
                v22 = *(v20 + 72);
                swift_arrayInitWithCopy();

                if (v14)
                {
                  v23 = v10[2];
                  v24 = __OFADD__(v23, v14);
                  v25 = v23 + v14;
                  if (v24)
                  {
                    goto LABEL_32;
                  }

                  v10[2] = v25;
                }

                goto LABEL_8;
              }
            }

            if (v14)
            {
              goto LABEL_30;
            }

LABEL_8:
            ++v9;
            if (v12 == i)
            {
              goto LABEL_35;
            }
          }

          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v11 = *(v7 + 8 * v9 + 32);

          v12 = v9 + 1;
          if (!__OFADD__(v9, 1))
          {
            goto LABEL_12;
          }

LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          ;
        }

        v10 = MEMORY[0x277D84F90];
LABEL_35:

        if (v10[2])
        {
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v26 = sub_252E36AD4();
          __swift_project_value_buffer(v26, qword_27F544D90);
          sub_252CC3D90(0xD000000000000037, 0x8000000252E93560, 0xD000000000000077, 0x8000000252E92DE0);
          sub_252E34B04();
          v27 = sub_252E34AE4();

          v28 = sub_252A491E4(v27, MEMORY[0x277D84F90], 0, 0);
          goto LABEL_74;
        }
      }
    }
  }

  sub_252E34644();
  v29 = sub_252E359F4();

  if (*(v29 + 16))
  {
    v30 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
    if (v31)
    {
      v32 = *(*(v29 + 56) + 8 * v30);

      if (v32 >> 62)
      {
        goto LABEL_72;
      }

      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
LABEL_73:
        v28 = MEMORY[0x277D84F90];
LABEL_74:

        return v28;
      }

LABEL_44:
      v34 = 0;
      v28 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v34, v32);
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_65:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v33 = sub_252E378C4();
            if (!v33)
            {
              goto LABEL_73;
            }

            goto LABEL_44;
          }

          v35 = *(v32 + 8 * v34 + 32);

          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_65;
          }
        }

        v37 = sub_252E358F4();

        v38 = *(v37 + 16);
        v39 = v28[2];
        v40 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_68;
        }

        v41 = swift_isUniquelyReferenced_nonNull_native();
        if (v41 && v40 <= v28[3] >> 1)
        {
          if (!*(v37 + 16))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v39 <= v40)
          {
            v42 = v39 + v38;
          }

          else
          {
            v42 = v39;
          }

          v28 = sub_2529F85CC(v41, v42, 1, v28);
          if (!*(v37 + 16))
          {
LABEL_45:

            if (v38)
            {
              goto LABEL_69;
            }

            goto LABEL_46;
          }
        }

        v43 = (v28[3] >> 1) - v28[2];
        v44 = *(sub_252E34804() - 8);
        if (v43 < v38)
        {
          goto LABEL_70;
        }

        v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = *(v44 + 72);
        swift_arrayInitWithCopy();

        if (v38)
        {
          v47 = v28[2];
          v24 = __OFADD__(v47, v38);
          v48 = v47 + v38;
          if (v24)
          {
            goto LABEL_71;
          }

          v28[2] = v48;
        }

LABEL_46:
        ++v34;
        if (v36 == v33)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D057E4(uint64_t a1)
{
  v2 = sub_252E36AD4();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D84FA0];
  v10 = *(a1 + 16);
  v37 = a1;
  if (!v10)
  {
    v41 = MEMORY[0x277D84FA0];
    v40 = 0;
    goto LABEL_18;
  }

  v40 = 0;
  v11 = 0;
  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v42 = 0x8000000252E74CB0;
  v43 = v13;
  v15 = *(v12 + 56);
  v16 = (v12 - 8);
  v17 = -v10;
  v18 = a1 + v14;
  v41 = MEMORY[0x277D84FA0];
  v35 = v18;
  v36 = v2;
  while (2)
  {
    v19 = v18 + v15 * v11++;
    while (1)
    {
      v43(v9, v19, v5);
      v20 = sub_252E347F4();
      if (!v21)
      {
        goto LABEL_4;
      }

      if (v20 == 0xD000000000000013 && v21 == v42)
      {
        break;
      }

      v22 = sub_252E37DB4();

      if (v22)
      {
        goto LABEL_11;
      }

LABEL_4:
      (*v16)(v9, v5);
LABEL_5:
      ++v11;
      v19 += v15;
      if (v17 + v11 == 1)
      {
        v2 = v36;
        goto LABEL_18;
      }
    }

LABEL_11:
    v23._countAndFlagsBits = sub_252E347E4();
    StateSemantic.init(rawValue:)(v23);
    if (v44 == 77)
    {
      goto LABEL_4;
    }

    sub_252DA7E00(&v44, v44);
    v24 = v46;
    v25 = sub_252DA0454(0, v46);
    v41 = v24;
    if ((v25 & 1) == 0)
    {
      goto LABEL_4;
    }

    v26 = sub_252DA0454(56, v24);
    (*v16)(v9, v5);
    if ((v26 & 1) == 0)
    {
      goto LABEL_5;
    }

    v40 = 1;
    v18 = v35;
    v2 = v36;
    if (v17 + v11)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v2, qword_27F544D90);
  v29 = v38;
  v28 = v39;
  (*(v39 + 16))(v38, v27, v2);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x696669746E656449, 0xEC00000020737265);
  v30 = v40 & 1;
  if (v40)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0x74276E6F64;
  }

  if (v40)
  {
    v32 = 0xE000000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v31, v32);

  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E93800);
  v33 = MEMORY[0x2530AD730](v37, v5);
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v44, v45, 0xD000000000000077, 0x8000000252E92DE0);

  (*(v28 + 8))(v29, v2);

  return v30;
}

uint64_t sub_252D05C24@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455D0, &unk_252E5B640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_252E35114();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v30 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  if (!sub_252E35444())
  {
    goto LABEL_4;
  }

  memcpy(v33, v1, sizeof(v33));
  sub_252CEE320(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_25293847C(v15, &qword_27F541AF8, &qword_252E419F8);
LABEL_4:
    v18 = 0;
    v19 = 1;
    goto LABEL_6;
  }

  sub_252E35834();

  v19 = v33[1];
  v20 = v16;
  v18 = v33[0];
  (*(v17 + 8))(v15, v20);
LABEL_6:
  if (!sub_252E35434())
  {
LABEL_9:
    v22 = 4;
    goto LABEL_10;
  }

  sub_252E35104();

  v21 = v31;
  if ((*(v31 + 48))(v5, 1, v6) == 1)
  {
    sub_25293847C(v5, &qword_27F5455D0, &unk_252E5B640);
    goto LABEL_9;
  }

  v27 = *(v21 + 32);
  v27(v11, v5, v6);
  v28 = v30;
  v27(v30, v11, v6);
  v29 = (*(v21 + 88))(v28, v6);
  if (v29 == *MEMORY[0x277D5F078])
  {
    v22 = 3;
  }

  else if (v29 == *MEMORY[0x277D5F068])
  {
    v22 = 1;
  }

  else
  {
    if (v29 != *MEMORY[0x277D5F070])
    {
      (*(v21 + 8))(v28, v6);
      goto LABEL_9;
    }

    v22 = 2;
  }

LABEL_10:
  if (v19)
  {
    v23 = 1;
    v24 = v32;
  }

  else
  {
    v33[0] = v18;
    LOBYTE(v33[1]) = 0;
    v34 = v22;
    sub_252AD617C();
    v24 = v32;
    sub_252E35824();
    v23 = 0;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_252D0607C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v46 - v10;
  result = MEMORY[0x28223BE20](v9);
  v56 = &v46 - v12;
  if (!a1)
  {
    goto LABEL_37;
  }

  result = sub_252E34A64();
  if (!result)
  {

    goto LABEL_37;
  }

  v13 = result;
  v47 = a2;
  v48 = a1;
  v14 = MEMORY[0x277D84F90];
  v51 = *(result + 16);
  if (!v51)
  {
LABEL_23:

    v28 = *(v14 + 16);
    if (v28)
    {
      v57 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v28, 0);
      v29 = v57;
      v31 = *(v5 + 16);
      v30 = v5 + 16;
      v32 = v14 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
      v55 = *(v30 + 56);
      v56 = v31;
      v53 = v14;
      v54 = (v30 - 8);
      do
      {
        v33 = v52;
        v34 = v30;
        (v56)(v52, v32, v4);
        v35 = sub_252E347E4();
        v37 = v36;
        v38 = v4;
        (*v54)(v33, v4);
        v57 = v29;
        v40 = v29[2];
        v39 = v29[3];
        if (v40 >= v39 >> 1)
        {
          sub_2529AA3A0((v39 > 1), v40 + 1, 1);
          v29 = v57;
        }

        v29[2] = v40 + 1;
        v41 = &v29[2 * v40];
        v41[4] = v35;
        v41[5] = v37;
        v32 += v55;
        --v28;
        v4 = v38;
        v30 = v34;
      }

      while (v28);
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    if (v29[2])
    {
      v43 = v29[4];
      v42 = v29[5];

      if (v43 == 0x4373656572676564 && v42 == 0xEE00737569736C65 || (sub_252E37DB4() & 1) != 0)
      {

        v44 = 1;
        a2 = v47;
LABEL_38:
        *a2 = v44;
        return result;
      }

      a2 = v47;
      if (v43 == 0xD000000000000011 && 0x8000000252E67E40 == v42 || (sub_252E37DB4() & 1) != 0)
      {

        v44 = 2;
        goto LABEL_38;
      }

      if (v43 == 0x4773656572676564 && v42 == 0xEE00636972656E65)
      {

        v44 = 3;
        goto LABEL_38;
      }

      v45 = sub_252E37DB4();

      if (v45)
      {
        v44 = 3;
        goto LABEL_38;
      }
    }

    else
    {

      a2 = v47;
    }

LABEL_37:
    v44 = 4;
    goto LABEL_38;
  }

  v15 = 0;
  v49 = (v5 + 8);
  v50 = v5 + 16;
  v53 = 0x8000000252E7B580;
  v54 = (v5 + 32);
  while (v15 < *(v13 + 16))
  {
    v16 = v14;
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = *(v5 + 72);
    (*(v5 + 16))(v56, v13 + v17 + v18 * v15, v4);
    v19 = sub_252E347F4();
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    if (v21 == 0xD000000000000013 && v53 == v22)
    {

LABEL_18:
      v24 = *v54;
      (*v54)(v55, v56, v4);
      v14 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA640(0, v16[2] + 1, 1);
        v14 = v57;
      }

      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2529AA640(v26 > 1, v27 + 1, 1);
        v14 = v57;
      }

      *(v14 + 16) = v27 + 1;
      result = (v24)(v14 + v17 + v27 * v18, v55, v4);
      goto LABEL_6;
    }

    v23 = sub_252E37DB4();

    if (v23)
    {
      goto LABEL_18;
    }

    result = (*v49)(v56, v4);
    v14 = v16;
LABEL_6:
    if (v51 == ++v15)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D0661C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545578, &qword_252E5B600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v46 - v4;
  v5 = sub_252E350C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - v10;
  v55 = sub_252E34804();
  v52 = *(v55 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544D60);
  sub_252CC3D90(0xD000000000000023, 0x8000000252E93750, 0xD000000000000077, 0x8000000252E92DE0);
  v59 = MEMORY[0x277D84FA0];
  v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v15 + 288), &v56);

  v16 = v57;
  v17 = v58;
  __swift_project_boxed_opaque_existential_1(&v56, v57);
  v18 = (*(v17 + 88))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  if ((v18 & 1) == 0 || (v19 = sub_252E34A44()) == 0)
  {
LABEL_11:
    v22 = sub_252E34A64();
    if (!v22)
    {
      v22 = MEMORY[0x277D84F90];
    }

    v23 = *(v22 + 16);
    if (!v23)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (!*(v19 + 16))
  {

    goto LABEL_11;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_27F544D90);
  sub_252CC3D90(0xD000000000000036, 0x8000000252E93780, 0xD000000000000077, 0x8000000252E92DE0);
  sub_252E34B04();
  v20 = sub_252E34AE4();

  v21 = sub_252A491E4(v20, MEMORY[0x277D84F90], 0, 0);

  v22 = v21;
  v23 = *(v21 + 2);
  if (v23)
  {
LABEL_14:
    v49 = a1;
    v50 = v6;
    v24 = v52 + 16;
    v25 = *(v52 + 16);
    v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v51 = v5;
    v52 = v22;
    v27 = v22 + v26;
    v28 = *(v24 + 56);
    v29 = (v24 - 8);
    v25(v13, v22 + v26, v55);
    while (1)
    {
      v30 = sub_252E347F4();
      if (!v31)
      {
        break;
      }

      if (v30 == 0xD000000000000018 && v31 == 0x8000000252E65730)
      {
      }

      else
      {
        v32 = sub_252E37DB4();

        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      v33 = sub_252E347E4();
      sub_252DA6CD0(&v56, v33, v34);

      (*v29)(v13, v55);
      *(v54 + 385) = 1;
LABEL_16:
      v27 += v28;
      if (!--v23)
      {

        v6 = v50;
        v5 = v51;
        goto LABEL_25;
      }

      v25(v13, v27, v55);
    }

    (*v29)(v13, v55);
    goto LABEL_16;
  }

LABEL_9:

LABEL_25:
  v35 = sub_252E34D84();
  v36 = v53;
  if (!v35 || (v37 = sub_252E34F24(), , !v37))
  {
    (*(v6 + 56))(v36, 1, 1, v5);
    goto LABEL_31;
  }

  sub_252E350B4();

  if ((*(v6 + 48))(v36, 1, v5) == 1)
  {
LABEL_31:
    sub_25293847C(v36, &qword_27F545578, &qword_252E5B600);
    goto LABEL_32;
  }

  v38 = v47;
  (*(v6 + 32))(v47, v36, v5);
  v39 = v48;
  (*(v6 + 16))(v48, v38, v5);
  v40 = (*(v6 + 88))(v39, v5);
  if (v40 == *MEMORY[0x277D5F008])
  {
    v41 = v38;
  }

  else
  {
    if (v40 != *MEMORY[0x277D5F000])
    {
      v45 = *(v6 + 8);
      v45(v38, v5);
      v45(v48, v5);
      goto LABEL_32;
    }

    v41 = v38;
  }

  v44 = sub_252C75848(v43);

  sub_252D06CD8(v44);
  (*(v6 + 8))(v41, v5);
LABEL_32:
  result = v59;
  *(v54 + 388) = *(v59 + 16) != 0;
  return result;
}

uint64_t sub_252D06CD8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_252DA6CD0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_252D06DDC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_252D06E64(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_252D06DDC(v13, v7, v5, a3);
  result = MEMORY[0x2530AED00](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252D06FD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v24 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 16 * v12 + 8);
    v14 = v12;
    v15 = *(*(a3 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();

    v16 = sub_252D078FC(v15);

    v17 = *(v16 + 16);

    if (v17)
    {

      v19 = sub_252D078FC(v18);

      v20 = *(v19 + 16);

      v7 = v26;
      if (v20 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {

      v7 = v26;
LABEL_15:
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_252BBEBEC(v23, a2, v24, a3);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_252BBEBEC(v23, a2, v24, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D071AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v23 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 16 * v12 + 8);
    v24 = v12;
    v14 = *(*(a3 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();

    v15 = sub_252D078FC(v14);

    v16 = *(v15 + 16);

    if (v16)
    {

      v18 = sub_252D078FC(v17);

      v19 = *(v18 + 16);

      if (v19 == 1)
      {
        *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_252BBEBEC(v22, a2, v23, a3);
        }
      }
    }

    else
    {
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_252BBEBEC(v22, a2, v23, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D0737C(uint64_t a1, uint64_t a2)
{
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v5 = *(v18 + v3);
      v6 = *(a2 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      v7 = sub_252E37F14();
      v8 = -1 << *(a2 + 32);
      v9 = v7 & ~v8;
      if ((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        break;
      }
    }

LABEL_3:
    if (++v3 == v19)
    {
      return 0;
    }
  }

  v10 = ~v8;
  while (1)
  {
    v20 = *(*(a2 + 48) + v9);
    v11 = StateSemantic.rawValue.getter();
    v13 = v12;
    if (v11 == StateSemantic.rawValue.getter() && v13 == v14)
    {
      break;
    }

    v16 = sub_252E37DB4();

    if (v16)
    {
      return v3;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v4 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v3;
}

uint64_t sub_252D07538(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_252D0737C(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v27 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v30 = a2 + 56;
    while (1)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        return v8;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      v28 = v5 + 32;
      v29 = v5;
      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }

      v12 = *(v28 + v9);
      v13 = *(a2 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v14 = -1 << *(a2 + 32);
      v15 = result & ~v14;
      if ((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        while (1)
        {
          v31 = *(*(a2 + 48) + v15);
          v17 = StateSemantic.rawValue.getter();
          v19 = v18;
          if (v17 == StateSemantic.rawValue.getter() && v19 == v20)
          {
            break;
          }

          v22 = sub_252E37DB4();

          if (v22)
          {
            goto LABEL_31;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_31:
        v5 = v29;
        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_20:
        if (v8 == v9)
        {
          v5 = v29;
          v10 = __OFADD__(v8++, 1);
          if (v10)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v5 = v29;
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v23 = *(v29 + 16);
          if (v8 >= v23)
          {
            goto LABEL_39;
          }

          if (v9 >= v23)
          {
            goto LABEL_40;
          }

          v24 = *(v28 + v8);
          v25 = *(v28 + v9);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_252D57AE8(v29);
            v5 = result;
          }

          v26 = v5 + 32;
          *(v26 + v8) = v25;
          *(v26 + v9) = v24;
          *v27 = v5;
          v10 = __OFADD__(v8++, 1);
          if (v10)
          {
            goto LABEL_37;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          goto LABEL_36;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252D077A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2529AA480(0, v4, 0);
    v5 = v18;
    v9 = (a1 + 32);
    for (i = v4 - 1; ; --i)
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(__src, v9, sizeof(__src));
      sub_2529353AC(__dst, v14);
      sub_2529353AC(__dst, v14);
      sub_252CEA530(&__src[24], a3, a4);
      sub_252935408(__dst);
      memcpy(v17, __src, sizeof(v17));
      v18 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2529AA480((v11 > 1), v12 + 1, 1);
        v5 = v18;
      }

      *(v5 + 16) = v12 + 1;
      memcpy((v5 + 504 * v12 + 32), v17, 0x1F8uLL);
      if (!i)
      {
        break;
      }

      v9 += 504;
    }
  }

  return v5;
}

uint64_t sub_252D078FC(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v42 - v7;
  v8 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v3 + 16);
  v10 = v3 + 16;
  v44 = *(v10 + 64);
  v12 = *(v10 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v11;
  v13 = a1 + v47;
  v51 = (v10 + 16);
  v43 = xmmword_252E3C290;
  v45 = v2;
  v46 = v10;
  v50 = v12;
  while (1)
  {
    v48(v52, v13, v2);
    v17 = sub_252E347A4();
    v18 = v17;
    v19 = HIDWORD(v17) & 1;
    v20 = v17;
    v22 = sub_252A45430(v17 | (v19 << 32));
    v23 = v8[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v8[3] < v25)
    {
      sub_252DFFC2C(v25, 1);
      v8 = v53;
      v27 = sub_252A45430(v20 | (v19 << 32));
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {
      v29 = v8[7];
      v30 = *v51;
      (*v51)(v49, v52, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_2529F85CC(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_2529F85CC(v33 > 1, v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v14 + v34 * v50;
      v2 = v45;
      v30(v16, v49, v45);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540250, &qword_252E3C080);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v52, v2);
      v8[(v22 >> 6) + 8] |= 1 << v22;
      v37 = v8[6] + 8 * v22;
      *v37 = v18;
      *(v37 + 4) = v19;
      *(v8[7] + 8 * v22) = v36;
      v38 = v8[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v8[2] = v40;
      v15 = v50;
    }

    v13 += v15;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

unint64_t sub_252D07C78()
{
  result = qword_27F545528;
  if (!qword_27F545528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543360, &unk_252E5B590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545528);
  }

  return result;
}

unint64_t sub_252D07D54()
{
  result = qword_27F545538;
  if (!qword_27F545538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545538);
  }

  return result;
}

uint64_t sub_252D07DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252D07DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252D07E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_252D07E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_252D07EE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6F547472617473 && a2 == 0xEF7865646E496E65;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6F54646E65 && a2 == 0xED00007865646E49 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000252E93860 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_252D08060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545610, &qword_252E5B718);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D0827C();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v11 = sub_252E37C44();
  v25 = 1;
  v12 = sub_252E37C44();
  v24 = 2;
  v13 = sub_252E37BD4();
  v22 = v14;
  v21 = v13;
  v23 = 3;
  v15 = sub_252E37BA4();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22 & 1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  return result;
}

unint64_t sub_252D0827C()
{
  result = qword_27F545618;
  if (!qword_27F545618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545618);
  }

  return result;
}

unint64_t sub_252D082E4()
{
  result = qword_27F545628;
  if (!qword_27F545628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545628);
  }

  return result;
}

unint64_t sub_252D0833C()
{
  result = qword_27F545630;
  if (!qword_27F545630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545630);
  }

  return result;
}

unint64_t sub_252D08394()
{
  result = qword_27F545638;
  if (!qword_27F545638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545638);
  }

  return result;
}

uint64_t sub_252D0842C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v105 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v105 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v105 - v13;
  v15 = [v0 type];
  if (v15 > 3)
  {
    if ((v15 - 5) < 2)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v33 = sub_252E36AD4();
      __swift_project_value_buffer(v33, qword_27F544D60);
      sub_252CC4050(0xD000000000000045, 0x8000000252E93950, 0xD00000000000008CLL, 0x8000000252E938C0, 0x726F465441436F74, 0xED0000292874616DLL, 49);
      return 0;
    }

    if (v15 != 4)
    {
LABEL_15:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v52 = sub_252E36AD4();
      __swift_project_value_buffer(v52, qword_27F544D60);
      v106 = 0;
      v107 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E93880);
      v53 = [v0 description];
      v54 = sub_252E36F34();
      v56 = v55;

      MEMORY[0x2530AD570](v54, v56);

      sub_252CC4050(v106, v107, 0xD00000000000008CLL, 0x8000000252E938C0, 0x726F465441436F74, 0xED0000292874616DLL, 51);

      return 0;
    }

    v34 = [v0 integerValue];
    [v0 unit];
    v35 = type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_252D857C4();
    *(v38 + 16) = v34;
    *(v38 + 24) = 0;
    sub_252E37024();

    v63 = sub_252E36324();
    v64 = *(*(v63 - 8) + 56);
    v64(v14, 0, 1, v63);
    sub_2529439A0(v14, v12);
    v65 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
    swift_beginAccess();
    sub_252956C98(v12, v38 + v65);
    swift_endAccess();
    *(v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = 0;
    *(v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = 0;
    *(v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = 0;
    *(v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = 0;
    v66 = v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
    *v66 = 0;
    *(v66 + 8) = 1;
    v67 = v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
    *v67 = 0;
    *(v67 + 8) = 1;
    v68 = v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
    *v68 = 0;
    *(v68 + 8) = 1;
    v69 = v38 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
    *v69 = 0;
    *(v69 + 8) = 1;
    v64(v12, 1, 1, v63);
    v70 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
    swift_beginAccess();
    sub_252956C98(v12, v38 + v70);
    swift_endAccess();
    v71 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v74 = sub_252D859B8(v38);
    v75 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    v78 = swift_allocObject();
    v79 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    v64((v78 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue), 1, 1, v63);
    *(v78 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
    v80 = type metadata accessor for HomeAutomationEntityStateValue(0);
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    swift_beginAccess();
    sub_252956C1C(v78 + v79, v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    swift_setDeallocating();
    v84 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
LABEL_20:
    sub_252938BBC(v78 + v84);
    v103 = *(*v78 + 48);
    v104 = *(*v78 + 52);
    swift_deallocClassInstance();
    result = v83;
    *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = v74;
    *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = 0;
    return result;
  }

  if (v15 == 1)
  {
    v39 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    v44 = sub_252E36324();
    (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
    *(v42 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
    v45 = [v0 BOOLValue];
    v46 = type metadata accessor for HomeAutomationEntityStateValue(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    swift_beginAccess();
    sub_252956C1C(v42 + v43, v49 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    swift_setDeallocating();
    sub_252938BBC(v42 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
    v50 = *(*v42 + 48);
    v51 = *(*v42 + 52);
    swift_deallocClassInstance();
    result = v49;
    *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = 0;
    *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v45;
    return result;
  }

  if (v15 == 2)
  {
    [v0 doubleValue];
    v58 = v57;
    [v0 unit];
    v59 = type metadata accessor for HomeAutomationAbstractMeasurement.Builder(0);
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = sub_252D857C4();
    *(v62 + 16) = v58;
    *(v62 + 24) = 0;
    sub_252E37024();

    v85 = sub_252E36324();
    v86 = *(*(v85 - 8) + 56);
    v86(v9, 0, 1, v85);
    sub_2529439A0(v9, v12);
    v87 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_unit;
    swift_beginAccess();
    sub_252956C98(v12, v62 + v87);
    swift_endAccess();
    *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumTargetTemperatureThreshold) = 0;
    *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumTargetTemperatureThreshold) = 0;
    *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsBelowMinimumHeatingThreshold) = 0;
    *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_targetIsAboveMaximumCoolingThreshold) = 0;
    v88 = v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumTargetTemperature;
    *v88 = 0;
    *(v88 + 8) = 1;
    v89 = v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumTargetTemperature;
    *v89 = 0;
    *(v89 + 8) = 1;
    v90 = v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_minimumHeatingTemperature;
    *v90 = 0;
    *(v90 + 8) = 1;
    v91 = v62 + OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_maximumCoolingTemperature;
    *v91 = 0;
    *(v91 + 8) = 1;
    v86(v12, 1, 1, v85);
    v92 = OBJC_IVAR____TtCC22HomeAutomationInternal33HomeAutomationAbstractMeasurement7Builder_requestType;
    swift_beginAccess();
    sub_252956C98(v12, v62 + v92);
    swift_endAccess();
    v93 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();
    v74 = sub_252D859B8(v62);
    v96 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    v78 = swift_allocObject();
    v99 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    v86((v78 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue), 1, 1, v85);
    *(v78 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
    v100 = type metadata accessor for HomeAutomationEntityStateValue(0);
    v101 = *(v100 + 48);
    v102 = *(v100 + 52);
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    swift_beginAccess();
    sub_252956C1C(v78 + v99, v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    swift_setDeallocating();
    v84 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    goto LABEL_20;
  }

  if (v15 != 3)
  {
    goto LABEL_15;
  }

  v16 = type metadata accessor for HomeAutomationEntityStateValue.Builder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v21 = sub_252E36324();
  v22 = *(*(v21 - 8) + 56);
  v23 = 1;
  v22(v19 + v20, 1, 1, v21);
  v24 = [v1 stringValue];
  if (v24)
  {
    v25 = v24;
    sub_252E36F34();

    sub_252E37024();

    v23 = 0;
  }

  v22(v6, v23, 1, v21);
  sub_2529439A0(v6, v12);
  swift_beginAccess();
  sub_252956C98(v12, v19 + v20);
  swift_endAccess();
  v26 = type metadata accessor for HomeAutomationEntityStateValue(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  sub_252956C1C(v19 + v20, v29 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  swift_setDeallocating();
  sub_252938BBC(v19 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
  v30 = *(*v19 + 48);
  v31 = *(*v19 + 52);
  swift_deallocClassInstance();
  result = v29;
  *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = 0;
  *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = 0;
  return result;
}

Swift::String __swiftcall HomeAttributeUnit.toString()()
{
  if (v0 <= 2)
  {
    if (v0 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x746E6563726570;
      goto LABEL_13;
    }

    if (v0 == 2)
    {
      v1 = 0xEA00000000007469;
      v2 = 0x65686E6572686166;
      goto LABEL_13;
    }

LABEL_12:
    v1 = 0xE700000000000000;
    v2 = 0x6E776F6E6B6E75;
    goto LABEL_13;
  }

  if (v0 == 3)
  {
    v1 = 0xE700000000000000;
    v2 = 0x737569736C6563;
    goto LABEL_13;
  }

  if (v0 == 4)
  {
    v1 = 0xE300000000000000;
    v2 = 7894380;
    goto LABEL_13;
  }

  if (v0 != 5)
  {
    goto LABEL_12;
  }

  v1 = 0xE700000000000000;
  v2 = 0x73646E6F636573;
LABEL_13:
  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

void sub_252D09214(uint64_t a1@<X8>)
{
  v3 = [v1 type];
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v11 = [v1 BOOLValue];
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = v11;
      return;
    }

    if (v3 == 2)
    {
      [v1 doubleValue];
      *(a1 + 24) = MEMORY[0x277D839F8];
      *a1 = v4;
      return;
    }

    goto LABEL_8;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v5 = [v1 integerValue];
      *(a1 + 24) = MEMORY[0x277D83B88];
      *a1 = v5;
      return;
    }

LABEL_8:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E939A0);
    v7 = [v1 description];
    v8 = sub_252E36F34();
    v10 = v9;

    MEMORY[0x2530AD570](v8, v10);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008CLL, 0x8000000252E938C0, 0x6C61567761526F74, 0xEC00000029286575, 75);

    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v12 = [v1 stringValue];
  if (v12)
  {
    v13 = v12;
    v14 = sub_252E36F34();
    v16 = v15;

    *(a1 + 24) = MEMORY[0x277D837D0];
    if (v16)
    {
      *a1 = v14;
      *(a1 + 8) = v16;
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x277D837D0];
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
}

void sub_252D09498(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setIntegerValue_];
  [v8 setUnit_];
  [v8 setType_];

  *a3 = v8;
}

void sub_252D0956C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setType_];
  [v8 setLimitValue_];

  *a3 = v8;
}

BOOL static HomeAttributeRange.== infix(_:_:)(void *a1, void *a2)
{
  [a1 lowerValue];
  v5 = v4;
  [a2 lowerValue];
  if (v5 != v6)
  {
    return 0;
  }

  [a1 upperValue];
  v8 = v7;
  [a2 upperValue];
  return v8 == v9;
}

uint64_t _s22HomeAutomationInternal0A14AttributeValueC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = [a1 type];
  if (v4 != [a2 type])
  {
    return 0;
  }

  v5 = [a1 BOOLValue];
  if (v5 != [a2 BOOLValue])
  {
    return 0;
  }

  v6 = [a1 integerValue];
  if (v6 != [a2 integerValue])
  {
    return 0;
  }

  [a1 doubleValue];
  v8 = v7;
  [a2 doubleValue];
  if (v8 != v9)
  {
    return 0;
  }

  v10 = [a1 integerValue];
  if (v10 != [a2 integerValue])
  {
    return 0;
  }

  v11 = [a1 stringValue];
  if (v11)
  {
    v12 = v11;
    v13 = sub_252E36F34();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a2 stringValue];
  if (!v16)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v17 = v16;
  v18 = sub_252E36F34();
  v20 = v19;

  if (!v15)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_18:

    return 0;
  }

  if (v13 != v18 || v15 != v20)
  {
    v21 = sub_252E37DB4();

    if (v21)
    {
      goto LABEL_20;
    }

    return 0;
  }

LABEL_20:
  v22 = [a1 unit];
  if (v22 != [a2 unit])
  {
    return 0;
  }

  v23 = [a1 limitValue];
  if (v23 != [a2 limitValue])
  {
    return 0;
  }

  v24 = [a1 rangeValue];
  v25 = [a2 rangeValue];
  v26 = v25;
  if (v24)
  {
    if (!v25)
    {

      return 0;
    }

    type metadata accessor for HomeAttributeRange();
    v27 = sub_252E37694();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
LABEL_27:

    return 0;
  }

  v28 = [a1 cleaningJob];
  v25 = [a2 cleaningJob];
  v29 = v25;
  if (v28)
  {
    if (v25)
    {
      type metadata accessor for HomeAttributeCleaningJob();
      v30 = sub_252E37694();

      return v30 & 1;
    }

    return 0;
  }

  if (v25)
  {
    goto LABEL_27;
  }

  return 1;
}

uint64_t sub_252D099D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_252E33C44();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D09AA0, 0, 0);
}

uint64_t sub_252D09AA0()
{
  v42 = v0;
  v2 = [*(v0 + 136) userTask];
  if (!v2)
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 136);
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D18);
    sub_252E379F4();

    v41[0] = 0xD000000000000020;
    v41[1] = 0x8000000252E93B00;
    v10 = v8;
    v11 = [v10 description];
    v12 = sub_252E36F34();
    v14 = v13;

    MEMORY[0x2530AD570](v12, v14);

    sub_252CC4050(0xD000000000000020, 0x8000000252E93B00, 0xD00000000000008FLL, 0x8000000252E93A20, 0xD00000000000004BLL, 0x8000000252E93AB0, 113);

    v7 = 8;
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v2 attribute];

  sub_252B680FC();
  sub_252B65874(v41);

  v5 = v41[0];
  if (LOBYTE(v41[0]) == 77)
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D18);
    sub_252CC4050(0xD000000000000033, 0x8000000252E939E0, 0xD00000000000008FLL, 0x8000000252E93A20, 0xD00000000000004BLL, 0x8000000252E93AB0, 118);
    v7 = 7;
LABEL_9:
    sub_2529318DC();
    swift_allocError();
    *v15 = v7;
    swift_willThrow();
    v16 = *(v0 + 160);

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = sub_252B680FC();
  swift_beginAccess();
  v20 = *(v19 + 32);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_14;
    }

LABEL_25:

    v20 = 0;
    goto LABEL_26;
  }

  if (v20 < 0)
  {
    v25 = *(v19 + 32);
  }

  v21 = sub_252E378C4();
  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_14:
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else if ((v20 & 0xC000000000000001) == 0)
  {
    if (v22 < 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_50;
    }

    v23 = *(v20 + 8 * v22 + 32);
    goto LABEL_19;
  }

  v23 = MEMORY[0x2530ADF00](v22, v20);

LABEL_19:

  v24 = sub_252C285F0();

  if (v24 >> 62)
  {
    v20 = sub_252E378C4();
  }

  else
  {
    v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_26:
  v26 = sub_252B680FC();
  swift_beginAccess();
  v22 = *(v26 + 32);
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_28;
    }

LABEL_39:

    v29 = 0;
    goto LABEL_40;
  }

  if (v22 < 0)
  {
    v30 = *(v26 + 32);
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_28:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_47:

    v27 = MEMORY[0x2530ADF00](v1, v22);

    goto LABEL_33;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v1 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v27 = *(v22 + 8 * v1 + 32);
LABEL_33:

  LOBYTE(v41[0]) = v5;
  v28 = sub_252C2CDC4(v41, v4);

  if (v28 >> 62)
  {
LABEL_51:
    v29 = sub_252E378C4();
    goto LABEL_35;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_35:

LABEL_40:
  v31 = *(v0 + 160);
  v32 = *(v0 + 120);
  v33 = *(v0 + 128);
  v34 = *(v0 + 112);
  v36 = v32[3];
  v35 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v36);
  sub_252929E74(v34, v0 + 16);
  v37 = swift_allocObject();
  *(v0 + 168) = v37;
  sub_252927BEC((v0 + 16), v37 + 16);
  *(v37 + 56) = v20;
  *(v37 + 64) = v29;
  *(v37 + 72) = v5;
  sub_252A6097C(v33, v31);
  v38 = swift_task_alloc();
  *(v0 + 176) = v38;
  *v38 = v0;
  v38[1] = sub_252D0A080;
  v39 = *(v0 + 160);
  v40 = *(v0 + 104);

  return sub_252BDB3DC(v40, &unk_252E5B858, v37, v39, v36, v35);
}

uint64_t sub_252D0A080()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[21];
    (*(v3[19] + 8))(v3[20], v3[18]);

    return MEMORY[0x2822009F8](sub_252D0A210, 0, 0);
  }

  else
  {
    v5 = v3[21];
    (*(v3[19] + 8))(v3[20], v3[18]);

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_252D0A210()
{
  v1 = v0[23];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_252D0A274(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D0A298, 0, 0);
}

uint64_t sub_252D0A298()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_252CB8014;
  v3 = *(v0 + 32);

  return sub_252C0C6AC(0, v3);
}

uint64_t sub_252D0A33C(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D0A360, 0, 0);
}

uint64_t sub_252D0A360()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_252CBD840;
  v3 = *(v0 + 32);

  return sub_252C0D6BC(0, v3);
}

uint64_t sub_252D0A424()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000252E6FE70;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = *(MEMORY[0x277D55BE8] + 4);
  v6 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 48) = 0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_252AD7EB4;

  return v6(0xD000000000000024, 0x8000000252E93B60, v2);
}

uint64_t sub_252D0A55C(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_252D0A580, 0, 0);
}

uint64_t sub_252D0A580()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_252CBD840;
  v3 = *(v0 + 32);

  return sub_252C0B3FC(0, v3);
}

uint64_t sub_252D0A624(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 96) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = type metadata accessor for HomeAutomationConvenienceAnswerFollowUpParameters(0);
  *(v4 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D0A6F8, 0, 0);
}

uint64_t *sub_252D0A6F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v4 = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = *(v0 + 96);
    v9 = v4 > 1;
    v17 = *result;
    v10 = *(v5 + 20);
    v11 = sub_252E36324();
    v12 = *(*(v11 - 8) + 56);
    v12(&v6[v10], 1, 1, v11);
    *v6 = 0;
    v6[*(v5 + 24)] = v9;
    StateSemantic.rawValue.getter();
    sub_252E362F4();
    v12(v7, 0, 1, v11);
    sub_252956C98(v7, &v6[v10]);
    v13 = sub_252C06814();
    *(v0 + 64) = v13;
    v14 = *(MEMORY[0x277D55BE8] + 4);
    v16 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v15 = swift_task_alloc();
    *(v0 + 72) = v15;
    *v15 = v0;
    v15[1] = sub_252D0A8B4;

    return v16(0xD000000000000028, 0x8000000252E93B30, v13);
  }

  return result;
}

uint64_t sub_252D0A8B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_252D0AA80;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_252D0AA00;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D0AA00()
{
  v1 = v0[5];
  sub_252D0AD04(v0[7]);

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_252D0AA80()
{
  v1 = v0[5];
  sub_252D0AD04(v0[7]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_252D0AB1C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000252E6FE70;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = *(MEMORY[0x277D55BE8] + 4);
  v6 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_252E3C290;
  *(v2 + 48) = 0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_252C0B580;

  return v6(0xD000000000000033, 0x8000000252E93B90, v2);
}

uint64_t sub_252D0AC54()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252D0A624(v0 + 16, v2, v3, v4);
}

uint64_t sub_252D0AD04(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationConvenienceAnswerFollowUpParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D0AD60()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x74736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_252D0AD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_252D0AE70(uint64_t a1)
{
  v2 = sub_252D0B35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D0AEAC(uint64_t a1)
{
  v2 = sub_252D0B35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HMResponseBase.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545640, qword_252E5B880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v33 = v7;
  if (v14)
  {
    v15 = v14;
    v31 = v11;
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_252D0B35C();
    v30 = a1;
    v32 = v4;
    sub_252E37F84();
    v17 = [v15 request];
    v35 = v17;
    v34 = 0;
    sub_25293F638(0, &qword_27F545660, 0x277CD1990);
    sub_252D0B3B0(&qword_27F545668, &qword_27F545660, 0x277CD1990);
    sub_252E37D54();
    v3 = v2;
    if (v2)
    {

      return (*(v33 + 8))(v13, v6);
    }

    a1 = v30;

    v19 = [v15 error];
    if (v19)
    {
      v20 = v19;
      swift_getErrorValue();
      sub_252E37E54();
      LOBYTE(v35) = 0;
      sub_252E37CF4();
      v11 = v31;

      (*(v33 + 8))(v13, v6);
    }

    else
    {

      (*(v33 + 8))(v13, v6);
      v11 = v31;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v21 = result;
    v22 = v6;
    v23 = v11;
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_252D0B35C();
    v25 = v4;
    sub_252E37F84();
    v26 = [v21 request];
    v35 = v26;
    v34 = 0;
    sub_25293F638(0, &qword_27F545650, 0x277CD1830);
    sub_252D0B3B0(&qword_27F545658, &qword_27F545650, 0x277CD1830);
    sub_252E37D54();

    if (!v3)
    {
      v27 = [v21 error];
      if (v27)
      {
        v28 = v27;
        swift_getErrorValue();
        sub_252E37E54();
        LOBYTE(v35) = 0;
        sub_252E37CF4();
      }
    }

    return (*(v33 + 8))(v23, v22);
  }

  return result;
}

unint64_t sub_252D0B35C()
{
  result = qword_27F545648;
  if (!qword_27F545648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545648);
  }

  return result;
}

uint64_t sub_252D0B3B0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25293F638(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252D0B438()
{
  result = qword_27F545670;
  if (!qword_27F545670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545670);
  }

  return result;
}

unint64_t sub_252D0B490()
{
  result = qword_27F545678;
  if (!qword_27F545678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545678);
  }

  return result;
}

unint64_t sub_252D0B4E8()
{
  result = qword_27F545680;
  if (!qword_27F545680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545680);
  }

  return result;
}

uint64_t sub_252D0B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[326] = v3;
  v4[325] = a3;
  v4[324] = a2;
  v4[323] = a1;
  v5 = sub_252E34014();
  v4[327] = v5;
  v6 = *(v5 - 8);
  v4[328] = v6;
  v7 = *(v6 + 64) + 15;
  v4[329] = swift_task_alloc();
  v4[330] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D0B614, 0, 0);
}

uint64_t sub_252D0B614()
{
  v66 = v0;
  v1 = *(v0 + 2600);
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = sub_252C31A30();
    v5 = v4;
    v64 = v1;
    __dst[0] = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v7 == v8)
      {

        v15 = *(v0 + 2600);
        v1 = v64;
        goto LABEL_17;
      }

      if (v9)
      {
        v10 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = sub_252DA124C(0);

      ++v8;
      if (v13)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = __dst[0];
        v8 = v12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = 0;
LABEL_17:
  v6 = *(v0 + 2608);
  v16 = *(v0 + 2592);
  type metadata accessor for HomeAutomationEntityResponses();
  v5 = swift_allocObject();
  *(v0 + 2648) = v5;
  *(v5 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v5 + 24) = v3;
  memcpy((v0 + 520), (v6 + 112), 0x1F8uLL);
  memcpy(__dst, (v6 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 520, v0 + 1024);
  v17 = v1;
  v18 = v16;
  v9 = sub_252953488(v16, __dst, v15);
  *(v0 + 2656) = v9;

  if (qword_27F53F4D0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v19 = *(v0 + 2592);
  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x8000000252E829B0;
  v21 = v19;
  v22 = [v21 description];
  v23 = sub_252E36F34();
  v25 = v24;

  MEMORY[0x2530AD570](v23, v25);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  __dst[0] = 0x6E65746E49204C4ELL;
  __dst[1] = 0xEB00000000203A74;
  memcpy((v0 + 16), (v6 + 112), 0x1F8uLL);
  memcpy((v0 + 1528), (v6 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 16, v0 + 2032);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  *(v0 + 2576) = *(v9 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v27 = sub_252E36F94();
  MEMORY[0x2530AD570](v27);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000015;
  __dst[1] = 0x8000000252E93CA0;
  v28 = *(v5 + 24);
  v29 = type metadata accessor for HomeAutomationEntityResponse(0);
  v30 = MEMORY[0x2530AD730](v28, v29);
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000008ELL, 0x8000000252E93C10);

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v31 + 288), v0 + 2536);

  v32 = *(v0 + 2560);
  v33 = *(v0 + 2568);
  __swift_project_boxed_opaque_existential_1((v0 + 2536), v32);
  LOBYTE(v28) = (*(v33 + 120))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2536));
  if (v28)
  {
    v34 = [*(v0 + 2592) userTask];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 attribute];

      if (v36 == 67)
      {
        v37 = v9;
        v63 = 0;
LABEL_27:
        v52 = *(v0 + 2640);
        v53 = *(v0 + 2608);
        v54 = *(v0 + 2600);
        v55 = *(v0 + 2592);
        v56 = v53[12];
        v57 = v53[13];
        __swift_project_boxed_opaque_existential_1(v53 + 9, v56);
        v58 = swift_task_alloc();
        *(v0 + 2664) = v58;
        v58[2] = v53;
        v58[3] = v5;
        v58[4] = v54;
        v58[5] = v37;
        v59 = swift_task_alloc();
        *(v0 + 2672) = v59;
        v59[2] = v55;
        v59[3] = v5;
        v59[4] = v37;
        sub_252B03B94();
        v60 = swift_task_alloc();
        *(v0 + 2680) = v60;
        *v60 = v0;
        v60[1] = sub_252D0BDFC;
        v61 = *(v0 + 2640);
        v62 = *(v0 + 2584);
        v71 = v56;
        v72 = v57;
        v70 = v63;
        v69 = 0;
        v68 = 0;

        return sub_252A199A8(v62, &unk_252E5BA78, v58, &unk_252E5BA88, v59, v61, 0, 0);
      }
    }

    else
    {
      v51 = *(v0 + 2592);
      sub_252C515AC();
    }

    v37 = v9;
    v63 = 2;
    goto LABEL_27;
  }

  v38 = *(v0 + 2632);
  v39 = v9;
  v40 = *(v0 + 2608);
  v41 = *(v0 + 2600);
  v42 = *(v0 + 2592);
  v43 = v40[12];
  v44 = v40[13];
  __swift_project_boxed_opaque_existential_1(v40 + 9, v43);
  v45 = swift_task_alloc();
  *(v0 + 2696) = v45;
  v45[2] = v40;
  v45[3] = v41;
  v45[4] = v5;
  v45[5] = v39;
  v46 = sub_252DC6D48(v42, v41);
  sub_252AD7CC4();
  v47 = swift_task_alloc();
  *(v0 + 2704) = v47;
  *v47 = v0;
  v47[1] = sub_252D0C018;
  v48 = *(v0 + 2632);
  v49 = *(v0 + 2584);
  v71 = v44;

  return sub_252BDB88C(v49, &unk_252E5BA68, v45, v48, 0, 0, v46, v43);
}

uint64_t sub_252D0BDFC()
{
  v2 = *v1;
  v3 = *(*v1 + 2680);
  v4 = *(*v1 + 2640);
  v5 = *(*v1 + 2624);
  v6 = *(*v1 + 2616);
  v11 = *v1;
  *(*v1 + 2688) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D0C198;
  }

  else
  {
    v8 = *(v2 + 2672);
    v9 = *(v2 + 2664);

    v7 = sub_252D0BF88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D0BF88()
{
  v1 = v0[332];
  v2 = v0[331];
  v3 = v0[330];
  v4 = v0[329];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252D0C018()
{
  v2 = *v1;
  v3 = *(*v1 + 2704);
  v4 = *(*v1 + 2632);
  v5 = *(*v1 + 2624);
  v6 = *(*v1 + 2616);
  v10 = *v1;
  *(*v1 + 2712) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D0C23C;
  }

  else
  {
    v8 = *(v2 + 2696);

    v7 = sub_252D0D658;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D0C198()
{
  v1 = v0[334];
  v2 = v0[332];
  v3 = v0[331];

  v4 = v0[336];
  v5 = v0[333];
  v6 = v0[330];
  v7 = v0[329];

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D0C23C()
{
  v1 = v0[332];
  v2 = v0[331];

  v3 = v0[339];
  v4 = v0[337];
  v5 = v0[330];
  v6 = v0[329];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252D0C2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252D0C2F8, 0, 0);
}

uint64_t sub_252D0C2F8()
{
  v1 = v0[4];
  v0[6] = *(v0[2] + 64);

  if (v1)
  {
    LOBYTE(v1) = sub_252C2AC20();
  }

  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_252D0C3D0;

  return sub_252D2A104(v3, v1 & 1, v2);
}

uint64_t sub_252D0C3D0(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_252D0C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v8 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v4[3] = v9;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_252C236AC;

  return sub_252A2D160(v9, a2, a3, a4);
}

uint64_t sub_252D0C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for HomeAutomationSetModeParameters(0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D0C674, 0, 0);
}

uint64_t sub_252D0C674()
{
  v1 = v0[8];
  sub_252929E74(v0[7] + 24, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (v1)
  {
    v3 = v0[8];
    v4 = sub_252C2AC20();
  }

  else
  {
    v4 = 0;
  }

  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = *v2;
  v10 = sub_252E36324();
  v11 = *(*(v10 - 8) + 56);

  v11(v5, 1, 1, v10);
  v11(v5 + v6[10], 1, 1, v10);
  *(v5 + v6[5]) = 0;
  *(v5 + v6[6]) = v4 & 1;
  *(v5 + v6[7]) = 0;
  *(v5 + v6[8]) = 0;
  *(v5 + v6[9]) = 0;
  sub_252D0CACC(v5, v8, v7);
  v12 = sub_252C099C8();
  v0[13] = v12;
  v13 = *(MEMORY[0x277D55BE8] + 4);
  v16 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_252D0C854;

  return v16(0xD000000000000016, 0x8000000252E666A0, v12);
}

uint64_t sub_252D0C854(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v8 = sub_252D0CA38;
  }

  else
  {
    *(v4 + 128) = a1;
    v8 = sub_252D0C9A0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252D0C9A0()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_252D0D5FC(v0[12]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

uint64_t sub_252D0CA38()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_252D0D5FC(v0[12]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_252D0CACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-v11];
  v13 = type metadata accessor for HomeAutomationSetModeParameters(0);
  v14 = v13[9];
  v15 = *(a1 + v14);
  swift_retain_n();

  *(a1 + v14) = a2;
  v16 = v13[8];
  v17 = *(a1 + v16);

  *(a1 + v16) = a2;
  v18 = v13[7];
  v19 = *(a1 + v18);

  *(a1 + v18) = a3;
  v20 = sub_25294833C(1u, 0, 0);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v22 = [v20 dictionary];
  if (!v22)
  {

LABEL_7:
    v30 = sub_252E36324();
    (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
    goto LABEL_8;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v36[0] = 0;
  v25 = [v24 dataWithPropertyList:v23 format:200 options:0 error:v36];
  v26 = v36[0];
  if (!v25)
  {
    v31 = v26;
    v32 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v27 = sub_252E32D34();
  v29 = v28;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v27, v29);
  v30 = sub_252E36324();
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
LABEL_8:
  sub_252956C98(v12, a1 + v13[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
  result = sub_252956C98(v10, a1);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252D0CE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D0B53C(a1, a2, a3);
}

void *sub_252D0CED4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D0CF38(void *a1, id a2)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_35;
  }

  v4 = [a2 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v7 = sub_252B1F554(v6);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    sub_252E379F4();

    v9 = v2;
    v10 = [v9 description];
    v11 = sub_252E36F34();
    v13 = v12;

    MEMORY[0x2530AD570](v11, v13);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
    v7 = MEMORY[0x277D84F90];
  }

  if (!(v7 >> 62))
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_33:
  v14 = sub_252E378C4();
  if (!v14)
  {
    goto LABEL_34;
  }

LABEL_9:
  v44 = a1;
  v45 = v2;
  v15 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2530ADF00](v15, v7);
    }

    else
    {
      if (v15 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v16 = *(v7 + 8 * v15 + 32);
    }

    v17 = v16;
    a1 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v18 = qword_2864A9A10;
    v19 = [v16 userTask];
    if (!v19 || (v20 = v19, v2 = [v19 attribute], v20, v2 != v18))
    {
      v21 = qword_2864A9A18;
      v22 = [v17 userTask];
      if (!v22 || (v23 = v22, v2 = [v22 attribute], v23, v2 != v21))
      {
        v24 = qword_2864A9A20;
        v25 = [v17 userTask];
        if (!v25 || (v26 = v25, v2 = [v25 attribute], v26, v2 != v24))
        {
          v27 = qword_2864A9A28;
          v28 = [v17 userTask];
          if (!v28 || (v29 = v28, v2 = [v28 attribute], v29, v2 != v27))
          {
            v30 = qword_2864A9A30;
            v31 = [v17 userTask];
            if (!v31 || (v32 = v31, v2 = [v31 attribute], v32, v2 != v30))
            {

              v36 = 0;
              a1 = v44;
              v2 = v45;
              goto LABEL_36;
            }
          }
        }
      }
    }

    ++v15;
  }

  while (a1 != v14);

  a1 = v44;
  v33 = [v44 userTask];
  v2 = v45;
  if (v33)
  {
    v34 = v33;
    v35 = [v33 taskType];

    v36 = v35 == 1;
    goto LABEL_36;
  }

  sub_252C515AC();
LABEL_35:
  v36 = 0;
LABEL_36:
  v37 = [a1 userTask];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 taskType];

    if (v39 == 1)
    {
      v40 = sub_252C4E58C(&unk_2864A99F0);
      if (v2)
      {
        if (v40)
        {
          v41 = sub_252C31A30();
          if (v41 >> 62)
          {
            v42 = sub_252E378C4();
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v36 |= v42 != 0;
        }
      }
    }
  }

  else
  {
    sub_252C515AC();
  }

  return v36 & 1;
}

uint64_t sub_252D0D3F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B958;

  return sub_252D0C5DC(v2, v3, v5, v4);
}

uint64_t sub_252D0D49C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252D0C2D4(v2, v3, v5, v4);
}

uint64_t sub_252D0D548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252D0C4F4(a1, v4, v5, v6);
}

uint64_t sub_252D0D5FC(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetModeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252D0D66C(void *__src)
{
  memcpy(v1 + 65, __src, 0x1E8uLL);
  v3 = *(__src + 62);
  v1[183] = *(__src + 61);
  v1[184] = v3;

  return MEMORY[0x2822009F8](sub_252D0D6EC, 0, 0);
}

uint64_t sub_252D0D6EC()
{
  v161 = v0;
  v1 = (v0 + 16);
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v2 + 16), v0 + 16);

  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v4 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v4)
  {
    sub_252A3EA30();
  }

  sub_252B680FC();
  v5 = sub_252B63B0C();

  if (qword_27F53F520 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544E08);
    *__dst = 0;
    *&__dst[8] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E93CC0);
    v7 = MEMORY[0x2530AD730](v5, &type metadata for ReferencedEntityValue);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(*__dst, *&__dst[8], 0xD000000000000099, 0x8000000252E93D10);

    v154 = sub_252AB0020();
    v135 = *(v5 + 16);
    if (!v135)
    {
      break;
    }

    v9 = 0;
    v132 = 0;
    v10 = v0 + 1008;
    v11 = v0 + 1160;
    v12 = *(v0 + 1464);
    v133 = v5;
    v134 = v5 + 32;
    v153 = v12 + 56;
    v138 = (v0 + 1024);
    v13 = MEMORY[0x277D84F90];
    v137 = v0 + 1056;
    v139 = v8;
    v140 = v0;
    v5 = v8;
    v151 = v12;
    v152 = v0 + 1008;
    while (1)
    {
      v136 = v9;
      v14 = v134 + 152 * v9;
      v15 = *(v14 + 16);
      *v10 = *v14;
      *(v10 + 16) = v15;
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v18 = *(v14 + 80);
      *(v10 + 64) = *(v14 + 64);
      *(v10 + 80) = v18;
      *(v10 + 32) = v16;
      *(v10 + 48) = v17;
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v21 = *(v14 + 128);
      *(v10 + 144) = *(v14 + 144);
      *(v10 + 112) = v20;
      *(v10 + 128) = v21;
      *(v10 + 96) = v19;
      if (!*(v12 + 16))
      {
        sub_25297DE08(v10, v1);
        goto LABEL_14;
      }

      v22 = *(v14 + 112);
      v23 = *(v14 + 80);
      __src[6] = *(v14 + 96);
      __src[7] = v22;
      v24 = *(v14 + 112);
      __src[8] = *(v14 + 128);
      v25 = *(v14 + 48);
      v26 = *(v14 + 16);
      __src[2] = *(v14 + 32);
      __src[3] = v25;
      v27 = *(v14 + 48);
      v28 = *(v14 + 80);
      __src[4] = *(v14 + 64);
      __src[5] = v28;
      v29 = *(v14 + 16);
      __src[0] = *v14;
      __src[1] = v29;
      *&__dst[96] = __src[6];
      *&__dst[112] = v24;
      *&__dst[128] = *(v14 + 128);
      *&__dst[32] = __src[2];
      *&__dst[48] = v27;
      *&__dst[64] = __src[4];
      *&__dst[80] = v23;
      LOWORD(__src[9]) = *(v14 + 144);
      v30 = *(v12 + 40);
      *&__dst[144] = *(v14 + 144);
      *__dst = __src[0];
      *&__dst[16] = v26;
      sub_252E37EC4();
      sub_25297DE08(v10, v1);
      sub_252A34930();
      v31 = sub_252E37F14();
      v32 = -1 << *(v12 + 32);
      v33 = v31 & ~v32;
      if ((*(v153 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        break;
      }

LABEL_11:
      v10 = v152;
      sub_2529AEC80(v152);
LABEL_64:
      v9 = v136 + 1;
      if (v136 + 1 == v135)
      {
        goto LABEL_67;
      }

      if (v9 >= *(v133 + 16))
      {
        __break(1u);
LABEL_67:

        goto LABEL_69;
      }
    }

    v34 = ~v32;
    while (1)
    {
      v35 = *(v12 + 48) + 152 * v33;
      v36 = *(v35 + 16);
      *v11 = *v35;
      *(v11 + 16) = v36;
      v37 = *(v35 + 32);
      v38 = *(v35 + 48);
      v39 = *(v35 + 80);
      *(v11 + 64) = *(v35 + 64);
      *(v11 + 80) = v39;
      *(v11 + 32) = v37;
      *(v11 + 48) = v38;
      v40 = *(v35 + 96);
      v41 = *(v35 + 112);
      v42 = *(v35 + 128);
      *(v11 + 144) = *(v35 + 144);
      *(v11 + 112) = v41;
      *(v11 + 128) = v42;
      *(v11 + 96) = v40;
      v43 = *(v35 + 112);
      *&__dst[96] = *(v35 + 96);
      *&__dst[112] = v43;
      *&__dst[128] = *(v35 + 128);
      *&__dst[144] = *(v35 + 144);
      v44 = *(v35 + 48);
      *&__dst[32] = *(v35 + 32);
      *&__dst[48] = v44;
      v45 = *(v35 + 80);
      *&__dst[64] = *(v35 + 64);
      *&__dst[80] = v45;
      v46 = *(v35 + 16);
      *__dst = *v35;
      *&__dst[16] = v46;
      sub_25297DE08(v11, v0 + 1312);
      v47 = sub_252A39200(__dst, __src);
      v48 = *&__dst[112];
      v1[6] = *&__dst[96];
      v1[7] = v48;
      v1[8] = *&__dst[128];
      *(v1 + 72) = *&__dst[144];
      v49 = *&__dst[48];
      v1[2] = *&__dst[32];
      v1[3] = v49;
      v50 = *&__dst[80];
      v1[4] = *&__dst[64];
      v1[5] = v50;
      v51 = *&__dst[16];
      *v1 = *__dst;
      v1[1] = v51;
      sub_2529AEC80(v1);
      if (v47)
      {
        break;
      }

      v33 = (v33 + 1) & v34;
      if (((*(v153 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v10 = v152;
LABEL_14:
    v52 = *(v0 + 1152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v53 = swift_allocObject();
    v54 = *(v10 + 96);
    v55 = *(v10 + 128);
    *(v53 + 144) = *(v10 + 112);
    *(v53 + 160) = v55;
    v56 = *(v10 + 32);
    v57 = *(v10 + 64);
    v58 = *(v10 + 80);
    *(v53 + 80) = *(v10 + 48);
    *(v53 + 96) = v57;
    *(v53 + 112) = v58;
    *(v53 + 128) = v54;
    v59 = *v10;
    v60 = *(v10 + 16);
    *(v53 + 16) = xmmword_252E3C290;
    *(v53 + 32) = v59;
    *(v53 + 176) = *(v10 + 144);
    *(v53 + 48) = v60;
    *(v53 + 64) = v56;
    v61 = v53;
    if (v52)
    {
      v63 = sub_252E37DB4();
      v62 = v152;
      sub_25297DE08(v152, v1);

      if ((v63 & 1) == 0)
      {
        sub_2529AEC80(v152);
        v10 = v152;
LABEL_33:
        v86 = v61;
        v87 = *(v61 + 16);
        if (v87)
        {
          goto LABEL_51;
        }

        goto LABEL_63;
      }
    }

    else
    {
      sub_25297DE08(v10, v1);

      v62 = v10;
    }

    v64 = *(v62 + 112);
    *&__dst[96] = *(v62 + 96);
    *&__dst[112] = v64;
    *&__dst[128] = *(v62 + 128);
    *&__dst[144] = *(v62 + 144);
    v65 = *(v62 + 48);
    *&__dst[32] = *(v62 + 32);
    *&__dst[48] = v65;
    v66 = *(v62 + 80);
    *&__dst[64] = *(v62 + 64);
    *&__dst[80] = v66;
    v67 = *(v62 + 16);
    *__dst = *v62;
    *&__dst[16] = v67;
    v68 = *(sub_252A33D54() + 16);

    v10 = v62;
    if (v68 < 2)
    {
      sub_2529AEC80(v62);
      goto LABEL_33;
    }

    v69 = *(v62 + 112);
    *&__dst[96] = *(v62 + 96);
    *&__dst[112] = v69;
    *&__dst[128] = *(v62 + 128);
    *&__dst[144] = *(v62 + 144);
    v70 = *(v62 + 48);
    *&__dst[32] = *(v62 + 32);
    *&__dst[48] = v70;
    v71 = *(v62 + 80);
    *&__dst[64] = *(v62 + 64);
    *&__dst[80] = v71;
    v72 = *(v62 + 16);
    *__dst = *v62;
    *&__dst[16] = v72;
    v149 = sub_252A33D54();
    type metadata accessor for HomeStore();
    v73 = static HomeStore.shared.getter();
    v74 = sub_2529D9D50();
    v75 = v132;
    v76 = sub_2529D70E4(v74);

    *__dst = MEMORY[0x277D84F90];
    if (!(v76 >> 62))
    {
      v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v148 = v13;
      if (v77)
      {
        goto LABEL_20;
      }

LABEL_37:
      v88 = MEMORY[0x277D84F90];
LABEL_38:
      v132 = v75;

      if (v88 < 0 || (v88 & 0x4000000000000000) != 0)
      {
        v89 = sub_252E378C4();
        if (v89)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v89 = *(v88 + 16);
        if (v89)
        {
LABEL_41:
          *&v159[0] = MEMORY[0x277D84F90];
          sub_2529AA580(0, v89 & ~(v89 >> 63), 0);
          if (v89 < 0)
          {
            goto LABEL_74;
          }

          v90 = 0;
          v91 = *&v159[0];
          v92 = v88;
          v145 = *(v0 + 1016);
          v147 = v88 & 0xC000000000000001;
          v141 = *(v0 + 1048);
          v143 = v89 - 1;
          for (i = v88; ; v92 = i)
          {
            v93 = v91;
            if (v147)
            {
              v94 = MEMORY[0x2530ADF00](v90, v92);
            }

            else
            {
              v94 = *(v92 + 8 * v90 + 32);
            }

            __src[0] = *v138;
            v95 = *(v137 + 80);
            *&__dst[64] = *(v137 + 64);
            *&__dst[80] = v95;
            *&__dst[96] = *(v137 + 96);
            v96 = *(v137 + 16);
            *__dst = *v137;
            *&__dst[16] = v96;
            v97 = *(v137 + 48);
            *&__dst[32] = *(v137 + 32);
            *&__dst[48] = v97;
            v98 = *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v99 = *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            sub_25297DE08(v152, v1);

            v100 = sub_252E32E24();
            v102 = v101;

            v91 = v93;
            *&v159[0] = v93;
            v103 = *(v93 + 16);
            v104 = *(v91 + 24);
            if (v103 >= v104 >> 1)
            {
              sub_2529AA580((v104 > 1), v103 + 1, 1);
              v91 = *&v159[0];
            }

            *(v91 + 16) = v103 + 1;
            v105 = v91 + 152 * v103;
            *(v105 + 32) = v100;
            *(v105 + 40) = v102;
            *(v105 + 48) = __src[0];
            *(v105 + 64) = v98;
            *(v105 + 72) = v99;
            v106 = *__dst;
            v107 = *&__dst[32];
            *(v105 + 96) = *&__dst[16];
            *(v105 + 112) = v107;
            *(v105 + 80) = v106;
            v108 = *&__dst[48];
            v109 = *&__dst[64];
            v110 = *&__dst[80];
            *(v105 + 176) = *&__dst[96];
            *(v105 + 144) = v109;
            *(v105 + 160) = v110;
            *(v105 + 128) = v108;
            if (v143 == v90)
            {
              break;
            }

            ++v90;
          }

          v10 = v152;
          v111 = v91;
          sub_2529AEC80(v152);

          v86 = v111;
          v5 = v139;
          v0 = v140;
          v12 = v151;
          v13 = v148;
          v87 = *(v111 + 16);
          if (v87)
          {
LABEL_51:
            v112 = v87 - 1;
            for (j = 32; ; j += 152)
            {
              v114 = *(v0 + 1472);
              v115 = *(v0 + 1464);
              v116 = v86;
              v117 = *(v86 + j + 16);
              *v11 = *(v86 + j);
              *(v11 + 16) = v117;
              v118 = *(v86 + j + 32);
              v119 = *(v86 + j + 48);
              v120 = *(v86 + j + 80);
              *(v11 + 64) = *(v86 + j + 64);
              *(v11 + 80) = v120;
              *(v11 + 32) = v118;
              *(v11 + 48) = v119;
              v121 = *(v86 + j + 96);
              v122 = *(v86 + j + 112);
              v123 = *(v86 + j + 128);
              *(v11 + 144) = *(v86 + j + 144);
              *(v11 + 112) = v122;
              *(v11 + 128) = v123;
              *(v11 + 96) = v121;
              memcpy(__dst, (v0 + 520), sizeof(__dst));
              v157 = v115;
              v158 = v114;
              v124 = *(v11 + 112);
              v159[6] = *(v11 + 96);
              v159[7] = v124;
              v159[8] = *(v11 + 128);
              v160 = *(v11 + 144);
              v125 = *(v11 + 48);
              v159[2] = *(v11 + 32);
              v159[3] = v125;
              v126 = *(v11 + 80);
              v159[4] = *(v11 + 64);
              v159[5] = v126;
              v127 = *(v11 + 16);
              v159[0] = *v11;
              v159[1] = v127;
              sub_25297DE08(v11, v0 + 1312);
              sub_252D0E290(__dst, v159, v154, v5, __src);
              sub_2529AEC80(v11);
              memcpy(v1, __src, 0x1F8uLL);
              if (sub_252956B94(v1) != 1)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_2529F7FB0(0, *(v13 + 2) + 1, 1, v13);
                }

                v129 = *(v13 + 2);
                v128 = *(v13 + 3);
                if (v129 >= v128 >> 1)
                {
                  v13 = sub_2529F7FB0((v128 > 1), v129 + 1, 1, v13);
                }

                *(v13 + 2) = v129 + 1;
                memcpy(&v13[504 * v129 + 32], v1, 0x1F8uLL);
              }

              v86 = v116;
              if (!v112)
              {
                break;
              }

              --v112;
            }

            v12 = v151;
            v10 = v152;
            goto LABEL_64;
          }

          goto LABEL_63;
        }
      }

      v10 = v152;
      sub_2529AEC80(v152);

      v86 = MEMORY[0x277D84F90];
      v87 = *(MEMORY[0x277D84F90] + 16);
      if (v87)
      {
        goto LABEL_51;
      }

LABEL_63:

      goto LABEL_64;
    }

    v77 = sub_252E378C4();
    v148 = v13;
    if (!v77)
    {
      goto LABEL_37;
    }

LABEL_20:
    v78 = 0;
    v144 = v76 & 0xFFFFFFFFFFFFFF8;
    v146 = v76 & 0xC000000000000001;
    v142 = v76;
    while (v146)
    {
      v5 = MEMORY[0x2530ADF00](v78, v76);
      v80 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        goto LABEL_72;
      }

LABEL_26:
      *(v0 + 16) = sub_252E32E24();
      *(v0 + 24) = v81;
      v82 = swift_task_alloc();
      *(v82 + 16) = v1;
      v83 = sub_2529ED970(sub_25296A69C, v82, v149);

      if (v83)
      {
        sub_252E37A94();
        v84 = v75;
        v85 = *(*__dst + 16);
        sub_252E37AC4();
        v75 = v84;
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      v12 = v151;
      v0 = v140;
      ++v78;
      v79 = v80 == v77;
      v5 = v139;
      v13 = v148;
      v76 = v142;
      if (v79)
      {
        v88 = *__dst;
        goto LABEL_38;
      }
    }

    if (v78 >= *(v144 + 16))
    {
      goto LABEL_73;
    }

    v5 = *(v76 + 8 * v78 + 32);

    v80 = v78 + 1;
    if (!__OFADD__(v78, 1))
    {
      goto LABEL_26;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v13 = MEMORY[0x277D84F90];
LABEL_69:
  v130 = *(v0 + 8);

  return v130(v13);
}

void *sub_252D0E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *(a1 + 88);
  v7 = *(a2 + 112);
  v74 = *(a2 + 96);
  v75 = v7;
  v76 = *(a2 + 128);
  v77 = *(a2 + 144);
  v8 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v8;
  v9 = *(a2 + 80);
  v72 = *(a2 + 64);
  v73 = v9;
  v10 = *(a2 + 16);
  v68 = *a2;
  v69 = v10;
  _s7BuilderCMa_1();
  swift_allocObject();
  sub_252E1E238();
  v11 = *(a1 + 48);
  __dst[2] = *(a1 + 32);
  __dst[3] = v11;
  __dst[4] = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 16);
  __dst[0] = *a1;
  __dst[1] = v13;
  *&__dst[5] = v12;
  *(&__dst[5] + 1) = v6;
  memcpy(&__dst[6], (a1 + 96), 0x198uLL);
  v14 = sub_252E1EBE8(__dst);

  v15 = *(v6 + 16);
  v61 = v6;
  v16 = (v6 + 32);
  v17 = (v6 + 32);
  while (2)
  {
    if (v15)
    {
      switch(*v17)
      {
        case 2:
          goto LABEL_21;
        default:
          v18 = sub_252E37DB4();

          ++v17;
          --v15;
          if ((v18 & 1) == 0)
          {
            continue;
          }

          goto LABEL_22;
      }
    }

    break;
  }

  v19 = *(v61 + 16);
  while (2)
  {
    if (v19)
    {
      switch(*v16)
      {
        case 3:
LABEL_21:

          goto LABEL_22;
        default:
          v20 = sub_252E37DB4();

          ++v16;
          --v19;
          if ((v20 & 1) == 0)
          {
            continue;
          }

          goto LABEL_22;
      }
    }

    break;
  }

  if (v74)
  {
    v21 = 0;
  }

  else
  {
    v21 = v75 == 0;
  }

  if (v21 && v76 == 0 && a4 == 0)
  {
    goto LABEL_22;
  }

  v24 = *(a1 + 48);
  *&v65[32] = *(a1 + 32);
  *&v65[48] = v24;
  *&v65[64] = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 16);
  *v65 = *a1;
  *&v65[16] = v26;
  *&v65[80] = v25;
  *&v65[88] = v61;
  memcpy(&v65[96], (a1 + 96), 0x198uLL);
  v63[6] = v74;
  v63[7] = v75;
  v63[8] = v76;
  v64 = v77;
  v63[2] = v70;
  v63[3] = v71;
  v63[4] = v72;
  v63[5] = v73;
  v63[0] = v68;
  v63[1] = v69;
  sub_252AAEEB4(v65, v63, a3, a4, __src);
  memcpy(__dst, __src, 0x1F8uLL);
  if (sub_252956B94(__dst) == 1)
  {
LABEL_22:
    v28 = 0;
  }

  else
  {
    memcpy(v65, __dst, sizeof(v65));
    v27 = sub_252E1EBE8(v65);

    sub_25299F5D4(__src);
    v28 = 1;
    v14 = v27;
  }

  swift_beginAccess();
  v29 = v14[22];
  if (*(v29 + 2) || (v31 = *(&v69 + 1)) == 0)
  {
    v30 = 0;
  }

  else
  {
    v32 = v69;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[22] = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2529F7A80(0, 1, 1, v29);
      v14[22] = v29;
    }

    v35 = *(v29 + 2);
    v34 = *(v29 + 3);
    if (v35 >= v34 >> 1)
    {
      v29 = sub_2529F7A80((v34 > 1), v35 + 1, 1, v29);
    }

    *(v29 + 2) = v35 + 1;
    v36 = &v29[16 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = v31;
    v14[22] = v29;
    swift_endAccess();
    v30 = 1;
  }

  if (!*(v14[21] + 16))
  {
    v37 = *(&v70 + 1);
    if (*(&v70 + 1))
    {
      v38 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_252E3C290;
      *(v39 + 32) = v38;
      *(v39 + 40) = v37;
      v14[21] = v39;

      v30 = 1;
    }
  }

  if (!*(v14[23] + 16))
  {
    v40 = *(&v72 + 1);
    if (*(&v72 + 1))
    {
      v41 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_252E3C290;
      *(v42 + 32) = v41;
      *(v42 + 40) = v40;
      v14[23] = v42;

      v30 = 1;
    }
  }

  if (!*(v14[19] + 16))
  {
    v43 = v73;
    if (v73 != 52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A8, &unk_252E3BFD0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_252E3C290;
      *(v44 + 32) = v43;
      v14[19] = v44;

      v30 = 1;
    }
  }

  if (!*(v14[18] + 16))
  {
    v46 = *(&v71 + 1);
    if (*(&v71 + 1))
    {
      v47 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_252E3C290;
      *(v48 + 32) = v47;
      *(v48 + 40) = v46;
      v14[18] = v48;

      goto LABEL_46;
    }
  }

  if (v30)
  {
LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v49 = swift_allocObject();
    v50 = v74;
    v51 = v76;
    *(v49 + 144) = v75;
    *(v49 + 160) = v51;
    v52 = v70;
    v53 = v72;
    v54 = v73;
    *(v49 + 80) = v71;
    *(v49 + 96) = v53;
    *(v49 + 112) = v54;
    *(v49 + 128) = v50;
    v55 = v68;
    v56 = v69;
    *(v49 + 16) = xmmword_252E3C290;
    *(v49 + 32) = v55;
    *(v49 + 176) = v77;
    *(v49 + 48) = v56;
    *(v49 + 64) = v52;
    sub_25297DE08(&v68, __dst);
    v57 = sub_2529FE8B4(v49);
    swift_setDeallocating();
    sub_2529AEC80(v49 + 32);
    swift_deallocClassInstance();
    sub_252E1E320(v57);

    goto LABEL_47;
  }

  if (v28)
  {
LABEL_47:
    sub_252E1F258(&unk_2864A7778);
    swift_retain_n();

    sub_252E1E4F8(__src);

    memcpy(__dst, __src, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__dst);
    v45 = a5;
    return memcpy(v45, __dst, 0x1F8uLL);
  }

  sub_25293DEE0(__dst);
  v45 = a5;
  return memcpy(v45, __dst, 0x1F8uLL);
}

uint64_t sub_252D0EC70(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D0D66C(a1);
}

BOOL sub_252D0ED04(uint64_t a1)
{
  v2 = *(a1 + 280);
  v3 = *(a1 + 288);
  v4 = *(a1 + 289);
  v5 = *(a1 + 386);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 288), __dst);

  v7 = __dst[3];
  v8 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v9 = (*(v8 + 152))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v9 & 1) == 0 || (v4)
  {
    return 0;
  }

  if ((v3 & 1) != 0 && v2 == 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3 ^ 1 | (v2 < 5);
    if (((v3 ^ 1) & 1) == 0 && !v2)
    {
      memcpy(__dst, a1, 0x118uLL);
      __dst[35] = 0;
      v21 = v3;
      v22 = v4;
      v14 = *(a1 + 338);
      v25 = *(a1 + 322);
      v26 = v14;
      v15 = *(a1 + 370);
      v27 = *(a1 + 354);
      v28 = v15;
      v16 = *(a1 + 306);
      v23 = *(a1 + 290);
      v24 = v16;
      v29 = v5;
      v17 = *(a1 + 467);
      v34 = *(a1 + 451);
      v35 = v17;
      *v36 = *(a1 + 483);
      v18 = *(a1 + 403);
      v30 = *(a1 + 387);
      v31 = v18;
      v19 = *(a1 + 435);
      v32 = *(a1 + 419);
      v33 = v19;
      *&v36[13] = *(a1 + 496);
      if (!sub_252A15404())
      {
        return 1;
      }
    }
  }

  result = 0;
  if (v11 & 1) == 0 && (v5)
  {
    sub_252B680FC();
    v12 = sub_252B63B0C();

    v13 = *(v12 + 16);

    return v13 != 0;
  }

  return result;
}

uint64_t sub_252D0EEAC()
{
  v0 = sub_252E36324();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v49 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = *(sub_252D103A8() + 24);

  v56 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_64;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = 0;
    v42 = v14 & 0xFFFFFFFFFFFFFF8;
    v43 = v14 & 0xC000000000000001;
    v40 = v14;
    v41 = v14 + 32;
    v53 = (v1 + 48);
    v54 = 0;
    v50 = (v1 + 56);
    v51 = v9;
    v46 = (v1 + 32);
    v47 = (v1 + 8);
    v48 = v13;
    v38 = v4;
    v39 = v15;
    while (1)
    {
      if (v43)
      {
        v19 = MEMORY[0x2530ADF00](v17, v14);
        v20 = __OFADD__(v17, 1);
        v21 = v17 + 1;
        if (v20)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v17 >= *(v42 + 16))
        {
          goto LABEL_63;
        }

        v18 = *(v41 + 8 * v17);

        v20 = __OFADD__(v17, 1);
        v21 = v17 + 1;
        if (v20)
        {
          goto LABEL_62;
        }
      }

      v45 = v21;
      v44 = v19;
      v1 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v55[0] = v16;
      if (!(v1 >> 62))
      {
        v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          break;
        }

        goto LABEL_26;
      }

      v9 = sub_252E378C4();
      if (v9)
      {
        break;
      }

LABEL_26:
      v9 = v51;
      if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
      {
        v52 = sub_252E378C4();
      }

      else
      {
        v52 = *(v16 + 16);
      }

      v1 = 0;
      do
      {
        if (v52 == v1)
        {

          goto LABEL_6;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2530ADF00](v1, v16);
          v31 = v27;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v1 >= *(v16 + 16))
          {
            goto LABEL_61;
          }

          v31 = *(v16 + 8 * v1 + 32);

          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        v28 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (!v28)
        {
          goto LABEL_31;
        }

        sub_252956C1C(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
        v32 = *v53;
        if ((*v53)(v9, 1, v0) == 1)
        {
          sub_252938BBC(v9);
          if (!*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {
            *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
            *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
            v34 = v49;
            sub_252E37024();

            (*v50)(v34, 0, 1, v0);
            goto LABEL_45;
          }

          v33 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

          v34 = v49;
          sub_25296EBC4(v49);
        }

        else
        {
          v35 = *v46;
          (*v46)(v4, v9, v0);
          v34 = v49;
          v35(v49, v4, v0);
          (*v50)(v34, 0, 1, v0);
        }

        if (v32(v34, 1, v0) == 1)
        {
          v27 = sub_252938BBC(v34);
          v28 = 0;
LABEL_31:
          v29 = 0;
          goto LABEL_32;
        }

LABEL_45:
        v28 = sub_252E36304();
        v29 = v36;
        v27 = (*v47)(v34, v0);
LABEL_32:
        v14 = &v38;
        v55[0] = v28;
        v55[1] = v29;
        MEMORY[0x28223BE20](v27);
        *(&v38 - 2) = v55;
        v30 = v54;
        v13 = sub_2529EDB18(sub_252B68C50, (&v38 - 4), &unk_2864A3470);
        v54 = v30;

        ++v1;
        v9 = v51;
      }

      while ((v13 & 1) != 0);

      sub_252E37A94();
      v1 = *(v56 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_6:
      v13 = v48;
      v14 = v40;
      v17 = v45;
      v16 = MEMORY[0x277D84F90];
      if (v45 == v39)
      {
        v16 = v56;
        goto LABEL_57;
      }
    }

    v22 = v0;
    v23 = 0;
    v4 = (v1 & 0xC000000000000001);
    v14 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v24 = MEMORY[0x2530ADF00](v23, v1);
        v0 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v23 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v24 = *(v1 + 8 * v23 + 32);

        v0 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
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
          __break(1u);
LABEL_64:
          v15 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v25 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v25)
      {
        sub_252956C1C(v25 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v13);
        if ((*v53)(v13, 1, v22) != 1)
        {
          sub_252938BBC(v13);
          sub_252E37A94();
          v26 = *(v55[0] + 16);
          sub_252E37AC4();
          v13 = v48;
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_15;
        }
      }

      else
      {
        (*v50)(v13, 1, 1, v22);
      }

      sub_252938BBC(v13);

LABEL_15:
      ++v23;
      if (v0 == v9)
      {
        v16 = v55[0];
        v0 = v22;
        v4 = v38;
        goto LABEL_26;
      }
    }
  }

LABEL_57:

  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v16;
  return result;
}

uint64_t sub_252D0F5B8()
{
  v0 = sub_252E36324();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v49 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = *(sub_252D103A8() + 24);

  v56 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_64;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = 0;
    v42 = v14 & 0xFFFFFFFFFFFFFF8;
    v43 = v14 & 0xC000000000000001;
    v40 = v14;
    v41 = v14 + 32;
    v53 = (v1 + 48);
    v54 = 0;
    v50 = (v1 + 56);
    v51 = v9;
    v46 = (v1 + 32);
    v47 = (v1 + 8);
    v48 = v13;
    v38 = v4;
    v39 = v15;
    while (1)
    {
      if (v43)
      {
        v19 = MEMORY[0x2530ADF00](v17, v14);
        v20 = __OFADD__(v17, 1);
        v21 = v17 + 1;
        if (v20)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v17 >= *(v42 + 16))
        {
          goto LABEL_63;
        }

        v18 = *(v41 + 8 * v17);

        v20 = __OFADD__(v17, 1);
        v21 = v17 + 1;
        if (v20)
        {
          goto LABEL_62;
        }
      }

      v45 = v21;
      v44 = v19;
      v1 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      v55[0] = v16;
      if (!(v1 >> 62))
      {
        v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          break;
        }

        goto LABEL_26;
      }

      v9 = sub_252E378C4();
      if (v9)
      {
        break;
      }

LABEL_26:
      v9 = v51;
      if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
      {
        v52 = sub_252E378C4();
      }

      else
      {
        v52 = *(v16 + 16);
      }

      v1 = 0;
      do
      {
        if (v52 == v1)
        {

          goto LABEL_6;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2530ADF00](v1, v16);
          v31 = v27;
          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v1 >= *(v16 + 16))
          {
            goto LABEL_61;
          }

          v31 = *(v16 + 8 * v1 + 32);

          if (__OFADD__(v1, 1))
          {
            goto LABEL_60;
          }
        }

        v28 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (!v28)
        {
          goto LABEL_31;
        }

        sub_252956C1C(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v9);
        v32 = *v53;
        if ((*v53)(v9, 1, v0) == 1)
        {
          sub_252938BBC(v9);
          if (!*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
          {
            *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
            *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
            v34 = v49;
            sub_252E37024();

            (*v50)(v34, 0, 1, v0);
            goto LABEL_45;
          }

          v33 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

          v34 = v49;
          sub_25296EBC4(v49);
        }

        else
        {
          v35 = *v46;
          (*v46)(v4, v9, v0);
          v34 = v49;
          v35(v49, v4, v0);
          (*v50)(v34, 0, 1, v0);
        }

        if (v32(v34, 1, v0) == 1)
        {
          v27 = sub_252938BBC(v34);
          v28 = 0;
LABEL_31:
          v29 = 0;
          goto LABEL_32;
        }

LABEL_45:
        v28 = sub_252E36304();
        v29 = v36;
        v27 = (*v47)(v34, v0);
LABEL_32:
        v14 = &v38;
        v55[0] = v28;
        v55[1] = v29;
        MEMORY[0x28223BE20](v27);
        *(&v38 - 2) = v55;
        v30 = v54;
        v13 = sub_2529EDB18(sub_252D10E08, (&v38 - 4), &unk_2864A3470);
        v54 = v30;

        ++v1;
        v9 = v51;
      }

      while ((v13 & 1) == 0);

      sub_252E37A94();
      v1 = *(v56 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_6:
      v13 = v48;
      v14 = v40;
      v17 = v45;
      v16 = MEMORY[0x277D84F90];
      if (v45 == v39)
      {
        v16 = v56;
        goto LABEL_57;
      }
    }

    v22 = v0;
    v23 = 0;
    v4 = (v1 & 0xC000000000000001);
    v14 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v24 = MEMORY[0x2530ADF00](v23, v1);
        v0 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v23 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v24 = *(v1 + 8 * v23 + 32);

        v0 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
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
          __break(1u);
LABEL_64:
          v15 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v25 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v25)
      {
        sub_252956C1C(v25 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v13);
        if ((*v53)(v13, 1, v22) != 1)
        {
          sub_252938BBC(v13);
          sub_252E37A94();
          v26 = *(v55[0] + 16);
          sub_252E37AC4();
          v13 = v48;
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_15;
        }
      }

      else
      {
        (*v50)(v13, 1, 1, v22);
      }

      sub_252938BBC(v13);

LABEL_15:
      ++v23;
      if (v0 == v9)
      {
        v16 = v55[0];
        v0 = v22;
        v4 = v38;
        goto LABEL_26;
      }
    }
  }

LABEL_57:

  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v16;
  return result;
}

uint64_t sub_252D0FCC4()
{
  v0 = *(sub_252D108D8() + 24);

  v1 = sub_252997898(v0);

  if (v1 >> 62)
  {
LABEL_25:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v5, v1);
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v1 + 8 * v5 + 32);

        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      v8 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
        if (v9)
        {
          break;
        }
      }

LABEL_6:
      ++v5;
      if (v3 == v2)
      {
        goto LABEL_27;
      }
    }

    v10 = *(v9 + 24);
    v11 = *(v9 + 32);

    if (v11)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_2529F7D44(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v14 = *(v4 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v16 = v4;
      v17 = *(v4 + 2);
      v18 = sub_2529F7D44((v14 > 1), v13 + 1, 1, v16);
      v13 = v17;
      v4 = v18;
    }

    *(v4 + 2) = v15;
    *&v4[8 * v13 + 32] = v10;
  }

  while (v3 != v2);
LABEL_27:

  if (*(v4 + 2))
  {
    v19 = sub_252987D34(v4);
  }

  else
  {

    return 0;
  }

  return v19;
}