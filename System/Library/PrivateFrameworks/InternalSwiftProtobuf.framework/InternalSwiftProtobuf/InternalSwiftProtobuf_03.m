uint64_t sub_1AC47E5E0(uint64_t a1, uint64_t a2)
{
  v485 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    goto LABEL_106;
  }

  if (!v2 || a1 == a2)
  {
LABEL_99:
    result = 1;
    goto LABEL_107;
  }

  v329 = 0;
  v3 = (a2 + 72);
  v429 = (a1 + 72);
  while (1)
  {
    if (!v2)
    {
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
LABEL_124:
      __break(1u);
    }

    v4 = *(v429 - 5);
    v5 = *(v429 - 4);
    v6 = *(v429 - 16);
    v466 = *v429;
    v473 = *(v429 - 3);
    v7 = *(v3 - 5);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v10 = *(v3 - 16);
    v11 = *v3;
    v476 = *(v3 - 1);
    v406 = v4;
    v418 = v7;
    v440 = *(v429 - 1);
    v384 = v8;
    v395 = v9;
    HIDWORD(v452) = v10;
    v362 = v2;
    HIDWORD(v373) = v6;
    if ((~v473 & 0x3000000000000000) == 0 && v6 == 255)
    {
      break;
    }

    *&__s1 = *(v429 - 5);
    *(&__s1 + 1) = v5;
    v483 = v473;
    v484 = v6;
    if ((~v9 & 0x3000000000000000) == 0 && v10 == 255)
    {
      v269 = v8;
      v270 = v473;
      sub_1AC48541C(v4, v5, v473, v6);
      v26 = v466;
      sub_1AC4578F4(v440, v466);
      v271 = OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_113(v271, v272);
      v281 = OUTLINED_FUNCTION_66(v273, v274, v275, v276, v277, v278, v279, v280, v329, v340, v351, v362, v373, v384, v395, v406, v418, v429, v440, v452, v466, v473, v476);
      sub_1AC4578F4(v281, v282);
      v283 = OUTLINED_FUNCTION_48();
      sub_1AC48541C(v283, v284, v270, v6);
      OUTLINED_FUNCTION_113(v419, v269);
      v285 = OUTLINED_FUNCTION_48();
      sub_1AC48541C(v285, v286, v270, v6);
      v287 = OUTLINED_FUNCTION_48();
      sub_1AC48550C(v287, v288, v270, v289);
      goto LABEL_103;
    }

    v27 = v7;
    *__s2 = v7;
    v479 = v8;
    v480 = v9;
    v481 = v10 & 1;
    v28 = v9;
    v29 = v4;
    sub_1AC48541C(v4, v5, v473, v6);
    v30 = v473;
    v26 = v466;
    sub_1AC4578F4(v440, v466);
    sub_1AC48541C(v27, v8, v28, v10);
    v39 = OUTLINED_FUNCTION_66(v31, v32, v33, v34, v35, v36, v37, v38, v329, v340, v351, v362, v373, v8, v395, v406, v418, v429, v440, v452, v466, v473, v476);
    sub_1AC4578F4(v39, v40);
    v22 = v5;
    sub_1AC48541C(v29, v5, v30, SBYTE4(v373));
    sub_1AC48541C(v27, v8, v28, SBYTE4(v452));
    v41 = OUTLINED_FUNCTION_97();
    sub_1AC48541C(v41, v42, v43, v44);
    v25 = v441;
    LOBYTE(v28) = static Google_Protobuf_Value.OneOf_Kind.== infix(_:_:)(&__s1, __s2);
    sub_1AC48550C(*__s2, v479, v480, v481);
    sub_1AC48550C(__s1, *(&__s1 + 1), v483, v484);
    v45 = OUTLINED_FUNCTION_97();
    sub_1AC4854E8(v45, v46, v47, v48);
    if ((v28 & 1) == 0)
    {
      LOBYTE(v6) = BYTE4(v373);
      goto LABEL_105;
    }

LABEL_14:
    v49 = v26 >> 62;
    v50 = HIDWORD(v25);
    v51 = v11 >> 62;
    v52 = v25;
    if (v23)
    {
      v66 = 0;
      v67 = v22;
      if (v25)
      {
        v68 = v419;
      }

      else
      {
        v53 = v26 == 0xC000000000000000 && v11 >> 62 == 3;
        v68 = v419;
        if (v53)
        {
          v66 = 0;
          if (!v476 && v11 == 0xC000000000000000)
          {
            sub_1AC4854E8(v419, v385, v396, SBYTE4(v452));
            v54 = OUTLINED_FUNCTION_15_1();
            v56 = sub_1AC4513F8(v54, v55);
            OUTLINED_FUNCTION_104(v56, v57, v58, v59, v60, v61, v62, v63, v330, v341, v352, v363, v373, SBYTE4(v373), v385, v396, v407, v419, v430, v441, v452, v467, v473);
            v64 = OUTLINED_FUNCTION_15_1();
LABEL_54:
            sub_1AC4513F8(v64, v65);
            goto LABEL_98;
          }
        }
      }
    }

    else
    {
      v66 = 0;
      v67 = v22;
      v68 = v419;
      switch(v49)
      {
        case 0uLL:
          v66 = BYTE6(v26);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v25), v25))
          {
            goto LABEL_111;
          }

          v66 = HIDWORD(v25) - v25;
          break;
        case 2uLL:
          v70 = *(v25 + 16);
          v69 = *(v25 + 24);
          v71 = __OFSUB__(v69, v70);
          v66 = v69 - v70;
          if (!v71)
          {
            break;
          }

          goto LABEL_112;
        case 3uLL:
          break;
        default:
          goto LABEL_129;
      }
    }

    switch(v51)
    {
      case 1uLL:
        LODWORD(v72) = HIDWORD(v476) - v476;
        if (__OFSUB__(HIDWORD(v476), v476))
        {
          goto LABEL_110;
        }

        v72 = v72;
LABEL_42:
        if (v66 != v72)
        {
LABEL_100:
          LOBYTE(v6) = BYTE4(v373);
          goto LABEL_105;
        }

        if (v66 < 1)
        {
LABEL_53:
          sub_1AC4854E8(v68, v385, v396, SBYTE4(v452));
          v106 = OUTLINED_FUNCTION_66(v98, v99, v100, v101, v102, v103, v104, v105, v330, v341, v352, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476);
          v108 = sub_1AC4513F8(v106, v107);
          OUTLINED_FUNCTION_104(v108, v109, v110, v111, v112, v113, v114, v115, v333, v344, v355, v366, v376, v383, v388, v399, v410, v422, v433, v444, v455, v470, v474);
          v64 = v25;
          v65 = v26;
          goto LABEL_54;
        }

        v340 = v67;
        v351 = v3;
        v75 = v476;
        v76 = v476 >> 32;
        v77 = v476 >> 8;
        v78 = v476 >> 16;
        v79 = v476 >> 24;
        v80 = v476 >> 40;
        v81 = HIWORD(v476);
        v82 = HIBYTE(v476);
        switch(v49)
        {
          case 1:
            if (v52 >> 32 < v52)
            {
              goto LABEL_113;
            }

            v156 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v156, v157);
            v158 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v158, v159);
            v160 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v160, v161);
            v162 = OUTLINED_FUNCTION_46();
            sub_1AC4578F4(v162, v163);
            sub_1AC4578F4(v52, v467);
            if (sub_1AC51EB78() && __OFSUB__(v52, sub_1AC51EBA8()))
            {
              goto LABEL_116;
            }

            v127 = v467;
            sub_1AC51EB98();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64(v164, v165, v166, v167, v168, v169, v170, v171, v330);
            v329 = (v52 >> 32) - v52;
            v172 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v172, v173);
            v174 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v174, v175);
            v140 = v441;
            goto LABEL_71;
          case 2:
            v117 = *(v52 + 16);
            v116 = *(v52 + 24);
            v118 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v118, v119);
            v120 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v120, v121);
            v122 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v122, v123);
            v124 = OUTLINED_FUNCTION_54();
            sub_1AC4578F4(v124, v125);
            sub_1AC4578F4(v52, v467);
            if (sub_1AC51EB78() && __OFSUB__(v117, sub_1AC51EBA8()))
            {
              goto LABEL_115;
            }

            v126 = v116 - v117;
            if (__OFSUB__(v116, v117))
            {
              goto LABEL_114;
            }

            v127 = v467;
            sub_1AC51EB98();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64(v128, v129, v130, v131, v132, v133, v134, v135, v330);
            v329 = v126;
            v136 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v136, v137);
            v138 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v138, v139);
            v140 = v52;
LABEL_71:
            sub_1AC4513F8(v140, v127);
            v176 = __s1;
            v177 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v177, v178);
            v179 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v179, v180);
            sub_1AC4854E8(v419, v385, v396, SBYTE4(v452));
            v181 = OUTLINED_FUNCTION_46();
            sub_1AC4513F8(v181, v182);
            v183 = v67;
            v184 = v407;
            v185 = BYTE4(v373);
            goto LABEL_97;
          case 3:
            *(&__s1 + 6) = 0;
            *&__s1 = 0;
            if (v51 == 2)
            {
              v186 = *(v476 + 16);
              v187 = *(v476 + 24);
              v188 = sub_1AC4578F4(v476, v11);
              OUTLINED_FUNCTION_91(v188, v189, v190, v191, v192, v193, v194, v195, v330, v340, v351, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467);
              v196 = sub_1AC51EB78();
              if (v196)
              {
                v197 = sub_1AC51EBA8();
                if (__OFSUB__(v186, v197))
                {
                  goto LABEL_122;
                }

                v196 += v186 - v197;
              }

              v71 = __OFSUB__(v187, v186);
              v198 = v187 - v186;
              if (v71)
              {
                goto LABEL_120;
              }

              v153 = v11;
              v199 = sub_1AC51EB98();
              if (!v196)
              {
                goto LABEL_127;
              }

              if (v199 >= v198)
              {
                v154 = v198;
              }

              else
              {
                v154 = v199;
              }

              v155 = v196;
              goto LABEL_81;
            }

            if (v51 == 1)
            {
              if (v76 < v476)
              {
                goto LABEL_117;
              }

              v141 = OUTLINED_FUNCTION_66(v82, v81, BYTE6(v11), v80, v79, v78, v77, v24, v330, v67, v351, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476);
              v143 = sub_1AC4578F4(v141, v142);
              OUTLINED_FUNCTION_91(v143, v144, v145, v146, v147, v148, v149, v150, v334, v345, v356, v367, v377, v389, v400, v411, v423, v434, v445, v456, v471);
              v151 = sub_1AC51EB78();
              if (v151)
              {
                v152 = sub_1AC51EBA8();
                if (__OFSUB__(v75, v152))
                {
                  goto LABEL_124;
                }

                v151 += v75 - v152;
              }

              v153 = v11;
              sub_1AC51EB98();
              if (!v151)
              {
                goto LABEL_128;
              }

              OUTLINED_FUNCTION_40();
              v155 = v151;
LABEL_81:
              v200 = memcmp(&__s1, v155, v154);
              OUTLINED_FUNCTION_107(v200, v201, v202, v203, v204, v205, v206, v207, v335, v346, v357, v368, v378, v390, v401, v412, v424, v435, v446, v457, v472);
              v208 = OUTLINED_FUNCTION_54();
              v210 = sub_1AC4513F8(v208, v209);
              OUTLINED_FUNCTION_38(v210, v211, v212, v213, v214, v215, v216, v217, v336, v347, v358, v369, v379, v391, v402, v413, v425, v436, v447, v458, v462);
              v183 = v340;
              goto LABEL_84;
            }

            v226 = OUTLINED_FUNCTION_39(SHIBYTE(v476), SBYTE6(v476), BYTE6(v11), SBYTE5(v476), SBYTE3(v476), SBYTE2(v476), SBYTE1(v476), v24, v330, v67, v351, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476, v477, __s2[0], __s2[1], __s2[2], __s2[3], __s2[4], __s2[5], __s2[6], __s2[7], v479, SBYTE1(v479), SBYTE2(v479), SBYTE3(v479), SBYTE4(v479), SBYTE5(v479));
            v153 = v226;
            OUTLINED_FUNCTION_38(v226, v227, v228, v229, v230, v231, v232, v233, v338, v349, v360, v371, v381, v393, v404, v416, v427, v438, v449, v460, v464);
            v183 = v340;
LABEL_84:
            v176 = v153 == 0;
LABEL_96:
            v185 = BYTE4(v373);
            v184 = v414;
LABEL_97:
            sub_1AC4854E8(v184, v183, v473, v185);
            v266 = OUTLINED_FUNCTION_10_1();
            sub_1AC4513F8(v266, v267);
            v3 = v351;
            if (!v176)
            {
              goto LABEL_106;
            }

            break;
          default:
            LOWORD(__s1) = v52;
            BYTE2(__s1) = BYTE2(v52);
            BYTE3(__s1) = BYTE3(v52);
            BYTE4(__s1) = v50;
            BYTE5(__s1) = BYTE5(v52);
            BYTE6(__s1) = BYTE6(v52);
            BYTE7(__s1) = HIBYTE(v52);
            DWORD2(__s1) = v467;
            WORD6(__s1) = WORD2(v467);
            if (v51)
            {
              if (v51 == 1)
              {
                if (v76 < v476)
                {
                  goto LABEL_118;
                }

                v83 = OUTLINED_FUNCTION_66(v82, v81, BYTE6(v11), v80, v79, v78, v77, v467, v330, v67, v351, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476);
                v85 = sub_1AC4578F4(v83, v84);
                OUTLINED_FUNCTION_91(v85, v86, v87, v88, v89, v90, v91, v92, v331, v342, v353, v364, v374, v386, v397, v408, v420, v431, v442, v453, v468);
                v93 = sub_1AC51EB78();
                if (v93)
                {
                  v94 = sub_1AC51EBA8();
                  if (__OFSUB__(v75, v94))
                  {
                    goto LABEL_123;
                  }

                  v93 += v75 - v94;
                }

                v95 = v11;
                sub_1AC51EB98();
                if (!v93)
                {
                  __break(1u);
LABEL_126:
                  __break(1u);
LABEL_127:
                  __break(1u);
LABEL_128:
                  __break(1u);
LABEL_129:
                  JUMPOUT(0);
                }

                OUTLINED_FUNCTION_40();
                v97 = v93;
              }

              else
              {
                v234 = *(v476 + 16);
                v235 = *(v476 + 24);
                v236 = sub_1AC4578F4(v476, v11);
                OUTLINED_FUNCTION_91(v236, v237, v238, v239, v240, v241, v242, v243, v330, v340, v351, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467);
                v244 = sub_1AC51EB78();
                if (v244)
                {
                  v245 = sub_1AC51EBA8();
                  if (__OFSUB__(v234, v245))
                  {
                    goto LABEL_121;
                  }

                  v244 += v234 - v245;
                }

                v71 = __OFSUB__(v235, v234);
                v246 = v235 - v234;
                if (v71)
                {
                  goto LABEL_119;
                }

                v95 = v11;
                v247 = sub_1AC51EB98();
                if (!v244)
                {
                  goto LABEL_126;
                }

                if (v247 >= v246)
                {
                  v96 = v246;
                }

                else
                {
                  v96 = v247;
                }

                v97 = v244;
              }

              v248 = memcmp(&__s1, v97, v96);
              OUTLINED_FUNCTION_107(v248, v249, v250, v251, v252, v253, v254, v255, v332, v343, v354, v365, v375, v387, v398, v409, v421, v432, v443, v454, v469);
              v256 = OUTLINED_FUNCTION_54();
              v258 = sub_1AC4513F8(v256, v257);
              OUTLINED_FUNCTION_38(v258, v259, v260, v261, v262, v263, v264, v265, v339, v350, v361, v372, v382, v394, v405, v417, v428, v439, v450, v461, v465);
            }

            else
            {
              v218 = OUTLINED_FUNCTION_39(SHIBYTE(v476), SBYTE6(v476), BYTE6(v11), SBYTE5(v476), SBYTE3(v476), SBYTE2(v476), SBYTE1(v476), v467, v330, v67, v351, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476, v477, __s2[0], __s2[1], __s2[2], __s2[3], __s2[4], __s2[5], __s2[6], __s2[7], v479, SBYTE1(v479), SBYTE2(v479), SBYTE3(v479), SBYTE4(v479), SBYTE5(v479));
              v95 = v218;
              OUTLINED_FUNCTION_38(v218, v219, v220, v221, v222, v223, v224, v225, v337, v348, v359, v370, v380, v392, v403, v415, v426, v437, v448, v459, v463);
            }

            v176 = v95 == 0;
            v183 = v340;
            goto LABEL_96;
        }

        break;
      case 2uLL:
        v74 = *(v476 + 16);
        v73 = *(v476 + 24);
        v71 = __OFSUB__(v73, v74);
        v72 = v73 - v74;
        if (!v71)
        {
          goto LABEL_42;
        }

        goto LABEL_109;
      case 3uLL:
        if (v66)
        {
          goto LABEL_100;
        }

        goto LABEL_53;
      default:
        v72 = BYTE6(v11);
        goto LABEL_42;
    }

LABEL_98:
    v429 = (v430 + 48);
    v3 += 6;
    v2 = v363 - 1;
    if (v363 == 1)
    {
      goto LABEL_99;
    }
  }

  v12 = ~v9 & 0x3000000000000000;
  v13 = *(v429 - 3);
  sub_1AC48541C(v4, v5, v473, 255);
  OUTLINED_FUNCTION_91(v14, v15, v16, v17, v18, v19, v20, v21, v329, v340, v3, v362, v373, v8, v395, v406, v418, v429, v440, v452, v466);
  if (!v12 && HIDWORD(v452) == 255)
  {
    OUTLINED_FUNCTION_113(v419, v385);
    sub_1AC4578F4(v476, v11);
    sub_1AC48541C(v407, v5, v473, 255);
    OUTLINED_FUNCTION_113(v419, v385);
    v22 = v5;
    sub_1AC4854E8(v407, v5, v473, 255);
    v25 = v441;
    v3 = v352;
    v26 = v467;
    goto LABEL_14;
  }

  sub_1AC48541C(v419, v385, v396, SBYTE4(v452));
  v298 = OUTLINED_FUNCTION_66(v290, v291, v292, v293, v294, v295, v296, v297, v330, v341, v352, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476);
  sub_1AC4578F4(v298, v299);
  LOBYTE(v6) = -1;
  v300 = OUTLINED_FUNCTION_48();
  sub_1AC48541C(v300, v301, v13, 255);
  v302 = OUTLINED_FUNCTION_58();
  sub_1AC48541C(v302, v303, v304, v305);
  v26 = v467;
