void sub_232C3902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions;
  swift_beginAccess();
  v9 = *(a2 + v8);

  sub_232C437E4(v10);

  v11 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions;
  swift_beginAccess();
  v12 = *(a2 + v11);

  sub_232C437E4(v13);

  v14 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions;
  swift_beginAccess();
  v15 = *(a2 + v14);

  sub_232C437E4(v16);

  v17 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
  swift_beginAccess();
  v18 = *(a2 + v17);

  sub_232C437E4(v19);

  v20 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions;
  swift_beginAccess();
  v21 = *(a2 + v20);

  sub_232C437E4(v22);

  v23 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions;
  swift_beginAccess();
  v24 = *(a2 + v23);

  sub_232C43B98(v25);

  v26 = *(a2 + v14);

  sub_232C4359C(v27, v28, v29, v30, v31, v32, v33, v34, v68, v71, a1, a3, v80, a5, v88, v92, v96, v100, v104, v107, v110, v113, v116, v119, v122, v125);

  v35 = *(a2 + v17);

  sub_232C4359C(v36, v37, v38, v39, v40, v41, v42, v43, v69, v72, v76, v78, v81, v85, v89, v93, v97, v101, v105, v108, v111, v114, v117, v120, v123, v126);

  v44 = *(a2 + v23);

  sub_232C43678(v45, v46, v47, v48, v49, v50, v51, v52, v70, v73, v77, v79, v82, v86, v90, v94, v98, v102, v106, v109, v112, v115, v118, v121, v124, v127);

  v74 = sub_232B26B10(*(a2 + v23));
  v53 = *(a2 + v23);
  v103 = sub_232B26B10(v53);

  v83 = a4;
  swift_beginAccess();
  v54 = 0;
  v95 = v53 & 0xC000000000000001;
  v99 = v53;
  v91 = v53 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v103 == v54)
    {

      return;
    }

    if (v95)
    {
      v55 = MEMORY[0x2383922C0](v54, v99);
    }

    else
    {
      if (v54 >= *(v91 + 16))
      {
        goto LABEL_13;
      }

      v55 = *(v99 + 8 * v54 + 32);
    }

    v56 = v55;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v57 = sub_232C49EA4(v55);
    if (v58)
    {
      v59 = v57;
      v60 = v58;
      v61 = *(v83 + 32);
      v62 = *(v87 + 8);

      sub_232C4C348();
      v64 = v63;

      sub_232C43EF0(v59, v60, v64, v74);

      v65 = *(v83 + 32);

      sub_232C4C7B4();
      v67 = v66;

      sub_232C44DB8(v59, v60, v67);
    }

    ++v54;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_232C39390(uint64_t a1, char a2)
{
  v5 = sub_232CE9A30();
  v6 = sub_232B48F0C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B3516C();
  sub_232C3BA64();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_232C3893C();
  v14 = sub_232C35C4C(a1, a2);
  sub_232CE9810();
  if (MEMORY[0x238391570]())
  {
    if (sub_232B26B10(v14))
    {
      if (a2)
      {
        sub_232C4CFA4();
      }

      else
      {
        sub_232C4CB00();
        sub_232C4CD74();
      }
    }

    else
    {

      sub_232CE9A20();
      v19 = sub_232CE9A00();
      v20 = sub_232CEA1A0();
      if (os_log_type_enabled(v19, v20))
      {
        *sub_232BA73DC() = 0;
        sub_232C3BC90(&dword_232B02000, v21, v20, "No confident predictions returned by the model");
        sub_232BA6A84();
      }

      return (*(v8 + 8))(v13, v5);
    }
  }

  else
  {

    sub_232C4CB00();
    sub_232CE9A20();
    v15 = sub_232CE9A00();
    sub_232CEA1A0();
    sub_232C3BC08();
    if (os_log_type_enabled(v15, v16))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BC90(&dword_232B02000, v17, v13, "AutonamingFromMessages feature flag is off. Not adding events to poem stream");
      sub_232BA6A84();
    }

    return (*(v8 + 8))(v2, v5);
  }
}

void sub_232C395BC()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232CE9A30();
  v11 = sub_232B48F0C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v18 = v17 - v16;
  v31 = v3;
  sub_232B13F74();
  v19 = *(v9 + 56);
  v20 = *(v19 + 16);

  if (!v20)
  {
LABEL_6:
    sub_232CE9A20();
    v23 = sub_232CE9A00();
    v24 = sub_232CEA1C0();
    if (os_log_type_enabled(v23, v24))
    {
      *sub_232BA73DC() = 0;
      sub_232C3BD58();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      sub_232B26D28();
    }

    (*(v13 + 8))(v18, v10);
    goto LABEL_9;
  }

  v21 = sub_232B1F160(v7, v5);
  if ((v22 & 1) == 0)
  {

    goto LABEL_6;
  }

  memcpy(v32, (*(v19 + 56) + 88 * v21), sizeof(v32));
  sub_232C3B5F0(v32, &v30);

  if (v1 >= 1)
  {
    sub_232C335A4(1, v1, &v31, v32);
LABEL_9:
    sub_232B20A00();
    return;
  }

  __break(1u);
}

void sub_232C39784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v267 = a2;
  v278 = a3;
  sub_232C459C0();
  v256 = v4;
  sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
  v5 = MEMORY[0x277D84F90];
  v245 = sub_232CE9C60();
  sub_232B13F74();
  v301 = a1;
  v6 = *(a1 + 16);
  *__dst = v5;
  v7 = *(v6 + 64);
  v8 = *(v6 + 32);
  sub_232B34F88();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_7:
    sub_232C3BB4C();
    if (sub_232C4353C())
    {
      sub_232CEA560();
      v16 = *(*__dst + 16);
      sub_232C3BCDC();
      sub_232CEA590();
      sub_232C3BCDC();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    v14 = v15;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v6 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v17 = *__dst;
  v18 = sub_232B26B10(*__dst);
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  sub_232C3BC2C(v18);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = *__dst;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2383922C0](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      sub_232B13F74();
      v23 = *(v22 + 32);
      if (v23 >> 62)
      {
        if (v23 < 0)
        {
          v27 = *(v22 + 32);
        }

        v24 = sub_232CEA610();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *__dst = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_232BC1BBC(v25);
        sub_232BC1E24();
        sub_232B64A58(v28, v29, v30);
        v21 = *__dst;
      }

      ++v20;
      *(v21 + 16) = v26 + 1;
      *(v21 + 8 * v26 + 32) = v24;
    }

    while (v19 != v20);
LABEL_26:

    v31 = v245;
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = v245;
    v32 = sub_232C3B9F0();
    sub_232B1F574(v32, v33, v34);
    v35 = *(v301 + 16);
    *__dst = MEMORY[0x277D84F90];
    v37 = v35 + 64;
    v36 = *(v35 + 64);
    v38 = *(v35 + 32);
    sub_232B34F88();
    v41 = v40 & v39;
    v43 = (v42 + 63) >> 6;

    v44 = 0;
    while (v41)
    {
      v45 = v44;
LABEL_32:
      sub_232C3BB4C();
      if (sub_232C434DC())
      {
        sub_232CEA560();
        v31 = *(*__dst + 16);
        sub_232C3BCDC();
        sub_232CEA590();
        sub_232C3BCDC();
        sub_232CEA5A0();
        sub_232CEA570();
      }

      else
      {
      }

      v44 = v45;
    }

    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_102;
      }

      if (v45 >= v43)
      {
        break;
      }

      v41 = *(v37 + 8 * v45);
      ++v44;
      if (v41)
      {
        goto LABEL_32;
      }
    }

    v46 = *__dst;
    v47 = sub_232B26B10(*__dst);
    if (v47)
    {
      v41 = v47;
      sub_232C3BC2C(v47);
      if (v41 < 0)
      {
        goto LABEL_104;
      }

      v48 = 0;
      v49 = *__dst;
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x2383922C0](v48, v46);
        }

        else
        {
          v50 = *(v46 + 8 * v48 + 32);
        }

        sub_232B13F74();
        v51 = *(v50 + 32);
        if (v51 >> 62)
        {
          if (v51 < 0)
          {
            v54 = *(v50 + 32);
          }

          v37 = sub_232CEA610();
        }

        else
        {
          v37 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *__dst = v49;
        v53 = *(v49 + 16);
        v52 = *(v49 + 24);
        v31 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          sub_232BC1BBC(v52);
          sub_232BC1E24();
          sub_232B64A58(v55, v56, v57);
          v49 = *__dst;
        }

        ++v48;
        *(v49 + 16) = v31;
        *(v49 + 8 * v53 + 32) = v37;
      }

      while (v41 != v48);
    }

    swift_isUniquelyReferenced_nonNull_native();
    *__dst = v245;
    v58 = sub_232C3B9F0();
    sub_232B1F574(v58, v59, v60);
    v290 = v245;
    sub_232B13F74();
    if (*(*(v301 + 56) + 16))
    {
      v61 = *(v301 + 56);

      v62 = sub_232B1F160(v267, v278);
      if (v63)
      {
        v70 = sub_232C3B9CC(v62, v63, v64, v65, v66, v67, v68, v69, v234, v245, v256, v267, v278, v245, v301, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);
        v71 = v325;
        v41 = v331;
        v37 = v332;
        v31 = v333;
        sub_232C3BA44(v70, v72, v73, v74, v75, v76, v77, v78, v235, v246, v257, v268, v279, v291, v302, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);

        if (v245)
        {
          *__dst = v245;
          sub_232C3BCE8();
          sub_232C3BB80();
          sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
          goto LABEL_58;
        }

LABEL_57:
        *__dst = 0;
        v325 = v71;
        sub_232C3BCE8();
        v334 = v79;
        sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_58:
        sub_232C3BB00();
        sub_232C3BA10();
        v80 = sub_232C3B9F0();
        v83 = sub_232B1F574(v80, v81, v82);
        sub_232C3B98C(v83, v84, v85, v86, v87, v88, v89, v90, v234, v245, v256, v267, v278, v290, v301);
        if (v91)
        {

          v92 = sub_232B1F160(v269, v280);
          if (v93)
          {
            sub_232C3B9CC(v92, v93, v94, v95, v96, v97, v98, v99, v236, v247, v258, v269, v280, v292, v303, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);
            sub_232C3BAF0();
            v100 = v330;
            v41 = v331;
            v37 = v332;
            v31 = v333;
            sub_232C3BA44(v101, v102, v103, v104, v105, v106, v107, v108, v237, v248, v259, v270, v281, v293, v304, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);

            if (v247)
            {
              sub_232C3BACC();
              v330 = v100;
              v331 = v41;
              v332 = v37;
              v333 = v31;
              sub_232C3BB80();
              sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
              goto LABEL_65;
            }

LABEL_64:
            sub_232C3BABC();
            v330 = v100;
            v331 = v41;
            v332 = v37;
            v333 = v31;
            v334 = v109;
            sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_65:
            sub_232C3BB00();
            sub_232C3BA10();
            v110 = sub_232C3B9F0();
            v113 = sub_232B1F574(v110, v111, v112);
            sub_232C3B98C(v113, v114, v115, v116, v117, v118, v119, v120, v236, v247, v258, v269, v280, v292, v303);
            if (v121)
            {

              v122 = sub_232B1F160(v271, v282);
              if (v123)
              {
                sub_232C3B9CC(v122, v123, v124, v125, v126, v127, v128, v129, v238, v249, v260, v271, v282, v294, v305, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);
                sub_232C3BAF0();
                v131 = v330;
                v130 = v331;
                v133 = v332;
                v132 = v333;
                sub_232C3BA44(v134, v135, v136, v137, v138, v139, v140, v141, v239, v250, v261, v272, v283, v295, v306, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);

                if (v249)
                {
                  sub_232C3BACC();
                  v330 = v131;
                  v331 = v130;
                  v332 = v133;
                  v333 = v132;
                  sub_232C3BB80();
                  sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                  goto LABEL_72;
                }

LABEL_71:
                sub_232C3BABC();
                v330 = v131;
                v331 = v130;
                v332 = v133;
                v333 = v132;
                v334 = v142;
                sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_72:
                sub_232C3BB00();
                sub_232C3BA10();
                v143 = sub_232C3B9F0();
                v146 = sub_232B1F574(v143, v144, v145);
                sub_232C3B98C(v146, v147, v148, v149, v150, v151, v152, v153, v238, v249, v260, v271, v282, v294, v305);
                if (v154)
                {

                  v155 = sub_232B1F160(v273, v284);
                  if (v156)
                  {
                    sub_232C3B9CC(v155, v156, v157, v158, v159, v160, v161, v162, v240, v251, v262, v273, v284, v296, v307, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);
                    sub_232C3BAF0();
                    v164 = v330;
                    v163 = v331;
                    v165 = v332;
                    v166 = v333;
                    sub_232C3BA44(v167, v168, v169, v170, v171, v172, v173, v174, v241, v252, v263, v274, v285, v297, v308, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);

                    if (v251)
                    {
                      sub_232C3BACC();
                      v330 = v164;
                      v331 = v163;
                      v332 = v165;
                      v333 = v166;
                      sub_232C3BB80();
                      sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                      goto LABEL_79;
                    }

LABEL_78:
                    sub_232C3BABC();
                    v330 = v164;
                    v331 = v163;
                    v332 = v165;
                    v333 = v166;
                    v334 = v175;
                    sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_79:
                    sub_232C3BB00();
                    *__dst = v71;
                    v176 = sub_232C3B9F0();
                    v178 = sub_232B1F574(v176, 0xD000000000000019, v177);
                    sub_232C3B98C(v178, v179, v180, v181, v182, v183, v184, v185, v240, v251, v262, v273, v284, v296, v307);
                    if (v186)
                    {

                      v187 = sub_232B1F160(v275, v286);
                      if (v188)
                      {
                        sub_232C3B9CC(v187, v188, v189, v190, v191, v192, v193, v194, v242, v253, v264, v275, v286, v298, v309, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);
                        sub_232C3BAF0();
                        v164 = v330;
                        v163 = v331;
                        v166 = v332;
                        v195 = v333;
                        sub_232C3BA44(v196, v197, v198, v199, v200, v201, v202, v203, v243, v254, v265, v276, v287, v299, v310, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);

                        if (v253)
                        {
                          sub_232C3BACC();
                          v330 = v164;
                          v331 = v163;
                          v332 = v166;
                          v333 = v195;
                          sub_232C3BB80();
                          sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                          goto LABEL_86;
                        }

LABEL_85:
                        sub_232C3BABC();
                        v330 = v164;
                        v331 = v163;
                        v332 = v166;
                        v333 = v195;
                        v334 = v204;
                        sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_86:
                        sub_232C3BB00();
                        sub_232C3BA10();
                        v205 = sub_232C3B9F0();
                        v208 = sub_232B1F574(v205, v206, v207);
                        sub_232C3B98C(v208, v209, v210, v211, v212, v213, v214, v215, v242, v253, v264, v275, v286, v298, v309);
                        if (v216)
                        {

                          v217 = sub_232B1F160(v277, v288);
                          if (v218)
                          {
                            sub_232C3B9CC(v217, v218, v219, v220, v221, v222, v223, v224, v244, v255, v266, v277, v288, v300, v311, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, __dst[0]);
                            v225 = v325;
                            v289 = *__dst;
                            v226 = v326;
                            v227 = v327;
                            v229 = v328;
                            v228 = v329;
                            v164 = v330;
                            v163 = v331;
                            v166 = v332;
                            v312 = v333;
                            v230 = v334;
                            sub_232C3B5F0(__dst, &v313);

                            if (v289)
                            {
                              *__dst = v289;
                              v325 = v225;
                              v326 = v226;
                              v327 = v227;
                              v328 = v229;
                              v329 = v228;
                              v330 = v164;
                              v331 = v163;
                              v332 = v166;
                              v333 = v312;
                              v334 = v230;

                              sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
LABEL_94:
                              sub_232C3BB00();
                              *__dst = v225;
                              v232 = sub_232C3B9F0();
                              sub_232B1F574(v232, 0xD000000000000019, v233);
                              return;
                            }

                            v231 = v312;
LABEL_93:
                            *__dst = 0;
                            v325 = v225;
                            v326 = v226;
                            v327 = v227;
                            v328 = v229;
                            v329 = v228;
                            v330 = v164;
                            v331 = v163;
                            v332 = v166;
                            v333 = v231;
                            v334 = v230;
                            sub_232B267AC(__dst, &qword_27DDC8088, &qword_232CFE0D0);
                            goto LABEL_94;
                          }

                          v230 = 0;
                        }

                        else
                        {
                          v230 = 0;
                        }

                        sub_232C3BA80();
                        v228 = 0;
                        v229 = 0;
                        v227 = 0;
                        v226 = 0;
                        v225 = 0;
                        goto LABEL_93;
                      }
                    }

                    v195 = 0;
                    sub_232C3BA80();
                    sub_232C3B9B4();
                    goto LABEL_85;
                  }
                }

                v166 = 0;
                v165 = 0;
                v163 = 0;
                v164 = 0;
                sub_232C3B9B4();
                goto LABEL_78;
              }
            }

            v132 = 0;
            v133 = 0;
            v130 = 0;
            v131 = 0;
            sub_232C3B9B4();
            goto LABEL_71;
          }
        }

        sub_232C3BA80();
        v100 = 0;
        sub_232C3B9B4();
        goto LABEL_64;
      }
    }

    sub_232C3BA80();
    v71 = 0;
    goto LABEL_57;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

void sub_232C3A1F8()
{
  sub_232B35110();
  v4 = v3;
  v102 = v5;
  v103 = v6;
  v8 = v7;
  v104 = v9;
  v10 = sub_232CE9A30();
  v11 = sub_232B48F0C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  sub_232C3BA64();
  MEMORY[0x28223BE20](v16);
  v18 = &v95 - v17;
  MEMORY[0x28223BE20](v19);
  sub_232C3BD10();
  MEMORY[0x28223BE20](v20);
  sub_232C3BD24();
  MEMORY[0x28223BE20](v21);
  if (v4)
  {
    sub_232CE9A20();
    v22 = sub_232CE9A00();
    v23 = sub_232CEA1A0();
    if (sub_232BA6EB8(v23))
    {
      v24 = sub_232BA73DC();
      sub_232C3BCD0(v24);
      sub_232C3BA74();
      sub_232C3BD78(v25, v26, v27, v28);
      sub_232C3BAA0();
    }

    (*(v13 + 8))(v1, v10);
    goto LABEL_72;
  }

  if (*(v0 + 152))
  {
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (sub_232BA6EB8(v30))
    {
      v31 = sub_232BA73DC();
      sub_232BD4280(v31);
      sub_232C3BA24(&dword_232B02000, v32, v33, "Can't persist stats because the configuration counldn't be loaded");
      sub_232BA66EC();
    }

    (*(v13 + 8))(v18, v10);
    goto LABEL_72;
  }

  sub_232C3BB28();
  v36 = *(v0 + 24);
  if (!v36)
  {
    sub_232CE9A20();
    v83 = sub_232CE9A00();
    v84 = sub_232CEA1A0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = sub_232BA73DC();
      sub_232C3BCD0(v85);
      sub_232C3BD78(&dword_232B02000, v83, v84, "Can't persist stats without a database");
      sub_232C3BAA0();
    }

    (*(v13 + 8))(v2, v10);
    goto LABEL_72;
  }

  v96 = v35;
  v95 = v34;
  v99 = v0;
  v97 = v10;
  v98 = v13;
  v37 = sub_232B26B10(v8);
  v101 = v36;
  v38 = 0;
  v111 = MEMORY[0x277D84F90];
  while (v37 != v38)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x2383922C0](v38, v8);
    }

    else
    {
      if (v38 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v39 = *(v8 + 8 * v38 + 32);
    }

    v40 = v39;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
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
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      return;
    }

    v41 = [v39 array];
    sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
    v42 = sub_232CE9FE0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_232C3BD64(isUniquelyReferenced_nonNull_native, v44, v45, v111);
      sub_232B37008();
      v111 = v49;
    }

    v47 = *(v111 + 16);
    v46 = *(v111 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_232BC1BBC(v46);
      sub_232BC1E24();
      sub_232B37008();
      v111 = v50;
    }

    v48 = v111;
    *(v111 + 16) = v47 + 1;
    *(v48 + 8 * v47 + 32) = v42;
    ++v38;
  }

  v51 = 0;
  v52 = MEMORY[0x277D84F90];
  v53 = *(v111 + 16);
  v108 = v111 + 32;
  v100 = v53;
  while (v51 != v53)
  {
    if (v51 >= *(v111 + 16))
    {
      goto LABEL_82;
    }

    v54 = *(v108 + 8 * v51);
    if (v54 >> 62)
    {
      if (v54 < 0)
      {
        v77 = *(v108 + 8 * v51);
      }

      v55 = sub_232CEA610();
    }

    else
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v52 >> 62;
    if (v52 >> 62)
    {
      v57 = sub_232CEA610();
    }

    else
    {
      v57 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v57 + v55;
    if (__OFADD__(v57, v55))
    {
      goto LABEL_83;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v110 = v55;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v56)
      {
LABEL_37:
        sub_232CEA610();
      }

      else
      {
        v60 = v52 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
        v61 = *(v60 + 16);
      }

      v52 = sub_232CEA540();
      v60 = v52 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_39;
    }

    if (v56)
    {
      goto LABEL_37;
    }

    v60 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v58 > *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_36;
    }

