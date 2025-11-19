uint64_t MultiheadAttention.initializeParameters(for:)(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v6 = OUTLINED_FUNCTION_35_21(*(*a1 + 16));
  v7 = OUTLINED_FUNCTION_35_21(*(v2 + 16));
  v8 = OUTLINED_FUNCTION_35_21(*(v3 + 16));
  if (v4 != -1)
  {
    v9 = v6;
    if (v4)
    {
      v9 = v6 % v4;
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  if (v6 == v7 && v7 == v8)
  {
    memcpy(__dst, v1, sizeof(__dst));
    v13 = v4;
    v14 = v5;
    return sub_25BC62ECC(v6, v6, v6);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t MultiheadAttention.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v440 = a1[3];
  HIDWORD(v363) = *(a1 + 32);
  v8 = *v3;
  v578 = *(v3 + 8);
  v9 = *(v3 + 32);
  v579 = *(v3 + 24);
  v576 = *(v3 + 40);
  v477 = v8;
  v489 = *(v3 + 64);
  v577 = *(v3 + 56);
  v10 = *(v3 + 72);
  v575 = *(v3 + 88);
  v11 = *(v3 + 137);
  v513 = *(v3 + 96);
  v525 = v9;
  v12 = *(v3 + 120);
  v572 = *(v3 + 104);
  v573 = v12;
  v574 = v10;
  HIDWORD(v501) = *(v3 + 136);
  v571[0] = v11;
  *(v571 + 3) = *(v3 + 140);
  v13 = *(v3 + 144);
  v14 = *(v3 + 152);
  v15 = *(v5 + 16);
  LOBYTE(p_Description) = *(v15 + 160);
  if (!sub_25BAA80BC(p_Description, &unk_286D42270))
  {
    goto LABEL_98;
  }

  v17 = *(*(v6 + 16) + 160);
  if (!sub_25BAA80BC(v17, &unk_286D42270) || (v17 = *(*(v7 + 16) + 160), !sub_25BAA80BC(v17, &unk_286D42270)))
  {
    LOBYTE(v570) = v17;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    Description = v13;
    *&v553 = &v570;
    OUTLINED_FUNCTION_27_30();
    OUTLINED_FUNCTION_11_47();
    goto LABEL_117;
  }

  v18 = *(*(v15 + 152) + 16);

  if ((OUTLINED_FUNCTION_44_17() & 1) == 0)
  {
    Description = v18;
    v553 = xmmword_25BCD2360;
    LOBYTE(v554) = 0;
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_11_47();
    goto LABEL_117;
  }

  v19 = *(*(*(v6 + 16) + 152) + 16);
  if ((OUTLINED_FUNCTION_44_17() & 1) == 0)
  {
    Description = v19;
    v553 = xmmword_25BCD2370;
    LOBYTE(v554) = 0;
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_11_47();
    goto LABEL_117;
  }

  v20 = *(*(*(v7 + 16) + 152) + 16);
  if ((OUTLINED_FUNCTION_44_17() & 1) == 0)
  {
    Description = v20;
    v553 = xmmword_25BCD2380;
    LOBYTE(v554) = 0;
    OUTLINED_FUNCTION_33_26();
    OUTLINED_FUNCTION_11_47();
    goto LABEL_117;
  }

  v21 = *(*(v5 + 16) + 152);
  v22 = v21[2];
  if (!v22)
  {
    OUTLINED_FUNCTION_13_43();
LABEL_113:
    OUTLINED_FUNCTION_59_11();
    goto LABEL_116;
  }

  p_Description = v513;
  if (v22 == 1)
  {
    *(&v553 + 1) = 0;
    Description = 1;
LABEL_112:
    *&v553 = 0;
    OUTLINED_FUNCTION_61_10();
    goto LABEL_113;
  }

  if (v22 <= 2)
  {
    v253 = 2;
LABEL_111:
    *(&v553 + 1) = 0;
    Description = v253;
    goto LABEL_112;
  }

  v350 = a2;
  v23 = *(*(v6 + 16) + 152);
  v24 = *(v23 + 16);
  if (v24 <= 1)
  {
    v553 = 0uLL;
    Description = 1;
    LOBYTE(v554) = -1;
    v556 = 0uLL;
    v555 = v24;
    LOBYTE(v557) = -1;
    v562.n128_u8[4] = 4;
LABEL_116:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
LABEL_117:
    sub_25BADDD28();
  }

  v453 = v21[5];
  v465 = v21[4];
  v338 = v21[6];
  v25 = *(v23 + 40);

  Tensor.transposed(permutation:)(&unk_286D44850, &v570);

  Tensor.transposed(permutation:)(&unk_286D44888, &v569);

  Tensor.transposed(permutation:)(&unk_286D448C0, &v568.Description);

  Description = v570;
  v26 = *(v477 + 32);
  OUTLINED_FUNCTION_78_9();
  if (v92)
  {
LABEL_95:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_97:
    sub_25BCB74CC();
    __break(1u);
LABEL_98:
    LOBYTE(v570) = p_Description;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    Description = v13;
    *&v553 = &v570;
    OUTLINED_FUNCTION_27_30();
    OUTLINED_FUNCTION_11_47();
    goto LABEL_117;
  }

  if ((v26 & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v568.Kind = v26 & 0x7FFFFFFFFFFFFFFFLL;

  v27 = sub_25BAB3020(v26);
  OUTLINED_FUNCTION_36_20(v27, v28, v29, v30, v31, v32, v33, v34, v254, v266, v278, v290, v302, v314, v326, v338, v350, v363, v375, v387, v397, v408, v416, v428, v440, v453, v465, v477, v489, v501, v513, v525, v537, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v567, v568);

  Kind = v567;
  Description = v478;
  v553 = *(v3 + 8);
  v554 = *(v3 + 24);
  v555 = v526;
  v556 = *(v3 + 40);
  v36 = *(v3 + 56);
  OUTLINED_FUNCTION_62_8();
  v559 = *(v3 + 72);
  v560 = *(v3 + 88);
  v561 = p_Description;
  v37 = *(v3 + 104);
  v563 = *(v3 + 120);
  v562 = v37;
  LOBYTE(v564) = BYTE4(v502);
  HIDWORD(v564) = *(v3 + 140);
  *(&v564 + 1) = *(v3 + 137);
  v565 = v13;
  *&v566 = v14;
  MultiheadAttention.queryBias.getter(&v551);
  if (v551)
  {
    v549 = v551;
    v550 = Kind;
    OUTLINED_FUNCTION_63_9();

    Kind = v568.Kind;
  }

  else
  {
  }

  v570 = Kind;
  Description = v569;
  v38 = *(v526 + 32);
  OUTLINED_FUNCTION_78_9();
  v39 = v478;
  v40 = v490;
  if (v92)
  {
    goto LABEL_95;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v568.Kind = v38 & 0x7FFFFFFFFFFFFFFFLL;

  v41 = sub_25BAB3020(v38);
  OUTLINED_FUNCTION_36_20(v41, v42, v43, v44, v45, v46, v47, v48, v255, v267, v279, v291, v303, v315, v327, v339, v351, v364, v376, v388, v398, v409, v417, v429, v441, v454, v466, v478, v490, v502, v514, v526, v538, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v567, v568);

  v49 = v567;
  Description = v39;
  OUTLINED_FUNCTION_1_70();
  v557 = v577;
  v558 = v40;
  v50 = OUTLINED_FUNCTION_45_17();
  OUTLINED_FUNCTION_6_55(v50, v51);
  MultiheadAttention.keyBias.getter(&v551);
  if (v551)
  {
    v549 = v551;
    v550 = v49;
    OUTLINED_FUNCTION_63_9();

    v49 = v568.Kind;
  }

  v569 = v49;
  Description = v568.Description;
  v52 = *(v40 + 32);
  OUTLINED_FUNCTION_78_9();
  if (v92)
  {
    goto LABEL_95;
  }

  if ((v52 & 0x8000000000000000) == 0)
  {
LABEL_96:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_97;
  }

  v568.Kind = v52 & 0x7FFFFFFFFFFFFFFFLL;

  v53 = sub_25BAB3020(v52);
  OUTLINED_FUNCTION_36_20(v53, v54, v55, v56, v57, v58, v59, v60, v256, v268, v280, v292, v304, v316, v328, v340, v352, v365, v377, v389, v399, v410, v418, v430, v442, v455, v467, v479, v491, v503, v515, v527, v539, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v567, v568);

  p_Description = v567;
  Description = v39;
  OUTLINED_FUNCTION_1_70();
  v557 = v577;
  v558 = v40;
  v61 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v61, v62);
  MultiheadAttention.valueBias.getter(&v551);
  if (v551)
  {
    v549 = v551;
    v550 = p_Description;
    OUTLINED_FUNCTION_63_9();

    p_Description = v568.Kind;
  }

  v568.Description = p_Description;
  v63 = v468;
  v64 = (v468 * v13) >> 64;
  if (v443)
  {
    v65 = *(*(v443 + 16) + 152);
    v66 = *(v65 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    if (v66 == 2)
    {
      v67 = OUTLINED_FUNCTION_31();
      *(v67 + 16) = xmmword_25BCBAE70;
      *(v67 + 32) = v456;
      *(v67 + 40) = v25;
      v68 = sub_25BAB5C48(v65, v67);
      swift_setDeallocating();
      swift_deallocClassInstance();
      if (v68)
      {
        v568.Kind = v443;
        Tensor.expandingShape(at:)();

        v443 = Description;
        v63 = v468;
        goto LABEL_31;
      }

LABEL_119:
      OUTLINED_FUNCTION_23_32();
      goto LABEL_97;
    }

    v69 = OUTLINED_FUNCTION_32_11();
    *(v69 + 16) = xmmword_25BCBAE90;
    if (v64 != (v468 * v13) >> 63)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    *(v69 + 32) = v468 * v13;
    *(v69 + 40) = v456;
    *(v69 + 48) = v25;
    v70 = sub_25BAB5C48(v65, v69);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v63 = v468;
    if ((v70 & 1) == 0)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v443 = 0;
  }

LABEL_31:
  v568.Kind = Kind;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v71 = OUTLINED_FUNCTION_32_11();
  *(v71 + 16) = xmmword_25BCBAE90;
  *(v71 + 32) = v456;
  v72 = v63 * v13;
  if (v64 != (v63 * v13) >> 63)
  {
    __break(1u);
    goto LABEL_86;
  }

  *(v71 + 40) = v72;
  v73 = v480;
  Description = v480;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v74 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v74, v75);

  MultiheadAttention.embeddingDimension.getter(v76, v77, v78, v79, v80, v81, v82, v83);
  if (!v13)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  OUTLINED_FUNCTION_50_16();
  v92 = v92 && v13 == -1;
  if (v92)
  {
    goto LABEL_88;
  }

  OUTLINED_FUNCTION_54_15(v84, v85, v86, v87, v88, v89, v90, v91, v257, v269, v281, v293, v305, v317, v329, v341, v353, v366, v378, v390, 3, 6, v419, v431, v443, v456, v468, v480, v492, v504, v516, v528, v540, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v567);

  OUTLINED_FUNCTION_90_5(&unk_286D44920, v93, v94, v95, v96, v97, v98, v99, v258, v270, v282, v294, v306, v318, v330, v342, v354, v367, v379, v391, v400, v411, v420, v432, v444, v457, v469, v481, v493, v505, v517, v529, v541, v549, v550, v551, Description);
  v100 = v567;

  v101 = Description;
  v570 = Description;
  v568.Kind = v49;
  *(OUTLINED_FUNCTION_32_11() + 16) = v401;
  OUTLINED_FUNCTION_82_8(*(v49 + 16));
  if (!v103)
  {
    goto LABEL_108;
  }

  *(v102 + 32) = *(v100 + 32);
  *(v102 + 40) = v72;
  Description = v73;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v104 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v104, v105);

  MultiheadAttention.embeddingDimension.getter(v106, v107, v108, v109, v110, v111, v112, v113);
  OUTLINED_FUNCTION_50_16();
  if (v92 && v13 == -1)
  {
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_54_15(v114, v115, v116, v117, v118, v119, v120, v121, v259, v271, v283, v295, v307, v319, v331, v343, v355, v368, v380, v392, v401, *(&v401 + 1), v421, v433, v445, v458, v470, v482, v494, v506, v518, v530, v542, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v567);

  OUTLINED_FUNCTION_90_5(&unk_286D44958, v123, v124, v125, v126, v127, v128, v129, v260, v272, v284, v296, v308, v320, v332, v344, v356, v369, v381, v393, v402, v412, v422, v434, v446, v459, v471, v483, v495, v507, v519, v531, v543, v549, v550, v551, Description);
  v130 = v567;

  v131 = Description;
  v569 = Description;
  v568.Kind = p_Description;
  *(OUTLINED_FUNCTION_32_11() + 16) = v403;
  OUTLINED_FUNCTION_82_8(p_Description[2]);
  if (!v133)
  {
LABEL_108:
    OUTLINED_FUNCTION_13_43();
    OUTLINED_FUNCTION_59_11();
LABEL_115:

    goto LABEL_116;
  }

  v134 = v132;
  *(v132 + 32) = *(v130 + 32);
  *(v132 + 40) = v72;
  Description = v73;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v135 = OUTLINED_FUNCTION_3_55();
  OUTLINED_FUNCTION_6_55(v135, v136);

  MultiheadAttention.embeddingDimension.getter(v137, v138, v139, v140, v141, v142, v143, v144);
  OUTLINED_FUNCTION_50_16();
  if (v92 && v13 == -1)
  {
    goto LABEL_90;
  }

  *(v134 + 48) = v145 / v13;
  Description = v134;
  Tensor.reshaped(to:)(&Description, &v567);

  OUTLINED_FUNCTION_90_5(&unk_286D44990, v147, v148, v149, v150, v151, v152, v153, v261, v273, v285, v297, v309, v321, v333, v345, v357, v370, v382, v394, v403, *(&v403 + 1), v423, v435, v447, v460, v472, v484, v496, v508, v520, v532, v544, v549, v550, v551, Description);
  v154 = v567;

  v568.Description = Description;
  v334 = v131;
  v155 = *(*(v131 + 16) + 152);
  if (*(v155 + 16) <= 1uLL)
  {
    v253 = 1;
    goto LABEL_111;
  }

  v156 = *(v155 + 40);
  v310 = Description;
  v322 = v156;
  if (v448)
  {
    OUTLINED_FUNCTION_82_8(*(v448 + 16));
    if (!v157)
    {
      OUTLINED_FUNCTION_13_43();
      OUTLINED_FUNCTION_59_11();
      swift_retain_n();
      goto LABEL_116;
    }

    if (v157 == 3 && *(v154 + 32) == 1)
    {
      v568.Kind = v448;
      Tensor.expandingShape(at:)();
    }

    else
    {
      v159 = OUTLINED_FUNCTION_43_18();
      *(v159 + 16) = xmmword_25BCBDF80;
      *(v159 + 32) = v63;
      *(v159 + 40) = v13;
      *(v159 + 48) = -1;
      *(v159 + 56) = v156;
      OUTLINED_FUNCTION_51_14(v159, v160, v161, v162, v163, v164, v165, v166, v262, v274, v286, v298, v310, v156, v131, v346, v358, v371, v383, v395, v404, v413, v424, v436, v448, v461, v473, v485, v497, v509, v521, v533, v545, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v159);
    }

    v449 = Description;
  }

  else
  {
    v449 = 0;
  }

  v568.Kind = v101;
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_25BCBDF80;
  *(v167 + 32) = v63;
  *(v167 + 40) = v13;
  *(v167 + 48) = v461;
  v168 = v485;
  Description = v485;
  OUTLINED_FUNCTION_1_70();
  v169 = v63;
  v170 = v497;
  v557 = v577;
  v558 = v497;
  v171 = OUTLINED_FUNCTION_45_17();
  p_Description = &Description;
  v563 = v172;
  v562 = v171;
  v173 = HIDWORD(v509);
  OUTLINED_FUNCTION_25_30();

  MultiheadAttention.embeddingDimension.getter(v174, v175, v176, v177, v178, v179, v180, v181);
  OUTLINED_FUNCTION_50_16();
  if (v92 && v13 == -1)
  {
    goto LABEL_91;
  }

  *(v167 + 56) = v182 / v13;
  OUTLINED_FUNCTION_51_14(v182, v183, v184, v185, v186, v187, v188, v189, v262, v274, v286, v298, v310, v322, v334, v346, v358, v371, 4, 8, v404, v413, v424, v436, v449, v461, v473, v485, v497, v509, v521, v533, v545, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v167);

  v299 = Description;
  v570 = Description;
  v191 = OUTLINED_FUNCTION_43_18();
  *(v191 + 16) = v384;
  *(v191 + 32) = v169;
  *(v191 + 40) = v13;
  v192 = v323;
  *(v191 + 48) = v323;
  Description = v168;
  OUTLINED_FUNCTION_1_70();
  v557 = v577;
  v558 = v170;
  v193 = OUTLINED_FUNCTION_3_55();
  v563 = v194;
  v562 = v193;
  OUTLINED_FUNCTION_25_30();

  MultiheadAttention.embeddingDimension.getter(v195, v196, v197, v198, v199, v200, v201, v202);
  OUTLINED_FUNCTION_50_16();
  if (v92 && v13 == -1)
  {
    goto LABEL_92;
  }

  *(v191 + 56) = v203 / v13;
  OUTLINED_FUNCTION_51_14(v203, v204, v205, v206, v207, v208, v209, v210, v263, v275, v287, v299, v311, v323, v335, v347, v359, v372, v384, *(&v384 + 1), v405, v414, v425, v437, v450, v462, v474, v486, v498, v510, v522, v534, v546, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v191);

  v212 = Description;
  v569 = Description;
  v213 = OUTLINED_FUNCTION_43_18();
  *(v213 + 16) = v385;
  *(v213 + 32) = v475;
  *(v213 + 40) = v13;
  *(v213 + 48) = v192;
  Description = v168;
  OUTLINED_FUNCTION_1_70();
  v557 = v577;
  v558 = v170;
  v214 = OUTLINED_FUNCTION_3_55();
  v563 = v215;
  v562 = v214;
  OUTLINED_FUNCTION_25_30();

  MultiheadAttention.embeddingDimension.getter(v216, v217, v218, v219, v220, v221, v222, v223);
  OUTLINED_FUNCTION_50_16();
  if (v92 && v13 == -1)
  {
    goto LABEL_93;
  }

  *(v213 + 56) = v224 / v13;
  OUTLINED_FUNCTION_51_14(v224, v225, v226, v227, v228, v229, v230, v231, v264, v276, v288, v300, v312, v324, v336, v348, v360, v373, v385, *(&v385 + 1), v406, v415, v426, v438, v451, v463, v475, v487, v499, v511, v523, v535, v547, v549, v550, v551, Description, v553, *(&v553 + 1), v554, v555, v556, *(&v556 + 1), v557, v558, v559, *(&v559 + 1), v560, v561, v562.n128_i64[0], v562.n128_i64[1], v563, *(&v563 + 1), v564, v565, v566, v213);

  LOBYTE(p_Description) = Description;
  v568.Description = Description;
  v567 = v301;
  v550 = Description;
  v551 = v212;
  v549 = v452;
  if (v173)
  {
    if (v173 == 1)
    {

      v233 = BYTE4(v374);
LABEL_75:
      v235 = v14;
      goto LABEL_78;
    }

    v235 = 0.0;
    v233 = BYTE4(v374);
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BAA49B8();
    sub_25BAA4A5C(&Description);

    v233 = BYTE4(v374);
    if (*(&v559 + 1))
    {
      v234 = *(*(&v559 + 1) + 24);
      sub_25BAA4AF4(&Description);
      v235 = 0.0;
      if ((v234 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    sub_25BAA4AF4(&Description);
    v235 = 0.0;
  }

LABEL_78:
  scaledDotProductAttention(query:key:value:attentionMask:dropoutProbability:dropoutSeed:isCausal:)(&v567, &v551, &v550, &v549, v233, &v568.Kind, v235);

  Description = v568.Kind;

  Tensor.transposed(permutation:)(&unk_286D449F0, &v567);

  v236 = OUTLINED_FUNCTION_31();
  *(v236 + 16) = xmmword_25BCBAE70;
  if ((v476 * v464) >> 64 != (v476 * v464) >> 63)
  {
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
    goto LABEL_94;
  }

  *(v236 + 32) = v476 * v464;
  *(v236 + 40) = v349;
  v551 = v236;
  Tensor.reshaped(to:)(&v551, &Description);

  v568.Kind = Description;
  v237 = *(v524 + 32);
  OUTLINED_FUNCTION_78_9();
  if (v92)
  {
    goto LABEL_95;
  }

  if ((v237 & 0x8000000000000000) == 0)
  {
    goto LABEL_96;
  }

  v567 = (v237 & 0x7FFFFFFFFFFFFFFFLL);

  sub_25BAB3020(v237);
  matmul(_:transposed:_:transposed:)(&Description, 0, &v567, 1, &v551);

  v238 = v551;
  Description = v168;
  OUTLINED_FUNCTION_1_70();
  OUTLINED_FUNCTION_62_8();
  v239 = OUTLINED_FUNCTION_3_55();
  v563 = v240;
  v562 = v239;
  LOBYTE(v564) = BYTE4(v512);
  HIDWORD(v564) = *(v571 + 3);
  *(&v564 + 1) = v571[0];
  v565 = v13;
  *&v566 = v14;
  MultiheadAttention.outputBias.getter(&v550);
  v241 = v550;
  if (v550)
  {
    v548 = v550;
    v549 = v238;
    static Tensor.+ infix(_:_:)();

    v238 = v567;
  }

  v567 = v238;
  v242 = OUTLINED_FUNCTION_32_11();
  *(v242 + 16) = v407;
  *(v242 + 32) = v464;
  *(v242 + 40) = v476;
  OUTLINED_FUNCTION_82_8(*(v238 + 16));
  if (v244 <= 1)
  {
    v553 = 0uLL;
    Description = 1;
    OUTLINED_FUNCTION_61_10();
    OUTLINED_FUNCTION_59_11();
    goto LABEL_115;
  }

  *(v243 + 48) = *(v241 + 40);
  v551 = v243;

  Tensor.reshaped(to:)(&v551, &Description);

  v567 = Description;
  v568.Kind = Description;

  OUTLINED_FUNCTION_90_5(&unk_286D44A30, v245, v246, v247, v248, v249, v250, v251, v265, v277, v289, v301, v313, v325, v337, v349, v361, v374, v386, v396, v407, *(&v407 + 1), v427, v439, v452, v464, v476, v488, v500, v512, v524, v536, v548, v549, v550, v551, Description);

  *v362 = Description;
  return result;
}

uint64_t sub_25BC6447C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = *(*a1 + 16);
  if (!sub_25BAA80BC(*(v12 + 160), &unk_286D42270) || !sub_25BAA80BC(*(*(v9 + 16) + 160), &unk_286D42270) || !sub_25BAA80BC(*(*(v10 + 16) + 160), &unk_286D42270))
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    goto LABEL_13;
  }

  if ((sub_25BAB74D0(*(*(v12 + 152) + 16), 3, 0, 0) & 1) == 0 || (sub_25BAB74D0(*(*(*(v9 + 16) + 152) + 16), 3, 0, 0) & 1) == 0 || (result = sub_25BAB74D0(*(*(*(v10 + 16) + 152) + 16), 3, 0, 0), (result & 1) == 0))
  {
LABEL_13:
    sub_25BADDD28();
  }

  if (v11)
  {
    v14 = 0;
    while (v14 != 3)
    {
      v15 = &unk_286D45C48 + v14++;
      if (v15[32] == *(*(v11 + 16) + 160))
      {
        goto LABEL_11;
      }
    }

    v16 = *(*(v11 + 16) + 160);
    sub_25BC8FACC();

    goto LABEL_13;
  }

LABEL_11:
  *a6 = v8;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  *(a6 + 32) = a5 & 1;
  return result;
}

double MultiheadAttention.Input.init(query:key:value:attentionMask:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_70_7(a1, a2, a3);
  v14 = OUTLINED_FUNCTION_20_33(v3, v4, v5, v6, v7, v8, v9, v10, *v6, v13, v12, v11);
  v19 = sub_25BC6447C(v14, v15, v16, v17, 0, v18);
  *&result = OUTLINED_FUNCTION_26_31(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31, v32, v27, v33, v34, v35).n128_u64[0];
  return result;
}

double MultiheadAttention.Input.init(query:key:value:isCausal:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = OUTLINED_FUNCTION_70_7(a1, a2, a3);
  v14 = OUTLINED_FUNCTION_20_33(v3, v4, v5, v6, v7, v8, v9, v10, 0, v13, v12, v11);
  v20 = sub_25BC6447C(v14, v15, v16, v17, v18, v19);
  *&result = OUTLINED_FUNCTION_26_31(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, v32, v33, v28, v34, v35, v36).n128_u64[0];
  return result;
}

double MultiheadAttention.Input.init(sequence:attentionMask:)(uint64_t *a1, uint64_t *a2)
{
  v29 = *a1;
  v31 = *a1;
  v25 = *a2;
  v27 = *a1;
  v2 = swift_retain_n();
  v10 = OUTLINED_FUNCTION_20_33(v2, v3, v4, v5, v6, v7, v8, v9, v25, v27, v29, v31);
  v15 = sub_25BC6447C(v10, v11, v12, v13, 0, v14);
  *&result = OUTLINED_FUNCTION_26_31(v15, v16, v17, v18, v19, v20, v21, v22, v26, v28, v30, v32, v23, v33, v34, v35).n128_u64[0];
  return result;
}

__n128 MultiheadAttention.Input.init(sequence:isCausal:)@<Q0>(uint64_t *a1@<X0>, char a2@<W1>, __n128 *a3@<X8>)
{
  v20 = *a1;
  v21 = *a1;
  v19 = *a1;
  v5 = swift_retain_n();
  v13 = OUTLINED_FUNCTION_20_33(v5, v6, v7, v8, v9, v10, v11, v12, 0, v19, v20, v21);
  sub_25BC6447C(v13, v14, v15, v16, a2, v17);
  result = v22;
  *a3 = v22;
  a3[1].n128_u64[0] = v23;
  a3[1].n128_u64[1] = v24;
  a3[2].n128_u8[0] = v25;
  return result;
}

void MultiheadAttention.callAsFunction(sequence:attentionMask:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_81_8(v0);
  v9 = *v1;
  swift_retain_n();

  v2 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v2, v3, v4, v5, 0, v6);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v7 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

void MultiheadAttention.callAsFunction(sequence:isCausal:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  OUTLINED_FUNCTION_81_8(v2);
  swift_retain_n();
  v3 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v3, v4, v5, v6, v1, v7);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v8 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

void MultiheadAttention.callAsFunction(query:key:value:attentionMask:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_81_8(v0);
  v13 = *v1;
  v11 = *v2;
  v12 = *v3;

  v4 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v4, v5, v6, v7, 0, v8);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v9 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

void MultiheadAttention.callAsFunction(query:key:value:isCausal:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  OUTLINED_FUNCTION_81_8(v2);
  v12 = *v3;
  v13 = *v4;

  v5 = OUTLINED_FUNCTION_18_40();
  sub_25BC6447C(v5, v6, v7, v8, v1, v9);
  OUTLINED_FUNCTION_15_41();
  OUTLINED_FUNCTION_49_19();
  OUTLINED_FUNCTION_79_6();
  if ((v10 & 1) == 0 && !OUTLINED_FUNCTION_48_18())
  {
    OUTLINED_FUNCTION_89_8();
  }

  OUTLINED_FUNCTION_77_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_34();
  OUTLINED_FUNCTION_30_27();

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_10_16();
}

uint64_t scaledDotProductAttention(query:key:value:attentionMask:dropoutProbability:dropoutSeed:isCausal:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W6>, uint64_t *a6@<X8>, float a7@<S0>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *(*a1 + 16);
  v15 = *(v14 + 160);
  if (!sub_25BAA80BC(*(v14 + 160), &unk_286D42270) || (v16 = *(v11 + 16), v15 = *(v16 + 160), !sub_25BAA80BC(*(v16 + 160), &unk_286D42270)) || (v17 = *(v12 + 16), v15 = *(v17 + 160), !sub_25BAA80BC(*(v17 + 160), &unk_286D42270)))
  {
    OUTLINED_FUNCTION_65_7();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v320 = a6;
    v321 = v15;
    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_17_42();
    goto LABEL_43;
  }

  v320 = v12;
  v18 = Tensor.scalarType.getter();
  v19 = dynamic_cast_existential_1_unconditional(v18);
  v278 = v20;
  v288 = v19;
  v21 = *(v14 + 160);
  OUTLINED_FUNCTION_9_51();
  v22 = MEMORY[0x277D84F90];
  LOBYTE(v309) = v23;
  v32 = OUTLINED_FUNCTION_58_11(v24, v25, v26, v27, v28, v29, v30, v31, v208, v218, v228, v237, v246, v257, v267, v278, v288, v11, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, MEMORY[0x277D84F90], v319.Description, v12);
  v34 = sub_25BAA51C8(v32, v33);
  v41 = OUTLINED_FUNCTION_83_8(v34, &unk_286D447D8, v35, v36, v37, v38, v39, v40, v209, v219, v229, v238, v247, v258, v268, v279, v289, v298, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v41, v42, v43, v44, v45);
  sub_25BA9C2C8(&v320);
  v46 = *(v10 + 16);
  v47 = *(v46 + 152);
  v48 = *(v47 + 16);
  if (!v48)
  {
    OUTLINED_FUNCTION_60_10();
    v323 = 0;
    LOBYTE(v326) = v197;
    v328 = 4;
    goto LABEL_39;
  }

  Description = v319.Description;
  v50 = *(v47 + 8 * v48 + 24);
  v51 = *(v46 + 160);
  OUTLINED_FUNCTION_9_51();
  v319.Kind = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_25BCBAE50;
  *(v52 + 32) = v50;
  LOBYTE(v309) = v51;
  v60 = OUTLINED_FUNCTION_58_11(v52, v53, v54, v55, v56, v57, v58, v59, v210, v220, v230, v239, v248, v259, v269, v280, v290, v299, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind, v319.Description, v320);
  v62 = sub_25BAA51C8(v60, v61);
  v70 = OUTLINED_FUNCTION_83_8(v62, v63, v64, v65, v66, v67, v68, v69, v211, v221, v231, v240, v249, v260, v270, v281, v291, v300, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v70, v52, v71, v72, v73);
  sub_25BA9C2C8(&v320);
  v320 = v319.Description;
  v74 = sqrt(_:)(&v319.Description, &v320);
  OUTLINED_FUNCTION_80_8(v74, v75, v76, v77, v78, v79, v80, v81, v212, v222, v232, v241, v250, v261, v271, v282, v292, v301, v307, v308, v309, v310, v311, Description);
  static Tensor./ infix(_:_:)();

  v82 = v320;
  if (a5)
  {
    v252 = v320;
    v83 = *(v10 + 16);
    v84 = *(v302 + 16);
    v85 = *(v84 + 160);
    if (*(v83 + 160) != v85)
    {
      v198 = OUTLINED_FUNCTION_65_7();
      v200 = v199;
      LOBYTE(v319.Description) = v85;
      v201 = sub_25BC8FACC();
      v320 = v198;
      v321 = v200;
      v322 = xmmword_25BCD2360;
      LOBYTE(v323) = 0;
      v324 = v201;
      v325 = v202;
      v326 = xmmword_25BCD2370;
      v327 = 0;
      v328 = 0;

      OUTLINED_FUNCTION_17_42();
      goto LABEL_43;
    }

    if (!sub_25BAA80BC(*(v83 + 160), &unk_286D42270))
    {
      v203 = OUTLINED_FUNCTION_65_7();
      v205 = v204;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
      v320 = v203;
      v321 = v205;
      OUTLINED_FUNCTION_14_40();

      OUTLINED_FUNCTION_17_42();
      goto LABEL_43;
    }

    v320 = v10;
    v86 = Tensor.scalarType.getter();
    v87 = dynamic_cast_existential_1_unconditional(v86);
    v89 = *(v83 + 152);
    v92 = *(v89 + 16);
    v91 = v89 + 16;
    v90 = v92;
    if (v92 <= 1)
    {
      v321 = 0;
      *&v322 = 0;
      v320 = -2;
      BYTE8(v322) = -1;
      v324 = 0;
      v325 = 0;
      v323 = v90;
      LOBYTE(v326) = -1;
    }

    else
    {
      v273 = a6;
      v93 = *(v84 + 152);
      v96 = *(v93 + 16);
      v95 = v93 + 16;
      v94 = v96;
      if (v96 > 1)
      {
        v97 = v87;
        v98 = v88;
        v99 = *(v91 + 8 * v90);
        v100 = *(v95 + 8 * v94);
        v101 = OUTLINED_FUNCTION_31();
        v101[1] = xmmword_25BCBAE70;
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        v312 = v101;
        v102 = *(v98 + 8);
        v103 = *(v102 + 32);

        v104 = OUTLINED_FUNCTION_34_20();
        v103(v104);
        OUTLINED_FUNCTION_9_51();
        OUTLINED_FUNCTION_87_5(v105, v106, v107, v108, v109, v110, v111, v112, v213, v13, 2, 4, v252, v12, v273, v283, v293, v302, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind, v319.Description, v320);
        Tensor.bandPart(lowerBandCount:upperBandCount:)(0, -1, &v320);

        v113 = v320;
        v114 = OUTLINED_FUNCTION_31();
        v114[1] = v234;
        *(v114 + 4) = v99;
        *(v114 + 5) = v100;
        v312 = v114;
        v115 = OUTLINED_FUNCTION_34_20();
        v103(v115);
        OUTLINED_FUNCTION_9_51();
        OUTLINED_FUNCTION_87_5(v116, v117, v118, v119, v120, v121, v122, v123, v214, v224, v234, *(&v234 + 1), v253, v263, v274, v284, v294, v303, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind, v319.Description, v320);
        Tensor.bandPart(lowerBandCount:upperBandCount:)(0, 0, &v320);

        v319.Description = v320;
        OUTLINED_FUNCTION_80_8(v124, v125, v126, v127, v128, v129, v130, v131, v215, v225, v113, v243, v254, v264, v275, v285, v295, v304, v307, v308, v309, v310, v311, v113);
        static Tensor.- infix(_:_:)();
        v319.Description = v320;
        v132 = OUTLINED_FUNCTION_34_20();
        v103(v132);
        switch(v309)
        {
          case 8:
            v315 = MEMORY[0x277D84DC8];
            OUTLINED_FUNCTION_72_9();
            goto LABEL_16;
          case 9:
            v315 = &type metadata for BFloat16;
            v316 = sub_25BB18AFC();
            LOWORD(v312) = -129;
            goto LABEL_16;
          case 10:
            v134 = OUTLINED_FUNCTION_34_20();
            v103(v134);
            OUTLINED_FUNCTION_9_51();
            v143 = OUTLINED_FUNCTION_58_11(v135, v136, v137, v138, v139, v140, v141, v142, v216, v226, v235, v244, v255, v265, v276, v286, v296, v305, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, MEMORY[0x277D84F90], v319.Description, v320);
            sub_25BAA51C8(v143, v144);
            Tensor.init(shape:coercingScalars:scalarType:on:)(&v319.Kind, &unk_286D44800, &v310 + 7, &v312, &v307);
            sub_25BA9C2C8(&v320);
            goto LABEL_17;
          case 11:
            v316 = &protocol witness table for Double;
            v315 = MEMORY[0x277D839F8];
            v312 = 0xFFEFFFFFFFFFFFFFLL;
LABEL_16:
            OUTLINED_FUNCTION_9_51();
            Tensor.init(coercing:scalarType:on:)(&v312, v97, v102, &v320, v145, v146, v147, v148, v216, v226, v235, v244, v255, v265, v276, v286, v296, v305, v307, v308, v309, v310);
LABEL_17:
            v12 = v262;
            v133 = v302;
            static Tensor.* infix(_:_:)();

            v13 = v320;
            v82 = v251;
            a6 = v272;
            goto LABEL_18;
          default:
            v320 = v97;
LABEL_42:
            v321 = v102;
            v322 = 0uLL;
            LOBYTE(v323) = -1;
            v324 = &unk_286D42270;
            LOBYTE(v325) = 1;
            v328 = 3;
            OUTLINED_FUNCTION_17_42();
            goto LABEL_43;
        }
      }

      OUTLINED_FUNCTION_60_10();
      v323 = v206;
      LOBYTE(v326) = v207;
    }

    v328 = 4;

LABEL_39:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
LABEL_43:
    sub_25BADDD28();
  }

  v133 = v302;
LABEL_18:
  v319.Description = v82;
  v320 = v10;
  v312 = v133;
  static Tensor.* infix(_:_:)();
  matmul(_:transposed:_:transposed:)(&v320, 0, &v319, 1, &v319.Description);

  v149 = MEMORY[0x277D84F90];
  if (v13)
  {
    v320 = v13;
    if (Tensor.scalarType.getter() == MEMORY[0x277D839B0])
    {
      v312 = *(*(v13 + 16) + 152);
      v102 = *(v283 + 8);
      v159 = *(v102 + 32);

      sub_25BCB617C();
      v159(&v309, v293, v102);
      OUTLINED_FUNCTION_9_51();
      Tensor.init(zeros:scalarType:on:)(&v312);
      v159((&v310 + 7), v293, v102);
      switch(HIBYTE(v310))
      {
        case 8:
          v315 = MEMORY[0x277D84DC8];
          OUTLINED_FUNCTION_72_9();
          goto LABEL_27;
        case 9:
          v315 = &type metadata for BFloat16;
          v316 = sub_25BB18AFC();
          LOWORD(v312) = -129;
          goto LABEL_27;
        case 0xA:
          (v159)((&v308 + 7));
          OUTLINED_FUNCTION_9_51();
          v168 = OUTLINED_FUNCTION_58_11(v160, v161, v162, v163, v164, v165, v166, v167, v213, v223, v233, v242, v251, v262, v272, v283, v293, v302, v307, v308, v149, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind, v319.Description, v320);
          sub_25BAA51C8(v168, v169);
          Tensor.init(shape:coercingScalars:scalarType:on:)(&v309, &unk_286D44828, &v308 + 7, &v312, &v311);
          sub_25BA9C2C8(&v320);
          goto LABEL_28;
        case 0xB:
          v316 = &protocol witness table for Double;
          v315 = MEMORY[0x277D839F8];
          v312 = 0xFFEFFFFFFFFFFFFFLL;
LABEL_27:
          OUTLINED_FUNCTION_9_51();
          Tensor.init(coercing:scalarType:on:)(&v312, v293, v102, &v320, v170, v171, v172, v173, v213, v223, v233, v242, v251, v262, v272, v283, v293, v302, v307, v308, v309, v310);
LABEL_28:
          v320 = v13;
          v174 = Tensor.init(BOOLeanLiteral:)(&v312);
          v182 = OUTLINED_FUNCTION_58_11(v174, v175, v176, v177, v178, v179, v180, v181, v217, v227, v236, v245, v256, v266, v277, v287, v297, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319.Kind, v319.Description, v320);
          static Tensor..!= infix(_:_:)(v184, v182, v183);

          Tensor.replacing(with:where:)(&v311, &v309, &v320);

          v319.Kind = v319.Description;
          v309 = v320;
          static Tensor.+ infix(_:_:)();

          v158 = v312;
          goto LABEL_29;
        default:
          v320 = v293;
          goto LABEL_42;
      }
    }

    v312 = v319.Description;
    v319.Kind = v13;

    OUTLINED_FUNCTION_80_8(v150, v151, v152, v153, v154, v155, v156, v157, v213, v223, v233, v242, v251, v262, v272, v283, v293, v302, v307, v308, v309, v310, v311, v312);
    static Tensor.+ infix(_:_:)();

    v158 = v320;
  }

  else
  {
    v158 = v319.Description;
  }

LABEL_29:
  v312 = v158;

  v193 = OUTLINED_FUNCTION_80_8(v185, v186, v187, v188, v189, v190, v191, v192, v213, v223, v233, v242, v251, v262, v272, v283, v293, v302, v307, v308, v309, v310, v311, v312);
  softmax(_:alongAxis:)(v193, -1, v194);

  v195 = v320;
  if (a7 > 0.0)
  {
    v319.Kind = v320;

    Tensor.droppingOut(withProbability:seed:)(0, 1, &v312, a7);

    v195 = v312;
  }

  v312 = v195;
  v319.Kind = v12;

  matmul(_:transposed:_:transposed:)(&v312, 0, &v319, 0, a6);
}

uint64_t sub_25BC65814@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(v7, __src, sizeof(v7));
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v9 = *(a2 + 32);
  return sub_25BC60CC0(v8, a3);
}

uint64_t sub_25BC65880(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 156))
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

uint64_t sub_25BC658C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 156) = 1;
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

    *(result + 156) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC65938(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25BC65978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, ValueMetadata a58)
{

  return matmul(_:transposed:_:transposed:)(&a37, 0, &a58, 1, &a57);
}

void OUTLINED_FUNCTION_51_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{

  Tensor.reshaped(to:)(&a57, &a37);
}

uint64_t sub_25BC65A14(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  sub_25BAF99E8(v2[6]);
  sub_25BB50DF0();
  v8 = sub_25BCB672C();

  v10 = v2[3];
  v9 = v2[4];
  sub_25BCB617C();
  v11 = sub_25BC65D74(v7, v8, v10, v9, a1);

  *(v5 + 32) = v11;
  return v5;
}

uint64_t sub_25BC65B38(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  sub_25BAF99E8(v2[6]);
  sub_25BB50DF0();
  v11 = sub_25BCB672C();

  v13 = v2[3];
  v12 = v2[4];
  sub_25BCB617C();
  v14 = sub_25BC65DF8(v8, v10, v11, v13, v12, a1);

  *(v5 + 32) = v14;
  return v5;
}

uint64_t sub_25BC65C98(uint64_t a1)
{
  result = sub_25BC65D20(&qword_27FBB3FC0, type metadata accessor for TileGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC65CDC(uint64_t a1)
{
  result = sub_25BC65D20(&qword_27FBB3FC8, type metadata accessor for TileOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC65D20(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC65D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 tileTensor:a1 withMultiplier:a2 name:v8];

  return v9;
}

id sub_25BC65DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 tileGradientWithIncomingGradientTensor:a1 sourceTensor:a2 withMultiplier:a3 name:v10];

  return v11;
}

uint64_t sub_25BC65E84()
{
  OUTLINED_FUNCTION_3_7();
  v3 = *(v0 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(swift_allocObject() + 16) = xmmword_25BCBB6D0;
  v4 = v2 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  switch(v3)
  {
    case 1:
      if (v4)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    case 2:
      if (v4)
      {
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
        v11 = *(v2 + 32);
      }

      v12 = v11;
      sub_25BAF99E8(*(v0 + 136));
      sub_25BB50DF0();
      v2 = sub_25BCB672C();

      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      sub_25BCB617C();
      sub_25BB07CA4(v12, v2, v14, v13, v1, &selRef_meanOfTensor_axes_name_);

      goto LABEL_15;
    case 3:
      if (!v4)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    case 4:
      if (v4)
      {
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
        v5 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_6_56();
      OUTLINED_FUNCTION_1_71();
      v6 = OUTLINED_FUNCTION_0_85();
      sub_25BB2B6EC(v6, v7, v8, v9, v10);
      goto LABEL_15;
    default:
      if (v4)
      {
LABEL_18:
        OUTLINED_FUNCTION_4_4();
      }

      else
      {
LABEL_13:
        v15 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_6_56();
      OUTLINED_FUNCTION_1_71();
      v16 = OUTLINED_FUNCTION_0_85();
      sub_25BC66358(v16, v17, v18, v19, v20, v21);
LABEL_15:

      return OUTLINED_FUNCTION_3_56();
  }
}

uint64_t sub_25BC66060()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(swift_allocObject() + 16) = xmmword_25BCBB6D0;
  v3 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_4_4();
    goto LABEL_6;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(v1 + 32);
LABEL_6:
  OUTLINED_FUNCTION_7_56();
  v5 = OUTLINED_FUNCTION_0_85();
  sub_25BB07CA4(v5, v6, v7, v8, v9, v10);

  return OUTLINED_FUNCTION_3_56();
}

uint64_t sub_25BC66148()
{
  OUTLINED_FUNCTION_3_7();
  v2 = *(v0 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(swift_allocObject() + 16) = xmmword_25BCBB6D0;
  v3 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_1_6();
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_4_4();
    goto LABEL_6;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(v1 + 32);
LABEL_6:
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_1_71();
  v5 = OUTLINED_FUNCTION_0_85();
  sub_25BC66358(v5, v6, v7, v8, v9, v10);

  return OUTLINED_FUNCTION_3_56();
}

uint64_t sub_25BC66238(uint64_t a1)
{
  result = sub_25BC66304(&qword_27FBB49D8, type metadata accessor for LogicalReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC6627C(uint64_t a1)
{
  result = sub_25BC66304(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC662C0(uint64_t a1)
{
  result = sub_25BC66304(qword_28154E988, type metadata accessor for ReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66304(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC66358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  sub_25BB50DF0();
  v9 = sub_25BCB672C();

  v10 = sub_25BCB633C();

  v11 = [a5 *a6];

  return v11;
}

uint64_t sub_25BC6640C()
{
  result = 268435472;
  switch(*v0)
  {
    case 1:
      result = 536870928;
      break;
    case 2:
      result = 536870944;
      break;
    case 3:
      result = 536870976;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 16;
      break;
    case 6:
      result = 32;
      break;
    case 7:
      result = 64;
      break;
    case 8:
      return result;
    case 9:
      result = 2415919120;
      break;
    case 0xA:
      result = 268435488;
      break;
    case 0xB:
      result = sub_25BCB74CC();
      __break(1u);
      break;
    case 0xC:
      result = 2147483656;
      break;
    default:
      result = 536870920;
      break;
  }

  return result;
}

uint64_t sub_25BC66518()
{
  if (*(v0 + 130))
  {
    return 0x6E696D677261;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t sub_25BC66544()
{
  if (*(v0 + 130))
  {
    result = 29295;
  }

  else
  {
    result = 6581857;
  }

  *(v0 + 130);
  return result;
}

uint64_t sub_25BC665CC()
{
  sub_25BA9D63C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC66624()
{
  v0 = sub_25BCB761C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC66670(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BC666E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC66624();
  *a2 = result;
  return result;
}

uint64_t sub_25BC66710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BABCCC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC6674C()
{
  v1 = v0[17];

  v2 = v0[18];
  v3 = v0[19];

  return sub_25BA9D148(v2);
}

uint64_t sub_25BC6677C(char a1)
{
  if (a1)
  {
    return 0x6E696D677261;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t sub_25BC667A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25BAFB820();
}

uint64_t sub_25BC667C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC66974();
  *a2 = result;
  return result;
}

uint64_t sub_25BC66800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC6677C(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_25BC66840(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = *a8;
  v10 = *(a8 + 8);
  *(v8 + 130) = a4 & 1;
  *(v8 + 136) = a6;
  if (!a3)
  {
    a1 = sub_25BC7C814(a4 & 1);
  }

  return OUTLINED_FUNCTION_0_86(a1, a2, a3);
}

uint64_t sub_25BC6689C()
{
  sub_25BA9D63C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC668F4()
{
  OUTLINED_FUNCTION_5_58();
  sub_25BCB625C();

  v1 = *(v0 + 48);
  sub_25BCB79EC();
  return MEMORY[0x25F878200](*(v0 + 136));
}

uint64_t sub_25BC66974()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC669C4(char a1)
{
  if (a1)
  {
    return 29295;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_25BC66A0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC66974();
  *a2 = result;
  return result;
}

uint64_t sub_25BC66A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC669C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC66A88()
{
  sub_25BA9D63C();
  v1 = *(v0 + 136);

  return swift_deallocClassInstance();
}

_BYTE *sub_25BC66AF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BC66BCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC66CD8()
{
  result = qword_27FBB7550;
  if (!qword_27FBB7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7550);
  }

  return result;
}

unint64_t sub_25BC66D60()
{
  result = qword_27FBB7568;
  if (!qword_27FBB7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7568);
  }

  return result;
}

unint64_t sub_25BC66DE8()
{
  result = qword_27FBB7580;
  if (!qword_27FBB7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7580);
  }

  return result;
}

void sub_25BC66E3C()
{
  OUTLINED_FUNCTION_5_58();
  sub_25BCB625C();

  v2 = *(v0 + 48);
  sub_25BCB79EC();
  v3 = *(v0 + 136);

  sub_25BAD4C78(v1, v3);
}

uint64_t sub_25BC66ED4(uint64_t a1)
{
  result = sub_25BC66FDC(&qword_27FBB49D8, type metadata accessor for LogicalReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66F2C(uint64_t a1)
{
  result = sub_25BC66FDC(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66F84(uint64_t a1)
{
  result = sub_25BC66FDC(qword_28154DD58, type metadata accessor for BaseReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC66FDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SourceLocation.file.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t SourceLocation.file.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SourceLocation.function.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return result;
}

uint64_t SourceLocation.function.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  return result;
}

uint64_t sub_25BC670FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25BC67130(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC67150(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

id sub_25BC671A0()
{
  [v0 commit];

  return [v0 waitUntilCompleted];
}

id sub_25BC671E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  result = [v6 blitCommandEncoder];
  if (result)
  {
    v13 = result;
    [result copyFromBuffer:a1 sourceOffset:a2 toBuffer:a3 destinationOffset:a4 size:a5];
    [v13 endEncoding];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC6728C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = sub_25BCB54EC();
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 24) > 0xCu || (OUTLINED_FUNCTION_16_0(), v24))
  {
    OUTLINED_FUNCTION_21();
    v33 = 56;
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    sub_25BB0EC04(a1, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      if (*(*(v2 + 16) + 16))
      {
        v25 = *(v2 + 16);
        sub_25BCB617C();
      }

      v26 = sub_25BCB50AC();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v26);
      sub_25BCB54FC();
      if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
      {
        sub_25BAA6F5C(v15, &qword_27FBB4080, &qword_25BCBC638);
      }
    }

    else
    {
      (*(v19 + 32))(v23, v15, v16);
    }

    v27 = sub_25BCB54CC();
    sub_25BCB54BC();
    sub_25BCB54DC();
    v28 = *(v2 + 40);
    v35 = *(v2 + 24);
    v29 = sub_25BBF4F40();
    v34 = *(v2 + 24);
    v30 = sub_25BBF4F40();
    v36[0] = 0;
    v36[1] = v27;
    v37 = v28;
    v38 = v29;
    v39 = 0;
    v40 = v30;
    v41 = 1065353216;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FBB7588, &qword_25BCD2A10);
    swift_allocObject();
    v31 = sub_25BC67FE0(v36, v2);

    (*(v19 + 8))(v23, v16);
    return v31;
  }

  return result;
}

uint64_t sub_25BC675C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_8_53(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17_43();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_73();
  v19(v18);
  if (v36 > 0xCu)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_0();
  if (v20)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(v4, v5);
  OUTLINED_FUNCTION_3_58();
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_9_52();
    v22(v21);
    if (!*(v35 + 16))
    {
    }

    v23 = sub_25BCB50AC();
    OUTLINED_FUNCTION_12_43(v23);
    OUTLINED_FUNCTION_3_58();
    if (!v20)
    {
      sub_25BAA6F5C(v5, &qword_27FBB4080, &qword_25BCBC638);
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_11_48();
    v25(v24);
  }

  v26 = sub_25BCB54AC();
  if (v26 < 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_13_44();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_46();
  v29 = sub_25BB0E6E4(sub_25BB0EC74, v27, 0, v28);
  if ((v29 & 1) == 0)
  {
    MEMORY[0x28223BE20](v29);
    OUTLINED_FUNCTION_2_71();
    v30 = OUTLINED_FUNCTION_15_42();
    v31(v30);
    v32 = OUTLINED_FUNCTION_14_41();
    return v33(v32);
  }

  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
LABEL_15:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC6789C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_8_53(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  OUTLINED_FUNCTION_6_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  OUTLINED_FUNCTION_6_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17_43();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_1_73();
  v19(v18);
  if (v36 > 0xCu)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_16_0();
  if (v20)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(v4, v5);
  OUTLINED_FUNCTION_3_58();
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_9_52();
    v22(v21);
    if (!*(v35 + 16))
    {
    }

    v23 = sub_25BCB50AC();
    OUTLINED_FUNCTION_12_43(v23);
    OUTLINED_FUNCTION_3_58();
    if (!v20)
    {
      sub_25BAA6F5C(v5, &qword_27FBB4080, &qword_25BCBC638);
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_11_48();
    v25(v24);
  }

  v26 = sub_25BCB54AC();
  if (v26 < 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_13_44();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_16_46();
  v29 = sub_25BB0E6E4(sub_25BC68120, v27, 0, v28);
  if ((v29 & 1) == 0)
  {
    MEMORY[0x28223BE20](v29);
    OUTLINED_FUNCTION_2_71();
    v30 = OUTLINED_FUNCTION_15_42();
    v31(v30);
    v32 = OUTLINED_FUNCTION_14_41();
    return v33(v32);
  }

  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
LABEL_15:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC67B78@<X0>(uint64_t a1@<X3>, uint64_t (*a2)(_DWORD *)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v16 = a4;
  v17 = a1;
  v20 = a3;
  v21 = a2;
  v19 = a5;
  v6 = sub_25BCB54EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BCB6F2C();
  (*(a6 + 8))(&v24, v16, a6);
  v11 = v24;
  (*(v7 + 16))(v10, v17, v6);
  v12 = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  v23 = v11;
  v13 = sub_25BBF4F40();
  v22 = v11;
  v14 = sub_25BBF4F40();
  (*(v7 + 8))(v10, v6);
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v25[0] = 0;
  v25[1] = v12;
  v34 = v18;
  v35 = v13;
  v36 = 0;
  v37 = v14;
  v38 = 1065353216;
  return v21(v25);
}

uint64_t sub_25BC67D8C@<X0>(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t *)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v16 = a4;
  v17 = a1;
  v20 = a3;
  v21 = a2;
  v19 = a5;
  v6 = sub_25BCB54EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25BCB6F2C();
  (*(a6 + 8))(&v24, v16, a6);
  v11 = v24;
  (*(v7 + 16))(v10, v17, v6);
  v12 = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  v23 = v11;
  v13 = sub_25BBF4F40();
  v22 = v11;
  v14 = sub_25BBF4F40();
  (*(v7 + 8))(v10, v6);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  LODWORD(v24) = 0;
  HIDWORD(v24) = v12;
  v33 = v18;
  v34 = v13;
  v35 = 0;
  v36 = v14;
  v37 = 1065353216;
  return v21(&v24);
}

uint64_t sub_25BC67F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a8;
  v10[6] = a9;
  v10[7] = a2;
  v10[8] = a3;
  v10[9] = a1;
  return sub_25BC6789C(sub_25BC680EC, v10, a6, a7);
}

uint64_t sub_25BC67FE0(const void *a1, uint64_t a2)
{
  sub_25BB1A8BC(__src);
  memcpy((v2 + 16), __src, 0xB8uLL);
  memcpy(__dst, a1, 0xB0uLL);
  __dst[22] = a2;
  nullsub_1(__dst, v5);
  memcpy(v9, (v2 + 16), sizeof(v9));
  memcpy((v2 + 16), __dst, 0xB8uLL);
  sub_25BAA6F5C(v9, &qword_27FBB40B8, &qword_25BCBCAA0);
  return v2;
}

uint64_t sub_25BC681AC()
{
  sub_25BC6813C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC6821C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BC682B0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](a1);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v14 = *(*v13 + 88);
  swift_beginAccess();
  v15 = v6[2];
  v15(v12, a1 + v14, v5);
  v16 = *(*a2 + 88);
  swift_beginAccess();
  v15(v9, a2 + v16, v5);
  v17 = sub_25BCB630C();
  v18 = v6[1];
  v18(v9, v5);
  v18(v12, v5);
  return v17 & 1;
}

uint64_t sub_25BC68470()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v0 = 0;
    return v0 & 1;
  }

  v0 = sub_25BCB630C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0 & 1;
}

uint64_t sub_25BC68504(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakLoadStrong();
  v3 = *(a2 + 16);
  sub_25BCB6E8C();
  sub_25BCB6E9C();
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC6857C(uint64_t a1)
{
  sub_25BCB79CC();
  sub_25BC68504(v3, a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC685D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_25BC68470();
}

uint64_t sub_25BC685F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25BCB79CC();
  sub_25BC68504(v6, a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC68644()
{
  v0 = *sub_25BC6813C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC686B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BC68750(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v12 = MEMORY[0x277D84F90];
  sub_25BAC5590();
  v4 = v12;
  for (i = (a1 + 32); ; ++i)
  {
    v10 = *i;

    sub_25BC68C30(&v10, &v11);
    if (v2)
    {
      break;
    }

    v2 = 0;

    v7 = v11;
    v12 = v4;
    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      sub_25BAC5590();
      v4 = v12;
    }

    *(v4 + 16) = v8 + 1;
    *(v4 + 8 * v8 + 32) = v7;
    if (!--v3)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC68948()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25BCBAE50;
  *(v2 + 32) = v1;

  return v2;
}

uint64_t sub_25BC689A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);

  v5 = sub_25BAB6A04();

  if (!v5)
  {
    v7 = *(v3 + 16);

    v8 = sub_25BAB3058();
    v10 = v9;

    if (v8)
    {
      type metadata accessor for TrackedOperation();
      OUTLINED_FUNCTION_30_0();
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      *(v11 + 24) = v10;
      sub_25BAA51C8(*(v3 + 16) + 168, v25);

      swift_unknownObjectRetain();
      v12 = sub_25BAD259C();

      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v24);

      v13 = v24[10];

      sub_25BAA4AF4(v24);
      type metadata accessor for TensorRepresentation();
      v14 = swift_allocObject();
      LOBYTE(v24[0]) = 1;
      v15 = sub_25BC102F4(v11, 0, v25, 0x100000000, v13, v12, v14);
      v16 = *(v3 + 16);

      v17 = sub_25BA9BEA8();
      v19 = v18;

      if (v17)
      {

        swift_unknownObjectRetain();
        v20 = sub_25BA928B4();
        [v20 lock];

        v21 = OUTLINED_FUNCTION_78_10();
        sub_25BC5F7F0(v21, v22, v19);
        [*(v15 + 224) unlock];
        swift_unknownObjectRelease_n();
      }

      type metadata accessor for TensorHandle();
      v23 = OUTLINED_FUNCTION_15_7();
      *(v23 + 16) = v15;

      sub_25BAA6EB0();

      swift_unknownObjectRelease();

      v3 = v23;
    }

    else
    {
      v25[0] = v3;
      sub_25BC39C2C(v24);

      v3 = v24[0];
    }
  }

  *a2 = v3;
  return result;
}

uint64_t sub_25BC68BF4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16))
  {
    return OUTLINED_FUNCTION_5_38(*(result + 32), a2);
  }

  __break(1u);
  return result;
}

id sub_25BC68C30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = sub_25BAC4018();
  v8 = sub_25BAC40D8(v26, v7);
  v9 = *(v5 + 16);

  if (v8)
  {
    v10 = sub_25BAB6A04();

    if (v10)
    {

LABEL_11:
      *a2 = v5;
      return result;
    }

    v12 = *(v5 + 16);
  }

  v13 = sub_25BAB3058();
  v15 = v14;

  if (!v13)
  {
    v27[0] = v5;
    result = sub_25BC39C2C(v26);
    v5 = v26[0];
    goto LABEL_11;
  }

  type metadata accessor for TrackedOperation();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_25BAA51C8(*(v5 + 16) + 168, v27);

  swift_unknownObjectRetain();
  v17 = sub_25BAD259C();

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v26);

  v18 = v26[10];

  sub_25BAA4AF4(v26);
  type metadata accessor for TensorRepresentation();
  v19 = swift_allocObject();
  LOBYTE(v26[0]) = 1;
  v20 = sub_25BC102F4(v16, 0, v27, 0x100000000, v18, v17, v19);
  v21 = *(v5 + 16);

  v22 = sub_25BA9BEA8();
  v24 = v23;

  if (!v22)
  {
LABEL_9:
    type metadata accessor for TensorHandle();
    v5 = swift_allocObject();
    *(v5 + 16) = v20;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v25 = sub_25BA928B4();
  [v25 lock];

  sub_25BC5F7F0(v20, v22, v24);
  if (!v3)
  {
    [*(v20 + 224) unlock];
    swift_unknownObjectRelease_n();

    goto LABEL_9;
  }

  result = [*(v20 + 224) unlock];
  __break(1u);
  return result;
}

uint64_t (*sub_25BC68ED4(uint64_t a1))(void)
{
  v1 = *(a1 + 16);
  *(OUTLINED_FUNCTION_15_7() + 16) = v1;
  return sub_25BC6F834;
}

uint64_t (*sub_25BC68F38())@<X0>(uint64_t *a1@<X8>)
{
  sub_25BC68ED4(*v0);
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25BC6F834;
  *(v3 + 24) = v2;
  return sub_25BC6F7FC;
}

uint64_t *sub_25BC68FA0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_25BCB68CC();
  OUTLINED_FUNCTION_49();
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return &v3;
}

void sub_25BC6903C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11_1(TupleTypeMetadata2);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_0(&v72 - v9);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v91 = v15 - v16;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_0(&v72 - v18);
  v86 = swift_getTupleTypeMetadata2();
  v84 = sub_25BCB6E8C();
  v19 = OUTLINED_FUNCTION_2(v84);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v85 = v24 - v25;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19_0(&v72 - v27);
  v96 = MEMORY[0x277D84FA0];
  v95 = sub_25BCB604C();
  sub_25BCB618C();
  v83 = sub_25BCB68CC();
  sub_25BCB679C();
  v94[7] = sub_25BCB604C();
  v72 = v1;
  sub_25BCB618C();
  v79 = sub_25BCB68CC();
  sub_25BCB679C();
  v28 = 0;
  v74 = 0;
  v76 = v5;
  v29 = v5 + 64;
  v30 = 1 << *(v5 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v5 + 64);
  v33 = (v30 + 63) >> 6;
  v92 = v11 + 16;
  v88 = (v11 + 32);
  v82 = (v21 + 32);
  v75 = v11;
  v77 = (v11 + 8);
  v73 = v3;
  v78 = v29;
  if (v32)
  {
    while (1)
    {
      v34 = v28;
      v35 = v86;
      v36 = v85;
LABEL_10:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v34 << 6);
      v40 = v76;
      v41 = v75;
      v42 = v89;
      (*(v75 + 16))(v89, *(v76 + 48) + *(v75 + 72) * v39, v3);
      v43 = *(*(v40 + 56) + 8 * v39);
      v44 = *(v35 + 48);
      (*(v41 + 32))(v36, v42, v3);
      *(v36 + v44) = v43;
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v35);

      v37 = v87;
LABEL_11:
      (*v82)(v37, v36, v84);
      if (__swift_getEnumTagSinglePayload(v37, 1, v35) == 1)
      {

        v93[0] = v95;
        OUTLINED_FUNCTION_7_2();
        swift_getWitnessTable();
        sub_25BCB615C();
        OUTLINED_FUNCTION_10_16();
        return;
      }

      v45 = *(v37 + *(v35 + 48));
      v46 = v91;
      (*v88)(v91, v37, v3);
      OUTLINED_FUNCTION_66_10();
      v48 = *v47;
      (*v47)(v89, v46, v3);
      sub_25BCB687C();
      v49 = *(v45 + 16);
      v50 = sub_25BAC4018();
      LOBYTE(v46) = sub_25BAC40D8(v93, v50);
      v51 = *(v45 + 16);

      v90 = v48;
      if ((v46 & 1) == 0)
      {
        goto LABEL_16;
      }

      v52 = sub_25BAB6A04();

      if (!v52)
      {
        break;
      }

      v53 = v45;
LABEL_21:
      v69 = *(TupleTypeMetadata2 + 48);
      v70 = v80;
      v71 = v91;
      OUTLINED_FUNCTION_66_10();
      v90();
      *(v70 + v69) = v53;
      sub_25BCB687C();

      (*v77)(v71, v3);
      v29 = v78;
      if (!v32)
      {
        goto LABEL_5;
      }
    }

    v54 = *(v45 + 16);

LABEL_16:
    v55 = sub_25BAB3058();
    v57 = v56;

    if (v55)
    {
      type metadata accessor for TrackedOperation();
      OUTLINED_FUNCTION_30_0();
      v58 = swift_allocObject();
      *(v58 + 16) = v55;
      *(v58 + 24) = v57;
      sub_25BAA51C8(*(v45 + 16) + 168, v94);

      swift_unknownObjectRetain();
      v59 = sub_25BAD259C();

      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v93);

      v60 = v93[10];

      sub_25BAA4AF4(v93);
      type metadata accessor for TensorRepresentation();
      v61 = swift_allocObject();
      LOBYTE(v93[0]) = 1;
      v62 = sub_25BC102F4(v58, 0, v94, 0x100000000, v60, v59, v61);
      v63 = *(v45 + 16);

      v64 = sub_25BA9BEA8();
      v66 = v65;

      if (v64)
      {

        swift_unknownObjectRetain();
        v67 = sub_25BA928B4();
        [v67 lock];

        v68 = v74;
        sub_25BC5F7F0(v62, v64, v66);
        v74 = v68;
        [*(v62 + 224) unlock];
        swift_unknownObjectRelease_n();
      }

      type metadata accessor for TensorHandle();
      v53 = OUTLINED_FUNCTION_15_7();
      *(v53 + 16) = v62;

      sub_25BAA6EB0();
      swift_unknownObjectRelease();

      v3 = v73;
    }

    else
    {
      v94[0] = v45;
      sub_25BC39C2C(v93);
      v53 = v93[0];
    }

    goto LABEL_21;
  }

LABEL_5:
  v35 = v86;
  v36 = v85;
  v37 = v87;
  while (1)
  {
    v34 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      __swift_storeEnumTagSinglePayload(v85, 1, 1, v86);
      v32 = 0;
      goto LABEL_11;
    }

    v32 = *(v29 + 8 * v34);
    ++v28;
    if (v32)
    {
      v28 = v34;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_25BC6985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_32_25();
  OUTLINED_FUNCTION_1_2();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a4;
  v7[4] = v5;
  OUTLINED_FUNCTION_57_10();
  sub_25BCB617C();
  return a4;
}

uint64_t sub_25BC698C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v26 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = v25 - v8;
  v10 = sub_25BCB6E8C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - v12;
  v35 = sub_25BCB604C();
  v14 = *(a1 + 16);
  v25[2] = sub_25BCB68CC();
  sub_25BCB679C();
  v31 = a2;
  *&v30 = a1;
  v15 = sub_25BCB68CC();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_25BC6F580();
  sub_25BCB793C();
  v30 = v27;
  v19 = v15;
  v31 = v15;
  v32 = v16;
  v20 = WitnessTable;
  v33 = WitnessTable;
  v34 = v18;
  v21 = v18;
  sub_25BCB715C();
  sub_25BCB712C();
  while (1)
  {
    *&v27 = v19;
    *(&v27 + 1) = v16;
    v28 = v20;
    v29 = v21;
    sub_25BCB714C();
    sub_25BCB713C();
    if (__swift_getEnumTagSinglePayload(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v22 = *(TupleTypeMetadata2 + 48);
    v23 = *&v13[v22];
    (*(*(v26 - 8) + 32))(v9, v13);
    *&v9[v22] = v23;
    sub_25BCB687C();
  }

  v31 = v35;
  swift_getWitnessTable();
  return sub_25BCB615C();
}

uint64_t sub_25BC69B84()
{
  v1 = *v0;
  sub_25BAC2130();
  v2 = *(v1 + 80);
  sub_25BCB736C();
  v3 = sub_25BCB681C();

  return v3;
}

uint64_t sub_25BC69C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 96);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v5 + v6);
}

uint64_t (*sub_25BC69CD0(uint64_t a1))@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_25BAC2070();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 80);
  *(v6 + 32) = sub_25BACBC58;
  *(v6 + 40) = v5;
  return sub_25BC6F544;
}

uint64_t sub_25BC69D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, a2, v8);
  if (swift_dynamicCast())
  {
    *&v17 = v19;
    a3[3] = &unk_286D54CA0;
    a3[4] = &off_281E23E38;
    sub_25BC689A4(&v17, a3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB49F0, &unk_25BCC0140);
    if (swift_dynamicCast())
    {
      *&v17 = MEMORY[0x277D84FA0];
      v11 = sub_25BC68750(v19);

      a3[3] = &unk_286D54C20;
      a3[4] = sub_25BC6F704();
      *a3 = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A98, &qword_25BCC3F70);
      if (!swift_dynamicCast())
      {
        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_25BCB70FC();

        *&v17 = 0xD00000000000002DLL;
        *(&v17 + 1) = 0x800000025BCE59F0;
        swift_getDynamicType();
        v15 = sub_25BCB7C1C();
        MEMORY[0x25F876C90](v15);

        MEMORY[0x25F876C90](96, 0xE100000000000000);
        v19 = v17;
        v20 = 9;
        sub_25BCB617C();
        sub_25BA97890();
      }

      sub_25BA97060(&v19, &v17);
      v12 = v18;
      v13 = __swift_project_boxed_opaque_existential_1(&v17, v18);
      sub_25BC6A020(v13, v12, a3);
      __swift_destroy_boxed_opaque_existential_1(&v17);
    }
  }

  return (*(v6 + 8))(v10, a2);
}

uint64_t sub_25BC6A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LayerDifferentiableView();
  (*(v6 + 16))(v9, a1, a2);
  v11 = sub_25BAB07DC();
  a3[3] = v10;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v11;
  return result;
}

void valueWithPullback<A, B, C>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_18();
  v26 = v25;
  v28 = v27;
  v134 = v29;
  v133 = v30;
  v32 = v31;
  v132 = v33;
  v131 = sub_25BCB5EBC();
  v34 = OUTLINED_FUNCTION_2(v131);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19_0(v38 - v37);
  v129 = sub_25BCB5EEC();
  v39 = OUTLINED_FUNCTION_2(v129);
  v128 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19_0(v44 - v43);
  OUTLINED_FUNCTION_9();
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_19_0(v49 - v48);
  v137 = v26;
  OUTLINED_FUNCTION_9();
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  OUTLINED_FUNCTION_9();
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_19_20();
  sub_25BC69D44(v32, v28, v149);
  sub_25BC69D44(v133, v26, &v145);
  sub_25BC69D44(v134, a21, v142);
  v59 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v60 = *(v59 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_48_19(AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v140);
  v62 = OUTLINED_FUNCTION_16_2();
  v60(v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61C8, &qword_25BCC8AD0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(&v145, v147);
  v63 = OUTLINED_FUNCTION_37_24();
  OUTLINED_FUNCTION_48_19(v63);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v140);
  v64 = OUTLINED_FUNCTION_78_10();
  v60(v64);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v142, v143);
  v65 = OUTLINED_FUNCTION_37_24();
  OUTLINED_FUNCTION_48_19(v65);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v140);
  v66 = OUTLINED_FUNCTION_78_10();
  v60(v66);
  swift_dynamicCast();
  v67 = v150;
  v68 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v69 = OUTLINED_FUNCTION_52_15();
  v71 = v70(v69);
  v73 = v72;
  OUTLINED_FUNCTION_76_7();
  v74 = swift_allocObject();
  v75 = v28;
  v74[2] = v28;
  v74[3] = v26;
  v74[4] = a21;
  v74[5] = v67;
  v74[6] = a22;
  v74[7] = a23;
  v74[8] = a24;
  v74[9] = v68;
  v74[10] = v71;
  v74[11] = v73;
  v125 = v74;
  v76 = v147;
  v77 = v148;
  __swift_project_boxed_opaque_existential_1(&v145, v147);
  v78 = OUTLINED_FUNCTION_52_15();
  v80 = v79(v78);
  v82 = v81;
  OUTLINED_FUNCTION_76_7();
  v83 = swift_allocObject();
  v83[2] = v28;
  v83[3] = v26;
  v83[4] = a21;
  v83[5] = v76;
  v83[6] = a22;
  v83[7] = a23;
  v83[8] = a24;
  v83[9] = v77;
  v83[10] = v80;
  v83[11] = v82;
  v124 = v83;
  v84 = v143;
  v85 = v144;
  __swift_project_boxed_opaque_existential_1(v142, v143);
  v86 = *(v85 + 56);
  v87 = OUTLINED_FUNCTION_16_2();
  v89 = v88(v87);
  v91 = v90;
  OUTLINED_FUNCTION_76_7();
  v92 = swift_allocObject();
  v135 = v75;
  v92[2] = v75;
  v92[3] = v26;
  v92[4] = a21;
  v92[5] = v84;
  v92[6] = a22;
  v92[7] = a23;
  v92[8] = a24;
  v92[9] = v85;
  v92[10] = v89;
  v92[11] = v91;
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v129, qword_28154BE90);
  (*(v128 + 16))();
  sub_25BCB5EAC();
  v93 = OUTLINED_FUNCTION_90();
  *v93 = 0;
  v94 = sub_25BCB5EDC();
  v95 = sub_25BCB6D5C();
  v96 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v94, v95, v96, "Backpropagation (Forward Pass)", "", v93, 2u);
  OUTLINED_FUNCTION_66_10();
  v127 = sub_25BC6AF40();
  v97 = sub_25BCB6D4C();
  v98 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v94, v97, v98, "Backpropagation (Forward Pass)", "", v93, 2u);

  v99 = *(&v140[0] + 1);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12(&v146);
  v100(v130, v131);
  (*(v128 + 8))(v126, v129);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_25BCBAE50;
  *(v101 + 32) = v99;
  v102 = v150;
  v103 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v104 = *(v103 + 40);

  v105 = v104(v102, v103);
  v106 = v147;
  v107 = v148;
  __swift_project_boxed_opaque_existential_1(&v145, v147);
  v108 = (*(v107 + 40))(v106, v107);
  v139 = v105;
  sub_25BC03860(v108);
  v109 = v144;
  __swift_project_boxed_opaque_existential_1(v142, v143);
  v110 = *(v109 + 40);
  v111 = OUTLINED_FUNCTION_15();
  v113 = v112(v111, v109);
  sub_25BC03860(v113);
  v114 = sub_25BAC1988(v101, v105, v127);
  v116 = v115;

  *v132 = v99;
  sub_25BAC27B0(v149, v140);
  sub_25BAC27B0(&v145, v138);
  v117 = swift_allocObject();
  v117[2] = v135;
  v117[3] = v137;
  v117[4] = a21;
  v117[5] = a22;
  OUTLINED_FUNCTION_66_10();
  v118[6] = v120;
  v118[7] = v119;
  v118[8] = v114;
  v118[9] = v116;
  v118[10] = sub_25BC6EF70;
  v118[11] = v125;
  sub_25BA97060(v140, (v117 + 12));
  v117[17] = sub_25BC6F838;
  v117[18] = v124;
  sub_25BA97060(v138, (v117 + 19));
  v117[24] = sub_25BC6F838;
  v117[25] = v92;
  OUTLINED_FUNCTION_12_12(v149);
  v121(v136, a21);
  OUTLINED_FUNCTION_12_12(&v148);
  v122(v55, v137);
  OUTLINED_FUNCTION_12_12(&v147);
  v123(v24, v135);
  __swift_destroy_boxed_opaque_existential_1(v142);
  __swift_destroy_boxed_opaque_existential_1(&v145);
  __swift_destroy_boxed_opaque_existential_1(v149);
  OUTLINED_FUNCTION_18_41();
  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