LABEL_103:
  v306 = OUTLINED_FUNCTION_48();
  sub_1AC4854E8(v306, v307, v473, v6);
  v308 = OUTLINED_FUNCTION_58();
  sub_1AC4854E8(v308, v309, v310, v311);
LABEL_105:
  v312 = OUTLINED_FUNCTION_58();
  sub_1AC4854E8(v312, v313, v314, v315);
  v324 = OUTLINED_FUNCTION_66(v316, v317, v318, v319, v320, v321, v322, v323, v330, v341, v352, v363, v373, v385, v396, v407, v419, v430, v441, v452, v467, v473, v476);
  sub_1AC4513F8(v324, v325);
  v326 = OUTLINED_FUNCTION_48();
  sub_1AC4854E8(v326, v327, v475, v6);
  sub_1AC4513F8(v451, v26);
LABEL_106:
  result = 0;
LABEL_107:
  v328 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC47F024(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_10_2(a1, a2);
  if (v8)
  {
    if (!v5 || v6 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      OUTLINED_FUNCTION_111(v22);
      OUTLINED_FUNCTION_111(__src);
      OUTLINED_FUNCTION_114(v23);
      OUTLINED_FUNCTION_114(v20);
      sub_1AC485C2C(v22, v19);
      sub_1AC485C2C(v23, v19);
      static Google_Protobuf_DescriptorProto.ExtensionRange.== infix(_:_:)();
      OUTLINED_FUNCTION_105(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], v19[12], v20[0]);
      sub_1AC485C88(v24);
      memcpy(__dst, __src, 0x67uLL);
      sub_1AC485C88(__dst);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v3 += 104;
      v2 += 104;
      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47F0F8(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_10_2(a1, a2);
  if (v7)
  {
    if (!v4 || v5 == v6)
    {
      return 1;
    }

    OUTLINED_FUNCTION_47();
    while (1)
    {
      memcpy(__dst, v2, 0x5EuLL);
      memcpy(v13, v2, sizeof(v13));
      memcpy(v15, v3, 0x5EuLL);
      memcpy(__src, v3, sizeof(__src));
      sub_1AC485B7C(__dst, v11);
      sub_1AC485B7C(v15, v11);
      static Google_Protobuf_OneofDescriptorProto.== infix(_:_:)();
      v9 = v8;
      memcpy(v16, __src, 0x5EuLL);
      sub_1AC485BD8(v16);
      memcpy(v17, v13, 0x5EuLL);
      sub_1AC485BD8(v17);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 96;
      v2 += 96;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1AC47F808(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Google_Protobuf_Api.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Api.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Api.methods.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_Api.options.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_Api.version.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Api.version.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void Google_Protobuf_Api.sourceContext.getter(void *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  v6 = 0xC000000000000000;
  v7 = 0xE000000000000000;
  if (v3)
  {
    v8 = v1[11];
  }

  else
  {
    v8 = 0;
  }

  if (v3)
  {
    v7 = v1[12];
    v9 = v1[13];
  }

  else
  {
    v9 = 0;
  }

  if (v3)
  {
    v6 = v1[14];
  }

  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v6;
  sub_1AC480274(v2, v3, v4, v5);
}

double sub_1AC480184@<D0>(uint64_t a1@<X8>)
{
  Google_Protobuf_Api.sourceContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 8) = v2;
  result = *&v5;
  *(a1 + 16) = v5;
  return result;
}

double sub_1AC4801C8(unint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5.n128_u64[0] = *a1;
  v5.n128_u64[1] = v1;
  v6 = v2;
  v7 = v3;

  sub_1AC4578F4(v2, v3);
  *&result = Google_Protobuf_Api.sourceContext.setter(&v5).n128_u64[0];
  return result;
}

__n128 Google_Protobuf_Api.sourceContext.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  sub_1AC4802C0(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
  result = v5;
  *(v1 + 88) = v5;
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  return result;
}

void sub_1AC480274(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1AC4578F4(a3, a4);
  }
}

void sub_1AC4802C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1AC4513F8(a3, a4);
  }
}

void (*Google_Protobuf_Api.sourceContext.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v1[11];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v1[12];
    v11 = v1[13];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v1[14];
  }

  *v3 = v10;
  v3[1] = v9;
  v3[2] = v11;
  v3[3] = v8;
  sub_1AC480274(v4, v5, v6, v7);
  return sub_1AC480398;
}

void sub_1AC480398(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = v4[11];
  v9 = v4[12];
  v10 = v4[13];
  v11 = v4[14];
  if (a2)
  {
    v12 = (*a1)[1];

    v13 = OUTLINED_FUNCTION_24();
    sub_1AC4578F4(v13, v14);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v15, v16, v17, v18);
    v4[11] = v6;
    v4[12] = v5;
    v4[13] = v7;
    v4[14] = v3;
    v19 = v2[1];
    v20 = v2[2];
    v21 = v2[3];

    v22 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    sub_1AC4802C0(v24, v25, v26, v27);
    v4[11] = v6;
    v4[12] = v5;
    v4[13] = v7;
    v4[14] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_Api.clearSourceContext()()
{
  sub_1AC4802C0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
}

uint64_t Google_Protobuf_Api.mixins.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void Google_Protobuf_Api.syntax.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_84_0(a1);
}

uint64_t Google_Protobuf_Api.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Google_Protobuf_Api.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 72), *(v1 + 80));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  return result;
}

double Google_Protobuf_Api.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = v1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = xmmword_1AC51F990;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t Google_Protobuf_Method.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Method.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Method.requestTypeURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Method.requestTypeURL.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_Method.responseTypeURL.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Method.responseTypeURL.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Google_Protobuf_Method.options.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

void Google_Protobuf_Method.syntax.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_84_0(a1);
}

uint64_t Google_Protobuf_Method.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t Google_Protobuf_Method.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  return result;
}

double Google_Protobuf_Method.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_Mixin.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Mixin.name.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Google_Protobuf_Mixin.root.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_44();
}

uint64_t Google_Protobuf_Mixin.root.setter()
{
  OUTLINED_FUNCTION_69();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Google_Protobuf_Mixin.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1AC4513F8(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

double Google_Protobuf_Mixin.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 32) = xmmword_1AC51F990;
  return result;
}

uint64_t static Google_Protobuf_Api._protobuf_nameMap.getter()
{
  if (qword_1EB557CD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557FE0);
}

uint64_t Google_Protobuf_Api.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    result = v6(v5, v4);
    if (v3 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v9 = *(v4 + 336);
        goto LABEL_9;
      case 2:
        v20 = OUTLINED_FUNCTION_7();
        sub_1AC480BB4(v20, v21, v22, v23);
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_7();
        sub_1AC480C34(v14, v15, v16, v17);
        break;
      case 4:
        v18 = *(v4 + 336);
LABEL_9:
        OUTLINED_FUNCTION_36_0();
        v19();
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC480CB4(v10, v11, v12, v13);
        break;
      case 6:
        v24 = OUTLINED_FUNCTION_7();
        sub_1AC480D34(v24, v25, v26, v27);
        break;
      case 7:
        v28 = OUTLINED_FUNCTION_7();
        sub_1AC480DB4(v28, v29, v30, v31);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC480BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847A4();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Method, v8, a3, a4);
}

uint64_t sub_1AC480C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 24, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC480CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4860B4();
  return v7(a2 + 88, &type metadata for Google_Protobuf_SourceContext, v8, a3, a4);
}

uint64_t sub_1AC480D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC48484C();
  return v7(a2 + 48, &type metadata for Google_Protobuf_Mixin, v8, a3, a4);
}

uint64_t sub_1AC480DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 56, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC480E34(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = v3[1];
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51EEB8();
  }

  if (!*(v3[2] + 16) || (sub_1AC50CFCC(), !v2))
  {
    v8 = v3[3];
    if (!*(v8 + 16) || (sub_1AC50C78C(v8, 3), !v2))
    {
      v9 = v3[5];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        MEMORY[0x1AC5B48A0](4);
        sub_1AC51EEB8();
      }

      sub_1AC4811B0(v3, a1);
      if (!v2)
      {
        if (*(v3[6] + 16))
        {
          sub_1AC50CE2C();
        }

        v11 = v3[7];
        if (v11)
        {
          v12 = *(v3 + 64);
          MEMORY[0x1AC5B48A0](7);
          v13 = 1;
          if (v11 == 2)
          {
            v13 = 2;
          }

          if (v12)
          {
            v14 = v13;
          }

          else
          {
            v14 = v11;
          }

          MEMORY[0x1AC5B48A0](v14);
        }

        sub_1AC4937B8(a1, v3[9], v3[10]);
      }
    }
  }
}

uint64_t Google_Protobuf_Api.traverse<A>(visitor:)()
{
  v4 = v1;
  OUTLINED_FUNCTION_51_1();
  v6 = v5;
  memcpy(__dst, v0, sizeof(__dst));
  OUTLINED_FUNCTION_29();
  if (!v7 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), result = v8(), (v4 = v1) == 0))
  {
    if (!*(__dst[2] + 16) || (v10 = *(v2 + 280), sub_1AC4847A4(), OUTLINED_FUNCTION_28(), result = v10(), (v4 = v1) == 0))
    {
      if (!*(__dst[3] + 16) || (v11 = *(v2 + 280), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), result = v11(), (v4 = v1) == 0))
      {
        OUTLINED_FUNCTION_29();
        if (!v12 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), result = v13(), (v4 = v1) == 0))
        {
          result = sub_1AC481280(__dst, v6, v3, v2);
          if (!v4)
          {
            if (*(__dst[6] + 16))
            {
              v14 = *(v2 + 280);
              sub_1AC48484C();
              OUTLINED_FUNCTION_28();
              v14();
            }

            if (__dst[7])
            {
              *&v20 = __dst[7];
              BYTE8(v20) = __dst[8];
              v15 = *(v2 + 128);
              sub_1AC4848A0();
              OUTLINED_FUNCTION_28();
              v15();
            }

            v22 = *&__dst[9];
            v20 = *&__dst[9];
            sub_1AC4848F4(&v22, &v19);
            OUTLINED_FUNCTION_36_0();
            UnknownStorage.traverse<A>(visitor:)(v16, v17, v18);
            return sub_1AC4513F8(v20, *(&v20 + 1));
          }
        }
      }
    }
  }

  return result;
}

void *sub_1AC4811B0(void *result, void *a2)
{
  v3 = result[12];
  if (v3)
  {
    v5 = result[11];
    v6 = result[13];
    v7 = result[14];
    MEMORY[0x1AC5B48A0](5);
    memcpy(__dst, a2, sizeof(__dst));

    sub_1AC4578F4(v6, v7);
    sub_1AC4F5320(__dst, v5, v3, v6, v7);
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    sub_1AC4802C0(v5, v3, v6, v7);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC481280(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 96);
  if (v4)
  {
    v7 = *(result + 88);
    v11 = *(result + 104);
    v10[0] = v7;
    v10[1] = v4;
    v8 = *(a4 + 136);
    v9 = sub_1AC4860B4();
    return v8(v10, 5, &type metadata for Google_Protobuf_SourceContext, v9, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_Api.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v101 = *(v3 + 48);
  v99 = *(v3 + 56);
  v98 = *(v3 + 64);
  v94 = *(v3 + 80);
  v95 = *(v3 + 72);
  v107 = *(v3 + 88);
  v102 = *(v3 + 96);
  v106 = *(v3 + 104);
  v103 = *(v3 + 112);
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v11 = *(v2 + 32);
  v10 = *(v2 + 40);
  v100 = *(v2 + 48);
  v97 = *(v2 + 56);
  v96 = *(v2 + 64);
  v92 = *(v2 + 80);
  v93 = *(v2 + 72);
  v13 = *(v2 + 88);
  v12 = *(v2 + 96);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v104 = *(v2 + 104);
  v105 = *(v2 + 112);
  if (!v14 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC479974(v4, v9) & 1) == 0 || (sub_1AC477E08(v5, v8) & 1) == 0)
  {
    return 0;
  }

  if (v6 != v11 || v7 != v10)
  {
    OUTLINED_FUNCTION_19();
    if ((sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  if (v102)
  {
    if (v12)
    {
      v16 = v107 == v13 && v102 == v12;
      if (v16 || (OUTLINED_FUNCTION_19(), (sub_1AC51F3D8() & 1) != 0))
      {
        v17 = OUTLINED_FUNCTION_5_1();
        sub_1AC480274(v17, v18, v19, v20);
        v21 = OUTLINED_FUNCTION_22_0();
        sub_1AC480274(v21, v22, v104, v105);
        v23 = OUTLINED_FUNCTION_5_1();
        sub_1AC480274(v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_24();
        sub_1AC4578F4(v27, v28);
        sub_1AC4578F4(v104, v105);
        v29 = OUTLINED_FUNCTION_24();
        v30 = MEMORY[0x1AC5B4070](v29);
        sub_1AC4513F8(v104, v105);
        v31 = OUTLINED_FUNCTION_24();
        sub_1AC4513F8(v31, v32);
        v33 = OUTLINED_FUNCTION_22_0();
        sub_1AC4802C0(v33, v34, v104, v105);

        v35 = OUTLINED_FUNCTION_24();
        sub_1AC4513F8(v35, v36);
        v37 = OUTLINED_FUNCTION_5_1();
        sub_1AC4802C0(v37, v38, v39, v40);
        if ((v30 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_28;
      }

      v78 = OUTLINED_FUNCTION_5_1();
      sub_1AC480274(v78, v79, v80, v81);
      v82 = OUTLINED_FUNCTION_22_0();
      sub_1AC480274(v82, v83, v104, v105);
      v84 = OUTLINED_FUNCTION_5_1();
      sub_1AC480274(v84, v85, v86, v87);
      v88 = OUTLINED_FUNCTION_22_0();
      sub_1AC4802C0(v88, v89, v104, v105);

      v90 = OUTLINED_FUNCTION_24();
      sub_1AC4513F8(v90, v91);
      v63 = OUTLINED_FUNCTION_5_1();
LABEL_26:
      sub_1AC4802C0(v63, v64, v65, v66);
      return 0;
    }

    v45 = OUTLINED_FUNCTION_5_1();
    sub_1AC480274(v45, v46, v47, v48);
    OUTLINED_FUNCTION_101();
    sub_1AC480274(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_5_1();
    sub_1AC480274(v53, v54, v55, v56);

    v57 = OUTLINED_FUNCTION_24();
    sub_1AC4513F8(v57, v58);
LABEL_25:
    v59 = OUTLINED_FUNCTION_5_1();
    sub_1AC4802C0(v59, v60, v61, v62);
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_101();
    goto LABEL_26;
  }

  sub_1AC480274(v107, 0, v106, v103);
  if (v12)
  {
    OUTLINED_FUNCTION_101();
    sub_1AC480274(v41, v42, v43, v44);
    goto LABEL_25;
  }

  sub_1AC480274(v13, 0, v104, v105);
  sub_1AC4802C0(v107, 0, v106, v103);
LABEL_28:
  if ((sub_1AC47B418(v101, v100) & 1) != 0 && sub_1AC46DBAC(v99, v98, v97))
  {
    v67 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v67, v68);
    v69 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v69, v70);
    v71 = OUTLINED_FUNCTION_52();
    v72 = MEMORY[0x1AC5B4070](v71);
    v73 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v73, v74);
    v75 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v75, v76);
    return v72 & 1;
  }

  return 0;
}

uint64_t Google_Protobuf_Api.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC480E34(v2);
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

void *sub_1AC4817B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC514E88();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC481800(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v27, v30);
  v17 = OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v28, v31);
  sub_1AC4838E0(v17);
  if (v8)
  {
    v18 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v18, v19, v20, v21, v22, v23, v24, v25, v29, v32);
}

void *sub_1AC481860(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC512FD4();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC4818A8(void *a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23);
  switch(a3 >> 62)
  {
    case 1uLL:
      v18 = a2;
      v19 = a2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v18 = *(a2 + 16);
      v19 = *(a2 + 24);
LABEL_6:
      if (v18 != v19)
      {
        goto LABEL_7;
      }

      return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24);
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24);
      }

LABEL_7:
      v10 = sub_1AC51EC58();
      return OUTLINED_FUNCTION_15_2(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24);
  }
}

void *sub_1AC48196C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC513D8C();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC4819CC(void *a1, uint64_t (*a2)(char *), int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, v31);
  v18 = OUTLINED_FUNCTION_31(v10, v11, v12, v13, v14, v15, v16, v17, v29, v32);
  v19 = a2(v18);
  if (v8)
  {
    v19 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33);
}

void *sub_1AC481A34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4ACF3C();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC481A7C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4B8950();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC481ADC(void *a1, uint64_t (*a2)(char *), int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, v31);
  v18 = OUTLINED_FUNCTION_31(v10, v11, v12, v13, v14, v15, v16, v17, v29, v32);
  v19 = a2(v18);
  if (v8)
  {
    v19 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33);
}