LABEL_39:
    ++v51;
    v62 = *(v60 + 16);
    v63 = (*(v60 + 24) >> 1) - v62;
    v64 = v60 + 8 * v62;
    v109 = v60;
    if (v54 >> 62)
    {
      v66 = sub_232CEA610();
      if (!v66)
      {
        goto LABEL_53;
      }

      v67 = v66;
      v68 = sub_232CEA610();
      if (v63 < v68)
      {
        goto LABEL_87;
      }

      if (v67 < 1)
      {
        goto LABEL_88;
      }

      v105 = v68;
      v106 = v52;
      v107 = v51;
      v69 = v64 + 32;
      sub_232C3B474();
      for (i = 0; i != v67; ++i)
      {
        sub_232B124A8(&qword_27DDC6B10, &unk_232CF8910);
        v71 = sub_232B4D400(v112, i, v54);
        v73 = *v72;
        swift_unknownObjectRetain();
        v71(v112, 0);
        *(v69 + 8 * i) = v73;
      }

      v52 = v106;
      v51 = v107;
      v53 = v100;
      v65 = v105;
LABEL_49:

      if (v65 < v110)
      {
        goto LABEL_84;
      }

      if (v65 > 0)
      {
        v74 = *(v109 + 16);
        v75 = __OFADD__(v74, v65);
        v76 = v74 + v65;
        if (v75)
        {
          goto LABEL_85;
        }

        *(v109 + 16) = v76;
      }
    }

    else
    {
      v65 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
        if (v63 < v65)
        {
          goto LABEL_86;
        }

        sub_232B124A8(&qword_27DDC8078, &unk_232CFE0B0);
        swift_arrayInitWithCopy();
        goto LABEL_49;
      }

LABEL_53:

      if (v110 > 0)
      {
        goto LABEL_84;
      }
    }
  }

  v78 = sub_232B26B10(v52);
  if (v78 != *(v104 + 16))
  {

    v86 = v96;
    sub_232CE9A20();
    v87 = sub_232CE9A00();
    v88 = sub_232CEA1C0();
    if (sub_232BA6EB8(v88))
    {
      v89 = sub_232BA73DC();
      sub_232BD4280(v89);
      v92 = "Keys count mismatch while trying to persist stats";
LABEL_78:
      sub_232C3BA24(&dword_232B02000, v90, v91, v92);
      sub_232BA66EC();
    }

LABEL_79:

    (*(v98 + 8))(v86, v97);
    goto LABEL_72;
  }

  if (!sub_232B26B10(v52))
  {

    v86 = v95;
    sub_232CE9A20();
    v87 = sub_232CE9A00();
    v93 = sub_232CEA1A0();
    if (sub_232BA6EB8(v93))
    {
      v94 = sub_232BA73DC();
      sub_232BD4280(v94);
      v92 = "No features found to persist or send to PET";
      goto LABEL_78;
    }

    goto LABEL_79;
  }

  sub_232C41148();
  v79 = sub_232C46380();
  v80 = sub_232B26B10(v52);
  for (j = 0; v80 != j; ++j)
  {
    if ((v52 & 0xC000000000000001) != 0)
    {
      v82 = MEMORY[0x2383922C0](j, v52);
    }

    else
    {
      if (j >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v82 = *(v52 + 8 * j + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_89;
    }

    sub_232C3A9E4(j, v82, v102, &v113, v103, v104, v99, v101, v79);
    swift_unknownObjectRelease();
  }

LABEL_72:
  sub_232B20A00();
}

uint64_t sub_232C3A9E4(unint64_t a1, void *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v80 = a8;
  v86 = a4;
  v14 = sub_232CE9A30();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v78 - v19;
  v82 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v20 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_232CE9C60();
  v22 = [a2 featureNames];
  v23 = sub_232CEA0D0();

  swift_unknownObjectRetain();
  sub_232C337C8(v23, a2, &v88);

  sub_232B26B2C(a1);
  if ((a3 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x2383922C0](a1, a3);
  }

  else
  {
    v24 = *(a3 + 8 * a1 + 32);
    swift_unknownObjectRetain();
  }

  v25 = COERCE_DOUBLE(sub_232C4D2BC(v24));
  v27 = v26;
  swift_unknownObjectRelease();
  v28 = *v86;
  v29 = v88;
  swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v29;
  sub_232B1F66C(0x68745F6C65646F6DLL, 0xEF646C6F68736572, v28);
  v30 = v87[0];
  if (v27)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v25;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v30;
  sub_232B1F66C(0xD000000000000010, 0x8000000232D02820, v31);
  v32 = v87[0];
  v33 = sub_232C463F0();
  swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v32;
  sub_232B1F66C(0x736D5F746E756F63, 0xEA00000000007367, v33);
  v34 = v87[0];
  v88 = v87[0];
  swift_beginAccess();
  v35 = *(*(a5 + 16) + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v87[0] = v34;
  result = sub_232B1F66C(0x7268745F766E6F63, 0xEC00000073646165, v35);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (*(a6 + 16) <= a1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v84 = v15;
  v85 = v14;
  v37 = a6 + 16 * a1;
  v38 = *(v37 + 32);
  v39 = *(v37 + 40);

  v40 = sub_232C459C0();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = sub_232C45710();
  if (v48)
  {
    v49 = v48;
    v78 = v47;
    v79 = a9;
    v50 = *(v86 + 2);

    sub_232C395BC();
    v52 = v51;

    sub_232C39784(a5, v38, v39);
    v54 = v53;

    v86 = v52;
    v55 = v78;
    sub_232C41C2C(v38, v39, v78, v49, v40, v42, v44, v46, v52, v54);

    v56 = v79;

    sub_232B1E0D0(v44, v46, v56);
    v58 = v57;
    if (v57)
    {
    }

    v59 = sub_232C4D440(v44, v46, v55, v49, v56);

    type metadata accessor for AutonamingModelFeatures();

    v60 = AutonamingModelFeatures.__allocating_init(featureMap:annotation:groundTruthAvailable:cooccurrenceKey:listFeatureMap:)(v86, v59, v58 != 0, v38, v39, v54);
    v61 = v83;
    sub_232B1D2E4(v83);

    v62 = v81;
    sub_232CE9A20();

    v63 = sub_232CE9A00();
    v64 = sub_232CEA1B0();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v84;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v87[0] = v68;
      *v67 = 136315138;
      v69 = sub_232BAD2D4(v44, v46, v87);

      *(v67 + 4) = v69;
      _os_log_impl(&dword_232B02000, v63, v64, "Logging training data to PET for %s", v67, 0xCu);
      sub_232B2040C(v68);
      MEMORY[0x238393870](v68, -1, -1);
      MEMORY[0x238393870](v67, -1, -1);
    }

    else
    {
    }

    (*(v66 + 8))(v62, v85);
    sub_232CE9640();
    sub_232CE9630();
    v87[3] = v82;
    v87[4] = sub_232C3B4D8();
    v77 = sub_232BA18A8(v87);
    sub_232C3B530(v61, v77);
    sub_232CE9620();

    sub_232C3B594(v61);
    sub_232B2040C(v87);
  }

  else
  {
    v70 = v40;

    v71 = v79;
    sub_232CE9A20();

    v72 = sub_232CE9A00();
    v73 = sub_232CEA1C0();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v87[0] = v75;
      *v74 = 136315138;
      v76 = sub_232BAD2D4(v70, v42, v87);

      *(v74 + 4) = v76;
      _os_log_impl(&dword_232B02000, v72, v73, "Unable to find name for id %s while trying to persist stats", v74, 0xCu);
      sub_232B2040C(v75);
      MEMORY[0x238393870](v75, -1, -1);
      MEMORY[0x238393870](v74, -1, -1);
    }

    else
    {
    }

    (*(v84 + 8))(v71, v85);
  }
}

uint64_t sub_232C3B1C4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_232C3B794(*(v0 + 32));
  v8 = *(v0 + 96);

  v9 = *(v0 + 160);

  return v0;
}

uint64_t sub_232C3B214()
{
  sub_232C3B1C4();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_232C3B26C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C3B28C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_232C3B2D4()
{
  result = qword_27DDC8068;
  if (!qword_27DDC8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8068);
  }

  return result;
}

id sub_232C3B328()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_232CE9C20();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_232C3B410(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232CE9D50();

  return v3;
}

unint64_t sub_232C3B474()
{
  result = qword_27DDC8080;
  if (!qword_27DDC8080)
  {
    sub_232B27EEC(&qword_27DDC6B10, &unk_232CF8910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8080);
  }

  return result;
}

unint64_t sub_232C3B4D8()
{
  result = qword_27DDC6538;
  if (!qword_27DDC6538)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6538);
  }

  return result;
}

uint64_t sub_232C3B530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C3B594(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C3B6A0(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_232C3B740()
{
  result = qword_27DDC80A8;
  if (!qword_27DDC80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80A8);
  }

  return result;
}

void sub_232C3B794(id a1)
{
  if (a1 != 1)
  {
  }
}

_BYTE *storeEnumTagSinglePayload for PoemModelingParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232C3B884()
{
  result = qword_27DDC80B0;
  if (!qword_27DDC80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80B0);
  }

  return result;
}

unint64_t sub_232C3B8DC()
{
  result = qword_27DDC80B8;
  if (!qword_27DDC80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80B8);
  }

  return result;
}

unint64_t sub_232C3B934()
{
  result = qword_27DDC80C0;
  if (!qword_27DDC80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC80C0);
  }

  return result;
}

void *sub_232C3B9CC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char __dst)
{
  v29 = (*(v27 + 56) + 88 * a1);

  return memcpy(&__dst, v29, 0x58uLL);
}

void sub_232C3BA24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_232C3BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_232C3B5F0(&a27, &a16);
}

void sub_232C3BAA0()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232C3BB00()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 sub_232C3BB28()
{
  v2 = *(v0 + 128);
  *(v1 - 136) = *(v0 + 104);
  *(v1 - 128) = *(v0 + 112);
  *(v1 - 112) = v2;
  result = *(v0 + 136);
  *(v1 - 104) = result;
  return result;
}

uint64_t sub_232C3BB4C()
{
  v4 = *(*(v0 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
}

uint64_t sub_232C3BB80()
{
}

uint64_t sub_232C3BB9C()
{
  v3 = v1[3];
  v0[4] = v1[2];
  v0[5] = v3;
  v0[6] = v1[4];
  *(v0 + 105) = *(v1 + 73);

  return sub_232C3B6E4((v0 + 4), v0);
}

void sub_232C3BC2C(uint64_t a1)
{

  sub_232B64A58(0, a1 & ~(a1 >> 63), 0);
}

uint64_t sub_232C3BC50()
{
  sub_232B0D210(v0);
  sub_232B0D210(v2);

  return sub_232B0D210(v1);
}

void sub_232C3BC90(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_232C3BCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 152) = &a9 - v9;

  return sub_232CE8B40();
}

void sub_232C3BD78(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_232C3BD90()
{

  return swift_slowAlloc();
}

uint64_t sub_232C3BDA8(uint64_t a1, uint64_t a2)
{

  return sub_232B1F66C(a1, a2, v3);
}

__n128 sub_232C3BE08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_232C3BE24(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_232C3BE78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_232C3BEEC(uint64_t a1, int64_t a2, uint64_t a3)
{
  v179 = a3;
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v157 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v157 - v18;
  v20 = *(a1 + 16);
  v21 = sub_232B26B10(a2);
  v176 = v20;
  if (v20 != v21)
  {
    sub_232CE9A20();
    v25 = sub_232CE9A00();
    v26 = sub_232CEA1C0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_232B02000, v25, v26, "PoemAnalyticsUtilities: Keys count mismatch during aggregation model inference", v27, 2u);
      sub_232C3BAA0();
    }

    (*(v9 + 8))(v13, v6);
    return MEMORY[0x277D84F90];
  }

  if (*(v3 + 56))
  {
    sub_232CE9A20();
    v22 = sub_232CE9A00();
    v23 = sub_232CEA1C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_232B02000, v22, v23, "PoemAnalyticsUtilities: Couldn't load configuration file, hence not adding any event to PoemAnalytics", v24, 2u);
      sub_232C3BAA0();
    }

    (*(v9 + 8))(v16, v6);
    return MEMORY[0x277D84F90];
  }

  v171 = v9;
  v161 = v19;
  v160 = v6;
  v172 = v3;
  v29 = *(v3 + 8);
  sub_232B124A8(&qword_27DDC80C8, &qword_232CFE248);
  v158 = MEMORY[0x277D84F90];
  v30 = sub_232CE9C60();
  v31 = sub_232B26B10(a2);
  v32 = 0;
  v33 = a2 & 0xC000000000000001;
  v182 = a2 & 0xFFFFFFFFFFFFFF8;
  v168 = a2;
  v180 = a2 + 32;
  v181 = "madConfidenceThreshold";
  v34 = (a1 + 40);
  v174 = a2 & 0xC000000000000001;
  v175 = v31;
  v170 = (a1 + 40);