void valueWithGradient<A, B, C>(at:_:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_18();
  v62 = v29;
  v63 = v28;
  v59 = v30;
  v60 = v31;
  v58 = v32;
  v65 = v33;
  v66 = v34;
  v64 = v35;
  v55 = a23;
  v56 = a21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v38 = OUTLINED_FUNCTION_2(TupleTypeMetadata3);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v43);
  v45 = &v54 - v44;
  valueWithPullback<A, B, C>(at:_:_:of:)(v68, v58, v59, v60, v62, v56, a22, v55, a24, a25, a26, a27, v54, v55, v56, AssociatedTypeWitness, v58, v59, v60, v61, v62, v63, v64, v65);
  v46 = v68[0];
  v47 = *(TupleTypeMetadata3 + 48);
  v48 = *(TupleTypeMetadata3 + 64);

  Tensor.init(onesLike:)(v68);
  sub_25BC6F2EC(v45, &v45[v47], &v45[v48], &v67);

  *v63 = v46;
  (*(v40 + 32))(v27, v45, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v50 = *(TupleTypeMetadata3 + 64);
  OUTLINED_FUNCTION_11_1(AssociatedTypeWitness);
  (*(v51 + 32))(v64, v27);
  OUTLINED_FUNCTION_11_1(v61);
  (*(v52 + 32))(v65, v27 + v49);
  OUTLINED_FUNCTION_11_1(v36);
  (*(v53 + 32))(v66, v27 + v50, v36);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC6AE78()
{
  OUTLINED_FUNCTION_32_25();
  v2 = v1;
  v4 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v4);
  return v0(v2);
}

