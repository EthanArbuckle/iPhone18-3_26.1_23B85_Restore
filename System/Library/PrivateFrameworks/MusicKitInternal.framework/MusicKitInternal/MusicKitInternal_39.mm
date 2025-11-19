uint64_t sub_1D51CB170()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 1840);
  v2 = *(v0 + 1816);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1832) + 8;
  (*(v0 + 1896))(*(v0 + 1848), *(v0 + 1824));

  OUTLINED_FUNCTION_55();
  v6 = *(v0 + 1912);

  return v5();
}

uint64_t sub_1D51CB21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[34] = a2;
  v3[35] = a3;
  v3[33] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D51CB234()
{
  v2 = sub_1D51BE928(&unk_1F50A3CE0);
  OUTLINED_FUNCTION_268();
  v4 = v3;
  OUTLINED_FUNCTION_207_1(v3);
  OUTLINED_FUNCTION_129_4();
  if (v6)
  {
    OUTLINED_FUNCTION_22_41(v5);
    sub_1D4F0029C();
    v4 = v119;
  }

  OUTLINED_FUNCTION_71_14();
  OUTLINED_FUNCTION_322(v7);
  if (qword_1EDD5A228 != -1)
  {
    OUTLINED_FUNCTION_14_55();
    v0 = *(v4 + 16);
  }

  v8 = qword_1EC7E9980;
  v9 = off_1EC7E9988;
  v10 = *(v4 + 24);
  v11 = v0 + 1;

  if (v0 >= v10 >> 1)
  {
    OUTLINED_FUNCTION_79_9();
    sub_1D4F0029C();
    v4 = v120;
  }

  *(v4 + 16) = v11;
  v12 = v4 + 80 * v0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  OUTLINED_FUNCTION_9_70(v12, v143, v166, v189, v212, v235, v258, v280, v303, v326, v349);
  v13 = *(v4 + 24);
  if ((v0 + 2) > (v13 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v13);
    sub_1D4F0029C();
    v4 = v121;
  }

  OUTLINED_FUNCTION_127_7();
  OUTLINED_FUNCTION_106_8(v4 + v11 * v14);
  OUTLINED_FUNCTION_9_70(v15, v144, v167, v190, v213, v236, v259, v281, v304, v327, v350);
  v16 = qword_1EC7E9980;
  v17 = off_1EC7E9988;
  v18 = *(v4 + 24);

  if ((v0 + 3) > (v18 >> 1))
  {
    OUTLINED_FUNCTION_79_9();
    sub_1D4F0029C();
    v4 = v122;
  }

  *(v4 + 16) = v0 + 3;
  v19 = v4 + 80 * (v0 + 2);
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  OUTLINED_FUNCTION_9_70(v19, v145, v168, v191, v214, v237, v260, v282, v305, v328, v351);
  OUTLINED_FUNCTION_167_2();
  if (!(v22 ^ v23 | v21))
  {
    OUTLINED_FUNCTION_22_41(v20);
    sub_1D4F0029C();
    v4 = v123;
  }

  OUTLINED_FUNCTION_76_11();
  OUTLINED_FUNCTION_276(v24);
  OUTLINED_FUNCTION_9_70(v25, v146, v169, v192, v215, v238, v261, v283, v306, v329, v352);
  v1[31] = v2;
  v26 = sub_1D56160F8();
  v28 = v27;
  v30 = *(v4 + 16);
  v29 = *(v4 + 24);
  if (v30 >= v29 >> 1)
  {
    OUTLINED_FUNCTION_20_51(v29);
    sub_1D4F0029C();
    v4 = v124;
  }

  OUTLINED_FUNCTION_127_7();
  v32 = v4 + v30 * v31;
  *(v32 + 32) = v26;
  *(v32 + 40) = v28;
  OUTLINED_FUNCTION_9_70(v32, v147, v170, v193, v216, v239, v262, v284, v307, v330, v353);
  v33 = *(v4 + 24);
  if ((v30 + 2) > (v33 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v33);
    sub_1D4F0029C();
    v4 = v125;
  }

  OUTLINED_FUNCTION_71_14();
  OUTLINED_FUNCTION_99_11(v34);
  OUTLINED_FUNCTION_9_70(v35, v148, v171, v194, v217, v240, v263, v285, v308, v331, v354);
  v36 = qword_1EC7E9B10;
  v37 = off_1EC7E9B18;
  v38 = *(v4 + 24);

  if ((v30 + 3) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v4 = v126;
  }

  OUTLINED_FUNCTION_90_14();
  *(v39 + 32) = v36;
  *(v39 + 40) = v37;
  OUTLINED_FUNCTION_13_55(v39, v149, v172, v195, v218, v241, v264, v286, v309, v332, v355);
  OUTLINED_FUNCTION_152_4(v40);
  v42 = v41 | 0x8000000000000000;
  v43 = *(v4 + 24);
  if ((v30 + 4) > (v43 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v43);
    sub_1D4F0029C();
    v4 = v127;
  }

  OUTLINED_FUNCTION_71_14();
  *(v44 + 32) = 0xD000000000000011;
  *(v44 + 40) = v42;
  OUTLINED_FUNCTION_9_70(v44, v150, v173, v196, v219, v242, v2, v287, v310, v333, v356);
  v46 = qword_1EC7E9B38;
  v45 = off_1EC7E9B40;
  v47 = *(v4 + 24);

  if ((v30 + 5) > (v47 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v4 = v128;
  }

  OUTLINED_FUNCTION_90_14();
  *(v48 + 32) = v46;
  *(v48 + 40) = v45;
  OUTLINED_FUNCTION_9_70(v48, v151, v174, v197, v220, v243, v265, v288, v311, v334, v357);
  v49 = *(v4 + 24);
  if ((v30 + 6) > (v49 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v49);
    sub_1D4F0029C();
    v4 = v129;
  }

  OUTLINED_FUNCTION_71_14();
  *(v50 + 32) = 0xD000000000000011;
  *(v50 + 40) = v42;
  OUTLINED_FUNCTION_9_70(v50, v152, v175, v198, v221, v244, v266, v289, v312, v335, v358);
  v51 = qword_1EC7E99A8;
  v52 = off_1EC7E99B0;
  v53 = *(v4 + 24);

  if ((v30 + 7) > (v53 >> 1))
  {
    OUTLINED_FUNCTION_26_44();
    sub_1D4F0029C();
    v4 = v130;
  }

  OUTLINED_FUNCTION_90_14();
  *(v54 + 32) = v51;
  *(v54 + 40) = v52;
  OUTLINED_FUNCTION_9_70(v54, v153, v176, v199, v222, v245, v267, v290, v313, v336, v359);
  v55 = *(v4 + 24);
  if ((v30 + 8) > (v55 >> 1))
  {
    OUTLINED_FUNCTION_22_41(v55);
    sub_1D4F0029C();
    v4 = v131;
  }

  OUTLINED_FUNCTION_71_14();
  strcpy((v56 + 32), " = 0,\n        ");
  *(v56 + 47) = -18;
  OUTLINED_FUNCTION_9_70(v56, v154, v177, v200, v223, v246, v268, v291, v314, v337, v360);
  OUTLINED_FUNCTION_300(&qword_1EC7E99D0);
  v57 = v30 + 9;

  if ((v30 + 9) > (v38 >> 1))
  {
    OUTLINED_FUNCTION_79_9();
    sub_1D4F0029C();
    v4 = v132;
  }

  *(v4 + 16) = v57;
  v58 = v4 + 80 * (v30 + 8);
  *(v58 + 32) = v53;
  *(v58 + 40) = v30 + 7;
  OUTLINED_FUNCTION_9_70(v58, v155, v178, v201, v224, v247, v269, v292, v315, v338, v361);
  v59 = *(v4 + 24);
  if ((v30 + 10) > (v59 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v59);
    sub_1D4F0029C();
    v4 = v133;
  }

  OUTLINED_FUNCTION_127_7();
  v61 = v4 + v57 * v60;
  strcpy((v61 + 32), " = 0,\n        ");
  *(v61 + 47) = -18;
  OUTLINED_FUNCTION_9_70(v61, v156, v179, v202, v225, v248, v270, v293, v316, v339, v362);
  v62 = aIsBackfill[0];
  v63 = aIsBackfill[1];
  v64 = *(v4 + 24);

  if ((v30 + 11) > (v64 >> 1))
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v4 = v134;
  }

  OUTLINED_FUNCTION_71_14();
  *(v65 + 32) = v62;
  *(v65 + 40) = v63;
  OUTLINED_FUNCTION_13_55(v65, v157, v180, v203, v226, v249, v271, v294, v317, v340, v363);
  OUTLINED_FUNCTION_152_4(v66);
  v68 = v67 | 0x8000000000000000;
  v69 = *(v4 + 24);
  if ((v30 + 12) > (v69 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v69);
    sub_1D4F0029C();
    v4 = v135;
  }

  OUTLINED_FUNCTION_90_14();
  *(v70 + 32) = 0xD000000000000010;
  *(v70 + 40) = v68;
  OUTLINED_FUNCTION_9_70(v70, v158, v181, v204, v227, v250, v272, v295, v318, v341, v364);
  v71 = qword_1EC7E9B38;
  v72 = off_1EC7E9B40;
  v73 = *(v4 + 24);

  if ((v30 + 13) > (v73 >> 1))
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v4 = v136;
  }

  OUTLINED_FUNCTION_71_14();
  *(v74 + 32) = v71;
  *(v74 + 40) = v72;
  OUTLINED_FUNCTION_9_70(v74, v159, v182, v205, v228, v251, v273, v296, v319, v342, v365);
  v75 = *(v4 + 24);
  if ((v30 + 14) > (v75 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v75);
    sub_1D4F0029C();
    v4 = v137;
  }

  v76 = v1[33];
  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_276(v77);
  OUTLINED_FUNCTION_9_70(v78, v160, v183, v206, v229, v252, v274, v297, v320, v343, v366);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
  v79 = sub_1D51D2E5C(&qword_1EDD52760, &qword_1EC7EBFA0, &qword_1D5620C40);
  OUTLINED_FUNCTION_9_0();
  v1[7] = 0xD00000000000001ELL;
  v1[8] = v80;
  v1[9] = 60;
  v1[10] = 0xE100000000000000;
  v1[11] = 95;
  v1[12] = 0xE100000000000000;
  v81 = sub_1D4F53278();

  v82 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_31();
  v1[13] = OUTLINED_FUNCTION_295();
  v1[14] = v83;
  v1[15] = 62;
  v1[16] = 0xE100000000000000;
  v1[17] = 95;
  v1[18] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  v84 = OUTLINED_FUNCTION_295();
  v86 = v85;

  v1[19] = v84;
  v1[20] = v86;
  v1[21] = 46;
  v1[22] = 0xE100000000000000;
  v1[23] = 95;
  v1[24] = 0xE100000000000000;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_295();

  OUTLINED_FUNCTION_337();
  v1[29] = 95;
  v1[30] = 0xE100000000000000;
  v207 = v81;
  v230 = v81;
  v161 = v82;
  v184 = v81;
  OUTLINED_FUNCTION_3_31();
  v87 = OUTLINED_FUNCTION_295();
  v89 = v88;

  v91 = *(v4 + 16);
  v90 = *(v4 + 24);
  v92 = v90 >> 1;
  if (v90 >> 1 <= v91)
  {
    OUTLINED_FUNCTION_22_41(v90);
    sub_1D4F0029C();
    v4 = v138;
    v90 = *(v138 + 24);
    v92 = v90 >> 1;
  }

  v93 = v1[33];
  *(v4 + 16) = v91 + 1;
  v94 = v4 + 80 * v91;
  *(v94 + 32) = v93;
  *(v94 + 40) = v298;
  *(v94 + 56) = v253;
  *(v94 + 64) = v79;
  *(v94 + 72) = v87;
  *(v94 + 80) = v89;
  *(v94 + 88) = &unk_1D5640930;
  *(v94 + 96) = 0;
  *(v94 + 104) = 2;
  if (v92 < (v91 + 2))
  {
    OUTLINED_FUNCTION_20_51(v90);
    sub_1D4F0029C();
    v4 = v139;
  }

  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_302();
  OUTLINED_FUNCTION_330(v95);
  OUTLINED_FUNCTION_9_70(v96, v161, v184, v207, v230, v253, v275, v298, v321, v344, v367);
  v98 = *v97;
  v99 = v97[1];
  v100 = *(v4 + 24);

  if ((v91 + 3) > (v100 >> 1))
  {
    OUTLINED_FUNCTION_54_18();
    sub_1D4F0029C();
    v4 = v140;
  }

  OUTLINED_FUNCTION_71_14();
  *(v101 + 32) = v98;
  *(v101 + 40) = v99;
  OUTLINED_FUNCTION_9_70(v101, v162, v185, v208, v231, v254, v276, v299, v322, v345, v368);
  v102 = *(v4 + 24);
  if ((v91 + 4) > (v102 >> 1))
  {
    OUTLINED_FUNCTION_20_51(v102);
    sub_1D4F0029C();
    v4 = v141;
  }

  OUTLINED_FUNCTION_90_14();
  OUTLINED_FUNCTION_106_8(v103);
  OUTLINED_FUNCTION_9_70(v104, v163, v186, v209, v232, v255, v277, v300, v323, v346, v369);
  v1[32] = v105;
  sub_1D56160F8();
  OUTLINED_FUNCTION_178_2();
  OUTLINED_FUNCTION_84_10();
  if (v6)
  {
    OUTLINED_FUNCTION_22_41(v106);
    sub_1D4F0029C();
    v4 = v142;
  }

  OUTLINED_FUNCTION_76_11();
  *(v107 + 32) = v98;
  *(v107 + 40) = v91 + 4;
  OUTLINED_FUNCTION_9_70(v107, v164, v187, v210, v233, v256, v278, v301, v324, v347, v370);
  v108 = *(v4 + 24);
  if (v99 + 2 > (v108 >> 1))
  {
    OUTLINED_FUNCTION_24_43(v108);
    sub_1D4F0029C();
  }

  OUTLINED_FUNCTION_59_15();
  OUTLINED_FUNCTION_148_7(v109);
  OUTLINED_FUNCTION_9_70(v110, v165, v188, v211, v234, v257, v279, v302, v325, v348, v371);
  OUTLINED_FUNCTION_150_7(MEMORY[0x1E69E7CC0], (v1 + 2));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[36] = v111;
  *v111 = v112;
  v111[1] = sub_1D51CBAF8;
  v113 = v1[34];
  v114 = v1[35];
  v115 = OUTLINED_FUNCTION_324();

  return sub_1D52EF24C(v115, v116, v117);
}

uint64_t sub_1D51CBAF8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D51CBC14()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();
  v2 = *(v0 + 296);

  return v1();
}

uint64_t sub_1D51CBC70(uint64_t a1)
{
  v5 = sub_1D51CC6D4(a1);
  if (!v2 && (v4 & 1) != 0)
  {
    v6 = *(v1 + 16);
    v12 = *(v1 + 8);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
    swift_allocError();
    *v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v10[1] = v12;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    v10[5] = v9;
    v10[6] = 0;
    swift_willThrow();
    sub_1D51D2A80(v12, v6, v7, v8, v9);
  }

  return v5;
}

uint64_t sub_1D51CBD94(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  result = sub_1D51CC0D0(a1, &v19 - v9);
  if (!v2)
  {
    sub_1D51D3024();
    v12 = _s13PersistedDateVMa();
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_1D4E50004(v8, &qword_1EC7EB470, &qword_1D561F3D0);
      v13 = *(v1 + 8);
      v14 = *(v1 + 16);
      v15 = *(v1 + 24);
      v21 = *(v1 + 32);
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
      v16 = *(v1 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
      swift_allocError();
      *v17 = v20;
      v17[1] = v13;
      v17[2] = v14;
      v17[3] = v15;
      v18 = v21;
      v17[4] = v21;
      v17[5] = v16;
      v17[6] = 0;
      swift_willThrow();
      sub_1D51D2A80(v13, v14, v15, v18, v16);

      return sub_1D4E50004(v10, &qword_1EC7EB470, &qword_1D561F3D0);
    }

    else
    {
      sub_1D4E50004(v10, &qword_1EC7EB470, &qword_1D561F3D0);
      return sub_1D51D2FD0();
    }
  }

  return result;
}

uint64_t sub_1D51CBFC0(uint64_t a1)
{
  v4 = sub_1D51CC3F0(a1);
  if (!v2 && v4 == 2)
  {
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
    swift_allocError();
    *v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v10[4] = v8;
    v10[5] = v9;
    v10[6] = 0;
    swift_willThrow();
    sub_1D51D2A80(v5, v6, v7, v8, v9);
  }

  return v4 & 1;
}

uint64_t sub_1D51CC0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v2;
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v10 = a1 + 16;
  v8 = *(a1 + 16);
  v9 = *(v10 + 8);
  v11 = sub_1D4E4EFA0();
  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(*(v6 + 56) + 8 * v11);

  if (!sub_1D54E3960(v14))
  {

LABEL_7:
    v22 = _s13PersistedDateVMa();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
  }

  sub_1D54E399C(v13, v33);
  if (v3)
  {
    v15 = v4[2];
    DynamicType = v4[1];
    v16 = v4[3];
    v17 = v4[4];
    v30 = v15;
    v18 = *(v4 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
    swift_allocError();
    *v19 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    v19[1] = 0;
    v20 = DynamicType;
    v19[2] = DynamicType;
    v19[3] = v30;
    v19[4] = v16;
    v19[5] = v17;
    v19[6] = v18;
    v19[7] = v3;
    swift_willThrow();
    sub_1D51D2A80(v20, v30, v16, v17, v18);
  }

  else
  {
    sub_1D4E48324(v33, v34);
    sub_1D4E628D4(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
    if (swift_dynamicCast())
    {
      sub_1D560C1F8();

      __swift_destroy_boxed_opaque_existential_1(v34);
      v23 = _s13PersistedDateVMa();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v23);
    }

    else
    {
      sub_1D4E628D4(v34, v32);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v32);
      v24 = v4[2];
      v25 = v4[3];
      v26 = v4[4];
      v31 = v4[1];
      v27 = *(v4 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
      swift_allocError();
      v28 = DynamicType;
      *v29 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      v29[1] = v28;
      v29[2] = v31;
      v29[3] = v24;
      v29[4] = v25;
      v29[5] = v26;
      v29[6] = v27;
      v29[7] = 0;
      swift_willThrow();

      sub_1D51D2A80(v31, v24, v25, v26, v27);

      return __swift_destroy_boxed_opaque_existential_1(v34);
    }
  }
}