LABEL_11:
  v35 = &v34[16 * v32];
  v36 = v32;
  v178 = v30;
  while (v31 != v36)
  {
    if (v33)
    {
      v37 = MEMORY[0x2383922C0](v36, v168);
    }

    else
    {
      if (v36 >= *(v182 + 16))
      {
        goto LABEL_71;
      }

      v37 = *(v180 + 8 * v36);
      swift_unknownObjectRetain();
    }

    v32 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_70;
    }

    v38 = sub_232CE9D20();
    v39 = [v37 featureValueForName_];

    if (v39)
    {
      v40 = [v39 dictionaryValue];
      sub_232C3DBE4();
      v41 = sub_232CE9C40();

      v184 = 1;
      sub_232CEA490();
      if (*(v41 + 16) && (v42 = sub_232B1F268(v186), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);
        sub_232B1FA60(v186);

        [v44 doubleValue];
        if (v36 >= v176)
        {
          goto LABEL_72;
        }

        v46 = v45;
        v177 = v44;
        v47 = *(v35 - 1);
        v48 = *v35;

        v173 = sub_232C459C0();
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v30 = v178;

        if (!*(v30 + 16) || (v55 = sub_232BA5CAC(), v57 = sub_232B1F160(v55, v56), (v58 & 1) == 0) || (sub_232C3DCA0(v57), *(v59 + 16) < v46))
        {
          LODWORD(v169) = swift_isUniquelyReferenced_nonNull_native();
          v186[0] = v30;
          v60 = sub_232BA5CAC();
          v167 = sub_232B1F160(v60, v61);
          if (__OFADD__(*(v30 + 16), (v62 & 1) == 0))
          {
            goto LABEL_74;
          }

          v63 = v62;
          sub_232B124A8(&qword_27DDC6768, &qword_232CFE250);
          if (sub_232CEA5C0())
          {
            v64 = sub_232BA5CAC();
            v66 = sub_232B1F160(v64, v65);
            v68 = v63;
            v69 = v63 & 1;
            v34 = v170;
            if (v69 != (v67 & 1))
            {
              goto LABEL_76;
            }
          }

          else
          {
            v68 = v63;
            v34 = v170;
            v66 = v167;
          }

          v30 = v186[0];
          if (v68)
          {
            sub_232C3DCA0(v66);
            v71 = *(v70 + 8);
            *v70 = v72;
            *(v70 + 8) = v50;
            *(v70 + 16) = v46;
            swift_unknownObjectRelease();
          }

          else
          {
            *(v186[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v73 = (*(v30 + 48) + 16 * v66);
            *v73 = v52;
            v73[1] = v54;
            sub_232C3DCA0(v66);
            *v74 = v75;
            *(v74 + 8) = v50;
            *(v74 + 16) = v46;
            v76 = *(v30 + 16);
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              goto LABEL_75;
            }

            *(v30 + 16) = v78;
            swift_unknownObjectRelease();
          }

          v33 = v174;
          v31 = v175;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();

        v33 = v174;
        v31 = v175;
      }

      else
      {

        swift_unknownObjectRelease();

        sub_232B1FA60(v186);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v36;
    v35 += 16;
  }

  v181 = sub_232C46380();
  sub_232C4D4C8();
  v80 = v79;
  v82 = v81;
  v185 = MEMORY[0x277D84F90];
  v83 = v30 + 64;
  v84 = 1 << *(v30 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v30 + 64);

  swift_beginAccess();
  swift_beginAccess();
  v88 = 0;
  v89 = (v84 + 63) >> 6;
  v165 = v80;
  v162 = v80 + v82;
  v90 = __OFADD__(v80, v82);
  v166 = v90;
  v159 = (v171 + 8);
  *&v87 = 136315138;
  v157 = v87;
  v164 = v83;
  v163 = (v84 + 63) >> 6;
  while (v86)
  {
LABEL_50:
    v92 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
    v93 = v92 | (v88 << 6);
    v94 = (*(v178 + 48) + 16 * v93);
    v96 = *v94;
    v95 = v94[1];
    v97 = *(v178 + 56) + 24 * v93;
    v98 = *v97;
    v99 = *(v97 + 8);
    v100 = *(v97 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v101 = sub_232C45710();
    if (v102)
    {
      v103 = v101;
      v104 = v102;
      v182 = v96;
      sub_232B1E0D0(v96, v95, v181);
      v106 = v105;
      if (v105)
      {
      }

      v107 = sub_232C4D440(v182, v95, v103, v104, v181);

      if (v107 == -1)
      {
        v108 = 0;
      }

      else
      {
        v108 = sub_232CEA100();
      }

      if (*v172)
      {
        v121 = sub_232C41374() == 0;
      }

      else
      {
        v121 = 1;
      }

      if (v166)
      {
        goto LABEL_73;
      }

      LODWORD(v175) = v106 != 0;
      LODWORD(v173) = v29 <= v100;
      v122 = v95;
      v180 = v95;
      v123 = v179;
      v124 = *(v179 + 64);
      v177 = v108;
      v125 = *(v124 + 16);
      v171 = *(*(v179 + 16) + 16);
      LODWORD(v176) = v121;
      v126 = sub_232C3DC90();
      v169 = sub_232C3CE20(v126, v127, v128);
      v129 = sub_232C3DC90();
      sub_232C3D0C4(v129, v130, v131);
      v132 = sub_232C3DC90();
      sub_232C3D368(v132, v133, v134);
      v135 = sub_232C3DC90();
      sub_232C3D60C(v135, v136, v137);
      v174 = v98;
      sub_232C3D8B0(v182, v122, v123);
      v170 = sub_232CEA100();
      v168 = sub_232CEA100();
      v167 = sub_232CEA100();
      v138 = sub_232CEA100();
      v139 = sub_232CEA100();
      v140 = sub_232CEA100();
      v141 = sub_232CEA100();
      v142 = sub_232CEA100();
      v143 = sub_232CEA100();
      v144 = sub_232CEA100();
      v145 = objc_allocWithZone(MEMORY[0x277CF1670]);
      v146 = v141;
      v89 = v163;
      v147 = sub_232C3D9E8(v170, v168, v167, v138, v139, v140, v146, v142, v143, v144);
      v148 = sub_232CEA040();
      v149 = sub_232CEA040();
      v150 = sub_232CEA0B0();
      v151 = sub_232CEA0B0();
      v152 = sub_232CEA040();
      v153 = objc_allocWithZone(MEMORY[0x277CF1668]);
      v154 = v151;
      v83 = v164;
      v155 = sub_232C3DAB4(v182, v180, v148, v149, v177, v150, v154, v152, v174, v99, 0, v147, 0, 0);

      if (v155)
      {
        MEMORY[0x238391D50](v156);
        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v158 = v185;
      }
    }

    else
    {

      v109 = v161;
      sub_232CE9A20();

      v110 = sub_232CE9A00();
      v111 = sub_232CEA1C0();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v180 = v95;
        v113 = v112;
        v114 = swift_slowAlloc();
        v183 = v114;
        *v113 = v157;
        v115 = sub_232BA5CAC();
        v118 = v89;
        v119 = v83;
        v120 = sub_232BAD2D4(v115, v116, v117);

        *(v113 + 4) = v120;
        v83 = v119;
        v89 = v118;
        _os_log_impl(&dword_232B02000, v110, v111, "PoemAnalyticsUtilities: Unable to find name for id %s while trying to send analytics event", v113, 0xCu);
        sub_232B2040C(v114);
        sub_232C3BAA0();
        MEMORY[0x238393870](v113, -1, -1);

        (*v159)(v161, v160);
      }

      else
      {

        (*v159)(v109, v160);
      }
    }
  }

  while (1)
  {
    v91 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v91 >= v89)
    {

      return v158;
    }

    v86 = *(v83 + 8 * v91);
    ++v88;
    if (v86)
    {
      v88 = v91;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

void sub_232C3CB94(uint64_t a1)
{
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9A20();

  v10 = sub_232CE9A00();
  v11 = sub_232CEA1A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = sub_232B26B10(a1);

    _os_log_impl(&dword_232B02000, v10, v11, "PoemAnalyticsUtilities: Sending %ld events to lighthouse", v12, 0xCu);
    MEMORY[0x238393870](v12, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v9, v2);
  v13 = [BiomeLibrary() TextUnderstanding];
  swift_unknownObjectRelease();
  v14 = [v13 DocumentUnderstanding];
  swift_unknownObjectRelease();
  v15 = [v14 PoemAnalytics];
  swift_unknownObjectRelease();
  v16 = [v15 source];
  v17 = sub_232B26B10(a1);
  for (i = 0; ; ++i)
  {
    if (v17 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2383922C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v19 = *(a1 + 8 * i + 32);
    }

    v20 = v19;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v16 sendEvent_];
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_232C3CE20(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v38 = *(a3 + 56);
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v37 = 0;
LABEL_5:
  v16 = v15;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v38 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v38 + 56) + 88 * v18), sizeof(__dst));
    v41[0] = v20;
    v41[1] = v21;
    memcpy(v42, __dst, sizeof(v42));

    sub_232C3B5F0(__dst, v39);
    if (sub_232C459C0() == a1 && v22 == a2)
    {
      break;
    }

    v24 = a1;
    v25 = a2;
    v26 = sub_232CEA750();

    if (v26)
    {
      goto LABEL_18;
    }

    result = sub_232C3DC28(v41);
    v16 = v15;
    a2 = v25;
    a1 = v24;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return v37;
        }

        v12 = *(v8 + 8 * v15);
        ++v16;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v24 = a1;
  v25 = a2;

LABEL_18:
  v27 = 0;
  v28 = 0;
  v29 = 1 << *(__dst[0] + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(__dst[0] + 64);
  v32 = (v29 + 63) >> 6;
  a2 = v25;
  a1 = v24;
  while (v31)
  {
    v33 = v27;
LABEL_28:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = *(*(__dst[0] + 56) + ((v33 << 9) | (8 * v34)));
    v36 = __OFADD__(v28, v35);
    v28 += v35;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      result = sub_232C3DC28(v41);
      if (__OFADD__(v37, v28))
      {
        goto LABEL_37;
      }

      v37 += v28;
      goto LABEL_5;
    }

    v31 = *(__dst[0] + 64 + 8 * v33);
    ++v27;
    if (v31)
    {
      v27 = v33;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_232C3D0C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v38 = *(a3 + 56);
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v37 = 0;
LABEL_5:
  v16 = v15;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v38 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v38 + 56) + 88 * v18), sizeof(__dst));
    v41[0] = v20;
    v41[1] = v21;
    memcpy(v42, __dst, sizeof(v42));

    sub_232C3B5F0(__dst, v39);
    if (sub_232C459C0() == a1 && v22 == a2)
    {
      break;
    }

    v24 = a1;
    v25 = a2;
    v26 = sub_232CEA750();

    if (v26)
    {
      goto LABEL_18;
    }

    result = sub_232C3DC28(v41);
    v16 = v15;
    a2 = v25;
    a1 = v24;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return v37;
        }

        v12 = *(v8 + 8 * v15);
        ++v16;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v24 = a1;
  v25 = a2;

LABEL_18:
  v27 = 0;
  v28 = 0;
  v29 = 1 << *(__dst[3] + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(__dst[3] + 64);
  v32 = (v29 + 63) >> 6;
  a2 = v25;
  a1 = v24;
  while (v31)
  {
    v33 = v27;
LABEL_28:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = *(*(__dst[3] + 56) + ((v33 << 9) | (8 * v34)));
    v36 = __OFADD__(v28, v35);
    v28 += v35;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      result = sub_232C3DC28(v41);
      if (__OFADD__(v37, v28))
      {
        goto LABEL_37;
      }

      v37 += v28;
      goto LABEL_5;
    }

    v31 = *(__dst[3] + 64 + 8 * v33);
    ++v27;
    if (v31)
    {
      v27 = v33;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_232C3D368(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v38 = *(a3 + 56);
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v37 = 0;
LABEL_5:
  v16 = v15;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v38 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v38 + 56) + 88 * v18), sizeof(__dst));
    v41[0] = v20;
    v41[1] = v21;
    memcpy(v42, __dst, sizeof(v42));

    sub_232C3B5F0(__dst, v39);
    if (sub_232C459C0() == a1 && v22 == a2)
    {
      break;
    }

    v24 = a1;
    v25 = a2;
    v26 = sub_232CEA750();

    if (v26)
    {
      goto LABEL_18;
    }

    result = sub_232C3DC28(v41);
    v16 = v15;
    a2 = v25;
    a1 = v24;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return v37;
        }

        v12 = *(v8 + 8 * v15);
        ++v16;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v24 = a1;
  v25 = a2;

LABEL_18:
  v27 = 0;
  v28 = 0;
  v29 = 1 << *(__dst[4] + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(__dst[4] + 64);
  v32 = (v29 + 63) >> 6;
  a2 = v25;
  a1 = v24;
  while (v31)
  {
    v33 = v27;
LABEL_28:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = *(*(__dst[4] + 56) + ((v33 << 9) | (8 * v34)));
    v36 = __OFADD__(v28, v35);
    v28 += v35;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      result = sub_232C3DC28(v41);
      if (__OFADD__(v37, v28))
      {
        goto LABEL_37;
      }

      v37 += v28;
      goto LABEL_5;
    }

    v31 = *(__dst[4] + 64 + 8 * v33);
    ++v27;
    if (v31)
    {
      v27 = v33;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_232C3D60C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 56);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a3 + 56) + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v38 = *(a3 + 56);
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v37 = 0;
LABEL_5:
  v16 = v15;
  if (!v12)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v16;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v15 << 6);
    v19 = (*(v38 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v38 + 56) + 88 * v18), sizeof(__dst));
    v41[0] = v20;
    v41[1] = v21;
    memcpy(v42, __dst, sizeof(v42));

    sub_232C3B5F0(__dst, v39);
    if (sub_232C459C0() == a1 && v22 == a2)
    {
      break;
    }

    v24 = a1;
    v25 = a2;
    v26 = sub_232CEA750();

    if (v26)
    {
      goto LABEL_18;
    }

    result = sub_232C3DC28(v41);
    v16 = v15;
    a2 = v25;
    a1 = v24;
    if (!v12)
    {
LABEL_7:
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return v37;
        }

        v12 = *(v8 + 8 * v15);
        ++v16;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  v24 = a1;
  v25 = a2;

LABEL_18:
  v27 = 0;
  v28 = 0;
  v29 = 1 << *(__dst[2] + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(__dst[2] + 64);
  v32 = (v29 + 63) >> 6;
  a2 = v25;
  a1 = v24;
  while (v31)
  {
    v33 = v27;
LABEL_28:
    v34 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v35 = *(*(__dst[2] + 56) + ((v33 << 9) | (8 * v34)));
    v36 = __OFADD__(v28, v35);
    v28 += v35;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v33 >= v32)
    {
      result = sub_232C3DC28(v41);
      if (__OFADD__(v37, v28))
      {
        goto LABEL_37;
      }

      v37 += v28;
      goto LABEL_5;
    }

    v31 = *(__dst[2] + 64 + 8 * v33);
    ++v27;
    if (v31)
    {
      v27 = v33;
      goto LABEL_28;
    }
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_232C3D8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 64);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_232B1F160(a1, a2);
  if ((v8 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = 0;
  v12 = 0;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v11;
LABEL_12:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = *(*(v9 + 56) + ((v17 << 9) | (8 * v18)));
    v20 = __OFADD__(v12, v19);
    v12 += v19;
    if (v20)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return v12;
    }

    v15 = *(v9 + 64 + 8 * v17);
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id sub_232C3D9E8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v21 = [v11 initWithNumOfFacesInMessages:a1 numOfFacesOnDevice:a2 numOfNamedFacesOnDevice:a3 numOfConversationThreads:a4 numOfNamedEntityMentions:a5 numOfSenderMentions:a6 numOfReceiverMentions:a7 numOfPronounMentions:a8 numOfImagesShared:a9 numOfLinguisticMentions:a10];

  return v21;
}

id sub_232C3DAB4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, int a11, void *a12, void *a13, void *a14)
{
  if (a2)
  {
    v17 = sub_232CE9D20();
  }

  else
  {
    v17 = 0;
  }

  if (a10)
  {
    v18 = sub_232CE9D20();
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v20) = a11;
  v21 = [v22 initWithVisualIdentifier:v17 prediction:a3 named:a4 shadowMatch:a5 threshold:a6 predictionConfidence:a7 onboarding:a8 nameMegadomeIdentifier:v18 nameSource:v20 features:a12 accepted:a13 rejected:a14];

  return v21;
}

unint64_t sub_232C3DBE4()
{
  result = qword_2814DF8C0;
  if (!qword_2814DF8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814DF8C0);
  }

  return result;
}

uint64_t sub_232C3DC28(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC8098, &qword_232CFE0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C3DCC0()
{
  sub_232B26C44();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_232CE9A30();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v6 = sub_232CE9760();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v0[10] = v7;
  v8 = *(v7 + 64) + 15;
  v0[11] = swift_task_alloc();
  v9 = sub_232B5138C();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232C3DDE8()
{
  v1 = v0[3];
  if (!v1)
  {
    v21 = v0[6];
    sub_232CE9A20();
    v22 = sub_232CE9A00();
    v23 = sub_232CEA1A0();
    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[5];
    v25 = v0[6];
    v27 = v0[4];
    if (v24)
    {
      *sub_232BA73DC() = 0;
      sub_232C31DC4(&dword_232B02000, v28, v29, "Unable to initialize PoemAggregationModelHandler");
      sub_232BA6A84();
    }

    (*(v26 + 8))(v25, v27);
    goto LABEL_18;
  }

  if ((*(v1 + 152) & 1) == 0 && *(v1 + 16))
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    (*(v3 + 104))(v2, *MEMORY[0x277D71418], v4);

    v5 = sub_232CE9750();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = swift_task_alloc();
      v0[12] = v6;
      *v6 = v0;
      v6[1] = sub_232C3E0C0;
      v8 = v0[2];
      v7 = v0[3];

      return sub_232C3E3EC(v8, v7);
    }

    v30 = v0[8];
    sub_232CE9A20();
    v12 = sub_232CE9A00();
    v31 = sub_232CEA1A0();
    v32 = sub_232C40B1C(v31);
    v15 = v0[8];
    v16 = v0[4];
    v17 = v0[5];
    if (v32)
    {
      *sub_232BA73DC() = 0;
      v20 = "Not running Autonaming because learning from Messages is disabled";
      goto LABEL_10;
    }

LABEL_16:

    goto LABEL_17;
  }

  v10 = v0[7];
  v11 = v0[3];

  sub_232CE9A20();
  v12 = sub_232CE9A00();
  v13 = sub_232CEA1A0();
  v14 = sub_232C40B1C(v13);
  v15 = v0[7];
  v16 = v0[4];
  v17 = v0[5];
  if (!v14)
  {
    goto LABEL_16;
  }

  *sub_232BA73DC() = 0;
  v20 = "Trial assets not found on device, bailing out";
LABEL_10:
  sub_232C40B68(&dword_232B02000, v18, v19, v20);
  sub_232BA6A84();

LABEL_17:
  (*(v17 + 8))(v15, v16);
LABEL_18:
  v33 = v0[11];
  v34 = v0[7];
  v35 = v0[8];
  v36 = v0[6];

  sub_232B26CF4();

  return v37();
}

uint64_t sub_232C3E0C0()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C3E1A8()
{
  sub_232B26C44();
  v1 = v0[13];
  sub_232C4D86C();
  v3 = v2;
  v0[14] = v2;

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_232C3E254;
  v5 = v0[2];
  v6 = v0[3];

  return sub_232C3EA68(v3, v5, v6);
}

uint64_t sub_232C3E254()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 120);
  v7 = *v0;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232C3E340()
{
  v1 = v0[3];
  sub_232C39390(v0[14], 0);

  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  sub_232B26CF4();

  return v6();
}

uint64_t sub_232C3E3EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_232CE9A30();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C3E4AC, 0, 0);
}

uint64_t sub_232C3E4AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v0[8] = v3;
  v4 = sub_232CE9FD0();
  [v3 setFetchAttributes_];

  v5 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v6 = v3;
  v7 = sub_232C409AC(0xD00000000000001FLL, 0x8000000232D0A2D0, v3);
  v0[9] = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v7;
  v9 = *(MEMORY[0x277D859E0] + 4);
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = sub_232B124A8(&qword_27DDC80D0, &unk_232CFEB50);
  *v10 = v0;
  v10[1] = sub_232C3E654;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000021, 0x8000000232D0A2F0, sub_232C40A10, v8, v11);
}

uint64_t sub_232C3E654()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v8 = *v0;

  v4 = sub_232B5138C();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232C3E75C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = 1.0;
  if (v1 && (*(v1 + 152) & 1) == 0)
  {
    v3 = *(v1 + 144);
  }

  v4 = *(v0 + 56);
  sub_232CE9A20();
  v5 = sub_232CE9A00();
  v6 = sub_232CEA1A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_232BC1F80();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_232B02000, v5, v6, "Poem will ignore messages older than %f years", v7, 0xCu);
    sub_232BA6A84();
  }

  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);

  (*(v9 + 8))(v8, v10);
  v11 = sub_232B26B10(v2);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = v11;
    v31 = MEMORY[0x277D84F90];
    result = sub_232CEA580();
    if (v13 < 0)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v15 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2383922C0](v15, v2);
      }

      else
      {
        v16 = *(v2 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = type metadata accessor for PoemMessage();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      sub_232C46DA8(v17, 0xD000000000000028, 0x8000000232D01E10);
      sub_232CEA560();
      v21 = *(v31 + 16);
      sub_232C40B5C();
      sub_232CEA590();
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    while (v13 != v15);

    v22 = v31;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v23 = v3 * 31536000.0;
  result = sub_232B26B10(v22);
  v24 = result;
  for (i = 0; v24 != i; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383922C0](i, v22);
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v26 = *(v22 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (sub_232C475D8(v23))
    {
      sub_232CEA560();
      v27 = *(v12 + 16);
      sub_232C40B5C();
      sub_232CEA590();
      sub_232C40B5C();
      sub_232CEA5A0();
      result = sub_232CEA570();
    }

    else
    {
    }
  }

  v28 = *(v0 + 64);
  v29 = *(v0 + 56);

  v30 = *(v0 + 8);

  return v30(v12);
}

uint64_t sub_232C3EA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_232CE9A30();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C3EB44, 0, 0);
}

uint64_t sub_232C3EB44()
{
  v76 = v0;
  v1 = *(v0 + 112);
  if (!v1)
  {
    v11 = *(v0 + 136);
    sub_232CE9A20();
    v12 = sub_232CE9A00();
    v13 = sub_232CEA1C0();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);
    if (v14)
    {
      *sub_232BA73DC() = 0;
      sub_232C31DC4(&dword_232B02000, v18, v19, "Unable to populate extractions because model handler wasn't initialized");
      sub_232BA6A84();
    }

    (*(v16 + 8))(v15, v17);
    goto LABEL_45;
  }

  *(v0 + 160) = *(v1 + 112);
  if (*(v1 + 152))
  {
    v2 = *(v0 + 144);

    sub_232CE9A20();
    v3 = sub_232CE9A00();
    v4 = sub_232CEA1C0();
    v5 = sub_232C40B1C(v4);
    v6 = *(v0 + 144);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    if (v5)
    {
      *sub_232BA73DC() = 0;
      sub_232C40B68(&dword_232B02000, v9, v10, "Unable to populate extractions because model configuration wasn't loaded");
      sub_232BA6A84();
    }

    else
    {
    }

    (*(v8 + 8))(v6, v7);
    goto LABEL_45;
  }

  v20 = *(v0 + 96);
  *(v0 + 168) = *(v1 + 136);
  sub_232B13F74();
  v21 = *(v20 + 16);
  *(v0 + 176) = v21;
  v22 = *(v21 + 32);
  *(v0 + 288) = v22;
  v23 = 1 << v22;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v21 + 64);

  v27 = 0;
  if (v25)
  {
LABEL_12:
    result = *(v0 + 176);
    goto LABEL_17;
  }

  do
  {
LABEL_13:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
LABEL_51:
      __break(1u);
      return result;
    }

    result = *(v0 + 176);
    if (v28 >= (((1 << *(v0 + 288)) + 63) >> 6))
    {
      v72 = *(v0 + 112);

LABEL_45:
      v69 = *(v0 + 144);
      v68 = *(v0 + 152);
      v70 = *(v0 + 136);

      sub_232B26CF4();

      return v71();
    }

    v25 = *(result + 8 * v28 + 64);
    ++v27;
  }

  while (!v25);
  v27 = v28;