uint64_t sub_25BC6AF40()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v7);

  v0 = v8;
  if (v8)
  {
    v1 = *(v8 + 24);
    if (v1)
    {

      v5 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v5);
      v3 = v0;
      goto LABEL_7;
    }

    v2 = v1 | 1;
  }

  else
  {
    v2 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v3 = sub_25BAB6EC8(v2, MEMORY[0x277D84F90]);

  v8 = v3;
  v4 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v4);
LABEL_7:
  sub_25BAA4AF4(v7);
  return v3;
}

uint64_t sub_25BC6B0D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(_OWORD *__return_ptr, uint64_t), uint64_t a8, void *a9, void (*a10)(_OWORD *__return_ptr, uint64_t), uint64_t a11, void *a12, void (*a13)(_OWORD *__return_ptr, uint64_t))
{
  v14 = a9;
  v15 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBAE50;
  *(v16 + 32) = v15;

  v17 = a5(v16);

  v18 = a9[3];
  v19 = a9[4];
  v20 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v21 = v19[3];
  v22 = v20;
  v23 = v21(v18, v19);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v22 = sub_25BABAF60(0, v23, v17);
  v14 = v25;
  v15 = v26;
  v62 = v17;
  if (v26)
  {
    v59 = v24;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    if (__OFSUB__(v15 >> 1, v14))
    {
      goto LABEL_37;
    }

    if (v30 != (v15 >> 1) - v14)
    {
      goto LABEL_38;
    }

    v28 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v28)
    {
      goto LABEL_11;
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  while (1)
  {
    sub_25BAFFB88(v22, v24, v14, v15);
    v28 = v27;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v14 = a12;
    a7(v68, v28);

    v31 = v21(v18, v19);
    v21 = a12[3];
    v32 = a12[4];
    v19 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v18 = v32 + 24;
    v33 = *(v32 + 24);
    v22 = v19;
    v34 = (v33)(v21, v32);
    v35 = v31 + v34;
    if (__OFADD__(v31, v34))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v35 < v31)
    {
      goto LABEL_35;
    }

    v37 = sub_25BABAF60(v31, v35, v62);
    v14 = v38;
    v15 = v39;
    if ((v39 & 1) == 0)
    {
      goto LABEL_14;
    }

    v60 = v36;
    a7 = v33;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x277D84F90];
    }

    v43 = *(v42 + 16);

    if (__OFSUB__(v15 >> 1, v14))
    {
      __break(1u);
LABEL_40:
      swift_unknownObjectRelease();
      v36 = v60;
LABEL_14:
      sub_25BAFFB88(v37, v36, v14, v15);
      v41 = v40;
      goto LABEL_21;
    }

    if (v43 != (v15 >> 1) - v14)
    {
      goto LABEL_40;
    }

    v41 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v41)
    {
      goto LABEL_22;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    a10(v67, v41);

    v22 = v19;
    v44 = (v33)(v21, v32);
    v45 = __OFADD__(v31, v44);
    v46 = v31 + v44;
    if (!v45)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_unknownObjectRelease();
    v24 = v59;
  }

  v47 = sub_25BBCB9F8(v46, v62);
  v49 = v48;
  v51 = v50;
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v56 = swift_dynamicCastClass();
  if (!v56)
  {
    swift_unknownObjectRelease();
    v56 = MEMORY[0x277D84F90];
  }

  v57 = *(v56 + 16);

  if (__OFSUB__(v53 >> 1, v51))
  {
    __break(1u);
  }

  else if (v57 == (v53 >> 1) - v51)
  {
    v55 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v55)
    {
      v55 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  swift_unknownObjectRelease_n();
LABEL_24:
  sub_25BAFFB88(v47, v49, v51, v53);
  v55 = v54;
LABEL_31:
  swift_unknownObjectRelease();
LABEL_32:
  a13(v66, v55);

  sub_25BB1D62C(v68, &v65);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  sub_25BB1D62C(v67, &v64);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  sub_25BB1D62C(v66, &v63);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t gradient<A>(of:)()
{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_54();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_24_25(v0);
  OUTLINED_FUNCTION_57_10();

  return OUTLINED_FUNCTION_58();
}

uint64_t gradient<A>(at:_:of:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  OUTLINED_FUNCTION_10_46();
  valueWithPullback<A>(at:_:of:)();
  v4 = OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_41_23(v4);
  v5 = sub_25BC6F34C(a1, &v7);

  return v5;
}

void valueWithPullback<A>(at:_:of:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = v3;
  v6 = v5;
  v59 = v7;
  v60 = v8;
  OUTLINED_FUNCTION_32_25();
  v67 = v9;
  v10 = sub_25BCB5EBC();
  v11 = OUTLINED_FUNCTION_2(v10);
  v64 = v12;
  v65.n128_u64[0] = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v63 = v16 - v15;
  v17 = sub_25BCB5EEC();
  v18 = OUTLINED_FUNCTION_2(v17);
  v61 = v19;
  v62 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v58 = v23 - v22;
  OUTLINED_FUNCTION_9();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  v71 = *v1;

  sub_25BC689A4(&v71, v73);
  v70 = v4;
  type metadata accessor for LayerDifferentiableView();
  v66 = v25;
  v32 = *(v25 + 16);
  v32(v31, v0, v6);
  v33 = sub_25BAB07DC();
  v34 = *(*v33 + 96);
  OUTLINED_FUNCTION_62_9();
  v68 = v6;
  v69 = v2;
  v32(v2, v33 + v34, v6);
  v35 = qword_28154BE88;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  v36 = v62;
  OUTLINED_FUNCTION_56_14(v62, qword_28154BE90);
  v37 = v61;
  v38 = v58;
  (*(v61 + 16))(v58);
  v39 = v63;
  sub_25BCB5EAC();
  v40 = OUTLINED_FUNCTION_90();
  *v40 = 0;
  v41 = sub_25BCB5EDC();
  v42 = sub_25BCB6D5C();
  v43 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v41, v42, v43, "Backpropagation (Forward Pass)", "", v40, 2u);
  v60 = sub_25BC6C4D0(&v72);
  v44 = sub_25BCB6D4C();
  v45 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v41, v44, v45, "Backpropagation (Forward Pass)", "", v40, 2u);

  v46 = v72;
  OUTLINED_FUNCTION_89();
  (*(v64 + 8))(v39, v65.n128_u64[0]);
  (*(v37 + 8))(v38, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v47 = swift_allocObject();
  v65 = xmmword_25BCBAE50;
  *(v47 + 16) = xmmword_25BCBAE50;
  *(v47 + 32) = v46;
  OUTLINED_FUNCTION_1_2();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_67_9(v48, v65);

  v49 = sub_25BAC192C();
  v71 = v48;
  sub_25BC03860(v49);
  v50 = sub_25BAC1988(v47, v71, v60);
  v52 = v51;

  sub_25BAC2070();
  v54 = v53;

  *v67 = v46;
  v55 = swift_allocObject();
  v56 = v70;
  v55[2] = v68;
  v55[3] = v56;
  v55[4] = v50;
  v55[5] = v52;
  v55[6] = sub_25BC68BF4;
  v55[7] = 0;
  v55[8] = sub_25BACBC58;
  v55[9] = v54;
  (*(v66 + 8))(v69);
  OUTLINED_FUNCTION_22_33();
  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  v5 = v4;
  v7 = v6;
  v56[1] = v8;
  v57 = v9;
  OUTLINED_FUNCTION_32_25();
  v63 = v10;
  v11 = sub_25BCB5EBC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v60 = v13;
  v61 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19_20();
  v16 = sub_25BCB5EEC();
  v17 = OUTLINED_FUNCTION_2(v16);
  v58 = v18;
  v59 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v56[0] = v22 - v21;
  OUTLINED_FUNCTION_9();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v28);
  v30 = v56 - v29;
  v68[1] = MEMORY[0x277D84FA0];
  v31 = sub_25BC68750(v1);

  v65 = v5;
  type metadata accessor for LayerDifferentiableView();
  v62 = v24;
  v32 = *(v24 + 16);
  v32(v30, v0, v7);
  v33 = sub_25BAB07DC();
  v34 = *(*v33 + 96);
  OUTLINED_FUNCTION_62_9();
  v64 = v3;
  v66 = v7;
  v32(v3, v33 + v34, v7);
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v59, qword_28154BE90);
  v35 = v58;
  (*(v58 + 16))(v56[0]);
  sub_25BCB5EAC();
  *OUTLINED_FUNCTION_90() = 0;
  v36 = sub_25BCB5EDC();
  v37 = sub_25BCB6D5C();
  v38 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_83_9(&dword_25BA90000, v36, v37, v38, "Backpropagation (Forward Pass)", "");
  v57 = sub_25BC6C4D0(v68);
  v39 = sub_25BCB6D4C();
  v40 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_83_9(&dword_25BA90000, v36, v39, v40, "Backpropagation (Forward Pass)", "");

  v41 = v68[0];
  OUTLINED_FUNCTION_89();
  (*(v60 + 8))(v2, v61);
  v42 = *(v35 + 8);
  v43 = OUTLINED_FUNCTION_58();
  v44(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_25BCBAE50;
  *(v45 + 32) = v41;

  v46 = sub_25BAC192C();
  v67 = v31;
  sub_25BCB617C();
  sub_25BC03860(v46);
  v47 = sub_25BAC1988(v45, v67, v57);
  v49 = v48;

  v50 = *(v31 + 16);

  v51 = OUTLINED_FUNCTION_15_7();
  *(v51 + 16) = v50;
  sub_25BAC2070();
  v53 = v52;

  *v63 = v41;
  v54 = swift_allocObject();
  v55 = v65;
  v54[2] = v66;
  v54[3] = v55;
  v54[4] = v47;
  v54[5] = v49;
  v54[6] = sub_25BC68C2C;
  v54[7] = v51;
  v54[8] = v50;
  v54[9] = sub_25BACBC58;
  v54[10] = v53;
  (*(v62 + 8))(v64);
  OUTLINED_FUNCTION_20_34();
  OUTLINED_FUNCTION_10_16();
}