uint64_t sub_1D51CC3F0(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  if (!*(v4 + 16))
  {
    return 2;
  }

  v8 = a1 + 16;
  v6 = *(a1 + 16);
  v7 = *(v8 + 8);
  v9 = sub_1D4E4EFA0();
  if ((v10 & 1) == 0)
  {
    return 2;
  }

  v11 = *(*(v4 + 56) + 8 * v9);

  if (!sub_1D54E3960(v12))
  {

    return 2;
  }

  sub_1D54E399C(v11, v29);
  if (v2)
  {
    v13 = v3[2];
    DynamicType = v3[1];
    v14 = v3[3];
    v15 = v3[4];
    v26 = v13;
    v16 = *(v3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
    swift_allocError();
    *v17 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    v17[1] = 0;
    v18 = DynamicType;
    v17[2] = DynamicType;
    v17[3] = v26;
    v17[4] = v14;
    v17[5] = v15;
    v17[6] = v16;
    v17[7] = v2;
    swift_willThrow();
    sub_1D51D2A80(v18, v26, v14, v15, v16);
  }

  else
  {
    sub_1D4E48324(v29, v30);
    sub_1D4E628D4(v30, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v30);

      return v28[5] != 0;
    }

    else
    {
      sub_1D4E628D4(v30, v28);
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v28);
      v20 = v3[2];
      v21 = v3[3];
      v22 = v3[4];
      v27 = v3[1];
      v23 = *(v3 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
      swift_allocError();
      v24 = DynamicType;
      *v25 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      v25[1] = v24;
      v25[2] = v27;
      v25[3] = v20;
      v25[4] = v21;
      v25[5] = v22;
      v25[6] = v23;
      v25[7] = 0;
      swift_willThrow();

      sub_1D51D2A80(v27, v20, v21, v22, v23);

      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }
}

uint64_t sub_1D51CC6D4(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  if (!*(v4 + 16))
  {
    return 0;
  }

  v8 = a1 + 16;
  v6 = *(a1 + 16);
  v7 = *(v8 + 8);
  v9 = sub_1D4E4EFA0();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v4 + 56) + 8 * v9);

  if (!sub_1D54E3960(v12))
  {

    return 0;
  }

  sub_1D54E399C(v11, v31);
  if (v2)
  {
    v13 = v3[2];
    DynamicType = v3[1];
    v14 = v3[3];
    v15 = v3[4];
    v28 = v13;
    v16 = *(v3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
    OUTLINED_FUNCTION_190_3();
    sub_1D4E62A60(v17, &qword_1EC7F1628, &qword_1D5640A18);
    OUTLINED_FUNCTION_263();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v18 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    v18[1] = 0;
    v19 = DynamicType;
    v18[2] = DynamicType;
    v18[3] = v28;
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    v18[7] = v2;
    swift_willThrow();
    sub_1D51D2A80(v19, v28, v14, v15, v16);
  }

  else
  {
    sub_1D4E48324(v31, v32);
    sub_1D4E628D4(v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1638, &unk_1D566AD90);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v32);

      return v30[5];
    }

    else
    {
      sub_1D4E628D4(v32, v30);
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v30);
      v21 = v3[2];
      v22 = v3[3];
      v23 = v3[4];
      v29 = v3[1];
      v24 = *(v3 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
      OUTLINED_FUNCTION_190_3();
      sub_1D4E62A60(v25, &qword_1EC7F1628, &qword_1D5640A18);
      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      v26 = DynamicType;
      *v27 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
      v27[1] = v26;
      v27[2] = v29;
      v27[3] = v21;
      v27[4] = v22;
      v27[5] = v23;
      v27[6] = v24;
      v27[7] = 0;
      swift_willThrow();

      sub_1D51D2A80(v29, v21, v22, v23, v24);

      return __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }
}

void sub_1D51CC988(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v2;
  v56 = a2;
  v6 = sub_1D5615C08();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D5615C18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1540, &qword_1D56408D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = *v2;
  if (!*(v18 + 16) || (v19 = *(a1 + 16), v20 = *(a1 + 24), v21 = sub_1D4E4EFA0(), (v22 & 1) == 0))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v34);
    return;
  }

  v23 = *(*(v18 + 56) + 8 * v21);
  v24 = swift_retain_n();
  sub_1D54E3930(v24);
  if (!v3)
  {

    sub_1D51D3078();
    return;
  }

  v59 = v3;
  v52 = v3;
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v26 = swift_dynamicCast();
  v53 = v23;
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E69E6B00])
  {
    (*(v12 + 96))(v15, v11);
    v27 = v54;
    (*(v55 + 32))(v10, v15, v54);
    v28 = sub_1D5615BE8();
    if (v28 && (v58 = v28, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
    {
      v29 = v57;
      v30 = [v57 domain];

      v31 = sub_1D5614D68();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v35 = *MEMORY[0x1E696A250];
    v36 = sub_1D5614D68();
    if (!v33)
    {

LABEL_26:
      (*(v55 + 8))(v10, v27);
      goto LABEL_27;
    }

    if (v31 == v36 && v33 == v37)
    {
    }

    else
    {
      v39 = sub_1D5616168();

      if ((v39 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v40 = sub_1D5615BE8();
    if (!v40)
    {
      goto LABEL_26;
    }

    v58 = v40;
    sub_1D4EC5648();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v41 = v57;
    v42 = [v57 code];

    (*(v55 + 8))(v10, v27);
    if (v42 == 3840)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
      __swift_storeEnumTagSinglePayload(v56, 1, 1, v43);

      return;
    }
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

LABEL_27:

  v44 = v4[1];
  v45 = v4[2];
  v46 = v4[3];
  v47 = v4[4];
  v56 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v48 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
  swift_allocError();
  *v49 = v56;
  v49[1] = 0;
  v49[2] = v44;
  v49[3] = v45;
  v49[4] = v46;
  v49[5] = v47;
  v50 = v52;
  v49[6] = v48;
  v49[7] = v50;
  swift_willThrow();
  sub_1D51D2A80(v44, v45, v46, v47, v48);
}

void sub_1D51CCF0C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v2;
  v56 = a2;
  v6 = sub_1D5615C08();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D5615C18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1550, &unk_1D566ADA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = *v2;
  if (!*(v18 + 16) || (v19 = *(a1 + 16), v20 = *(a1 + 24), v21 = sub_1D4E4EFA0(), (v22 & 1) == 0))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v34);
    return;
  }

  v23 = *(*(v18 + 56) + 8 * v21);
  v24 = swift_retain_n();
  sub_1D54E37E4(v24);
  if (!v3)
  {

    sub_1D51D3078();
    return;
  }

  v59 = v3;
  v52 = v3;
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v26 = swift_dynamicCast();
  v53 = v23;
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E69E6B00])
  {
    (*(v12 + 96))(v15, v11);
    v27 = v54;
    (*(v55 + 32))(v10, v15, v54);
    v28 = sub_1D5615BE8();
    if (v28 && (v58 = v28, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
    {
      v29 = v57;
      v30 = [v57 domain];

      v31 = sub_1D5614D68();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v35 = *MEMORY[0x1E696A250];
    v36 = sub_1D5614D68();
    if (!v33)
    {

LABEL_26:
      (*(v55 + 8))(v10, v27);
      goto LABEL_27;
    }

    if (v31 == v36 && v33 == v37)
    {
    }

    else
    {
      v39 = sub_1D5616168();

      if ((v39 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v40 = sub_1D5615BE8();
    if (!v40)
    {
      goto LABEL_26;
    }

    v58 = v40;
    sub_1D4EC5648();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v41 = v57;
    v42 = [v57 code];

    (*(v55 + 8))(v10, v27);
    if (v42 == 3840)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
      __swift_storeEnumTagSinglePayload(v56, 1, 1, v43);

      return;
    }
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

LABEL_27:

  v44 = v4[1];
  v45 = v4[2];
  v46 = v4[3];
  v47 = v4[4];
  v56 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v48 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
  swift_allocError();
  *v49 = v56;
  v49[1] = 0;
  v49[2] = v44;
  v49[3] = v45;
  v49[4] = v46;
  v49[5] = v47;
  v50 = v52;
  v49[6] = v48;
  v49[7] = v50;
  swift_willThrow();
  sub_1D51D2A80(v44, v45, v46, v47, v48);
}

void sub_1D51CD490(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v2;
  v56 = a2;
  v6 = sub_1D5615C08();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D5615C18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1538, &qword_1D56408C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = *v2;
  if (!*(v18 + 16) || (v19 = *(a1 + 16), v20 = *(a1 + 24), v21 = sub_1D4E4EFA0(), (v22 & 1) == 0))
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v34);
    return;
  }

  v23 = *(*(v18 + 56) + 8 * v21);
  v24 = swift_retain_n();
  sub_1D54E37B4(v24);
  if (!v3)
  {

    sub_1D51D3078();
    return;
  }

  v59 = v3;
  v52 = v3;
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v26 = swift_dynamicCast();
  v53 = v23;
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E69E6B00])
  {
    (*(v12 + 96))(v15, v11);
    v27 = v54;
    (*(v55 + 32))(v10, v15, v54);
    v28 = sub_1D5615BE8();
    if (v28 && (v58 = v28, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
    {
      v29 = v57;
      v30 = [v57 domain];

      v31 = sub_1D5614D68();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v35 = *MEMORY[0x1E696A250];
    v36 = sub_1D5614D68();
    if (!v33)
    {

LABEL_26:
      (*(v55 + 8))(v10, v27);
      goto LABEL_27;
    }

    if (v31 == v36 && v33 == v37)
    {
    }

    else
    {
      v39 = sub_1D5616168();

      if ((v39 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v40 = sub_1D5615BE8();
    if (!v40)
    {
      goto LABEL_26;
    }

    v58 = v40;
    sub_1D4EC5648();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    v41 = v57;
    v42 = [v57 code];

    (*(v55 + 8))(v10, v27);
    if (v42 == 3840)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
      __swift_storeEnumTagSinglePayload(v56, 1, 1, v43);

      return;
    }
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

LABEL_27:

  v44 = v4[1];
  v45 = v4[2];
  v46 = v4[3];
  v47 = v4[4];
  v56 = a1 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v48 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
  swift_allocError();
  *v49 = v56;
  v49[1] = 0;
  v49[2] = v44;
  v49[3] = v45;
  v49[4] = v46;
  v49[5] = v47;
  v50 = v52;
  v49[6] = v48;
  v49[7] = v50;
  swift_willThrow();
  sub_1D51D2A80(v44, v45, v46, v47, v48);
}

void sub_1D51CDA14(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v61 = sub_1D5615C08();
  v62 = *(v61 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D5615C18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (!*(v15 + 16) || (v16 = *(a1 + 16), v17 = *(a1 + 24), v18 = sub_1D4E4EFA0(), (v19 & 1) == 0))
  {
    sub_1D51D30CC(__src);
    v41 = a2;
LABEL_12:
    memcpy(v41, __src, 0xB0uLL);
    return;
  }

  v58 = a2;
  v57 = a1;
  v20 = *(*(v15 + 56) + 8 * v18);
  v21 = *(v20 + 16);
  v59 = v20;

  v22 = sqlite3_value_blob(v21);
  v23 = sqlite3_value_bytes(v21);
  v24 = sub_1D54ED308(v22, v23);
  if (v3)
  {
    goto LABEL_6;
  }

  v26 = v24;
  v27 = v25;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1560, &qword_1D56408F0);
  v28 = sub_1D560B9C8();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1D560B9B8();
  sub_1D4E62A60(&qword_1EC7F1640, &qword_1EC7F1560, &qword_1D56408F0);
  v3 = v60;
  sub_1D560B948();
  if (!v3)
  {

    sub_1D4E55E1C(v26, v27);

    v41 = v58;
    goto LABEL_12;
  }

  sub_1D4E55E1C(v26, v27);

LABEL_6:
  v65 = v3;
  v60 = v3;
  v31 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v32 = swift_dynamicCast();
  v33 = v58;
  if (v32)
  {
    if ((*(v11 + 88))(v14, v10) == *MEMORY[0x1E69E6B00])
    {
      (*(v11 + 96))(v14, v10);
      v34 = v61;
      (*(v62 + 32))(v9, v14, v61);
      v35 = sub_1D5615BE8();
      if (v35 && (__src[0] = v35, sub_1D4EC5648(), (swift_dynamicCast() & 1) != 0))
      {
        v36 = v63;
        v37 = [v63 domain];

        v38 = sub_1D5614D68();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v42 = *MEMORY[0x1E696A250];
      v43 = sub_1D5614D68();
      if (!v40)
      {

LABEL_29:
        (*(v62 + 8))(v9, v34);
        goto LABEL_30;
      }

      if (v38 == v43 && v40 == v44)
      {
      }

      else
      {
        v46 = sub_1D5616168();

        if ((v46 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v47 = sub_1D5615BE8();
      if (!v47)
      {
        goto LABEL_29;
      }

      __src[0] = v47;
      sub_1D4EC5648();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_29;
      }

      v48 = v63;
      v49 = [v63 code];

      (*(v62 + 8))(v9, v34);
      if (v49 == 3840)
      {

        sub_1D51D30CC(__src);
        memcpy(v33, __src, 0xB0uLL);

        return;
      }
    }

    else
    {
      (*(v11 + 8))(v14, v10);
    }
  }

LABEL_30:

  v50 = v4[1];
  v51 = v4[2];
  v52 = v4[3];
  v53 = v4[4];
  v62 = v57 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v54 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1628, &qword_1D5640A18);
  sub_1D4E62A60(&qword_1EC7F1630, &qword_1EC7F1628, &qword_1D5640A18);
  swift_allocError();
  *v55 = v62;
  v55[1] = 0;
  v55[2] = v50;
  v55[3] = v51;
  v55[4] = v52;
  v55[5] = v53;
  v56 = v60;
  v55[6] = v54;
  v55[7] = v56;
  swift_willThrow();
  sub_1D51D2A80(v50, v51, v52, v53, v54);
}

uint64_t sub_1D51CE068()
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
  qword_1EDD5A230 = result;
  return result;
}

uint64_t sub_1D51CE098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3[1];
  v27 = *a3;
  v28 = *(a3 + 32);
  v6 = sub_1D5614BD8();
  v7 = 0;
  v32 = *(a1 + 16);
  v33 = a1;
  v8 = (a1 + 40);
  for (i = a2; ; a2 = i)
  {
    if (v32 == v7)
    {
LABEL_15:

      *a4 = v6;
      *(a4 + 8) = v27;
      *(a4 + 24) = v29;
      *(a4 + 40) = v28 & 1;
      return result;
    }

    if (v7 >= *(v33 + 16))
    {
      break;
    }

    v9 = *(a2 + 16);
    if (v7 == v9)
    {
      goto LABEL_15;
    }

    if (v7 >= v9)
    {
      goto LABEL_17;
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = v8;
    v13 = *(a2 + 8 * v7 + 32);
    swift_retain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1D4E4EFA0();
    if (__OFADD__(v6[2], (v15 & 1) == 0))
    {
      goto LABEL_18;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1648, &qword_1D5640A20);
    if (sub_1D5615D78())
    {
      v18 = sub_1D4E4EFA0();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

      v16 = v18;
    }

    if (v17)
    {

      v20 = v6[7];
      v21 = *(v20 + 8 * v16);
      *(v20 + 8 * v16) = v13;
    }

    else
    {
      v6[(v16 >> 6) + 8] |= 1 << v16;
      v22 = (v6[6] + 16 * v16);
      *v22 = v11;
      v22[1] = v10;
      *(v6[7] + 8 * v16) = v13;

      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_19;
      }

      v6[2] = v25;
    }

    v8 = v12 + 2;
    ++v7;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

void *sub_1D51CE2F0(sqlite3_value *a1)
{
  v1 = sqlite3_value_pointer(a1, "com.apple.sonic.reference-box");
  if (v1)
  {
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000032, 0x80000001D5687690);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56876D0);
    v2 = sub_1D5615B98();
    MEMORY[0x1DA6EAC70](v2);

    sub_1D51D2CAC();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D51CE42C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  memset(v78, 0, 41);
  *&v71 = a2;
  v79 = a3;
  sub_1D4EF3424(a3);
  v5 = *(v71 + 16);

  v6 = sub_1D51CE948(v78, v5);
  v7 = *(a1 + 2);
  if (v7)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_47:
      sub_1D54B4574(v6);
      v6 = v42;
    }

    v8 = 0;
    v9 = a1 + 2;
    v45 = v7;
    v46 = v6 + 40;
    v44 = a1 + 2;
    do
    {
      if (v8 == v7)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v10 = v9 + 40 * v8;
      if (!v10[16])
      {
        v11 = *v10;
        a1 = *(v10 + 1);
        v48 = *(v10 + 3);
        v50 = *(v10 + 4);
        if ((v10[17] & 1) == 0)
        {
          *&v71 = 0;
          *(&v71 + 1) = 0xE000000000000000;

          sub_1D5615B68();
          v62 = v71;
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D56876F0);
          *&v71 = v11;
          *(&v71 + 1) = a1;
          LOWORD(v72) = 0;
          v73 = v48;
          v74 = v50;
          sub_1D5615D48();
          result = sub_1D5615E08();
          __break(1u);
          return result;
        }

        v7 = v6;
        *&v71 = a2;

        sub_1D4EF3424(v79);
        v12 = 0;
        v13 = (v71 + 40);
        v6 = *(v71 + 16);
        for (i = v46; ; i += 48)
        {
          if (v6 == v12)
          {

            v6 = v7;
            goto LABEL_18;
          }

          v15 = *(v13 - 1) == v11 && *v13 == a1;
          if (v15 || (sub_1D5616168() & 1) != 0)
          {
            break;
          }

          ++v12;
          v13 += 3;
        }

        if (v12 >= *(v7 + 16))
        {
          goto LABEL_46;
        }

        v6 = v7;
        v16 = *i;
        *(i - 8) = v11;
        *i = a1;
        *(i + 8) = 256;
        *(i + 16) = v48;
        *(i + 24) = v50;
        *(i + 32) = 1;

LABEL_18:
        v9 = v44;
        v7 = v45;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  a1 = &v54;
  v7 = *(v6 + 16);
  v51 = v6;
  v17 = (v6 + 40);
  v6 = v7;
  if (v7)
  {
    while (1)
    {
      if (*v17)
      {
        v18 = *(v17 - 1) == 0x7463656C6C6F635FLL && *v17 == 0xEB000000006E6F69;
        if (v18 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      v17 += 6;
      if (!--v6)
      {
        goto LABEL_28;
      }
    }

    v27 = 0;
    v28 = 0;
    v29 = -v7;
    v21 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v30 = v28 - 1;
    v31 = v51 + 48 * v28;
    while (v29 + v30 != -1)
    {
      if (v30 + 1 >= *(v51 + 16))
      {
        goto LABEL_45;
      }

      v32 = *(v31 + 40);
      ++v30;
      v31 += 48;
      if (v32)
      {
        v7 = *(v31 - 16);
        v6 = *v31;
        v49 = *(v31 + 8);
        v33 = *(v31 + 24);
        if (v30 < 0x20)
        {
          v27 |= 1 << v30;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          LODWORD(v79) = v27;
        }

        else
        {
          LODWORD(v79) = v27;
          OUTLINED_FUNCTION_100_8();
          sub_1D4F0118C();
          v21 = v37;
        }

        v34 = *(v21 + 16);
        if (v34 >= *(v21 + 24) >> 1)
        {
          sub_1D4F0118C();
          v21 = v36;
        }

        v28 = v30 + 1;
        *(v21 + 16) = v34 + 1;
        v35 = v21 + 48 * v34;
        *(v35 + 32) = v7;
        *(v35 + 40) = v32;
        *(v35 + 48) = v6;
        *(v35 + 49) = BYTE1(v6) & 1;
        *(v35 + 56) = v49;
        *(v35 + 72) = v33 & 1;
        a1 = &v54;
        v27 = v79;
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_57_1();
    sub_1D54EDDE0(v38, v39, v40, v41);
    v77 = v73;
    sub_1D4E50004(&v77, &qword_1EC7F1598, &qword_1D5640950);
    v62 = v71;
    v22 = v74;
    *v68 = *v75;
    *&v68[3] = *&v75[3];
    v25 = v76;
    v53[72] = 0;
    v54 = v71;
    v55 = v72;
    v56 = v21;
    v6 = 0x3FF0000000000000;
    v57 = v74;
    v58 = 0x3FF0000000000000;
    LOBYTE(v59) = 0;
    *(&v59 + 1) = *v75;
    HIDWORD(v59) = *&v75[3];
    v24 = 1000;
    v60 = 1000;
    v61 = v76;
    v52 = v71;
    v20 = v72;
    v23 = v59;
    v63 = v72;
    v64 = v21;
    v65 = v74;
    v66 = 0x3FF0000000000000;
    v67 = 0;
    v69 = 1000;
    v70 = v76;
    sub_1D51D2D00(&v54, v53);
    result = sub_1D51D2D5C(&v62);
    v26 = v52;
  }

  else
  {
LABEL_28:

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0uLL;
  }

  *a4 = v26;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v22;
  *(a4 + 40) = v6;
  *(a4 + 48) = v23;
  *(a4 + 56) = v24;
  *(a4 + 64) = v25;
  return result;
}

uint64_t sub_1D51CE948(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF90, &qword_1D561DD50);
      v4 = sub_1D56151D8();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 48)
      {
        v7 = (v4 + i);
        v8 = *v3;
        v9 = v3[1];
        *(v7 + 25) = *(v3 + 25);
        *v7 = v8;
        v7[1] = v9;
        if (!v5)
        {
          break;
        }

        sub_1D51D3024();
        --v5;
      }
    }

    else
    {
      sub_1D4E50004(result, &qword_1EC7EAF90, &qword_1D561DD50);
      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1D51CEA24@<X0>(unsigned int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = 0;
  v6 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 >> v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D561C050;
      *(inited + 32) = 0x746E656D656C65;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 3;
      sub_1D4F00FB4();
      if (*(v9 + 16) >= *(v9 + 24) >> 1)
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
      swift_arrayInitWithCopy();
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      if (v6 > v11)
      {
        goto LABEL_21;
      }

      v13 = *(v10 + v5 + 32);
      v12 = *(v10 + v5 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v7 + 16);
        sub_1D4F010A0();
        v7 = v17;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1D4F010A0();
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;
    }

    ++v6;
    v5 += 24;
  }

  while (v6 != 32);
  v19 = sub_1D525C454();
  if (v20)
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000022, 0x80000001D5687560);
    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D5687780);
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56875B0);
    sub_1D51D2CAC();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    result = swift_willThrow();
  }

  else
  {
    v23 = sub_1D51CF17C(v19, a2);
    if (v30)
    {
    }

    else
    {
      v24 = v23[2];
      v25 = *(v7 + 16);

      if (v25 <= 1)
      {
      }

      else
      {
        sub_1D51CFA0C(v7, a2, a3, v24);
        v27 = v26;

        v24 = v27;
      }

      *a4 = v24;
      *(a4 + 8) = 0u;
      *(a4 + 24) = 0u;
      *(a4 + 40) = 0;
      *(a4 + 48) = 1;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D51CEDD0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = 0;
  v6 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 >> v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF68, &qword_1D561DD28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D561C050;
      *(inited + 32) = 0x746E656D656C65;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 1;
      sub_1D4F00FB4();
      if (*(v9 + 16) >= *(v9 + 24) >> 1)
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF60, &qword_1D561DD20);
      swift_arrayInitWithCopy();
      v11 = *(v10 + 16);
      *(v10 + 16) = v11 + 1;
      if (v6 > v11)
      {
        goto LABEL_21;
      }

      v13 = *(v10 + v5 + 32);
      v12 = *(v10 + v5 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v7 + 16);
        sub_1D4F010A0();
        v7 = v17;
      }

      v14 = *(v7 + 16);
      if (v14 >= *(v7 + 24) >> 1)
      {
        sub_1D4F010A0();
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v13;
      *(v15 + 40) = v12;
    }

    ++v6;
    v5 += 24;
  }

  while (v6 != 32);
  v19 = sub_1D525C454();
  if (v20)
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000022, 0x80000001D5687560);
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D5687590);
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D56875B0);
    sub_1D51D2CAC();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    result = swift_willThrow();
  }

  else
  {
    v23 = sub_1D51CF298(v19, a2);
    if (v30)
    {
    }

    else
    {
      v24 = v23[2];
      v25 = *(v7 + 16);

      if (v25 <= 1)
      {
      }

      else
      {
        sub_1D51CFB88(v7, a2, a3, v24);
        v27 = v26;

        v24 = v27;
      }

      *a4 = v24;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 1;
      *(a4 + 40) = 0;
      *(a4 + 48) = 1;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1D51CF17C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8 * a1);
  if (v2)
  {
    return sub_1D51CE2F0(v2);
  }

  sub_1D5615B68();

  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D56877F0);
  sub_1D51D2CAC();
  swift_allocError();
  *v5 = 0xD00000000000002ALL;
  v5[1] = 0x80000001D5687620;
  return swift_willThrow();
}

void *sub_1D51CF298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8 * a1);
  if (v2)
  {
    return sub_1D51CE2F0(v2);
  }

  sub_1D5615B68();

  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
  MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D5687650);
  sub_1D51D2CAC();
  swift_allocError();
  *v5 = 0xD00000000000002ALL;
  v5[1] = 0x80000001D5687620;
  return swift_willThrow();
}