LABEL_17:
  *(v0 + 184) = v25;
  *(v0 + 192) = v27;
  sub_232C40AFC(result, v27);
  sub_232B13F74();
  v29 = *(v21 + 32);
  *(v0 + 208) = v29;
  *(v0 + 216) = sub_232B26B10(v29);

  v30 = 0;
  while (2)
  {
    while (2)
    {
      v31 = *(v0 + 208);
      if (v30 == *(v0 + 216))
      {
        v21 = *(v0 + 200);
        v63 = *(v0 + 208);

        v27 = *(v0 + 192);
        v25 = (*(v0 + 184) - 1) & *(v0 + 184);
        if (!v25)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2383922C0](v30);
        v32 = result;
      }

      else
      {
        if (v30 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v32 = *(v31 + 8 * v30 + 32);
      }

      *(v0 + 224) = v32;
      *(v0 + 232) = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!sub_232C478A0())
      {
        goto LABEL_37;
      }

      v33 = *(v0 + 168);
      v35 = *(v32 + 32);
      v34 = *(v32 + 40);

      v36 = sub_232C4E020(v33);

      if (!(v36 >> 62))
      {
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

LABEL_36:

LABEL_37:

        ++v30;
        continue;
      }

      break;
    }

    if (!sub_232CEA610())
    {
      goto LABEL_36;
    }

LABEL_26:
    v37 = *(v0 + 152);
    sub_232CE9A20();

    v38 = sub_232CE9A00();
    v39 = sub_232CEA1B0();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 152);
    v43 = *(v0 + 120);
    v42 = *(v0 + 128);
    if (v40)
    {
      v74 = *(v0 + 120);
      v44 = sub_232BC1F80();
      v45 = swift_slowAlloc();
      v75 = v45;
      *v44 = 136315138;
      v46 = sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
      v47 = MEMORY[0x238391D80](v36, v46);
      v73 = v41;
      v49 = sub_232BAD2D4(v47, v48, &v75);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_232B02000, v38, v39, "Found MAD extractions: %s", v44, 0xCu);
      sub_232B2040C(v45);
      sub_232BA6A84();
      sub_232BA6A84();

      (*(v42 + 8))(v73, v74);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

    v50 = *(v0 + 200);
    v51 = *(v0 + 160);
    v52 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions;
    swift_beginAccess();
    v53 = *(v32 + v52);
    *(v32 + v52) = v36;

    v54 = *(v50 + 32);

    sub_232C4C7B4();
    v56 = v55;
    *(v0 + 240) = v55;

    v57 = *(v56 + 16);
    *(v0 + 248) = v57;
    if (!v57)
    {
LABEL_33:
      v59 = *(v0 + 240);
      v60 = *(v0 + 224);
      v61 = *(v0 + 96);

      v62 = sub_232C4EC70();
      sub_232C47C00(v62);

      v30 = *(v0 + 232);
      continue;
    }

    break;
  }

  v58 = 0;
  while ((sub_232C40B38(v58) & 1) != 0)
  {
    v58 = *(v0 + 256) + 1;
    if (v58 == *(v0 + 248))
    {
      goto LABEL_33;
    }
  }

  v64 = swift_task_alloc();
  *(v0 + 272) = v64;
  *v64 = v0;
  v65 = sub_232C40ACC(v64);

  return sub_232C4003C(v65, v66, v67);
}

uint64_t sub_232C3F144()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v2 = v1;
  v4 = *(v3 + 272);
  *v2 = *v0;
  *(v1 + 280) = v5;

  v6 = sub_232B5138C();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232C3F22C()
{
  v55 = v0;
  *(v0 + 88) = *(v0 + 280);
  v1 = *(v0 + 264);
  v2 = *(v0 + 96);
  sub_232C4E984();
  sub_232C5E360(v3);
  sub_232C47C00(*(v0 + 88));

  while (1)
  {
    v4 = *(v0 + 256) + 1;
    if (v4 == *(v0 + 248))
    {
      break;
    }

LABEL_28:
    if ((sub_232C40B38(v4) & 1) == 0)
    {

      v40 = swift_task_alloc();
      *(v0 + 272) = v40;
      *v40 = v0;
      v41 = sub_232C40ACC();

      return sub_232C4003C(v41, v42, v43);
    }
  }

LABEL_3:
  v5 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 96);

  v8 = sub_232C4EC70();
  sub_232C47C00(v8);

  for (i = *(v0 + 232); ; i = 0)
  {
    while (1)
    {
      v11 = *(v0 + 208);
      if (i == *(v0 + 216))
      {
        break;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2383922C0](i);
        v18 = result;
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v18 = *(v11 + 8 * i + 32);
      }

      *(v0 + 224) = v18;
      *(v0 + 232) = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if (sub_232C478A0())
      {
        v19 = *(v0 + 168);
        v20 = *(v18 + 32);
        v21 = *(v18 + 40);

        v22 = sub_232C4E020(v19);

        if (v22 >> 62)
        {
          if (sub_232CEA610())
          {
LABEL_23:
            v23 = *(v0 + 152);
            sub_232CE9A20();

            v24 = sub_232CE9A00();
            LOBYTE(v23) = sub_232CEA1B0();

            v52 = v23;
            v25 = os_log_type_enabled(v24, v23);
            v26 = *(v0 + 152);
            v27 = *(v0 + 128);
            v53 = *(v0 + 120);
            if (v25)
            {
              v51 = *(v0 + 152);
              buf = sub_232BC1F80();
              v50 = swift_slowAlloc();
              v54 = v50;
              *buf = 136315138;
              v28 = sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
              v29 = MEMORY[0x238391D80](v22, v28);
              v31 = sub_232BAD2D4(v29, v30, &v54);

              *(buf + 4) = v31;
              _os_log_impl(&dword_232B02000, v24, v52, "Found MAD extractions: %s", buf, 0xCu);
              sub_232B2040C(v50);
              sub_232BA6A84();
              sub_232BA6A84();

              (*(v27 + 8))(v51, v53);
            }

            else
            {

              (*(v27 + 8))(v26, v53);
            }

            v32 = *(v0 + 200);
            v33 = *(v0 + 160);
            v34 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions;
            swift_beginAccess();
            v35 = *(v18 + v34);
            *(v18 + v34) = v22;

            v36 = *(v32 + 32);

            sub_232C4C7B4();
            v38 = v37;
            *(v0 + 240) = v37;

            v39 = *(v38 + 16);
            *(v0 + 248) = v39;
            if (v39)
            {
              v4 = 0;
              goto LABEL_28;
            }

            goto LABEL_3;
          }
        }

        else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }
      }

      ++i;
    }

    v12 = *(v0 + 200);
    v13 = *(v0 + 208);

    v14 = *(v0 + 192);
    v15 = (*(v0 + 184) - 1) & *(v0 + 184);
    if (!v15)
    {
      break;
    }

    result = *(v0 + 176);
LABEL_11:
    *(v0 + 184) = v15;
    *(v0 + 192) = v14;
    sub_232C40AFC(result, v14);
    sub_232B13F74();
    v17 = *(v12 + 32);
    *(v0 + 208) = v17;
    *(v0 + 216) = sub_232B26B10(v17);
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    result = *(v0 + 176);
    if (v16 >= (((1 << *(v0 + 288)) + 63) >> 6))
    {
      break;
    }

    v15 = *(result + 8 * v16 + 64);
    ++v14;
    if (v15)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  v44 = *(v0 + 112);

  v46 = *(v0 + 144);
  v45 = *(v0 + 152);
  v47 = *(v0 + 136);

  sub_232B26CF4();

  return v48();
}

uint64_t sub_232C3F700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v11, v6);
  sub_232C3F9EC(a4, sub_232C40A1C, v13);
}

uint64_t sub_232C3F864(uint64_t a1)
{
  v2 = sub_232CE9A30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232CE9A20();
  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_232B02000, v7, v8, "Received a result in the completion handler, calling continuation.resume in PoemOnBoardHandler", v9, 2u);
    MEMORY[0x238393870](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = MEMORY[0x277D84F90];
  if (a1)
  {
    v10 = a1;
  }

  v12[1] = v10;

  sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);
  return sub_232CEA060();
}

uint64_t sub_232C3F9EC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v15 = sub_232C40A98;
  v16 = v6;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_232C3FC14;
  v14 = &unk_284813720;
  v7 = _Block_copy(&v11);

  [a1 setFoundItemsHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v15 = sub_232C40AB8;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_232C3FFD0;
  v14 = &unk_284813770;
  v9 = _Block_copy(&v11);

  [a1 setCompletionHandler_];
  _Block_release(v9);
  [a1 start];
}

uint64_t sub_232C3FBB4()
{
  swift_beginAccess();

  sub_232C5E4D0(v0);
  return swift_endAccess();
}

uint64_t sub_232C3FC14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_232BA4DEC(0, &qword_27DDC6928, 0x277CC34B0);
  v3 = sub_232CE9FE0();

  v2(v3);
}

void sub_232C3FC98(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = sub_232CE9A30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  if (a1)
  {
    v16 = a1;
    sub_232CE9A20();
    v17 = a1;
    v18 = sub_232CE9A00();
    v19 = sub_232CEA1C0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = a2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33 = a3;
      v23 = v22;
      v35[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = sub_232CEA7B0();
      v26 = sub_232BAD2D4(v24, v25, v35);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_232B02000, v18, v19, "Received error %s in query completion handler in PoemOnBoardHandler", v21, 0xCu);
      sub_232B2040C(v23);
      MEMORY[0x238393870](v23, -1, -1);
      v27 = v21;
      a2 = v34;
      MEMORY[0x238393870](v27, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    a2(0);
  }

  else
  {
    sub_232CE9A20();

    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      swift_beginAccess();
      *(v30 + 4) = sub_232B26B10(*(a4 + 16));

      _os_log_impl(&dword_232B02000, v28, v29, "Finished fetching %ld messages indexed by Spotlight in PoemOnBoardHandler", v30, 0xCu);
      MEMORY[0x238393870](v30, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
    swift_beginAccess();
    v31 = *(a4 + 16);

    a2(v32);
  }
}

void sub_232C3FFD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_232C4003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_232CE9A30();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C40100, 0, 0);
}

uint64_t sub_232C40100()
{
  super_class = v0[6].super_class;
  v2 = v0[5].super_class;
  v3 = type metadata accessor for DURequestContentType();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 512;
  v0[4].receiver = v4;
  v0[4].super_class = v3;
  v5 = super_class;
  v6 = objc_msgSendSuper2(v0 + 4, sel_init);
  v7 = objc_allocWithZone(type metadata accessor for DURequest());
  v0[8].super_class = DURequest.init(client:contentType:strategies:)(v5, v6, 0);
  v0[9].receiver = sub_232C4DDF4(v2);
  v8 = swift_task_alloc();
  v0[9].super_class = v8;
  *v8 = v0;
  *(v8 + 1) = sub_232C4022C;

  return sub_232B22E24();
}

uint64_t sub_232C4022C()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232BC1BAC();
  *v3 = v2;
  v5 = *(v4 + 152);
  *v3 = *v1;
  *(v2 + 160) = v6;
  *(v2 + 168) = v0;

  if (v0)
  {
    v7 = sub_232C40500;
  }

  else
  {
    v7 = sub_232C40330;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_232C40330()
{
  v20 = v0;
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem;
  sub_232B13F74();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    v5 = sub_232B26B10(v3);
    v6 = *(v0 + 168);

    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {
        v11 = *(v0 + 160);
        v12 = *(v0 + 144);

        goto LABEL_16;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2383922C0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v3 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = *(v0 + 96);
      v18 = v8;
      sub_232C406D4(&v18, v10, &v19);

      if (v19)
      {
        MEMORY[0x238391D50]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_232CEA000();
        }

        sub_232CEA020();
        v4 = v17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);

    v4 = MEMORY[0x277D84F90];
LABEL_16:
    v15 = *(v0 + 128);

    v16 = *(v0 + 8);

    v16(v4);
  }
}

uint64_t sub_232C40500()
{
  v27 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  sub_232CE9A20();
  v3 = v1;
  v4 = sub_232CE9A00();
  v5 = sub_232CEA1C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 120);
    v25 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = sub_232BC1F80();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_232CEA7B0();
    v16 = sub_232BAD2D4(v14, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_232B02000, v4, v5, "Failed to retrieve a response due to error: %s", v9, 0xCu);
    sub_232B2040C(v10);
    sub_232BA6A84();
    sub_232BA6A84();

    (*(v7 + 8))(v25, v8);
  }

  else
  {
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 112);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 144);

  v21 = *(v0 + 128);

  v22 = *(v0 + 8);
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

id sub_232C406D4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_232CE9A30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_232C49E98(*a1);
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  v16 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    sub_232CE9A20();
    v30 = sub_232CE9A00();
    v31 = sub_232CEA1C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_232B02000, v30, v31, "DUPoemImplementation returned an empty span as name", v32, 2u);
      MEMORY[0x238393870](v32, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_13;
  }

  v17 = sub_232C455E0();
  if (!v18)
  {

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v19 = v18;
  v34 = v17;
  sub_232C49EA4(v11);
  if (v20)
  {
    swift_beginAccess();
    v21 = *(a2 + 40);
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a2 + 40);
    sub_232B1FAF0();
    *(a2 + 40) = v35;
    swift_endAccess();
  }

  HIDWORD(v33) = [v11 type];
  [v11 confidenceScore];
  v22 = sub_232CEA0B0();
  v23 = sub_232C49F10(v11);
  v25 = v24;
  v26 = [v11 role];
  [v11 isCoref];
  v27 = sub_232CEA040();
  v28 = objc_allocWithZone(MEMORY[0x277CF1680]);
  result = sub_232BEC84C(HIDWORD(v33), v14, v15, v34, v19, v22, v23, v25, v26, v27);
LABEL_14:
  *a3 = result;
  return result;
}

id sub_232C409AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_232CE9D20();

  v6 = [v3 initWithQueryString:v5 queryContext:a3];

  return v6;
}

uint64_t sub_232C40A1C(uint64_t a1)
{
  v2 = *(*(sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0) - 8) + 80);

  return sub_232C3F864(a1);
}

uint64_t sub_232C40AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C40ACC(uint64_t a1)
{
  *(a1 + 8) = sub_232C3F144;
  v3 = v2[13];
  v4 = v2[14];
  v5 = v2[12];
  return v1;
}

uint64_t sub_232C40AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 + 56) + ((a2 << 9) | (8 * __clz(v2))));
  *(v3 + 200) = v4;
  return v4 + 32;
}

BOOL sub_232C40B1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232C40B38@<X0>(uint64_t a1@<X8>)
{
  v1[32] = a1;
  v1[33] = *(v1[30] + 16 * a1 + 32);

  return sub_232C480A8();
}

void sub_232C40B68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id PoemStatsRecord.init(cooccurrenceId:entityName:entityId:photoId:associatedFeatureData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_cooccurrenceId];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityName];
  *v12 = a3;
  *(v12 + 1) = a4;
  v13 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityId];
  *v13 = a5;
  *(v13 + 1) = a6;
  v14 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_photoId];
  *v14 = a7;
  *(v14 + 1) = a8;
  v15 = &v10[OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_associatedFeatureData];
  *v15 = a9;
  *(v15 + 1) = a10;
  v17.receiver = v10;
  v17.super_class = type metadata accessor for PoemStatsRecord();
  return objc_msgSendSuper2(&v17, sel_init);
}

id PoemStatsRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PoemStatsDatabase.init(dbURL:isFrozen:)(uint64_t a1, char a2)
{
  v4 = sub_232CE8C00();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = sub_232CE9A30();
  v14 = sub_232B48F0C(v13);
  v37 = v15;
  v38 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v20 = v19 - v18;
  sub_232CE9A20();
  (*(v7 + 16))(v12, a1, v4);
  v21 = sub_232CE9A00();
  v22 = sub_232CEA1A0();
  if (os_log_type_enabled(v21, v22))
  {
    v36 = a1;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136315138;
    v23 = sub_232CE8B60();
    v24 = v4;
    v26 = v25;
    v27 = sub_232C42B3C();
    v2(v27, v24);
    v28 = sub_232BAD2D4(v23, v26, &v42);
    v4 = v24;

    *(v34 + 4) = v28;
    _os_log_impl(&dword_232B02000, v21, v22, "PoemStatsDatabase: Initializing db at %s", v34, 0xCu);
    sub_232B2040C(v35);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
    a1 = v36;
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {

    v29 = sub_232C42B3C();
    v2(v29, v4);
  }

  (*(v37 + 8))(v20, v38);
  sub_232CE8B60();
  v30 = objc_allocWithZone(type metadata accessor for SQLiteDatabase());
  SQLiteDatabase.init(dbPath:migrationsList:isFrozen:)();
  *&v40[OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database] = v31;
  v40[OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_isFrozen] = a2 & 1;
  v41.receiver = v40;
  v41.super_class = type metadata accessor for PoemStatsDatabase();
  v32 = objc_msgSendSuper2(&v41, sel_init);
  v2(a1, v4);
  return v32;
}

void sub_232C41148()
{
  v1 = v0;
  v2 = sub_232CE9A30();
  v3 = sub_232B48F0C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v10 = v9 - v8;
  if ((*(v1 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_isFrozen) & 1) == 0)
  {
    sub_232CE9A20();
    v11 = sub_232CE9A00();
    v12 = sub_232CEA1A0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_232BA73DC();
      *v13 = 0;
      _os_log_impl(&dword_232B02000, v11, v12, "PoemStatsDatabase: Clearing all the records", v13, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    (*(v5 + 8))(v10, v2);
    v14 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
    sub_232BA63D0();
    sub_232C60274();
  }
}

uint64_t sub_232C412AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
  sub_232BC1ECC();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v3 = (v2 + 16);

  sub_232BA63D0();
  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_232C41374()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
  sub_232BC1ECC();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);

  sub_232BA63D0();
  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

void sub_232C4142C(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
  sub_232C42B78();
  v7 = swift_allocObject();
  sub_232C42AE8(v7);
  sub_232B26D50();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v9 = *v3;
  sub_232C42AB4();
  sub_232B26744(v11, v10, &qword_27DDC8118, &qword_232CFE2E0);

  if (v12)
  {
    sub_232C42B54();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C41F9C(v3, a1);
    sub_232B267AC(v11, &qword_27DDC8118, &qword_232CFE2E0);
  }

  else
  {
    sub_232C42B20();
  }

  sub_232C42B84();
}

void sub_232C41624(unint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
  sub_232C42B78();
  v7 = swift_allocObject();
  sub_232C42AE8(v7);
  sub_232B26D50();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v9 = *v3;
  sub_232C42AB4();
  sub_232B26744(v11, v10, &qword_27DDC8118, &qword_232CFE2E0);

  if (v12)
  {
    sub_232C42B54();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C42A80();

    sub_232C41F9C(v3, a1);
    sub_232B267AC(v11, &qword_27DDC8118, &qword_232CFE2E0);
  }

  else
  {
    sub_232C42B20();
  }

  sub_232C42B84();
}

uint64_t sub_232C4181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
  v8 = swift_allocObject();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 16) = 0u;
  sub_232B26D50();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  v14 = *(v8 + 48);
  v15 = *(v8 + 56);
  v16 = sub_232C42B04();
  sub_232C42724(v16, v17, v18, v19, v20, v21);

  if (v11)
  {

    v23 = sub_232B37C0C();
    sub_232C05E58(v23, v24);
    v25 = sub_232B37C0C();
    sub_232BB6018(v25, v26);

    v27 = sub_232B37C0C();
    sub_232C05E58(v27, v28);
    v29 = sub_232B37C0C();
    sub_232BB6018(v29, v30);

    v31 = sub_232B37C0C();
    v33 = sub_232C41F9C(v31, v32);
    v34 = sub_232C42B04();
    sub_232C42784(v34, v35, v36, v37, v38, v39);
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v33 = 0;
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  a3[4] = v33;
  return result;
}