uint64_t valueWithGradient<A>(at:_:of:)(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a3;
  OUTLINED_FUNCTION_10_46();
  valueWithPullback<A>(at:_:of:)();
  v7 = OUTLINED_FUNCTION_80_9();
  OUTLINED_FUNCTION_41_23(v7);
  v8 = sub_25BC6F34C(&v12, &v11);

  v9 = v12;
  *a1 = v3;
  *a2 = v9;
  return v8;
}

uint64_t (*pullback<A>(at:_:of:)())(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_6_57();
  v1 = *v0;
  OUTLINED_FUNCTION_10_46();
  valueWithPullback<A>(at:_:of:)();
  OUTLINED_FUNCTION_58_12();
  return OUTLINED_FUNCTION_22_33();
}

uint64_t sub_25BC6BC90(uint64_t *a1, uint64_t *a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v13 = *a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE50;
  *(v15 + 32) = v13;

  v16 = (a3)(v15);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE50;
  if (!*(v16 + 16))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  *(v17 + 32) = *(v16 + 32);

  a5(&v28, v18);

  v14 = v28;
  a4 = sub_25BBCB9F8(1, v16);
  a5 = v19;
  a6 = v20;
  a3 = v21;

  if ((a3 & 1) == 0)
  {
LABEL_3:
    sub_25BAFFB88(a4, a5, a6, a3);
    v23 = v22;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(a3 >> 1, a6))
  {
    goto LABEL_13;
  }

  if (v25 != (a3 >> 1) - a6)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_3;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v23)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v26 = a7(v23);

  *a1 = v14;
  return v26;
}