uint64_t sub_1D51CF3B4()
{
  v1 = sub_1D51BA144();
  v4 = v3;
  if (v3)
  {
    v5 = v1;
    v6 = v2;
    *(v0 + 40) = v1;
    *(v0 + 48) = 0;
    v7 = *(v0 + 32);

    *(v0 + 24) = v6;
    *(v0 + 32) = v4;
  }

  else
  {
    v8 = *(v0 + 32);

    v5 = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 1;
  }

  return v5;
}

void sub_1D51CF434()
{
  sub_1D51BA1C8();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  *(v0 + 24) = v4;
  *(v0 + 32) = v3 & 1;
  if (v3)
  {
    v1 = 0;
  }

  *(v0 + 40) = v1;
  *(v0 + 48) = v3 & 1;
}

uint64_t sub_1D51CF47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v8)
    {
      return v26 == v8;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v11 = *(i - 1);
      v12 = *i;
      if ((sub_1D5616168() & 1) == 0)
      {
        break;
      }
    }

    v13 = *(a2 + 8 * v8);
    if (!v13)
    {
      sub_1D5615B68();

      v24 = 0xD00000000000002ALL;
      v25 = 0x80000001D5687620;
      v19 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v19);

      MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](0x676E69727453, 0xE600000000000000);
      goto LABEL_23;
    }

    v14 = sqlite3_value_text(*(a2 + 8 * v8));
    sqlite3_value_bytes(v13);
    if (!v14)
    {
      v20 = 0x80000001D56877A0;
      sub_1D51D2CAC();
      swift_allocError();
      v22 = 0xD00000000000002DLL;
      goto LABEL_24;
    }

    v15 = sub_1D5614D28();
    if (!v16)
    {
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D56877D0);
      sub_1D5615D48();
LABEL_23:
      v22 = v24;
      v20 = v25;
      sub_1D51D2CAC();
      swift_allocError();
LABEL_24:
      *v21 = v22;
      v21[1] = v20;
      swift_willThrow();
      return v26 == v8;
    }

    if (v15 == a4 && v16 == a5)
    {
    }

    else
    {
      v18 = sub_1D5616168();

      if ((v18 & 1) == 0)
      {
        return v26 == v8;
      }
    }

    ++v8;
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
  sub_1D5615D48();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D51CF7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = v6;
    if (v7 == v6)
    {
      return v7 == v9;
    }

    if (*(i - 1) != 0x746E656D656C65 || *i != 0xE700000000000000)
    {
      v11 = *(i - 1);
      v12 = *i;
      if ((sub_1D5616168() & 1) == 0)
      {
        break;
      }
    }

    v13 = *(a2 + 8 * v9);
    if (!v13)
    {
      sub_1D5615B68();

      v15 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v15);

      MEMORY[0x1DA6EAC70](544432416, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](7630409, 0xE300000000000000);
      sub_1D51D2CAC();
      swift_allocError();
      *v16 = 0xD00000000000002ALL;
      v16[1] = 0x80000001D5687620;
      swift_willThrow();
      return v7 == v9;
    }

    v14 = sqlite3_value_int64(v13);
    v6 = v9 + 1;
    if (v14 != a4)
    {
      return v7 == v9;
    }
  }

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000012, 0x80000001D5687600);
  sub_1D5615D48();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void sub_1D51CFA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = a4 + 40;
  v20 = a4 + 40;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (v9 + 16 * v7);
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_17;
    }

    v13 = *(v10 - 1);
    v12 = *v10;

    v14 = sub_1D51CF47C(a1, a2, a3, v13, v12);
    if (v4)
    {

      return;
    }

    if (v14)
    {
      v15 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v21 + 16);
        sub_1D4F03980();
        v15 = v21;
      }

      v9 = v20;
      v17 = *(v15 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v15 + 24) >> 1)
      {
        sub_1D4F03980();
        v9 = v20;
        v18 = v17 + 1;
        v15 = v21;
      }

      *(v15 + 16) = v18;
      v21 = v15;
      v19 = v15 + 16 * v17;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      v7 = v11;
      goto LABEL_2;
    }

    ++v7;
    v10 += 2;
  }
}

void sub_1D51CFB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v9 = a4 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v7);
    v13 = sub_1D51CF7D0(a1, a2, a3, v12);
    if (v4)
    {

      return;
    }

    ++v7;
    if (v13)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v10 + 16);
        sub_1D4F0466C();
      }

      v15 = *(v10 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v10 + 24) >> 1)
      {
        sub_1D4F0466C();
        v16 = v15 + 1;
      }

      *(v10 + 16) = v16;
      *(v10 + 8 * v15 + 32) = v12;
      v7 = v11;
    }
  }
}

void *sub_1D51CFCC0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15C0, &qword_1D56409A8);
  v2[2] = a1;
  v2[3] = a2;
  v6 = sub_1D4E62A60(&qword_1EC7F15C8, &qword_1EC7F15C0, &qword_1D56409A8);
  v2[4] = v5;
  v2[5] = v6;
  v2[8] = sub_1D51D32F4;
  v2[9] = 0;
  v2[10] = sub_1D51CFF38;
  v2[11] = 0;
  v2[12] = sub_1D51D0268;
  v2[13] = 0;
  v2[14] = sub_1D51D0464;
  v2[15] = 0;
  v2[16] = sub_1D51D0530;
  v2[17] = 0;
  v2[18] = sub_1D51D0910;
  v2[19] = 0;
  v2[20] = sub_1D51D0A6C;
  v2[21] = 0;
  v2[6] = sub_1D51D2EC4;
  v2[7] = v2;

  sub_1D4EA7420(0);
  return v2;
}

void *sub_1D51CFDFC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1570, &qword_1D5640940);
  v2[2] = a1;
  v2[3] = a2;
  v6 = sub_1D4E62A60(qword_1EDD58258, &qword_1EC7F1570, &qword_1D5640940);
  v2[4] = v5;
  v2[5] = v6;
  v2[8] = sub_1D51D32F4;
  v2[9] = 0;
  v2[10] = sub_1D51CFF74;
  v2[11] = 0;
  v2[12] = sub_1D51D027C;
  v2[13] = 0;
  v2[14] = sub_1D51D04D0;
  v2[15] = 0;
  v2[16] = sub_1D51D055C;
  v2[17] = 0;
  v2[18] = sub_1D51D0928;
  v2[19] = 0;
  v2[20] = sub_1D51D0AA4;
  v2[21] = 0;
  v2[6] = sub_1D51D2C24;
  v2[7] = v2;

  sub_1D4EA7420(0);
  return v2;
}

void sub_1D51CFFB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = v4;
  *&v36 = a3;
  sub_1D4EF3424(a4);
  v10 = v36;
  v11 = *(v36 + 16);
  if (v11)
  {
    v28 = v6;
    v29 = v5;
    v42 = a1;
    *&v36 = MEMORY[0x1E69E7CC0];
    sub_1D4F040DC();
    v12 = v36;
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      *&v36 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_1D4F040DC();
        v12 = v36;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v13 += 3;
      --v11;
    }

    while (v11);

    a1 = v42;
    v5 = v29;
    v6 = v28;
  }

  else
  {
  }

  v19 = OUTLINED_FUNCTION_159();
  sub_1D54EE190(v19, v20);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    *&v36 = v7;
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v24 = sub_1D5614DB8();
    v26 = v25;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(a1 + 16) = sqlite3_vmprintf("%s", v27);
  }

  else if (*(a1 + 32))
  {
    __break(1u);
  }

  else
  {
    sub_1D51CE42C(v21, v6, v5, &v30);

    if (v32)
    {
      v36 = v30;
      v37 = v31;
      v38 = v32;
      v39 = v33;
      v40 = v34;
      v41 = v35;
      sub_1D54EE59C(a2);
      sub_1D4E50004(&v30, &qword_1EC7F1590, &qword_1D5640948);
    }
  }
}

uint64_t sub_1D51D0290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sqlite3_malloc64(0x61uLL);
  if (!v8)
  {
    return 7;
  }

  v9 = v8;
  sub_1D51D0310(v8, a1, a1, &v11, a3, a4);
  result = 0;
  *a2 = v9;
  return result;
}