uint64_t sub_232C419E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *(v5 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
  sub_232C42B78();
  v12 = swift_allocObject();
  v12[2] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[1] = 0u;
  v13 = v12 + 1;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;

  sub_232C60274();

  sub_232BA63D0();
  swift_beginAccess();
  v15 = *v13;
  sub_232C42AB4();
  sub_232B26744(&v40, v39, &qword_27DDC8120, &qword_232CFE2E8);

  v17 = v41;
  if (v41)
  {
    v18 = v45;
    v38 = v44;
    v20 = v42;
    v19 = v43;
    v21 = v40;
    v22 = sub_232BA62A4();
    v24 = sub_232C41F9C(v22, v23);
    v26 = v25;

    v27 = sub_232BA62A4();
    sub_232C05E58(v27, v28);
    v29 = sub_232BA62A4();
    sub_232BB6018(v29, v30);

    v31 = sub_232BA62A4();
    sub_232C05E58(v31, v32);
    v33 = sub_232BA62A4();
    sub_232BB6018(v33, v34);

    v35 = sub_232BA62A4();
    sub_232BB6018(v35, v36);

    v37 = v38;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v37 = 0;
    v18 = 0;
    v24 = 0;
    v26 = 0;
  }

  *a5 = v21;
  a5[1] = v17;
  a5[2] = v20;
  a5[3] = v19;
  a5[4] = v37;
  a5[5] = v18;
  a5[6] = v24;
  a5[7] = v26;
  return result;
}

uint64_t sub_232C41C2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v46 = a5;
  v47 = a7;
  v45 = a3;
  v17 = sub_232CE9A30();
  v18 = sub_232B48F0C(v17);
  v48 = v19;
  v49 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v44 - v26;
  v28 = sub_232C42314(a9, a10, v25);
  if (v29 >> 60 == 15)
  {
    sub_232CE9A20();
    v30 = sub_232CE9A00();
    v31 = sub_232CEA1C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_232BA73DC();
      *v32 = 0;
      _os_log_impl(&dword_232B02000, v30, v31, "PoemStatsDatabase: Error while serializing features", v32, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    return (*(v48 + 8))(v23, v49);
  }

  else
  {
    v34 = v28;
    v35 = v29;
    v44[1] = *(v11 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemStatsDatabase_database);
    v36 = objc_allocWithZone(type metadata accessor for PoemStatsRecord());

    sub_232C05E58(v34, v35);
    v37 = a1;
    v38 = PoemStatsRecord.init(cooccurrenceId:entityName:entityId:photoId:associatedFeatureData:)(a1, a2, v45, a4, v46, a6, v47, a8, v34, v35);
    sub_232BC1ECC();
    *(swift_allocObject() + 16) = v38;
    v39 = v38;
    sub_232C60274();

    sub_232CE9A20();

    v40 = sub_232CE9A00();
    v41 = sub_232CEA1B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_232BAD2D4(v37, a2, &v50);
      _os_log_impl(&dword_232B02000, v40, v41, "PoemStatsDatabase: Added a record with key: %s", v42, 0xCu);
      sub_232B2040C(v43);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
      sub_232B4ACF0();
      MEMORY[0x238393870]();

      sub_232BB6018(v34, v35);
    }

    else
    {
      sub_232BB6018(v34, v35);
    }

    return (*(v48 + 8))(v27, v49);
  }
}

uint64_t sub_232C41F9C(uint64_t a1, unint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20704();
  v11 = v10 - v9;
  v12 = 0;
  if (a2 >> 60 != 15)
  {
    v13 = objc_opt_self();
    v14 = sub_232BA648C();
    sub_232B41B94(v14, v15);
    sub_232BA648C();
    v16 = sub_232CE8C50();
    *&v34 = 0;
    v17 = [v13 JSONObjectWithData:v16 options:0 error:&v34];

    if (v17)
    {
      v18 = v34;
      sub_232CEA420();
      swift_unknownObjectRelease();
      sub_232B124A8(&qword_27DDC7668, &unk_232CFA950);
      if (sub_232C42AC8())
      {
        v19 = v33;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        sub_232B1E16C(0x6546656C62756F64, 0xEE00736572757461, v19);
        if (*(&v35 + 1))
        {
          sub_232B124A8(&qword_27DDC8130, &unk_232CFE350);
          if (sub_232C42AC8())
          {
            v12 = v33;
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      sub_232B267AC(&v34, &qword_27DDC68C8, &qword_232CF6210);
      if (!v19)
      {
        v29 = sub_232BA648C();
        sub_232BB6018(v29, v30);
        v12 = 0;
        v34 = 0u;
        v35 = 0u;
        goto LABEL_20;
      }

      v12 = 0;
LABEL_17:
      sub_232B1E16C(0x746165467473696CLL, 0xEC00000073657275, v19);

      v27 = sub_232BA648C();
      sub_232BB6018(v27, v28);
      if (*(&v35 + 1))
      {
        sub_232B124A8(&qword_27DDC8128, &qword_232CFE348);
        sub_232C42AC8();
        goto LABEL_21;
      }

LABEL_20:
      sub_232B267AC(&v34, &qword_27DDC68C8, &qword_232CF6210);
      goto LABEL_21;
    }

    v20 = v34;
    v21 = sub_232CE8B30();

    swift_willThrow();
    sub_232CE9A20();
    v22 = sub_232CE9A00();
    v23 = sub_232CEA1C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_232BA73DC();
      *v24 = 0;
      _os_log_impl(&dword_232B02000, v22, v23, "PoemStatsDatabase: Error while de-serializing features", v24, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v25 = sub_232BA648C();
    sub_232BB6018(v25, v26);

    (*(v6 + 8))(v11, v3);
    v12 = 0;
  }

LABEL_21:
  v31 = *MEMORY[0x277D85DE8];
  return v12;
}

id sub_232C42680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_232C42724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_232C05E58(a5, a6);
  }
}

void sub_232C42784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_232BB6018(a5, a6);
  }
}

uint64_t sub_232C427E4()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[7];

    v3 = v0[9];
    if (v3 >> 60 != 15)
    {
      sub_232B41BEC(v0[8], v3);
    }
  }

  sub_232C42B78();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_232C42A80()
{
  sub_232C05E58(v1, v0);

  return sub_232BB6018(v1, v0);
}

__n128 sub_232C42AB4()
{
  v2 = *(v0 + 32);
  result = *(v0 + 64);
  v3 = *(v0 + 48);
  return result;
}

uint64_t sub_232C42AC8()
{

  return swift_dynamicCast();
}

double sub_232C42AE8(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_232C42B3C()
{
  v3 = *(v0 + 8);
  *(v2 - 144) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

uint64_t sub_232C42B54()
{
}

void sub_232C42B84()
{
  *v0 = v7;
  v0[1] = v1;
  v0[2] = v6;
  v0[3] = v3;
  v0[4] = v5;
  v0[5] = v2;
  v0[6] = v4;
}

void sub_232C42B98(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = sub_232B26B10(a1);
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v55 = v5 & 0xFFFFFFFFFFFFFF8;
  v46 = a2;
  v47 = v5;
  v48 = v6;
  v52 = v5 & 0xC000000000000001;
  while (v6 != v7)
  {
    if (v8)
    {
      v9 = MEMORY[0x2383922C0](v7, v5);
    }

    else
    {
      if (v7 >= *(v55 + 16))
      {
        goto LABEL_37;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v11 = sub_232C31B34(v9, &selRef_text);
    if (v12)
    {
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v53 = sub_232C31B34(v10, &selRef_identifier);
        if (v14)
        {
          v15 = v14;
          if (*(*a2 + 16) && (sub_232B1F160(v53, v14), (v16 & 1) != 0))
          {
          }

          else
          {
            v17 = sub_232CE9DD0();
            v54[0] = 32;
            v54[1] = 0xE100000000000000;
            MEMORY[0x28223BE20](v17);
            v45[2] = v54;
            v20 = sub_232C484F0(1, 1, sub_232B551FC, v45, v18, v19);
            v51 = v3;
            if (v20[2])
            {
              v21 = v20[4];
              v22 = v20[5];
              v24 = v20[6];
              v23 = v20[7];

              v25 = MEMORY[0x238391B80](v21, v22, v24, v23);
              v49 = v26;
              v50 = v25;

              a2 = v46;
            }

            else
            {

              v49 = 0xE000000000000000;
              v50 = 0;
            }

            v27 = *a2;
            swift_isUniquelyReferenced_nonNull_native();
            v54[0] = *a2;
            v28 = v54[0];
            v29 = sub_232B1F160(v53, v15);
            if (__OFADD__(*(v28 + 16), (v30 & 1) == 0))
            {
              goto LABEL_38;
            }

            v31 = v29;
            v32 = v30;
            sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
            if (sub_232CEA5C0())
            {
              v33 = sub_232B1F160(v53, v15);
              v3 = v51;
              v5 = v47;
              if ((v32 & 1) != (v34 & 1))
              {
                goto LABEL_40;
              }

              v31 = v33;
            }

            else
            {
              v3 = v51;
              v5 = v47;
            }

            v35 = v54[0];
            if (v32)
            {
              v36 = (*(v54[0] + 56) + 16 * v31);
              v37 = v36[1];
              v38 = v49;
              *v36 = v50;
              v36[1] = v38;
            }

            else
            {
              *(v54[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
              v39 = (v35[6] + 16 * v31);
              *v39 = v53;
              v39[1] = v15;
              v40 = (v35[7] + 16 * v31);
              v41 = v49;
              *v40 = v50;
              v40[1] = v41;
              v42 = v35[2];
              v43 = __OFADD__(v42, 1);
              v44 = v42 + 1;
              if (v43)
              {
                goto LABEL_39;
              }

              v35[2] = v44;
            }

            *a2 = v35;
          }

          v6 = v48;
        }

        else
        {
        }

        v8 = v52;
      }

      else
      {
      }
    }

    else
    {
    }

    ++v7;
  }
}

void sub_232C42F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x277D84F90];
    sub_232B64B80(0, v1, 0);
    v3 = sub_232B666F4(a1);
    v4 = a1;
    v6 = v5;
    v7 = 0;
    v8 = a1 + 64;
    v25 = v1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(v4 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_29;
        }

        v26 = v2;
        v10 = *(*(v4 + 56) + 8 * v3);
        swift_beginAccess();
        v11 = *(v10 + 32);
        if (v11 >> 62)
        {
          if (v11 < 0)
          {
            v24 = *(v10 + 32);
          }

          v12 = sub_232CEA610();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = *(v28 + 16);
        v13 = *(v28 + 24);
        v15 = v6;
        v4 = a1;
        if (v14 >= v13 >> 1)
        {
          sub_232B64B80(v13 > 1, v14 + 1, 1);
          v4 = a1;
          v15 = v6;
        }

        *(v28 + 16) = v14 + 1;
        *(v28 + 8 * v14 + 32) = v12;
        v16 = 1 << *(v4 + 32);
        if (v3 >= v16)
        {
          goto LABEL_30;
        }

        v8 = a1 + 64;
        v17 = *(a1 + 64 + 8 * v9);
        if ((v17 & (1 << v3)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v4 + 36) != v15)
        {
          goto LABEL_32;
        }

        v18 = v17 & (-2 << (v3 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (a1 + 72 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_232B48E94(v3, v15, v26 & 1);
              v4 = a1;
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_20;
            }
          }

          sub_232B48E94(v3, v15, v26 & 1);
          v4 = a1;
        }

LABEL_20:
        if (++v7 == v25)
        {
          return;
        }

        v2 = 0;
        v6 = *(v4 + 36);
        v3 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

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
  }
}

void sub_232C431B4()
{
  v1 = 0;
  v2 = 0;
  v3 = v0[3];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v1;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(*(v3 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      __break(1u);
LABEL_13:
      v12 = v0[4];
      sub_232C4A108();
      do
      {
        if (!v19)
        {
          while (1)
          {
            v20 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_59;
            }

            if (v20 >= v18)
            {
              goto LABEL_23;
            }

            v19 = *(v17 + 8 * v20);
            ++v16;
            if (v19)
            {
              v16 = v20;
              goto LABEL_20;
            }
          }
        }

        v20 = v16;
LABEL_20:
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v22 = *(*(v15 + 56) + ((v20 << 9) | (8 * v21)));
        v11 = __OFADD__(v14, v22);
        v14 += v22;
      }

      while (!v11);
      __break(1u);
LABEL_23:
      if (!__OFADD__(v13, v14))
      {
        v23 = *v0;
        sub_232C4A108();
        do
        {
          if (!v30)
          {
            while (1)
            {
              v31 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                goto LABEL_60;
              }

              if (v31 >= v29)
              {
                goto LABEL_34;
              }

              v30 = *(v28 + 8 * v31);
              ++v27;
              if (v30)
              {
                v27 = v31;
                goto LABEL_31;
              }
            }
          }

          v31 = v27;
LABEL_31:
          v32 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v33 = *(*(v26 + 56) + ((v31 << 9) | (8 * v32)));
          v11 = __OFADD__(v25, v33);
          v25 += v33;
        }

        while (!v11);
        __break(1u);
LABEL_34:
        if (!__OFADD__(v24, v25))
        {
          v34 = v0[1];
          sub_232C4A108();
          do
          {
            if (!v41)
            {
              while (1)
              {
                v42 = v38 + 1;
                if (__OFADD__(v38, 1))
                {
                  goto LABEL_61;
                }

                if (v42 >= v40)
                {
                  goto LABEL_45;
                }

                v41 = *(v39 + 8 * v42);
                ++v38;
                if (v41)
                {
                  v38 = v42;
                  goto LABEL_42;
                }
              }
            }

            v42 = v38;
LABEL_42:
            v43 = __clz(__rbit64(v41));
            v41 &= v41 - 1;
            v44 = *(*(v37 + 56) + ((v42 << 9) | (8 * v43)));
            v11 = __OFADD__(v36, v44);
            v36 += v44;
          }

          while (!v11);
          __break(1u);
LABEL_45:
          if (!__OFADD__(v35, v36))
          {
            v45 = v0[2];
            sub_232C4A108();
            do
            {
              if (!v52)
              {
                while (1)
                {
                  v53 = v49 + 1;
                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_62;
                  }

                  if (v53 >= v51)
                  {
                    goto LABEL_56;
                  }

                  v52 = *(v50 + 8 * v53);
                  ++v49;
                  if (v52)
                  {
                    v49 = v53;
                    goto LABEL_53;
                  }
                }
              }

              v53 = v49;
LABEL_53:
              v54 = __clz(__rbit64(v52));
              v52 &= v52 - 1;
              v55 = *(*(v48 + 56) + ((v53 << 9) | (8 * v54)));
              v11 = __OFADD__(v47, v55);
              v47 += v55;
            }

            while (!v11);
            __break(1u);
LABEL_56:
            if (__OFADD__(v46, v47))
            {
              goto LABEL_66;
            }

            return;
          }

          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_10;
    }
  }

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
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void *sub_232C43470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84FA0];
  v3[5] = MEMORY[0x277D84FA0];
  v3[6] = v5;
  v3[2] = a1;
  v3[3] = a2;
  swift_beginAccess();
  v3[4] = a3;
  return v3;
}

BOOL sub_232C434DC()
{
  sub_232C2E03C();
  sub_232C4A23C();
  v1 = *(v0 + 40);

  v2 = sub_232B5A008();
  v4 = sub_232BA7F18(v2, v3, v1);

  return v4;
}

BOOL sub_232C4353C()
{
  sub_232C2E03C();
  sub_232C4A23C();
  v1 = *(v0 + 48);

  v2 = sub_232B5A008();
  v4 = sub_232BA7F18(v2, v3, v1);

  return v4;
}

void sub_232C4359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_232C4A420();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  sub_232B26B10(v30);
  sub_232C4A414();
  while (1)
  {
    if (v26 == v27)
    {
      sub_232C4A43C();
      return;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      v38 = sub_232C4A1F4();
      v32 = MEMORY[0x2383922C0](v38);
    }

    else
    {
      if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v32 = sub_232C4A2FC();
    }

    v33 = v32;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v34 = sub_232C31B34(v32, &selRef_identifier);
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      sub_232C4A1D8();
      sub_232C48B20(&a13, v36, v37);
      swift_endAccess();
    }

    else
    {
    }

    ++v27;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_232C43678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_232C4A420();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  sub_232B26B10(v30);
  sub_232C4A414();
  while (1)
  {
    if (v26 == v27)
    {
      sub_232C4A43C();
      return;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      v38 = sub_232C4A1F4();
      v32 = MEMORY[0x2383922C0](v38);
    }

    else
    {
      if (v27 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v32 = sub_232C4A2FC();
    }

    v33 = v32;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v34 = sub_232C31B34(v32, &selRef_identifier);
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      sub_232C4A1D8();
      sub_232C48B20(&a13, v36, v37);
      swift_endAccess();
    }

    else
    {
    }

    ++v27;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void *sub_232C43754()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_232C4378C()
{
  sub_232C43754();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_232C437E4(uint64_t a1)
{
  sub_232B26B10(a1);
  sub_232C4A414();
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2383922C0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    sub_232C4A26C();
    if (v7)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v8 = v4;
    sub_232C43898(&v8, v1);

    ++v3;
  }
}

uint64_t sub_232C43898(void **a1, uint64_t a2)
{
  v4 = sub_232CE9A30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  result = sub_232C31B34(*a1, &selRef_identifier);
  if (v11)
  {
    v12 = result;
    v13 = v11;
    sub_232C45710();
    if (v14)
    {

      swift_beginAccess();
      v15 = *(a2 + 48);
      swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a2 + 48);
      v16 = v36;
      *(a2 + 48) = 0x8000000000000000;
      v17 = sub_232B1F160(v12, v13);
      if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v19 = v17;
        v20 = v18;
        sub_232B124A8(&qword_27DDC77F8, &unk_232CFE4F0);
        v21 = sub_232CEA5C0();
        v22 = v36;
        if (v21)
        {
          v23 = sub_232B1F160(v12, v13);
          if ((v20 & 1) != (v24 & 1))
          {
LABEL_17:
            result = sub_232CEA7A0();
            __break(1u);
            return result;
          }

          v19 = v23;
        }

        *(a2 + 48) = v22;
        if ((v20 & 1) == 0)
        {
          sub_232B64770(v19, v12, v13, 0, v22);
        }

        v25 = *(v22 + 56);
        v26 = *(v25 + 8 * v19);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (!v27)
        {
          *(v25 + 8 * v19) = v28;
          swift_endAccess();
        }
      }

      __break(1u);
      goto LABEL_17;
    }

    sub_232CE9A20();
    v29 = v9;
    v30 = sub_232CE9A00();
    v31 = sub_232CEA1C0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_232B02000, v30, v31, "Trying to update counts for an entity id with no name: %@", v32, 0xCu);
      sub_232B13790(v33, &qword_27DDC6FD0, &unk_232CFA240);
      MEMORY[0x238393870](v33, -1, -1);
      MEMORY[0x238393870](v32, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_232C43B98(uint64_t a1)
{
  v2 = v1;
  v52 = sub_232B26B10(a1);
  v4 = 0;
  v50 = a1 & 0xC000000000000001;
  v51 = sub_232B26B10(a1);
  v48 = a1 & 0xFFFFFFFFFFFFFF8;
  v49 = a1;
  while (v51 != v4)
  {
    if (v50)
    {
      v5 = MEMORY[0x2383922C0](v4, v49);
    }

    else
    {
      if (v4 >= *(v48 + 16))
      {
        goto LABEL_28;
      }

      v5 = *(v49 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
      __break(1u);
LABEL_34:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C31B34(v5, &selRef_identifier);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      sub_232B207D4();
      v11 = *(v2 + 64);
      swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      sub_232B1F160(v9, v10);
      sub_232B66BA0();
      if (__OFADD__(v14, v15))
      {
        goto LABEL_29;
      }

      v16 = v12;
      v17 = v13;
      sub_232B124A8(&qword_27DDC8168, &unk_232CFE4E0);
      v18 = sub_232C4A518();
      v19 = v53;
      if (v18)
      {
        v20 = sub_232B1F160(v9, v10);
        if ((v17 & 1) != (v21 & 1))
        {
          goto LABEL_34;
        }

        v16 = v20;
      }

      *(v2 + 64) = v19;
      if ((v17 & 1) == 0)
      {
        sub_232C43EAC(&v53);
        v22 = v53;
        v19[(v16 >> 6) + 8] |= 1 << v16;
        v23 = (v19[6] + 16 * v16);
        *v23 = v9;
        v23[1] = v10;
        *(v19[7] + 8 * v16) = v22;
        v24 = v19[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v19[2] = v26;
      }

      v27 = v6;
      v28 = v2;
      v29 = v19[7];
      v30 = *(v29 + 8 * v16);
      swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v29 + 8 * v16);
      *(v29 + 8 * v16) = 0x8000000000000000;
      sub_232B20520(v52);
      sub_232B66BA0();
      if (__OFADD__(v33, v34))
      {
        goto LABEL_30;
      }

      v35 = v31;
      v36 = v32;
      sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
      v37 = sub_232C4A518();
      v38 = v53;
      if (v37)
      {
        v39 = sub_232B20520(v52);
        if ((v36 & 1) != (v40 & 1))
        {
          goto LABEL_34;
        }

        v35 = v39;
      }

      v41 = *(v29 + 8 * v16);
      *(v29 + 8 * v16) = v38;

      v42 = *(v29 + 8 * v16);
      v2 = v28;
      v6 = v27;
      if ((v36 & 1) == 0)
      {
        v42[(v35 >> 6) + 8] |= 1 << v35;
        *(v42[6] + 8 * v35) = v52;
        *(v42[7] + 8 * v35) = 0;
        v43 = v42[2];
        v25 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v25)
        {
          goto LABEL_33;
        }

        v42[2] = v44;
      }

      v45 = v42[7];
      v46 = *(v45 + 8 * v35);
      v25 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v25)
      {
        goto LABEL_31;
      }

      *(v45 + 8 * v35) = v47;
      swift_endAccess();
    }

    ++v4;
  }
}

uint64_t sub_232C43EAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232CE9C60();
  *a1 = result;
  return result;
}