uint64_t gradient<A>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a6, a8, v11, v12);
  valueWithPullback<A>(at:_:of:)();
  v8 = OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_41_23(v8);
  v9 = sub_25BC6F38C(&v11);

  return v9;
}

uint64_t valueWithGradient<A>(at:_:of:)()
{
  OUTLINED_FUNCTION_73_9();
  valueWithPullback<A>(at:_:of:)();
  v0 = OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_41_23(v0);
  sub_25BC6F38C(&v2);

  return OUTLINED_FUNCTION_71_8();
}

uint64_t (*pullback<A>(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a6, a8, v9, v10);
  valueWithPullback<A>(at:_:of:)();
  OUTLINED_FUNCTION_58_12();
  return OUTLINED_FUNCTION_20_34();
}

uint64_t sub_25BC6C4D0(void *a1)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v8);

  v2 = v9;
  if (!v9 || (*(v9 + 24) & 1) == 0)
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v3 = swift_allocObject();
    v4 = OUTLINED_FUNCTION_59_12(v3, MEMORY[0x277D84F90]);

    v9 = v4;
    v5 = objc_autoreleasePoolPush();
    OUTLINED_FUNCTION_60_11();
    objc_autoreleasePoolPop(v5);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_25BAA4AF4(v8);
    return v4;
  }

  v6 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_60_11();
  objc_autoreleasePoolPop(v6);
  v4 = v2;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_7:

  result = sub_25BAA4AF4(v8);
  __break(1u);
  return result;
}

uint64_t sub_25BC6C600(uint64_t *a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v16 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = v16;

  v18 = a2(v17);

  if (a6 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  a5 = a4;
  a3 = sub_25BABAF60(0, a6, v18);
  v17 = v19;
  a4 = v20;
  v8 = v21;
  if (v21)
  {
    a8 = a7;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
    }

    v25 = *(v24 + 16);

    if (!__OFSUB__(v8 >> 1, a4))
    {
      if (v25 != (v8 >> 1) - a4)
      {
        goto LABEL_24;
      }

      v23 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a7 = a8;
      if (v23)
      {
        goto LABEL_11;
      }

      v23 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (1)
  {
    sub_25BAFFB88(a3, v17, a4, v8);
    v23 = v22;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    a8 = a5(v23);

    a3 = sub_25BBCB9F8(a6, v18);
    a6 = v26;
    a5 = v27;
    v17 = v28;

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }

    v18 = a7;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277D84F90];
    }

    v32 = *(v31 + 16);

    if (!__OFSUB__(v17 >> 1, a5))
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_unknownObjectRelease();
    a7 = a8;
  }

  if (v32 != (v17 >> 1) - a5)
  {
    swift_unknownObjectRelease_n();
    a7 = v18;
LABEL_12:
    sub_25BAFFB88(a3, a6, a5, v17);
    v30 = v29;
    goto LABEL_19;
  }

  v30 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  a7 = v18;
  if (v30)
  {
    goto LABEL_20;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:
  a7(v30);

  return a8;
}

uint64_t gradient(of:)()
{
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_30_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return OUTLINED_FUNCTION_72_10();
}

{
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_30_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return OUTLINED_FUNCTION_72_10();
}

{
  OUTLINED_FUNCTION_69_10();
  OUTLINED_FUNCTION_30_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return OUTLINED_FUNCTION_72_10();
}

void valueWithPullback(at:_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v68 = v28;
  v69.n128_u64[0] = sub_25BCB5EBC();
  v29 = OUTLINED_FUNCTION_2(v69.n128_i64[0]);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v32 = OUTLINED_FUNCTION_40_22();
  v33 = OUTLINED_FUNCTION_2(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19_20();
  v38 = *v25;
  v72 = *v27;

  OUTLINED_FUNCTION_82_9();
  v72 = v38;

  OUTLINED_FUNCTION_82_9();
  v39 = qword_28154BE88;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v32, qword_28154BE90);
  v67 = v32;
  (*(v35 + 16))(v21);
  sub_25BCB5EAC();
  v40 = OUTLINED_FUNCTION_90();
  v41 = OUTLINED_FUNCTION_84_6(v40);
  sub_25BCB6D5C();
  v42 = OUTLINED_FUNCTION_64_12();
  OUTLINED_FUNCTION_38_23(&dword_25BA90000, v43, v44, v42, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  swift_retain_n();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v70);

  v45 = v71;
  v66 = v21;
  if (v71 && (*(v71 + 24) & 1) != 0)
  {

    v48 = objc_autoreleasePoolPush();

    sub_25BAA49B8();
    sub_25BAB7060(v70);

    v51 = OUTLINED_FUNCTION_28_27();
    v52(v51);
    v47 = v45;
  }

  else
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v46 = swift_allocObject();
    v47 = OUTLINED_FUNCTION_59_12(v46, MEMORY[0x277D84F90]);

    v71 = v47;
    v48 = objc_autoreleasePoolPush();

    sub_25BAA49B8();
    sub_25BAB7060(v70);

    v49 = OUTLINED_FUNCTION_28_27();
    v50(v49);
  }

  sub_25BAA49B8();
  sub_25BAB814C();

  objc_autoreleasePoolPop(v48);
  sub_25BAA4AF4(v70);

  sub_25BCB6D4C();
  v53 = OUTLINED_FUNCTION_64_12();
  OUTLINED_FUNCTION_38_23(&dword_25BA90000, v54, v55, v53, "Backpropagation (Forward Pass)", "");

  v56 = v73;
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12(&a9);
  v57(v20, v69.n128_u64[0]);
  OUTLINED_FUNCTION_12_12(&v73);
  v58(v66, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_68_11(v59, &a11, xmmword_25BCBAE50)[2].n128_u64[0] = v56;
  OUTLINED_FUNCTION_1_2();
  v60 = swift_allocObject();
  OUTLINED_FUNCTION_67_9(v60, v69);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_25_31(inited, &a11);
  v70[0] = v60;

  sub_25BC03860(inited);
  v62 = sub_25BAC1988(v59, v70[0], v47);
  v64 = v63;

  *v68 = v56;
  OUTLINED_FUNCTION_50_17();
  v65 = swift_allocObject();
  v65[2] = v62;
  v65[3] = v64;
  v65[4] = sub_25BC68BF4;
  v65[5] = 0;
  v65[6] = sub_25BC68BF4;
  v65[7] = 0;
  OUTLINED_FUNCTION_10_16();
}

uint64_t valueWithGradient(at:_:of:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = OUTLINED_FUNCTION_29_30(a1, a2, a3, a4, a5, a6, a7, a8, v31, *a5, *a4, var38[0]);
  valueWithPullback(at:_:of:)(v11, v12, v13, v14, v15, v14, v15, v16, v32, v34, v36, var38[0], var38[1], var38[2], var38[3], var38[4], var38[5], var38[6], var38[7], var38[8]);
  v17 = var38[0];

  v18 = Tensor.init(onesLike:)(var38);
  v26 = OUTLINED_FUNCTION_29_30(v18, v19, v20, v21, v22, v23, v24, v25, v33, v35, v37, var38[0]);
  sub_25BC6F3CC(v26, v27, v28);

  v30 = var38[0];
  *a1 = v17;
  *a2 = v30;
  *a3 = v38;
  return result;
}

uint64_t sub_25BC6D06C(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t), uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t))
{
  v13 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE50;
  *(v14 + 32) = v13;

  v15 = a4(v14);

  result = swift_allocObject();
  *(result + 16) = xmmword_25BCBAE50;
  if (v15[2])
  {
    v17 = result;
    *(result + 32) = v15[4];

    a6(&v21, v17);

    v18 = v21;
    result = swift_allocObject();
    *(result + 16) = xmmword_25BCBAE50;
    if (v15[2] >= 2uLL)
    {
      v19 = result;
      *(result + 32) = v15[5];

      a8(&v21, v19);

      v20 = v21;
      *a1 = v18;
      *a2 = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void valueWithPullback(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v20;
  a20 = v21;
  v64 = v22;
  v24 = v23;
  v66 = v25;
  v65 = sub_25BCB5EBC();
  v26 = OUTLINED_FUNCTION_2(v65);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = sub_25BCB5EEC();
  v33 = OUTLINED_FUNCTION_2(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v67[0] = MEMORY[0x277D84FA0];
  v41 = sub_25BC68750(v24);

  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v32, qword_28154BE90);
  (*(v35 + 16))(v40);
  sub_25BCB5EAC();
  *OUTLINED_FUNCTION_90() = 0;
  v42 = sub_25BCB5EDC();
  v43 = sub_25BCB6D5C();
  v44 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v45, v43, v44, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  swift_bridgeObjectRetain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v67);

  v46 = v68;
  if (v68 && (*(v68 + 24) & 1) != 0)
  {

    v48 = v46;
  }

  else
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v47 = swift_allocObject();
    v48 = OUTLINED_FUNCTION_59_12(v47, MEMORY[0x277D84F90]);

    v68 = v48;
  }

  v49 = objc_autoreleasePoolPush();
  sub_25BCB617C();
  sub_25BAA49B8();
  sub_25BAB7060(v67);

  v64(&v69, v41);
  sub_25BAA49B8();
  sub_25BAB814C();

  objc_autoreleasePoolPop(v49);
  sub_25BAA4AF4(v67);

  LOBYTE(v49) = sub_25BCB6D4C();
  v50 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v51, v49, v50, "Backpropagation (Forward Pass)", "");

  v52 = v69;
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12(&a16);
  v53(v31, v65);
  OUTLINED_FUNCTION_12_12(&a14);
  v54(v40, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_25BCBAE50;
  *(v55 + 32) = v52;

  v56 = OUTLINED_FUNCTION_72_10();
  v58 = sub_25BAC1988(v56, v57, v48);
  v60 = v59;

  v61 = *(v41 + 16);

  v62 = OUTLINED_FUNCTION_15_7();
  *(v62 + 16) = v61;
  *v66 = v52;
  OUTLINED_FUNCTION_54();
  v63 = swift_allocObject();
  v63[2] = v58;
  v63[3] = v60;
  v63[4] = sub_25BC6F834;
  v63[5] = v62;
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_25BCB5EBC();
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = OUTLINED_FUNCTION_40_22();
  v34 = OUTLINED_FUNCTION_2(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19_20();
  v68 = *v26;

  OUTLINED_FUNCTION_82_9();
  v39 = qword_28154BE88;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v33, qword_28154BE90);
  v40 = OUTLINED_FUNCTION_51_15(v36);
  v41(v40);
  sub_25BCB5EAC();
  v42 = OUTLINED_FUNCTION_90();
  v43 = OUTLINED_FUNCTION_84_6(v42);
  sub_25BCB6D5C();
  v44 = OUTLINED_FUNCTION_64_12();
  OUTLINED_FUNCTION_38_23(&dword_25BA90000, v45, v46, v44, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  v47 = sub_25BAA49B8();
  sub_25BAA4A5C(v66);

  v48 = v67;
  if (v67)
  {
    v49 = *(v67 + 24);
    if (v49)
    {

      v54 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_17_26();

      OUTLINED_FUNCTION_26_32();
      OUTLINED_FUNCTION_63_10();
      if (!v24)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v50 = v28;
    v47 = v49 | 1;
  }

  else
  {
    v50 = v28;
    v47 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  OUTLINED_FUNCTION_30_0();
  v51 = swift_allocObject();
  v52 = OUTLINED_FUNCTION_59_12(v51, MEMORY[0x277D84F90]);

  v67 = v52;
  v53 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_17_26();

  OUTLINED_FUNCTION_26_32();
  OUTLINED_FUNCTION_63_10();
  if (!v24)
  {
    v48 = v52;
    v28 = v50;
LABEL_10:
    objc_autoreleasePoolPop(v47);
    sub_25BAA4AF4(v66);

    v55 = sub_25BCB6D4C();
    v56 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v43, v55, v56, "Backpropagation (Forward Pass)", "", v42, 2u);

    v57 = v69;
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_12_12(&a17);
    v58 = OUTLINED_FUNCTION_16_2();
    v59(v58);
    OUTLINED_FUNCTION_12_12(&a15);
    v60(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    OUTLINED_FUNCTION_1_2();
    v61 = swift_allocObject();
    OUTLINED_FUNCTION_68_11(v61, &a17, xmmword_25BCBAE50)[2].n128_u64[0] = v57;
    OUTLINED_FUNCTION_1_2();
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_25_31(v62, &a17);

    sub_25BAC1988(v61, v62, v48);

    *v28 = v57;
    OUTLINED_FUNCTION_54();
    v63 = swift_allocObject();
    v64 = OUTLINED_FUNCTION_8_54(v63);
    *(v64 + 32) = v65;
    *(v64 + 40) = 0;
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_11:
  OUTLINED_FUNCTION_15_8();

  objc_autoreleasePoolPop(v47);

  sub_25BAA4AF4(v66);
  __break(1u);
}

uint64_t sub_25BC6D7B0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v6;

  v8 = a2(v7);

  v9 = a4(v8);

  return v9;
}

uint64_t gradient<A>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  valueWithPullback<A>(at:of:)();
  v9 = OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_41_23(v9);
  sub_25BC6F41C(&v11);
  OUTLINED_FUNCTION_49();

  return v8;
}

{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  valueWithPullback<A>(at:of:)();
  v9 = OUTLINED_FUNCTION_23_33();
  OUTLINED_FUNCTION_41_23(v9);
  sub_25BAC2A84(&v11);
  OUTLINED_FUNCTION_49();

  return v8;
}

uint64_t pullback<A>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10);
  valueWithPullback<A>(at:of:)();
  OUTLINED_FUNCTION_58_12();
  return OUTLINED_FUNCTION_113();
}

uint64_t sub_25BC6DD38()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v7);

  v0 = v8;
  if (v8)
  {
    v1 = *(v8 + 24);
    if (v1)
    {

      v5 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v5);
      v3 = v0;
      goto LABEL_7;
    }

    v2 = v1 | 1;
  }

  else
  {
    v2 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v3 = sub_25BAB6EC8(v2, MEMORY[0x277D84F90]);

  v8 = v3;
  v4 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v4);
LABEL_7:
  sub_25BAA4AF4(v7);
  return v3;
}

void sub_25BC6E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_25BCB5EBC();
  v28 = OUTLINED_FUNCTION_2(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v31 = OUTLINED_FUNCTION_40_22();
  v32 = OUTLINED_FUNCTION_2(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19_20();
  v70 = *v24;

  OUTLINED_FUNCTION_82_9();
  v37 = v68[0];
  v38 = qword_28154BE88;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v31, qword_28154BE90);
  v39 = OUTLINED_FUNCTION_51_15(v34);
  v40(v39);
  sub_25BCB5EAC();
  v41 = OUTLINED_FUNCTION_90();
  v42 = OUTLINED_FUNCTION_84_6(v41);
  v43 = sub_25BCB6D5C();
  v44 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v45, v43, v44, "Backpropagation (Forward Pass)", "");
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  v46 = sub_25BAA49B8();
  sub_25BAA4A5C(v68);

  v47 = v69;
  if (v69)
  {
    v48 = *(v69 + 24);
    if (v48)
    {

      v54 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_17_26();

      v55 = OUTLINED_FUNCTION_26_32();
      sub_25BC3349C(v55, v37);
      goto LABEL_9;
    }

    v49 = v26;
    v46 = v48 | 1;
  }

  else
  {
    v49 = v26;
    v46 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  OUTLINED_FUNCTION_30_0();
  v50 = swift_allocObject();
  v51 = OUTLINED_FUNCTION_59_12(v50, MEMORY[0x277D84F90]);

  v69 = v51;
  v52 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_17_26();

  v53 = OUTLINED_FUNCTION_26_32();
  sub_25BC3349C(v53, v37);
  v47 = v51;
  v26 = v49;
LABEL_9:
  objc_autoreleasePoolPop(v46);
  sub_25BAA4AF4(v68);
  OUTLINED_FUNCTION_15_8();

  v56 = sub_25BCB6D4C();
  v57 = sub_25BCB5E9C();
  OUTLINED_FUNCTION_39_23(&dword_25BA90000, v58, v56, v57, "Backpropagation (Forward Pass)", "");

  v59 = v71;
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12(&a17);
  v60 = OUTLINED_FUNCTION_16_2();
  v61(v60);
  OUTLINED_FUNCTION_12_12(&a15);
  v62(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_68_11(v63, &a17, xmmword_25BCBAE50)[2].n128_u64[0] = v59;
  OUTLINED_FUNCTION_1_2();
  v64 = swift_allocObject();
  OUTLINED_FUNCTION_25_31(v64, &a17);

  sub_25BAC1988(v63, v64, v47);

  *v26 = v59;
  OUTLINED_FUNCTION_54();
  v65 = swift_allocObject();
  v66 = OUTLINED_FUNCTION_8_54(v65);
  *(v66 + 32) = v67;
  *(v66 + 40) = 0;
  OUTLINED_FUNCTION_10_16();
}

void sub_25BC6E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v58 = v26;
  v57 = sub_25BCB5EBC();
  v27 = OUTLINED_FUNCTION_2(v57);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = OUTLINED_FUNCTION_40_22();
  v31 = OUTLINED_FUNCTION_2(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_20();
  v61[0] = *v25;
  swift_retain_n();

  sub_25BC689A4(v61, v59);
  v36 = qword_28154BE88;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_56_14(v30, qword_28154BE90);
  v56 = v30;
  v33[2](v21);
  sub_25BCB5EAC();
  v37 = OUTLINED_FUNCTION_90();
  v38 = OUTLINED_FUNCTION_84_6(v37);
  sub_25BCB6D5C();
  v39 = OUTLINED_FUNCTION_64_12();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v38, v30, v39, "Backpropagation (Forward Pass)", "", v37, 2u);
  v40 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v59);

  v41 = v60;
  v55 = v21;
  if (v60 && (*(v60 + 24) & 1) != 0)
  {

    v45 = objc_autoreleasePoolPush();
    OUTLINED_FUNCTION_81_9();

    sub_25BAA49B8();
    sub_25BAB7060(v59);

    OUTLINED_FUNCTION_16_47();

    v43 = v41;
  }

  else
  {
    type metadata accessor for PersistentGraphScope();
    OUTLINED_FUNCTION_30_0();
    v42 = swift_allocObject();
    v43 = OUTLINED_FUNCTION_59_12(v42, MEMORY[0x277D84F90]);

    v60 = v43;
    v44 = objc_autoreleasePoolPush();
    OUTLINED_FUNCTION_81_9();

    sub_25BAA49B8();
    sub_25BAB7060(v59);

    OUTLINED_FUNCTION_16_47();
  }

  sub_25BAA49B8();
  sub_25BAB814C();

  objc_autoreleasePoolPop(v33);
  sub_25BAA4AF4(v59);

  sub_25BCB6D4C();
  v46 = OUTLINED_FUNCTION_64_12();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v38, v40, v46, "Backpropagation (Forward Pass)", "", v37, 2u);

  v47 = v61[1];
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_12_12(&a12);
  v48(v20, v57);
  OUTLINED_FUNCTION_12_12(&a10);
  v49(v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_68_11(v50, &a13, xmmword_25BCBAE50)[2].n128_u64[0] = v47;
  OUTLINED_FUNCTION_1_2();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_25_31(v51, &a13);

  sub_25BAC1988(v50, v51, v43);

  *v58 = v47;
  OUTLINED_FUNCTION_54();
  v52 = swift_allocObject();
  v53 = OUTLINED_FUNCTION_8_54(v52);
  *(v53 + 32) = v54;
  *(v53 + 40) = 0;

  OUTLINED_FUNCTION_75_9();
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC6EDE8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v6;

  v8 = a2(v7);

  a4(v8);
}