double sub_1D51D0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 24);

  sub_1D4EF3424(a6);
  v10 = a5;
  v11 = *(a5 + 16);
  if (v11)
  {
    v20 = v9;
    v21 = a3;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D4F040DC();
    v12 = v23;
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_1D4F040DC();
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v13 += 3;
      --v11;
    }

    while (v11);

    a3 = v21;
    v9 = v20;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = a3;
  *(a1 + 40) = v12;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1D51D0464(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  sub_1D51D2F34(*(a1 + 48));
  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v9 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t sub_1D51D04D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;

  v3 = *(a1 + 48);

  *(a1 + 32) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t sub_1D51D0588(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 32);
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 32))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  result = sub_1D51CEA24(a2, a5, a6, v26);
  if (!v6)
  {
    *v24 = v26[0];
    *&v24[16] = v26[1];
    *&v24[32] = v26[2];
    v25 = v27;
    *(v8 + 16) = sub_1D51CF3B4();
    *(v8 + 24) = v16 & 1;
    v17 = *(v8 + 48);
    v18 = *(v8 + 56);
    v19 = *(v8 + 64);
    v20 = *(v8 + 72);
    v21 = *(v8 + 80);
    v22 = *(v8 + 88);
    *(v8 + 48) = *v24;
    *(v8 + 56) = *&v24[8];
    *(v8 + 72) = *&v24[24];
    *(v8 + 88) = *&v24[40];
    v23 = *(v8 + 96);
    *(v8 + 96) = v25;
    sub_1D51D2F34(v17);
    return 0;
  }

  v9 = *(v8 + 32);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v12 = sub_1D5614DB8();
    v14 = v13;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v15 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v9 + 16) = sqlite3_vmprintf("%s", v15);

    return 1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D51D0754(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 32);
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v7 + 32))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  result = sub_1D51CEDD0(a2, a5, a6, v22);
  if (!v6)
  {
    *v19 = v22[0];
    *&v19[16] = v22[1];
    v20 = v22[2];
    v21 = v23;
    sub_1D51CF434();
    *(v8 + 16) = v16;
    *(v8 + 24) = v17 & 1;
    v18 = *(v8 + 48);
    *(v8 + 48) = *v19;
    *(v8 + 56) = *&v19[8];
    *(v8 + 72) = *&v19[24];
    *(v8 + 80) = v20;
    *(v8 + 96) = v21;

    return 0;
  }

  v9 = *(v8 + 32);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v12 = sub_1D5614DB8();
    v14 = v13;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v12;
    *(inited + 40) = v14;
    v15 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v9 + 16) = sqlite3_vmprintf("%s", v15);

    return 1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D51D0940(uint64_t result, uint64_t (*a2)(void))
{
  if (*(result + 48))
  {
    v2 = result;
    v3 = a2();
    result = 0;
    *(v2 + 16) = v3;
    *(v2 + 24) = v4 & 1;
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_1D51D0ADC(uint64_t result, int a2, uint64_t a3)
{
  v4 = *(result + 40);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  v6 = *(result + 48);
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v3;
  v8 = a3;
  v9 = *(result + 80);
  if (v9)
  {
    v10 = v4 + 16 * a2;
    v11 = *(v10 + 40);
    v26 = *(v10 + 32);
    v12 = *(result + 56);
    v13 = *(result + 64);
    v31 = v3;
    v14 = *(result + 72);
    v15 = *(result + 88);
    v16 = *(result + 96);

    sub_1D51D2EF0(v6);

    sub_1D54E1C74(v14, v9, v28);

    v7 = v31;
    v8 = a3;
    sub_1D51D2F34(v6);

    v17 = v29;
    v18 = v30;
  }

  else
  {
    v17 = &type metadata for SQLNull;
    v18 = &off_1F50C07B8;
    v29 = &type metadata for SQLNull;
    v30 = &off_1F50C07B8;
  }

  __swift_project_boxed_opaque_existential_1(v28, v17);
  (v18[2])(v8, v17, v18);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    return 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v28);
  v19 = *(v5 + 32);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v28[0] = v7;
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v22 = sub_1D5614DB8();
    v24 = v23;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v22;
    *(inited + 40) = v24;
    v25 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v19 + 16) = sqlite3_vmprintf("%s", v25);

    return 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D51D0D3C(uint64_t result, int a2, uint64_t a3)
{
  v4 = *(result + 40);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v4 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  if (!*(result + 48))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v3;
  if (*(result + 80))
  {
    v8 = &type metadata for SQLNull;
    v9 = &off_1F50C07B8;
    v23 = &type metadata for SQLNull;
    v24 = &off_1F50C07B8;
  }

  else
  {
    v10 = v4 + 16 * a2;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v13 = *(result + 72);
    v14 = *(result + 48);

    sub_1D54E20CC(v13, v22);

    v8 = v23;
    v9 = v24;
  }

  __swift_project_boxed_opaque_existential_1(v22, v8);
  (v9[2])(a3, v8, v9);
  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    return 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v22);
  v15 = *(v5 + 32);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF228, &qword_1D5630CE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D561C050;
    v22[0] = v6;
    v17 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v18 = sub_1D5614DB8();
    v20 = v19;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1D51D2C58();
    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v21 = sub_1D5616468();
    swift_setDeallocating();
    sub_1D4EFF2B4();
    *(v15 + 16) = sqlite3_vmprintf("%s", v21);

    return 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1D51D0F2C(sqlite3 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sqlite3_malloc64(0x21uLL);
  if (v10)
  {
    v12 = v10;
    sqlite3_vtab_config_1(a1, v11);
    *v12 = 0;
    v12[2] = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = a3;
    *(v12 + 32) = 0;
    *a2 = v12;

    sub_1D5615B68();

    OUTLINED_FUNCTION_9_0();
    sub_1D4EF3424(a5);
    v13 = *(a4 + 16);
    if (v13)
    {
      v29 = a1;
      v33 = MEMORY[0x1E69E7CC0];
      sub_1D4F03980();
      v14 = 0;
      v15 = (a4 + 48);
      v30 = a4;
      while (v14 < *(a4 + 16))
      {
        v16 = *v15;
        v31 = *(v15 - 2);
        v32 = *(v15 - 1);
        swift_bridgeObjectRetain_n();
        MEMORY[0x1DA6EAC70](32, 0xE100000000000000);
        v17 = 0xE400000000000000;
        v18 = 1280070990;
        v19 = v13;
        switch(v16)
        {
          case 1:
            v17 = 0xE700000000000000;
            v18 = 0x52454745544E49;
            break;
          case 2:
            v18 = 1279346002;
            break;
          case 3:
            v18 = 1415071060;
            break;
          case 4:
            v18 = 1112493122;
            break;
          case 5:
            v17 = 0xE600000000000000;
            v18 = 0x4E4544444948;
            break;
          default:
            break;
        }

        MEMORY[0x1DA6EAC70](v18, v17);

        v20 = *(v33 + 16);
        if (v20 >= *(v33 + 24) >> 1)
        {
          sub_1D4F03980();
        }

        ++v14;
        *(v33 + 16) = v20 + 1;
        v21 = v33 + 16 * v20;
        *(v21 + 32) = v31;
        *(v21 + 40) = v32;
        v15 += 24;
        v13 = v19;
        v22 = v19 == v14;
        a4 = v30;
        if (v22)
        {

          a1 = v29;
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      OUTLINED_FUNCTION_182_2();
      sub_1D4E62A60(v23, v24, &unk_1D561D780);
      v25 = sub_1D5614CF8();
      v27 = v26;

      MEMORY[0x1DA6EAC70](v25, v27);

      MEMORY[0x1DA6EAC70](0x3B29202020200ALL, 0xE700000000000000);
      v28 = sub_1D5614DE8();

      sqlite3_declare_vtab(a1, (v28 + 32));
    }
  }
}

uint64_t sub_1D51D1268(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15C0, &qword_1D56409A8);

  return MEMORY[0x1EEE6DFA0](sub_1D51D12E8, v2, 0);
}

uint64_t sub_1D51D12E8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions;
  OUTLINED_FUNCTION_313();
  v5 = *(v2 + v4);
  v6 = OUTLINED_FUNCTION_71();
  v9 = sub_1D4ED07E4(v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = v0[20];
    swift_endAccess();
    v12 = *(v10 + 32);

    if (v12 == v11)
    {
      OUTLINED_FUNCTION_22_1();

      return v13();
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[17];
  _s13TableFunctionCMa();
  swift_allocObject();

  v18 = OUTLINED_FUNCTION_71();
  v20 = sub_1D51CFCC0(v18, v19);
  v0[22] = v20;
  v23 = *(v16 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  v0[23] = v23;
  if (v23)
  {

    v20 = OUTLINED_FUNCTION_138_7();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D51D142C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[22];
  sub_1D54E5144(v0[23]);
  v0[24] = 0;
  v2 = v0[23];
  v3 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1D51D14C8, v3, 0);
}

uint64_t sub_1D51D16A8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[24];
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D51D170C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_328();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D176C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_327();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D17CC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v1 = v0[33];
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v0[22];
  v6 = sub_1D54EDE80(v4);
  v7 = sub_1D54EF4CC(v6);
  if (BYTE4(v7) != 1 && (BYTE4(v7) != 14 || v7 != 16))
  {
    v9 = sqlite3_extended_errcode(*(v1 + 136));
    v4 = sqlite3_errstr(v6);
    if (v4)
    {
      sub_1D5614E98();
      v4 = sqlite3_errmsg(*(v1 + 136));
      if (v4)
      {
        OUTLINED_FUNCTION_349();
        OUTLINED_FUNCTION_261();
        sub_1D54EF4CC(v9);
        sub_1D51D2BD0();
        OUTLINED_FUNCTION_29();
        v10 = swift_allocError();
        OUTLINED_FUNCTION_292(v10, v11);

        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v2, v3);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_327();
  v12 = v0[19];

LABEL_11:
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1D51D1A6C()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[22];

  sub_1D4E6456C();
  v8 = v0[34];
  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D51D1B04(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1570, &qword_1D5640940);

  return MEMORY[0x1EEE6DFA0](sub_1D51D1B84, v2, 0);
}

uint64_t sub_1D51D1B84()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_tableFunctions;
  OUTLINED_FUNCTION_313();
  v5 = *(v2 + v4);
  v6 = OUTLINED_FUNCTION_71();
  v9 = sub_1D4ED07E4(v6, v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = v0[20];
    swift_endAccess();
    v12 = *(v10 + 32);

    if (v12 == v11)
    {
      OUTLINED_FUNCTION_22_1();

      return v13();
    }
  }

  else
  {
    swift_endAccess();
  }

  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[17];
  _s13TableFunctionCMa();
  swift_allocObject();

  v18 = OUTLINED_FUNCTION_71();
  v20 = sub_1D51CFDFC(v18, v19);
  v0[22] = v20;
  v23 = *(v16 + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  v0[23] = v23;
  if (v23)
  {

    v20 = OUTLINED_FUNCTION_138_7();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D51D1CC8()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[22];
  sub_1D54E5144(v0[23]);
  v0[24] = 0;
  v2 = v0[23];
  v3 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1D51D1D64, v3, 0);
}

uint64_t sub_1D51D1F44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_328();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D1FA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_327();

  v0 = OUTLINED_FUNCTION_138_7();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D51D2004()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v1 = v0[33];
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v0[22];
  v6 = sub_1D54EDE80(v4);
  v7 = sub_1D54EF4CC(v6);
  if (BYTE4(v7) != 1 && (BYTE4(v7) != 14 || v7 != 16))
  {
    v9 = sqlite3_extended_errcode(*(v1 + 136));
    v4 = sqlite3_errstr(v6);
    if (v4)
    {
      sub_1D5614E98();
      v4 = sqlite3_errmsg(*(v1 + 136));
      if (v4)
      {
        OUTLINED_FUNCTION_349();
        OUTLINED_FUNCTION_261();
        sub_1D54EF4CC(v9);
        sub_1D51D2BD0();
        OUTLINED_FUNCTION_29();
        v10 = swift_allocError();
        OUTLINED_FUNCTION_292(v10, v11);

        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v4, v2, v3);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_327();
  v12 = v0[19];

LABEL_11:
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1D51D22C4()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_191_1(v3);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_3_31();
  v0[8] = OUTLINED_FUNCTION_294();
  v0[10] = 62;
  v0[9] = v4;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v1;
  OUTLINED_FUNCTION_3_31();
  v5 = OUTLINED_FUNCTION_294();
  v7 = v6;

  v0[14] = v5;
  v0[16] = 46;
  v0[15] = v7;
  v0[17] = v1;
  v0[18] = v2;
  v0[19] = v1;
  OUTLINED_FUNCTION_3_31();
  v8 = OUTLINED_FUNCTION_294();
  v10 = v9;

  v0[20] = v8;
  v0[21] = v10;
  v0[22] = 8236;
  v0[23] = 0xE200000000000000;
  v0[24] = v2;
  v0[25] = v1;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_294();
  v12 = v11;

  v0[27] = v12;
  OUTLINED_FUNCTION_27_0(&unk_1D56409A0);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_273(v13);

  return v15(v14);
}

uint64_t sub_1D51D2484()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 216);

    OUTLINED_FUNCTION_55();

    return v13();
  }
}

uint64_t sub_1D51D25A0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 232);

  return v2();
}

uint64_t sub_1D51D261C()
{
  OUTLINED_FUNCTION_76_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_191_1(v3);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_3_31();
  v0[8] = OUTLINED_FUNCTION_294();
  v0[10] = 62;
  v0[9] = v4;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v1;
  OUTLINED_FUNCTION_3_31();
  v5 = OUTLINED_FUNCTION_294();
  v7 = v6;

  v0[14] = v5;
  v0[16] = 46;
  v0[15] = v7;
  v0[17] = v1;
  v0[18] = v2;
  v0[19] = v1;
  OUTLINED_FUNCTION_3_31();
  v8 = OUTLINED_FUNCTION_294();
  v10 = v9;

  v0[20] = v8;
  v0[21] = v10;
  v0[22] = 8236;
  v0[23] = 0xE200000000000000;
  v0[24] = v2;
  v0[25] = v1;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_294();
  v12 = v11;

  v0[27] = v12;
  OUTLINED_FUNCTION_27_0(&unk_1D5640938);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_273(v13);

  return v15(v14);
}

uint64_t sub_1D51D27DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 216);

    OUTLINED_FUNCTION_55();

    return v13();
  }
}

uint64_t sub_1D51D28F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);

  result = sub_1D51D2A80(v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = sub_1D51D32C4;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1D51D29D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_1D51D2A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

void sub_1D51D2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >> 6 == 1)
  {
  }

  else if (!(a6 >> 6))
  {

    sub_1D51D29D8(a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_1D51D2B88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D51D2BD0()
{
  result = qword_1EDD546D0[0];
  if (!qword_1EDD546D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD546D0);
  }

  return result;
}

unint64_t sub_1D51D2C58()
{
  result = qword_1EC7F1580;
  if (!qword_1EC7F1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1580);
  }

  return result;
}

unint64_t sub_1D51D2CAC()
{
  result = qword_1EC7F1588;
  if (!qword_1EC7F1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1588);
  }

  return result;
}

uint64_t sub_1D51D2DB0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_3_36(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D51D2E04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D51D2E5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D51D2EF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D51D2F34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D51D2FD0()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_3_36(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D51D3024()
{
  OUTLINED_FUNCTION_69_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_36(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D51D3078()
{
  OUTLINED_FUNCTION_69_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_36(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

uint64_t sub_1D51D30D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v6 = a4;
      }

      else
      {
        v6 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA6EB8A0](result, a2, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
      swift_dynamicCast();
      return v15;
    }

LABEL_29:
    __break(1u);
    return result;
  }

  if (a3)
  {
    if (sub_1D5615A78() == *(a4 + 36))
    {
      sub_1D5615A88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
      swift_dynamicCast();
      v7 = *(a4 + 40);
      sub_1D56162D8();
      v8 = *(v15 + 16);
      v9 = *(v15 + 24);
      sub_1D5614E28();
      v10 = sub_1D5616328();
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v5 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_28;
        }

        v12 = *(*(a4 + 48) + 8 * v5);
        v13 = *(v12 + 16) == *(v15 + 16) && *(v12 + 24) == *(v15 + 24);
        if (v13 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_22;
        }

        v10 = v5 + 1;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
    goto LABEL_29;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_22:
  }

  v14 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_1D51D32C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D52B2428(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__n128 OUTLINED_FUNCTION_28_41@<Q0>(uint64_t a1@<X8>, __n128 a2, __int128 a3)
{
  *(v4 + 32) = v3;
  *(v4 + 40) = a1;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  result = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a2;
  *(v4 + 104) = 1;
  v9 = *(v7 + 24);
  return result;
}

__n128 OUTLINED_FUNCTION_42_24()
{
  v4 = *(v2 + 1856);
  *(v0 + 16) = v1;
  v5 = v0 + 80 * v3;
  *(v5 + 32) = 2116036128;
  *(v5 + 40) = 0xE400000000000000;
  result = *(v2 + 288);
  v7 = *(v2 + 304);
  v8 = *(v2 + 320);
  *(v5 + 96) = *(v2 + 336);
  *(v5 + 64) = v7;
  *(v5 + 80) = v8;
  *(v5 + 48) = result;
  *(v5 + 104) = 0;
  *(v2 + 1760) = v4;
  return result;
}

void OUTLINED_FUNCTION_47_27()
{
  *(v0 + 16) = v2;
  v5 = v0 + 80 * v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_65_20()
{

  return sub_1D51D2FD0();
}

void OUTLINED_FUNCTION_67_21()
{
  *(v1 + 168) = 1;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void OUTLINED_FUNCTION_68_12()
{
  *(v0 + 16) = v2;
  v3 = v0 + 80 * v1;
  *(v3 + 32) = 2112544;
  *(v3 + 40) = 0xE300000000000000;
}

__n128 OUTLINED_FUNCTION_78_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __int128 a12, __int128 a13, uint64_t a14)
{
  result = a11;
  *(v14 + 96) = a14;
  *(v14 + 64) = a12;
  *(v14 + 80) = a13;
  *(v14 + 48) = a11;
  return result;
}

void OUTLINED_FUNCTION_109_12()
{
  *(v0 + 16) = v1;
  v5 = v0 + 80 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_110_9()
{
  v4 = *(v1 + v0);

  return sub_1D4F13D54();
}

uint64_t OUTLINED_FUNCTION_111_8()
{
  v1 = v0[26];
  v2 = v0[27];
  result = v0[25];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[17];
  return result;
}

uint64_t OUTLINED_FUNCTION_113_10(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_114_5(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

__n128 OUTLINED_FUNCTION_133_4()
{
  result = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return result;
}

__n128 OUTLINED_FUNCTION_136_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  result = a9;
  *(v12 + 96) = a12;
  *(v12 + 64) = a10;
  *(v12 + 80) = a11;
  *(v12 + 48) = a9;
  return result;
}

void *OUTLINED_FUNCTION_140_7@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_141_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_144_3(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_150_7@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{

  return sub_1D54F08F4(v2, 0, 0, a1, a2);
}

uint64_t OUTLINED_FUNCTION_155_5()
{
  v2 = v0[235];
  v3 = v0[231];
  v4 = v0[230];
  v5 = v0[228];

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_156_4()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_159_6()
{
  v2 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_161_5(uint64_t a1)
{
  *(a1 + 8) = sub_1D51BCF50;
  v2 = *(v1 + 2152);
  v3 = *(v1 + 2144);
  return v1 + 2064;
}

uint64_t OUTLINED_FUNCTION_162_5(uint64_t a1)
{
  *(a1 + 8) = sub_1D51C7FE0;
  v2 = v1[9];
  v3 = v1[10];
  return v1[15];
}

uint64_t OUTLINED_FUNCTION_164_3()
{
  v1 = *(v0 + 1888) + 1;
  *(v0 + 1888) = v1;
  v2 = *(v0 + 1880);
  result = *(v0 + 1848);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1832) + 16;
  v6 = *(v0 + 1768) + ((*(v0 + 92) + 32) & ~*(v0 + 92)) + *(v0 + 1872) * v1;
  return result;
}

void OUTLINED_FUNCTION_170_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1DA6ED200);
}

uint64_t OUTLINED_FUNCTION_171_2@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
  v6 = *(v1 + 16) + 1;
}

void OUTLINED_FUNCTION_173_1(uint64_t a1@<X8>)
{
  *(a1 + 88) = &unk_1D5640998;
  *(a1 + 96) = 0;
  *(a1 + 104) = 2;
}

void OUTLINED_FUNCTION_175_2(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_185_3()
{
  v2 = -1;
  v3 = -1 << *(v0 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v0 + 56);
}

unint64_t OUTLINED_FUNCTION_191_1@<X0>(uint64_t a1@<X8>)
{
  v2[2] = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  v2[3] = a1;
  v2[4] = 60;
  v2[5] = 0xE100000000000000;
  v2[6] = 95;
  v2[7] = 0xE100000000000000;

  return sub_1D4F53278();
}

uint64_t OUTLINED_FUNCTION_193_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1664) = a1;
  *(v1 + 1632) = v3;

  return sub_1D4E628D4(v1 + 1632, v1 + 96);
}

uint64_t OUTLINED_FUNCTION_194_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1704) = a1;
  *(v1 + 1672) = v3;

  return sub_1D4E628D4(v1 + 1672, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_195_2()
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_196_1()
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_197_1()
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_198_3()
{
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[227];
  v5 = v0[226];
}

uint64_t OUTLINED_FUNCTION_199_1()
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v0 + 24);
  v6 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_200_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_201_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_202_2@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_204_2()
{
  v1 = *(v0 + 80);
  result = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_205_2()
{

  return sub_1D51D2FD0();
}

uint64_t OUTLINED_FUNCTION_207_1(uint64_t result)
{
  v2 = *(result + 16);
  v1 = *(result + 24);
  return result;
}

void OUTLINED_FUNCTION_210_2()
{
  v1 = v0[230];
  v2 = v0[229];
  v3 = v0[228];
}

uint64_t OUTLINED_FUNCTION_218_2()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_219_0(uint64_t a1)
{
  v2 = -(-1 << *(a1 + 32));
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 56);
}

uint64_t OUTLINED_FUNCTION_226_1()
{
  v1 = v0[237];
  v2 = v0[233];
  result = v0[231];
  v4 = v0[228];
  v5 = v0[236] + 1;
  v6 = v0[229] + 8;
  return result;
}

void OUTLINED_FUNCTION_228_1(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_231_0()
{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1768);
  v3 = *(v1 + 16);
  *(v0 + 92) = *(v1 + 80);
}

void OUTLINED_FUNCTION_233_0(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_238@<X0>(uint64_t a1@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v1)))));
}

uint64_t OUTLINED_FUNCTION_239@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*(v1 + 48) + (__clz(__rbit64(v4)) | (a1 << 6)));

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t OUTLINED_FUNCTION_240@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(a2)))));
}

void OUTLINED_FUNCTION_245(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_249(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *(a1 + 88) = a3;
  *(a1 + 72) = a2;
  *(a1 + 104) = 1;
  v4 = *(v3 + 24);
}

void OUTLINED_FUNCTION_250(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_251()
{
}

uint64_t OUTLINED_FUNCTION_252()
{

  return sub_1D5615B98();
}

void *OUTLINED_FUNCTION_253(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x49uLL);
}

void *OUTLINED_FUNCTION_254(void *a1)
{

  return memcpy(a1, (v1 + 96), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_255@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
}

void OUTLINED_FUNCTION_257(uint64_t a1@<X8>)
{
  v5 = v1 + v4 * a1;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 104) = 0;
  v6 = *(v2 + 552);
}

void OUTLINED_FUNCTION_262(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_265()
{
  v2 = *(v0 + 24);
}

void OUTLINED_FUNCTION_267()
{

  sub_1D4F0029C();
}

void OUTLINED_FUNCTION_268()
{

  sub_1D4F0029C();
}

uint64_t OUTLINED_FUNCTION_269(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + v10) = a10;

  return swift_endAccess();
}

void OUTLINED_FUNCTION_270()
{
  v3 = *(v2 + 2192);
  v4 = *(v2 + 2184);
  *(v1 + 16) = v0;
}

uint64_t OUTLINED_FUNCTION_272_0@<X0>(uint64_t a1@<X8>)
{
  v6 = *(a1 + *(v1 + 32));
  v2[226] = v3;
  v2[227] = v4;
  v2[223] = v6;

  return sub_1D4E628D4((v2 + 223), (v2 + 32));
}

uint64_t OUTLINED_FUNCTION_273(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 208);
  return v2;
}