uint64_t sub_232C43EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3 + 64;
  v8 = *(a3 + 64);
  v10 = *(a3 + 32);
  sub_232B34F88();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;

  v17 = 0;
  if (v13)
  {
    while (1)
    {
      v18 = v17;
LABEL_7:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v18 << 6);
      v21 = (*(a3 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(a3 + 56) + 40 * v20;
      v29 = *v24;
      v30 = *(v24 + 16);
      v31 = *(v24 + 32);

      v25 = sub_232BA6074();
      sub_232C44020(v25, v26, v27, v28, a1, a2, a4);

      if (!v13)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v13 = *(v9 + 8 * v18);
    ++v17;
    if (v13)
    {
      v17 = v18;
      goto LABEL_7;
    }
  }
}

uint64_t sub_232C44020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a6;
  v8 = a5;
  v11 = a3[3];
  v160 = a1;
  v159 = a3;
  if (v11 < 1)
  {
    v157 = 0;
    v158 = 0;
    goto LABEL_18;
  }

  v171 = a1;
  v172 = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v13 = v171;
  v12 = v172;
  swift_beginAccess();
  v14 = *(a4 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v171 = *(a4 + 56);
  v15 = v171;
  *(a4 + 56) = 0x8000000000000000;
  v16 = sub_232B1F160(v13, v12);
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
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
    goto LABEL_100;
  }

  v18 = v16;
  v19 = v17;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v20 = v171;
  if (sub_232CEA5C0())
  {
    v21 = sub_232B1F160(v13, v12);
    if ((v19 & 1) != (v22 & 1))
    {
      goto LABEL_102;
    }

    v18 = v21;
  }

  *(a4 + 56) = v171;
  if ((v19 & 1) == 0)
  {
    sub_232B0B6B8(&v171);
    sub_232B64944(v18, v13, v12, &v171, v20);
  }

  v23 = *(v20 + 56) + 88 * v18;
  v25 = *(v23 + 24);
  v24 = (v23 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v169[0] = *v24;
  v26 = v169[0];
  *v24 = 0x8000000000000000;
  v27 = sub_232B20520(a7);
  if (__OFADD__(*(v26 + 16), (v28 & 1) == 0))
  {
    goto LABEL_88;
  }

  v29 = v27;
  v30 = v28;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v31 = v169[0];
    v32 = sub_232B20520(a7);
    if ((v30 & 1) != (v33 & 1))
    {
      goto LABEL_102;
    }

    v29 = v32;
  }

  else
  {

    v31 = v169[0];
  }

  v34 = *v24;
  *v24 = v31;

  v35 = *v24;
  if ((v30 & 1) == 0)
  {
    sub_232B648B0(v29, a7, 0, *v24);
  }

  v36 = *(v35 + 56);
  v37 = *(v36 + 8 * v29);
  v38 = __OFADD__(v37, v11);
  v39 = v37 + v11;
  v8 = a5;
  if (v38)
  {
    goto LABEL_90;
  }

  *(v36 + 8 * v29) = v39;
  swift_endAccess();
  v158 = sub_232C3B988;
  v157 = sub_232C4A0F0;
  a1 = v160;
  v7 = a6;
  a3 = v159;
LABEL_18:
  v40 = a3[4];
  if (v40 < 1)
  {
    v155 = 0;
    v156 = 0;
    goto LABEL_35;
  }

  v170[0] = a1;
  v170[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v41 = v170[0];
  swift_beginAccess();
  v42 = *(a4 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v170[0] = *(a4 + 56);
  v43 = v170[0];
  *(a4 + 56) = 0x8000000000000000;
  v44 = sub_232B1F160(v41, a2);
  if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
  {
    goto LABEL_89;
  }

  v46 = v44;
  v47 = v45;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v48 = v170[0];
  if (sub_232CEA5C0())
  {
    v49 = sub_232B1F160(v41, a2);
    if ((v47 & 1) != (v50 & 1))
    {
      goto LABEL_102;
    }

    v46 = v49;
  }

  *(a4 + 56) = v170[0];
  if ((v47 & 1) == 0)
  {
    sub_232B0B6B8(v170);
    sub_232B64944(v46, v41, a2, v170, v48);
  }

  v51 = *(v48 + 56) + 88 * v46;
  v53 = *(v51 + 32);
  v52 = (v51 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v168[0] = *v52;
  v54 = v168[0];
  *v52 = 0x8000000000000000;
  v55 = sub_232B20520(a7);
  if (__OFADD__(*(v54 + 16), (v56 & 1) == 0))
  {
    goto LABEL_91;
  }

  v57 = v55;
  v58 = v56;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v59 = v168[0];
    v60 = sub_232B20520(a7);
    if ((v58 & 1) != (v61 & 1))
    {
      goto LABEL_102;
    }

    v57 = v60;
  }

  else
  {

    v59 = v168[0];
  }

  v62 = *v52;
  *v52 = v59;

  v63 = *v52;
  if ((v58 & 1) == 0)
  {
    sub_232B648B0(v57, a7, 0, *v52);
  }

  v64 = *(v63 + 56);
  v65 = *(v64 + 8 * v57);
  v38 = __OFADD__(v65, v40);
  v66 = v65 + v40;
  v8 = a5;
  if (v38)
  {
    goto LABEL_93;
  }

  *(v64 + 8 * v57) = v66;
  swift_endAccess();
  v156 = sub_232C3B988;
  v155 = sub_232C4A0F0;
  a1 = v160;
  v7 = a6;
  a3 = v159;
LABEL_35:
  v67 = *a3;
  if (*a3 < 1)
  {
    v153 = 0;
    v154 = 0;
    goto LABEL_52;
  }

  v169[0] = a1;
  v169[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v68 = v169[0];
  swift_beginAccess();
  v69 = *(a4 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v169[0] = *(a4 + 56);
  v70 = v169[0];
  *(a4 + 56) = 0x8000000000000000;
  v71 = sub_232B1F160(v68, a2);
  if (__OFADD__(*(v70 + 16), (v72 & 1) == 0))
  {
    goto LABEL_92;
  }

  v73 = v71;
  v74 = v72;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v75 = v169[0];
  if (sub_232CEA5C0())
  {
    v76 = sub_232B1F160(v68, a2);
    if ((v74 & 1) != (v77 & 1))
    {
      goto LABEL_102;
    }

    v73 = v76;
  }

  *(a4 + 56) = v169[0];
  if ((v74 & 1) == 0)
  {
    sub_232B0B6B8(v169);
    sub_232B64944(v73, v68, a2, v169, v75);
  }

  v78 = (*(v75 + 56) + 88 * v73);
  v79 = *v78;
  swift_isUniquelyReferenced_nonNull_native();
  v167[0] = *v78;
  v80 = v167[0];
  *v78 = 0x8000000000000000;
  v81 = sub_232B20520(a7);
  if (__OFADD__(*(v80 + 16), (v82 & 1) == 0))
  {
    goto LABEL_94;
  }

  v83 = v81;
  v84 = v82;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v85 = v167[0];
    v86 = sub_232B20520(a7);
    if ((v84 & 1) != (v87 & 1))
    {
      goto LABEL_102;
    }

    v83 = v86;
  }

  else
  {

    v85 = v167[0];
  }

  v88 = *v78;
  *v78 = v85;

  v89 = *v78;
  if ((v84 & 1) == 0)
  {
    sub_232B648B0(v83, a7, 0, *v78);
  }

  v90 = *(v89 + 56);
  v91 = *(v90 + 8 * v83);
  v38 = __OFADD__(v91, v67);
  v92 = v91 + v67;
  v8 = a5;
  if (v38)
  {
    goto LABEL_96;
  }

  *(v90 + 8 * v83) = v92;
  swift_endAccess();
  v154 = sub_232C3B988;
  v153 = sub_232C4A0F0;
  a1 = v160;
  v7 = a6;
  a3 = v159;
LABEL_52:
  v93 = a3[1];
  if (v93 < 1)
  {
    v115 = 0;
    v116 = 0;
    goto LABEL_69;
  }

  v168[0] = a1;
  v168[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v94 = v168[0];
  swift_beginAccess();
  v95 = *(a4 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v168[0] = *(a4 + 56);
  v96 = v168[0];
  *(a4 + 56) = 0x8000000000000000;
  v97 = sub_232B1F160(v94, a2);
  if (__OFADD__(*(v96 + 16), (v98 & 1) == 0))
  {
    goto LABEL_95;
  }

  v99 = v97;
  v100 = v98;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v101 = v168[0];
  if (sub_232CEA5C0())
  {
    v102 = sub_232B1F160(v94, a2);
    if ((v100 & 1) != (v103 & 1))
    {
      goto LABEL_102;
    }

    v99 = v102;
  }

  *(a4 + 56) = v168[0];
  if ((v100 & 1) == 0)
  {
    sub_232B0B6B8(v168);
    sub_232B64944(v99, v94, a2, v168, v101);
  }

  v104 = *(v101 + 56) + 88 * v99;
  v106 = *(v104 + 8);
  v105 = (v104 + 8);
  swift_isUniquelyReferenced_nonNull_native();
  v107 = *v105;
  v166 = *v105;
  *v105 = 0x8000000000000000;
  v108 = sub_232B20520(a7);
  if (__OFADD__(*(v107 + 16), (v109 & 1) == 0))
  {
    goto LABEL_97;
  }

  v110 = v108;
  v111 = v109;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if (sub_232CEA5C0())
  {
    v112 = v166;
    v113 = sub_232B20520(a7);
    if ((v111 & 1) != (v114 & 1))
    {
      goto LABEL_102;
    }

    v110 = v113;
  }

  else
  {

    v112 = v166;
  }

  v117 = *v105;
  *v105 = v112;

  v118 = *v105;
  if ((v111 & 1) == 0)
  {
    sub_232B648B0(v110, a7, 0, *v105);
  }

  v119 = *(v118 + 56);
  v120 = *(v119 + 8 * v110);
  v38 = __OFADD__(v120, v93);
  v121 = v120 + v93;
  v8 = a5;
  if (v38)
  {
    goto LABEL_99;
  }

  *(v119 + 8 * v110) = v121;
  swift_endAccess();
  v116 = sub_232C3B988;
  v115 = sub_232C4A0F0;
  a1 = v160;
  v7 = a6;
  a3 = v159;
LABEL_69:
  v122 = a3[2];
  if (v122 < 1)
  {
    v145 = 0;
    v146 = 0;
LABEL_86:
    sub_232B0D210(v157);
    sub_232B0D210(v158);
    sub_232B0D210(v155);
    sub_232B0D210(v156);
    sub_232B0D210(v153);
    sub_232B0D210(v154);
    sub_232B0D210(v115);
    sub_232B0D210(v116);
    sub_232B0D210(v145);
    return sub_232B0D210(v146);
  }

  v163 = v116;
  v167[0] = a1;
  v167[1] = a2;

  MEMORY[0x238391C30](4074812, 0xE300000000000000);

  MEMORY[0x238391C30](v8, v7);

  v124 = v167[0];
  v123 = a2;
  swift_beginAccess();
  v125 = *(a4 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v167[0] = *(a4 + 56);
  v126 = v167[0];
  *(a4 + 56) = 0x8000000000000000;
  v127 = sub_232B1F160(v124, a2);
  if (__OFADD__(*(v126 + 16), (v128 & 1) == 0))
  {
    goto LABEL_98;
  }

  v129 = v127;
  v130 = v128;
  sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
  v131 = v167[0];
  if (sub_232CEA5C0())
  {
    v132 = sub_232B1F160(v124, v123);
    if ((v130 & 1) != (v133 & 1))
    {
      goto LABEL_102;
    }

    v129 = v132;
  }

  *(a4 + 56) = v167[0];
  if ((v130 & 1) == 0)
  {
    sub_232B0B6B8(v167);
    sub_232B64944(v129, v124, v123, v167, v131);
  }

  v134 = *(v131 + 56) + 88 * v129;
  v136 = *(v134 + 16);
  v135 = (v134 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v137 = *v135;
  v165 = *v135;
  *v135 = 0x8000000000000000;
  v138 = sub_232B20520(a7);
  if (__OFADD__(*(v137 + 16), (v139 & 1) == 0))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v140 = v138;
  v141 = v139;
  sub_232B124A8(&qword_27DDC8160, &qword_232CFE4D8);
  if ((sub_232CEA5C0() & 1) == 0)
  {

    v142 = v165;
LABEL_82:
    v147 = *v135;
    *v135 = v142;

    v148 = *v135;
    if ((v141 & 1) == 0)
    {
      sub_232B648B0(v140, a7, 0, *v135);
    }

    v149 = *(v148 + 56);
    v150 = *(v149 + 8 * v140);
    v38 = __OFADD__(v150, v122);
    v151 = v150 + v122;
    v116 = v163;
    if (!v38)
    {
      *(v149 + 8 * v140) = v151;
      swift_endAccess();
      v146 = sub_232C3B988;
      v145 = sub_232C4A0F0;
      goto LABEL_86;
    }

    goto LABEL_101;
  }

  v142 = v165;
  v143 = sub_232B20520(a7);
  if ((v141 & 1) == (v144 & 1))
  {
    v140 = v143;

    goto LABEL_82;
  }

LABEL_102:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

uint64_t sub_232C44D2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_232C4A1B8();
  v4 = sub_232C4A1B8();
  v5 = sub_232C4A1B8();
  v6 = sub_232C4A1B8();
  result = sub_232C4A1B8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = result;
  a1[5] = v2;
  a1[6] = v2;
  a1[7] = v2;
  a1[8] = v2;
  a1[9] = v2;
  a1[10] = v2;
  return result;
}

uint64_t sub_232C44DB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = 0;
  v146 = a3 + 32;
  v147 = *(a3 + 16);
  while (v6 != v147)
  {
    v7 = (v146 + 16 * v6);
    v8 = *v7;
    v148 = v6 + 1;
    v9 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions;
    v10 = v7[1];
    sub_232B13F74();
    v11 = *(v8 + v9);
    v155 = sub_232B26B10(v11);
    v149 = v11 & 0xFFFFFFFFFFFFFF8;
    v151 = v11 & 0xC000000000000001;
    v158 = v8;
    swift_retain_n();
    v153 = v11;

    while (v155)
    {
      if (v151)
      {
        v12 = MEMORY[0x2383922C0](0, v153);
      }

      else
      {
        if (!*(v149 + 16))
        {
          __break(1u);
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          result = sub_232CEA7A0();
          __break(1u);
          return result;
        }

        v12 = *(v153 + 32);
      }

      v13 = v12;
      sub_232C31B34(v12, &selRef_identifier);
      if (v14)
      {
        sub_232C4A3A0();
        sub_232C4A198();
        sub_232C4A220();
        sub_232C4A364();

        sub_232C4A178();
        v15 = *(v5 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v16 = sub_232BAE188();
        sub_232B1F160(v16, v17);
        sub_232B66BA0();
        if (__OFADD__(v20, v21))
        {
          goto LABEL_73;
        }

        v22 = v18;
        v23 = v19;
        sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
        if (sub_232C4A3C4())
        {
          v24 = sub_232BAE188();
          sub_232B1F160(v24, v25);
          sub_232B20914();
          if (!v27)
          {
            goto LABEL_79;
          }

          v22 = v26;
        }

        *(v5 + 56) = v159;
        if (v23)
        {
        }

        else
        {
          sub_232B0B6B8(v165);
          sub_232C4A2BC();
          sub_232B64944(v28, v29, v30, v31, v159);
        }

        sub_232C4A2C8();
        v34 = v32 + v22 * v33;
        sub_232BAD024();
        v35 = *(*(v34 + 40) + 16);
        sub_232BAD170(v35);
        v36 = *(v34 + 40);
        sub_232C4A4B8(v35 + 1);
        sub_232C4A2A0();
        sub_232C4A198();
        sub_232C4A220();
        sub_232C4A364();

        sub_232C4A498(v37, v38, v39, v40, v41, v42, v43, v44, v146, v147, v148, v149, v151, v153, v155, v157, v158);
        sub_232C4A3F4();
        sub_232CE9E60();

        sub_232C4A178();
        v45 = *(v5 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        sub_232C4A538();
        v47 = v46;
        sub_232B66BA0();
        if (__OFADD__(v48, v49))
        {
          goto LABEL_74;
        }

        if (sub_232C4A4F8())
        {
          v50 = sub_232C4A538();
          if ((v47 & 1) != (v51 & 1))
          {
            goto LABEL_79;
          }

          v23 = v50;
        }

        *(v5 + 56) = v159;
        if (v47)
        {
        }

        else
        {
          v52 = sub_232B0B6B8(v164);
          sub_232C4A4D8(v52, v53, v54, v164);
        }

        sub_232C4A2C8();
        v57 = v55 + v23 * v56;
        sub_232BAD024();
        v58 = *(*(v57 + 48) + 16);
        sub_232BAD170(v58);
        v59 = *(v57 + 48);
        sub_232C4A200(v58 + 1);
        sub_232C4A2A0();
        sub_232C4A198();

        sub_232C4A220();
        sub_232C4A364();

        v13 = v157;
        [v157 confidenceScore];
        sub_232C4A178();
        v60 = *(v5 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v61 = sub_232BAE188();
        sub_232B1F160(v61, v62);
        v64 = v63;
        sub_232B66BA0();
        if (__OFADD__(v65, v66))
        {
          goto LABEL_75;
        }

        if (sub_232C4A458())
        {
          v67 = sub_232BAE188();
          sub_232B1F160(v67, v68);
          sub_232B20914();
          if (!v27)
          {
            goto LABEL_79;
          }

          v4 = v69;
        }

        *(v5 + 56) = v159;
        if (v64)
        {
        }

        else
        {
          sub_232B0B6B8(v163);
          sub_232C4A2BC();
          sub_232B64944(v70, v71, v72, v73, v159);
        }

        sub_232C4A2C8();
        v76 = v74 + v4 * v75;
        sub_232BAD024();
        v77 = *(*(v76 + 56) + 16);
        sub_232BAD170(v77);
        v78 = *(v76 + 56);
        sub_232C4A200(v77 + 1);
      }

      sub_232C4A314();
    }

    v79 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
    sub_232B13F74();
    v154 = *(v158 + v79);
    v156 = sub_232B26B10(v154);
    v150 = v154 & 0xFFFFFFFFFFFFFF8;
    v152 = v154 & 0xC000000000000001;

    while (v156)
    {
      if (v152)
      {
        v80 = MEMORY[0x2383922C0](0, v154);
      }

      else
      {
        if (!*(v150 + 16))
        {
          goto LABEL_72;
        }

        v80 = *(v154 + 32);
      }

      v81 = v80;
      sub_232C31B34(v80, &selRef_identifier);
      if (v82)
      {
        sub_232C4A3A0();
        sub_232C4A198();
        sub_232C4A220();
        sub_232C4A364();

        sub_232C4A178();
        v83 = *(v5 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v84 = sub_232BAE188();
        sub_232B1F160(v84, v85);
        sub_232B66BA0();
        if (__OFADD__(v88, v89))
        {
          goto LABEL_76;
        }

        v90 = v86;
        v91 = v87;
        sub_232B124A8(&qword_27DDC8158, &qword_232CFE4D0);
        if (sub_232C4A3C4())
        {
          v92 = sub_232BAE188();
          sub_232B1F160(v92, v93);
          sub_232B20914();
          if (!v27)
          {
            goto LABEL_79;
          }

          v90 = v94;
        }

        *(v5 + 56) = v159;
        if (v91)
        {
        }

        else
        {
          sub_232B0B6B8(v162);
          sub_232C4A2BC();
          sub_232B64944(v95, v96, v97, v98, v159);
        }

        sub_232C4A2C8();
        v101 = v99 + v90 * v100;
        sub_232BAD024();
        v102 = *(*(v101 + 64) + 16);
        sub_232BAD170(v102);
        v103 = *(v101 + 64);
        sub_232C4A4B8(v102 + 1);
        sub_232C4A2A0();
        sub_232C4A198();
        sub_232C4A220();
        sub_232C4A364();

        sub_232C4A498(v104, v105, v106, v107, v108, v109, v110, v111, v146, v147, v148, v150, v152, v154, v156, v157, v158);
        sub_232C4A3F4();
        sub_232CE9E60();

        sub_232C4A178();
        v112 = *(v5 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        sub_232C4A538();
        v114 = v113;
        sub_232B66BA0();
        if (__OFADD__(v115, v116))
        {
          goto LABEL_77;
        }

        if (sub_232C4A4F8())
        {
          v117 = sub_232C4A538();
          if ((v114 & 1) != (v118 & 1))
          {
            goto LABEL_79;
          }

          v91 = v117;
        }

        *(v5 + 56) = v159;
        if (v114)
        {
        }

        else
        {
          v119 = sub_232B0B6B8(v161);
          sub_232C4A4D8(v119, v120, v121, v161);
        }

        sub_232C4A2C8();
        v124 = v122 + v91 * v123;
        sub_232BAD024();
        v125 = *(*(v124 + 72) + 16);
        sub_232BAD170(v125);
        v126 = *(v124 + 72);
        sub_232C4A200(v125 + 1);
        sub_232C4A2A0();
        sub_232C4A198();

        sub_232C4A220();
        sub_232C4A364();

        v81 = v157;
        [v157 confidenceScore];
        sub_232C4A178();
        v127 = *(v5 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        sub_232C4A0F4();
        v128 = sub_232BAE188();
        sub_232B1F160(v128, v129);
        v131 = v130;
        sub_232B66BA0();
        if (__OFADD__(v132, v133))
        {
          goto LABEL_78;
        }

        if (sub_232C4A458())
        {
          v134 = sub_232BAE188();
          sub_232B1F160(v134, v135);
          sub_232B20914();
          if (!v27)
          {
            goto LABEL_79;
          }

          v4 = v136;
        }

        *(v5 + 56) = v159;
        if (v131)
        {
        }

        else
        {
          sub_232B0B6B8(v160);
          sub_232C4A2BC();
          sub_232B64944(v137, v138, v139, v140, v159);
        }

        sub_232C4A2C8();
        v143 = v141 + v4 * v142;
        sub_232BAD024();
        v144 = *(*(v143 + 80) + 16);
        sub_232BAD170(v144);
        v145 = *(v143 + 80);
        sub_232C4A200(v144 + 1);
      }

      sub_232C4A314();
    }

    v6 = v148;
  }

  return result;
}

uint64_t sub_232C455E0()
{
  v1 = v0;
  v2 = sub_232C4B888();
  v4 = v3;
  sub_232B13F74();
  v5 = *(v0 + 24);

  sub_232B1E0D0(v2, v4, v5);
  v7 = v6;

  if (v7)
  {
  }

  else
  {
    v12 = *(*(v1 + 24) + 16);
    sub_232CEA720();
    sub_232B207D4();
    v8 = *(v1 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 24);
    sub_232C4A3E8();
    sub_232B1FAF0();
    *(v1 + 24) = v11;
    swift_endAccess();
  }

  v9 = *(v1 + 24);

  sub_232B1E0D0(v2, v4, v9);

  return sub_232B41C8C();
}

uint64_t sub_232C45710()
{
  v1 = v0;
  sub_232B13F74();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  sub_232B13F74();
  v4 = *(v1 + 32);
  if (v3 == *(v4 + 16))
  {
LABEL_19:

    v37 = sub_232BAE188();
    sub_232B1E0D0(v37, v38, v4);

    return sub_232BC1E48();
  }

  else
  {
    v6 = v2 + 64;
    v5 = *(v2 + 64);
    v7 = *(v2 + 32);
    sub_232B34F88();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v40 = v12;
    v41 = v2 + 64;
    v42 = v2;
    v43 = v1;
    if (v10)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_3:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v14 >= v12)
      {

        v4 = *(v1 + 32);
        goto LABEL_19;
      }

      v10 = *(v6 + 8 * v14);
      ++v13;
    }

    while (!v10);
    v13 = v14;
LABEL_7:
    while (1)
    {
      v15 = (v13 << 10) | (16 * __clz(__rbit64(v10)));
      v16 = (*(v2 + 48) + v15);
      v17 = v16[1];
      v44 = *v16;
      v18 = (*(v2 + 56) + v15);
      v20 = *v18;
      v19 = v18[1];
      sub_232B207D4();
      swift_bridgeObjectRetain_n();

      v21 = *(v1 + 32);
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v1 + 32);
      *(v1 + 32) = 0x8000000000000000;
      sub_232B1F160(v20, v19);
      sub_232B66BA0();
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v26 = v22;
      v27 = v23;
      sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
      if (sub_232CEA5C0())
      {
        sub_232B1F160(v20, v19);
        sub_232B20914();
        if (!v29)
        {
          goto LABEL_23;
        }

        v26 = v28;
      }

      if (v27)
      {
        v30 = (v45[7] + 16 * v26);
        v31 = v30[1];
        *v30 = v44;
        v30[1] = v17;
      }

      else
      {
        v45[(v26 >> 6) + 8] |= 1 << v26;
        v32 = (v45[6] + 16 * v26);
        *v32 = v20;
        v32[1] = v19;
        v33 = (v45[7] + 16 * v26);
        *v33 = v44;
        v33[1] = v17;
        v34 = v45[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_22;
        }

        v45[2] = v36;
      }

      v10 &= v10 - 1;
      v1 = v43;
      *(v43 + 32) = v45;
      swift_endAccess();

      v6 = v41;
      v2 = v42;
      v12 = v40;
      if (!v10)
      {
        goto LABEL_3;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_232CEA7A0();
    __break(1u);
  }

  return result;
}

void *sub_232C459C0()
{
  sub_232BAD8B0();
  sub_232BC1AB8();
  result = sub_232CE9CA0();
  if (result[2])
  {
    v1 = result;
    v2 = result[4];
    v3 = result[5];
    v4 = result[6];
    v5 = result[7];

    v6 = sub_232BC1E48();
    MEMORY[0x238391B80](v6);

    if (v1[2] >= 2uLL)
    {
      v7 = v1[8];
      v8 = v1[9];
      v9 = v1[10];
      v10 = v1[11];

      MEMORY[0x238391B80](v7, v8, v9, v10);

      return sub_232BC1E48();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_232C45ADC()
{
  sub_232C2E03C();
  sub_232C4A23C();
  v1 = *(v0 + 64);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_232B5A008();
  v4 = sub_232B1F160(v2, v3);
  if ((v5 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v4);

  v8 = 0;
  v9 = 0;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v8;
LABEL_12:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(v6 + 56) + ((v14 << 9) | (8 * v15)));
    v17 = __OFADD__(v9, v16);
    v9 += v16;
    if (v17)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return v9;
    }

    v12 = *(v6 + 64 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232C45BFC()
{
  sub_232C4A23C();
  v1 = *(v0 + 48);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  sub_232B34F88();
  v7 = v6 & v5;
  if (v7)
  {
    v8 = 0;
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
    v11 = (v4 + 63) >> 6;
LABEL_7:
    v14 = (*(v1 + 48) + 16 * v9);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v1 + 56) + 8 * v9);
    swift_bridgeObjectRetain_n();

    while (v10)
    {
LABEL_13:
      v20 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v21 = v20 | (v8 << 6);
      v22 = *(*(v1 + 56) + 8 * v21);
      if (v17 < v22)
      {
        v23 = (*(v1 + 48) + 16 * v21);
        v16 = *v23;
        v24 = v23[1];

        v17 = v22;
      }
    }

    while (1)
    {
      v19 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v19 >= v11)
      {

        return v16;
      }

      v10 = *(v1 + 64 + 8 * v19);
      ++v8;
      if (v10)
      {
        v8 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 0;
    v11 = (v4 + 63) >> 6;
    while (1)
    {
      v8 = v7 + 1;
      if (v7 + 1 >= v11)
      {
        return 0;
      }

      v13 = *(v1 + 72 + 8 * v7);
      v12 += 64;
      ++v7;
      if (v13)
      {
        v10 = (v13 - 1) & v13;
        v9 = __clz(__rbit64(v13)) + v12;
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_232C45DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *))
{
  v28 = a4;
  v6 = a3();
  v34 = MEMORY[0x277D84F90];
  v31 = v6;
  v32 = sub_232B26B10(v6);
  v7 = 0;
  v29 = v6 & 0xFFFFFFFFFFFFFF8;
  v30 = v6 & 0xC000000000000001;
  while (v32 != v7)
  {
    if (v30)
    {
      v8 = MEMORY[0x2383922C0](v7, v31);
    }

    else
    {
      if (v7 >= *(v29 + 16))
      {
        goto LABEL_32;
      }

      v8 = *(v31 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_232C31B34(v8, &selRef_text);
    v10 = sub_232CE9DD0();
    v6 = v11;

    v33[0] = 32;
    v33[1] = 0xE100000000000000;
    MEMORY[0x28223BE20](v12);
    v27[2] = v33;
    v13 = sub_232C484F0(1, 1, v28, v27, v10, v6);
    if (v13[2])
    {
      v6 = v13[4];
      v14 = v13[5];
      v16 = v13[6];
      v15 = v13[7];

      v17 = MEMORY[0x238391B80](v6, v14, v16, v15);
      v19 = v18;
    }

    else
    {

      v17 = 0;
      v19 = 0xE000000000000000;
    }

    if (v17 == a1 && v19 == a2)
    {
    }

    else
    {
      v6 = sub_232CEA750();

      if ((v6 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v21 = [v9 contactIdentifier];
    if (v21)
    {

      sub_232CEA560();
      v6 = *(v34 + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
      goto LABEL_20;
    }

LABEL_19:

LABEL_20:
    ++v7;
  }

  v6 = v34;
  if (!sub_232B26B10(v34))
  {

    return sub_232C4A400();
  }

  sub_232B26B2C(0);
  if ((v6 & 0xC000000000000001) == 0)
  {
    v22 = *(v6 + 32);
    goto LABEL_25;
  }

LABEL_33:
  v22 = MEMORY[0x2383922C0](0, v6);
LABEL_25:
  v23 = v22;

  sub_232C31B34(v23, &selRef_contactIdentifier);
  v24 = [v23 text];
  if (v24)
  {
    v25 = v24;
    sub_232CE9D50();
  }

  return sub_232C4A400();
}

uint64_t sub_232C46100(uint64_t a1, uint64_t a2)
{
  v2 = sub_232C45D80(a1, a2);
  if (v3)
  {
    return v2;
  }

  v5 = sub_232BAE188();
  v4 = sub_232C45DAC(v5, v6);
  if (!v7)
  {
  }

  return v4;
}

uint64_t sub_232C4616C()
{
  sub_232C2E03C();
  sub_232C46498();
  v3 = v2;
  v18 = MEMORY[0x277D84F90];
  v4 = sub_232B26B10(v2);
  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2383922C0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = sub_232C31B34(v6, &selRef_identifier);
    if (!v9)
    {
LABEL_13:

      continue;
    }

    if (v8 == v1 && v9 == v0)
    {
    }

    else
    {
      v11 = sub_232CEA750();

      if ((v11 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_232CEA560();
    v12 = *(v18 + 16);
    sub_232CEA590();
    sub_232CEA5A0();
    sub_232CEA570();
  }

  v0 = v18;
  if (!sub_232B26B10(v18))
  {

    return sub_232C4A400();
  }

  sub_232B26B2C(0);
  if ((v18 & 0xC000000000000001) == 0)
  {
    v13 = *(v18 + 32);
    goto LABEL_21;
  }

LABEL_29:
  v13 = MEMORY[0x2383922C0](0, v0);
LABEL_21:
  v14 = v13;

  sub_232C31B34(v14, &selRef_contactIdentifier);
  v15 = [v14 text];
  if (v15)
  {
    v16 = v15;
    sub_232CE9D50();
  }

  return sub_232C4A400();
}

uint64_t sub_232C46380()
{
  v2 = sub_232CE9C60();
  sub_232C46498();
  sub_232C42B98(v0, &v2);

  return v2;
}

uint64_t sub_232C463F0()
{
  sub_232C4A23C();
  v1 = *(v0 + 16);

  sub_232C42F30(v2);
  v4 = v3;

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 32);
    while (1)
    {
      v9 = *v8++;
      v10 = __OFADD__(v7, v9);
      v7 += v9;
      if (v10)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_7:

    return v7;
  }

  return result;
}

void sub_232C464A4(void *a1)
{
  sub_232B13F74();
  v3 = *(v1 + 16);
  v5 = *(v3 + 64);
  v4 = v3 + 64;
  v6 = *(*(v1 + 16) + 32);
  sub_232B34F88();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v81 = v12;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v78 = v11;
  v79 = v4;
  v80 = a1;
LABEL_2:
  v84 = v14;
  if (v9)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_106;
    }

    if (v15 >= v11)
    {
      break;
    }

    v9 = *(v4 + 8 * v15);
    ++v13;
    if (v9)
    {
      v13 = v15;
LABEL_7:
      v82 = (v9 - 1) & v9;
      v83 = v13;
      v16 = *(*(v81 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      sub_232B13F74();
      v17 = *(v16 + 32);
      v18 = sub_232B26B10(v17);

      v19 = 0;
      v91 = MEMORY[0x277D84F90];
      while (v18 != v19)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2383922C0](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        if (__OFADD__(v19, 1))
        {
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
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v21 = *a1;
        sub_232B13F74();
        v22 = *(v20 + v21);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = *(v91 + 16);
          sub_232BA57A8();
          sub_232B36FE4();
          v91 = v25;
        }

        v23 = *(v91 + 16);
        if (v23 >= *(v91 + 24) >> 1)
        {
          sub_232B36FE4();
          v91 = v26;
        }

        *(v91 + 16) = v23 + 1;
        *(v91 + 8 * v23 + 32) = v22;
        ++v19;
      }

      v27 = 0;
      v85 = v91 + 32;
      v86 = *(v91 + 16);
      v28 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v27 == v86)
        {

          v14 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = *(v84 + 16);
            sub_232BA57A8();
            sub_232B36FE4();
            v14 = v51;
          }

          v4 = v79;
          a1 = v80;
          v49 = *(v14 + 16);
          if (v49 >= *(v14 + 24) >> 1)
          {
            sub_232B36FE4();
            v14 = v52;
          }

          *(v14 + 16) = v49 + 1;
          *(v14 + 8 * v49 + 32) = v28;
          v11 = v78;
          v9 = v82;
          v13 = v83;
          goto LABEL_2;
        }

        if (v27 >= *(v91 + 16))
        {
          goto LABEL_100;
        }

        v29 = *(v85 + 8 * v27);
        v30 = v29 >> 62;
        if (v29 >> 62)
        {
          if (v29 < 0)
          {
            v48 = *(v85 + 8 * v27);
          }

          v31 = sub_232CEA610();
        }

        else
        {
          v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = v28 >> 62;
        if (v28 >> 62)
        {
          v33 = sub_232CEA610();
        }

        else
        {
          v33 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = v33 + v31;
        if (__OFADD__(v33, v31))
        {
          goto LABEL_101;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v32)
          {
            v35 = v28 & 0xFFFFFFFFFFFFFF8;
            if (v34 > *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_33:
              v36 = *(v35 + 16);
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else if (!v32)
        {
          v35 = v28 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_33;
        }

        sub_232CEA610();
LABEL_35:
        v28 = sub_232CEA540();
        v35 = v28 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
        v37 = *(v35 + 16);
        v38 = *(v35 + 24);
        if (v30)
        {
          v39 = sub_232CEA610();
        }

        else
        {
          v39 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v27;
        if (v39)
        {
          if (((v38 >> 1) - v37) < v31)
          {
            goto LABEL_103;
          }

          v40 = v35 + 8 * v37 + 32;
          v88 = v27;
          if (v30)
          {
            if (v39 < 1)
            {
              goto LABEL_105;
            }

            sub_232C49F60();
            for (i = 0; i != v39; ++i)
            {
              sub_232B124A8(&qword_27DDC6AF0, &qword_232CF6E70);
              v42 = sub_232B4CFEC(v93, i, v29);
              v44 = *v43;
              v42(v93, 0);
              *(v40 + 8 * i) = v44;
            }
          }

          else
          {
            sub_232C49F1C();
            swift_arrayInitWithCopy();
          }

          v27 = v88;
          if (v31 > 0)
          {
            v45 = *(v35 + 16);
            v46 = __OFADD__(v45, v31);
            v47 = v45 + v31;
            if (v46)
            {
              goto LABEL_104;
            }

            *(v35 + 16) = v47;
          }
        }

        else
        {

          if (v31 > 0)
          {
            goto LABEL_102;
          }
        }

        continue;
      }
    }
  }

  v53 = 0;
  v92 = *(v14 + 16);
  v54 = MEMORY[0x277D84F90];
  v90 = v14 + 32;
  while (1)
  {
    if (v53 == v92)
    {

      return;
    }

    if (v53 >= *(v14 + 16))
    {
      goto LABEL_107;
    }

    v55 = *(v90 + 8 * v53);
    if (v55 >> 62)
    {
      if (v55 < 0)
      {
        v77 = *(v90 + 8 * v53);
      }

      v56 = sub_232CEA610();
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v54 >> 62;
    v58 = v54 >> 62 ? sub_232CEA610() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v58 + v56;
    if (__OFADD__(v58, v56))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v57)
      {
LABEL_75:
        sub_232CEA610();
      }

      else
      {
        v60 = v54 & 0xFFFFFFFFFFFFFF8;
LABEL_74:
        v61 = *(v60 + 16);
      }

      v54 = sub_232CEA540();
      v60 = v54 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_77;
    }

    if (v57)
    {
      goto LABEL_75;
    }

    v60 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v59 > *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_74;
    }

LABEL_77:
    ++v53;
    v62 = *(v60 + 16);
    v63 = (*(v60 + 24) >> 1) - v62;
    v64 = v60 + 8 * v62;
    if (v55 >> 62)
    {
      v66 = sub_232CEA610();
      if (v66)
      {
        v67 = v66;
        v89 = sub_232CEA610();
        if (v63 < v89)
        {
          goto LABEL_112;
        }

        if (v67 < 1)
        {
          goto LABEL_113;
        }

        v87 = v53;
        v68 = v64 + 32;
        sub_232C49F60();
        for (j = 0; j != v67; ++j)
        {
          v70 = sub_232C4A3F4();
          sub_232B124A8(v70, v71);
          v72 = sub_232B4CFEC(v93, j, v55);
          v74 = *v73;
          v72(v93, 0);
          *(v68 + 8 * j) = v74;
        }

        v14 = v84;
        v53 = v87;
        v65 = v89;
        goto LABEL_87;
      }

LABEL_91:

      if (v56 > 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v65 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_91;
      }

      if (v63 < v65)
      {
        goto LABEL_111;
      }

      sub_232C49F1C();
      swift_arrayInitWithCopy();
LABEL_87:

      if (v65 < v56)
      {
        goto LABEL_109;
      }

      if (v65 > 0)
      {
        v75 = *(v60 + 16);
        v46 = __OFADD__(v75, v65);
        v76 = v75 + v65;
        if (v46)
        {
          goto LABEL_110;
        }

        *(v60 + 16) = v76;
      }
    }
  }

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
}

void *sub_232C46C20()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t sub_232C46C70()
{
  sub_232C46C20();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void *sub_232C46CC8()
{
  type metadata accessor for PoemMessageThread();
  sub_232B41C8C();
  v0[2] = sub_232CE9C60();
  sub_232B41C8C();
  sub_232C4A3E8();
  v0[3] = sub_232CE9C60();
  sub_232B41C8C();
  sub_232C4A3E8();
  v0[4] = sub_232CE9C60();
  sub_232B41C8C();
  sub_232C4A3E8();
  v0[5] = sub_232CE9C60();
  sub_232B41C8C();
  v0[6] = sub_232CE9C60();
  sub_232B41C8C();
  v0[7] = sub_232CE9C60();
  sub_232B124A8(&qword_27DDC8090, &qword_232CFE0D8);
  sub_232B41C8C();
  v0[8] = sub_232CE9C60();
  return v0;
}

char *sub_232C46DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v87 = a2;
  v88 = a3;
  v86 = sub_232CE8C00();
  v7 = sub_232B48F0C(v86);
  v79 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v78 = v12 - v11;
  v13 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  v19 = sub_232CE8D10();
  v20 = sub_232B48F0C(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_232C4A13C();
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  *(v3 + 5) = 0xE000000000000000;
  *(v3 + 6) = 0;
  *(v3 + 7) = 0xE000000000000000;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0xE000000000000000;
  v28 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  sub_232CE8D00();
  v29 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_path];
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v77 = v29;
  v30 = &v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type];
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v84 = v30;
  v31 = MEMORY[0x277D84F90];
  v80 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender] = MEMORY[0x277D84F90];
  v81 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver] = v31;
  v82 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses] = v31;
  v83 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses] = v31;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions] = v31;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions] = v31;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions] = v31;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions] = v31;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions] = v31;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions] = v31;
  v32 = sub_232C207F8([a1 attributeSet], &selRef_contentSnippet);
  if (v33)
  {
    v34 = *(v3 + 7);
    *(v3 + 6) = v32;
    *(v3 + 7) = v33;
  }

  v35 = sub_232C207F8([a1 attributeSet], &selRef_uniqueIdentifier);
  if (v36)
  {
    v37 = *(v3 + 5);
    *(v3 + 4) = v35;
    *(v3 + 5) = v36;
  }

  v38 = [a1 attributeSet];
  v39 = [v38 contentCreationDate];

  if (v39)
  {
    sub_232CE8CF0();

    (*(v22 + 32))(v27, v4, v19);
    sub_232B207D4();
    (*(v22 + 40))(&v5[v28], v27, v19);
    swift_endAccess();
  }

  v40 = sub_232C4A2E4();
  v41 = sub_232C207F8(v40, &selRef_filename);
  if (v42)
  {
    v43 = *(v5 + 9);
    *(v5 + 8) = v41;
    *(v5 + 9) = v42;
  }

  v44 = sub_232C4A2E4();
  v45 = [v44 contentURL];

  v46 = v86;
  if (v45)
  {
    v47 = v85;
    sub_232CE8BB0();

    v48 = 0;
  }

  else
  {
    v48 = 1;
    v47 = v85;
  }

  sub_232B12504(v47, v48, 1, v46);
  v49 = sub_232C4A3F4();
  sub_232C4A008(v49, v50);
  if (sub_232B12480(v18, 1, v46))
  {
    sub_232B13790(v18, &qword_27DDC6AD8, &unk_232CF82F0);
  }

  else
  {
    v51 = v79;
    v52 = v78;
    (*(v79 + 16))(v78, v18, v46);
    sub_232B13790(v18, &qword_27DDC6AD8, &unk_232CF82F0);
    v53 = sub_232CE8B60();
    v55 = v54;
    (*(v51 + 8))(v52, v46);
    v56 = v77;
    v57 = v77[1];
    *v77 = v53;
    v56[1] = v55;
  }

  v58 = sub_232C4A2E4();
  v59 = sub_232C49EB0(v58, &selRef_authorNames);
  if (v59)
  {
    sub_232C4A278(v59);
  }

  v60 = sub_232C4A2E4();
  v61 = sub_232C49EB0(v60, &selRef_recipientNames);
  if (v61)
  {
    sub_232C4A278(v61);
  }

  v62 = sub_232C4A2E4();
  v63 = sub_232C49EB0(v62, &selRef_authorAddresses);
  if (v63)
  {
    sub_232C4A278(v63);
  }

  v64 = sub_232C4A2E4();
  v65 = sub_232C49EB0(v64, &selRef_recipientAddresses);
  if (v65)
  {
    sub_232C4A278(v65);
  }

  v66 = sub_232C4A2E4();
  v67 = sub_232C207F8(v66, &selRef_contentType);
  if (v68)
  {
    v69 = v84;
    v70 = v84[1];
    *v84 = v67;
    v69[1] = v68;
  }

  v71 = sub_232C4A2E4();
  v72 = [v71 attributeDictionary];

  v73 = sub_232CE9C40();
  v89 = v87;
  v90 = v88;
  sub_232CEA490();
  sub_232B1E34C(v91, v73);

  sub_232B1FA60(v91);
  if (v93)
  {
    if (swift_dynamicCast())
    {
      v74 = v90;
      v75 = *(v5 + 3);
      *(v5 + 2) = v89;
      *(v5 + 3) = v74;
    }
  }

  else
  {
    sub_232B13790(v92, &qword_27DDC68C8, &qword_232CF6210);
  }

  return v5;
}

void sub_232C4743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_232C4A420();
  v52 = v28;
  v53 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  *(v27 + 2) = 0;
  *(v27 + 3) = 0xE000000000000000;
  *(v27 + 4) = 0;
  *(v27 + 5) = 0xE000000000000000;
  *(v27 + 6) = 0;
  *(v27 + 7) = 0xE000000000000000;
  *(v27 + 8) = 0;
  *(v27 + 9) = 0xE000000000000000;
  v42 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  sub_232CE8D00();
  v43 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_path];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  v44 = &v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender] = MEMORY[0x277D84F90];
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions] = v45;
  *&v27[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions] = v45;
  v46 = *(v27 + 3);
  *(v27 + 2) = v41;
  *(v27 + 3) = v39;

  v47 = *(v27 + 5);
  *(v27 + 4) = v37;
  *(v27 + 5) = v35;

  sub_232B207D4();
  v48 = sub_232CE8D10();
  sub_232B13F24(v48);
  (*(v49 + 40))(&v27[v42], v33);
  swift_endAccess();
  v50 = *(v44 + 1);
  *v44 = v31;
  *(v44 + 1) = v52;

  v51 = *(v27 + 7);
  *(v27 + 6) = v53;
  *(v27 + 7) = a27;

  sub_232C4A43C();
}

BOOL sub_232C475D8(double a1)
{
  v2 = v1;
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v10 = sub_232CE8D10();
  v11 = sub_232B48F0C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  if (a1 != 0.0)
  {
    v24 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    sub_232B13F74();
    (*(v13 + 16))(v23, v2 + v24, v10);
    sub_232CE8D00();
    sub_232CE8CC0();
    v25 = *(v13 + 8);
    v25(v17, v10);
    v26 = sub_232CE8CE0();
    v25(v20, v10);
    v25(v23, v10);
    if ((v26 & 1) == 0)
    {
      sub_232CE9A20();
      v31 = sub_232CE9A00();
      v32 = sub_232CEA1A0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_232B02000, v31, v32, "Ignoring message for Poem", v33, 2u);
        MEMORY[0x238393870](v33, -1, -1);
      }

      v34 = *(v7 + 8);
      v35 = sub_232B5A008();
      v36(v35);
      return 0;
    }
  }

  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  sub_232C4A258();
  if (!v29)
  {
    return 0;
  }

  return sub_232C47A50() || sub_232C478A0();
}

BOOL sub_232C478A0()
{
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC8148, &qword_232CFE4C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_232C4A478();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232C4A13C();
  MEMORY[0x28223BE20](v10);
  v11 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type);
  v12 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type + 8);

  sub_232BA6074();
  sub_232CE9690();
  if (sub_232B12480(v0, 1, v4) == 1)
  {
    sub_232B13790(v0, &qword_27DDC8148, &qword_232CFE4C8);
  }

  else
  {
    v13 = sub_232C4A34C();
    v14(v13);
    sub_232CE9650();
    v15 = sub_232CE9670();
    v16 = *(v7 + 8);
    v17 = sub_232BAE188();
    v16(v17);
    v18 = sub_232C4A1F4();
    v16(v18);
    if (v15)
    {
      v19 = *(v1 + 64);
      v20 = *(v1 + 72);
      sub_232C4A258();
      return v21 != 0;
    }
  }

  return 0;
}

BOOL sub_232C47A50()
{
  v1 = v0;
  v2 = sub_232B124A8(&qword_27DDC8148, &qword_232CFE4C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_232C4A478();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232C4A13C();
  MEMORY[0x28223BE20](v10);
  v11 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type);
  v12 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type + 8);

  sub_232BA6074();
  sub_232CE9690();
  if (sub_232B12480(v0, 1, v4) == 1)
  {
    sub_232B13790(v0, &qword_27DDC8148, &qword_232CFE4C8);
  }

  else
  {
    v13 = sub_232C4A34C();
    v14(v13);
    sub_232CE9660();
    v15 = sub_232CE9670();
    v16 = *(v7 + 8);
    v17 = sub_232BAE188();
    v16(v17);
    v18 = sub_232C4A1F4();
    v16(v18);
    if (v15)
    {
      v19 = *(v1 + 48);
      v20 = *(v1 + 56);
      sub_232C4A258();
      return v21 != 0;
    }
  }

  return 0;
}

void sub_232C47C00(uint64_t a1)
{
  v5 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  sub_232B26B10(a1);
  sub_232C4A414();
  v6 = a1 & 0xC000000000000001;
  v7 = &selRef_initWithFirst_second_;
  while (v1 != v2)
  {
    if (v6)
    {
      v18 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v18);
    }

    else
    {
      sub_232C4A294();
      if (v8)
      {
        goto LABEL_73;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v9)
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
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
      return;
    }

    if (sub_232C4A550() == 3 && [v3 v7[225]] == 1)
    {
      v10 = sub_232CEA560();
      sub_232C4A158(v10, v11, v12, v13, v14, v15, v16, v17, v74, v75);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
      v7 = &selRef_initWithFirst_second_;
    }

    else
    {
    }

    ++v2;
  }

  v19 = v74;
  sub_232C4A1D8();
  sub_232C5E360(v75);
  v20 = &selRef_initWithFirst_second_;
  swift_endAccess();
  v21 = 0;
  v76 = v5;
  while (v1 != v21)
  {
    if (v6)
    {
      v30 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v30);
    }

    else
    {
      sub_232C4A294();
      if (v8)
      {
        goto LABEL_75;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v9)
    {
      goto LABEL_74;
    }

    if (sub_232C4A550() == 3 && ![v19 v20[225]])
    {
      v22 = sub_232CEA560();
      sub_232C4A158(v22, v23, v24, v25, v26, v27, v28, v29, v74, v76);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
      v20 = &selRef_initWithFirst_second_;
    }

    else
    {
    }

    ++v21;
  }

  v31 = v74;
  sub_232C4A1D8();
  sub_232C5E360(v76);
  swift_endAccess();
  v32 = 0;
  v77 = v5;
  while (v1 != v32)
  {
    if (v6)
    {
      v41 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v41);
    }

    else
    {
      sub_232C4A294();
      if (v8)
      {
        goto LABEL_77;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v9)
    {
      goto LABEL_76;
    }

    if (sub_232C4A550() == 1 && ([v31 isCoref] & 1) == 0)
    {
      v33 = sub_232CEA560();
      sub_232C4A158(v33, v34, v35, v36, v37, v38, v39, v40, v74, v77);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    ++v32;
  }

  v42 = v74;
  sub_232C4A1D8();
  sub_232C5E360(v77);
  swift_endAccess();
  v43 = 0;
  v78 = MEMORY[0x277D84F90];
  while (v1 != v43)
  {
    if (v6)
    {
      v52 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v52);
    }

    else
    {
      sub_232C4A294();
      if (v8)
      {
        goto LABEL_79;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v9)
    {
      goto LABEL_78;
    }

    if (sub_232C4A550() == 2 && ([v42 isCoref] & 1) == 0)
    {
      v44 = sub_232CEA560();
      sub_232C4A158(v44, v45, v46, v47, v48, v49, v50, v51, v74, v78);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    ++v43;
  }

  sub_232C4A1D8();
  sub_232C5E360(v78);
  swift_endAccess();
  v53 = 0;
  v79 = MEMORY[0x277D84F90];
  v54 = &selRef_initWithFirst_second_;
  while (v1 != v53)
  {
    if (v6)
    {
      v63 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v63);
    }

    else
    {
      sub_232C4A294();
      if (v8)
      {
        goto LABEL_81;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v9)
    {
      goto LABEL_80;
    }

    if ([v42 v54[225]] == 2)
    {
      v55 = sub_232CEA560();
      sub_232C4A158(v55, v56, v57, v58, v59, v60, v61, v62, v74, v79);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
      v54 = &selRef_initWithFirst_second_;
    }

    else
    {
    }

    ++v53;
  }

  sub_232C4A1D8();
  sub_232C5E360(v79);
  swift_endAccess();
  v64 = 0;
  v80 = MEMORY[0x277D84F90];
  while (v1 != v64)
  {
    if (v6)
    {
      v73 = sub_232C4A1F4();
      MEMORY[0x2383922C0](v73);
    }

    else
    {
      sub_232C4A294();
      if (v8)
      {
        goto LABEL_83;
      }

      sub_232C4A2FC();
    }

    sub_232C4A26C();
    if (v9)
    {
      goto LABEL_82;
    }

    if ([v42 isCoref])
    {
      v65 = sub_232CEA560();
      sub_232C4A158(v65, v66, v67, v68, v69, v70, v71, v72, v74, v80);
      sub_232C40B5C();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    else
    {
    }

    ++v64;
  }

  sub_232C4A1D8();
  sub_232C5E360(v80);
  swift_endAccess();
}

uint64_t sub_232C480A8()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions;
  sub_232B13F74();
  v2 = sub_232B26B10(*(v0 + v1));
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions;
  sub_232B13F74();
  result = sub_232B26B10(*(v0 + v3));
  v5 = __OFADD__(v2, result);
  v6 = v2 + result;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions;
  sub_232B13F74();
  result = sub_232B26B10(*(v0 + v7));
  v5 = __OFADD__(v6, result);
  v8 = v6 + result;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions;
  sub_232B13F74();
  result = sub_232B26B10(*(v0 + v9));
  v5 = __OFADD__(v8, result);
  v10 = v8 + result;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
  sub_232C4A23C();
  result = sub_232B26B10(*(v0 + v11));
  if (!__OFADD__(v10, result))
  {
    return v10 + result > 0;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_232C48198()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  v6 = sub_232CE8D10();
  sub_232B13F24(v6);
  (*(v7 + 8))(&v0[v5]);
  v8 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_path + 8];

  v9 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_type + 8];

  v10 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender];

  v11 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver];

  v12 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses];

  v13 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses];

  v14 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_madExtractions];

  v15 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions];

  v16 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions];

  v17 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions];

  v18 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions];

  v19 = *&v0[OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions];

  return v0;
}

uint64_t sub_232C482D8()
{
  sub_232C48198();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PoemMessage()
{
  result = qword_27DDC8138;
  if (!qword_27DDC8138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232C48384()
{
  result = sub_232CE8D10();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_232C4844C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_232C4848C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232C484F0(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_232CE9FB0();
    sub_232C4A37C();
    sub_232B36BB0();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_232B36BB0();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      sub_232C4A2D4();
      v17 = sub_232CE9F80();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      sub_232C4A2D4();
      v16 = sub_232CE9E70();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_232CE9FB0();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_232BA57A8();
      sub_232B36BB0();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_232B36BB0();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    sub_232C4A2D4();
    v16 = sub_232CE9E70();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_232CE9FB0();
        sub_232C4A37C();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_232BA57A8();
      sub_232B36BB0();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}