uint64_t sub_25BC6EF74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 72);
  v9 = *(v0 + 56);
  return sub_25BC6AE78();
}

uint64_t (*pullback<A>(at:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_72(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10);
  valueWithPullback<A>(at:of:)();
  OUTLINED_FUNCTION_58_12();
  return OUTLINED_FUNCTION_19_33();
}

uint64_t gradient(at:of:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a2 + 16);

  v7 = sub_25BACB06C();

  if (v7)
  {
    if (*(v7 + 24))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = v5;
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_25BCBAE50;
      *(v9 + 32) = v4;

      v10 = OUTLINED_FUNCTION_78_10();
      v12 = sub_25BAC1988(v10, v11, v7);

      OUTLINED_FUNCTION_1_2();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_25BCBAE50;
      v16 = v5;

      Tensor.init(onesLike:)(&v16);
      v14 = v12(v13);

      if (*(v14 + 16))
      {
        *a3 = *(v14 + 32);
      }

      __break(1u);
    }
  }

  result = OUTLINED_FUNCTION_43_19();
  __break(1u);
  return result;
}

uint64_t gradient(at:of:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 16);

  v5 = sub_25BACB06C();

  if (v5)
  {
    if (*(v5 + 24))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_67_9(inited, xmmword_25BCBAE50);

      v7 = sub_25BAC1988(inited, a1, v5);

      OUTLINED_FUNCTION_1_2();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25BCBAE50;
      v11 = v3;

      Tensor.init(onesLike:)(&v11);
      v9 = v7(v8);

      return v9;
    }
  }

  result = OUTLINED_FUNCTION_43_19();
  __break(1u);
  return result;
}

uint64_t sub_25BC6F2EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = *(v4 + 48);
  v9 = *(v4 + 56);
  v6 = *(v4 + 16);
  v7 = *(v4 + 32);
  return sub_25BC6B0D4(a1, a2, a3, a4, *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), (v4 + 96), *(v4 + 136), *(v4 + 144), (v4 + 152), *(v4 + 192));
}

uint64_t sub_25BC6F340(uint64_t *a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_25BC6B648(a1, a2);
}

uint64_t sub_25BC6F34C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 72);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  return sub_25BC6BC90(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
}

uint64_t sub_25BC6F38C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_25BC6C600(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

uint64_t sub_25BC6F444(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_25BC6F544@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t sub_25BC6F580()
{
  result = qword_27FBB4A00;
  if (!qword_27FBB4A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4A00);
  }

  return result;
}

uint64_t sub_25BC6F5E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25BCB61BC();
}

uint64_t sub_25BC6F684()
{
  OUTLINED_FUNCTION_79_7();
  v1 = *(v0 + 56);
  v4 = *(v0 + 48);
  return v2(&v4, v1);
}

unint64_t sub_25BC6F704()
{
  result = qword_27FBB7690;
  if (!qword_27FBB7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7690);
  }

  return result;
}

unint64_t sub_25BC6F774()
{
  result = qword_27FBB7698;
  if (!qword_27FBB7698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB49F0, &unk_25BCC0140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7698);
  }

  return result;
}

uint64_t sub_25BC6F7FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_15@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 16);
  result = v2;
  *(v3 - 280) = v1;
  return result;
}

uint64_t sub_25BC6F89C()
{
  v0 = sub_25BCB614C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB76A0, &qword_25BCD2EB0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_28154C3A8 = result;
  return result;
}