void OUTLINED_FUNCTION_274(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_275(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_278()
{
  v1 = v0[274];
  v2 = v0[272];
  v3 = v0[271];
}

uint64_t OUTLINED_FUNCTION_291()
{
  v2 = v0[272];
  v3 = v0[270];
  v4 = v0[257];
  v5 = v0[256];

  return __swift_mutable_project_boxed_opaque_existential_1((v0 + 253), v5);
}

uint64_t OUTLINED_FUNCTION_292(uint64_t a1, uint64_t a2)
{
  *(v5 + 272) = a1;
  *a2 = v3;
  *(a2 + 4) = v9;
  *(a2 + 8) = v6;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_294()
{

  return sub_1D5615968();
}

uint64_t OUTLINED_FUNCTION_295()
{

  return sub_1D5615968();
}

void OUTLINED_FUNCTION_297(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_299()
{
  v1 = *(v0 + 90);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  return *(v0 + 688);
}

void OUTLINED_FUNCTION_300(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_304(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_307(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_308(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

void OUTLINED_FUNCTION_309(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_310()
{
}

uint64_t OUTLINED_FUNCTION_311()
{
  v2 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_312()
{
  v2 = *(v0 + 89);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);

  return sub_1D51D29D8(v6, v5, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_313()
{
  *(v0 + 168) = v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_314()
{
  v2 = *(v0 + 1480);
  v3 = *(v0 + 90);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1464);
  v6 = *(v0 + 1456);

  return sub_1D51D29D8(v2, v6, v5, v4, v3);
}

void OUTLINED_FUNCTION_315()
{

  sub_1D4F0029C();
}

void OUTLINED_FUNCTION_316()
{

  sub_1D4F0029C();
}

void *OUTLINED_FUNCTION_317(void *a1)
{

  return memcpy(a1, (v1 + 176), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_319()
{
}

void OUTLINED_FUNCTION_322(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(a1 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_328()
{
  v1 = v0[19];
  result = *(v0[30] + 128);
  v0[33] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_331(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

void OUTLINED_FUNCTION_332(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_333()
{
  v1 = v0[27];
  result = v0[19];
  v3 = v0[16];
  v4 = v0[17] + 8;
  return result;
}

void OUTLINED_FUNCTION_337()
{
  v1[25] = v0;
  v1[26] = v2;
  v1[27] = 8236;
  v1[28] = 0xE200000000000000;
}

uint64_t OUTLINED_FUNCTION_338_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 456);
  v4 = *(v2 + 464);
  return v2 + 376;
}

uint64_t OUTLINED_FUNCTION_343@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a3;
  v6[56] = a4;
  v6[53] = a1;
  v6[54] = a2;

  return _s13PersistedDateVMa();
}

uint64_t OUTLINED_FUNCTION_345@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_346@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_347(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1D4E6835C(v3, v4, va);
}

uint64_t OUTLINED_FUNCTION_348()
{
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[177];
  v5 = v0[174];
}

uint64_t OUTLINED_FUNCTION_349()
{
  v2 = v0[33];
  v3 = v0[22];
  v5 = v0[19];

  return sub_1D5614E98();
}

uint64_t OUTLINED_FUNCTION_350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[223] = a3;
  v3[222] = a2;
  v3[221] = a1;

  return sub_1D560C328();
}

void OUTLINED_FUNCTION_351()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  sub_1D51D2AD0(v2, v3, v4, v5, v6, v7);
}

uint64_t *OUTLINED_FUNCTION_352@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 36);
  v2[241] = a1;
  v2[242] = v3;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 238);
}

uint64_t OUTLINED_FUNCTION_353@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1856) = v2;
  *(v1 + 1824) = a1;

  return sub_1D4E628D4(v1 + 1824, v1 + 336);
}

uint64_t OUTLINED_FUNCTION_354()
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v0 + 24);
  v6 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_355@<X0>(char a1@<W8>)
{
  *(v3 + 200) = v2;
  *(v3 + 208) = v1;
  *(v3 + 176) = a1;

  return sub_1D4E628D4(v3 + 176, v3 + 16);
}

void OUTLINED_FUNCTION_356()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);

  sub_1D51D2AD0(v2, v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_357@<X0>(char a1@<W8>)
{
  *(v2 + 1896) = v1;
  *(v2 + 1864) = a1;

  return sub_1D4E628D4(v2 + 1864, v2 + 416);
}

uint64_t OUTLINED_FUNCTION_358@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_359()
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_361()
{

  return sub_1D5615968();
}

uint64_t OUTLINED_FUNCTION_362()
{
}

uint64_t OUTLINED_FUNCTION_363()
{
}

uint64_t OUTLINED_FUNCTION_364()
{
}

uint64_t OUTLINED_FUNCTION_365()
{

  return sub_1D4E628D4(v0 + 216, v0 + 96);
}

uint64_t OUTLINED_FUNCTION_367(uint64_t a1)
{
  *(v1 + 128) = a1;

  return _s11TransactionCMa();
}

uint64_t OUTLINED_FUNCTION_368()
{
}

void *OUTLINED_FUNCTION_369(void *a1)
{

  return memcpy(a1, (v1 + 256), 0x49uLL);
}

uint64_t MusicLibraryAdvancedMappingResponse.item(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LooselyComparableTypedIdentifier();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v12 = *a1;
  v11 = *(a1 + 1);
  v13 = type metadata accessor for MusicItemTypedIdentifier();
  v14 = *(v13 + 24);
  v15 = *(v6 + 28);
  v16 = sub_1D560D9A8();
  (*(*(v16 - 8) + 16))(&v9[v15], &a1[v14], v16);
  sub_1D514AE90(&a1[*(v13 + 28)], &v9[*(v6 + 32)]);
  *v9 = v12;
  *(v9 + 1) = v11;
  v17 = *(v10 + 16);

  if (v17 && (v18 = sub_1D4F0DDB4(v9), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v10 + 56);
    v22 = type metadata accessor for GenericMusicItem();
    sub_1D4F26680(v21 + *(*(v22 - 8) + 72) * v20, a2);
    sub_1D51D4B00(v9);
    v23 = a2;
    v24 = 0;
    v25 = v22;
  }

  else
  {
    sub_1D51D4B00(v9);
    v25 = type metadata accessor for GenericMusicItem();
    v23 = a2;
    v24 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
}

void static MusicLibraryAdvancedMappingResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D4F2E050();
}

uint64_t MusicLibraryAdvancedMappingResponse.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4F30CE0(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D51D4ABC()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4F30CE0(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1D5616328();
}

uint64_t sub_1D51D4B00(uint64_t a1)
{
  v2 = type metadata accessor for LooselyComparableTypedIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D51D4B60()
{
  result = qword_1EC7F1658;
  if (!qword_1EC7F1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1658);
  }

  return result;
}

uint64_t sub_1D51D4BF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1(0);
  a3[3] = v6;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v8 = *(*(v6 - 8) + 16);

  return v8(boxed_opaque_existential_0, v3, v6);
}

uint64_t FavoritableMusicItem.itemToFavorite.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = *(*(a2 + 8) + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t MusicPin.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = a2 + *(type metadata accessor for MusicPin() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPin.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicPin.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicPin() + 20);
  v4 = sub_1D5611AB8();
  OUTLINED_FUNCTION_24_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t MusicPin.action.getter@<X0>(char *a1@<X8>)
{
  if (qword_1EC7E9020 != -1)
  {
    OUTLINED_FUNCTION_3_100();
  }

  sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  OUTLINED_FUNCTION_0_127();
  sub_1D51D976C(v2, type metadata accessor for MusicPin);
  result = sub_1D560EC28();
  v4 = v5;
  if (v5 == 3)
  {
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t MusicPin.item.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  if (qword_1EC7E9028 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for MusicPin.Item();
  sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  OUTLINED_FUNCTION_0_127();
  sub_1D51D976C(v9, type metadata accessor for MusicPin);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    return sub_1D4F7296C(v7, a1);
  }

  sub_1D50635DC(v7);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

BOOL MusicPin.isSingleMusicVideo.getter()
{
  v0 = type metadata accessor for MusicPin.Item();
  OUTLINED_FUNCTION_24_0(v0);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1D560EEA8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  MusicPin.item.getter(v6);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v10 + 32))(v15, v6, v7);
    v16 = sub_1D560ED88();
    (*(v10 + 8))(v15, v7);
    return v16 < 2;
  }

  else
  {
    sub_1D4F70890(v6);
    return 0;
  }
}

uint64_t sub_1D51D53E8()
{
  if (qword_1EC7E9030 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_10_69();
  sub_1D51D976C(v1, v0);
  OUTLINED_FUNCTION_0_127();
  sub_1D51D976C(v2, v0);
  sub_1D560EC28();
  if (v4 == 4)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D51D54D0(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for MusicPin.Item();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = MusicPin.item.getter(v7 - v6);
  a1(v9);
  return sub_1D4F70890(v8);
}

uint64_t MusicPin.position.getter()
{
  if (qword_1EC7E9038 != -1)
  {
    OUTLINED_FUNCTION_5_78();
  }

  OUTLINED_FUNCTION_10_69();
  sub_1D51D976C(v1, v0);
  OUTLINED_FUNCTION_0_127();
  sub_1D51D976C(v2, v0);
  sub_1D560EC28();
  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t MusicPin.title.getter()
{
  v0 = type metadata accessor for MusicPin.Item();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  MusicPin.item.getter(v5 - v4);
  MusicPin.Item.title.getter();
  v8 = v7;
  sub_1D4F70890(v6);
  return v8;
}

uint64_t static MusicPin.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MusicPin() + 20);

  return sub_1D5611A78();
}

uint64_t MusicPin.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicPin() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_71();
  sub_1D51D976C(v4, v5);
  return sub_1D5614CB8();
}

uint64_t MusicPin.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for MusicPin() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_9_71();
  sub_1D51D976C(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51D5848(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D51D976C(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D51D58EC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPin.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D51D5914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  v12 = sub_1D51D976C(&qword_1EC7F1808, type metadata accessor for MusicPin);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D51D5A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  v14 = sub_1D51D976C(&qword_1EC7F1808, type metadata accessor for MusicPin);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D51D5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  v14 = sub_1D51D976C(&qword_1EC7F1808, type metadata accessor for MusicPin);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D51D5CD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17F8, &qword_1D564BD90);
  swift_getKeyPath();
  sub_1D51D97B4();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C280 = v0;
  return result;
}

uint64_t sub_1D51D5D40@<X0>(_BYTE *a1@<X8>)
{
  result = MusicPin.action.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1D51D5D7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17F8, &qword_1D564BD90);
  swift_getKeyPath();
  sub_1D51D976C(&qword_1EC7F1810, type metadata accessor for MusicPin.Item);
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C288 = v0;
  return result;
}

uint64_t sub_1D51D5E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17F8, &qword_1D564BD90);
  swift_getKeyPath();
  sub_1D51D9718();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C290 = v0;
  return result;
}

uint64_t sub_1D51D5E84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17F8, &qword_1D564BD90);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EC87C298 = v0;
  return result;
}

uint64_t sub_1D51D5EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D51D5F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D51D5FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D51D6070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D51D60EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D51D6168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D51D61E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D51D6260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D51D62DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D51D6358()
{
  sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return sub_1D5613028();
}

uint64_t sub_1D51D63D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D51D6458()
{
  sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return sub_1D5612FD8();
}

uint64_t sub_1D51D64DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D51D6558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D51D976C(&qword_1EDD5EC98, type metadata accessor for MusicPin);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t MusicPin.init(from:)(uint64_t *a1)
{
  type metadata accessor for MusicPin();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_103();
  sub_1D51D976C(v3, v4);
  OUTLINED_FUNCTION_8_68();
  sub_1D51D976C(v5, v1);
  OUTLINED_FUNCTION_13_56(&qword_1EC7F16A8);
  sub_1D560CA18();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicPin.encode(to:)()
{
  type metadata accessor for MusicPin();
  OUTLINED_FUNCTION_2_103();
  sub_1D51D976C(v1, v2);
  OUTLINED_FUNCTION_8_68();
  sub_1D51D976C(v3, v0);
  OUTLINED_FUNCTION_13_56(&qword_1EC7F16A8);
  return sub_1D560CA28();
}

uint64_t MusicPin.description.getter()
{
  v3 = type metadata accessor for MusicPin.Item();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_56();
  v21 = v7;
  v22 = v8;
  v20[0] = 0x22203A6469;
  v20[1] = 0xE500000000000000;
  v9 = *v0;
  v10 = v0[1];
  v11 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v11);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  strcpy(v20, ", position: ");
  HIWORD(v20[1]) = -5120;
  if (qword_1EC7E9038 != -1)
  {
    OUTLINED_FUNCTION_5_78();
  }

  OUTLINED_FUNCTION_11_71();
  sub_1D51D976C(v12, v2);
  OUTLINED_FUNCTION_0_127();
  sub_1D51D976C(v13, v2);
  OUTLINED_FUNCTION_12_59();
  v14 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v14);

  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  MEMORY[0x1DA6EAC70](0x6E6F69746361202CLL, 0xEA0000000000203ALL);
  if (qword_1EC7E9020 != -1)
  {
    OUTLINED_FUNCTION_3_100();
  }

  OUTLINED_FUNCTION_12_59();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  strcpy(v20, ", item: ");
  BYTE1(v20[1]) = 0;
  WORD1(v20[1]) = 0;
  HIDWORD(v20[1]) = -402653184;
  MusicPin.item.getter(v1);
  MusicPin.Item.description.getter();
  v16 = v15;
  v18 = v17;
  sub_1D4F70890(v1);
  MEMORY[0x1DA6EAC70](v16, v18);

  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v21;
}

uint64_t MusicPin.debugDescription.getter()
{
  v3 = type metadata accessor for MusicPin.Item();
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14_56();
  v18 = v7;
  v8 = *v0;
  v9 = v0[1];
  v10 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v10);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  sub_1D5615B68();

  if (qword_1EC7E9038 != -1)
  {
    OUTLINED_FUNCTION_5_78();
  }

  OUTLINED_FUNCTION_11_71();
  sub_1D51D976C(v11, v2);
  OUTLINED_FUNCTION_0_127();
  sub_1D51D976C(v12, v2);
  OUTLINED_FUNCTION_12_59();
  v13 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v13);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x69736F7020200A2CLL, 0xEF22203A6E6F6974);

  MEMORY[0x1DA6EAC70](0x6974636120200A2CLL, 0xEC000000203A6E6FLL);
  if (qword_1EC7E9020 != -1)
  {
    OUTLINED_FUNCTION_3_100();
  }

  OUTLINED_FUNCTION_12_59();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MusicPin.item.getter(v1);
  MusicPin.Item.debugDescription.getter();
  sub_1D4F70890(v1);
  sub_1D4F53278();
  v14 = sub_1D5615968();
  v16 = v15;

  MEMORY[0x1DA6EAC70](v14, v16);

  MEMORY[0x1DA6EAC70](0x6D65746920200A2CLL, 0xEA0000000000203ALL);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v18;
}

uint64_t sub_1D51D6E20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6975208], v0);
  v6(v5 + v2, *MEMORY[0x1E6975218], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6975200], v0);
  qword_1EC7F1660 = v4;
  return result;
}

uint64_t static MusicPin.catalogDetailedIdentifierKinds.getter()
{
  if (qword_1EC7E9040 != -1)
  {
    swift_once();
  }
}

uint64_t MusicPin.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MusicPin.Item();
  v3 = OUTLINED_FUNCTION_22(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  MusicPin.item.getter(v7 - v6);
  MusicPin.Item.innerItem.getter(a1);
  return sub_1D4F70890(v8);
}

uint64_t sub_1D51D7048()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F1668);
  __swift_project_value_buffer(v0, qword_1EC7F1668);
  type metadata accessor for MusicPin();
  sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  return sub_1D560D988();
}

uint64_t sub_1D51D7108()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7F1680);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F1680);
  if (qword_1EC7E9048 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC7F1668);
  OUTLINED_FUNCTION_24_0(v0);
  v3 = *(v2 + 16);

  return v3(v1);
}

uint64_t sub_1D51D7204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461676976616ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2036427888 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6666756873 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D51D7314(char a1)
{
  if (!a1)
  {
    return 0x657461676976616ELL;
  }

  if (a1 == 1)
  {
    return 2036427888;
  }

  return 0x656C6666756873;
}

uint64_t sub_1D51D7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D51D7204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51D73AC(uint64_t a1)
{
  v2 = sub_1D51D7894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D73E8(uint64_t a1)
{
  v2 = sub_1D51D7894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D7424(uint64_t a1)
{
  v2 = sub_1D51D7990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D7460(uint64_t a1)
{
  v2 = sub_1D51D7990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D749C(uint64_t a1)
{
  v2 = sub_1D51D793C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D74D8(uint64_t a1)
{
  v2 = sub_1D51D793C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D7514(uint64_t a1)
{
  v2 = sub_1D51D78E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D7550(uint64_t a1)
{
  v2 = sub_1D51D78E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MusicPin.Action.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F16B0, &qword_1D5640B88);
  v4 = OUTLINED_FUNCTION_4(v3);
  v44 = v5;
  v45 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v43 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F16B8, &qword_1D5640B90);
  v11 = OUTLINED_FUNCTION_4(v10);
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v40 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F16C0, &qword_1D5640B98);
  v18 = OUTLINED_FUNCTION_4(v17);
  v38 = v19;
  v39 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F16C8, &qword_1D5640BA0);
  OUTLINED_FUNCTION_4(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v37 - v31;
  v33 = *v0;
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D51D7894();
  sub_1D56163D8();
  if (v33)
  {
    if (v33 == 1)
    {
      sub_1D51D793C();
      v24 = v40;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v36 = v41;
      v35 = v42;
    }

    else
    {
      sub_1D51D78E8();
      v24 = v43;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v36 = v44;
      v35 = v45;
    }
  }

  else
  {
    sub_1D51D7990();
    OUTLINED_FUNCTION_7_11();
    sub_1D5616018();
    v36 = v38;
    v35 = v39;
  }

  (*(v36 + 8))(v24, v35);
  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D51D7894()
{
  result = qword_1EC7F16D0;
  if (!qword_1EC7F16D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F16D0);
  }

  return result;
}

unint64_t sub_1D51D78E8()
{
  result = qword_1EC7F16D8;
  if (!qword_1EC7F16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F16D8);
  }

  return result;
}

unint64_t sub_1D51D793C()
{
  result = qword_1EC7F16E0;
  if (!qword_1EC7F16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F16E0);
  }

  return result;
}

unint64_t sub_1D51D7990()
{
  result = qword_1EC7F16E8;
  if (!qword_1EC7F16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F16E8);
  }

  return result;
}

uint64_t MusicPin.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void MusicPin.Action.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v76 = v0;
  v3 = v2;
  v71 = v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F16F0, &qword_1D5640BA8);
  OUTLINED_FUNCTION_4(v75);
  v72 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v74 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F16F8, &qword_1D5640BB0);
  v11 = OUTLINED_FUNCTION_4(v10);
  v69 = v12;
  v70 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1700, &qword_1D5640BB8);
  OUTLINED_FUNCTION_4(v18);
  v68 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1708, &unk_1D5640BC0);
  OUTLINED_FUNCTION_4(v25);
  v73 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9();
  v30 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D51D7894();
  v31 = v76;
  sub_1D5616398();
  if (v31)
  {
    goto LABEL_10;
  }

  v65 = v18;
  v66 = v24;
  v67 = v17;
  v33 = v74;
  v32 = v75;
  v76 = v3;
  v34 = sub_1D5615FE8();
  v38 = sub_1D4FE35F0(v34, 0);
  if (v36 == v37 >> 1)
  {
    goto LABEL_9;
  }

  v64 = 0;
  if (v36 < (v37 >> 1))
  {
    LODWORD(v39) = *(v35 + v36);
    sub_1D4FE35EC(v36 + 1, v37 >> 1, v38, v35, v36, v37);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v41 == v43 >> 1;
    v45 = v72;
    if (v44)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          sub_1D51D793C();
          v46 = v67;
          OUTLINED_FUNCTION_4_4();
          v47 = v71;
          v48 = v25;
          v49 = v73;
          swift_unknownObjectRelease();
          (*(v69 + 8))(v46, v70);
          (*(v49 + 8))(v1, v48);
        }

        else
        {
          LODWORD(v70) = v39;
          sub_1D51D78E8();
          v59 = v64;
          sub_1D5615F18();
          v47 = v71;
          v39 = v25;
          v60 = v73;
          if (v59)
          {
            (*(v73 + 8))(v1, v39);
            swift_unknownObjectRelease();
            v3 = v76;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v45 + 8))(v33, v32);
          (*(v60 + 8))(v1, v39);
          LOBYTE(v39) = v70;
        }
      }

      else
      {
        sub_1D51D7990();
        v58 = v66;
        OUTLINED_FUNCTION_4_4();
        swift_unknownObjectRelease();
        (*(v68 + 8))(v58, v65);
        v61 = OUTLINED_FUNCTION_3_59();
        v62(v61);
        v47 = v71;
      }

      *v47 = v39;
      __swift_destroy_boxed_opaque_existential_1(v76);
      goto LABEL_11;
    }