void *sub_1AC481BEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4B7050();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC481C98(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v35 = v1;
  if (v1[4])
  {
    v2 = v1[3];
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51EEB8();
  }

  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4)
  {
    MEMORY[0x1AC5B48A0](2);
    memcpy(__srca, __dst, sizeof(__srca));
    v5 = (v3 + 32);
    v6 = v4 - 1;
    while (1)
    {
      memcpy(v46, v5, sizeof(v46));
      memcpy(v45, __srca, sizeof(v45));
      if (v46[3])
      {
        MEMORY[0x1AC5B48A0](1);
        sub_1AC485754(v46, v44);
        sub_1AC51EEB8();
      }

      else
      {
        sub_1AC485754(v46, v44);
      }

      if (v46[5])
      {
        MEMORY[0x1AC5B48A0](2);
        sub_1AC51EEB8();
      }

      if (v46[7])
      {
        MEMORY[0x1AC5B48A0](3);
        sub_1AC51EEB8();
      }

      v7 = v46[8];
      if (v46[8])
      {
        v39 = v6;
        v40 = v5;
        v36 = v46[10];
        v37 = v46[9];
        v38 = v46[11];
        v8 = LOBYTE(v46[12]);
        v9 = BYTE1(v46[12]);
        v10 = v46[13];
        v11 = v46[14];
        v12 = v46[15];
        v13 = WORD2(v46[16]);
        v14 = LODWORD(v46[16]);
        MEMORY[0x1AC5B48A0](4);
        memcpy(v44, v45, 0x48uLL);
        if (v8 != 2)
        {
          MEMORY[0x1AC5B48A0](33);
          sub_1AC51F488();
        }

        if (v9 != 3)
        {
          MEMORY[0x1AC5B48A0](34);
          MEMORY[0x1AC5B48A0](v9);
        }

        if (v12)
        {
          v15 = v14 | (v13 << 32);
          MEMORY[0x1AC5B48A0](35);
          memcpy(v42, v44, 0x48uLL);
          if (v14 != 4)
          {
            MEMORY[0x1AC5B48A0](1);
            MEMORY[0x1AC5B48A0](v14);
          }

          if (BYTE1(v14) != 3)
          {
            MEMORY[0x1AC5B48A0](2);
            MEMORY[0x1AC5B48A0](BYTE1(v14));
          }

          if (BYTE2(v14) != 3)
          {
            MEMORY[0x1AC5B48A0](3);
            MEMORY[0x1AC5B48A0](BYTE2(v14));
          }

          if (BYTE3(v14) != 3)
          {
            MEMORY[0x1AC5B48A0](4);
            MEMORY[0x1AC5B48A0](qword_1AC520440[SBYTE3(v14)]);
          }

          if (BYTE4(v15) != 3)
          {
            MEMORY[0x1AC5B48A0](5);
            MEMORY[0x1AC5B48A0](BYTE4(v15));
          }

          if (BYTE5(v15) != 3)
          {
            MEMORY[0x1AC5B48A0](6);
            MEMORY[0x1AC5B48A0](BYTE5(v15));
          }

          sub_1AC4858A0(&v46[8], v41);
          v16 = OUTLINED_FUNCTION_100();
          sub_1AC485860(v16, v17, v12);
          sub_1AC5175D4(v42, 1000, 10001, v12);
          sub_1AC4937B8(v42, v10, v11);
          v6 = v39;
          v5 = v40;
          v23 = OUTLINED_FUNCTION_100();
          sub_1AC485714(v23, v24, v12);
          memcpy(v44, v42, 0x48uLL);
        }

        else
        {
          v18 = v46[9];
          v19 = v46[10];
          v20 = v46[13];
          v21 = v46[14];
          v22 = v46[15];

          sub_1AC4578F4(v18, v19);

          sub_1AC485860(v20, v21, v22);
          v6 = v39;
          v5 = v40;
        }

        if (*(v7 + 16))
        {
          sub_1AC50D0A4();
        }

        sub_1AC5175D4(v44, 1000, 0x20000000, v38);
        sub_1AC4937B8(v44, v37, v36);
        sub_1AC4575D8(&v46[8], &qword_1EB5580B8, &qword_1AC5203C0);
        memcpy(v45, v44, sizeof(v45));
      }

      if (BYTE6(v46[16]) != 2)
      {
        MEMORY[0x1AC5B48A0](5);
        sub_1AC51F488();
      }

      if (HIBYTE(v46[16]) != 2)
      {
        MEMORY[0x1AC5B48A0](6);
        sub_1AC51F488();
      }

      switch(v46[1] >> 62)
      {
        case 1:
          OUTLINED_FUNCTION_73();
          goto LABEL_44;
        case 2:
          v25 = *(v46[0] + 16);
          v26 = *(v46[0] + 24);
LABEL_44:
          if (v25 != v26)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        case 3:
          goto LABEL_46;
        default:
          if ((v46[1] & 0xFF000000000000) == 0)
          {
            goto LABEL_46;
          }

LABEL_45:
          sub_1AC51EC58();
LABEL_46:
          sub_1AC4857B0(v46);
          if (!v6)
          {
            memcpy(__dst, v45, sizeof(__dst));
            v1 = v35;
            goto LABEL_49;
          }

          memcpy(__srca, v45, sizeof(__srca));
          --v6;
          v5 += 136;
          break;
      }
    }
  }

LABEL_49:
  v27 = *(v1 + 7);
  v44[0] = *(v1 + 5);
  v44[1] = v27;
  v44[2] = *(v1 + 9);
  *(&v44[2] + 15) = *(v1 + 87);
  if (*&v44[0])
  {
    v46[0] = *&v44[0];
    v28 = *(v1 + 4);
    *&v46[1] = *(v1 + 3);
    *&v46[3] = v28;
    *&v46[5] = *(v1 + 5);
    *(&v46[6] + 7) = *(v1 + 95);
    MEMORY[0x1AC5B48A0](3);
    memcpy(v43, __dst, sizeof(v43));
    *__srca = v44[0];
    *&__srca[16] = v44[1];
    *&__srca[32] = v44[2];
    *&__srca[47] = *(&v44[2] + 15);
    sub_1AC485804(__srca, v42);
    sub_1AC4B9710();
    sub_1AC4575D8(v44, &qword_1EB5580B0, &qword_1AC5203B8);
    memcpy(__dst, v43, sizeof(__dst));
    v1 = v35;
  }

  v29 = v1[1];
  v30 = v1[2];
  switch(v30 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_56;
    case 2uLL:
      v31 = *(v29 + 16);
      v32 = *(v29 + 24);
LABEL_56:
      if (v31 != v32)
      {
        goto LABEL_57;
      }

      return memcpy(__src, __dst, 0x48uLL);
    case 3uLL:
      return memcpy(__src, __dst, 0x48uLL);
    default:
      if ((v30 & 0xFF000000000000) == 0)
      {
        return memcpy(__src, __dst, 0x48uLL);
      }

LABEL_57:
      sub_1AC51EC58();
      return memcpy(__src, __dst, 0x48uLL);
  }
}

void *sub_1AC482330(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4B9710();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482378(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4AE344();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC4823D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4A8AC4();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482420(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4A95A8();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482468(void *a1)
{
  OUTLINED_FUNCTION_63(__src);
  if (v1[3])
  {
    v3 = v1[2];
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_36_0();
    sub_1AC51EEB8();
  }

  v4 = *(v1 + 3);
  v13 = *(v1 + 2);
  v14 = v4;
  v15[0] = *(v1 + 4);
  *(v15 + 14) = *(v1 + 78);
  if (v13)
  {
    v17 = v13;
    v18 = *(v1 + 5);
    v19 = *(v1 + 7);
    *v20 = *(v1 + 9);
    *&v20[14] = *(v1 + 86);
    MEMORY[0x1AC5B48A0](2);
    v11[0] = v13;
    v11[1] = v14;
    v12[0] = v15[0];
    *(v12 + 14) = *(v15 + 14);
    sub_1AC4859C0(v11, &v10);
    sub_1AC4825D4(__src);
    sub_1AC4575D8(&v13, &qword_1EB5580C0, &unk_1AC520E20);
  }

  v5 = *v1;
  v6 = v1[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2uLL:
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
LABEL_10:
      if (v7 != v8)
      {
        goto LABEL_11;
      }

      return memcpy(a1, __src, 0x48uLL);
    case 3uLL:
      return memcpy(a1, __src, 0x48uLL);
    default:
      if ((v6 & 0xFF000000000000) == 0)
      {
        return memcpy(a1, __src, 0x48uLL);
      }

LABEL_11:
      sub_1AC51EC58();
      return memcpy(a1, __src, 0x48uLL);
  }
}

void *sub_1AC4825D4(void *a1)
{
  OUTLINED_FUNCTION_63(__src);
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = *(v1 + 56) | (*(v1 + 60) << 32);
    MEMORY[0x1AC5B48A0](1);
    memcpy(__dst, __src, sizeof(__dst));
    v7 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v7, v8);

    sub_1AC4BBFB4();
    v9 = OUTLINED_FUNCTION_100();
    sub_1AC485714(v9, v10, v3);
    memcpy(__src, __dst, sizeof(__src));
  }

  if (*(*v1 + 16))
  {
    sub_1AC50D0A4();
  }

  sub_1AC5175D4(__src, 1000, 0x20000000, *(v1 + 24));
  sub_1AC4937B8(__src, *(v1 + 8), *(v1 + 16));
  return memcpy(a1, __src, 0x48uLL);
}

void *sub_1AC48270C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4AA0CC();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482838(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4A49BC();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482898(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4BE6F8();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482984(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4ABE50();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC4829E4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22[0]);
  sub_1AC4A6904(a4);
  sub_1AC4937B8(v22, a2, a3);
  return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22[0]);
}

void *sub_1AC482B24(void *a1, uint64_t (*a2)(char *), int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v28, v31);
  v18 = OUTLINED_FUNCTION_31(v10, v11, v12, v13, v14, v15, v16, v17, v29, v32);
  v19 = a2(v18);
  if (v8)
  {
    v19 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33);
}

void *sub_1AC482B74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4A7D38();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482C1C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4BD88C();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482D3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = OUTLINED_FUNCTION_6_1(a1, a2, a3, a4, a5, a6, a7, a8, v26, v29);
  OUTLINED_FUNCTION_31(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30);
  sub_1AC4BF3B0();
  if (v8)
  {
    v17 = MEMORY[0x1AC5B4BA0](v8);
  }

  return OUTLINED_FUNCTION_15_2(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31);
}

void *sub_1AC482D84(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  OUTLINED_FUNCTION_63(__src);
  v8 = *(a2 + 16);
  if (v8)
  {
    MEMORY[0x1AC5B48A0](1);
    memcpy(__dst, __src, sizeof(__dst));
    v9 = (a2 + 32);
    for (i = v8 - 1; ; --i)
    {
      memcpy(v18, v9, 0xB1uLL);
      memcpy(v15, __dst, sizeof(v15));
      sub_1AC485F9C(v18, v14);
      sub_1AC4A49BC();
      sub_1AC485FF8(v18);
      if (!i)
      {
        break;
      }

      memcpy(__dst, v15, sizeof(__dst));
      v9 += 184;
    }

    memcpy(__src, v15, sizeof(__src));
  }

  switch(a4 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_11;
    case 2uLL:
      v11 = *(a3 + 16);
      v12 = *(a3 + 24);
LABEL_11:
      if (v11 != v12)
      {
        goto LABEL_12;
      }

      return memcpy(a1, __src, 0x48uLL);
    case 3uLL:
      return memcpy(a1, __src, 0x48uLL);
    default:
      if ((a4 & 0xFF000000000000) == 0)
      {
        return memcpy(a1, __src, 0x48uLL);
      }

LABEL_12:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return memcpy(a1, __src, 0x48uLL);
  }
}

void *sub_1AC482F98()
{
  OUTLINED_FUNCTION_51_1();
  v3 = v2;
  v4 = v2;
  v5 = OUTLINED_FUNCTION_63(v17);
  if (v4 != 0.0)
  {
    v5 = sub_1AC4DF9DC(v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v13 = *(v1 + 16);
      v14 = *(v1 + 24);
LABEL_8:
      if (v13 != v14)
      {
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
      }

LABEL_9:
      OUTLINED_FUNCTION_23_0(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
      LODWORD(v5) = sub_1AC51EC58();
      return OUTLINED_FUNCTION_15_2(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17[0]);
  }
}

void *sub_1AC483190()
{
  OUTLINED_FUNCTION_51_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_63(v17);
  if (v3)
  {
    OUTLINED_FUNCTION_56();
    v4 = sub_1AC4DF9DC(v12);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v13 = *(v1 + 16);
      v14 = *(v1 + 24);
LABEL_8:
      if (v13 != v14)
      {
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
      }

LABEL_9:
      OUTLINED_FUNCTION_23_0(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
      LODWORD(v4) = sub_1AC51EC58();
      return OUTLINED_FUNCTION_15_2(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17[0]);
  }
}

void *sub_1AC483458()
{
  OUTLINED_FUNCTION_65_0();
  v3 = v2;
  v11 = OUTLINED_FUNCTION_6_1(v4, v2, v5, v6, v7, v8, v9, v10, v23, v25);
  if (v3)
  {
    v19 = OUTLINED_FUNCTION_56();
    MEMORY[0x1AC5B48A0](v19);
    v11 = sub_1AC51F488();
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_67();
      goto LABEL_8;
    case 2uLL:
      v20 = *(v1 + 16);
      v21 = *(v1 + 24);
LABEL_8:
      if (v20 != v21)
      {
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26);
    case 3uLL:
      return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26);
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26);
      }

LABEL_9:
      v11 = OUTLINED_FUNCTION_50();
      return OUTLINED_FUNCTION_15_2(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26);
  }
}

uint64_t sub_1AC483590()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC480E34(v2);
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Method._protobuf_nameMap.getter()
{
  if (qword_1EB557CE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558000);
}

uint64_t Google_Protobuf_Method.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    result = v6(v5, v4);
    if (v3 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v9 = *(v4 + 336);
        goto LABEL_8;
      case 2:
        v14 = *(v4 + 336);
        goto LABEL_8;
      case 3:
        v11 = *(v4 + 312);
        goto LABEL_8;
      case 4:
        v13 = *(v4 + 336);
        goto LABEL_8;
      case 5:
        v10 = *(v4 + 312);
LABEL_8:
        OUTLINED_FUNCTION_36_0();
        v12();
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_7();
        sub_1AC4837E0(v15, v16, v17, v18);
        break;
      case 7:
        v19 = OUTLINED_FUNCTION_7();
        sub_1AC483860(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1AC4837E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4847F8();
  return v7(a2 + 64, &type metadata for Google_Protobuf_Option, v8, a3, a4);
}

uint64_t sub_1AC483860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 384);
  v8 = sub_1AC4848A0();
  return v7(a2 + 72, &type metadata for Google_Protobuf_Syntax, v8, a3, a4);
}

void sub_1AC4838E0(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = v3[1];
  OUTLINED_FUNCTION_11_0();
  if (v7)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  v8 = v3[2];
  v9 = v3[3];
  OUTLINED_FUNCTION_11_0();
  if (v10)
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  if (v3[4])
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  v11 = v3[5];
  v12 = v3[6];
  OUTLINED_FUNCTION_11_0();
  if (v13)
  {
    MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  if (v3[7])
  {
    MEMORY[0x1AC5B48A0](5);
    sub_1AC51F488();
  }

  v14 = v3[8];
  if (!*(v14 + 16) || (sub_1AC50C78C(v14, 6), !v2))
  {
    v15 = v3[9];
    if (v15)
    {
      v16 = *(v3 + 80);
      MEMORY[0x1AC5B48A0](7);
      v17 = 1;
      if (v15 == 2)
      {
        v17 = 2;
      }

      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v15;
      }

      MEMORY[0x1AC5B48A0](v18);
    }

    sub_1AC4937B8(a1, v3[11], v3[12]);
  }
}

uint64_t Google_Protobuf_Method.traverse<A>(visitor:)(uint64_t a1)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v61 = *(v1 + 32);
  v9 = v1[5];
  v60 = *(v1 + 56);
  v58 = v1[8];
  v59 = v1[6];
  v57 = v1[9];
  v56 = *(v1 + 80);
  v11 = v1[11];
  v10 = v1[12];
  OUTLINED_FUNCTION_29();
  if (v14)
  {
    v55 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v13[14];
    OUTLINED_FUNCTION_37();
    v18 = a1;
    v20 = v19;
    OUTLINED_FUNCTION_75();
    result = v21();
    if (v2)
    {
      return result;
    }

    v12 = v20;
    a1 = v18;
    v11 = v16;
    v10 = v15;
    v9 = v55;
    v13 = v3;
  }

  v23 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v23 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = v13[14];
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_37();
    v25 = a1;
    v27 = v26;
    OUTLINED_FUNCTION_75();
    result = v28();
    if (v2)
    {
      return result;
    }

    v12 = v27;
    a1 = v25;
    v13 = v3;
  }

  if (v61)
  {
    v3 = v9;
    v29 = v13[13];
    OUTLINED_FUNCTION_37();
    v31 = v30;
    v33 = v32;
    result = v34();
    if (v2)
    {
      return result;
    }

    v12 = v31;
    v9 = v3;
    v13 = v33;
  }

  v35 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v35 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = v13[14];
    OUTLINED_FUNCTION_37();
    v38 = v37;
    OUTLINED_FUNCTION_75();
    result = v39();
    if (v2)
    {
      return result;
    }

    v12 = v38;
    v13 = v3;
  }

  if (v60)
  {
    v40 = v13[13];
    OUTLINED_FUNCTION_37();
    v42 = v41;
    v44 = v43;
    result = v45();
    if (v2)
    {
      return result;
    }

    v12 = v42;
    v46 = v58;
    v13 = v44;
  }

  else
  {
    v46 = v58;
  }

  if (*(v46 + 16))
  {
    v47 = v10;
    v48 = v13[35];
    v49 = v12;
    v50 = v13;
    sub_1AC4847F8();
    OUTLINED_FUNCTION_37();
    result = v48();
    if (v2)
    {
      return result;
    }

    v12 = v49;
    v10 = v47;
    v13 = v50;
  }

  v51 = v12;
  if (v57)
  {
    v52 = v10;
    v53 = v13[16];
    v54 = v13;
    sub_1AC4848A0();
    OUTLINED_FUNCTION_37();
    result = v53();
    if (v2)
    {
      return result;
    }

    v10 = v52;
  }

  else
  {
    v54 = v13;
  }

  sub_1AC4578F4(v11, v10);
  UnknownStorage.traverse<A>(visitor:)(a1, v51, v54);
  return sub_1AC4513F8(v11, v10);
}