uint64_t sub_25BC6F934(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = (a3 + 48);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      v23[0] = *(v6 - 2);
      v23[1] = v8;
      v23[2] = v9;
      sub_25BCB617C();

      v24(&v20, v23);
      if (v4)
      {
        break;
      }

      v11 = v20;
      v10 = v21;
      v12 = v22;
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = *(v7 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BAFDDD8();
          v7 = v17;
        }

        v13 = *(v7 + 16);
        v14 = v7;
        if (v13 >= *(v7 + 24) >> 1)
        {
          sub_25BAFDDD8();
          v14 = v18;
        }

        *(v14 + 16) = v13 + 1;
        v7 = v14;
        v15 = (v14 + 24 * v13);
        v15[4] = v11;
        v15[5] = v10;
        v15[6] = v12;
      }

      else
      {
        sub_25BC72884(v20, 0);
      }

      v6 += 3;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_25BC6FAA0(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v9 = *(v7 + 8 * v5);
    result = a1(&v9);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t TensorShape.contiguousSize.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (*v0 + 32);
  v3 = 1;
  while (1)
  {
    v4 = *v2++;
    result = v3 * v4;
    if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
    {
      break;
    }

    v3 = result;
    if (!--v1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC6FB74(uint64_t a1)
{
  v3 = *v1;
  result = sub_25BC6FC68();
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 3;
    while (1)
    {
      v8 = *(v3 + 8 * v7);
      if (!v8)
      {
        break;
      }

      if (a1 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_19;
      }

      if (v5 > *(result + 16))
      {
        goto LABEL_16;
      }

      v10 = a1 / v8;
      v11 = a1 % v8;
      v12 = *(result + 8 * v7);
      v13 = a1 % v8 * v12;
      if ((v11 * v12) >> 64 != v13 >> 63)
      {
        goto LABEL_17;
      }

      v14 = __OFADD__(v6, v13);
      v6 += v13;
      if (v14)
      {
        goto LABEL_18;
      }

      --v7;
      a1 = v10;
      if (v7 == 3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_25BC6FC68()
{
  v1 = *v0;
  v2 = sub_25BAC0E14(1, *(v1 + 16));
  v3 = 0;
  for (i = *(v1 + 16) - 2; i > 0; i = v6)
  {
    v5 = i + 1;
    if (i + 1 < 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }

    v6 = i - 1;
LABEL_7:
    if (v5 >= *(v2 + 16))
    {
      goto LABEL_16;
    }

    if (v5 >= *(v1 + 16))
    {
      goto LABEL_19;
    }

    v7 = *(v2 + 8 * v5 + 32);
    v8 = *(v1 + 32 + 8 * v5);
    v9 = v7 * v8;
    if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
    {
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v2);
      v2 = v10;
    }

    if (i >= *(v2 + 16))
    {
      goto LABEL_18;
    }

    *(v2 + 8 * i + 32) = v9;
  }

  if (!((i != 0) | v3 & 1))
  {
    v6 = 0;
    v5 = 1;
    v3 = 1;
    goto LABEL_7;
  }

  return v2;
}

uint64_t sub_25BC6FDBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC6FDD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC6FDE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = *(a1 + 16);
  v4 = sub_25BB720F0();
  sub_25BCB617C();
  v5 = sub_25BAC111C(&v7, v4 + 32, v2, a1);

  if (v5 == v2)
  {

    return v4;
  }

  __break(1u);
  return result;
}

void sub_25BC6FE80(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v4 = sub_25BC71EFC(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < v4)
    {
      __break(1u);
    }

    else
    {
      sub_25BC02820(v4, v5);
    }
  }
}

uint64_t sub_25BC6FEC4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_6_8();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  if (!(a1._rawValue >> 62))
  {
    v4 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v7 = MEMORY[0x277D84F90];
LABEL_14:
    *v3 = v7;
    return result;
  }

  v4 = sub_25BCB749C();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result.dimensions._rawValue = sub_25BC722B8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v13 = v3;
    v6 = 0;
    v7 = v14;
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v8 = sub_25BC723D0(v6, a1._rawValue);
      }

      else
      {
        v8 = *(a1._rawValue + v6 + 4);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25BC722B8(v11 > 1, v12 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v10;
    }

    while (v4 != v6);

    v3 = v13;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void (*TensorShape.subscript.modify(uint64_t ***a1, uint64_t a2))(void *a1)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v6 = *(*v2 + 16);
  if (-v6 > a2 || v6 <= a2)
  {
    OUTLINED_FUNCTION_1_74();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v8 = v5;
  sub_25BC9E84C(v5, (v6 & (a2 >> 63)) + a2);
  v8[4] = v9;
  return sub_25BB3A600;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.appending(_:)(Swift::Int a1)
{
  OUTLINED_FUNCTION_15_43(v1);
  sub_25BAFCFC8();
  v4 = *(*v3 + 16);
  sub_25BAFD118();
  v6 = *v3;
  *(v6 + 16) = v4 + 1;
  *(v6 + 8 * v4 + 32) = v2;
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.expanding(toCount:)(Swift::Int toCount)
{
  OUTLINED_FUNCTION_15_43(v1);
  TensorShape.expand(toCount:)(v2);
  return result;
}

uint64_t TensorShape.description.getter()
{
  v1 = *v0;
  v2 = sub_25BCB617C();
  v3 = MEMORY[0x25F876F80](v2, MEMORY[0x277D83B88]);

  return v3;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.removing(at:)(Swift::Int at)
{
  v3 = *v2;
  v4 = *(v3 + 16);
  if (v4 <= at)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v6 = v1;
  sub_25BCB617C();
  v7 = 0;
  v8 = 0;
  v9 = ~at;
  v10 = v3 + 24;
  v11 = MEMORY[0x277D84F90];
LABEL_3:
  v12 = 0;
  while (v8 - v4 + v12)
  {
    if (v8 < -v4 || v8 + v12 >= v4)
    {
      goto LABEL_22;
    }

    if (v8 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (!(v7 - 0x7FFFFFFFFFFFFFFFLL + v12))
    {
      goto LABEL_20;
    }

    ++v12;
    if (v9 + v7 + v12)
    {
      v21 = v9;
      v14 = v10;
      v15 = *(v10 + 8 * v8 + 8 * v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v11 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAAE04C();
        v11 = v18;
      }

      v16 = *(v11 + 16);
      if (v16 >= *(v11 + 24) >> 1)
      {
        sub_25BAAE04C();
        v11 = v19;
      }

      v7 += v12;
      v8 += v12;
      *(v11 + 16) = v16 + 1;
      *(v11 + 8 * v16 + 32) = v15;
      v4 = *(v3 + 16);
      v10 = v14;
      v9 = v21;
      goto LABEL_3;
    }
  }

  *v6 = v11;
  return result;
}

uint64_t TensorShape.dimensions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t TensorShape.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  (*(v9 + 16))(v14 - v13, a1, a2);
  v15 = *(a3 + 8);
  v16 = sub_25BCB68DC();
  result = (*(v9 + 8))(a1, a2);
  *a4 = v16;
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.init(repeating:count:)(NeuralNetworks::TensorShape repeating, Swift::Int count)
{
  if (count < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2;
    if (count)
    {
      rawValue = repeating.dimensions._rawValue;
      repeating.dimensions._rawValue = sub_25BCB67DC();
      v6 = 0;
      *(repeating.dimensions._rawValue + 2) = count;
      v7 = vdupq_n_s64(count - 1);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v6), xmmword_25BCCB570)));
        v9 = repeating.dimensions._rawValue + 8 * v6;
        if (v8.i8[0])
        {
          *(v9 + 4) = rawValue;
        }

        if (v8.i8[4])
        {
          *(v9 + 5) = rawValue;
        }

        v6 += 2;
      }

      while (((count + 1) & 0xFFFFFFFFFFFFFFFELL) != v6);
    }

    else
    {
      repeating.dimensions._rawValue = MEMORY[0x277D84F90];
    }

    v4->dimensions._rawValue = repeating.dimensions._rawValue;
  }

  return repeating;
}

uint64_t TensorShape.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x25F878200](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x25F878200](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t TensorShape.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  sub_25BAD4C78(v3, v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC7066C()
{
  v1 = *v0;
  sub_25BCB79CC();
  sub_25BAD4C78(v3, v1);
  return sub_25BCB7A3C();
}

Swift::Int __swiftcall TensorShape.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC706D8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v8[1] = v4;
  result = TensorShape.subscript.getter(v5, v6, v8);
  *a3 = v8[0];
  return result;
}

uint64_t sub_25BC70720(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v6 = *a1;
  sub_25BCB617C();
  return TensorShape.subscript.setter(&v6, v3, v4);
}

uint64_t TensorShape.subscript.setter(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_25BC7204C(*a1, 0);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_25BCB617C();
  sub_25BC70804(v5, v7, v9, v11, a2, a3);
}

void sub_25BC70804(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_16;
  }

  if (a6 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (*v6 + 8 * a5 + 32 != a2 + 8 * a3)
  {
LABEL_13:
    sub_25BC02A14(a5, a6);
    return;
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_18;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
}

uint64_t (*TensorShape.subscript.modify(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  TensorShape.subscript.getter(a2, a3, a1);
  return sub_25BC708DC;
}

uint64_t sub_25BC708DC()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_9_53();
  v6 = OUTLINED_FUNCTION_13_45();
  sub_25BC70804(v6, v7, v8, v9, v4, v3);
  v10 = *v1;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC70944@<X0>(uint64_t *a1@<X8>)
{
  result = TensorShape.rank.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25BC709C0@<X0>(void *a1@<X8>)
{
  result = TensorShape.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

Swift::Int __swiftcall TensorShape.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall TensorShape.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_25BC70A54(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_42(a1);
  result = TensorShape.index(after:)(v2);
  *v1 = result;
  return result;
}

void *sub_25BC70A7C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void (*sub_25BC70AA0(uint64_t ****a1, uint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = TensorShape.subscript.modify(v4, *a2);
  return sub_25BC70B04;
}

void sub_25BC70B04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_25BC70B58(uint64_t *a1, unint64_t *a2))()
{
  v4 = *a2;
  v5 = a2[1];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  TensorShape.subscript.getter(v4, v5, a1);
  return sub_25BC70BA8;
}

uint64_t sub_25BC70BA8()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_9_53();
  v6 = OUTLINED_FUNCTION_13_45();
  sub_25BC70804(v6, v7, v8, v9, v2, v3);
  v10 = *v1;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC70C08@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC70C34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_25BC70CBC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_14_42(a1);
  result = sub_25BCA42DC(v3, *v2);
  *v1 = result;
  return result;
}

uint64_t *sub_25BC70CE8(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_25BAE3AC4(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC70D3C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_14_42(a1);
  v5 = *v2;
  result = sub_25BBFD334(v3, v6, *v4);
  *v1 = result;
  *(v1 + 8) = v8 & 1;
  return result;
}

Swift::Void __swiftcall TensorShape.append(_:)(Swift::Int a1)
{
  sub_25BAFCFC8();
  v3 = *(*v1 + 16);
  sub_25BAFD118();
  v4 = *v1;
  *(v4 + 16) = v3 + 1;
  *(v4 + 8 * v3 + 32) = a1;
  *v1 = v4;
}

Swift::Void __swiftcall TensorShape.append(contentsOf:)(NeuralNetworks::TensorShape contentsOf)
{
  v1 = *contentsOf.dimensions._rawValue;
  v2 = sub_25BCB617C();

  sub_25BC038F4(v2);
}

uint64_t TensorShape.append<A>(contentsOf:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(v4 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  return sub_25BCB686C();
}

uint64_t TensorShape.replaceSubrange<A>(_:with:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(v4 - v3, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  return sub_25BCB678C();
}

uint64_t sub_25BC70FB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  TensorShape.replaceSubrange<A>(_:with:)();
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_25BC71058(uint64_t a1, uint64_t a2)
{
  TensorShape.append<A>(contentsOf:)();
  v4 = *(*(a2 - 8) + 8);

  return v4(a1, a2);
}

uint64_t sub_25BC710E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC71114(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC71114(uint64_t result)
{
  if (!*(*v1 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  result = TensorShape.subscript.getter(result);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= v2)
  {
    v4 = result;
    sub_25BC02820(v2, v3);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BC71188@<X0>(uint64_t a1@<X8>)
{
  result = sub_25BC711B8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25BC711B8()
{
  result = sub_25BB731A8(*v1);
  if ((v7 & 1) == 0)
  {
    v8 = *(*v1 + 16);
    if (v8)
    {
      v0 = result;
      v2 = sub_25BABA598(0, v8 - 1, *v1);
      v3 = v9;
      v4 = v10;
      v5 = v11;
      if ((v11 & 1) == 0)
      {
LABEL_4:
        v12 = sub_25BABA62C(v2, v3, v4, v5);
        swift_unknownObjectRelease();

LABEL_12:
        *v1 = v12;
        return v0;
      }

      sub_25BCB78DC();
      swift_unknownObjectRetain_n();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
        swift_unknownObjectRelease();
        v13 = MEMORY[0x277D84F90];
      }

      v14 = *(v13 + 16);

      if (!__OFSUB__(v5 >> 1, v4))
      {
        if (v14 == (v5 >> 1) - v4)
        {
          v12 = swift_dynamicCastClass();

          swift_unknownObjectRelease();
          if (!v12)
          {
            swift_unknownObjectRelease();
            v12 = MEMORY[0x277D84F90];
          }

          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    swift_unknownObjectRelease_n();
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC71314(uint64_t result)
{
  if (__OFSUB__(0, result))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25BBFD334(*(*v1 + 16), -result, 0);
  if ((v2 & 1) == 0)
  {
    v3 = *v1;
    if ((result & 0x8000000000000000) == 0)
    {
      TensorShape.subscript.getter(0, result, v1);

      return 1;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BC7139C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC713C4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC713C4()
{
  result = *v0;
  if (!*(*v0 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_25BB3BEDC(result);
  if ((v2 & 1) == 0)
  {
    v3 = *(*v0 + 16);
    if (v3)
    {
      v4 = result;
      TensorShape.subscript.getter(1uLL, v3, v0);

      return v4;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_25BC71448(int64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_25BBFD334(0, result, *(*v1 + 16));
      if (v2)
      {
LABEL_9:
        __break(1u);
        return result;
      }

      v3 = *(*v1 + 16);
      if (v3 >= result)
      {
        TensorShape.subscript.getter(result, v3, v1);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_25BC714D0(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    sub_25BC02820(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }
}

uint64_t TensorShape.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B4C();
  v4[6] = *v1;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BB5F86C(&qword_28154BE50);
  sub_25BCB78BC();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t TensorShape.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BB5F86C(&qword_28154BE48);
    sub_25BCB78AC();
    *a2 = v7[6];
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NeuralNetworks::TensorShape __swiftcall TensorShape.replacing(at:with:)(Swift::Int at, Swift::Int with)
{
  OUTLINED_FUNCTION_4_63(v2);
  sub_25BCB617C();
  TensorShape.subscript.setter(v3, v4);
  return result;
}

void TensorShape.replacing<A>(at:with:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v32 = v6;
  v33 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v32 - v24;
  v26 = *v0;
  (*(v8 + 16))(v14, v33, v2, v23);
  sub_25BCB617C();
  sub_25BCB655C();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    sub_25BCB6EDC();
    if (v35)
    {
      break;
    }

    v27 = v34;
    v28 = *(v26 + 16);
    if (v34 < -v28 || v34 >= v28)
    {
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v26);
      v26 = v31;
    }

    v30 = (v28 & (v27 >> 63)) + v27;
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v35 = 0;
      v36 = 0;
      v34 = v27;
      v37 = -1;
      v39 = 0;
      v40 = 0;
      v38 = v28;
      v41 = -1;
      v42 = 4;
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }

    if (v30 >= *(v26 + 16))
    {
      goto LABEL_15;
    }

    *(v26 + 8 * v30 + 32) = v4;
  }

  (*(v19 + 8))(v25, AssociatedTypeWitness);
  *v32 = v26;
  OUTLINED_FUNCTION_10_16();
}

void TensorShape.replacing<A, B>(at:with:)()
{
  OUTLINED_FUNCTION_9_18();
  v30 = v0;
  v33 = v2;
  v34 = v1;
  v4 = v3;
  v5 = v1;
  v7 = v6;
  v28 = v8;
  v10 = *(v9 + 8);
  v11 = *(v2 + 8);
  v35 = v3;
  v36 = v10;
  v37 = v11;
  v29 = sub_25BCB715C();
  v12 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v34 = v5;
  v35 = v4;
  v31 = v11;
  v32 = v10;
  v36 = v10;
  v37 = v11;
  v13 = sub_25BCB714C();
  OUTLINED_FUNCTION_9();
  v27 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = sub_25BCB6ABC();
  v21 = v7;
  if (v20 != sub_25BCB6ABC())
  {
LABEL_17:
    __break(1u);
LABEL_18:
    v35 = 0;
    v36 = 0;
    v34 = v21;
    LOBYTE(v37) = -1;
    v39 = 0;
    v40 = 0;
    v38 = v20;
    v41 = -1;
    v42 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v22 = *v30;
  sub_25BCB617C();
  sub_25BCB793C();
  sub_25BCB712C();
  while (1)
  {
    sub_25BCB713C();
    if (v36)
    {
      break;
    }

    v21 = v34;
    v20 = *(v22 + 16);
    if (v34 < -v20 || v34 >= v20)
    {
      goto LABEL_18;
    }

    v24 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v22);
      v22 = v26;
    }

    v25 = (v20 & (v21 >> 63)) + v21;
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v25 >= *(v22 + 16))
    {
      goto LABEL_16;
    }

    *(v22 + 8 * v25 + 32) = v24;
  }

  (*(v27 + 8))(v19, v13);
  *v28 = v22;
  OUTLINED_FUNCTION_10_16();
}

uint64_t TensorShape.removing<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  result = sub_25BAC17E4(sub_25BC7259C, v8, v6);
  *a4 = result;
  return result;
}

uint64_t sub_25BC71CE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v8 = *a1;
  v5 = *(a2 + 8);
  result = sub_25BCB66AC();
  if (result)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  *a3 = v7;
  *(a3 + 8) = result & 1;
  return result;
}

NeuralNetworks::TensorShape __swiftcall TensorShape.inserting(_:at:)(Swift::Int _, Swift::Int at)
{
  OUTLINED_FUNCTION_4_63(v2);
  sub_25BCB617C();
  sub_25BC028D4(v3, v3);
  return result;
}

uint64_t TensorShape.inserting<A>(contentsOf:at:)@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  *a1 = *v1;
  (*(v8 + 16))(v7 - v6);
  sub_25BC725BC();
  sub_25BCB617C();
  return sub_25BCB6BAC();
}

uint64_t TensorShape.appending<A>(contentsOf:)@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_63(a1);
  v2 = *(v1 + 8);
  sub_25BCB617C();
  return TensorShape.append<A>(contentsOf:)();
}

Swift::Void __swiftcall TensorShape.expand(toCount:)(Swift::Int toCount)
{
  v2 = *(*v1 + 16);
  if (toCount < v2)
  {
    __break(1u);
  }

  else if (toCount - v2 >= 0)
  {
    sub_25BC02ADC(0, 0);
    return;
  }

  __break(1u);
}

uint64_t sub_25BC71EFC(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v8 = sub_25BC6FAA0(a1, a2, v7);
  if (!v3)
  {
    if ((v9 & 1) == 0)
    {
      v4 = v8;
      v11 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        while (1)
        {
          v12 = *(*v5 + 16);
          if (v11 == v12)
          {
            return v4;
          }

          if (v11 < -v12 || v11 >= v12)
          {
            goto LABEL_21;
          }

          v14 = (v12 & (v11 >> 63)) + v11;
          if (v14 < 0)
          {
            break;
          }

          v18[0] = *(*v5 + 8 * v14 + 32);
          if ((a1(v18) & 1) == 0)
          {
            if (v11 != v4)
            {
              v15 = TensorShape.subscript.getter(v4);
              v16 = TensorShape.subscript.getter(v11);
              TensorShape.subscript.setter(v16, v4);
              TensorShape.subscript.setter(v15, v11);
            }

            if (__OFADD__(v4++, 1))
            {
              goto LABEL_19;
            }
          }

          ++v11;
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      v18[1] = 0;
      v18[2] = 0;
      v18[0] = v11;
      OUTLINED_FUNCTION_1_74();
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }

    return *(v7 + 16);
  }

  return v4;
}

uint64_t sub_25BC7204C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC72094(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC720DC(uint64_t (*a1)(uint64_t *))
{
  v4 = 0;
  v5 = *(*v1 + 16);
  while (v4 < v5)
  {
    v6 = *v1;
    v7 = *(*v1 + 16);
    if (v4 < -v7 || v4 >= v7)
    {
      goto LABEL_23;
    }

    v7 = (v7 & (v4 >> 63)) + v4;
    if (v7 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v17 = 0;
      v18 = 0;
      v16 = v4;
      v19 = -1;
      v21 = 0;
      v22 = 0;
      v20 = v7;
      v23 = -1;
LABEL_25:
      v24 = 4;
      sub_25BADDD28();
    }

    v16 = *(v6 + 8 * v7 + 32);
    v9 = a1(&v16);
    if (v2)
    {
      return v4;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(v6 + 16);
    v25 = v6 + 24;
    v7 = v5;
    do
    {
      v5 = v7 - 1;
      if (v7 - 1 >= v10)
      {
        goto LABEL_22;
      }

      if (v4 >= v5)
      {
        return v4;
      }

      v11 = *(v6 + 16);
      if (v7 > v11)
      {
        v17 = 0;
        v18 = 0;
        v16 = v7 - 1;
        v19 = -1;
        v21 = 0;
        v22 = 0;
        v20 = v11;
        v23 = -1;
        goto LABEL_25;
      }

      v16 = *(v25 + 8 * v7);
      v12 = a1(&v16);
      v7 = v5;
    }

    while ((v12 & 1) != 0);
    if (v4 != v5)
    {
      v13 = TensorShape.subscript.getter(v4);
      v14 = TensorShape.subscript.getter(v5);
      TensorShape.subscript.setter(v14, v4);
      TensorShape.subscript.setter(v13, v5);
    }

LABEL_11:
    ++v4;
  }

  return v4;
}

uint64_t sub_25BC722B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_25BC722D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BC722D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_0(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_25BAAFF14((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC723D0(unint64_t a1, unint64_t a2)
{
  sub_25BB50DF0();
  if (a2 >> 62)
  {
    v4 = sub_25BCB757C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_25BCB70FC();
    v6 = 0xD000000000000046;
    v5 = 0x800000025BCE5B00;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_25BCB70FC();
  v5 = 0x800000025BCE5AB0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x25F876C90](v6, v5);
  v8 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v8);

  MEMORY[0x25F876C90](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v9);

  result = sub_25BCB74DC();
  __break(1u);
  return result;
}

uint64_t sub_25BC7259C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_25BC71CE4(a1, v2[3], a2);
}

unint64_t sub_25BC725BC()
{
  result = qword_27FBB76A8;
  if (!qword_27FBB76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76A8);
  }

  return result;
}

unint64_t sub_25BC72614()
{
  result = qword_27FBB76B0;
  if (!qword_27FBB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76B0);
  }

  return result;
}

unint64_t sub_25BC7266C()
{
  result = qword_27FBB76B8;
  if (!qword_27FBB76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76B8);
  }

  return result;
}

unint64_t sub_25BC726C0()
{
  result = qword_27FBB76C0;
  if (!qword_27FBB76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76C0);
  }

  return result;
}

unint64_t sub_25BC72718()
{
  result = qword_27FBB76C8;
  if (!qword_27FBB76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76C8);
  }

  return result;
}

unint64_t sub_25BC72770()
{
  result = qword_27FBB76D0;
  if (!qword_27FBB76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB76D8, &qword_25BCD3078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76D0);
  }

  return result;
}

unint64_t sub_25BC727D4()
{
  result = qword_27FBB76E0;
  if (!qword_27FBB76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76E0);
  }

  return result;
}

unint64_t sub_25BC7282C()
{
  result = qword_27FBB76E8;
  if (!qword_27FBB76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB76E8);
  }

  return result;
}

uint64_t sub_25BC72884(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_25BC728E8(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_41_24(a1, a2, a3, a4);
  if (*(&v43 + 1))
  {
    OUTLINED_FUNCTION_0_88(v6, v7, v8, v9, v10, v11, v12, v13, v41, v42, v43, v44, v45, v46[0], v46[1], v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_15_44() & 1) != 0 && *(&v47 + 1) >= 3uLL)
    {
      type metadata accessor for SharedMetalDevice();
      OUTLINED_FUNCTION_62_10();
      v14 = swift_unknownObjectRetain();
      sub_25BBC97E0(v14);
      if (!v4)
      {
        OUTLINED_FUNCTION_61_11();
        if (v30)
        {
          OUTLINED_FUNCTION_58_13();
          do
          {
            OUTLINED_FUNCTION_29_31();
            if (!v17)
            {
              __break(1u);
              return;
            }
          }

          while (v31 != 1);
          sub_25BB7304C(*(&v47 + 1));
          sub_25BABF0A8(v46);
          if (v5 <= 0)
          {

            goto LABEL_8;
          }
        }

        else
        {
          sub_25BB7304C(*(&v47 + 1));
          sub_25BABF0A8(v46);
        }

        OUTLINED_FUNCTION_51_16();
        OUTLINED_FUNCTION_39_24();
        OUTLINED_FUNCTION_34_21();
        v32 = sub_25BCB617C();
        v40 = OUTLINED_FUNCTION_1_75(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46[0]);
        sub_25BC2986C(v40);
        return;
      }

      sub_25BB7304C(*(&v47 + 1));
      sub_25BABF0A8(v46);
    }

    else
    {
      sub_25BABF0A8(v46);
    }
  }

  else
  {
    sub_25BA9C2C8(&v42);
  }

LABEL_8:
  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_18_42();
  if (!(!v17 & v16))
  {
    v18 = qword_25BCD3398[v15];
  }

  v19 = sub_25BCB617C();
  v27 = OUTLINED_FUNCTION_1_75(v19, v20, v21, v22, v23, v24, v25, v26, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46[0]);
  sub_25BBC09FC(v27, v28, v29);
}

void sub_25BC72C64(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_41_24(a1, a2, a3, a4);
  if (*(&v42 + 1))
  {
    OUTLINED_FUNCTION_0_88(v6, v7, v8, v9, v10, v11, v12, v13, v40, v41, v42, v43, v44, v45[0], v45[1], v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_15_44() & 1) != 0 && *(&v46 + 1) >= 3uLL)
    {
      type metadata accessor for SharedMetalDevice();
      OUTLINED_FUNCTION_62_10();
      v14 = swift_unknownObjectRetain();
      sub_25BBC97E0(v14);
      if (!v4)
      {
        OUTLINED_FUNCTION_61_11();
        if (v29)
        {
          OUTLINED_FUNCTION_58_13();
          do
          {
            OUTLINED_FUNCTION_29_31();
            if (!v17)
            {
              __break(1u);
              return;
            }
          }

          while (v30 != 1);
          sub_25BB7304C(*(&v46 + 1));
          sub_25BABF0A8(v45);
          if (v5 <= 0)
          {

            goto LABEL_8;
          }
        }

        else
        {
          sub_25BB7304C(*(&v46 + 1));
          sub_25BABF0A8(v45);
        }

        OUTLINED_FUNCTION_51_16();
        OUTLINED_FUNCTION_39_24();
        OUTLINED_FUNCTION_34_21();
        v31 = sub_25BCB617C();
        v39 = OUTLINED_FUNCTION_1_75(v31, v32, v33, v34, v35, v36, v37, v38, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45[0]);
        sub_25BC29BC0(v39);
        return;
      }

      sub_25BB7304C(*(&v46 + 1));
      sub_25BABF0A8(v45);
    }

    else
    {
      sub_25BABF0A8(v45);
    }
  }

  else
  {
    sub_25BA9C2C8(&v41);
  }

LABEL_8:
  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_18_42();
  if (!(!v17 & v16))
  {
    v18 = qword_25BCD3398[v15];
  }

  v19 = sub_25BCB617C();
  v27 = OUTLINED_FUNCTION_1_75(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45[0]);
  sub_25BBC0BE0(v27, v28);
}

void sub_25BC73464(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_40_23(a1, a2, a3, a4);
  if (*(&v38 + 1))
  {
    OUTLINED_FUNCTION_0_88(v7, v8, v9, v10, v11, v12, v13, v14, v36, v37, v38, v39, v40, v41[0], v41[1], v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_15_44() & 1) != 0 && *(&v42 + 1) >= 3uLL)
    {
      type metadata accessor for SharedMetalDevice();
      v15 = swift_unknownObjectRetain();
      sub_25BBC97E0(v15);
      if (!v4)
      {
        if (*(v5 + 16))
        {
          do
          {
            OUTLINED_FUNCTION_12_45();
            if (!v18)
            {
              __break(1u);
              return;
            }

            OUTLINED_FUNCTION_56_15();
          }

          while (!v18);
          sub_25BB7304C(*(&v42 + 1));
          sub_25BABF0A8(v41);
          if (v6 <= 0)
          {

            goto LABEL_8;
          }
        }

        else
        {
          sub_25BB7304C(*(&v42 + 1));
          sub_25BABF0A8(v41);
        }

        OUTLINED_FUNCTION_49_20();
        OUTLINED_FUNCTION_39_24();
        v28 = sub_25BCB617C();
        OUTLINED_FUNCTION_9_54(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41[0]);
        OUTLINED_FUNCTION_57_11();
        sub_25BC2A4C8();
        return;
      }

      sub_25BB7304C(*(&v42 + 1));
      sub_25BABF0A8(v41);
    }

    else
    {
      sub_25BABF0A8(v41);
    }
  }

  else
  {
    sub_25BA9C2C8(&v37);
  }

LABEL_8:
  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_19_34();
  if (!(!v18 & v17))
  {
    v19 = qword_25BCD3398[v16];
  }

  v20 = sub_25BCB617C();
  OUTLINED_FUNCTION_9_54(v20, v21, v22, v23, v24, v25, v26, v27, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41[0]);
  OUTLINED_FUNCTION_57_11();
  sub_25BBC10E4();
}

void sub_25BC738DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v31 = OUTLINED_FUNCTION_16_48(a1, a2, a3, a4, a5, a6);
  v10 = OUTLINED_FUNCTION_2(v31);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_60();
  if (v33)
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_53_13() & 1) != 0 && v35 >= 3)
    {
      type metadata accessor for SharedMetalDevice();
      v13 = swift_unknownObjectRetain();
      sub_25BBC97E0(v13);
      if (!v9)
      {
        OUTLINED_FUNCTION_32_26();
        if (v25)
        {
          OUTLINED_FUNCTION_22_34();
          while (1)
          {
            OUTLINED_FUNCTION_3_59();
            if (!v15)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_44_18();
            if (v15)
            {
              OUTLINED_FUNCTION_33_27();
              if (v6 > 0)
              {
                goto LABEL_29;
              }

              goto LABEL_8;
            }
          }
        }

        OUTLINED_FUNCTION_33_27();
LABEL_29:
        OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_39_24();
        OUTLINED_FUNCTION_34_21();
        sub_25BCB617C();
        sub_25BCB617C();
        OUTLINED_FUNCTION_6_58();
        sub_25BC2A864(v26, v27, v28, v29, v30, v36);
LABEL_19:
        OUTLINED_FUNCTION_30_28();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_27_31();
        return;
      }

      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      sub_25BABF0A8(v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    sub_25BA9C2C8(v32);
  }

LABEL_8:
  if ((v8 - 1) <= 0xA)
  {
    v14 = qword_25BCD3398[(v8 - 1)];
  }

  if (!*(v7 + 16))
  {
LABEL_16:
    type metadata accessor for NativeTensorStorage();
    OUTLINED_FUNCTION_47_19();
    if (!v15)
    {
      goto LABEL_31;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_15_29();
    sub_25BCB6F1C();
    OUTLINED_FUNCTION_21_35();
    v16 = *MEMORY[0x277D84660];
    v17 = OUTLINED_FUNCTION_7_58();
    v18(v17);
    v19 = OUTLINED_FUNCTION_20_35();
    sub_25BB581C4(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_46_22();
    v24(v23);
    OUTLINED_FUNCTION_10_48();
    OUTLINED_FUNCTION_17_26();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_34();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (!v15)
    {
      break;
    }

    OUTLINED_FUNCTION_44_18();
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BC73B74(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, float a5)
{
  v8 = OUTLINED_FUNCTION_41_24(a1, a2, a3, a4);
  if (*(&v44 + 1))
  {
    OUTLINED_FUNCTION_0_88(v8, v9, v10, v11, v12, v13, v14, v15, v42, v43, v44, v45, v46, v47[0], v47[1], v48, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_15_44() & 1) != 0 && *(&v48 + 1) >= 3uLL)
    {
      type metadata accessor for SharedMetalDevice();
      OUTLINED_FUNCTION_62_10();
      v16 = swift_unknownObjectRetain();
      sub_25BBC97E0(v16);
      if (!v5)
      {
        OUTLINED_FUNCTION_61_11();
        if (v31)
        {
          OUTLINED_FUNCTION_58_13();
          do
          {
            OUTLINED_FUNCTION_29_31();
            if (!v19)
            {
              __break(1u);
              return;
            }
          }

          while (v32 != 1);
          sub_25BB7304C(*(&v48 + 1));
          sub_25BABF0A8(v47);
          if (v6 <= 0)
          {

            goto LABEL_8;
          }
        }

        else
        {
          sub_25BB7304C(*(&v48 + 1));
          sub_25BABF0A8(v47);
        }

        OUTLINED_FUNCTION_51_16();
        OUTLINED_FUNCTION_39_24();
        OUTLINED_FUNCTION_34_21();
        v33 = sub_25BCB617C();
        v41 = OUTLINED_FUNCTION_1_75(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47[0]);
        sub_25BC2AA5C(v41, a5);
        return;
      }

      sub_25BB7304C(*(&v48 + 1));
      sub_25BABF0A8(v47);
    }

    else
    {
      sub_25BABF0A8(v47);
    }
  }

  else
  {
    sub_25BA9C2C8(&v43);
  }

LABEL_8:
  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_18_42();
  if (!(!v19 & v18))
  {
    v20 = qword_25BCD3398[v17];
  }

  v21 = sub_25BCB617C();
  v29 = OUTLINED_FUNCTION_1_75(v21, v22, v23, v24, v25, v26, v27, v28, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47[0]);
  sub_25BBC11D0(v29, v30, a5);
}

void sub_25BC73D24(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_40_23(a1, a2, a3, a4);
  if (*(&v38 + 1))
  {
    OUTLINED_FUNCTION_0_88(v7, v8, v9, v10, v11, v12, v13, v14, v36, v37, v38, v39, v40, v41[0], v41[1], v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_15_44() & 1) != 0 && *(&v42 + 1) >= 3uLL)
    {
      type metadata accessor for SharedMetalDevice();
      v15 = swift_unknownObjectRetain();
      sub_25BBC97E0(v15);
      if (!v4)
      {
        if (*(v5 + 16))
        {
          do
          {
            OUTLINED_FUNCTION_12_45();
            if (!v18)
            {
              __break(1u);
              return;
            }

            OUTLINED_FUNCTION_56_15();
          }

          while (!v18);
          sub_25BB7304C(*(&v42 + 1));
          sub_25BABF0A8(v41);
          if (v6 <= 0)
          {

            goto LABEL_8;
          }
        }

        else
        {
          sub_25BB7304C(*(&v42 + 1));
          sub_25BABF0A8(v41);
        }

        OUTLINED_FUNCTION_49_20();
        OUTLINED_FUNCTION_39_24();
        v28 = sub_25BCB617C();
        OUTLINED_FUNCTION_1_75(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41[0]);
        OUTLINED_FUNCTION_59_13();
        sub_25BC2AC64();
        return;
      }

      sub_25BB7304C(*(&v42 + 1));
      sub_25BABF0A8(v41);
    }

    else
    {
      sub_25BABF0A8(v41);
    }
  }

  else
  {
    sub_25BA9C2C8(&v37);
  }

LABEL_8:
  type metadata accessor for NativeTensorStorage();
  OUTLINED_FUNCTION_19_34();
  if (!(!v18 & v17))
  {
    v19 = qword_25BCD3398[v16];
  }

  v20 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v20, v21, v22, v23, v24, v25, v26, v27, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41[0]);
  OUTLINED_FUNCTION_59_13();
  sub_25BBC12F0();
}

void sub_25BC73ED8(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_40_23(a1, a2, a3, a4);
  if (!*(&v56 + 1))
  {
    OUTLINED_FUNCTION_35_22();
    swift_unknownObjectRetain_n();
    sub_25BA9C2C8(&v55);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_0_88(v7, v8, v9, v10, v11, v12, v13, v14, v52, v55, v56, v57, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_35_22();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if ((OUTLINED_FUNCTION_15_44() & 1) == 0 || *(&v61 + 1) < 3uLL)
  {
    sub_25BABF0A8(&v59);
LABEL_8:
    type metadata accessor for NativeTensorStorage();
    OUTLINED_FUNCTION_19_34();
    if (!(!v18 & v17))
    {
      v19 = qword_25BCD3398[v16];
    }

    swift_unknownObjectRetain();
    v20 = sub_25BCB617C();
    OUTLINED_FUNCTION_1_75(v20, v21, v22, v23, v24, v25, v26, v27, v52, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59);
    OUTLINED_FUNCTION_59_13();
    sub_25BBC13DC(v28, v29, v30, v31, v32, v33, v34, v35, v53, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, SDWORD2(v61), SWORD6(v61), SBYTE14(v61), SHIBYTE(v61), v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    goto LABEL_11;
  }

  type metadata accessor for SharedMetalDevice();
  v15 = swift_unknownObjectRetain();
  sub_25BBC97E0(v15);
  if (v4)
  {

    sub_25BB7304C(*(&v61 + 1));
    sub_25BABF0A8(&v59);
    goto LABEL_8;
  }

  if (*(v5 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_45();
      if (!v18)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_56_15();
    }

    while (!v18);
    sub_25BB7304C(*(&v61 + 1));
    sub_25BABF0A8(&v59);
    if (v6 <= 0)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_25BB7304C(*(&v61 + 1));
    sub_25BABF0A8(&v59);
  }

  OUTLINED_FUNCTION_49_20();
  OUTLINED_FUNCTION_39_24();
  OUTLINED_FUNCTION_49();
  swift_unknownObjectRetain();
  v36 = sub_25BCB617C();
  OUTLINED_FUNCTION_1_75(v36, v37, v38, v39, v40, v41, v42, v43, v52, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, v59);
  OUTLINED_FUNCTION_59_13();
  sub_25BC2AE30(v44, v45, v46, v47, v48, v49, v50, v51, v54);
LABEL_11:
  OUTLINED_FUNCTION_36_21();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_45_18();
}

uint64_t sub_25BC743BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 < 3)
  {
    return 0;
  }

  type metadata accessor for SharedMetalDevice();
  OUTLINED_FUNCTION_17_26();
  v3 = swift_unknownObjectRetain();
  v2 = sub_25BBC97E0(v3);
  sub_25BB7304C(v1);
  return v2;
}

uint64_t sub_25BC74428(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = sub_25BCB617C();
  v5 = sub_25BAD15E4(v4);
  v7[0] = v2;
  v7[1] = v3;
  sub_25BACEFC8(v5, v7);
}

uint64_t sub_25BC74484()
{
  type metadata accessor for ExecutionContext();
  v0 = swift_allocObject();
  result = sub_25BC74540();
  qword_281557400 = v0;
  return result;
}

uint64_t sub_25BC744C0()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_25BC744E8()
{
  sub_25BC744C0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC74540()
{
  v1 = sub_25BCB6CDC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v3 = sub_25BCB6CFC();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_25BCB603C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB76F8, &qword_25BCD3390);
  *(v0 + 16) = sub_25BCB614C();
  sub_25BAADFB0();
  sub_25BCB601C();
  (*(v6 + 104))(v11, *MEMORY[0x277D85268], v3);
  sub_25BB72FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BBB8DF0();
  sub_25BCB702C();
  *(v0 + 24) = sub_25BCB6D2C();
  return v0;
}

uint64_t sub_25BC7475C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = *a5;
  v12 = sub_25BA9266C(a2, a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB76F0, &qword_25BCD3388);
  if ((sub_25BCB745C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *a5;
  v17 = sub_25BA9266C(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *a5;
  if (v15)
  {
    v20 = (v19[7] + 16 * v14);
    v21 = *v20;
    *v20 = a1;
    v20[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BC748B0(v14, a2, a3, a1, v19, a6);

    return sub_25BCB617C();
  }
}

unint64_t sub_25BC748B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a5[7] + 16 * result);
  *v7 = a4;
  v7[1] = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_16()
{

  return type metadata accessor for MPSGraphTensorStorage();
}

void sub_25BC74980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v71 = v26;
  v72 = v25;
  v75 = v27;
  v76 = v22;
  v74 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v70 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v69 - v40;
  v42 = sub_25BCB598C();
  v43 = OUTLINED_FUNCTION_2(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v50 = v49 - v48;
  v73 = v30;
  sub_25BAD6FB0(v30 + 88, v78);
  type metadata accessor for LazyTensorFunctionBuilder();
  swift_initStackObject();
  sub_25BC47C64(v78);
  v52 = v51;
  a10 = v36;
  v77[0] = v34;
  sub_25BB0CD18(v32, v41);
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    v53 = v72;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BB0CDB0(v41);
  }

  else
  {
    v54 = a21;
    (*(v45 + 32))(v50, v41, v42);
    sub_25BCB617C();
    sub_25BCB617C();
    v68 = v54;
    v53 = v72;
    v55 = v76;
    v56 = sub_25BC74CF0(v36, v34, v50, v73, v74, v72, v75, v71, v68);
    v58 = (v45 + 8);
    v76 = v55;
    if (v55)
    {

      (*v58)(v50, v42);

      goto LABEL_10;
    }

    v59 = v57;
    v60 = *v58;
    v71 = v56;
    v60(v50, v42);

    a10 = v71;
    v77[0] = v59;
  }

  v61 = a22;
  v62 = v74;

  v63 = v53;

  v64 = v75;

  v65 = v73;

  v61(v52, v65, v62, v63, v64, &a10, v52, v77);
  sub_25BAD6344();
  if (*(v66 + 16) == 1)
  {
    sub_25BAD6FB0(v66 + 32, v70);
  }

  else
  {

    sub_25BB0A3A4();
    swift_allocError();
    *v67 = 0xD000000000000079;
    v67[1] = 0x800000025BCD95E0;
    swift_willThrow();
  }

LABEL_10:
  OUTLINED_FUNCTION_16();
}

void sub_25BC74F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a10 = MEMORY[0x277D84F98];

  sub_25BCB617C();

  v37 = objc_autoreleasePoolPush();
  v24(v34, v32, v30, v28, v26, v36, &a10);
  objc_autoreleasePoolPop(v37);
  if (v20)
  {
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BC7501C()
{
  OUTLINED_FUNCTION_17_1();
  v39 = v1;
  v43 = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB598C();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = [v10 currentDirectoryPath];

  v12 = v11;
  v13 = v11;
  v40 = v11;
  v14 = v11;
  if (!v11)
  {
    sub_25BCB636C();
    v14 = sub_25BCB633C();

    sub_25BCB636C();
    v40 = sub_25BCB633C();

    sub_25BCB636C();
    v13 = sub_25BCB633C();

    sub_25BCB636C();
    v12 = sub_25BCB633C();
  }

  v15 = v11;
  sub_25BCB58DC();
  v16 = [v9 defaultManager];
  v17 = sub_25BCB592C();
  v41 = 0;
  v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v41];

  if (v18)
  {
    v19 = v41;

    v20 = [v9 &selRef_setMean_ + 3];
    sub_25BCB595C();
    v21 = sub_25BCB633C();

    v22 = [v20 changeCurrentDirectoryPath_];

    if (v22)
    {

      v39(v8);
      if (!v0)
      {
        v36 = OUTLINED_FUNCTION_6_59();
        v37(v36);

        v38 = [v9 defaultManager];
        [v38 changeCurrentDirectoryPath_];

        goto LABEL_10;
      }

      v23 = OUTLINED_FUNCTION_6_59();
      v24(v23);

      v13 = v12;
    }

    else
    {

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_25BCB70FC();

      v41 = 0xD000000000000013;
      v42 = 0x800000025BCD96C0;
      v28 = sub_25BCB595C();
      MEMORY[0x25F876C90](v28);

      MEMORY[0x25F876C90](11815, 0xE200000000000000);
      v29 = v41;
      v30 = v42;
      sub_25BB0A3A4();
      swift_allocError();
      *v31 = v29;
      v31[1] = v30;
      swift_willThrow();
      v32 = OUTLINED_FUNCTION_6_59();
      v33(v32);
      v13 = v40;
    }
  }

  else
  {
    v25 = v41;

    sub_25BCB58CC();
    swift_willThrow();
    v26 = OUTLINED_FUNCTION_6_59();
    v27(v26);
  }

  v34 = [v9 defaultManager];
  [v34 &selRef:v13 invalidEspressoNetworkErrorForMethod:? description:? + 4];

LABEL_10:
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

uint64_t MLProgramWritingOptions.ParameterStorageMode.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

void Layer<>.writeMLProgram(withInput:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v55 = v25;
  v27 = v26;
  v28 = sub_25BCB598C();
  v29 = OUTLINED_FUNCTION_2(v28);
  v54 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = *v24;
  a10 = *v27;
  v56 = 2;
  v57 = 64;
  v58 = 0xE100000000000000;
  v59 = OUTLINED_FUNCTION_0_89() & 1;
  v37 = Layer<>.compiled(forInput:options:)(&v60, &a10, &v56);
  v39 = v38;

  if (!v20)
  {
    v40 = v54;
    v41 = v60;
    v53 = v62;
    v51 = v61;
    v52 = v63;
    if (sub_25BC76008())
    {
      v42 = v55;
      v43 = sub_25BCB593C();
      v50 = &v50;
      MEMORY[0x28223BE20](v43);
      *(&v50 - 64) = v36;
      v44 = v51;
      *(&v50 - 7) = v41;
      *(&v50 - 6) = v44;
      v45 = v52;
      *(&v50 - 5) = v53;
      *(&v50 - 4) = v45;
      *(&v50 - 3) = v37;
      *(&v50 - 2) = v39;
      *(&v50 - 1) = v42;
      sub_25BC7501C();
      (*(v40 + 8))(v35, v28);
    }

    else
    {

      v60 = 0;
      v61 = 0xE000000000000000;
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE34B0);
      v46 = sub_25BCB594C();
      MEMORY[0x25F876C90](v46);

      MEMORY[0x25F876C90](0xD000000000000048, 0x800000025BCE5D10);
      v47 = v60;
      v48 = v61;
      sub_25BB0A3A4();
      swift_allocError();
      *v49 = v47;
      v49[1] = v48;
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BC757DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v25 = a2;
  v26 = a3;
  v9 = sub_25BCB598C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v15 = *v5;
  v16 = v5[1];
  v24 = *(v5 + 1);
  if (sub_25BC76008())
  {
    v17 = sub_25BCB593C();
    MEMORY[0x28223BE20](v17);
    *(&v24 - 5) = *(a5 + 16);
    *(&v24 - 64) = v14;
    *(&v24 - 7) = v15;
    *(&v24 - 6) = v16;
    *(&v24 - 40) = v24;
    v18 = v26;
    *(&v24 - 3) = v25;
    *(&v24 - 2) = v18;
    *(&v24 - 1) = a1;
    sub_25BC7501C();
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE34B0);
    v20 = sub_25BCB594C();
    MEMORY[0x25F876C90](v20);

    MEMORY[0x25F876C90](0xD000000000000048, 0x800000025BCE5D10);
    v21 = v27;
    v22 = v28;
    sub_25BB0A3A4();
    swift_allocError();
    *v23 = v21;
    v23[1] = v22;
    return swift_willThrow();
  }
}

void Layer<>.writeMLProgram(withInput:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_14_44();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  a20 = v39;
  v41 = v40;
  v43 = *v42;
  v44 = OUTLINED_FUNCTION_0_89();
  a11 = 2;
  a12 = 64;
  a13 = 0xE100000000000000;
  a14 = v44 & 1;
  Layer<>.compiled(forInput:options:)(&a15, v41, &a11, v38, v36, v34);
  OUTLINED_FUNCTION_13_46();

  if (!v30)
  {
    a11 = v43;
    OUTLINED_FUNCTION_2_74();
    swift_getAssociatedTypeWitness();
    v45 = type metadata accessor for Function();
    sub_25BC757DC(a20, v34, 64, &a11, v45);
  }

  OUTLINED_FUNCTION_15_45();
}

uint64_t Layer<>.writeMLProgram(withInput:to:options:)()
{
  OUTLINED_FUNCTION_7_59();
  v2 = *v1;
  v10 = *v3;
  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_8_56();
  Layer<>.compiled(forInput:options:)();
  OUTLINED_FUNCTION_13_46();

  if (!v0)
  {
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_2_74();
    swift_getAssociatedTypeWitness();
    v5 = type metadata accessor for Function();
    OUTLINED_FUNCTION_12_46(v5, v6, v7, v8, v9);
  }

  return result;
}

{
  OUTLINED_FUNCTION_7_59();
  v2 = *v1;
  v10 = *v3;
  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_8_56();
  Layer<>.compiled(forInput:options:)();
  OUTLINED_FUNCTION_13_46();

  if (!v0)
  {
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_2_74();
    swift_getAssociatedTypeWitness();
    v5 = type metadata accessor for Function();
    OUTLINED_FUNCTION_12_46(v5, v6, v7, v8, v9);
  }

  return result;
}

void Layer<>.writeMLProgram(withInput:to:options:)()
{
  OUTLINED_FUNCTION_14_44();
  v2 = *v1;
  OUTLINED_FUNCTION_0_89();
  OUTLINED_FUNCTION_1_76();
  Layer<>.compiled(forInput:options:)(v3, v4, v5);
  OUTLINED_FUNCTION_11_49();
  if (!v0)
  {
    swift_getAssociatedTypeWitness();
    v6 = type metadata accessor for Function();
    OUTLINED_FUNCTION_4_65(v6, v7, v8);
  }

  OUTLINED_FUNCTION_15_45();
}

uint64_t sub_25BC76008()
{
  sub_25BCB590C();
  v0 = sub_25BCB63BC();
  v2 = v1;

  if (v0 == 7104877 && v2 == 0xE300000000000000)
  {
LABEL_11:

    return 1;
  }

  v4 = sub_25BCB789C();

  if ((v4 & 1) == 0)
  {
    sub_25BCB590C();
    v5 = sub_25BCB63BC();
    v7 = v6;

    if (v5 != 7633012 || v7 != 0xE300000000000000)
    {
      v9 = sub_25BCB789C();

      return v9 & 1;
    }

    goto LABEL_11;
  }

  return 1;
}

uint64_t sub_25BC76104(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v38 = a8;
  v36 = a7;
  v40 = a6;
  v39 = a5;
  v37 = a4;
  v42 = a3;
  v10 = a2;
  v11 = sub_25BCB639C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25BCB58FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v34 - v25;
  if (v10 == 1)
  {
    v34 = v12;
    v27 = sub_25BCB598C();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v27);
    (*(v16 + 104))(v19, *MEMORY[0x277CC91D8], v15);
    v9 = v8;
    v12 = v34;
    sub_25BCB596C();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    goto LABEL_5;
  }

  v28 = sub_25BCB598C();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v28);
  if (v10 != 2)
  {
LABEL_5:
    sub_25BC74980(v36, v38, v26, v42, v37, v39, v40, sub_25BB947A4, sub_25BB947F0, sub_25BC4E1C8, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4]);
    if (v9)
    {
      return sub_25BB0CDB0(v26);
    }

    goto LABEL_6;
  }

  sub_25BAD6FB0(v42 + 88, v41);
LABEL_6:
  sub_25BBE46A4();
  v29 = v35;
  sub_25BCB638C();
  v30 = sub_25BCB637C();
  v32 = v31;

  (*(v12 + 8))(v29, v11);
  if (v32 >> 60 != 15)
  {
    sub_25BCB5A5C();
    sub_25BBE4B68(v30, v32);
  }

  sub_25BA9AC78(v41);
  return sub_25BB0CDB0(v26);
}

uint64_t sub_25BC764F4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v45 = a7;
  v46 = a8;
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v52 = a3;
  v10 = a2;
  v11 = sub_25BCB639C();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25BCB58FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4030, &qword_25BCBC5B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  if (v10 == 1)
  {
    v39 = v11;
    v26 = sub_25BCB598C();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v26);
    (*(v15 + 104))(v18, *MEMORY[0x277CC91D8], v14);
    v9 = v8;
    v11 = v39;
    sub_25BCB596C();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    goto LABEL_5;
  }

  v27 = sub_25BCB598C();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
  if (v10 != 2)
  {
LABEL_5:
    v47 = v52;
    v48 = v42;
    v49 = v43;
    v50 = v44;
    v28 = type metadata accessor for Function();
    sub_25BB09180(v45, v46, v25, v28, v29, v30, v31, v32, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
    if (v9)
    {
      return sub_25BB0CDB0(v25);
    }

    goto LABEL_6;
  }

  sub_25BAD6FB0(v52 + 88, v51);
LABEL_6:
  sub_25BBE46A4();
  v33 = v40;
  sub_25BCB638C();
  v34 = sub_25BCB637C();
  v36 = v35;

  (*(v41 + 8))(v33, v11);
  if (v36 >> 60 != 15)
  {
    sub_25BCB5A5C();
    sub_25BBE4B68(v34, v36);
  }

  sub_25BA9AC78(v51);
  return sub_25BB0CDB0(v25);
}

unint64_t sub_25BC768B0()
{
  result = qword_27FBB7700;
  if (!qword_27FBB7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7700);
  }

  return result;
}

_BYTE *sub_25BC76914(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC769F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v3 = *(v1 + 88);
  return sub_25BC764F4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

uint64_t sub_25BC76A30(uint64_t a1)
{
  v2 = type metadata accessor for MILBlobStorageWriter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BC76A94()
{

  v1 = sub_25BC76C08();
  [v1 lock];

  v2 = *(v0 + 40);
  if (v2 < 0)
  {
    v5 = *(v0 + 32);
    v4 = v2 & 0x7FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
  }

  else
  {
    sub_25BC76F00();
    v4 = v3;
  }

  [*(v0 + 48) unlock];

  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x28223BE20](ObjectType);
  (*(v4 + 64))(sub_25BC77514, v7);
  return swift_unknownObjectRelease();
}

uint64_t sub_25BC76BD8(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return 1718379891;
  }

  else
  {
    return 0x6F73736572707345;
  }
}

id sub_25BC76C08()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_25BC76C74(void *a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 16) = *a1;
  *(v3 + 24) = v4;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_25BC76CD4(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8 < 0)
  {
    v15 = *(a1 + 32);
    ObjectType = swift_getObjectType();
    p_ObjectType = &ObjectType;
    MEMORY[0x28223BE20](ObjectType);
    v21 = a4;
    v22 = a2;
    v23 = a3;
    v16 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
    swift_unknownObjectRetain();
    v16(sub_25BC7755C, &v20, a4, ObjectType, v8 & 0x7FFFFFFFFFFFFFFFLL);
    return sub_25BB72F9C(v9, v8);
  }

  else
  {
    p_ObjectType = v4;
    v25[0] = *(a1 + 24);

    if (sub_25BB71DA0(v25))
    {
      sub_25BC76F00();
      v11 = v10;
      v12 = swift_getObjectType();
      ObjectType = &ObjectType;
      v13 = MEMORY[0x28223BE20](v12);
      v21 = a4;
      v22 = a2;
      v23 = a3;
      (*(v11 + 56))(sub_25BC77584, v13);
      swift_unknownObjectRelease();
      return sub_25BB72F9C(v9, v8);
    }

    else
    {
      swift_beginAccess();
      v17 = *(v9 + 48);
      v18 = sub_25BB7135C();
      if (v17)
      {
        v19 = v18 + v17;
      }

      else
      {
        v19 = 0;
      }

      a2(v17, v19);
      return sub_25BB72F9C(v9, v8);
    }
  }
}

uint64_t sub_25BC76F00()
{
  v1 = *(v0 + 40);
  if (v1 < 0)
  {
    *&v13[0] = 0xD00000000000003CLL;
    *(&v13[0] + 1) = 0x800000025BCE5DB0;
    v15 = 9;
    sub_25BA97890();
  }

  v2 = *(v0 + 32);
  v3 = qword_28154F2C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_281557400;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_25BB72F90(v2, v1);

  sub_25BCB617C();
  v5 = sub_25BC740CC(&v12, &v11, v13, v4, v2, v0);
  v7 = v6;
  sub_25BB72F9C(v2, v1);
  sub_25BA9C2C8(v13);

  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  *(v0 + 32) = v5;
  *(v0 + 40) = v7 | 0x8000000000000000;
  swift_unknownObjectRetain();
  sub_25BB72F9C(v8, v9);
  return v5;
}

id sub_25BC7707C(void (*a1)(void))
{
  v2 = v1;
  v4 = sub_25BC76C08();
  [v4 lock];

  a1();
  return [*(v2 + 48) unlock];
}

uint64_t sub_25BC77100()
{
  v1 = *(v0 + 16);

  sub_25BB72F9C(*(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_25BC77130()
{
  sub_25BC77100();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC77194(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 16))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25BC771E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BC7729C()
{

  v1 = sub_25BC76C08();
  [v1 lock];

  sub_25BC77314(v0, &v3);
  [*(v0 + 48) unlock];

  return v3;
}

uint64_t sub_25BC77314@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_25BCB70FC();
  v4 = *a1;
  v5 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v5);

  MEMORY[0x25F876C90](0x7061687320200A28, 0xEB00000000203A65);
  v6 = MEMORY[0x25F876F80](a1[2], MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v6);

  MEMORY[0x25F876C90](0xD000000000000010, 0x800000025BCE5E90);
  v12 = *(a1 + 24);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCE5EB0);
  v8 = a1[4];
  v7 = a1[5];
  if (v7 < 0)
  {
    v9 = 1718379891;
  }

  else
  {
    v9 = 0x6F73736572707345;
  }

  if (v7 < 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  sub_25BB72F90(v8, v7);
  MEMORY[0x25F876C90](v9, v10);

  sub_25BB72F9C(v8, v7);
  result = MEMORY[0x25F876C90](10506, 0xE200000000000000);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_25BC77514()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_25BC7755C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t Embedding.weight.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

uint64_t sub_25BC7763C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 32);
  v7[1] = *a1;
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 16);
  v11 = v5;
  result = Embedding.weight.getter(v7);
  *a2 = v7[0];
  return result;
}

uint64_t sub_25BC776A0(uint64_t *a1)
{
  v2 = *a1;

  return Embedding.weight.setter(&v2);
}

uint64_t (*Embedding.weight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BB37E84;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t Embedding.$weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

BOOL Embedding.isEveryParameterInitialized.getter()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(*v0 + 32);
  result = (~v3 & 0xF000000000000007) != 0 && v3 < 0;
  *(v1 + 16) = result;
  return result;
}

void *sub_25BC77828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7708, &qword_25BCD35E8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(a2 + 32) = v6;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  v7 = *(v3 + 32);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_8:
    OUTLINED_FUNCTION_67();
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  result = *(*((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  v9 = result[2];
  if (!v9)
  {
LABEL_9:

LABEL_10:
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_5();
  }

  *(a2 + 24) = result[4];
  if (v9 == 1)
  {
    goto LABEL_10;
  }

  *(a2 + 16) = result[5];
  return result;
}

uint64_t Embedding.init(weight:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7708, &qword_25BCD35E8);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(a2 + 32) = v4;
  *(a2 + 8) = 256;
  v11 = v3;
  type metadata accessor for LayerVariableReference();
  swift_allocObject();

  v20 = 1;
  *a2 = sub_25BAB6D38(&v11, 0x100000000);
  v5 = *(v3 + 16);
  v6 = *(v5 + 152);
  if (!*(v6 + 16))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = -1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v18 = -1;
    v19 = 4;
    sub_25BCB617C();
    goto LABEL_6;
  }

  *(a2 + 24) = *(v6 + 32);

  v7 = *(v5 + 152);
  sub_25BCB617C();

  v8 = *(v7 + 16);
  if (v8 <= 1)
  {
    v12 = 0;
    v13 = 0;
    v11 = 1;
    v14 = -1;
    v16 = 0;
    v17 = 0;
    v15 = v8;
    v18 = -1;
    v19 = 4;
LABEL_6:
    OUTLINED_FUNCTION_11_5();
  }

  v9 = *(v7 + 40);

  *(a2 + 16) = v9;
  return result;
}