LABEL_9:
    v50 = sub_1D5615C18();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v52 = &type metadata for MusicPin.Action;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    v54 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v50);
    (*(v55 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_21_44();
    v57(v56, v25);
    v3 = v76;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

uint64_t sub_1D51D7FD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D75626C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747369747261 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7473696C79616C70 && a2 == 0xE800000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6B63617274 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

uint64_t sub_1D51D8124(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x7473696C79616C70;
      break;
    case 3:
      result = 0x6B63617274;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D51D8198()
{
  OUTLINED_FUNCTION_25_1();
  v55 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17D0, &qword_1D5641530);
  v4 = OUTLINED_FUNCTION_4(v3);
  v53 = v5;
  v54 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v52 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17D8, &qword_1D5641538);
  v11 = OUTLINED_FUNCTION_4(v10);
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v49 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17E0, &qword_1D5641540);
  v18 = OUTLINED_FUNCTION_4(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17E8, &qword_1D5641548);
  OUTLINED_FUNCTION_4(v23);
  v46 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17F0, &unk_1D5641550);
  OUTLINED_FUNCTION_4(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v45 - v36;
  v38 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D51D9574();
  sub_1D56163D8();
  switch(v55)
  {
    case 1:
      sub_1D51D9670();
      sub_1D5616018();
      v42 = OUTLINED_FUNCTION_21_44();
      v44(v42, v43);
      break;
    case 2:
      sub_1D51D961C();
      v39 = v49;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v41 = v50;
      v40 = v51;
      goto LABEL_5;
    case 3:
      sub_1D51D95C8();
      v39 = v52;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v41 = v53;
      v40 = v54;
LABEL_5:
      (*(v41 + 8))(v39, v40);
      break;
    default:
      sub_1D51D96C4();
      sub_1D5616018();
      (*(v46 + 8))(v29, v23);
      break;
  }

  (*(v32 + 8))(v37, v30);
  OUTLINED_FUNCTION_26();
}

void sub_1D51D8564()
{
  OUTLINED_FUNCTION_25_1();
  v77 = v0;
  v2 = v1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1780, &qword_1D5641508);
  OUTLINED_FUNCTION_4(v76);
  v73 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v75 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1788, &qword_1D5641510);
  v9 = OUTLINED_FUNCTION_4(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v72 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1790, &qword_1D5641518);
  v16 = OUTLINED_FUNCTION_4(v15);
  v68 = v17;
  v69 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1798, &qword_1D5641520);
  OUTLINED_FUNCTION_4(v21);
  v67 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F17A0, &qword_1D5641528);
  OUTLINED_FUNCTION_4(v28);
  v74 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v63 - v33;
  v35 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D51D9574();
  v36 = v77;
  sub_1D5616398();
  if (v36)
  {
    goto LABEL_8;
  }

  v65 = v21;
  v66 = v27;
  v37 = v75;
  v38 = v76;
  v77 = v2;
  v39 = v34;
  v40 = sub_1D5615FE8();
  v44 = sub_1D4FE35F0(v40, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v56 = sub_1D5615C18();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v58 = &type metadata for MusicPin.Kind;
    sub_1D5615F28();
    OUTLINED_FUNCTION_48_2();
    v60 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_24_0(v56);
    (*(v61 + 104))(v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v74 + 8))(v39, v28);
    v2 = v77;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_9:
    OUTLINED_FUNCTION_26();
    return;
  }

  v64 = 0;
  if (v42 < (v43 >> 1))
  {
    v45 = *(v41 + v42);
    sub_1D4FE35EC(v42 + 1, v43 >> 1, v44, v41, v42, v43);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      v50 = v45;
      v52 = v73;
      v51 = v74;
      switch(v50)
      {
        case 1:
          sub_1D51D9670();
          OUTLINED_FUNCTION_16_57();
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 2:
          sub_1D51D961C();
          OUTLINED_FUNCTION_16_57();
          swift_unknownObjectRelease();
LABEL_15:
          v53 = OUTLINED_FUNCTION_21_44();
          goto LABEL_16;
        case 3:
          sub_1D51D95C8();
          v62 = v64;
          sub_1D5615F18();
          if (v62)
          {
            (*(v51 + 8))(v39, v28);
            swift_unknownObjectRelease();
            v2 = v77;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v52 + 8))(v37, v38);
LABEL_17:
          (*(v51 + 8))(v39, v28);
          __swift_destroy_boxed_opaque_existential_1(v77);
          break;
        default:
          sub_1D51D96C4();
          OUTLINED_FUNCTION_16_57();
          swift_unknownObjectRelease();
          v53 = OUTLINED_FUNCTION_21_44();
          v55 = v65;
LABEL_16:
          v54(v53, v55);
          goto LABEL_17;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1D51D8B68(uint64_t a1)
{
  v2 = sub_1D51D96C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D8BA4(uint64_t a1)
{
  v2 = sub_1D51D96C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D8BE0(uint64_t a1)
{
  v2 = sub_1D51D9670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D8C1C(uint64_t a1)
{
  v2 = sub_1D51D9670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D8C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D51D7FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51D8C88(uint64_t a1)
{
  v2 = sub_1D51D9574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D8CC4(uint64_t a1)
{
  v2 = sub_1D51D9574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D8D00(uint64_t a1)
{
  v2 = sub_1D51D961C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D8D3C(uint64_t a1)
{
  v2 = sub_1D51D961C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51D8D78(uint64_t a1)
{
  v2 = sub_1D51D95C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51D8DB4(uint64_t a1)
{
  v2 = sub_1D51D95C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D51D8DF0(_BYTE *a1@<X8>)
{
  sub_1D51D8564();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1D51D8E50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D51D8EE4(uint64_t a1)
{
  result = sub_1D51D976C(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D51D8F3C(uint64_t a1)
{
  result = sub_1D51D976C(&qword_1EC7F1710, type metadata accessor for MusicPin);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D51D8FE0()
{
  result = qword_1EC7F1718;
  if (!qword_1EC7F1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F1720, &qword_1D5640FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1718);
  }

  return result;
}

unint64_t sub_1D51D9048()
{
  result = qword_1EC7F1728;
  if (!qword_1EC7F1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1728);
  }

  return result;
}

_BYTE *sub_1D51D90F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D51D9208()
{
  result = qword_1EC7F1730;
  if (!qword_1EC7F1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1730);
  }

  return result;
}

unint64_t sub_1D51D9260()
{
  result = qword_1EC7F1738;
  if (!qword_1EC7F1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1738);
  }

  return result;
}

unint64_t sub_1D51D92B8()
{
  result = qword_1EC7F1740;
  if (!qword_1EC7F1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1740);
  }

  return result;
}

unint64_t sub_1D51D9310()
{
  result = qword_1EC7F1748;
  if (!qword_1EC7F1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1748);
  }

  return result;
}

unint64_t sub_1D51D9368()
{
  result = qword_1EC7F1750;
  if (!qword_1EC7F1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1750);
  }

  return result;
}

unint64_t sub_1D51D93C0()
{
  result = qword_1EC7F1758;
  if (!qword_1EC7F1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1758);
  }

  return result;
}

unint64_t sub_1D51D9418()
{
  result = qword_1EC7F1760;
  if (!qword_1EC7F1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1760);
  }

  return result;
}

unint64_t sub_1D51D9470()
{
  result = qword_1EC7F1768;
  if (!qword_1EC7F1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1768);
  }

  return result;
}

unint64_t sub_1D51D94C8()
{
  result = qword_1EC7F1770;
  if (!qword_1EC7F1770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1770);
  }

  return result;
}

unint64_t sub_1D51D9520()
{
  result = qword_1EC7F1778;
  if (!qword_1EC7F1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1778);
  }

  return result;
}

unint64_t sub_1D51D9574()
{
  result = qword_1EC7F17A8;
  if (!qword_1EC7F17A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F17A8);
  }

  return result;
}

unint64_t sub_1D51D95C8()
{
  result = qword_1EC7F17B0;
  if (!qword_1EC7F17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F17B0);
  }

  return result;
}

unint64_t sub_1D51D961C()
{
  result = qword_1EC7F17B8;
  if (!qword_1EC7F17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F17B8);
  }

  return result;
}

unint64_t sub_1D51D9670()
{
  result = qword_1EC7F17C0;
  if (!qword_1EC7F17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F17C0);
  }

  return result;
}

unint64_t sub_1D51D96C4()
{
  result = qword_1EC7F17C8;
  if (!qword_1EC7F17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F17C8);
  }

  return result;
}

unint64_t sub_1D51D9718()
{
  result = qword_1EC7F1800;
  if (!qword_1EC7F1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1800);
  }

  return result;
}

uint64_t sub_1D51D976C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D51D97B4()
{
  result = qword_1EC7F1818;
  if (!qword_1EC7F1818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1818);
  }

  return result;
}

_BYTE *sub_1D51D9808(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D51D9928()
{
  result = qword_1EC7F1820;
  if (!qword_1EC7F1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1820);
  }

  return result;
}

unint64_t sub_1D51D9980()
{
  result = qword_1EC7F1828;
  if (!qword_1EC7F1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1828);
  }

  return result;
}

unint64_t sub_1D51D99D8()
{
  result = qword_1EC7F1830;
  if (!qword_1EC7F1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1830);
  }

  return result;
}

unint64_t sub_1D51D9A30()
{
  result = qword_1EC7F1838;
  if (!qword_1EC7F1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1838);
  }

  return result;
}

unint64_t sub_1D51D9A88()
{
  result = qword_1EC7F1840;
  if (!qword_1EC7F1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1840);
  }

  return result;
}

unint64_t sub_1D51D9AE0()
{
  result = qword_1EC7F1848;
  if (!qword_1EC7F1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1848);
  }

  return result;
}

unint64_t sub_1D51D9B38()
{
  result = qword_1EC7F1850;
  if (!qword_1EC7F1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1850);
  }

  return result;
}

unint64_t sub_1D51D9B90()
{
  result = qword_1EC7F1858;
  if (!qword_1EC7F1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1858);
  }

  return result;
}

unint64_t sub_1D51D9BE8()
{
  result = qword_1EC7F1860;
  if (!qword_1EC7F1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1860);
  }

  return result;
}

unint64_t sub_1D51D9C40()
{
  result = qword_1EC7F1868;
  if (!qword_1EC7F1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1868);
  }

  return result;
}

unint64_t sub_1D51D9C98()
{
  result = qword_1EC7F1870;
  if (!qword_1EC7F1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1870);
  }

  return result;
}

void sub_1D51D9D00(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v99 = a3;
  v102 = a4;
  v93 = sub_1D56132B8();
  v6 = OUTLINED_FUNCTION_4(v93);
  v91 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v90 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EECE0, &qword_1D562E630);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v89 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v89 - v20;
  v98 = sub_1D5614898();
  v21 = OUTLINED_FUNCTION_4(v98);
  v95 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v96 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  v32 = sub_1D560D838();
  v100 = OUTLINED_FUNCTION_4(v32);
  v101 = v33;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v100);
  v94 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v89 - v39;
  v41 = *(a2 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v38);
  v45 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v89 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v89 - v52;
  v54 = [objc_opt_self() sharedMonitor];
  v55 = [v54 isRemoteServerLikelyReachable];

  if (v55)
  {
    v89 = *(v41 + 16);
    v89(v47, a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1880, &qword_1D5641AB8);
    if (swift_dynamicCast())
    {
      v56 = *(&v104 + 1);
      v57 = v105;
      __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
      (*(v57 + 16))(v56, v57);
      __swift_destroy_boxed_opaque_existential_1(&v103);
      v58 = sub_1D560C0A8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v58);
      v60 = v101;
      if (EnumTagSinglePayload != 1)
      {
        sub_1D4E6C9CC(v53, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_27:
        v61 = 4;
        goto LABEL_28;
      }
    }

    else
    {
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      sub_1D4E6C9CC(&v103, &qword_1EC7F1888, &unk_1D5641AC0);
      v62 = sub_1D560C0A8();
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v62);
      v60 = v101;
    }

    sub_1D4E6C9CC(v53, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v63 = *(v99 + 8);
    sub_1D560EC98();
    sub_1D560D7A8();
    v64 = *(v60 + 8);
    v65 = v100;
    v64(v40, v100);
    v66 = sub_1D560F148();
    v67 = __swift_getEnumTagSinglePayload(v31, 1, v66);
    sub_1D4E6C9CC(v31, &unk_1EC7F1970, &qword_1D561F4A0);
    if (v67 != 1)
    {
      goto LABEL_27;
    }

    v89(v45, a1, a2);
    v68 = v97;
    v69 = v98;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
      (*(v95 + 32))(v96, v68, v69);
      v70 = _s8MusicKit8PlaylistV0aB8InternalE8isPublicSbSgvg_0();
      if ((v70 == 2 || (v70 & 1) == 0) && ((v71 = _s8MusicKit8PlaylistV0aB8InternalE18hasAdminPrivilegesSbSgvg_0(), v71 == 2) || (v71 & 1) == 0))
      {
        Playlist.variant.getter();
        v72 = v103 == 5;
      }

      else
      {
        v72 = 1;
      }

      v73 = v94;
      sub_1D560EC98();
      sub_1D560D768();
      v75 = v74;
      v64(v73, v65);
      if (!v75)
      {
        v78 = OUTLINED_FUNCTION_1_103();
        v79(v78);
        goto LABEL_24;
      }

      v76 = v92;
      sub_1D56145D8();
      v77 = v93;
      if (__swift_getEnumTagSinglePayload(v76, 1, v93) == 1)
      {
        sub_1D4E6C9CC(v76, &qword_1EC7EECE0, &qword_1D562E630);
      }

      else
      {
        v80 = v72;
        v81 = v90;
        sub_1D56132A8();
        sub_1D51DA758();
        v82 = sub_1D56159C8();
        v83 = *(v91 + 8);
        v83(v81, v77);
        sub_1D5613298();
        sub_1D56159C8();
        v84 = v81;
        v72 = v80;
        v83(v84, v77);
        v83(v76, v77);
        if (v82)
        {
          v85 = OUTLINED_FUNCTION_1_103();
          v86(v85);
          if (v80)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }

      Playlist.variant.getter();
      v87 = OUTLINED_FUNCTION_1_103();
      v88(v87);
      if (v103 == 8)
      {
LABEL_24:
        if (v72)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v72)
      {
        goto LABEL_27;
      }

      if (v103 == 3)
      {
LABEL_30:
        v61 = 2;
        goto LABEL_28;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v69);
      sub_1D4E6C9CC(v68, &unk_1EC7F1990, &unk_1D561CEF0);
    }

LABEL_25:
    v61 = 1;
    goto LABEL_28;
  }

  v61 = 3;
LABEL_28:
  *v102 = v61;
}

uint64_t MusicLibrary.ShareAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D51DA570()
{
  result = qword_1EC7F1878;
  if (!qword_1EC7F1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1878);
  }

  return result;
}