uint64_t static Google_Protobuf_Method.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v40 = *(v3 + 56);
  v36 = *(v3 + 72);
  v35 = *(v3 + 80);
  v31 = *(v3 + 96);
  v32 = *(v3 + 88);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v39 = *(v2 + 56);
  v14 = *(v2 + 64);
  v37 = v14;
  v38 = *(v3 + 64);
  v34 = *(v2 + 72);
  v33 = *(v2 + 80);
  v15 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v29 = *(v2 + 96);
  v30 = *(v2 + 88);
  if (!v15 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    if (sub_1AC51F3D8() & 1) == 0 || ((v6 ^ v11))
    {
      return 0;
    }
  }

  if (v7 == v12 && v8 == v13)
  {
    if (v40 != v39)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (sub_1AC51F3D8() & 1) == 0 || ((v40 ^ v39))
    {
      return 0;
    }
  }

  if ((sub_1AC477E08(v38, v37) & 1) != 0 && sub_1AC46DBAC(v36, v35, v34))
  {
    v18 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v18, v19);
    v20 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v20, v21);
    v22 = OUTLINED_FUNCTION_52();
    v23 = MEMORY[0x1AC5B4070](v22);
    v24 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v24, v25);
    v26 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v26, v27);
    return v23 & 1;
  }

  return 0;
}

uint64_t Google_Protobuf_Method.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4838E0(v2);
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC48407C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v2, __src, sizeof(v2));
  sub_1AC4838E0(v2);
  memcpy(__src, v2, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Mixin._protobuf_nameMap.getter()
{
  if (qword_1EB557CE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558020);
}

uint64_t Google_Protobuf_Mixin.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21(a1, a2, a3);
  while (1)
  {
    result = v6(v5, v4);
    if (v3 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 2)
    {
      v10 = *(v4 + 336);
LABEL_8:
      OUTLINED_FUNCTION_36_0();
      v11();
    }

    else if (result == 1)
    {
      v9 = *(v4 + 336);
      goto LABEL_8;
    }
  }
}

void sub_1AC484254()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_11_0();
  if (v3)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  v4 = v0[2];
  v5 = v0[3];
  OUTLINED_FUNCTION_11_0();
  if (v6)
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_48();
    sub_1AC51EEB8();
  }

  v7 = v0[4];
  v8 = v0[5];
  switch(v8 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2uLL:
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
LABEL_10:
      if (v9 != v10)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v8 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

uint64_t Google_Protobuf_Mixin.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_51_1();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  OUTLINED_FUNCTION_29();
  if (!v8 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), result = v9(), !v1))
  {
    v11 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v11 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), result = v12(), !v1))
    {
      sub_1AC4578F4(v6, v7);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v13, v14, v15);
      return sub_1AC4513F8(v6, v7);
    }
  }

  return result;
}

uint64_t static Google_Protobuf_Mixin.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (!v12 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v8 || v6 != v9)
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_95();
    if ((sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  v14 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v14, v15);
  v16 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v16, v17);
  OUTLINED_FUNCTION_34_0();
  v18 = MEMORY[0x1AC5B4070]();
  v19 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v19, v20);
  v21 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v21, v22);
  return v18 & 1;
}

uint64_t Google_Protobuf_Mixin.hashValue.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC484254();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4845EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1AC51B068();
}

void *sub_1AC48462C(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  return sub_1AC4819CC(a1, sub_1AC484254, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1AC48467C()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v7 = v0[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC484254();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

BOOL sub_1AC48470C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return v4 == v5;
}

unint64_t sub_1AC4847A4()
{
  result = qword_1EB558040;
  if (!qword_1EB558040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558040);
  }

  return result;
}

unint64_t sub_1AC4847F8()
{
  result = qword_1EB558048;
  if (!qword_1EB558048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558048);
  }

  return result;
}

unint64_t sub_1AC48484C()
{
  result = qword_1EB558050;
  if (!qword_1EB558050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558050);
  }

  return result;
}

unint64_t sub_1AC4848A0()
{
  result = qword_1EB558058;
  if (!qword_1EB558058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558058);
  }

  return result;
}

unint64_t sub_1AC484950(uint64_t a1)
{
  result = sub_1AC484978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC484978()
{
  result = qword_1EB558060;
  if (!qword_1EB558060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558060);
  }

  return result;
}

unint64_t sub_1AC4849F8()
{
  result = qword_1EB558068;
  if (!qword_1EB558068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558068);
  }

  return result;
}

unint64_t sub_1AC484A4C()
{
  result = qword_1EB558070;
  if (!qword_1EB558070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558070);
  }

  return result;
}

unint64_t sub_1AC484AA4()
{
  result = qword_1EB558078;
  if (!qword_1EB558078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558078);
  }

  return result;
}

unint64_t sub_1AC484AF8(uint64_t a1)
{
  result = sub_1AC484B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC484B20()
{
  result = qword_1EB558080;
  if (!qword_1EB558080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558080);
  }

  return result;
}

unint64_t sub_1AC484BA0()
{
  result = qword_1EB558088;
  if (!qword_1EB558088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558088);
  }

  return result;
}

unint64_t sub_1AC484BF8()
{
  result = qword_1EB558090;
  if (!qword_1EB558090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558090);
  }

  return result;
}

unint64_t sub_1AC484C4C(uint64_t a1)
{
  result = sub_1AC484C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC484C74()
{
  result = qword_1EB558098;
  if (!qword_1EB558098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558098);
  }

  return result;
}

uint64_t sub_1AC484CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC484D30()
{
  result = qword_1EB5580A0;
  if (!qword_1EB5580A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580A0);
  }

  return result;
}

unint64_t sub_1AC484D88()
{
  result = qword_1EB5580A8;
  if (!qword_1EB5580A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C14_SourceContextVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC484DFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1AC484E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC484EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1AC484EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AC484F64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1AC484FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC484FFC@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_1AC485234(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a4 = result & 1;
        v10 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        result = MEMORY[0x1AC5B4BA0](v4);
        __break(1u);
      }

      return result;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1AC485168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1AC51EB78();
  v11 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC51EB98();
  sub_1AC484FFC(v11, a4, a5, &v13);
  sub_1AC4513F8(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return v12 & 1;
}

uint64_t sub_1AC485234(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1AC51EB78();
  v8 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1AC51EB98();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_1AC4852EC(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC48532C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

void sub_1AC48541C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((~a3 & 0x3000000000000000) != 0 || a4 != -1)
  {
    sub_1AC485440(a1, a2, a3, a4 & 1);
  }
}

void sub_1AC485440(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a3 >> 60) & 3 | v6;
  if (v7 == 5)
  {

    v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 == 2)
      {
      }

      return;
    }

    v8 = a2;
    v9 = a3;
  }

  sub_1AC4578F4(v8, v9);
}

void sub_1AC4854E8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((~a3 & 0x3000000000000000) != 0 || a4 != -1)
  {
    sub_1AC48550C(a1, a2, a3, a4 & 1);
  }
}

void sub_1AC48550C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a3 >> 60) & 3 | v6;
  if (v7 == 5)
  {

    v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 == 2)
      {
      }

      return;
    }

    v8 = a2;
    v9 = a3;
  }

  sub_1AC4513F8(v8, v9);
}

uint64_t sub_1AC485714(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4513F8(result, a2);
  }

  return result;
}

uint64_t sub_1AC485860(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1AC4578F4(result, a2);
  }

  return result;
}

uint64_t sub_1AC4858A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5580B8, &qword_1AC5203C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC4860B4()
{
  result = qword_1EB5580C8;
  if (!qword_1EB5580C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_41_0()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_1AC51EC58();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t result)
{
  v3 = *(result + v1 + 32);
  v4 = *(result + v1 + 40);
  v5 = *(result + v1 + 56);
  v6 = *(result + v1 + 60);
  v7 = *(result + v1 + 52);
  v9 = *(v2 + v1 + 32);
  v8 = *(v2 + v1 + 40);
  v10 = *(v2 + v1 + 52);
  v11 = *(v2 + v1 + 56);
  v12 = *(v2 + v1 + 60);
  return result;
}

uint64_t OUTLINED_FUNCTION_64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{

  return sub_1AC484FFC(v9, v10, v11, (v12 - 128));
}

void OUTLINED_FUNCTION_90()
{

  JUMPOUT(0x1AC5B48D0);
}

uint64_t OUTLINED_FUNCTION_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{

  return sub_1AC4513F8(v14, a14);
}

uint64_t OUTLINED_FUNCTION_107(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_1AC4513F8(a19, a21);
}

uint64_t OUTLINED_FUNCTION_108_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{

  return sub_1AC4578F4(v14, a14);
}

void OUTLINED_FUNCTION_109_0()
{

  JUMPOUT(0x1AC5B48A0);
}

uint64_t OUTLINED_FUNCTION_110()
{

  return sub_1AC51EBA8();
}

void *OUTLINED_FUNCTION_111(void *a1)
{

  return memcpy(a1, v1, 0x67uLL);
}

uint64_t OUTLINED_FUNCTION_112()
{
}

void OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2)
{

  sub_1AC48541C(a1, a2, v2, 255);
}

void *OUTLINED_FUNCTION_114(void *a1)
{

  return memcpy(a1, v1, 0x67uLL);
}

void sub_1AC486360(uint64_t a1)
{
  v4 = a1;
  if (BYTE1(a1) < a1)
  {
    v5 = -(a1 - BYTE1(a1));
  }

  else
  {
    v5 = BYTE1(a1) - a1;
  }

  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5 + 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC45AE04(v6 + v5 + 1, 1);
  OUTLINED_FUNCTION_17_2();
  v8 = sub_1AC48904C(&v20, v7 + 32, v3, v4);
  if (v8 <= v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 >= 1)
  {
    v10 = *(v1 + 16);
    v11 = __OFADD__(v10, v8);
    v12 = v10 + v8;
    if (v11)
    {
      __break(1u);
LABEL_17:
      v13 = (v9 + 1);
      if (((v9 + 1) & 0x100) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    *(v1 + 16) = v12;
  }

  if (v8 != v3)
  {
LABEL_10:
    *v2 = v1;
    return;
  }

LABEL_13:
  if (v23)
  {
    goto LABEL_10;
  }

  v4 = *(v1 + 16);
  LODWORD(v3) = v21;
  v9 = v22;
  LODWORD(v12) = v22 == v21;
  if (v22 != v21)
  {
    goto LABEL_17;
  }

  v13 = 0;
LABEL_18:
  v14 = *(v1 + 24) >> 1;
  if (v14 < v4 + 1)
  {
    v19 = v12;
    v16 = v13;
    v17 = v9;
    sub_1AC45A78C();
    v9 = v17;
    v13 = v16;
    LODWORD(v12) = v19;
    v1 = v18;
    v14 = *(v18 + 24) >> 1;
  }

  while (1)
  {
    if (v4 >= v14)
    {
      *(v1 + 16) = v4;
      goto LABEL_18;
    }

    *(v1 + v4 + 32) = v9;
    if (v12)
    {
      *(v1 + 16) = v4 + 1;
      goto LABEL_10;
    }

    LODWORD(v12) = v13 == v3;
    if (v13 == v3)
    {
      v15 = 0;
      goto LABEL_25;
    }

    v15 = v13 + 1;
    if (((v13 + 1) & 0x100) != 0)
    {
      break;
    }

LABEL_25:
    ++v4;
    v9 = v13;
    v13 = v15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_1AC4864FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_1();
  if (__OFADD__(v9, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v7;
  sub_1AC45AE04(v9 + v6, 1);
  v12 = *v4;
  if (v5 == v10)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v12;
      return;
    }

    __break(1u);
  }

  v13 = *(v12 + 16);
  if ((*(v12 + 24) >> 1) - v13 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v12 + v13 + 32), (v11 + v10), v6);
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v12 + 16) = v16;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1AC4865D0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC48EEE0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1AC486674(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC48EEF8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5581F0, &unk_1AC5205C0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

double AsyncSequence<>.binaryProtobufDelimitedMessages<A>(of:extensions:partial:options:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v19 = a5;
  v11 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = *v13;
  v15 = *(v13 + 8);
  (*(v16 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v17);
  sub_1AC450324(a2, v22);
  v20 = v14;
  v21 = v15;
  *&result = AsyncMessageSequence.init(base:extensions:partial:options:)(v22, a3, &v20, a4, a6).n128_u64[0];
  return result;
}

__n128 AsyncMessageSequence.init(base:extensions:partial:options:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  OUTLINED_FUNCTION_7_1(a4);
  (*(v10 + 32))(a5);
  v11 = type metadata accessor for AsyncMessageSequence();
  v12 = a5 + v11[13];
  result = *a1;
  v14 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 16) = v14;
  *(v12 + 32) = *(a1 + 32);
  *(a5 + v11[14]) = a2;
  v15 = a5 + v11[15];
  *v15 = v8;
  *(v15 + 8) = v9;
  return result;
}

uint64_t AsyncMessageSequence.AsyncIterator.iterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  v6 = sub_1AC51F228();
  OUTLINED_FUNCTION_7_1(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2, v7);
}

uint64_t AsyncMessageSequence.AsyncIterator.iterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v6 = sub_1AC51F228();
  OUTLINED_FUNCTION_7_1(v6);
  v9 = *(v8 + 40);

  return v9(v2, a1, v7);
}

uint64_t AsyncMessageSequence.AsyncIterator.options.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 60));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

__n128 sub_1AC486AC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v22 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, AssociatedTypeWitness);
  v14 = sub_1AC51F228();
  OUTLINED_FUNCTION_0(v14);
  (*(v15 + 8))(a5);
  OUTLINED_FUNCTION_7_1(AssociatedTypeWitness);
  (*(v16 + 32))(a5, a1, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(a5, 0, 1, AssociatedTypeWitness);
  v17 = type metadata accessor for AsyncMessageSequence.AsyncIterator();
  v18 = a5 + v17[13];
  result = *a2;
  v20 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v20;
  *(v18 + 32) = *(a2 + 32);
  *(a5 + v17[14]) = a3;
  v21 = a5 + v17[15];
  *v21 = v9;
  *(v21 + 8) = v22;
  return result;
}

uint64_t sub_1AC486C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_5_2();
}

uint64_t sub_1AC486C34()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = *(v1 + 32);
  v3 = *(v1 + 16);
  v0[6] = 0;
  v0[7] = 0;
  v0[5] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  if (__swift_getEnumTagSinglePayload(v2, 1, AssociatedTypeWitness))
  {
    v5 = v0[1];

    return v5(0, 1);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_21_1();
    v0[9] = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_3_3(v9);

    return MEMORY[0x1EEE6D8C8](v0 + 11, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1AC486D78()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_6_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    v9 = sub_1AC487150;
  }

  else
  {
    v9 = sub_1AC486E78;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1AC486E78()
{
  v35 = v2;
  v4 = *(v2 + 48);
  if (*(v2 + 89))
  {
    if (v4)
    {
LABEL_3:
      v5 = OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_0(v5);
      (*(v6 + 8))(AssociatedTypeWitness);
      OUTLINED_FUNCTION_12_1();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
      sub_1AC4878A4();
      OUTLINED_FUNCTION_11();
      *v10 = 1;
      goto LABEL_6;
    }

LABEL_14:
    v28 = *(v2 + 8);
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X3, X16 }
  }

  if (v4 >= 0x1D)
  {
    v11 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_0(v11);
    (*(v12 + 8))(AssociatedTypeWitness);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
    sub_1AC488590();
    OUTLINED_FUNCTION_11();
    v17 = v16;
    v32 = 1;
    OUTLINED_FUNCTION_23_1();
    v34 = 119;
    type metadata accessor for SwiftProtobufError.Storage();
    swift_allocObject();
    *v17 = sub_1AC4F9648(&v32, v3 + 86, 0x80000001AC52DFA0, &v33);
LABEL_6:
    swift_willThrow();
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(v2 + 56) | ((*(v2 + 88) & 0x7F) << v4);
  if ((*(v2 + 88) & 0x80) == 0)
  {
    goto LABEL_14;
  }

  *(v2 + 48) = v4 + 7;
  *(v2 + 56) = v20;
  v22 = *(v2 + 32);
  v21 = *(v2 + 40);
  v23 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v2 + 64) = AssociatedTypeWitness;
  if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness))
  {
    goto LABEL_3;
  }

  swift_getAssociatedConformanceWitness();
  v24 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_21_1();
  *(v2 + 72) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_18_1();

  return MEMORY[0x1EEE6D8C8]();
}

uint64_t sub_1AC487150()
{
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_10_3();
  return v2();
}

uint64_t AsyncMessageSequence.AsyncIterator.readBytes(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_5_2();
}

uint64_t sub_1AC48718C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = MEMORY[0x1E69E7CC0];
  v4 = v3[3];
  if (v4 >= 0x1000000)
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = v3[3];
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v4)
    {

LABEL_18:
      v19 = v3[1];
      OUTLINED_FUNCTION_16_2();

      __asm { BRAA            X2, X16 }
    }

    v6 = sub_1AC51F098();
    *(v6 + 16) = v5;
    bzero((v6 + 32), v5);
    v7 = v3[3];
    while (1)
    {
      v3[6] = v7;
      v8 = *(v6 + 16);
      v9 = v8 >= v7 ? v7 : *(v6 + 16);
      v3[8] = 0;
      v3[9] = v6;
      v3[7] = v9;
      if (v9)
      {
        break;
      }

      if (v7 >= v8)
      {

        sub_1AC466118(v14);
      }

      else
      {
        v10 = sub_1AC487838(0, 0, v6);
        sub_1AC4864FC(v10, v11, v12, v13);
      }

      v16 = v3[6];
      v15 = v3[7];
      v17 = __OFSUB__(v16, v15);
      v7 = v16 - v15;
      if ((v7 < 0) ^ v17 | (v7 == 0))
      {

        v18 = v3[2];
        goto LABEL_18;
      }
    }

    v22 = v3[4];
    v23 = v3[5];
    v24 = *(v22 + 32);
    v25 = *(v22 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (__swift_getEnumTagSinglePayload(v23, 1, AssociatedTypeWitness))
    {
      v27 = v3[2];

      v28 = v3[9];
      sub_1AC4878A4();
      OUTLINED_FUNCTION_11();
      *v29 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_16_2();

      __asm { BRAA            X1, X16 }
    }

    swift_getAssociatedConformanceWitness();
    v32 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_21_1();
    v3[10] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_4_2(v33);
    v35 = v3[5];
    OUTLINED_FUNCTION_16_2();
  }

  return MEMORY[0x1EEE6D8C8](a1, a2, a3);
}