_BYTE *_s11ShareActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s11ShareActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D51DA758()
{
  result = qword_1EC7EECE8;
  if (!qword_1EC7EECE8)
  {
    sub_1D56132B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EECE8);
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(collaboration:updatedInvitationMode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D51DA814(a1, a3);
  v5 = type metadata accessor for Playlist.Collaboration();
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);
  result = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  v7 = (a3 + *(result + 20));
  *v7 = 0;
  v7[1] = 0;
  *(a3 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_1D51DA814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaboration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest()
{
  result = qword_1EC7F18A0;
  if (!qword_1EC7F18A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(collaborationID:updatedInvitationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for Playlist.Collaboration();
  __swift_storeEnumTagSinglePayload(a4, 1, 1, v8);
  result = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  v10 = (a4 + *(result + 20));
  *v10 = a1;
  v10[1] = a2;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.updatedInvitationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()()
{
  v1[18] = v0;
  v2 = sub_1D560D838();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D51DAA8C, 0, 0);
}

uint64_t sub_1D51DAA8C()
{
  v1 = v0[22];
  sub_1D51DB044(v0[18], v1);
  v2 = type metadata accessor for Playlist.Collaboration();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[22];
    v4 = &qword_1EC7EEFC8;
    v5 = &unk_1D562FAE0;
  }

  else
  {
    v6 = v0[22];
    v7 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v10 = v0[19];
    sub_1D51DB5F8(qword_1EDD5F0F8, type metadata accessor for Playlist.Collaboration);
    sub_1D560EC98();
    sub_1D51AF858(v6);
    sub_1D560D5C8();
    (*(v9 + 8))(v8, v10);
    v11 = sub_1D560D4C8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v11);
    v13 = v0[23];
    if (EnumTagSinglePayload != 1)
    {
      sub_1D560D4B8();
      (*(*(v11 - 8) + 8))(v13, v11);
      v14 = v0[18];
      goto LABEL_11;
    }

    v4 = &unk_1EC7EBF20;
    v5 = &unk_1D561F530;
    v3 = v0[23];
  }

  sub_1D4E50004(v3, v4, v5);
  v14 = v0[18];
  v15 = (v14 + *(type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest() + 20));
  if (v15[1])
  {
    v16 = *v15;
    v17 = v15[1];

LABEL_11:
    v24 = [objc_opt_self() sharedCloudController];
    v0[24] = v24;
    if (*(v14 + *(type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest() + 24)))
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = sub_1D5614D38();
    v0[25] = v26;

    v0[2] = v0;
    v0[3] = sub_1D51DAE10;
    v27 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D4FE2404;
    v0[13] = &block_descriptor_13;
    v0[14] = v27;
    [v24 updateSharingMode:v25 onCollaborationWithPersistentID:v26 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  sub_1D4F763B4();
  swift_allocError();
  *v18 = 5;
  swift_willThrow();
  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D51DAE10()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D51DAFB0;
  }

  else
  {
    v3 = sub_1D51DAF20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D51DAF20()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D51DAFB0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D51DB044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MusicCollaborativePlaylist.UpdateInvitationModeRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaboration();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v39 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1890, &qword_1D5641AE0);
  v17 = OUTLINED_FUNCTION_22(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v39 - v21;
  v23 = *(v20 + 56);
  sub_1D51DB044(a1, &v39 - v21);
  sub_1D51DB044(a2, &v22[v23]);
  OUTLINED_FUNCTION_5_1(v22);
  if (!v24)
  {
    sub_1D51DB044(v22, v15);
    OUTLINED_FUNCTION_5_1(&v22[v23]);
    if (!v24)
    {
      sub_1D51DA814(&v22[v23], v9);
      v29 = *v15 == *v9 && v15[1] == v9[1];
      if (v29 || (sub_1D5616168() & 1) != 0)
      {
        v30 = *(v4 + 20);
        v31 = sub_1D5611A78();
        sub_1D51AF858(v9);
        sub_1D51AF858(v15);
        sub_1D4E50004(v22, &qword_1EC7EEFC8, &unk_1D562FAE0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      sub_1D51AF858(v9);
      sub_1D51AF858(v15);
      v25 = &qword_1EC7EEFC8;
      v26 = &unk_1D562FAE0;
LABEL_10:
      sub_1D4E50004(v22, v25, v26);
      goto LABEL_11;
    }

    sub_1D51AF858(v15);
LABEL_9:
    v25 = &qword_1EC7F1890;
    v26 = &qword_1D5641AE0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_1(&v22[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v22, &qword_1EC7EEFC8, &unk_1D562FAE0);
LABEL_19:
  updated = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  v33 = *(updated + 20);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (v37)
    {
      v38 = *v34 == *v36 && v35 == v37;
      if (v38 || (sub_1D5616168() & 1) != 0)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v37)
  {
LABEL_28:
    v27 = *(a1 + *(updated + 24)) ^ *(a2 + *(updated + 24)) ^ 1;
    return v27 & 1;
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Collaboration();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEFC8, &unk_1D562FAE0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_1D51DB044(v1, &v21 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D51DA814(v13, v7);
    sub_1D56162F8();
    v14 = *v7;
    v15 = v7[1];
    sub_1D5614E28();
    v16 = *(v2 + 20);
    sub_1D5611AB8();
    sub_1D51DB5F8(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
    sub_1D5614CB8();
    sub_1D51AF858(v7);
  }

  updated = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  v18 = (v1 + *(updated + 20));
  if (v18[1])
  {
    v19 = *v18;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return MEMORY[0x1DA6EC0D0](*(v1 + *(updated + 24)));
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.hashValue.getter()
{
  sub_1D56162D8();
  MusicCollaborativePlaylist.UpdateInvitationModeRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D51DB574()
{
  sub_1D56162D8();
  MusicCollaborativePlaylist.UpdateInvitationModeRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D51DB5F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D51DB668()
{
  sub_1D51DB6F4();
  if (v0 <= 0x3F)
  {
    sub_1D51DB74C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D51DB6F4()
{
  if (!qword_1EC7F18B0)
  {
    type metadata accessor for Playlist.Collaboration();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F18B0);
    }
  }
}

void sub_1D51DB74C()
{
  if (!qword_1EDD53A08)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53A08);
    }
  }
}

uint64_t sub_1D51DB79C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F18D8, &qword_1D5641C78);
  v6 = OUTLINED_FUNCTION_25_10(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51DBB68();
  sub_1D56163D8();
  v15[1] = a2;
  sub_1D51DBC10();
  sub_1D56160C8();
  return (*(v8 + 8))(v12, v2);
}

void *sub_1D51DB8D8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F18C0, &qword_1D5641C70);
  v5 = OUTLINED_FUNCTION_25_10(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - v10;
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51DBB68();
  sub_1D5616398();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D51DBBBC();
    sub_1D5615FD8();
    (*(v7 + 8))(v11, v2);
    v13 = v15[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v13;
}

uint64_t sub_1D51DBA38(uint64_t a1)
{
  v2 = sub_1D51DBB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D51DBA74(uint64_t a1)
{
  v2 = sub_1D51DBB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D51DBAB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D51DB8D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D51DBB14()
{
  result = qword_1EC7F18B8;
  if (!qword_1EC7F18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18B8);
  }

  return result;
}

unint64_t sub_1D51DBB68()
{
  result = qword_1EC7F18C8;
  if (!qword_1EC7F18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18C8);
  }

  return result;
}

unint64_t sub_1D51DBBBC()
{
  result = qword_1EC7F18D0;
  if (!qword_1EC7F18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18D0);
  }

  return result;
}

unint64_t sub_1D51DBC10()
{
  result = qword_1EC7F18E0;
  if (!qword_1EC7F18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18E0);
  }

  return result;
}

_BYTE *_s16ResultsContainerV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D51DBD14()
{
  result = qword_1EC7F18E8;
  if (!qword_1EC7F18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18E8);
  }

  return result;
}

unint64_t sub_1D51DBD6C()
{
  result = qword_1EC7F18F0;
  if (!qword_1EC7F18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18F0);
  }

  return result;
}

unint64_t sub_1D51DBDC4()
{
  result = qword_1EC7F18F8;
  if (!qword_1EC7F18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F18F8);
  }

  return result;
}

uint64_t sub_1D51DBE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1910, &qword_1D5641DB0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  sub_1D4E69970(a1, v13, &qword_1EC7F1910, &qword_1D5641DB0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    type metadata accessor for MusicSuggestedPivotEntry();
    OUTLINED_FUNCTION_0_128();
    sub_1D51DE47C(v22, v23);
    sub_1D560D9F8();
    sub_1D4E50004(a1, &qword_1EC7F1910, &qword_1D5641DB0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_1D4E50004(v13, &qword_1EC7F1910, &qword_1D5641DB0);
    }
  }

  else
  {
    sub_1D4E50004(a1, &qword_1EC7F1910, &qword_1D5641DB0);
    (*(v16 + 32))(v21, v13, v14);
  }

  (*(v16 + 32))(a4, v21, v14);
  result = type metadata accessor for MusicSuggestedPivotsResponse();
  v25 = (a4 + *(result + 20));
  *v25 = a2;
  v25[1] = a3;
  return result;
}

uint64_t MusicSuggestedPivotsResponse.pivotEntries.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_71();

  return v4(v3);
}

uint64_t MusicSuggestedPivotsResponse.sessionID.getter()
{
  v0 = type metadata accessor for MusicSuggestedPivotsResponse();
  OUTLINED_FUNCTION_24_10(v0);
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t type metadata accessor for MusicSuggestedPivotsResponse()
{
  result = qword_1EC7F1930;
  if (!qword_1EC7F1930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicSuggestedPivotsResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicSuggestedPivotEntry();
  sub_1D51DE47C(&qword_1EC7EF7D0, type metadata accessor for MusicSuggestedPivotEntry);
  sub_1D51DE47C(&qword_1EC7EE7B0, type metadata accessor for MusicSuggestedPivotEntry);
  if (sub_1D560DAA8())
  {
    v4 = *(type metadata accessor for MusicSuggestedPivotsResponse() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1D5616168() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MusicSuggestedPivotsResponse.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  sub_1D51DC2F8();
  sub_1D5614CB8();
  v0 = type metadata accessor for MusicSuggestedPivotsResponse();
  OUTLINED_FUNCTION_24_10(v0);
  if (!v1[1])
  {
    return sub_1D56162F8();
  }

  v2 = *v1;
  sub_1D56162F8();

  return sub_1D5614E28();
}

unint64_t sub_1D51DC2F8()
{
  result = qword_1EC7F1900;
  if (!qword_1EC7F1900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
    sub_1D51DE47C(&qword_1EC7F1908, type metadata accessor for MusicSuggestedPivotEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F1900);
  }

  return result;
}

uint64_t MusicSuggestedPivotsResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  sub_1D51DC2F8();
  sub_1D5614CB8();
  v0 = type metadata accessor for MusicSuggestedPivotsResponse();
  OUTLINED_FUNCTION_24_10(v0);
  if (v1[1])
  {
    v2 = *v1;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t sub_1D51DC468(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  sub_1D51DC2F8();
  sub_1D5614CB8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t MusicSuggestedPivotsResponse.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1910, &qword_1D5641DB0);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64) + 15;
  v4[4] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  v4[5] = v10;
  OUTLINED_FUNCTION_4(v10);
  v4[6] = v11;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v4[7] = v14;
  v15 = *(MEMORY[0x1E6974FE0] + 4);
  v16 = swift_task_alloc();
  v4[8] = v16;
  *v16 = v4;
  v16[1] = sub_1D51DC670;

  return MEMORY[0x1EEDCE928](v14, a2, a3, v10);
}

uint64_t sub_1D51DC670()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D51DC890;
  }

  else
  {
    v3 = sub_1D51DC784;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D51DC784()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v7 = (v6 + *(type metadata accessor for MusicSuggestedPivotsResponse() + 20));
  v8 = *v7;
  v9 = v7[1];

  sub_1D51DBE18(v4, v8, v9, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D51DC890()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1D51DC900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4ECF3E8;

  return MusicSuggestedPivotsResponse.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t MusicSuggestedPivotsResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D560CD48();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for CatalogSuggestedPivotsRawResponse();
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v32[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32[-1] - v19;
  sub_1D4E628D4(a1, v32);
  sub_1D55BEE20(v32, v20);
  if (!v2)
  {
    sub_1D51DE3C8(v20, v18, type metadata accessor for CatalogSuggestedPivotsRawResponse);
    v21 = a1[3];
    v22 = a1[4];
    v23 = OUTLINED_FUNCTION_71();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1D5616378();
    v25 = a1[3];
    v26 = a1[4];
    v27 = OUTLINED_FUNCTION_71();
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v29 = sub_1D5616368();
    sub_1D51DCB50(v18, v11, v29, a2);
    sub_1D51DE424(v20, type metadata accessor for CatalogSuggestedPivotsRawResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D51DCB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v48 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1910, &qword_1D5641DB0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_4(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1950, &qword_1D5641F30);
  v21 = OUTLINED_FUNCTION_22(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v47 - v27;
  v49 = a1;
  sub_1D4E69970(a1, &v47 - v27, &qword_1EC7F1950, &qword_1D5641F30);
  sub_1D4E69970(v28, v26, &qword_1EC7F1950, &qword_1D5641F30);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1918, &qword_1D5641DB8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v29);
  v47 = a2;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v26, &qword_1EC7F1950, &qword_1D5641F30);
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v32 = sub_1D56123B8();
    v33 = (*(*(v29 - 8) + 8))(v26, v29);
    MEMORY[0x1EEE9AC00](v33);
    v34 = v50;
    *(&v47 - 2) = a2;
    *(&v47 - 1) = v34;
    v31 = sub_1D50BB3D4(sub_1D51DE3A8, (&v47 - 4), v32);
  }

  v51 = v31;
  type metadata accessor for MusicSuggestedPivotEntry();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1958, qword_1D5641F38);
  OUTLINED_FUNCTION_0_128();
  sub_1D51DE47C(v35, v36);
  sub_1D4E62A60(&unk_1EC7F1960, &qword_1EC7F1958, qword_1D5641F38);
  sub_1D560DAD8();
  (*(v14 + 16))(v11, v19, v12);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v37 = type metadata accessor for CatalogSuggestedPivotsRawResponse();
  v38 = v49;
  v39 = (v49 + *(v37 + 20));
  v40 = v39[1];
  if (v40 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = *v39;
  }

  if (v40 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39[1];
  }

  sub_1D50A2170(*v39, v40);
  sub_1D51DBE18(v11, v41, v42, v48);

  OUTLINED_FUNCTION_3_101();
  sub_1D51DE424(v38, v43);
  (*(v14 + 8))(v19, v12);
  sub_1D4E50004(v28, &qword_1EC7F1950, &qword_1D5641F30);
  v44 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v44);
  return (*(v45 + 8))(v47);
}

uint64_t MusicSuggestedPivotsResponse.encode(to:)(void *a1)
{
  v49 = sub_1D5613578();
  v2 = OUTLINED_FUNCTION_4(v49);
  v4 = v3;
  v46 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1918, &qword_1D5641DB8);
  v11 = OUTLINED_FUNCTION_4(v10);
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v45 - v16;
  v17 = sub_1D560CD48();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = type metadata accessor for CatalogSuggestedPivotsRawResponse();
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v48 = a1;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v33 = v49;
  (*(v4 + 104))(v9, *MEMORY[0x1E6976A78], v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_0_128();
  sub_1D51DE47C(v34, v35);
  v36 = v47;
  sub_1D560DA98();
  (*(v46 + 8))(v9, v33);
  (*(v20 + 8))(v25, v17);
  v37 = type metadata accessor for MusicSuggestedPivotsResponse();
  OUTLINED_FUNCTION_24_10(v37);
  v40 = *v38;
  v39 = v38[1];
  v41 = v51;
  (*(v50 + 32))(v31, v36, v51);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v41);
  v42 = (v31 + *(v27 + 28));
  *v42 = v40;
  v42[1] = v39;

  sub_1D55BF114(v48);
  OUTLINED_FUNCTION_3_101();
  return sub_1D51DE424(v31, v43);
}

unint64_t sub_1D51DD2D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  sub_1D4E62A60(&qword_1EC7F1948, &qword_1EC7EF7A8, &qword_1D5641DA0);
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

void sub_1D51DD490()
{
  sub_1D51DD514();
  if (v0 <= 0x3F)
  {
    sub_1D4F18AF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D51DD514()
{
  if (!qword_1EC7F1940)
  {
    type metadata accessor for MusicSuggestedPivotEntry();
    sub_1D51DE47C(&qword_1EC7EF7D0, type metadata accessor for MusicSuggestedPivotEntry);
    v0 = sub_1D560DAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F1940);
    }
  }
}

uint64_t sub_1D51DD5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a3;
  v114 = a2;
  v115 = a4;
  v5 = sub_1D5614408();
  v97 = *(v5 - 8);
  v98 = v5;
  v6 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v77 - v12;
  v104 = sub_1D560FD68();
  v93 = *(v104 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D5614898();
  v91 = *(v92 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v102 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  v18 = MEMORY[0x1EEE9AC00](v89);
  v85 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v77 - v20;
  v101 = sub_1D5610588();
  v86 = *(v101 - 8);
  v21 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D560CD48();
  v23 = *(v112 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D5613AF8();
  v83 = *(v84 - 8);
  v26 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v99 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v81 = *(v82 - 8);
  v28 = *(v81 + 64);
  v29 = MEMORY[0x1EEE9AC00](v82);
  v80 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v77 - v31;
  v33 = sub_1D560F308();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v77 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CloudSuggestedPivotEntry();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v77 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF878, &qword_1D5633210);
  v111 = a1;
  sub_1D5610648();
  v109 = v44;
  sub_1D51DE3C8(v44, v42, type metadata accessor for CloudSuggestedPivotEntry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = (v23 + 16);
  v106 = (v23 + 8);
  v107 = v45 - 8;
  v110 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    v48 = (v23 + 16);
    if (EnumCaseMultiPayload != 1)
    {
      v68 = v93;
      (*(v93 + 32))(v103, v42, v104);
      sub_1D51DE47C(&qword_1EDD53368, MEMORY[0x1E6975B30]);
      v69 = v94;
      v70 = v111;
      sub_1D5610598();
      v72 = v95;
      v71 = v96;
      (*(v95 + 16))(v90, v69, v96);
      v73 = *v48;
      v74 = v114;
      v75 = v112;
      v73(v108, v114, v112);
      sub_1D5614418();
      (*v106)(v74, v75);
      (*(*(v45 - 8) + 8))(v70, v45);
      (*(v72 + 8))(v69, v71);
      (*(v68 + 8))(v103, v104);
      sub_1D51DE424(v109, type metadata accessor for CloudSuggestedPivotEntry);
      v67 = v98;
      v57 = *(v97 + 32);
      v58 = v115;
      v59 = v105;
      goto LABEL_7;
    }

    v49 = v86;
    (*(v86 + 32))(v100, v42, v101);
    sub_1D51DE47C(&qword_1EDD53310, MEMORY[0x1E6975CF0]);
    v50 = v87;
    v51 = v111;
    sub_1D5610598();
    v52 = v88;
    v53 = v89;
    (*(v88 + 16))(v85, v50, v89);
    v54 = *v48;
    v55 = v114;
    v56 = v112;
    v54(v108, v114, v112);
    sub_1D56148A8();
    (*v106)(v55, v56);
    (*(*(v45 - 8) + 8))(v51, v45);
    (*(v52 + 8))(v50, v53);
    (*(v49 + 8))(v100, v101);
    sub_1D51DE424(v109, type metadata accessor for CloudSuggestedPivotEntry);
    v57 = *(v91 + 32);
    v58 = v115;
    v59 = v102;
    v60 = &v117;
  }

  else
  {
    v79 = v34;
    v61 = *(v34 + 32);
    v78 = v33;
    v61(v37, v42, v33);
    sub_1D51DE47C(&qword_1EDD53418, MEMORY[0x1E6975660]);
    v62 = v111;
    sub_1D5610598();
    v63 = v81;
    v64 = v82;
    (*(v81 + 16))(v80, v32, v82);
    v65 = v114;
    v66 = v112;
    (*v47)(v108, v114, v112);
    sub_1D5613B08();
    (*v106)(v65, v66);
    (*(*(v45 - 8) + 8))(v62, v45);
    (*(v63 + 8))(v32, v64);
    (*(v79 + 8))(v37, v78);
    sub_1D51DE424(v109, type metadata accessor for CloudSuggestedPivotEntry);
    v57 = *(v83 + 32);
    v58 = v115;
    v59 = v99;
    v60 = &v116;
  }

  v67 = *(v60 - 32);
LABEL_7:
  v57(v58, v59, v67);
  type metadata accessor for MusicSuggestedPivotContainer();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D51DE1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D560CD48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF878, &qword_1D5633210);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  (*(v17 + 16))(v19 - v15, a1);
  (*(v9 + 16))(v12, a2, v8);

  return sub_1D51DD5A8(v16, v12, a3, a4);
}

uint64_t sub_1D51DE3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D51DE424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D51DE47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D51DE4C4()
{
  v0 = sub_1D560F8F8();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v18 = sub_1D560F928();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = type metadata accessor for TVEpisodePropertyProvider();
  sub_1D4E69910(v39[1] + *(v27 + 24), v17, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v17, 1, v18);
  if (v28)
  {
    sub_1D4E50004(v17, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v21 + 32))(v26, v17, v18);
    sub_1D560F908();
    (*(v3 + 104))(v8, *MEMORY[0x1E6975910], v0);
    v29 = sub_1D560F8E8();
    v30 = *(v3 + 8);
    v30(v8, v0);
    v30(v11, v0);
    if (v29)
    {
      v31 = sub_1D560F918();
      v32 = *(v21 + 8);
      v33 = OUTLINED_FUNCTION_15_2();
      v34(v33);
      if (v31)
      {
        return 1;
      }
    }

    else
    {
      v36 = *(v21 + 8);
      v37 = OUTLINED_FUNCTION_15_2();
      v38(v37);
    }
  }

  return 0;
}

uint64_t sub_1D51DE76C()
{
  v1 = v0;
  v2 = sub_1D5613198();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v35 = v9 - v8;
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v35 - v23;
  v36 = type metadata accessor for TVEpisodePropertyProvider();
  v25 = *(v36 + 84);
  (*(v5 + 104))(v24, *MEMORY[0x1E69768D0], v2);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v2);
  v26 = v10[14];
  sub_1D4E69910(v1 + v25, v14, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69910(v24, &v14[v26], &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_57(v14, 1, v2);
  if (!v28)
  {
    sub_1D4E69910(v14, v21, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_57(&v14[v26], 1, v2);
    if (!v28)
    {
      v29 = v35;
      (*(v5 + 32))(v35, &v14[v26], v2);
      sub_1D51DF1C8();
      OUTLINED_FUNCTION_15_2();
      v27 = sub_1D5614D18();
      v30 = *(v5 + 8);
      v30(v29, v2);
      sub_1D4E50004(v24, &qword_1EC7EC530, &unk_1D5632150);
      v30(v21, v2);
      sub_1D4E50004(v14, &qword_1EC7EC530, &unk_1D5632150);
      goto LABEL_10;
    }

    sub_1D4E50004(v24, &qword_1EC7EC530, &unk_1D5632150);
    (*(v5 + 8))(v21, v2);
LABEL_9:
    sub_1D4E50004(v14, &qword_1EC7EF628, &unk_1D5632440);
    v27 = 0;
    goto LABEL_10;
  }

  sub_1D4E50004(v24, &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_57(&v14[v26], 1, v2);
  if (!v28)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v14, &qword_1EC7EC530, &unk_1D5632150);
  v27 = 1;
LABEL_10:
  v31 = *(v36 + 212);
  sub_1D560D768();
  if (v32 || (sub_1D560D628(), v33))
  {
  }

  else if ((v27 & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D51DEB54()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_69();
  sub_1D4E69910(v0 + *(v6 + 104), v1, &qword_1EC7EF5D8, &unk_1D5632160);
  v7 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v1, 1, v7);
  if (v8)
  {
    sub_1D4E50004(v1, &qword_1EC7EF5D8, &unk_1D5632160);
    v9 = 0;
  }

  else
  {
    v9 = sub_1D5614A58();
    (*(*(v7 - 8) + 8))(v1, v7);
  }

  return v9 & 1;
}

BOOL sub_1D51DEC58()
{
  v1 = v0;
  v2 = sub_1D5614A48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v43 = v4;
  v44 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v42 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1D5614A78();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v41 - v29;
  v31 = *(type metadata accessor for TVEpisodePropertyProvider() + 104);
  sub_1D4E69910(v1 + v31, v30, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v30, 1, v12);
  if (v32)
  {
    goto LABEL_3;
  }

  v33 = sub_1D5614A58();
  v41 = *(v15 + 8);
  v41(v30, v12);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  sub_1D4E69910(v1 + v31, v27, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v27, 1, v12);
  if (v32)
  {
    v30 = v27;
LABEL_3:
    sub_1D4E50004(v30, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v15 + 32))(v20, v27, v12);
  sub_1D5614A68();
  v35 = v42;
  v34 = v43;
  v36 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x1E6977490], v44);
  v37 = sub_1D5614A38();
  v38 = *(v34 + 8);
  v38(v35, v36);
  v38(v11, v36);
  v39 = OUTLINED_FUNCTION_15_2();
  (v41)(v39);
  return (v37 & 1) != 0;
}

uint64_t sub_1D51DEF60(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8_69();
  sub_1D4E69910(v1 + *(v8 + 24), v2, &qword_1EC7EDB98, L"X\b\a");
  v9 = sub_1D560F928();
  v10 = OUTLINED_FUNCTION_57(v2, 1, v9);
  if (v11)
  {
    sub_1D4E50004(v2, &qword_1EC7EDB98, L"X\b\a");
    v12 = 0;
  }

  else
  {
    v12 = a1(v10);
    (*(*(v9 - 8) + 8))(v2, v9);
  }

  return v12 & 1;
}

uint64_t sub_1D51DF074@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 104);

  return v8(a3, v4, v6);
}

unint64_t sub_1D51DF1C8()
{
  result = qword_1EDD52EE0;
  if (!qword_1EDD52EE0)
  {
    sub_1D5613198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52EE0);
  }

  return result;
}

uint64_t Playlist.Folder.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v175 = a5;
  v201 = a3;
  v202 = a2;
  v199 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v197 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v198 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF348, &qword_1D5631098);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v194 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF338, &unk_1D5631080);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  OUTLINED_FUNCTION_22(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_3();
  v193 = v39;
  OUTLINED_FUNCTION_70_0();
  v188 = sub_1D5610788();
  v40 = OUTLINED_FUNCTION_4(v188);
  v186 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v44);
  v185 = sub_1D56107C8();
  v45 = OUTLINED_FUNCTION_4(v185);
  v183 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v54);
  v55 = sub_1D5611B28();
  v56 = OUTLINED_FUNCTION_4(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5();
  v63 = v62 - v61;
  v64 = sub_1D5611C58();
  v65 = OUTLINED_FUNCTION_4(v64);
  v195 = v66;
  v196 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  v205 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v173 - v74;
  v76 = type metadata accessor for PlaylistFolderPropertyProvider();
  OUTLINED_FUNCTION_24_0(v76);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_5();
  v82 = v81 - v80;
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
  v87 = v76[5];
  v88 = sub_1D560C328();
  v179 = v87;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v88);
  v92 = v76[6];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v88);
  v96 = v76[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  v189 = v96;
  OUTLINED_FUNCTION_33();
  v187 = v97;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  v101 = v76[10];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  v192 = v101;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  v106 = sub_1D560D9A8();
  __swift_project_value_buffer(v106, qword_1EDD53CC8);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  v111 = v76[12];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2D8, &unk_1D5630FD0);
  v206 = v76;
  v113 = v112;
  sub_1D56105B8();
  sub_1D4E7661C(v75, &qword_1EC7EB5C0, &unk_1D56223C0);
  v114 = v82 + v206[13];
  sub_1D5610658();
  v180 = sub_1D5610618();
  v178 = v115;
  v177 = sub_1D56105C8();
  v176 = sub_1D56105F8();
  v116 = sub_1D56105E8();
  v203 = v113;
  v204 = a1;
  v117 = v206;
  v118 = sub_1D56105A8();
  v119 = (v82 + v117[7]);
  *v119 = 0;
  v119[1] = 0;
  if (qword_1EC7E9808 != -1)
  {
    swift_once();
  }

  v120 = qword_1EC87C748;
  v200 = a4;
  if (qword_1EC87C748 >> 62)
  {
    sub_1D560CDE8();

    v172 = sub_1D5615E18();

    v120 = v172;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v121 = (v82 + v117[8]);
  *(v82 + v117[11]) = v120;
  v122 = (v82 + v117[14]);
  v123 = v178;
  *v122 = v180;
  v122[1] = v123;
  *(v82 + v117[15]) = v177;
  *(v82 + v117[16]) = v176;
  *(v82 + v117[17]) = v116;
  *(v82 + v117[18]) = v118;
  sub_1D5610648();
  sub_1D5611B38();
  v124 = sub_1D5611B08();
  v126 = v125;
  v127 = *(v58 + 8);
  v127(v63, v55);
  *v121 = v124;
  v121[1] = v126;
  v180 = v82;
  v128 = v181;
  sub_1D56107A8();
  sub_1D5611B38();
  sub_1D5611B18();
  v127(v63, v55);
  v129 = v186;
  v130 = v184;
  v131 = v188;
  (*(v186 + 104))(v184, *MEMORY[0x1E6975DC8], v188);
  v132 = v182;
  sub_1D5610798();

  (*(v129 + 8))(v130, v131);
  v133 = v128;
  v134 = v180;
  (*(v183 + 8))(v133, v185);
  sub_1D4ED39C0(v132, v134 + v179, &qword_1EC7EA3B8, &unk_1D561E370);
  v135 = v190;
  sub_1D5611BA8();
  v136 = sub_1D5611B98();
  if (__swift_getEnumTagSinglePayload(v135, 1, v136) == 1)
  {
    sub_1D4E7661C(v135, &qword_1EC7EF348, &qword_1D5631098);
    v137 = 1;
    v138 = v200;
  }

  else
  {
    v139 = v173;
    sub_1D5611B88();
    OUTLINED_FUNCTION_24_0(v136);
    (*(v140 + 8))(v135, v136);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF358, &unk_1D56310B0);
    OUTLINED_FUNCTION_1(v139);
    v138 = v200;
    if (!v142)
    {
      sub_1D560CD98();
      v143 = v174;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
      type metadata accessor for Playlist.Folder.Item();
      v148 = v139;
      sub_1D51E0F94(&qword_1EC7EF360, type metadata accessor for Playlist.Folder.Item);
      OUTLINED_FUNCTION_10_70();
      sub_1D51E0F94(v149, type metadata accessor for Playlist.Folder.Item);
      OUTLINED_FUNCTION_16_58();
      v150 = v193;
      sub_1D5612368();
      sub_1D4E7661C(v143, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v141);
      (*(v151 + 8))(v148, v141);
      v137 = 0;
      v152 = v197;
      goto LABEL_13;
    }

    sub_1D4E7661C(v139, &qword_1EC7EF338, &unk_1D5631080);
    v137 = 1;
  }

  v152 = v197;
  v150 = v193;