uint64_t sub_1AC487400()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);

    v10 = sub_1AC48776C;
  }

  else
  {
    v10 = sub_1AC487508;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1AC487508()
{
  v1 = *(v0 + 96);
  if (*(v0 + 97))
  {
    goto LABEL_16;
  }

  v2 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 72);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AC48857C(*(v0 + 72));
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v7 = *(v0 + 64);
  v8 = *(v6 + 16);
  if (v7 >= v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + v7 + 32) = v1;
    v9 = v7 + 1;
    for (i = *(v0 + 56); ; *(v0 + 56) = i)
    {
      *(v0 + 64) = v9;
      *(v0 + 72) = v6;
      if (v9 != i)
      {
        break;
      }

      if (i >= v8)
      {

        sub_1AC466118(v15);
      }

      else
      {
        v11 = sub_1AC487838(0, i, v6);
        sub_1AC4864FC(v11, v12, v13, v14);
      }

      v17 = *(v0 + 48);
      v16 = *(v0 + 56);
      v18 = v17 - v16;
      if (v17 <= v16)
      {

        v29 = *(v0 + 16);
        v30 = *(v0 + 8);
        OUTLINED_FUNCTION_16_2();

        __asm { BRAA            X2, X16 }
      }

      v9 = 0;
      *(v0 + 48) = v18;
      v8 = *(v6 + 16);
      if (v8 >= v18)
      {
        i = v18;
      }

      else
      {
        i = *(v6 + 16);
      }
    }

    v19 = *(v0 + 32);
    v20 = *(v0 + 40);
    v21 = *(v19 + 32);
    v22 = *(v19 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (__swift_getEnumTagSinglePayload(v20, 1, AssociatedTypeWitness))
    {
LABEL_16:
      v24 = *(v0 + 16);

      v25 = *(v0 + 72);
      sub_1AC4878A4();
      OUTLINED_FUNCTION_11();
      *v26 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_16_2();

      __asm { BRAA            X1, X16 }
    }

    swift_getAssociatedConformanceWitness();
    v33 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_21_1();
    *(v0 + 80) = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_4_2();
    v36 = *(v0 + 40);
    OUTLINED_FUNCTION_16_2();
  }

  return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_native, v4, v5);
}

uint64_t sub_1AC48776C()
{
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_10_3();

  return v3();
}

uint64_t sub_1AC4877C8(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1AC51F098();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

unint64_t sub_1AC487838(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1AC4878A4()
{
  result = qword_1EB5580D0;
  if (!qword_1EB5580D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5580D0);
  }

  return result;
}

uint64_t AsyncMessageSequence.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v4;
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v1;
  v5[1] = sub_1AC487990;

  return sub_1AC486C20(v3);
}

uint64_t sub_1AC487990(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_14_1();
  v6 = v5;
  OUTLINED_FUNCTION_6_2();
  *v7 = v6;
  v9 = *(v8 + 136);
  v10 = *v3;
  *v7 = *v3;
  *(v6 + 144) = v11;
  *(v6 + 152) = v2;

  if (v2)
  {
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    *(v6 + 184) = a2;
    v14 = OUTLINED_FUNCTION_20_1();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }
}

uint64_t sub_1AC487ACC()
{
  v53 = v0;
  if (*(v0 + 184))
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = *(v0 + 112);
    v5 = v3[4];
    v6 = v3[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = sub_1AC51F228();
    OUTLINED_FUNCTION_0(v8);
    (*(v9 + 8))(v2);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, AssociatedTypeWitness);
    v13 = v3[3];
    OUTLINED_FUNCTION_12_1();
LABEL_3:
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_10_3();
    goto LABEL_7;
  }

  v18 = *(v0 + 144);
  if (v18 >> 31)
  {
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);
    v21 = *(v19 + 32);
    v22 = *(v19 + 16);
    v23 = swift_getAssociatedTypeWitness();
    v24 = sub_1AC51F228();
    OUTLINED_FUNCTION_0(v24);
    (*(v25 + 8))(v20);
    OUTLINED_FUNCTION_12_1();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v23);
    sub_1AC488590();
    OUTLINED_FUNCTION_11();
    v30 = v29;
    v50 = 0;
    OUTLINED_FUNCTION_23_1();
    v52 = 178;
    type metadata accessor for SwiftProtobufError.Storage();
    swift_allocObject();
    *v30 = sub_1AC4F9648(&v50, v1 | 0xC, 0x80000001AC52DF60, v51);
    swift_willThrow();
    goto LABEL_6;
  }

  if (!v18)
  {
    v41 = *(v0 + 152);
    v43 = *(v0 + 120);
    v42 = *(v0 + 128);
    v44 = *(v0 + 112);
    v45 = *(v43 + 24);
    *(v0 + 104) = MEMORY[0x1E69E7CC0];
    sub_1AC450324(v42 + *(v43 + 52), v0 + 56);
    v46 = *(v42 + *(v43 + 56));
    v47 = (v42 + *(v43 + 60));
    v48 = *v47;
    LOBYTE(v47) = *(v47 + 8);
    *&v51[0] = v48;
    BYTE8(v51[0]) = v47;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    Message.init<A>(serializedBytes:extensions:partial:options:)(v0 + 104, v0 + 56, v46, v51, v45, v49, *(v43 + 40), &protocol witness table for <A> [A], v44);
    if (!v41)
    {
      v14 = OUTLINED_FUNCTION_22_2();
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_9_1();
LABEL_7:
    OUTLINED_FUNCTION_18_1();

    __asm { BRAA            X1, X16 }
  }

  v33 = swift_task_alloc();
  *(v0 + 160) = v33;
  *v33 = v0;
  v33[1] = sub_1AC487DD8;
  v34 = *(v0 + 144);
  v35 = *(v0 + 120);
  v36 = *(v0 + 128);
  OUTLINED_FUNCTION_18_1();

  return AsyncMessageSequence.AsyncIterator.readBytes(_:)(v37, v38);
}

uint64_t sub_1AC487DD8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_2();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v10 = v9;
  *(v5 + 168) = v1;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 176) = a1;
    v13 = OUTLINED_FUNCTION_20_1();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC487F0C()
{
  v18 = v0;
  v0[12] = v0[22];
  v1 = v0[21];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = *(v3 + 24);
  sub_1AC450324(v2 + *(v3 + 52), (v0 + 2));
  v6 = *(v2 + *(v3 + 56));
  v7 = (v2 + *(v3 + 60));
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  v16 = v8;
  v17 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  Message.init<A>(serializedBytes:extensions:partial:options:)((v0 + 12), (v0 + 2), v6, &v16, v5, v9, *(v3 + 40), &protocol witness table for <A> [A], v4);
  if (!v1)
  {
    v11 = OUTLINED_FUNCTION_22_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_10_3();

  return v10();
}

uint64_t sub_1AC488028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC4880D0;

  return AsyncMessageSequence.AsyncIterator.next()();
}

uint64_t sub_1AC4880D0()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;

  OUTLINED_FUNCTION_10_3();

  return v5();
}

uint64_t sub_1AC4881B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1AC488284;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1AC488284()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_14_1();
  v3 = v2;
  OUTLINED_FUNCTION_6_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_10_3();

  return v9();
}

double AsyncMessageSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v16 = &v23 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_1AC51F168();
  sub_1AC450324(v3 + *(a1 + 52), v26);
  v17 = *(v3 + *(a1 + 56));
  v18 = v3 + *(a1 + 60);
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  v24 = v19;
  v25 = v18;
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  *&result = sub_1AC486AC0(v16, v26, v17, &v24, a2).n128_u64[0];
  return result;
}

uint64_t sub_1AC488508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = AsyncMessageSequence.makeAsyncIterator()(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v2, a1, v4);
}

unint64_t sub_1AC488590()
{
  result = qword_1EB5580D8[0];
  if (!qword_1EB5580D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5580D8);
  }

  return result;
}

void sub_1AC48860C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1AC488A0C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AC4886AC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1AC488808(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v17 + 32) = 0;
              *v17 = 0u;
              *(v17 + 16) = 0u;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v17 + 24) = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 55) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1AC488A0C()
{
  if (!qword_1EB558160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB558168, qword_1AC520588);
    v0 = sub_1AC51F228();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB558160);
    }
  }
}

void sub_1AC488A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  sub_1AC51F228();
  if (v3 <= 0x3F)
  {
    sub_1AC488A0C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AC488B30(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  result = swift_getAssociatedTypeWitness();
  v8 = *(*(result - 8) + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(result - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
LABEL_31:
    if (v9 < 0x7FFFFFFE)
    {
      v20 = *((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      if ((v20 + 1) >= 2)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v8, result);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = ((v11 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v12 <= 3)
    {
      v13 = ((a2 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = a1[v12];
        if (!a1[v12])
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v16 = *&a1[v12];
        if (!*&a1[v12])
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *&a1[v12];
        if (!v16)
        {
          goto LABEL_31;
        }

LABEL_27:
        v17 = (v16 - 1) << (8 * v12);
        if (v12 <= 3)
        {
          v18 = *a1;
        }

        else
        {
          v17 = 0;
          v18 = *a1;
        }

        result = v10 + (v18 | v17) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1AC488CEC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(*(AssociatedTypeWitness - 8) + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (v11)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v15 = ((v14 + 55) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 < a3)
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v13 >= a2)
  {
    switch(v10)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_60:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v12 < 0x7FFFFFFE)
          {
            v23 = &a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v23 + 32) = 0;
              *v23 = 0u;
              *(v23 + 16) = 0u;
              *v23 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v23 + 24) = a2;
            }
          }

          else if (v12 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2 + 1, v11, AssociatedTypeWitness);
          }

          else
          {
            if (v14 <= 3)
            {
              v20 = ~(-1 << (8 * v14));
            }

            else
            {
              v20 = -1;
            }

            if (v14)
            {
              v21 = v20 & (~v12 + a2);
              if (v14 <= 3)
              {
                v22 = v14;
              }

              else
              {
                v22 = 4;
              }

              bzero(a1, v14);
              switch(v22)
              {
                case 2:
                  *a1 = v21;
                  break;
                case 3:
                  *a1 = v21;
                  a1[2] = BYTE2(v21);
                  break;
                case 4:
                  *a1 = v21;
                  break;
                default:
                  *a1 = v21;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v13 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v19 = (v18 >> 8) + 1;
    }

    else
    {
      v19 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v18;
    }

    else
    {
      *a1 = v18;
    }

    switch(v10)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_60;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1AC488FF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1AC51EF98();
    OUTLINED_FUNCTION_15_3(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1AC5B43A0](15, a1 >> 16);
    OUTLINED_FUNCTION_15_3(v3);
    return v4 | 8;
  }
}

uint64_t sub_1AC48904C(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
    v5 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_14:
    v6 = a4;
LABEL_16:
    *result = a4;
    *(result + 2) = v6;
    *(result + 3) = v5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4;
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5)
      {
        v5 = 1;
        a3 = v4;
        goto LABEL_16;
      }

      v5 = v6 == (a4 & 0xFF00) >> 8;
      if (v6 == (a4 & 0xFF00) >> 8)
      {
        v8 = 0;
      }

      else
      {
        v8 = v6 + 1;
        if (((v6 + 1) & 0x100) != 0)
        {
          goto LABEL_18;
        }
      }

      *(a2 + v4++) = v6;
      v6 = v8;
      if (v7 == a3)
      {
        v6 = v8;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC48910C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
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

uint64_t sub_1AC489160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

void sub_1AC4891EC(_DWORD *a1)
{
  if (*(v1 + 33) == 5)
  {
    v4 = sub_1AC4677EC();
    if (!v2)
    {
      *a1 = v4;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC489228()
{
  OUTLINED_FUNCTION_2_3();
  if (v5)
  {
    OUTLINED_FUNCTION_17_0();
    v7 = sub_1AC453530();
    if (v1)
    {
      return;
    }

    if (v7)
    {
      if ((v7 & 3) == 0)
      {
        v10 = v2[1];
        if ((v10 & 0x8000000000000000) == 0 && v10 >= v7)
        {
          v11 = v7 >> 2;
          v12 = *(*v3 + 16);
          v13 = __OFADD__(v12, v7 >> 2);
          v14 = v12 + (v7 >> 2);
          if (v13)
          {
            __break(1u);
            return;
          }

          OUTLINED_FUNCTION_82_0(v14);
          while (1)
          {
            v15 = v10 < 4;
            v10 -= 4;
            if (v15)
            {
              break;
            }

            v16 = *(*v2)++;
            v2[1] = v10;
            if ((OUTLINED_FUNCTION_69_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_4();
              sub_1AC48F1A4();
              v0 = v19;
            }

            v17 = *(v0 + 16);
            v18 = v17 + 1;
            if (v17 >= *(v0 + 24) >> 1)
            {
              v11 = v17 + 1;
              OUTLINED_FUNCTION_21_2();
              v0 = v20;
              sub_1AC48F1A4();
              OUTLINED_FUNCTION_96_0();
            }

            *(v0 + 16) = v18;
            *(v0 + 4 * v17 + 32) = v16;
            *v3 = v0;
            if (!--v11)
            {
              goto LABEL_19;
            }
          }
        }
      }

      sub_1AC48D31C();
      v8 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_15(v8, v9);
      return;
    }

    goto LABEL_19;
  }

  if (v4 == 5)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC4677EC();
    if (!v1)
    {
      sub_1AC4D9ACC();
      v6 = OUTLINED_FUNCTION_19_2();
      sub_1AC4D9A3C(v6);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_77_0();
LABEL_19:
      OUTLINED_FUNCTION_33_0();
    }
  }
}

void sub_1AC489398()
{
  OUTLINED_FUNCTION_2_3();
  if (v5)
  {
    OUTLINED_FUNCTION_17_0();
    v7 = sub_1AC453530();
    if (v1)
    {
      return;
    }

    if (v7)
    {
      if ((v7 & 7) == 0)
      {
        v10 = v2[1];
        if ((v10 & 0x8000000000000000) == 0 && v10 >= v7)
        {
          v11 = v7 >> 3;
          v12 = *(*v3 + 16);
          v13 = __OFADD__(v12, v7 >> 3);
          v14 = v12 + (v7 >> 3);
          if (v13)
          {
            __break(1u);
            return;
          }

          OUTLINED_FUNCTION_82_0(v14);
          while (1)
          {
            v15 = v10 < 8;
            v10 -= 8;
            if (v15)
            {
              break;
            }

            v16 = *(*v2)++;
            v2[1] = v10;
            if ((OUTLINED_FUNCTION_69_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_4();
              sub_1AC48F268();
              v0 = v19;
            }

            v17 = *(v0 + 16);
            v18 = v17 + 1;
            if (v17 >= *(v0 + 24) >> 1)
            {
              v11 = v17 + 1;
              OUTLINED_FUNCTION_21_2();
              v0 = v20;
              sub_1AC48F268();
              OUTLINED_FUNCTION_96_0();
            }

            *(v0 + 16) = v18;
            *(v0 + 8 * v17 + 32) = v16;
            *v3 = v0;
            if (!--v11)
            {
              goto LABEL_19;
            }
          }
        }
      }

      sub_1AC48D31C();
      v8 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_15(v8, v9);
      return;
    }

    goto LABEL_19;
  }

  if (v4 == 1)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC456830();
    if (!v1)
    {
      OUTLINED_FUNCTION_90_0();
      sub_1AC4D9AE4();
      v6 = OUTLINED_FUNCTION_19_2();
      sub_1AC4D9A54(v6);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_83_0();
LABEL_19:
      OUTLINED_FUNCTION_33_0();
    }
  }
}

void sub_1AC48956C()
{
  if (!*(v0 + 33))
  {
    v2 = sub_1AC453530();
    if (!v1)
    {
      OUTLINED_FUNCTION_102_0(v2);
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC4897A8()
{
  if (!*(v0 + 33))
  {
    v2 = sub_1AC453530();
    if (!v1)
    {
      OUTLINED_FUNCTION_98_1(v2);
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC489D88(_DWORD *a1)
{
  if (*(v1 + 33) == 5)
  {
    v2 = v1[1];
    v3 = v2 < 4;
    v4 = v2 - 4;
    if (v3)
    {
      sub_1AC48D31C();
      v5 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_15(v5, v6);
    }

    else
    {
      v7 = *(*v1)++;
      v1[1] = v4;
      *a1 = v7;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

void sub_1AC489FE0(void *a1)
{
  if (*(v1 + 33) == 1)
  {
    v2 = v1[1];
    v3 = v2 < 8;
    v4 = v2 - 8;
    if (v3)
    {
      sub_1AC48D31C();
      v5 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_15(v5, v6);
    }

    else
    {
      v7 = *(*v1)++;
      v1[1] = v4;
      *a1 = v7;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

_BYTE *sub_1AC48A444(_BYTE *result, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = a3;
    if (a3 < 0x80)
    {
      LOBYTE(v6) = a3;
    }

    else
    {
      do
      {
        *result++ = v5 | 0x80;
        v6 = v5 >> 7;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
    }

    *result++ = v6;
    if (a4 < 0x80)
    {
      LOBYTE(v8) = a4;
    }

    else
    {
      do
      {
        *result++ = a4 | 0x80;
        v8 = a4 >> 7;
        v9 = a4 >> 14;
        a4 >>= 7;
      }

      while (v9);
    }

    *result = v8;
    v10 = *(a5 + 16);
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        ++result;
        v12 = *(a5 + 32 + 4 * i);
        if (v12 >= 0x80)
        {
          do
          {
            *result++ = v12 | 0x80;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }

        *result = v12;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC48A4F0()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  OUTLINED_FUNCTION_5();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v11 + 16);
  v32 = v8;
  v24(v16, v8, v9);
  OUTLINED_FUNCTION_42_0(v16, 1, v6);
  if (v25)
  {
    (*(v4 + 16))(v6, v4);
    OUTLINED_FUNCTION_42_0(v16, 1, v6);
    if (!v25)
    {
      (*(v11 + 8))(v16, v9);
    }
  }

  else
  {
    (*(v18 + 32))(v23, v16, v6);
  }

  v26 = sub_1AC48A748(v23, *(v2 + 40), v6, v4);
  if (v1 || (v26 & 1) == 0)
  {
    (*(v18 + 8))(v23, v6);
  }

  else
  {
    v27 = *(v11 + 8);
    v28 = v32;
    v29 = OUTLINED_FUNCTION_67_0();
    v30(v29);
    (*(v18 + 32))(v28, v23, v6);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v6);
    *(v2 + 32) = 1;
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC48A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 33) != 3)
  {
    v9 = 0;
    return v9 & 1;
  }

  sub_1AC4506F4();
  if (v5)
  {
    return v9 & 1;
  }

  sub_1AC4530E8(v4, v21);
  v26 = a2;
  v27 = 0;
  v23 = 1;
  sub_1AC45AC74(v28, *(&v28 + 1));
  v28 = xmmword_1AC5205D0;
  result = (*(a4 + 64))(v21, &type metadata for BinaryDecoder, &off_1F211C348, a3, a4);
  if (v25 != a2 || v24 != 4)
  {
    sub_1AC48D31C();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    sub_1AC45466C(v21);
    return v9 & 1;
  }

  v13 = *(&v28 + 1);
  if (*(&v28 + 1) >> 60 != 15)
  {
    v14 = v28;
    v29 = *(a4 + 56);
    sub_1AC4578F4(v28, *(&v28 + 1));
    v15 = v29(v20, a3, a4);
    sub_1AC51EC98();
    v15(v20, 0);
    result = sub_1AC45AC74(v14, v13);
  }

  v16 = *(v4 + 8);
  v17 = v16 - v22;
  if (__OFSUB__(v16, v22))
  {
    __break(1u);
  }

  else
  {
    v18 = __OFSUB__(v16, v17);
    v19 = v22;
    if (!v18)
    {
      *v4 += v17;
      *(v4 + 8) = v19;
      sub_1AC451450();
      sub_1AC45466C(v21);
      v9 = 1;
      return v9 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC48A954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_5();
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  (*(v36 + 16))(v37, v36);
  v38 = sub_1AC48A748(v35, *(v20 + 40), v27, v25);
  if (v21 || (v38 & 1) == 0)
  {
    (*(v29 + 8))(v35, v27);
  }

  else
  {
    v39 = *(v29 + 16);
    v40 = OUTLINED_FUNCTION_67_0();
    v41(v40);
    sub_1AC51F108();
    sub_1AC51F0D8();
    (*(v29 + 8))(v35, v27);
    OUTLINED_FUNCTION_33_0();
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC48AAD4()
{
  OUTLINED_FUNCTION_60();
  v3 = v0;
  v124 = v4;
  v6 = v5;
  v8 = v7;
  v121 = v9;
  v11 = *(v10 + 8);
  v127 = v8;
  v128 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v118 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v112 - v17;
  v18 = sub_1AC51F228();
  v19 = OUTLINED_FUNCTION_3_0(v18);
  v147 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v120 = v23 - v24;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v123 = &v112 - v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_75_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v112 - v29;
  OUTLINED_FUNCTION_95_0();
  v31 = sub_1AC51F228();
  v32 = OUTLINED_FUNCTION_3_0(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_80_0();
  if (*(v3 + 33) != 2)
  {
    goto LABEL_10;
  }

  v117 = v40;
  v129 = v18;
  v122 = v38;
  v126 = v39;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, AssociatedTypeWitness);
  v119 = v30;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v6);
  v47 = sub_1AC453530();
  if (v1)
  {
LABEL_9:
    (*(v147 + 8))(v119, v129);
    v54 = OUTLINED_FUNCTION_70_0();
    v55(v54);
    goto LABEL_10;
  }

  v48 = v47;
  v116 = v3;
  if (v47 >= 0x7FFFFFFF)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36_1();
    goto LABEL_8;
  }

  v49 = v116;
  v50 = v116[1];
  if ((v50 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v88 = v50 >= v48;
  v51 = v50 - v48;
  if (!v88)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_53_1();
LABEL_8:
    OUTLINED_FUNCTION_59(v52, v53);
    goto LABEL_9;
  }

  v56 = v6;
  v115 = v34;
  v57 = *v116;
  *v116 += v48;
  *(v49 + 8) = v51;
  sub_1AC4530E8(v49, v131);
  v114 = v132[7];
  LODWORD(v113) = v133;
  sub_1AC452928(v132, v130, &qword_1EB557F98, &qword_1AC520460);
  v139 = 1;
  memset(v140, 0, sizeof(v140));
  v141 = 1;
  v145 = xmmword_1AC5205D0;
  v146 = xmmword_1AC5205D0;
  v135 = v57;
  v136 = v48;
  v137 = v57;
  v138 = 0;
  sub_1AC454060(v130, &v140[1], &qword_1EB557F98, &qword_1AC520460);
  v142 = v114;
  v143 = v113;
  v58 = v134;
  v59 = sub_1AC45466C(v131);
  v144 = v58;
  v137 = v57;
  v138 = 0;
  if (!v48)
  {
    v82 = v115;
    v59 = v117;
LABEL_46:
    v94 = v59;
    (*(v82 + 16))();
    OUTLINED_FUNCTION_20_2();
    if (v81)
    {
      OUTLINED_FUNCTION_91_0(v127, v128);
      v95();
      OUTLINED_FUNCTION_20_2();
      v96 = v123;
      v97 = v120;
      if (!v81)
      {
        (*(v82 + 8))(v94, v122);
      }
    }

    else
    {
      (*(v118 + 32))(v125, v94, AssociatedTypeWitness);
      v96 = v123;
      v97 = v120;
    }

    v98 = v119;
    (*(v147 + 16))(v97, v119, v129);
    v99 = OUTLINED_FUNCTION_24_2(v97);
    if (v81)
    {
      OUTLINED_FUNCTION_91_0(v99, v124);
      v100(v56);
      OUTLINED_FUNCTION_24_2(v97);
      if (!v81)
      {
        (*(v147 + 8))(v97, v129);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_1(v56);
      (*(v101 + 32))(v96, v97, v56);
    }

    OUTLINED_FUNCTION_64_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_95_0();
    sub_1AC51ED88();
    sub_1AC51EDA8();
    (*(v147 + 8))(v98, v129);
    v102 = OUTLINED_FUNCTION_70_0();
    v103(v102);
    sub_1AC45466C(&v135);
    *(v116 + 32) = 1;
    goto LABEL_10;
  }

  v114 = (v147 + 8);
  v112 = (v147 + 16);
  v113 = v128 + 32;
  while (1)
  {
    v67 = v57 + 1;
    v68 = *v57;
    v69 = v48 - 1;
    if ((v68 & 0x8000000000000000) != 0)
    {
      v71 = 7;
      v70 = v129;
      while (v69 >= 1 && v71 <= 0x3F)
      {
        OUTLINED_FUNCTION_31_0(v67);
        if ((v72 & 0x80) == 0)
        {
          OUTLINED_FUNCTION_79_0(v67);
          if (v88)
          {
            break;
          }

          goto LABEL_20;
        }
      }

LABEL_56:
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_59(v104, v105);
      v106 = OUTLINED_FUNCTION_52_0();
      v107(v106, v70);
LABEL_57:
      (*(v115 + 8))(v126, v122);
      goto LABEL_58;
    }

    v135 = (v57 + 1);
    v136 = v48 - 1;
    v70 = v129;
LABEL_20:
    v73 = v68 & 7;
    if (v68 < 8 || v73 > 5)
    {
      goto LABEL_56;
    }

    v75 = v68 >> 3;
    if (v73 == 4)
    {
      OUTLINED_FUNCTION_71();
      goto LABEL_56;
    }

    HIBYTE(v139) = v73;
    v140[0] = v75;
    if (v75 != 2)
    {
      break;
    }

    v77 = v56;
    v78 = v119;
    sub_1AC464AFC(v119, v77, v124, v62, v63, v64, v65, v66, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123);
    v79 = v129;
    (*v112)(v2, v78, v129);
    LODWORD(v78) = __swift_getEnumTagSinglePayload(v2, 1, v77);
    v80 = *v114;
    (*v114)(v2, v79);
    v81 = v78 == 1;
    v56 = v77;
    if (!v81)
    {
      goto LABEL_32;
    }

    v59 = v117;
    if (!v73)
    {
      v80(v119, v129);
      goto LABEL_57;
    }

    v82 = v115;
LABEL_42:
    v57 = v135;
    v48 = v136;
    v137 = v135;
    v138 = 0;
    if (v136 <= 0)
    {
      if (!v136)
      {
        goto LABEL_46;
      }

      sub_1AC48D31C();
      v89 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_94_0(v89, v90);
      v91 = OUTLINED_FUNCTION_52_0();
      v93 = v129;
      goto LABEL_62;
    }
  }

  if (v75 == 1)
  {
    OUTLINED_FUNCTION_101_0(v59, v60, v61, v62, v127, v128);
    OUTLINED_FUNCTION_97_0();
    v76();
LABEL_32:
    v82 = v115;
LABEL_41:
    v59 = v117;
    goto LABEL_42;
  }

  v83 = v67 - v57;
  v84 = __OFADD__(v69, v83);
  v85 = v69 + v83;
  if (v84)
  {
    goto LABEL_65;
  }

  v135 = v57;
  v136 = v85;
  v82 = v115;
  if (v85 >= 1)
  {
    sub_1AC453530();
    OUTLINED_FUNCTION_99_0();
    v70 = v129;
    if (!v81 && v88 || ((v87 = v86 & 7, v86 >= 8) ? (v88 = v87 >= 6) : (v88 = 1), v88))
    {
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36_1();
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_46_0(v86, v87);
    goto LABEL_41;
  }

  sub_1AC48D31C();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_53_1();
LABEL_61:
  OUTLINED_FUNCTION_59(v108, v109);
  v91 = OUTLINED_FUNCTION_52_0();
  v93 = v70;
LABEL_62:
  v92(v91, v93);
  v110 = OUTLINED_FUNCTION_70_0();
  v111(v110);
LABEL_58:
  sub_1AC45466C(&v135);
LABEL_10:
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_61();
}

void sub_1AC48B378()
{
  OUTLINED_FUNCTION_60();
  v5 = v1;
  v6 = v0;
  v110 = v7;
  v9 = v8;
  v11 = v10;
  v107 = v12;
  v14 = *(v13 + 8);
  v113 = v11;
  v114 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v105 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v102 - v20;
  v130 = sub_1AC51F228();
  v21 = OUTLINED_FUNCTION_3_0(v130);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_75_0();
  v27 = MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_86_0(v27, v28, v29, v30, v31, v32, v33, v34, v102);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_95_0();
  v36 = sub_1AC51F228();
  v37 = OUTLINED_FUNCTION_3_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_80_0();
  if (*(v6 + 33) != 2)
  {
    goto LABEL_10;
  }

  v108 = v23;
  v109 = v41;
  v115 = v43;
  v112 = v42;
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, AssociatedTypeWitness);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v9);
  v50 = sub_1AC453530();
  if (v1)
  {
LABEL_9:
    v56 = OUTLINED_FUNCTION_40_0();
    v57(v56, v130);
    v58 = OUTLINED_FUNCTION_45_0();
    v59(v58);
    goto LABEL_10;
  }

  v51 = v50;
  if (v50 >= 0x7FFFFFFF)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36_1();
    goto LABEL_8;
  }

  v52 = *(v6 + 8);
  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  v83 = v52 >= v50;
  v53 = v52 - v50;
  if (!v83)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_53_1();
LABEL_8:
    OUTLINED_FUNCTION_59(v54, v55);
    goto LABEL_9;
  }

  v104 = *v6;
  *v6 = &v104[v50];
  *(v6 + 8) = v53;
  sub_1AC4530E8(v6, v117);
  v103 = v118[7];
  HIDWORD(v102) = v119;
  sub_1AC452928(v118, v116, &qword_1EB557F98, &qword_1AC520460);
  OUTLINED_FUNCTION_7_2();
  *(v60 + 128) = xmmword_1AC5205D0;
  *(v60 + 144) = xmmword_1AC5205D0;
  v121 = v104;
  v122 = v51;
  v123 = v104;
  v124 = 0;
  sub_1AC454060(v116, v61 + 48, &qword_1EB557F98, &qword_1AC520460);
  v127 = v103;
  v128 = BYTE4(v102);
  v103 = v120;
  v62 = sub_1AC45466C(v117);
  v66 = v104;
  v129 = v103;
  v123 = v104;
  v124 = 0;
  if (!v51)
  {
LABEL_41:
    (*(v115 + 16))(v3, v112, v109);
    OUTLINED_FUNCTION_20_2();
    if (v81)
    {
      OUTLINED_FUNCTION_91_0(v113, v114);
      v90();
      v91 = v115;
      OUTLINED_FUNCTION_20_2();
      if (!v81)
      {
        (*(v91 + 8))(v3, v109);
      }
    }

    else
    {
      (*(v105 + 32))(v111, v3, AssociatedTypeWitness);
    }

    v92 = v130;
    (*(v108 + 16))(v2, v4, v130);
    OUTLINED_FUNCTION_24_2(v2);
    if (v81)
    {
      (*(v110 + 16))(v9);
      v92 = v130;
      OUTLINED_FUNCTION_24_2(v2);
      if (!v81)
      {
        (*(v108 + 8))(v2, v130);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_1(v9);
      (*(v93 + 32))(v106, v2, v9);
    }

    OUTLINED_FUNCTION_64_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_95_0();
    sub_1AC51ED88();
    OUTLINED_FUNCTION_104_0();
    v94 = OUTLINED_FUNCTION_40_0();
    v95(v94, v92);
    v96 = OUTLINED_FUNCTION_45_0();
    v97(v96);
    sub_1AC45466C(&v121);
    *(v6 + 32) = 1;
    goto LABEL_10;
  }

  v103 = v114 + 32;
  do
  {
    v67 = v66 + 1;
    v68 = *v66;
    v69 = v51 - 1;
    if ((v68 & 0x8000000000000000) != 0)
    {
      v71 = 7;
      v70 = v115;
      while (v69 >= 1 && v71 <= 0x3F)
      {
        OUTLINED_FUNCTION_31_0(v67);
        if ((v72 & 0x80) == 0)
        {
          OUTLINED_FUNCTION_79_0(v67);
          if (v83)
          {
            break;
          }

          goto LABEL_20;
        }
      }

LABEL_51:
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_36_1();
LABEL_52:
      OUTLINED_FUNCTION_59(v98, v99);
      v100 = OUTLINED_FUNCTION_40_0();
      v101(v100, v130);
      (*(v70 + 8))(v112, v109);
      goto LABEL_53;
    }

    v121 = (v66 + 1);
    v122 = v51 - 1;
    v70 = v115;
LABEL_20:
    v73 = v68 & 7;
    if (v68 < 8 || v73 > 5)
    {
      goto LABEL_51;
    }

    v75 = v68 >> 3;
    if (v73 == 4)
    {
      OUTLINED_FUNCTION_71();
      goto LABEL_51;
    }

    v125 = v73;
    v126 = v75;
    if (v75 == 2)
    {
      v1 = v5;
      sub_1AC450BB0();
      goto LABEL_29;
    }

    if (v75 == 1)
    {
      OUTLINED_FUNCTION_101_0(v62, v63, v64, v65, v113, v114);
      OUTLINED_FUNCTION_97_0();
      v62 = v76();
LABEL_29:
      v5 = v1;
      goto LABEL_38;
    }

    v77 = v67 - v66;
    v78 = __OFADD__(v69, v77);
    v79 = v69 + v77;
    if (v78)
    {
      goto LABEL_56;
    }

    v121 = v66;
    v122 = v79;
    if (v79 < 1)
    {
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_53_1();
      goto LABEL_52;
    }

    v1 = v5;
    sub_1AC453530();
    OUTLINED_FUNCTION_99_0();
    v70 = v115;
    if (!v81 && v83)
    {
      goto LABEL_51;
    }

    v82 = v80 & 7;
    v83 = v80 < 8 || v82 >= 6;
    if (v83)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_46_0(v80, v82);
    v5 = 0;
LABEL_38:
    v66 = v121;
    v51 = v122;
    v123 = v121;
    v124 = 0;
  }

  while (v122 > 0);
  if (!v122)
  {
    goto LABEL_41;
  }

  sub_1AC48D31C();
  v84 = OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_94_0(v84, v85);
  v86 = OUTLINED_FUNCTION_40_0();
  v87(v86, v130);
  v88 = OUTLINED_FUNCTION_45_0();
  v89(v88);
LABEL_53:
  sub_1AC45466C(&v121);
LABEL_10:
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_61();
}

void sub_1AC48BA88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_28_0();
  v6 = *(v0 + 72);
  if (!v6)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_5;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v20[1] = v2;
  v10 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v1 + 48), v6);
  OUTLINED_FUNCTION_5();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v17);
  (*(v10 + 8))(&v21, v9, v8, v7, v6, v10);
  (*(v12 + 8))(v17, v6);
  if (!*(&v22 + 1))
  {
LABEL_5:
    sub_1AC45A718(&v21, &qword_1EB5581F8, &unk_1AC520DD0);
    goto LABEL_6;
  }

  sub_1AC458DF0(&v21, v24);
  v18 = sub_1AC48DCB4(&v21, v7);
  sub_1AC48BC50(v19, v1, v24);
  (v18)(&v21, 0);
  __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_6:
  OUTLINED_FUNCTION_61();
}

void *sub_1AC48BC50(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AC452928(a1, v15, &qword_1EB558200, &unk_1AC520780);
  v7 = v16;
  result = sub_1AC45A718(v15, &qword_1EB558200, &unk_1AC520780);
  if (!v7)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    result = (*(v12 + 32))(v15, a2, &type metadata for BinaryDecoder, &off_1F211C348, v11, v12);
    if (v3)
    {
      return result;
    }

    result = sub_1AC454060(v15, a1, &qword_1EB558200, &unk_1AC520780);
    goto LABEL_7;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  result = (*(v10 + 40))(a2, &type metadata for BinaryDecoder, &off_1F211C348, v9, v10);
  if (!v3)
  {
LABEL_7:
    if (*(a2 + 32) == 1)
    {
      sub_1AC452928(a1, v15, &qword_1EB558200, &unk_1AC520780);
      v13 = v16;
      result = sub_1AC45A718(v15, &qword_1EB558200, &unk_1AC520780);
      if (!v13)
      {
        sub_1AC48D31C();
        swift_allocError();
        *v14 = 5;
        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_1AC48BE20()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  while (1)
  {
    OUTLINED_FUNCTION_17_0();
    sub_1AC450760();
    if (v0 || (v9 & 1) != 0)
    {
      break;
    }

    if (v8 == 1 && *(v1 + 33) == 3)
    {
      v10 = *(v1 + 120);
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        sub_1AC51F388();
        __break(1u);
        return;
      }

      *(v1 + 120) = v11;
      if (v11 < 0)
      {
        sub_1AC48D31C();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_59(v18, 6);
        return;
      }

      sub_1AC4530E8(v1, v21);
      v24 = 1;
      v25 = 0;
      v23 = 1;
      v12 = sub_1AC48BFE8(v7, v5, v3);
      if (v12)
      {
        if (v12 != 1)
        {
          sub_1AC48D31C();
          v19 = OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_16_3(v19, v20);
          sub_1AC45466C(v21);
          return;
        }
      }

      else
      {
        v13 = *(v1 + 8);
        v14 = v13 - v22;
        if (__OFSUB__(v13, v22))
        {
          goto LABEL_21;
        }

        v15 = __OFSUB__(v13, v14);
        v16 = v22;
        if (v15)
        {
          goto LABEL_22;
        }

        *v1 += v14;
        *(v1 + 8) = v16;
        *(v1 + 32) = 1;
      }

      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_20;
      }

      *(v1 + 120) = v17;
      if (*(v1 + 104) < v17)
      {
        goto LABEL_23;
      }

      sub_1AC45466C(v21);
    }
  }
}

uint64_t sub_1AC48BFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v106 = a2;
  v107 = a3;
  v111 = a1;
  v108 = 0;
  v141 = *MEMORY[0x1E69E9840];
  v140 = 0;
  v6 = 0xF000000000000000;
  memset(v139, 0, sizeof(v139));
  v7 = &unk_1AC520DD0;
  v8 = 1;
  v105 = xmmword_1AC5205D0;
LABEL_2:
  v109 = v6;
  v110 = (v6 >> 60);
  while (1)
  {
    while (1)
    {
      sub_1AC450760();
      if (v4)
      {
        sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
        result = sub_1AC45AC74(v108, v109);
        goto LABEL_100;
      }

      if (v10)
      {
        sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v108, v109);
        result = 0;
        goto LABEL_100;
      }

      if (v9 != 3)
      {
        break;
      }

      sub_1AC452928(v139, &v120, &qword_1EB5581F8, v7);
      if (!v121)
      {
        sub_1AC45A718(&v120, &qword_1EB5581F8, v7);
        v26 = *(v5 + 33);
        if (v110 >= 0xF)
        {
          if (v26 != 2)
          {
            sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
            goto LABEL_102;
          }

          v61 = v7;
          v62 = sub_1AC453530();
          v63 = v62;
          if (v62 >= 0x7FFFFFFF)
          {
            sub_1AC48D31C();
            swift_allocError();
            v99 = 3;
            goto LABEL_109;
          }

          v64 = *(v5 + 8);
          if ((v64 & 0x8000000000000000) != 0)
          {
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
          }

          v34 = v64 >= v62;
          v65 = v64 - v62;
          if (!v34)
          {
            sub_1AC48D31C();
            swift_allocError();
            v99 = 1;
LABEL_109:
            *v98 = v99;
            swift_willThrow();
            goto LABEL_99;
          }

          v66 = *v5;
          *v5 += v62;
          *(v5 + 8) = v65;
          if (v62)
          {
            if (v62 <= 0xE)
            {
              *(&v125 + 6) = 0;
              *&v125 = 0;
              BYTE14(v125) = v62;
              memcpy(&v125, v66, v62);
              v71 = v125;
              v63 = BYTE14(v125);
              v73 = v102 & 0xF00000000000000 | DWORD2(v125) | (WORD6(v125) << 32) | (BYTE14(v125) << 48);
              v72 = v73;
            }

            else
            {
              v67 = sub_1AC51EBB8();
              v68 = *(v67 + 48);
              v69 = *(v67 + 52);
              swift_allocObject();
              v70 = sub_1AC51EB68();
              v71 = v63 << 32;
              v72 = v70 | 0x4000000000000000;
              v73 = v102;
            }

            *(v5 + 32) = 1;
            v102 = v73;
            if (v63 > 0x7F)
            {
              if (v63 >> 21)
              {
                if (v63 >> 28)
                {
                  v75 = 5;
                }

                else
                {
                  v75 = 4;
                }
              }

              else if (v63 >= 0x4000)
              {
                v75 = 3;
              }

              else
              {
                v75 = 2;
              }
            }

            else
            {
              v75 = 1;
            }

            v74 = 0;
            switch(v72 >> 62)
            {
              case 1uLL:
                LODWORD(v74) = HIDWORD(v71) - v71;
                if (__OFSUB__(HIDWORD(v71), v71))
                {
                  goto LABEL_117;
                }

                v74 = v74;
                break;
              case 2uLL:
                v79 = *(v71 + 16);
                v78 = *(v71 + 24);
                v15 = __OFSUB__(v78, v79);
                v74 = v78 - v79;
                if (!v15)
                {
                  break;
                }

                goto LABEL_116;
              case 3uLL:
                break;
              default:
                v74 = BYTE6(v72);
                break;
            }
          }

          else
          {
            v74 = 0;
            v71 = 0;
            *(v5 + 32) = 1;
            v72 = 0xC000000000000000;
            v75 = 1;
          }

          v80 = v75 + v74;
          if (__OFADD__(v75, v74))
          {
            goto LABEL_113;
          }

          if (v80)
          {
            if (v80 < 15)
            {
              if (v80 < 0)
              {
                goto LABEL_115;
              }

              v86 = 0;
              v87 = v103 & 0xF00000000000000 | ((v75 + v74) << 48);
              v103 = v87;
            }

            else
            {
              v110 = v72;
              v81 = v71;
              v82 = sub_1AC51EBB8();
              v83 = *(v82 + 48);
              v84 = *(v82 + 52);
              swift_allocObject();
              v85 = sub_1AC51EB88();
              if (v80 >= 0x7FFFFFFF)
              {
                sub_1AC51EC18();
                v86 = swift_allocObject();
                *(v86 + 16) = 0;
                *(v86 + 24) = v80;
                v87 = v85 | 0x8000000000000000;
              }

              else
              {
                v86 = v80 << 32;
                v87 = v85 | 0x4000000000000000;
              }

              v71 = v81;
              v72 = v110;
            }
          }

          else
          {
            v86 = 0;
            v87 = 0xC000000000000000;
          }

          *&v125 = v86;
          *(&v125 + 1) = v87;
          sub_1AC48D7BC(&v125, v71, v72);
          v6 = *(&v125 + 1);
          v108 = v125;
          v7 = v61;
          v8 = 1;
          goto LABEL_2;
        }

        if (v26 != 2)
        {
          goto LABEL_101;
        }

        v11 = *(v5 + 24);
        if (v11)
        {
          goto LABEL_18;
        }

        v30 = *(v5 + 8);
        v12 = *(v5 + 16);
        v31 = *v5 - v12;
        v15 = __OFADD__(v30, v31);
        v16 = v30 + v31;
        if (v15)
        {
          goto LABEL_110;
        }

        goto LABEL_24;
      }

      sub_1AC458DF0(&v120, &v125);
      v17 = *(&v126 + 1);
      v18 = v127;
      __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      v19 = (*(v18 + 8))(v17, v18);
      v20 = sub_1AC48DCB4(v136, v19);
      v22 = v21;
      sub_1AC452928(v21, &v120, &qword_1EB558200, &unk_1AC520780);
      v23 = v121;
      sub_1AC45A718(&v120, &qword_1EB558200, &unk_1AC520780);
      if (v23)
      {
        v24 = *(v22 + 24);
        if (!v24)
        {
          goto LABEL_118;
        }

        v25 = *(v22 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v22, *(v22 + 24));
        (*(v25 + 40))(v5, &type metadata for BinaryDecoder, &off_1F211C348, v24, v25);
      }

      else
      {
        v27 = *(&v126 + 1);
        v28 = v127;
        __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
        (*(v28 + 32))(&v120, v5, &type metadata for BinaryDecoder, &off_1F211C348, v27, v28);
        sub_1AC454060(&v120, v22, &qword_1EB558200, &unk_1AC520780);
      }

      if (*(v5 + 32) != 1)
      {
        (v20)(v136, 0);
        sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v108, v109);
        v94 = &v125;
        goto LABEL_94;
      }

      sub_1AC452928(v22, &v120, &qword_1EB558200, &unk_1AC520780);
      v29 = v121;
      sub_1AC45A718(&v120, &qword_1EB558200, &unk_1AC520780);
      if (!v29)
      {
        sub_1AC48D31C();
        swift_allocError();
        *v95 = 5;
        swift_willThrow();
        (v20)(v136, 0);
        sub_1AC45AC74(v108, v109);
        sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
        v96 = &v125;
        goto LABEL_96;
      }

      (v20)(v136, 0);
      __swift_destroy_boxed_opaque_existential_1(&v125);
      v7 = &unk_1AC520DD0;
      v8 = 1;
    }

    if (v9 == 2)
    {
      if (*(v5 + 33) || (v35 = sub_1AC453530(), *(v5 + 32) = 1, !v35))
      {
LABEL_101:
        sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v108, v109);
LABEL_102:
        result = 2;
        goto LABEL_100;
      }

      v36 = *(v5 + 72);
      if (!v36)
      {
        sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
        sub_1AC45AC74(v108, v109);
        v127 = 0;
        v125 = 0u;
        v126 = 0u;
LABEL_105:
        sub_1AC45A718(&v125, &qword_1EB5581F8, &unk_1AC520DD0);
        result = 1;
        goto LABEL_100;
      }

      v37 = *(v5 + 80);
      v38 = __swift_project_boxed_opaque_existential_1((v5 + 48), *(v5 + 72));
      v104 = &v101;
      v39 = *(v36 - 8);
      v40 = *(v39 + 64);
      MEMORY[0x1EEE9AC00](v38);
      v42 = &v101 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v42);
      (*(v37 + 8))(&v125, v106, v107, v35, v36, v37);
      (*(v39 + 8))(v42, v36);
      v7 = &unk_1AC520DD0;
      sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
      if (!*(&v126 + 1))
      {
        sub_1AC45AC74(v108, v109);
        goto LABEL_105;
      }

      sub_1AC458DF0(&v125, v136);
      v43 = sub_1AC47782C(v136, v139);
      if (v110 <= 0xE)
      {
        v118 = 0;
        MEMORY[0x1EEE9AC00](v43);
        v44 = v111;
        *(&v101 - 6) = v5;
        *(&v101 - 5) = v44;
        v45 = v107;
        *(&v101 - 4) = v106;
        *(&v101 - 3) = v45;
        v47 = v108;
        v46 = v109;
        *(&v101 - 2) = v136;
        *(&v101 - 1) = &v118;
        switch(v46 >> 62)
        {
          case 1uLL:
            v76 = v47 >> 32;
            if (v47 >> 32 < v47)
            {
              goto LABEL_114;
            }

            v77 = v47;
LABEL_55:
            sub_1AC46B604(v77, v76, sub_1AC48E040);
LABEL_56:
            sub_1AC45AC74(v47, v46);
            goto LABEL_57;
          case 2uLL:
            v77 = *(v47 + 16);
            v76 = *(v47 + 24);
            goto LABEL_55;
          case 3uLL:
            goto LABEL_56;
          default:
            v112 = v47;
            v113 = v46;
            v114 = BYTE2(v46);
            v115 = BYTE3(v46);
            v116 = BYTE4(v46);
            v48 = BYTE6(v46);
            v117 = BYTE5(v46);
            if (!BYTE6(v46))
            {
              goto LABEL_56;
            }

            v110 = &v101;
            sub_1AC4530E8(v5, &v120);
            v49 = v122[7];
            v50 = v123;
            sub_1AC452928(v122, v119, &qword_1EB557F98, &qword_1AC520460);
            memset(v128, 0, sizeof(v128));
            v129 = 0;
            v130 = 1;
            v134 = v105;
            v135 = v105;
            *&v125 = &v112;
            *(&v125 + 1) = v48;
            *&v126 = &v112;
            *(&v126 + 1) = 0;
            sub_1AC454060(v119, &v128[8], &qword_1EB557F98, &qword_1AC520460);
            v131 = v49;
            v132 = v50;
            v51 = v124;
            sub_1AC45466C(&v120);
            v133 = v51;
            LOWORD(v127) = 512;
            v52 = v137;
            v53 = v138;
            __swift_project_boxed_opaque_existential_1(v136, v137);
            v54 = (*(v53 + 8))(v52, v53);
            v104 = sub_1AC48DCB4(v119, v54);
            v56 = v55;
            sub_1AC452928(v55, &v120, &qword_1EB558200, &unk_1AC520780);
            v57 = v121;
            result = sub_1AC45A718(&v120, &qword_1EB558200, &unk_1AC520780);
            if (v57)
            {
              v59 = *(v56 + 24);
              if (!v59)
              {
                __break(1u);
                return result;
              }

              v60 = *(v56 + 32);
              __swift_mutable_project_boxed_opaque_existential_1(v56, *(v56 + 24));
              (*(v60 + 40))(&v125, &type metadata for BinaryDecoder, &off_1F211C348, v59, v60);
              v8 = v109;
            }

            else
            {
              v88 = v137;
              v89 = v138;
              __swift_project_boxed_opaque_existential_1(v136, v137);
              (*(v89 + 32))(&v120, &v125, &type metadata for BinaryDecoder, &off_1F211C348, v88, v89);
              sub_1AC454060(&v120, v56, &qword_1EB558200, &unk_1AC520780);
              v8 = v109;
            }

            v90 = v127;
            if (v127 == 1)
            {
              sub_1AC452928(v56, &v120, &qword_1EB558200, &unk_1AC520780);
              v91 = v121;
              sub_1AC45A718(&v120, &qword_1EB558200, &unk_1AC520780);
              if (!v91)
              {
                goto LABEL_111;
              }
            }

            (v104)(v119, 0);
            sub_1AC45466C(&v125);
            sub_1AC45AC74(v108, v8);
            v118 = v90;
            v7 = &unk_1AC520DD0;
LABEL_57:
            v8 = 1;
            if ((v118 & 1) == 0)
            {
              sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
              v94 = v136;
LABEL_94:
              __swift_destroy_boxed_opaque_existential_1(v94);
              goto LABEL_102;
            }

            v108 = 0;
            v6 = 0xF000000000000000;
            break;
        }
      }

      else
      {
        v6 = v109;
      }

      __swift_destroy_boxed_opaque_existential_1(v136);
      goto LABEL_2;
    }

    v11 = *(v5 + 24);
    if (v11)
    {
LABEL_18:
      *v5 = v11;
      goto LABEL_31;
    }

    v13 = *(v5 + 8);
    v12 = *(v5 + 16);
    v14 = *v5 - v12;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      sub_1AC48D31C();
      swift_allocError();
      *v100 = 5;
      swift_willThrow();
      (v104)(v119, 0);
      sub_1AC45466C(&v125);
      sub_1AC45AC74(v108, v8);
      sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
      v96 = v136;
LABEL_96:
      result = __swift_destroy_boxed_opaque_existential_1(v96);
      goto LABEL_100;
    }

LABEL_24:
    *v5 = v12;
    *(v5 + 8) = v16;
    if (v16 < 1)
    {
      break;
    }

    v32 = sub_1AC453530();
    if (v32 >= 0xFFFFFFFF || ((v33 = v32 & 7, v32 >= 8) ? (v34 = v33 >= 6) : (v34 = 1), v34))
    {
      sub_1AC48D31C();
      swift_allocError();
      v93 = 3;
      goto LABEL_98;
    }

    *(v5 + 33) = v33;
    *(v5 + 40) = v32 >> 3;
    sub_1AC467A40(v32);
    *(v5 + 24) = *v5;
LABEL_31:
    *(v5 + 32) = 1;
  }

  sub_1AC48D31C();
  swift_allocError();
  v93 = 1;
LABEL_98:
  *v92 = v93;
  swift_willThrow();
  sub_1AC45AC74(v108, v109);
LABEL_99:
  result = sub_1AC45A718(v139, &qword_1EB5581F8, &unk_1AC520DD0);
LABEL_100:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC48CEE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  if (result)
  {
    v9 = result;
    v10 = a2 - result;
    if (a2 - result >= 1)
    {
      v36 = a8;
      sub_1AC4530E8(a3, v22);
      v12 = v23[7];
      v13 = v24;
      sub_1AC452928(v23, v21, &qword_1EB557F98, &qword_1AC520460);
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      v30 = 1;
      v34 = xmmword_1AC5205D0;
      v35 = xmmword_1AC5205D0;
      v26[0] = v9;
      v26[1] = v10;
      v26[2] = v9;
      v26[3] = 0;
      sub_1AC454060(v21, &v28[8], &qword_1EB557F98, &qword_1AC520460);
      v31 = v12;
      v32 = v13;
      v14 = v25;
      sub_1AC45466C(v22);
      v33 = v14;
      v27 = 512;
      v15 = a7[3];
      v16 = a7[4];
      __swift_project_boxed_opaque_existential_1(a7, v15);
      v17 = (*(v16 + 8))(v15, v16);
      v18 = sub_1AC48DCB4(v22, v17);
      sub_1AC48BC50(v19, v26, a7);
      (v18)(v22, 0);
      if (v8)
      {
        return sub_1AC45466C(v26);
      }

      else
      {
        v20 = v27;
        result = sub_1AC45466C(v26);
        *v36 = v20;
      }
    }
  }

  return result;
}

_BYTE *sub_1AC48D09C(_BYTE *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    LOBYTE(v4) = 0;
    switch(a4 >> 62)
    {
      case 1uLL:
        LODWORD(v5) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v5 = v5;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_13;
      case 2uLL:
        v7 = *(a3 + 16);
        v6 = *(a3 + 24);
        v8 = __OFSUB__(v6, v7);
        v5 = v6 - v7;
        if (!v8)
        {
          goto LABEL_7;
        }

LABEL_13:
        __break(1u);
        break;
      case 3uLL:
        goto LABEL_11;
      default:
        v5 = BYTE6(a4);
LABEL_7:
        if (v5 < 0x80)
        {
          LOBYTE(v4) = v5;
        }

        else
        {
          do
          {
            *result++ = v5 | 0x80;
            v4 = v5 >> 7;
            v9 = v5 >> 14;
            v5 >>= 7;
          }

          while (v9);
        }

LABEL_11:
        *result = v4;
        return sub_1AC46448C(a3, a4);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC48D31C()
{
  result = qword_1EB557A78;
  if (!qword_1EB557A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557A78);
  }

  return result;
}

uint64_t sub_1AC48D370(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      swift_bridgeObjectRetain_n();
      sub_1AC4578F4(v5, v4);
      sub_1AC4513F8(v5, v4);
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      v22 = v5 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v22 < v5)
      {
        goto LABEL_29;
      }

      if (sub_1AC51EB78() && __OFSUB__(v5, sub_1AC51EBA8()))
      {
        goto LABEL_30;
      }

      v23 = sub_1AC51EBB8();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = sub_1AC51EB58();

      v21 = v26;
LABEL_16:
      v27 = v22 < v5;
      v28 = v22 - v5;
      if (v27)
      {
        goto LABEL_26;
      }

      result = sub_1AC51EB78();
      if (!result)
      {
        goto LABEL_32;
      }

      v29 = result;
      v30 = sub_1AC51EBA8();
      v31 = v5 - v30;
      if (__OFSUB__(v5, v30))
      {
        goto LABEL_28;
      }

      v32 = sub_1AC51EB98();
      if (v32 >= v28)
      {
        v33 = v28;
      }

      else
      {
        v33 = v32;
      }

      sub_1AC48A444((v29 + v31), v29 + v31 + v33, a2, a3, a4);

      result = swift_bridgeObjectRelease_n();
      v20 = v21 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_23;
    case 2uLL:
      swift_bridgeObjectRetain_n();
      sub_1AC4578F4(v5, v4);
      sub_1AC4513F8(v5, v4);
      *&v41 = v5;
      *(&v41 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      sub_1AC51EBE8();
      v11 = *(v41 + 16);
      v12 = *(v41 + 24);

      result = sub_1AC51EB78();
      if (!result)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = sub_1AC51EBA8();
      v15 = v11 - v14;
      if (__OFSUB__(v11, v14))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (v16)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v18 = sub_1AC51EB98();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      sub_1AC48A444((v13 + v15), v13 + v15 + v19, a2, a3, a4);
      result = swift_bridgeObjectRelease_n();
      v20 = *(&v41 + 1) | 0x8000000000000000;
      *a1 = v41;
LABEL_23:
      a1[1] = v20;
LABEL_24:
      v34 = *MEMORY[0x1E69E9840];
      return result;
    case 3uLL:
      *(&v41 + 7) = 0;
      *&v41 = 0;
      sub_1AC48A444(&v41, &v41, a2, a3, a4);

      goto LABEL_24;
    default:
      swift_bridgeObjectRetain_n();
      sub_1AC4513F8(v5, v4);
      *&v41 = v5;
      WORD4(v41) = v4;
      BYTE10(v41) = BYTE2(v4);
      BYTE11(v41) = BYTE3(v4);
      BYTE12(v41) = BYTE4(v4);
      BYTE13(v41) = BYTE5(v4);
      BYTE14(v41) = BYTE6(v4);
      sub_1AC48A444(&v41, &v41 + BYTE6(v4), a2, a3, a4);
      v8 = v41;
      v9 = DWORD2(v41) | ((WORD6(v41) | (BYTE14(v41) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v8;
      a1[1] = v9;
      goto LABEL_24;
  }
}

uint64_t sub_1AC48D7BC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(v4, v3);
      sub_1AC4513F8(v4, v3);
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      v15 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v15 < v4)
      {
        goto LABEL_15;
      }

      if (sub_1AC51EB78() && __OFSUB__(v4, sub_1AC51EBA8()))
      {
        goto LABEL_16;
      }

      v16 = sub_1AC51EBB8();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_1AC51EB58();

      v14 = v19;
LABEL_10:
      if (v15 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_1AC4578F4(a2, a3);

      sub_1AC48DBF4(v4, v4 >> 32, v14, a2, a3);

      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      result = sub_1AC4513F8(a2, a3);
      v13 = v14 | 0x4000000000000000;
LABEL_12:
      *a1 = v4;
      a1[1] = v13;
LABEL_13:
      v20 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(v4, v3);
      sub_1AC4513F8(v4, v3);
      *&v21 = v4;
      *(&v21 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      sub_1AC51EBE8();
      v4 = v21;
      v11 = *(v21 + 16);
      v12 = *(v21 + 24);
      sub_1AC4578F4(a2, a3);
      sub_1AC48DBF4(v11, v12, *(&v21 + 1), a2, a3);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      result = sub_1AC4513F8(a2, a3);
      v13 = *(&v21 + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&v21 + 7) = 0;
      *&v21 = 0;
      sub_1AC48D09C(&v21, &v21, a2, a3);
      result = sub_1AC4513F8(a2, a3);
      goto LABEL_13;
    default:
      sub_1AC4578F4(a2, a3);
      sub_1AC4578F4(a2, a3);
      sub_1AC4513F8(v4, v3);
      *&v21 = v4;
      WORD4(v21) = v3;
      BYTE10(v21) = BYTE2(v3);
      BYTE11(v21) = BYTE3(v3);
      BYTE12(v21) = BYTE4(v3);
      BYTE13(v21) = BYTE5(v3);
      BYTE14(v21) = BYTE6(v3);
      sub_1AC48D09C(&v21, &v21 + BYTE6(v3), a2, a3);
      v8 = v21;
      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      sub_1AC4513F8(a2, a3);
      sub_1AC4513F8(a2, a3);
      result = sub_1AC4513F8(a2, a3);
      *a1 = v8;
      a1[1] = v9;
      goto LABEL_13;
  }
}

uint64_t sub_1AC48DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1AC51EB78();
  if (!result)
  {
    goto LABEL_10;
  }

  v10 = result;
  result = sub_1AC51EBA8();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = sub_1AC51EB98();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  sub_1AC48D09C((v10 + v11), v10 + v11 + v15, a4, a5);
  return sub_1AC4513F8(a4, a5);
}

void (*sub_1AC48DCB4(void *a1, uint64_t a2))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v6 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1AC48E00C(v5);
  v5[9] = sub_1AC48DDA4(v5 + 4, a2);
  return sub_1AC48DD44;
}

void sub_1AC48DD44(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1AC48DDA4(void *a1, uint64_t a2))(uint64_t *a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v6;
  v6[15] = a2;
  v6[16] = v2;
  v7 = *v2;
  v8 = sub_1AC45AA38(a2);
  *(v6 + 144) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558208, &unk_1AC520790);
  if (sub_1AC51F338())
  {
    v12 = *v3;
    v13 = sub_1AC45AA38(a2);
    if ((v11 & 1) == (v14 & 1))
    {
      v10 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[17] = v10;
  if (v11)
  {
    sub_1AC458DF0((*(*v3 + 56) + 40 * v10), v6);
  }

  else
  {
    v6[4] = 0;
    *v6 = 0u;
    *(v6 + 1) = 0u;
  }

  return sub_1AC48DEDC;
}

void sub_1AC48DEDC(uint64_t *a1)
{
  v1 = *a1;
  sub_1AC452928(*a1, *a1 + 80, &qword_1EB558200, &unk_1AC520780);
  v2 = *(v1 + 144);
  if (*(v1 + 104))
  {
    v3 = *(v1 + 128);
    sub_1AC458DF0((v1 + 80), v1 + 40);
    v4 = *v3;
    v5 = *(v1 + 136);
    if (v2)
    {
      sub_1AC458DF0((v1 + 40), *(v4 + 56) + 40 * v5);
    }

    else
    {
      v8 = *(v1 + 120);
      sub_1AC458DF0((v1 + 40), v1 + 80);
      sub_1AC4F095C(v5, v8, v1 + 80, v4);
    }
  }

  else
  {
    sub_1AC45A718(v1 + 80, &qword_1EB558200, &unk_1AC520780);
    if (v2)
    {
      v6 = *(v1 + 136);
      v7 = **(v1 + 128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558210, &unk_1AC526DD0);
      sub_1AC51F358();
    }
  }

  sub_1AC45A718(v1, &qword_1EB558200, &unk_1AC520780);

  free(v1);
}

uint64_t (*sub_1AC48E00C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1AC48E034;
}

void OUTLINED_FUNCTION_50_0(uint64_t a1)
{

  sub_1AC46781C(a1, sub_1AC4677EC);
}

uint64_t OUTLINED_FUNCTION_54_0()
{
  v1 = *(v0[15] + 8);
  result = v0[11];
  v3 = v0[7];
  return result;
}

void OUTLINED_FUNCTION_56_0()
{
  *(v0 + 16) = v2;
  *(v0 + 4 * v4 + 32) = v3;
  *v1 = v0;
}

uint64_t OUTLINED_FUNCTION_64_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  v2 = *(v1 + 8);
  result = *(v0 + 112);
  v4 = *(v0 + 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1)
{

  return sub_1AC453DFC(a1, v1);
}

char *OUTLINED_FUNCTION_84_1@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 72) = v2;
  v6 = *v1;
  *v1 += v3;
  *(v1 + 8) = a1;

  return sub_1AC453E68(v6, v3);
}

uint64_t OUTLINED_FUNCTION_106_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  a27 = v28;
  a28 = a1;

  return sub_1AC45466C(&a27);
}

uint64_t OUTLINED_FUNCTION_107_0@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t BinaryDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC48E30C()
{
  result = qword_1EB558218;
  if (!qword_1EB558218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDecodingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinaryDecodingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDecodingOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for BinaryDecodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t BinaryDelimited.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1AC51F468();
  MEMORY[0x1AC5B48A0](v1);
  return sub_1AC51F4C8();
}

uint64_t static BinaryDelimited.serialize(message:to:partial:)(void *a1, void *a2, char a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  v19 = 0;
  result = Message.serializedBytes<A>(partial:options:)(a3, &v19, v6, v8, v7, &protocol witness table for <A> [A]);
  if (!v3)
  {
    v10 = v20;
    v11 = *(v20 + 16);
    v12 = sub_1AC4519B4(v11);
    v13 = __OFADD__(v12, v11);
    v14 = (v12 + v11);
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v7 = sub_1AC4890F8(0, v14);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }
    }

    sub_1AC48857C(v7);
    v7 = v18;
LABEL_4:
    sub_1AC48E84C((v7 + 32), v7 + 32 + *(v7 + 16), v10);

    if (*(v7 + 16))
    {
      v15 = [a2 write:v7 + 32 maxLength:v14];

      if (v15 == v14)
      {
        return result;
      }

      if (v15 == -1)
      {
        if (![a2 streamError])
        {
          sub_1AC4878A4();
          OUTLINED_FUNCTION_11();
          *v17 = 0;
        }

        return swift_willThrow();
      }
    }

    else
    {

      if (!v14)
      {
        return result;
      }
    }

    sub_1AC4878A4();
    OUTLINED_FUNCTION_11();
    *v16 = 1;
    return swift_willThrow();
  }

  return result;
}

_BYTE *sub_1AC48E84C(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(a3 + 16);
    LOBYTE(v4) = v3;
    if (v3 >= 0x80)
    {
      v5 = *(a3 + 16);
      do
      {
        *result++ = v5 | 0x80;
        v4 = v5 >> 7;
        v6 = v5 >> 14;
        v5 >>= 7;
      }

      while (v6);
    }

    *result = v4;
    if (v3)
    {
      return memmove(result + 1, (a3 + 32), v3);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static BinaryDelimited.parse<A>(messageType:from:extensions:partial:options:)(void *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = *a4;
  v15 = *(a4 + 8);
  (*(a6 + 16))(a5, a6);
  v16 = v14;
  v17 = v15;
  static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(a7, a1, a2, a3, &v16, a5, a6);
  if (v7)
  {
    (*(*(a5 - 8) + 8))(a7, a5);
  }
}

void static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2;
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = sub_1AC48ECD0(a2);
  if (v7)
  {
    return;
  }

  v17 = v16;
  if (!v16)
  {
    return;
  }

  if (v16 >> 31)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    *v18 = 3;
    swift_willThrow();
    return;
  }

  v41 = a6;
  v42 = a7;
  v50 = MEMORY[0x1E69E7CC0];
  if (v16 >= 0x1000000)
  {
    v19 = 0x1000000;
  }

  else
  {
    v19 = v16;
  }

  v20 = sub_1AC4890F8(0, v19);
  v45 = a4;
  v46 = v15;
  v43 = v14;
  v44 = v12;
  while (1)
  {
    if (*(v20 + 16) >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = *(v20 + 16);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AC48857C(v20);
      v20 = v37;
    }

    if (!*(v20 + 16) || (v22 = [v12 read:v20 + 32 maxLength:v21]) == 0)
    {

      sub_1AC4878A4();
      OUTLINED_FUNCTION_11();
      *v38 = 1;
LABEL_37:
      swift_willThrow();
      goto LABEL_38;
    }

    v23 = v22;
    if (v22 == -1)
    {

      if (![v12 streamError])
      {
        sub_1AC4878A4();
        OUTLINED_FUNCTION_11();
        *v40 = 0;
      }

      goto LABEL_37;
    }

    v24 = *(v20 + 16);
    if (v22 >= v24)
    {
      break;
    }

    if (v22 < 0)
    {
      goto LABEL_41;
    }

    sub_1AC4864FC(v25, v20 + 32, 0, (2 * v23) | 1);
LABEL_31:
    v36 = v17 <= v23;
    v17 -= v23;
    if (v36)
    {
      v49 = v50;
      v47 = v14;
      v48 = v46;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
      Message.merge<A>(serializedBytes:extensions:partial:options:)(&v49, a3, a4 & 1, &v47, v41, v39, v42, &protocol witness table for <A> [A]);

LABEL_38:

      return;
    }
  }

  v26 = a3;
  v27 = a1;
  v28 = v50;
  v29 = *(v50 + 16);
  if (!__OFADD__(v29, v24))
  {

    if (!swift_isUniquelyReferenced_nonNull_native() || (v30 = *(v50 + 24) >> 1, v30 < v29 + v24))
    {
      sub_1AC45A78C();
      v28 = v31;
      v30 = *(v31 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      v32 = *(v28 + 16);
      if (v30 - v32 < v24)
      {
        goto LABEL_43;
      }

      memcpy((v28 + v32 + 32), (v20 + 32), v24);

      if (v24)
      {
        v33 = *(v28 + 16);
        v34 = __OFADD__(v33, v24);
        v35 = v33 + v24;
        if (v34)
        {
          goto LABEL_44;
        }

        *(v28 + 16) = v35;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_42;
      }
    }

    v50 = v28;
    a1 = v27;
    a3 = v26;
    a4 = v45;
    v14 = v43;
    v12 = v44;
    goto LABEL_31;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

id sub_1AC48ECD0(void *a1)
{
  v2 = swift_slowAlloc();
  v3 = 0;
  v4 = 0;
  while (1)
  {
    result = [a1 read:v2 maxLength:1];
    if (!result)
    {
      if (v3)
      {
        sub_1AC4878A4();
        OUTLINED_FUNCTION_11();
        v8 = 1;
LABEL_10:
        *v7 = v8;
      }

      else
      {
        sub_1AC488590();
        OUTLINED_FUNCTION_11();
        v4 = v10;
        v15 = 1;
        *&v11 = 0xD000000000000010;
        *(&v11 + 1) = 0x80000001AC52E0A0;
        v12 = 0xD00000000000002BLL;
        v13 = 0x80000001AC52E0C0;
        v14 = 242;
        type metadata accessor for SwiftProtobufError.Storage();
        swift_allocObject();
        *v4 = sub_1AC4F9648(&v15, 0xD000000000000093, 0x80000001AC52E0F0, &v11);
      }

      goto LABEL_15;
    }

    if (result != 1)
    {
      break;
    }

    v4 |= (*v2 & 0x7F) << v3;
    if ((*v2 & 0x80) == 0)
    {
      MEMORY[0x1AC5B4D30](v2, -1, -1);
      return v4;
    }

    v6 = v3 >= 0x39;
    v3 += 7;
    if (v6)
    {
      sub_1AC48D31C();
      OUTLINED_FUNCTION_11();
      v8 = 3;
      goto LABEL_10;
    }
  }

  if (result == -1)
  {
    if (![a1 streamError])
    {
      sub_1AC4878A4();
      OUTLINED_FUNCTION_11();
      *v9 = 0;
    }

LABEL_15:
    swift_willThrow();
    MEMORY[0x1AC5B4D30](v2, -1, -1);
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1AC48EF10()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558290, &qword_1AC528230);
    v9 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_5();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1AC48EFD8()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558278, &qword_1AC520A38);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_3(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1AC48F0C0()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558280, &qword_1AC520A40);
    v9 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_5();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1AC48F1A4()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558268, &qword_1AC520A28);
    v9 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v9);
    OUTLINED_FUNCTION_6_3(v10);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v12[4 * v3] <= v11)
    {
      memmove(v11, v12, 4 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 4 * v3);
  }
}

void sub_1AC48F268()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558260, &qword_1AC520A20);
    v9 = OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_9_3(v9);
    OUTLINED_FUNCTION_6_3(v10);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v2 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_1AC48F32C()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558240, &qword_1AC520A00);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_10_5();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_1AC48F3FC()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_4_4(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558288, &qword_1AC520A48);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_14_3(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || v0 + 32 + 40 * v2 <= (v9 + 32))
    {
      memmove((v9 + 32), (v0 + 32), 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5581F0, &unk_1AC5205C0);
    swift_arrayInitWithCopy();
  }
}

char *sub_1AC48F51C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_1AC48F544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

char *sub_1AC48F564(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

char *sub_1AC48F584(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

unint64_t sub_1AC48F5AC()
{
  result = qword_1EB558220;
  if (!qword_1EB558220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558220);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDelimited(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for BinaryDelimited(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}