LABEL_13:
  v153 = v206;
  __swift_storeEnumTagSinglePayload(v150, v137, 1, v187);
  sub_1D4ED39C0(v150, v134 + v189, &qword_1EC7EF340, &qword_1D5631090);
  v154 = v194;
  sub_1D5611BA8();
  if (__swift_getEnumTagSinglePayload(v154, 1, v136) == 1)
  {
    v155 = &qword_1EC7EF348;
    v156 = &qword_1D5631098;
    v157 = v154;
LABEL_18:
    sub_1D4E7661C(v157, v155, v156);
    v167 = 1;
    v165 = v198;
    goto LABEL_19;
  }

  sub_1D5611B68();
  OUTLINED_FUNCTION_24_0(v136);
  (*(v158 + 8))(v154, v136);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
  OUTLINED_FUNCTION_1(v152);
  if (v142)
  {
    v155 = &qword_1EC7ECF30;
    v156 = &unk_1D5623AA0;
    v157 = v152;
    goto LABEL_18;
  }

  sub_1D560CD98();
  v160 = v174;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  type metadata accessor for Playlist.Folder();
  sub_1D51E0F94(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);
  sub_1D51E0F94(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  OUTLINED_FUNCTION_16_58();
  v165 = v198;
  sub_1D5612368();
  v153 = v206;
  sub_1D4E7661C(v160, &qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_24_0(v159);
  (*(v166 + 8))(v152, v159);
  v167 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v165, v167, 1, v191);
  sub_1D4ED39C0(v165, v134 + v192, &qword_1EC7ECF38, &qword_1D562E650);
  v207[3] = v153;
  v207[4] = sub_1D51E0F94(&qword_1EC7EE418, type metadata accessor for PlaylistFolderPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v207);
  sub_1D5029978(v134, boxed_opaque_existential_0);
  Playlist.Folder.init(propertyProvider:)(v207, v199);

  OUTLINED_FUNCTION_24_0(v138);
  (*(v169 + 8))(v202, v138);
  OUTLINED_FUNCTION_24_0(v203);
  (*(v170 + 8))();
  (*(v195 + 8))(v205, v196);
  return sub_1D50299DC(v134);
}

uint64_t Playlist.Folder.convertToCloudResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v179 = a3;
  v178 = a2;
  v177 = a1;
  v194 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v193 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5610088();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v205 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v187 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v186 = v24;
  OUTLINED_FUNCTION_70_0();
  v25 = sub_1D5612B78();
  v26 = OUTLINED_FUNCTION_4(v25);
  v191 = v27;
  v192 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v190 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF328, &qword_1D5631068);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF330, &unk_1D5631070);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = sub_1D5611C58();
  v42 = OUTLINED_FUNCTION_4(v41);
  v188 = v43;
  v189 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  v203 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  v204 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v53);
  v175 = sub_1D5613578();
  v54 = OUTLINED_FUNCTION_4(v175);
  v174 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF338, &unk_1D5631080);
  OUTLINED_FUNCTION_22(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_3();
  v195 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  v65 = OUTLINED_FUNCTION_22(v64);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_2();
  v202 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  v71 = OUTLINED_FUNCTION_22(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  v201 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF348, &qword_1D5631098);
  v77 = OUTLINED_FUNCTION_22(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v206 = v82;
  OUTLINED_FUNCTION_70_0();
  v198 = sub_1D5610788();
  v83 = OUTLINED_FUNCTION_4(v198);
  v85 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  v90 = v89 - v88;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  v96 = v172 - v95;
  v182 = sub_1D56107C8();
  v97 = OUTLINED_FUNCTION_4(v182);
  v99 = v98;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5();
  v104 = v103 - v102;
  v105 = sub_1D5611B28();
  v106 = OUTLINED_FUNCTION_4(v105);
  v199 = v107;
  v200 = v106;
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v110);
  v112 = v172 - v111;
  v197 = v4;
  v181 = Playlist.Folder.name.getter();
  v180 = v113;
  sub_1D56107A8();
  if (qword_1EC7E8D08 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v114 = sub_1D51E0F94(&unk_1EDD52B98, type metadata accessor for Playlist.Folder);
  v196 = sub_1D51E0F94(&qword_1EC7EE420, type metadata accessor for Playlist.Folder);
  sub_1D560EC28();
  v115 = v198;
  (*(v85 + 104))(v90, *MEMORY[0x1E6975DC8], v198);
  sub_1D56107B8();
  (*(v85 + 8))(v90, v115);
  sub_1D4E7661C(v96, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v99 + 8))(v104, v182);
  v198 = v112;
  sub_1D5611AF8();
  v116 = sub_1D5611B98();
  v117 = v206;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v116);
  if (qword_1EC7E8D28 != -1)
  {
    swift_once();
  }

  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  v122 = v201;
  v123 = v197;
  sub_1D560EC28();
  v124 = v202;
  v125 = v183;
  if (qword_1EC7E8D30 != -1)
  {
    swift_once();
  }

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  v182 = v114;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v122, 1, v121) != 1 || (OUTLINED_FUNCTION_1(v124), !v127))
  {
    v196 = v116;
    sub_1D4ED3750(v122, v125, &qword_1EC7EF340, &qword_1D5631090);
    if (__swift_getEnumTagSinglePayload(v125, 1, v121) == 1)
    {
      sub_1D4E7661C(v125, &qword_1EC7EF340, &qword_1D5631090);
      v128 = 1;
      v129 = v176;
      v130 = v195;
    }

    else
    {
      type metadata accessor for Playlist.Folder.Item();
      sub_1D51E0F94(&qword_1EC7EF360, type metadata accessor for Playlist.Folder.Item);
      OUTLINED_FUNCTION_10_70();
      sub_1D51E0F94(v131, type metadata accessor for Playlist.Folder.Item);
      OUTLINED_FUNCTION_15_58();
      v133 = *(v132 - 256);
      sub_1D4F1ABE8(v134);
      v130 = v195;
      sub_1D560DA98();
      (*(v174 + 8))(v123, v175);
      OUTLINED_FUNCTION_24_0(v121);
      (*(v135 + 8))(v125, v121);
      v128 = 0;
      v129 = v176;
    }

    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF358, &unk_1D56310B0);
    __swift_storeEnumTagSinglePayload(v130, v128, 1, v136);
    v137 = v173;
    sub_1D4ED3750(v124, v173, &qword_1EC7ECF38, &qword_1D562E650);
    OUTLINED_FUNCTION_1(v137);
    if (v127)
    {
      sub_1D4E7661C(v137, &qword_1EC7ECF38, &qword_1D562E650);
      v142 = 1;
    }

    else
    {
      type metadata accessor for Playlist.Folder();
      sub_1D51E0F94(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder);
      OUTLINED_FUNCTION_15_58();
      v139 = *(v138 - 256);
      sub_1D4F1ABE8(v140);
      sub_1D560DA98();
      (*(v174 + 8))(v123, v175);
      OUTLINED_FUNCTION_24_0(v126);
      (*(v141 + 8))(v137, v126);
      v142 = 0;
    }

    v117 = v206;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
    __swift_storeEnumTagSinglePayload(v129, v142, 1, v143);
    v144 = v172[1];
    sub_1D5611B78();
    sub_1D4E7661C(v117, &qword_1EC7EF348, &qword_1D5631098);
    __swift_storeEnumTagSinglePayload(v144, 0, 1, v196);
    sub_1D51E0FDC(v144, v117);
  }

  v145 = *v123;
  v146 = v123[1];
  (*(v199 + 16))(v184, v198, v200);
  sub_1D4ED3750(v117, v185, &qword_1EC7EF348, &qword_1D5631098);
  sub_1D5611B58();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  sub_1D5611C48();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v154);

  v155 = v204;
  sub_1D5611BE8();
  v156 = *(type metadata accessor for Playlist.Folder() + 20);
  v157 = v186;
  sub_1D5611A28();
  v158 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v157, 0, 1, v158);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
  v163 = v190;
  sub_1D5612B38();
  v164 = v188;
  v165 = v189;
  (*(v188 + 16))(v203, v155, v189);
  sub_1D5611A98();
  v166 = sub_1D5611A88();
  v195 = v167;
  v196 = v166;
  v169 = v191;
  v168 = v192;
  v170 = v193;
  (*(v191 + 16))(v193, v163, v192);
  __swift_storeEnumTagSinglePayload(v170, 0, 1, v168);
  v187 = sub_1D5611A38();
  v186 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D51E0F94(&qword_1EC7EF350, MEMORY[0x1E69763B8]);
  sub_1D5610628();
  (*(v169 + 8))(v163, v168);
  (*(v164 + 8))(v204, v165);
  sub_1D4E7661C(v206, &qword_1EC7EF348, &qword_1D5631098);
  (*(v199 + 8))(v198, v200);
  sub_1D4E7661C(v201, &qword_1EC7EF340, &qword_1D5631090);
  return sub_1D4E7661C(v202, &qword_1EC7ECF38, &qword_1D562E650);
}