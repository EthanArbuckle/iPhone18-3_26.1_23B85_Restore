uint64_t MomentsEventData.EventBundle.MetadataForRank.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MomentsEventData.EventBundle.MetadataForRank.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1937CB4B0()
{
  sub_19393CAB0();
  MomentsEventData.EventBundle.MetadataForRank.hash(into:)(v1);
  return sub_19393CB00();
}

void static MomentsEventData.EventBundle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v652 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
  v5 = OUTLINED_FUNCTION_4_1(v652);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42B00, &qword_193997C90);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v651 = &v631[-v15];
  v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42F68, &qword_193997CA0);
  OUTLINED_FUNCTION_4_1(v650);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v631[-v19];
  v21 = sub_19393BE00();
  v22 = OUTLINED_FUNCTION_0(v21);
  v657 = v23;
  v658 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v656 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v29 = OUTLINED_FUNCTION_47(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15_8();
  v649 = v32;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_49();
  v648 = v34;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_49();
  v647 = v36;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_49();
  v646 = v38;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_49();
  v645 = v40;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_49();
  v644 = v42;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_49();
  v653 = v44;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_49();
  v654 = v46;
  OUTLINED_FUNCTION_47_3();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v50 = &v631[-v49];
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v631[-v51];
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v53 = OUTLINED_FUNCTION_4_1(v659);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_156_9();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_182_8();
  v58 = MEMORY[0x1EEE9AC00](v57);
  MEMORY[0x1EEE9AC00](v58);
  v60 = MEMORY[0x1EEE9AC00](&v631[-v59]);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v62 = MEMORY[0x1EEE9AC00](v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_183_5();
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v631[-v65];
  v67 = MEMORY[0x1EEE9AC00](v64);
  v72 = &v631[-v71];
  v73 = v4[1];
  v74 = v2[1];
  if (v73)
  {
    if (!v74)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_176_5(v67, v73, v68, v74, v69, v70);
    v77 = *v4 == *v2 && v75 == v76;
    if (!v77 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_176_5(v67, 0, v68, v74, v69, v70);
    if (v78)
    {
      goto LABEL_51;
    }
  }

  v633 = v20;
  v634 = v10;
  v79 = type metadata accessor for MomentsEventData.EventBundle(0);
  v655 = v2;
  v635 = v4;
  v636 = v79;
  v80 = *(v79 + 20);
  v81 = *(v659 + 48);
  sub_193448804(v4 + v80, v72, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(v655 + v80, &v72[v81], &qword_1EAE3A9E8, &qword_19394F800);
  v82 = v658;
  OUTLINED_FUNCTION_6_3(v72, 1, v658);
  if (v77)
  {
    OUTLINED_FUNCTION_31(&v72[v81]);
    if (v77)
    {
      sub_19344E6DC(v72, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_20;
    }

LABEL_18:
    v85 = &qword_1EAE3B968;
    v86 = &qword_193972430;
    v87 = v72;
    goto LABEL_50;
  }

  sub_193448804(v72, v52, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v72[v81]);
  if (v83)
  {
    OUTLINED_FUNCTION_119_12();
    v84(v52, v82);
    goto LABEL_18;
  }

  v89 = v656;
  v88 = v657;
  OUTLINED_FUNCTION_28_30();
  v90(v89, &v72[v81], v82);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v91, v92);
  v632 = sub_19393C550();
  v93 = *(v88 + 8);
  v93(v89, v82);
  v93(v52, v82);
  sub_19344E6DC(v72, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v632 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  v94 = v635;
  v95 = v636[6];
  v96 = *(v659 + 48);
  sub_193448804(v635 + v95, v66, &qword_1EAE3A9E8, &qword_19394F800);
  sub_193448804(v655 + v95, &v66[v96], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v66);
  if (v77)
  {
    OUTLINED_FUNCTION_31(&v66[v96]);
    if (v77)
    {
      sub_19344E6DC(v66, &qword_1EAE3A9E8, &qword_19394F800);
      v97 = v82;
      goto LABEL_30;
    }

LABEL_28:
    v85 = &qword_1EAE3B968;
    v86 = &qword_193972430;
    v87 = v66;
    goto LABEL_50;
  }

  sub_193448804(v66, v50, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v66[v96]);
  if (v98)
  {
    OUTLINED_FUNCTION_119_12();
    v99 = OUTLINED_FUNCTION_165_10();
    v100(v99);
    goto LABEL_28;
  }

  v102 = v656;
  v101 = v657;
  OUTLINED_FUNCTION_28_30();
  v103(v102, &v66[v96], v82);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v104, v105);
  v97 = v82;
  v106 = sub_19393C550();
  v107 = *(v101 + 8);
  v107(v102, v97);
  v107(v50, v97);
  sub_19344E6DC(v66, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v106 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_30:
  v108 = v636[7];
  v109 = *(v659 + 48);
  v110 = &qword_19394F800;
  sub_193448804(v94 + v108, v0, &qword_1EAE3A9E8, &qword_19394F800);
  v111 = v655;
  sub_193448804(v655 + v108, v0 + v109, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v0, 1, v97);
  v112 = v97;
  if (v77)
  {
    OUTLINED_FUNCTION_6_3(v0 + v109, 1, v97);
    if (v77)
    {
      sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_40;
    }

LABEL_38:
    v85 = &qword_1EAE3B968;
    v86 = &qword_193972430;
    v87 = v0;
    goto LABEL_50;
  }

  sub_193448804(v0, v654, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v0 + v109, 1, v97);
  if (v113)
  {
    OUTLINED_FUNCTION_119_12();
    v114 = OUTLINED_FUNCTION_121_0();
    v115(v114);
    goto LABEL_38;
  }

  v117 = v656;
  v116 = v657;
  (*(v657 + 32))(v656, v0 + v109, v97);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v118, v119);
  v120 = sub_19393C550();
  v121 = *(v116 + 8);
  v110 = (v116 + 8);
  v121(v117, v97);
  v122 = OUTLINED_FUNCTION_121_0();
  (v121)(v122);
  sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v120 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_40:
  v123 = v636[8];
  OUTLINED_FUNCTION_144_10();
  v124 = v643;
  OUTLINED_FUNCTION_27_7(v94 + v123, v643);
  OUTLINED_FUNCTION_27_7(v111 + v123, v110 + v124);
  OUTLINED_FUNCTION_6_3(v124, 1, v112);
  if (v77)
  {
    OUTLINED_FUNCTION_13_25(v110 + v124);
    if (!v77)
    {
      goto LABEL_49;
    }

    sub_19344E6DC(v124, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    sub_193448804(v124, v653, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_13_25(v110 + v124);
    if (v125)
    {
      OUTLINED_FUNCTION_119_12();
      v126 = OUTLINED_FUNCTION_166();
      goto LABEL_48;
    }

    (*(v657 + 32))(v656, v110 + v124, v112);
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v128, v129);
    OUTLINED_FUNCTION_95_17();
    v130 = OUTLINED_FUNCTION_59_21();
    (v110)(v130);
    v131 = OUTLINED_FUNCTION_166();
    (v110)(v131);
    sub_19344E6DC(v124, &qword_1EAE3A9E8, &qword_19394F800);
    if ((&qword_1EAE3A9E8 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v132 = v636[9];
  v133 = *(v94 + v132 + 9);
  v134 = v111 + v132;
  v135 = *(v134 + 9);
  if (v133)
  {
    if ((*(v134 + 9) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (*(v134 + 9))
    {
      goto LABEL_51;
    }

    v136 = OUTLINED_FUNCTION_9_72(v134);
    if (!OUTLINED_FUNCTION_77_18(v136, v137, v138))
    {
      goto LABEL_51;
    }
  }

  v139 = v636[10];
  v140 = *(v94 + v139);
  v141 = *(v111 + v139);
  if (v140 == 2)
  {
    if (v141 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v77 || ((v142 ^ v143) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[11]);
  if (v77)
  {
    if (v144 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v145 || ((v146 ^ v147) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[12]);
  if (v77)
  {
    if (v148 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v149 || ((v150 ^ v151) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[13]);
  if (v77)
  {
    if (v152 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v153 || ((v154 ^ v155) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  v156 = v635;
  v157 = v636[14];
  v158 = v655;
  v159 = *(v655 + v157 + 8);
  if (*(v635 + v157 + 8))
  {
    if (!v159)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5((v635 + v157));
    v162 = v77 && v160 == v161;
    if (!v162 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v159)
  {
    goto LABEL_51;
  }

  v163 = v636[15];
  v164 = *(v158 + v163 + 8);
  if (*(v156 + v163 + 8))
  {
    if (!v164)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5((v156 + v163));
    v167 = v77 && v165 == v166;
    if (!v167 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v164)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_16_42(v636[16]);
  if (v77)
  {
    if (v168 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v169 || ((v170 ^ v171) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64(v636[17]);
  if (v174)
  {
    if ((v173 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v173)
    {
      goto LABEL_51;
    }

    v175 = OUTLINED_FUNCTION_9_72(v172);
    if (!OUTLINED_FUNCTION_77_18(v175, v176, v177))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64(v636[18]);
  if (v180)
  {
    if ((v179 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v179)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_9_72(v178);
    OUTLINED_FUNCTION_50_21();
    if (!OUTLINED_FUNCTION_140_13(v181, v182, v183, v184))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64(v636[19]);
  if (v187)
  {
    if ((v186 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v186)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_9_72(v185);
    OUTLINED_FUNCTION_51_22();
    if (!OUTLINED_FUNCTION_140_13(v188, v189, v190, v191))
    {
      goto LABEL_51;
    }
  }

  v192 = OUTLINED_FUNCTION_65_23(v636[20]);
  if ((sub_19344FC94(v192, v193) & 1) == 0)
  {
    goto LABEL_51;
  }

  v194 = v636[21];
  v196 = *(v635 + v194);
  v195 = *(v635 + v194 + 8);
  v197 = *(v635 + v194 + 16);
  v198 = *(v635 + v194 + 24);
  v199 = (*(v635 + v194 + 32) | (*(v635 + v194 + 36) << 32));
  v200 = v655 + v194;
  v201 = *v200;
  v202 = *(v200 + 1);
  v203 = *(v200 + 3);
  v654 = *(v200 + 2);
  v204 = *(v200 + 8) | (v200[36] << 32);
  if (v198 == 1)
  {
    v205 = OUTLINED_FUNCTION_107_5();
    sub_19376F35C(v205, v206, v197, 1);
    if (v203 == 1)
    {
      v207 = OUTLINED_FUNCTION_128_13();
      sub_19376F35C(v207, v208, v209, 1);
      v210 = OUTLINED_FUNCTION_107_5();
      sub_19345FF00(v210, v211, v197, 1);
      goto LABEL_129;
    }

    v223 = OUTLINED_FUNCTION_128_13();
    sub_19376F35C(v223, v224, v225, v203);
LABEL_127:
    v226 = OUTLINED_FUNCTION_35_35();
    sub_19345FF00(v226, v227, v228, v229);
    v230 = OUTLINED_FUNCTION_128_13();
    sub_19345FF00(v230, v231, v232, v203);
    goto LABEL_51;
  }

  v665[0] = v196;
  v665[1] = v195;
  v665[2] = v197;
  v665[3] = v198;
  LODWORD(v665[4]) = v199;
  BYTE4(v665[4]) = BYTE4(v199);
  if (v203 == 1)
  {
    v212 = OUTLINED_FUNCTION_35_35();
    sub_19376F35C(v212, v213, v214, v215);
    v216 = OUTLINED_FUNCTION_128_13();
    sub_19376F35C(v216, v217, v218, 1);
    v219 = OUTLINED_FUNCTION_35_35();
    sub_19376F35C(v219, v220, v221, v222);

    goto LABEL_127;
  }

  v653 = v201;
  *&v663[0] = v201;
  WORD4(v663[0]) = v202 & 0x1FF;
  v233 = v654;
  *&v663[1] = v654;
  *(&v663[1] + 1) = v203;
  LODWORD(v663[2]) = v204;
  BYTE4(v663[2]) = BYTE4(v204) & 1;
  v234 = OUTLINED_FUNCTION_35_35();
  sub_19376F35C(v234, v235, v236, v237);
  sub_19376F35C(v653, v202, v233, v203);
  v238 = OUTLINED_FUNCTION_35_35();
  sub_19376F35C(v238, v239, v240, v241);
  LOBYTE(v233) = static MomentsEventData.Action.== infix(_:_:)(v665, v663);

  v242 = OUTLINED_FUNCTION_35_35();
  sub_19345FF00(v242, v243, v244, v245);
  if ((v233 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_129:
  v246 = OUTLINED_FUNCTION_65_23(v636[22]);
  if ((sub_1937C1918(v246, v247) & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_16_42(v636[23]);
  if (v77)
  {
    if (v248 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v249 || ((v250 ^ v251) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64(v636[24]);
  if (v254)
  {
    if ((v253 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v253)
    {
      goto LABEL_51;
    }

    v255 = OUTLINED_FUNCTION_9_72(v252);
    if (!OUTLINED_FUNCTION_77_18(v255, v256, v257))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[25]);
  if (v77)
  {
    if (v258 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v259 || ((v260 ^ v261) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[26]);
  if (v77)
  {
    if (v262 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v263 || ((v264 ^ v265) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[27]);
  if (v77)
  {
    if (v266 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v267 || ((v268 ^ v269) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[28]);
  if (v77)
  {
    if (v270 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v271 || ((v272 ^ v273) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[29]);
  if (v77)
  {
    if (v274 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v275 || ((v276 ^ v277) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_16_42(v636[30]);
  if (v77)
  {
    if (v278 != 2)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v279 || ((v280 ^ v281) & 1) != 0)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64(v636[31]);
  if (v284)
  {
    if ((v283 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v283)
    {
      goto LABEL_51;
    }

    v285 = OUTLINED_FUNCTION_9_72(v282);
    if (!OUTLINED_FUNCTION_77_18(v285, v286, v287))
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_28_33(v636[32]);
  if (v289)
  {
    if (!v288)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_47();
    if (v290)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_28_33(v636[33]);
  if (v292)
  {
    if (!v291)
    {
      goto LABEL_51;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_47();
    if (v293)
    {
      goto LABEL_51;
    }
  }

  OUTLINED_FUNCTION_6_64(v636[34]);
  if (v296)
  {
    if ((v295 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v295)
    {
      goto LABEL_51;
    }

    v297 = OUTLINED_FUNCTION_9_72(v294);
    if (!OUTLINED_FUNCTION_77_18(v297, v298, v299))
    {
      goto LABEL_51;
    }
  }

  v300 = v637;
  v301 = v636[35];
  OUTLINED_FUNCTION_144_10();
  v302 = OUTLINED_FUNCTION_147_11();
  OUTLINED_FUNCTION_118_15(v302);
  OUTLINED_FUNCTION_63_17();
  v124 = v300;
  OUTLINED_FUNCTION_25_38(v300);
  if (v77)
  {
    OUTLINED_FUNCTION_22_39();
    if (!v77)
    {
      goto LABEL_49;
    }

    sub_19344E6DC(v300, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    sub_193448804(v300, v644, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_22_39();
    if (v303)
    {
      OUTLINED_FUNCTION_119_12();
      v126 = v644;
      goto LABEL_48;
    }

    v304 = OUTLINED_FUNCTION_27_31();
    v305(v304);
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v306, v307);
    OUTLINED_FUNCTION_95_17();
    v308 = OUTLINED_FUNCTION_59_21();
    v199(v308);
    v309 = OUTLINED_FUNCTION_166();
    v199(v309);
    sub_19344E6DC(v300, &qword_1EAE3A9E8, &qword_19394F800);
    if ((&qword_1EAE3A9E8 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v310 = v636[36];
  OUTLINED_FUNCTION_46_25(v635);
  if (v313)
  {
    if (!v311)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5(v312);
    v316 = v77 && v314 == v315;
    if (!v316 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v311)
  {
    goto LABEL_51;
  }

  v317 = v636[37];
  OUTLINED_FUNCTION_46_25(v635);
  if (v320)
  {
    if (!v318)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_5(v319);
    v323 = v77 && v321 == v322;
    if (!v323 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v318)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_68_22(v636[38]);
  if (v327)
  {
    if (!v324)
    {
      goto LABEL_51;
    }

    goto LABEL_228;
  }

  if (*v325 != *v326)
  {
    LOBYTE(v324) = 1;
  }

  if ((v324 & 1) == 0)
  {
LABEL_228:
    OUTLINED_FUNCTION_6_64(v636[39]);
    if (v330)
    {
      if ((v329 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v329)
      {
        goto LABEL_51;
      }

      v331 = OUTLINED_FUNCTION_9_72(v328);
      if (!OUTLINED_FUNCTION_77_18(v331, v332, v333))
      {
        goto LABEL_51;
      }
    }

    v334 = v636[40];
    OUTLINED_FUNCTION_46_25(v635);
    if (v337)
    {
      if (!v335)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_5(v336);
      v340 = v77 && v338 == v339;
      if (!v340 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v335)
    {
      goto LABEL_51;
    }

    v341 = v636[41];
    OUTLINED_FUNCTION_144_10();
    v342 = OUTLINED_FUNCTION_147_11();
    v343 = v638;
    OUTLINED_FUNCTION_118_15(v342);
    OUTLINED_FUNCTION_63_17();
    v124 = v343;
    OUTLINED_FUNCTION_25_38(v343);
    if (v77)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v77)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v343, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v343, v645, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v344)
      {
        OUTLINED_FUNCTION_119_12();
        v126 = v645;
        goto LABEL_48;
      }

      v345 = OUTLINED_FUNCTION_27_31();
      v346(v345);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v347, v348);
      OUTLINED_FUNCTION_95_17();
      v349 = OUTLINED_FUNCTION_59_21();
      v199(v349);
      v350 = OUTLINED_FUNCTION_166();
      v199(v350);
      sub_19344E6DC(v343, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v351 = v636[42];
    OUTLINED_FUNCTION_144_10();
    v352 = OUTLINED_FUNCTION_147_11();
    v353 = v639;
    OUTLINED_FUNCTION_118_15(v352);
    OUTLINED_FUNCTION_63_17();
    v124 = v353;
    OUTLINED_FUNCTION_25_38(v353);
    if (v77)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v77)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v353, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v353, v646, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v354)
      {
        OUTLINED_FUNCTION_119_12();
        v126 = v646;
        goto LABEL_48;
      }

      v355 = OUTLINED_FUNCTION_27_31();
      v356(v355);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v357, v358);
      OUTLINED_FUNCTION_95_17();
      v359 = OUTLINED_FUNCTION_59_21();
      v199(v359);
      v360 = OUTLINED_FUNCTION_166();
      v199(v360);
      sub_19344E6DC(v353, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v361 = v636[43];
    OUTLINED_FUNCTION_144_10();
    v362 = OUTLINED_FUNCTION_147_11();
    v363 = v640;
    OUTLINED_FUNCTION_118_15(v362);
    OUTLINED_FUNCTION_63_17();
    v124 = v363;
    OUTLINED_FUNCTION_25_38(v363);
    if (v77)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v77)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v363, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v363, v647, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v364)
      {
        OUTLINED_FUNCTION_119_12();
        v126 = v647;
        goto LABEL_48;
      }

      v365 = OUTLINED_FUNCTION_27_31();
      v366(v365);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v367, v368);
      OUTLINED_FUNCTION_95_17();
      v369 = OUTLINED_FUNCTION_59_21();
      v199(v369);
      v370 = OUTLINED_FUNCTION_166();
      v199(v370);
      sub_19344E6DC(v363, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_68_22(v636[44]);
    if (v372)
    {
      if (!v371)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v373)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_68_22(v636[45]);
    if (v375)
    {
      if (!v374)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v376)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[46]);
    if (v379)
    {
      if ((v378 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v378)
      {
        goto LABEL_51;
      }

      v380 = OUTLINED_FUNCTION_9_72(v377);
      if (!OUTLINED_FUNCTION_77_18(v380, v381, v382))
      {
        goto LABEL_51;
      }
    }

    v383 = v636[47];
    OUTLINED_FUNCTION_46_25(v635);
    if (v386)
    {
      if (!v384)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_5(v385);
      v389 = v77 && v387 == v388;
      if (!v389 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v384)
    {
      goto LABEL_51;
    }

    v390 = v636[48];
    OUTLINED_FUNCTION_144_10();
    v391 = OUTLINED_FUNCTION_147_11();
    v392 = v641;
    OUTLINED_FUNCTION_118_15(v391);
    OUTLINED_FUNCTION_63_17();
    v124 = v392;
    OUTLINED_FUNCTION_25_38(v392);
    if (v77)
    {
      OUTLINED_FUNCTION_22_39();
      if (!v77)
      {
        goto LABEL_49;
      }

      sub_19344E6DC(v392, &qword_1EAE3A9E8, &qword_19394F800);
    }

    else
    {
      sub_193448804(v392, v648, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_22_39();
      if (v393)
      {
        OUTLINED_FUNCTION_119_12();
        v126 = v648;
        goto LABEL_48;
      }

      v394 = OUTLINED_FUNCTION_27_31();
      v395(v394);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v396, v397);
      OUTLINED_FUNCTION_95_17();
      v398 = OUTLINED_FUNCTION_59_21();
      v199(v398);
      v399 = OUTLINED_FUNCTION_166();
      v199(v399);
      sub_19344E6DC(v392, &qword_1EAE3A9E8, &qword_19394F800);
      if ((&qword_1EAE3A9E8 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v400 = v636[49];
    OUTLINED_FUNCTION_46_25(v635);
    if (v403)
    {
      if (!v401)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_5(v402);
      v406 = v77 && v404 == v405;
      if (!v406 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v401)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_6_64(v636[50]);
    if (v409)
    {
      if ((v408 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v408)
      {
        goto LABEL_51;
      }

      v410 = OUTLINED_FUNCTION_9_72(v407);
      if (!OUTLINED_FUNCTION_77_18(v410, v411, v412))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[51]);
    if (v415)
    {
      if ((v414 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v414)
      {
        goto LABEL_51;
      }

      v416 = OUTLINED_FUNCTION_9_72(v413);
      if (!OUTLINED_FUNCTION_77_18(v416, v417, v418))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[52]);
    if (v77)
    {
      if (v419 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v420 || ((v421 ^ v422) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[53]);
    if (v77)
    {
      if (v423 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v424 || ((v425 ^ v426) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[54]);
    if (v77)
    {
      if (v427 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v428 || ((v429 ^ v430) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[55]);
    if (v77)
    {
      if (v431 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v432 || ((v433 ^ v434) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[56]);
    if (v77)
    {
      if (v435 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v436 || ((v437 ^ v438) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v439 = OUTLINED_FUNCTION_65_23(v636[57]);
    if ((sub_1937C1B14(v439, v440, v441, v442) & 1) == 0)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_68_22(v636[58]);
    if (v444)
    {
      if (!v443)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v445)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[59]);
    if (v448)
    {
      if ((v447 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v447)
      {
        goto LABEL_51;
      }

      v449 = OUTLINED_FUNCTION_9_72(v446);
      if (!OUTLINED_FUNCTION_77_18(v449, v450, v451))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[60]);
    if (v454)
    {
      if ((v453 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v453)
      {
        goto LABEL_51;
      }

      v455 = OUTLINED_FUNCTION_9_72(v452);
      if (!OUTLINED_FUNCTION_77_18(v455, v456, v457))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[61]);
    if (v460)
    {
      if ((v459 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v459)
      {
        goto LABEL_51;
      }

      v461 = OUTLINED_FUNCTION_9_72(v458);
      if (!OUTLINED_FUNCTION_77_18(v461, v462, v463))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[62]);
    if (v466)
    {
      if ((v465 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v465)
      {
        goto LABEL_51;
      }

      v467 = OUTLINED_FUNCTION_9_72(v464);
      if (!OUTLINED_FUNCTION_77_18(v467, v468, v469))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[63]);
    if (v472)
    {
      if ((v471 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v471)
      {
        goto LABEL_51;
      }

      v473 = OUTLINED_FUNCTION_9_72(v470);
      if (!OUTLINED_FUNCTION_77_18(v473, v474, v475))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[64]);
    if (v478)
    {
      if ((v477 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v477)
      {
        goto LABEL_51;
      }

      v479 = OUTLINED_FUNCTION_9_72(v476);
      if (!OUTLINED_FUNCTION_77_18(v479, v480, v481))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[65]);
    if (v484)
    {
      if ((v483 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v483)
      {
        goto LABEL_51;
      }

      v485 = OUTLINED_FUNCTION_9_72(v482);
      if (!OUTLINED_FUNCTION_77_18(v485, v486, v487))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[66]);
    if (v490)
    {
      if ((v489 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v489)
      {
        goto LABEL_51;
      }

      v491 = OUTLINED_FUNCTION_9_72(v488);
      if (!OUTLINED_FUNCTION_77_18(v491, v492, v493))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[67]);
    if (v496)
    {
      if ((v495 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v495)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72(v494);
      OUTLINED_FUNCTION_53_26();
      if (!OUTLINED_FUNCTION_140_13(v497, v498, v499, v500))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[68]);
    if (v503)
    {
      if ((v502 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v502)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72(v501);
      OUTLINED_FUNCTION_53_26();
      if (!OUTLINED_FUNCTION_140_13(v504, v505, v506, v507))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[69]);
    if (v510)
    {
      if ((v509 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v509)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72(v508);
      OUTLINED_FUNCTION_56_20();
      if (!OUTLINED_FUNCTION_140_13(v511, v512, v513, v514))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[70]);
    if (v517)
    {
      if ((v516 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v516)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72(v515);
      OUTLINED_FUNCTION_55_17();
      if (!OUTLINED_FUNCTION_140_13(v518, v519, v520, v521))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[71]);
    if (v524)
    {
      if ((v523 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v523)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_9_72(v522);
      OUTLINED_FUNCTION_54_20();
      if (!OUTLINED_FUNCTION_140_13(v525, v526, v527, v528))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[72]);
    if (v531)
    {
      if ((v530 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v530)
      {
        goto LABEL_51;
      }

      v532 = OUTLINED_FUNCTION_9_72(v529);
      if (!OUTLINED_FUNCTION_77_18(v532, v533, v534))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[73]);
    if (v77)
    {
      if (v535 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v536 || ((v537 ^ v538) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[74]);
    if (v541)
    {
      if ((v540 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v540)
      {
        goto LABEL_51;
      }

      v542 = OUTLINED_FUNCTION_9_72(v539);
      if (!OUTLINED_FUNCTION_77_18(v542, v543, v544))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[75]);
    if (v547)
    {
      if ((v546 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v546)
      {
        goto LABEL_51;
      }

      v548 = OUTLINED_FUNCTION_9_72(v545);
      if (!OUTLINED_FUNCTION_77_18(v548, v549, v550))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[76]);
    if (v77)
    {
      if (v551 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v552 || ((v553 ^ v554) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_6_64(v636[77]);
    if (v557)
    {
      if ((v556 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v556)
      {
        goto LABEL_51;
      }

      v558 = OUTLINED_FUNCTION_9_72(v555);
      if (!OUTLINED_FUNCTION_77_18(v558, v559, v560))
      {
        goto LABEL_51;
      }
    }

    OUTLINED_FUNCTION_16_42(v636[78]);
    if (v77)
    {
      if (v561 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      OUTLINED_FUNCTION_84_17();
      if (v562 || ((v563 ^ v564) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v565 = OUTLINED_FUNCTION_65_23(v636[79]);
    if ((sub_19344FC94(v565, v566) & 1) == 0)
    {
      goto LABEL_51;
    }

    v567 = OUTLINED_FUNCTION_65_23(v636[80]);
    if ((sub_19344FC94(v567, v568) & 1) == 0)
    {
      goto LABEL_51;
    }

    v569 = v636[81];
    OUTLINED_FUNCTION_144_10();
    v570 = OUTLINED_FUNCTION_147_11();
    v571 = v642;
    OUTLINED_FUNCTION_118_15(v570);
    OUTLINED_FUNCTION_63_17();
    v124 = v571;
    OUTLINED_FUNCTION_25_38(v571);
    if (v77)
    {
      OUTLINED_FUNCTION_22_39();
      if (v77)
      {
        sub_19344E6DC(v571, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_468:
        v584 = OUTLINED_FUNCTION_65_23(v636[82]);
        if ((sub_1937C1BEC(v584, v585) & 1) == 0)
        {
          goto LABEL_51;
        }

        v586 = OUTLINED_FUNCTION_65_23(v636[83]);
        if ((sub_1937C1C9C(v586, v587) & 1) == 0)
        {
          goto LABEL_51;
        }

        v588 = v636[84];
        v589 = *(v635 + v588 + 105);
        v590 = v655 + v588;
        v591 = *(v655 + v588 + 105);
        if (v589)
        {
          if ((*(v655 + v588 + 105) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          memcpy(v665, v635 + v588, 0x69uLL);
          BYTE1(v665[13]) = v589;
          if (v591)
          {
            goto LABEL_51;
          }

          memcpy(v663, v590, 0x69uLL);
          if ((static MomentsEventData.EventBundle.Place.== infix(_:_:)(v665, v663) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v592 = OUTLINED_FUNCTION_65_23(v636[85]);
        if ((sub_1937C1EBC(v592, v593) & 1) == 0)
        {
          goto LABEL_51;
        }

        v594 = OUTLINED_FUNCTION_65_23(v636[86]);
        if ((sub_19344FC94(v594, v595) & 1) == 0)
        {
          goto LABEL_51;
        }

        v596 = v636[87];
        v597 = v635 + v596;
        v598 = *v597;
        v599 = v655 + v596;
        v600 = *v599;
        if (*v597 == 3)
        {
          if (v600 != 3)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v601 = v599[16];
          v602 = v597[16];
          v603 = *(v597 + 1);
          v665[0] = v598;
          v665[1] = v603;
          LOBYTE(v665[2]) = v602;
          if (v600 == 3)
          {
            goto LABEL_51;
          }

          v663[0] = v600;
          LOBYTE(v663[1]) = v601;
          static MomentsEventData.EventBundle.ClusterMetadata.== infix(_:_:)();
          if ((v604 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v605 = v636[88];
        v606 = *(v650 + 48);
        v607 = OUTLINED_FUNCTION_147_11();
        v608 = v633;
        OUTLINED_FUNCTION_118_15(v607);
        OUTLINED_FUNCTION_63_17();
        OUTLINED_FUNCTION_6_3(v608, 1, v652);
        if (v77)
        {
          OUTLINED_FUNCTION_6_3(v633 + v606, 1, v652);
          if (v77)
          {
            sub_19344E6DC(v633, &qword_1EAE42B00, &qword_193997C90);
LABEL_492:
            OUTLINED_FUNCTION_28_33(v636[89]);
            if (v615)
            {
              if (!v614)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v616)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33(v636[90]);
            if (v618)
            {
              if (!v617)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v619)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33(v636[91]);
            if (v621)
            {
              if (!v620)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v622)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33(v636[92]);
            if (v624)
            {
              if (!v623)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v625)
              {
                goto LABEL_51;
              }
            }

            OUTLINED_FUNCTION_28_33(v636[93]);
            if (v627)
            {
              if (!v626)
              {
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_21_47();
              if (v628)
              {
                goto LABEL_51;
              }
            }

            v629 = v635;
            v630 = v636[94];
            memcpy(v666, v635 + v630, 0xDAuLL);
            OUTLINED_FUNCTION_191_5(v667);
            memcpy(v665, (v629 + v630), 0xDAuLL);
            OUTLINED_FUNCTION_191_5(&v665[28]);
            memcpy(v668, (v629 + v630), 0xDAuLL);
            if (sub_1936EC8BC(v668) == 1)
            {
              memcpy(v663, &v665[28], 0xDAuLL);
              if (sub_1936EC8BC(v663) == 1)
              {
                OUTLINED_FUNCTION_173_9(v664);
                OUTLINED_FUNCTION_142_13(v666);
                OUTLINED_FUNCTION_142_13(v667);
                sub_19344E6DC(v664, &qword_1EAE42F60, &qword_193997C98);
                goto LABEL_51;
              }

              OUTLINED_FUNCTION_27_7(v666, v664);
              OUTLINED_FUNCTION_27_7(v667, v664);
            }

            else
            {
              OUTLINED_FUNCTION_173_9(v664);
              memcpy(v663, &v665[28], 0xDAuLL);
              if (sub_1936EC8BC(v663) != 1)
              {
                OUTLINED_FUNCTION_142_13(v666);
                OUTLINED_FUNCTION_142_13(v667);
                OUTLINED_FUNCTION_142_13(v664);
                static MomentsEventData.EventBundle.MetadataForRank.== infix(_:_:)(v665, &v665[28]);
                memcpy(v660, &v665[28], 0xDAuLL);
                sub_1937D0FA0(v660);
                OUTLINED_FUNCTION_173_9(v661);
                sub_1937D0FA0(v661);
                OUTLINED_FUNCTION_173_9(v662);
                sub_19344E6DC(v662, &qword_1EAE42F60, &qword_193997C98);
                goto LABEL_51;
              }

              OUTLINED_FUNCTION_173_9(v662);
              OUTLINED_FUNCTION_27_7(v666, v661);
              OUTLINED_FUNCTION_27_7(v667, v661);
              OUTLINED_FUNCTION_27_7(v664, v661);
              sub_1937D0FA0(v662);
            }

            memcpy(v663, v665, 0x1BAuLL);
            v85 = &unk_1EAE42F70;
            v86 = &unk_193997CA8;
            v87 = v663;
            goto LABEL_50;
          }
        }

        else
        {
          v609 = v633;
          sub_193448804(v633, v651, &qword_1EAE42B00, &qword_193997C90);
          OUTLINED_FUNCTION_6_3(v609 + v606, 1, v652);
          if (!v610)
          {
            v611 = v633;
            sub_1937D1024(v633 + v606, v634, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
            OUTLINED_FUNCTION_5_7();
            static MomentsEventData.EventBundle.OutlierMetadata.== infix(_:_:)();
            v613 = v612;
            OUTLINED_FUNCTION_165_10();
            sub_1937D0FD0();
            OUTLINED_FUNCTION_26_29();
            sub_1937D0FD0();
            sub_19344E6DC(v611, &qword_1EAE42B00, &qword_193997C90);
            if ((v613 & 1) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_492;
          }

          sub_1937D0FD0();
        }

        v85 = &qword_1EAE42F68;
        v86 = &qword_193997CA0;
        v87 = v633;
LABEL_50:
        sub_19344E6DC(v87, v85, v86);
        goto LABEL_51;
      }

LABEL_49:
      v85 = &qword_1EAE3B968;
      v86 = &qword_193972430;
      v87 = v124;
      goto LABEL_50;
    }

    sub_193448804(v571, v649, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_22_39();
    if (!v572)
    {
      v574 = v656;
      v573 = v657;
      OUTLINED_FUNCTION_28_30();
      v575 = v199 + v124;
      v576 = v658;
      v577(v574, v575, v658);
      OUTLINED_FUNCTION_0_104();
      sub_1937D05A4(v578, v579);
      v580 = v649;
      v581 = sub_19393C550();
      v582 = *(v573 + 8);
      v583 = OUTLINED_FUNCTION_5_7();
      v582(v583);
      (v582)(v580, v576);
      sub_19344E6DC(v124, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v581 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_468;
    }

    OUTLINED_FUNCTION_119_12();
    v126 = v649;
LABEL_48:
    v127(v126);
    goto LABEL_49;
  }

LABEL_51:
  OUTLINED_FUNCTION_116();
}

void MomentsEventData.EventBundle.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v4 = v3;
  v5 = sub_19393BE00();
  v221 = OUTLINED_FUNCTION_0(v5);
  v222 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_8();
  v220 = v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49();
  v219 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49();
  v218 = v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49();
  v217 = v22;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_49();
  v216 = v24;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_49();
  v215 = v26;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_49();
  v214 = v28;
  OUTLINED_FUNCTION_47_3();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v212 - v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_173_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_160_11();
  if (v0[1])
  {
    v34 = *v0;
    OUTLINED_FUNCTION_94();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  v35 = type metadata accessor for MomentsEventData.EventBundle(0);
  sub_193448804(v0 + v35[5], v1, &qword_1EAE3A9E8, &qword_19394F800);
  v36 = v221;
  OUTLINED_FUNCTION_6_3(v1, 1, v221);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v213 = v32;
    v38 = v222;
    (*(v222 + 32))(v11, v1, v36);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v39, v40);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v41 = v38;
    v32 = v213;
    v42 = *(v41 + 8);
    v43 = OUTLINED_FUNCTION_121_0();
    v44(v43);
  }

  sub_193448804(v0 + v35[6], v2, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v2, 1, v36);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v1 = v222;
    (*(v222 + 32))(v11, v2, v36);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v45, v46);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v47 = *(v1 + 8);
    v48 = OUTLINED_FUNCTION_121_0();
    v49(v48);
  }

  v50 = v36;
  sub_193448804(v0 + v35[7], v32, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v32, 1, v36);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
    v52 = v222;
  }

  else
  {
    v51 = v32;
    v52 = v222;
    (*(v222 + 32))(v11, v51, v36);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v53, v54);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v55 = OUTLINED_FUNCTION_41_25();
    v56(v55);
  }

  sub_193448804(v0 + v35[8], v214, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v57 = OUTLINED_FUNCTION_26_34();
    v58(v57);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v59, v60);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v61 = OUTLINED_FUNCTION_41_25();
    v62(v61);
  }

  OUTLINED_FUNCTION_32_34(v35[9]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v63);
    OUTLINED_FUNCTION_13_57();
    v64 = MomentsEventData.BundleInterfaceType.rawValue.getter();
    MEMORY[0x193B18030](v64);
  }

  OUTLINED_FUNCTION_97_12(v35[10]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[11]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[12]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[13]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_146_11(v35[14]);
  if (v1)
  {
    OUTLINED_FUNCTION_86_14(v65);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_146_11(v35[15]);
  if (v1)
  {
    OUTLINED_FUNCTION_86_14(v66);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_97_12(v35[16]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34(v35[17]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v67);
    OUTLINED_FUNCTION_13_57();
    v68 = MomentsEventData.PlaceInferencePlaceType.rawValue.getter();
    MEMORY[0x193B18030](v68);
  }

  OUTLINED_FUNCTION_32_34(v35[18]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v69);
    OUTLINED_FUNCTION_13_57();
    v70 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
    MEMORY[0x193B18030](v70);
  }

  OUTLINED_FUNCTION_32_34(v35[19]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v71);
    OUTLINED_FUNCTION_13_57();
    v72 = MomentsEventData.EventCategoryType.rawValue.getter();
    MEMORY[0x193B18030](v72);
  }

  v73 = OUTLINED_FUNCTION_139_12(v35[20]);
  sub_1934D11C8(v73, v74);
  v75 = v0 + v35[21];
  v76 = *(v75 + 3);
  if (v76 == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v77 = v75[36];
    v78 = *(v75 + 8);
    v80 = *(v75 + 1);
    v79 = *(v75 + 2);
    v226[0] = *v75;
    LOWORD(v226[1]) = v80 & 0x1FF;
    v226[2] = v79;
    v226[3] = v76;
    LODWORD(v226[4]) = v78;
    BYTE4(v226[4]) = v77 & 1;
    OUTLINED_FUNCTION_94();

    MomentsEventData.Action.hash(into:)();
  }

  v81 = OUTLINED_FUNCTION_139_12(v35[22]);
  sub_1937D0CD8(v81, v82);
  OUTLINED_FUNCTION_97_12(v35[23]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34(v35[24]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v83);
    OUTLINED_FUNCTION_13_57();
    v84 = MomentsEventData.TimeTagType.rawValue.getter();
    MEMORY[0x193B18030](v84);
  }

  OUTLINED_FUNCTION_97_12(v35[25]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[26]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[27]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[28]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[29]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[30]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34(v35[31]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v85);
    OUTLINED_FUNCTION_13_57();
    v86 = MomentsEventData.BundleEngagementType.rawValue.getter();
    MEMORY[0x193B18030](v86);
  }

  OUTLINED_FUNCTION_79_17(v35[32]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v87);
    sub_19393CAD0();
    v88 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v88);
  }

  OUTLINED_FUNCTION_79_17(v35[33]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v89);
    sub_19393CAD0();
    v90 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v90);
  }

  OUTLINED_FUNCTION_32_34(v35[34]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v91);
    OUTLINED_FUNCTION_13_57();
    v92 = MomentsEventData.SuggestionType.rawValue.getter();
    MEMORY[0x193B18030](v92);
  }

  sub_193448804(v0 + v35[35], v215, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v93 = OUTLINED_FUNCTION_26_34();
    v94(v93);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v95, v96);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v97 = OUTLINED_FUNCTION_41_25();
    v98(v97);
  }

  OUTLINED_FUNCTION_146_11(v35[36]);
  if (v76)
  {
    OUTLINED_FUNCTION_86_14(v99);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_146_11(v35[37]);
  if (v76)
  {
    OUTLINED_FUNCTION_86_14(v100);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_91_16(v0 + v35[38]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v102 = *v101;
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_32_34(v35[39]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v103);
    OUTLINED_FUNCTION_13_57();
    v104 = MomentsEventData.AppEntryEventType.rawValue.getter();
    MEMORY[0x193B18030](v104);
  }

  OUTLINED_FUNCTION_146_11(v35[40]);
  if (v76)
  {
    OUTLINED_FUNCTION_86_14(v105);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_193448804(v0 + v35[41], v216, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v106 = OUTLINED_FUNCTION_26_34();
    v107(v106);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v108, v109);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v110 = OUTLINED_FUNCTION_41_25();
    v111(v110);
  }

  sub_193448804(v0 + v35[42], v217, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v112 = OUTLINED_FUNCTION_26_34();
    v113(v112);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v114, v115);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v116 = OUTLINED_FUNCTION_41_25();
    v117(v116);
  }

  sub_193448804(v0 + v35[43], v218, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v118 = OUTLINED_FUNCTION_26_34();
    v119(v118);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v120, v121);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v122 = OUTLINED_FUNCTION_41_25();
    v123(v122);
  }

  OUTLINED_FUNCTION_91_16(v0 + v35[44]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v125 = *v124;
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_91_16(v0 + v35[45]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v127 = *v126;
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_32_34(v35[46]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v128);
    OUTLINED_FUNCTION_13_57();
    v129 = MomentsEventData.ClientActivityEventType.rawValue.getter();
    MEMORY[0x193B18030](v129);
  }

  OUTLINED_FUNCTION_146_11(v35[47]);
  if (v76)
  {
    OUTLINED_FUNCTION_86_14(v130);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_193448804(v0 + v35[48], v219, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v131 = OUTLINED_FUNCTION_26_34();
    v132(v131);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v133, v134);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    v135 = OUTLINED_FUNCTION_41_25();
    v136(v135);
  }

  OUTLINED_FUNCTION_146_11(v35[49]);
  if (v76)
  {
    OUTLINED_FUNCTION_86_14(v137);
    sub_19393CAD0();
    OUTLINED_FUNCTION_117_17();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_32_34(v35[50]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v138);
    OUTLINED_FUNCTION_13_57();
    v139 = MomentsEventData.PhotoSourceType.rawValue.getter();
    MEMORY[0x193B18030](v139);
  }

  OUTLINED_FUNCTION_32_34(v35[51]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v140);
    OUTLINED_FUNCTION_13_57();
    v141 = MomentsEventData.PhotoLibraryType.rawValue.getter();
    MEMORY[0x193B18030](v141);
  }

  OUTLINED_FUNCTION_97_12(v35[52]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[53]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[54]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[55]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_97_12(v35[56]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  sub_1937D0EE8(v4, *(v0 + v35[57]));
  OUTLINED_FUNCTION_91_16(v0 + v35[58]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v143 = *v142;
    OUTLINED_FUNCTION_94();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_32_34(v35[59]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v144);
    OUTLINED_FUNCTION_13_57();
    v145 = MomentsEventData.RankingType.rawValue.getter();
    MEMORY[0x193B18030](v145);
  }

  OUTLINED_FUNCTION_32_34(v35[60]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v146);
    OUTLINED_FUNCTION_13_57();
    v147 = MomentsEventData.LabelConfidenceScoreType.rawValue.getter();
    MEMORY[0x193B18030](v147);
  }

  OUTLINED_FUNCTION_32_34(v35[61]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v148);
    OUTLINED_FUNCTION_13_57();
    v149 = MomentsEventData.TimeCorrelationScoreType.rawValue.getter();
    MEMORY[0x193B18030](v149);
  }

  OUTLINED_FUNCTION_32_34(v35[62]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v150);
    OUTLINED_FUNCTION_13_57();
    v151 = MomentsEventData.CallDurationTypes.rawValue.getter();
    MEMORY[0x193B18030](v151);
  }

  OUTLINED_FUNCTION_32_34(v35[63]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v152);
    OUTLINED_FUNCTION_13_57();
    v153 = MomentsEventData.InteractionCountTypes.rawValue.getter();
    MEMORY[0x193B18030](v153);
  }

  OUTLINED_FUNCTION_32_34(v35[64]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v154);
    OUTLINED_FUNCTION_13_57();
    v155 = MomentsEventData.BundleInteractionTypes.rawValue.getter();
    MEMORY[0x193B18030](v155);
  }

  OUTLINED_FUNCTION_32_34(v35[65]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v156);
    OUTLINED_FUNCTION_13_57();
    v157 = MomentsEventData.CallPlaceType.rawValue.getter();
    MEMORY[0x193B18030](v157);
  }

  OUTLINED_FUNCTION_32_34(v35[66]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v158);
    OUTLINED_FUNCTION_13_57();
    v159 = MomentsEventData.DistanceFromHomeType.rawValue.getter();
    MEMORY[0x193B18030](v159);
  }

  OUTLINED_FUNCTION_32_34(v35[67]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v160);
    OUTLINED_FUNCTION_13_57();
    v161 = MomentsEventData.AvailabilityType.rawValue.getter();
    MEMORY[0x193B18030](v161);
  }

  OUTLINED_FUNCTION_32_34(v35[68]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v162);
    OUTLINED_FUNCTION_13_57();
    v163 = MomentsEventData.AvailabilityType.rawValue.getter();
    MEMORY[0x193B18030](v163);
  }

  OUTLINED_FUNCTION_32_34(v35[69]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v164);
    OUTLINED_FUNCTION_13_57();
    v165 = MomentsEventData.MapItemSourceType.rawValue.getter();
    MEMORY[0x193B18030](v165);
  }

  OUTLINED_FUNCTION_32_34(v35[70]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v166);
    OUTLINED_FUNCTION_13_57();
    v167 = MomentsEventData.VisitPlaceTypes.rawValue.getter();
    MEMORY[0x193B18030](v167);
  }

  OUTLINED_FUNCTION_32_34(v35[71]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v168);
    OUTLINED_FUNCTION_13_57();
    v170 = MomentsEventData.PlaceInferenceGranularityType.rawValue.getter(v169);
    MEMORY[0x193B18030](v170);
  }

  OUTLINED_FUNCTION_32_34(v35[72]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v171);
    OUTLINED_FUNCTION_13_57();
    v172 = MomentsEventData.AnomalousType.rawValue.getter();
    MEMORY[0x193B18030](v172);
  }

  OUTLINED_FUNCTION_97_12(v35[73]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34(v35[74]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v173);
    OUTLINED_FUNCTION_13_57();
    v174 = MomentsEventData.EventBundle.BundleSuperType.rawValue.getter();
    MEMORY[0x193B18030](v174);
  }

  OUTLINED_FUNCTION_32_34(v35[75]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v175);
    OUTLINED_FUNCTION_13_57();
    v176 = MomentsEventData.EventBundle.BundleSubType.rawValue.getter();
    MEMORY[0x193B18030](v176);
  }

  OUTLINED_FUNCTION_97_12(v35[76]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_32_34(v35[77]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_43_22(v177);
    OUTLINED_FUNCTION_13_57();
    v178 = MomentsEventData.EventBundle.SummarizationGranularity.rawValue.getter();
    MEMORY[0x193B18030](v178);
  }

  OUTLINED_FUNCTION_97_12(v35[78]);
  if (!v37)
  {
    OUTLINED_FUNCTION_94();
  }

  sub_19393CAD0();
  v179 = OUTLINED_FUNCTION_139_12(v35[79]);
  sub_1934D11C8(v179, v180);
  v181 = OUTLINED_FUNCTION_139_12(v35[80]);
  sub_1934D11C8(v181, v182);
  sub_193448804(v0 + v35[81], v220, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_58_21();
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v183 = OUTLINED_FUNCTION_26_34();
    v184(v183);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v185, v186);
    OUTLINED_FUNCTION_60_23();
    sub_19393C540();
    (*(v52 + 8))(v11, v50);
  }

  v187 = OUTLINED_FUNCTION_139_12(v35[82]);
  sub_1937D0B0C(v187, v188);
  v189 = OUTLINED_FUNCTION_139_12(v35[83]);
  sub_1937D0868(v189, v190);
  v191 = v0 + v35[84];
  if (v191[105])
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v226, v191, 0x69uLL);
    OUTLINED_FUNCTION_94();
    MomentsEventData.EventBundle.Place.hash(into:)();
  }

  v192 = OUTLINED_FUNCTION_139_12(v35[85]);
  sub_1937D05EC(v192, v193);
  v194 = OUTLINED_FUNCTION_139_12(v35[86]);
  sub_1934D11C8(v194, v195);
  v196 = v0 + v35[87];
  v197 = *v196;
  if (*v196 == 3)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v198 = v196[16];
    v199 = *(v196 + 1);
    v226[0] = v197;
    v226[1] = v199;
    LOBYTE(v226[2]) = v198;
    OUTLINED_FUNCTION_94();
    MomentsEventData.EventBundle.ClusterMetadata.hash(into:)();
  }

  v200 = v0 + v35[88];
  sub_1937D022C(v4);
  OUTLINED_FUNCTION_79_17(v35[89]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v201);
    sub_19393CAD0();
    v202 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v202);
  }

  OUTLINED_FUNCTION_79_17(v35[90]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v203);
    sub_19393CAD0();
    v204 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v204);
  }

  OUTLINED_FUNCTION_79_17(v35[91]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v205);
    sub_19393CAD0();
    v206 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v206);
  }

  OUTLINED_FUNCTION_79_17(v35[92]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v207);
    sub_19393CAD0();
    v208 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v208);
  }

  OUTLINED_FUNCTION_79_17(v35[93]);
  if (v37)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_86_14(v209);
    sub_19393CAD0();
    v210 = OUTLINED_FUNCTION_138_10();
    MEMORY[0x193B18060](v210);
  }

  v211 = v35[94];
  OUTLINED_FUNCTION_191_5(v225);
  OUTLINED_FUNCTION_191_5(v226);
  if (sub_1936EC8BC(v226) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    memcpy(v223, v225, 0xDAuLL);
    sub_19378E230(v223, v224);
    MomentsEventData.EventBundle.MetadataForRank.hash(into:)(v4);
    memcpy(v224, v225, 0xDAuLL);
    sub_1937D0FA0(v224);
  }

  OUTLINED_FUNCTION_116();
}

void static MomentsEventData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v216 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v216);
  v213 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v210 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_8();
  v209 = v14;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v15);
  v212 = &v209 - v16;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = OUTLINED_FUNCTION_4_1(v215);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_8();
  v211 = v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  v214 = &v209 - v22;
  v220 = type metadata accessor for MomentsEventData.EventBundle(0);
  v23 = OUTLINED_FUNCTION_4_1(v220);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_1();
  v217 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  v218 = &v209 - v32;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42F78, &qword_193997CB0);
  OUTLINED_FUNCTION_4_1(v219);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v209 - v36;
  v38 = type metadata accessor for MomentsEventData.Event(0);
  v39 = OUTLINED_FUNCTION_4_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_1();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_47(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v209 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42F80, &qword_193997CB8);
  OUTLINED_FUNCTION_47(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_3_0();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v209 - v56;
  v58 = *(v55 + 56);
  v221 = v3;
  sub_193448804(v3, &v209 - v56, &qword_1EAE42AF0, &unk_193997C80);
  v222 = v1;
  sub_193448804(v1, &v57[v58], &qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_6_3(v57, 1, v38);
  if (v59)
  {
    OUTLINED_FUNCTION_6_3(&v57[v58], 1, v38);
    if (v59)
    {
      sub_19344E6DC(v57, &qword_1EAE42AF0, &unk_193997C80);
      goto LABEL_11;
    }

LABEL_9:
    v60 = &qword_1EAE42F80;
    v61 = &qword_193997CB8;
    v62 = v57;
LABEL_21:
    sub_19344E6DC(v62, v60, v61);
    goto LABEL_22;
  }

  sub_193448804(v57, v50, &qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_6_3(&v57[v58], 1, v38);
  if (v59)
  {
    sub_1937D0FD0();
    goto LABEL_9;
  }

  sub_1937D1024(&v57[v58], v44, type metadata accessor for MomentsEventData.Event);
  static MomentsEventData.Event.== infix(_:_:)();
  v64 = v63;
  OUTLINED_FUNCTION_5_7();
  sub_1937D0FD0();
  OUTLINED_FUNCTION_246();
  sub_1937D0FD0();
  sub_19344E6DC(v57, &qword_1EAE42AF0, &unk_193997C80);
  if ((v64 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v65 = type metadata accessor for MomentsEventData(0);
  v66 = v65[5];
  v67 = *(v219 + 48);
  v68 = v221;
  sub_193448804(v221 + v66, v37, &qword_1EAE42AE8, &qword_193995D00);
  v69 = v222;
  sub_193448804(v222 + v66, &v37[v67], &qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_6_3(v37, 1, v220);
  if (v59)
  {
    OUTLINED_FUNCTION_31(&v37[v67]);
    if (v59)
    {
      sub_19344E6DC(v37, &qword_1EAE42AE8, &qword_193995D00);
      goto LABEL_24;
    }

LABEL_19:
    v60 = &qword_1EAE42F78;
    v61 = &qword_193997CB0;
LABEL_20:
    v62 = v37;
    goto LABEL_21;
  }

  sub_193448804(v37, v218, &qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_31(&v37[v67]);
  if (v70)
  {
    sub_1937D0FD0();
    goto LABEL_19;
  }

  sub_1937D1024(&v37[v67], v217, type metadata accessor for MomentsEventData.EventBundle);
  static MomentsEventData.EventBundle.== infix(_:_:)();
  v72 = v71;
  sub_1937D0FD0();
  sub_1937D0FD0();
  sub_19344E6DC(v37, &qword_1EAE42AE8, &qword_193995D00);
  if ((v72 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v73 = v65[6];
  v74 = *(v68 + v73);
  v75 = *(v69 + v73);
  if (v74 == 2)
  {
    if (v75 != 2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v59 || ((v76 ^ v77) & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  v78 = v65[7];
  v79 = *(v68 + v78);
  v80 = *(v69 + v78);
  if (v79 == 2)
  {
    if (v80 != 2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v59 || ((v81 ^ v82) & 1) != 0)
    {
      goto LABEL_22;
    }
  }

  v83 = v65[8];
  v84 = *(v68 + v83 + 4);
  v85 = *(v69 + v83 + 4);
  if (v84)
  {
    if (!v85)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v86)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_175_8(v65[9]);
  if (v89)
  {
    if ((v88 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v88)
    {
      goto LABEL_22;
    }

    v90 = OUTLINED_FUNCTION_9_72(v87);
    if (!OUTLINED_FUNCTION_77_18(v90, v91, v92))
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_175_8(v65[10]);
  if (v95)
  {
    if ((v94 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v94)
    {
      goto LABEL_22;
    }

    v96 = OUTLINED_FUNCTION_9_72(v93);
    if (!OUTLINED_FUNCTION_77_18(v96, v97, v98))
    {
      goto LABEL_22;
    }
  }

  v99 = v65[11];
  v100 = v214;
  v101 = *(v215 + 48);
  sub_193448804(v68 + v99, v214, &qword_1EAE3A9E8, &qword_19394F800);
  v37 = v100;
  sub_193448804(v69 + v99, v100 + v101, &qword_1EAE3A9E8, &qword_19394F800);
  v102 = v216;
  OUTLINED_FUNCTION_6_3(v100, 1, v216);
  if (v59)
  {
    OUTLINED_FUNCTION_6_3(v100 + v101, 1, v102);
    if (v59)
    {
      sub_19344E6DC(v100, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  sub_193448804(v100, v212, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v100 + v101, 1, v102);
  if (v103)
  {
    v104 = *(v213 + 8);
    v105 = OUTLINED_FUNCTION_246();
    v106(v105);
LABEL_56:
    v60 = &qword_1EAE3B968;
    v61 = &qword_193972430;
    goto LABEL_20;
  }

  v107 = v213;
  OUTLINED_FUNCTION_28_30();
  v108(v210, &v37[v101], v102);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v109, v110);
  LODWORD(v220) = sub_19393C550();
  v111 = *(v107 + 8);
  v112 = OUTLINED_FUNCTION_5_7();
  v111(v112);
  v113 = OUTLINED_FUNCTION_246();
  v111(v113);
  sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v220 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_58:
  v114 = v65[12];
  v115 = *(v215 + 48);
  v116 = v211;
  sub_193448804(v68 + v114, v211, &qword_1EAE3A9E8, &qword_19394F800);
  v117 = v69 + v114;
  v118 = v216;
  sub_193448804(v117, v116 + v115, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v116, 1, v118);
  if (v59)
  {
    OUTLINED_FUNCTION_6_3(v116 + v115, 1, v118);
    if (v59)
    {
      sub_19344E6DC(v116, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  sub_193448804(v116, v209, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v116 + v115, 1, v118);
  if (v119)
  {
    v120 = *(v213 + 8);
    v121 = OUTLINED_FUNCTION_246();
    v122(v121);
LABEL_66:
    v60 = &qword_1EAE3B968;
    v61 = &qword_193972430;
    v62 = v116;
    goto LABEL_21;
  }

  v123 = v213;
  OUTLINED_FUNCTION_28_30();
  v124 = v116 + v115;
  v125 = v210;
  v126(v210, v124, v118);
  OUTLINED_FUNCTION_0_104();
  sub_1937D05A4(v127, v128);
  v129 = sub_19393C550();
  v130 = *(v123 + 8);
  v130(v125, v118);
  v131 = OUTLINED_FUNCTION_246();
  (v130)(v131);
  sub_19344E6DC(v116, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v129 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_68:
  v132 = v65[13];
  OUTLINED_FUNCTION_174_6();
  if (v135)
  {
    if (!v133)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v134);
    v138 = v59 && v136 == v137;
    if (!v138 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v133)
  {
    goto LABEL_22;
  }

  v139 = v65[14];
  OUTLINED_FUNCTION_174_6();
  if (v142)
  {
    if (!v140)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v141);
    v145 = v59 && v143 == v144;
    if (!v145 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v140)
  {
    goto LABEL_22;
  }

  v146 = v65[15];
  OUTLINED_FUNCTION_67_14();
  if (v149)
  {
    if (!v147)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v148);
    v152 = v59 && v150 == v151;
    if (!v152 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v147)
  {
    goto LABEL_22;
  }

  v153 = v65[16];
  OUTLINED_FUNCTION_67_14();
  if (v156)
  {
    if (!v154)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v155);
    v159 = v59 && v157 == v158;
    if (!v159 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v154)
  {
    goto LABEL_22;
  }

  v160 = v65[17];
  OUTLINED_FUNCTION_67_14();
  if (v163)
  {
    if (!v161)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v162);
    v166 = v59 && v164 == v165;
    if (!v166 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v161)
  {
    goto LABEL_22;
  }

  v167 = v65[18];
  OUTLINED_FUNCTION_67_14();
  if (v170)
  {
    if (!v168)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_5(v169);
    v173 = v59 && v171 == v172;
    if (!v173 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v168)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_164_9(v65[19]);
  if (v175)
  {
    if (!v174)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v176)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_164_9(v65[20]);
  if (v178)
  {
    if (!v177)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v179)
    {
      goto LABEL_22;
    }
  }

  v180 = v65[21];
  v181 = *(v221 + v180 + 9);
  v182 = v222 + v180;
  v183 = *(v182 + 9);
  if (v181)
  {
    if ((*(v182 + 9) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v182 + 9))
    {
      goto LABEL_22;
    }

    v184 = OUTLINED_FUNCTION_9_72(v182);
    if (!OUTLINED_FUNCTION_77_18(v184, v185, v186))
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[22]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v187)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v188)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[23]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v189)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v190)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[24]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v191)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v192)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[25]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v193)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v194)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[26]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v195)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v196)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[27]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v197)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v198)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[28]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v199)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v200)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[29]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v201)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v202)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[30]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v203)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v204)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[31]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_17();
    if (v205)
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_112_15();
    if (v206)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_47_29(v65[32]);
  if (v59)
  {
    OUTLINED_FUNCTION_113_14();
    if (!v59)
    {
      goto LABEL_22;
    }

    goto LABEL_212;
  }

  OUTLINED_FUNCTION_84_17();
  if (!v207)
  {
    OUTLINED_FUNCTION_112_15();
    if ((v208 & 1) == 0)
    {
LABEL_212:
      OUTLINED_FUNCTION_47_29(v65[33]);
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

void MomentsEventData.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE00();
  v3 = OUTLINED_FUNCTION_0(v2);
  v80 = v4;
  v81 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v79 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_8();
  v78 = v13;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v76 - v15;
  v16 = type metadata accessor for MomentsEventData.EventBundle(0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v76 - v27;
  v29 = type metadata accessor for MomentsEventData.Event(0);
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v76 - v40;
  sub_193448804(v1, &v76 - v40, &qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_6_3(v41, 1, v29);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1937D1024(v41, v35, type metadata accessor for MomentsEventData.Event);
    OUTLINED_FUNCTION_103_0();
    MomentsEventData.Event.hash(into:)();
    sub_1937D0FD0();
  }

  v43 = type metadata accessor for MomentsEventData(0);
  sub_193448804(v1 + v43[5], v28, &qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_6_3(v28, 1, v16);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    sub_1937D1024(v28, v22, type metadata accessor for MomentsEventData.EventBundle);
    OUTLINED_FUNCTION_103_0();
    MomentsEventData.EventBundle.hash(into:)();
    sub_1937D0FD0();
  }

  OUTLINED_FUNCTION_98_18(v43[6]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[7]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_47_1(v43[8]);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15(v44);
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_100(v43[9]);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14(v45);
    OUTLINED_FUNCTION_17_42();
    v46 = MomentsEventData.AgeRangeType.rawValue.getter();
    MEMORY[0x193B18030](v46);
  }

  OUTLINED_FUNCTION_100(v43[10]);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14(v47);
    OUTLINED_FUNCTION_17_42();
    v48 = MomentsEventData.BiologicalSexType.rawValue.getter();
    MEMORY[0x193B18030](v48);
  }

  v49 = v81;
  v50 = v77;
  sub_193448804(v1 + v43[11], v77, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v50);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v51 = OUTLINED_FUNCTION_151_11();
    v52(v51);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v53, v54);
    OUTLINED_FUNCTION_188_6();
    v55 = *(v29 + 8);
    v56 = OUTLINED_FUNCTION_166();
    v57(v56);
  }

  v58 = v78;
  sub_193448804(v1 + v43[12], v78, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v58);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v59 = OUTLINED_FUNCTION_151_11();
    v60(v59);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_104();
    sub_1937D05A4(v61, v62);
    OUTLINED_FUNCTION_188_6();
    v63 = *(v29 + 8);
    v64 = OUTLINED_FUNCTION_166();
    v65(v64);
  }

  OUTLINED_FUNCTION_5_0(v43[13]);
  if (v49)
  {
    OUTLINED_FUNCTION_86_14(v66);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v43[14]);
  if (v49)
  {
    OUTLINED_FUNCTION_86_14(v67);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v43[15]);
  if (v49)
  {
    OUTLINED_FUNCTION_86_14(v68);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v43[16]);
  if (v49)
  {
    OUTLINED_FUNCTION_86_14(v69);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v43[17]);
  if (v49)
  {
    OUTLINED_FUNCTION_86_14(v70);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0(v43[18]);
  if (v49)
  {
    OUTLINED_FUNCTION_86_14(v71);
    sub_19393CAD0();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_47_1(v43[19]);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15(v72);
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_47_1(v43[20]);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_87_15(v73);
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_100(v43[21]);
  if (v42)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_57_14(v74);
    OUTLINED_FUNCTION_17_42();
    v75 = MomentsEventData.OnboardingFlowCompletion.rawValue.getter();
    MEMORY[0x193B18030](v75);
  }

  OUTLINED_FUNCTION_98_18(v43[22]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[23]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[24]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[25]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[26]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[27]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[28]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[29]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[30]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[31]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_98_18(v43[32]);
  if (!v42)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (*(v1 + v43[33]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1937D0184(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1937D01E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_1937D022C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE00();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42B00, &qword_193997C90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v22 - v18;
  sub_193448804(v2, &v22 - v18, &qword_1EAE42B00, &qword_193997C90);
  if (__swift_getEnumTagSinglePayload(v19, 1, v12) == 1)
  {
    return sub_19393CAD0();
  }

  sub_1937D1024(v19, v15, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
  sub_19393CAD0();
  if (*v15 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_1937D055C(a1, *(v15 + 1), v15[16]);
  sub_193448804(&v15[*(v12 + 24)], v11, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    sub_19393CAD0();
  }

  else
  {
    v21 = v23;
    (*(v23 + 32))(v7, v11, v4);
    sub_19393CAD0();
    sub_1937D05A4(&qword_1EAE3B978, MEMORY[0x1E6969530]);
    sub_19393C540();
    (*(v21 + 8))(v7, v4);
  }

  return sub_1937D0FD0();
}

uint64_t sub_1937D055C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x193B18060](v5);
}

uint64_t sub_1937D05A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1937D05EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 136);
    do
    {
      v29 = *(v5 - 11);
      v28 = *(v5 - 80);
      v30 = *(v5 - 64);
      v33 = *(v5 - 79);
      v34 = *(v5 - 63);
      v31 = *(v5 - 9);
      v32 = *(v5 - 7);
      v35 = *(v5 - 48);
      v6 = *(v5 - 5);
      v7 = *(v5 - 32);
      v8 = *(v5 - 3);
      v9 = *(v5 - 16);
      v10 = *(v5 - 1);
      v11 = *v5;
      if (*(v5 - 95) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v26 = v3;
        v27 = *(v5 - 5);
        v12 = *(v5 - 16);
        v13 = *(v5 - 3);
        v14 = *(v5 - 1);
        v15 = *(v5 - 96);
        v16 = *v5;
        v17 = *(v5 - 13);
        sub_19393CAD0();
        v11 = v16;
        v10 = v14;
        v8 = v13;
        v9 = v12;
        v3 = v26;
        v6 = v27;
        v18 = MomentsEventData.PlaceInferencePlaceType.rawValue.getter();
        MEMORY[0x193B18030](v18);
      }

      sub_19393CAD0();
      if (!v33)
      {
        v19 = MomentsEventData.PlaceInferenceUserSpecificPlaceType.rawValue.getter();
        MEMORY[0x193B18030](v19);
      }

      if (v34)
      {
        sub_19393CAD0();
      }

      else
      {
        v20 = sub_19393CAD0();
        v21 = MomentsEventData.GeoPOICategoryType.rawValue.getter(v20);
        MEMORY[0x193B18030](v21);
      }

      if (v35)
      {
        sub_19393CAD0();
        if (v7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_19393CAD0();
        if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v22 = v32;
        }

        else
        {
          v22 = 0;
        }

        MEMORY[0x193B18060](v22);
        if (v7)
        {
LABEL_13:
          sub_19393CAD0();
          if (v9)
          {
            goto LABEL_14;
          }

          goto LABEL_24;
        }
      }

      sub_19393CAD0();
      if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v6;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x193B18060](v23);
      if (v9)
      {
LABEL_14:
        sub_19393CAD0();
        if (!v11)
        {
          goto LABEL_28;
        }

        goto LABEL_15;
      }

LABEL_24:
      sub_19393CAD0();
      if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v24 = v8;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x193B18060](v24);
      if (!v11)
      {
LABEL_28:
        sub_19393CAD0();
        if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        result = MEMORY[0x193B18060](v25);
        goto LABEL_32;
      }

LABEL_15:
      result = sub_19393CAD0();
LABEL_32:
      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937D0868(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  v22 = v3;
  if (v3)
  {
    v5 = 0;
    v21 = a2 + 32;
    while (1)
    {
      v6 = (v21 + 32 * v5);
      v7 = *v6;
      v23 = v6[2];
      v24 = *(v6 + 8);
      v25 = *(v6 + 24);
      v8 = *(*v6 + 16);
      MEMORY[0x193B18030](v8);
      if (v8)
      {
        break;
      }

LABEL_16:
      if (v24 != 2)
      {
        sub_19393CAD0();
      }

      sub_19393CAD0();
      if (v25)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_19393CAD0();
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v20 = v23;
        }

        else
        {
          v20 = 0;
        }

        MEMORY[0x193B18060](v20);
      }

      if (++v5 == v22)
      {
        return result;
      }
    }

    v9 = (v7 + 56);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      if (*(v9 - 15) == 1)
      {
        sub_19393CAD0();
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v13 = *(v9 - 16);
        v14 = *(v9 - 3);
        v15 = sub_19393CAD0();
        v19 = MomentsEventData.PersonRelationshipTag.rawValue.getter(v15, v16, v17, v18);
        MEMORY[0x193B18030](v19);
        if (!v11)
        {
LABEL_7:
          sub_19393CAD0();
          if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v12 = v10;
          }

          else
          {
            v12 = 0;
          }

          MEMORY[0x193B18060](v12);
          goto LABEL_13;
        }
      }

      sub_19393CAD0();
LABEL_13:
      v9 += 32;
      if (!--v8)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_1937D0A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (*(v5 - 15) == 1)
      {
        sub_19393CAD0();
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v5 - 16);
        v9 = *(v5 - 3);
        v10 = sub_19393CAD0();
        v14 = MomentsEventData.PersonRelationshipTag.rawValue.getter(v10, v11, v12, v13);
        MEMORY[0x193B18030](v14);
        if (!v7)
        {
LABEL_7:
          sub_19393CAD0();
          if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v15 = v6;
          }

          else
          {
            v15 = 0;
          }

          result = MEMORY[0x193B18060](v15);
          goto LABEL_11;
        }
      }

      result = sub_19393CAD0();
LABEL_11:
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937D0B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v24 = *v5;
      v23 = *(v5 + 8);
      v6 = *(v5 + 9);
      v7 = *(v5 + 3);
      v25 = *(v5 + 16);
      v8 = v5[3];
      v9 = *(v5 + 32);
      v10 = v5[5];
      v11 = *(v5 + 48);
      if (*(v5 - 7) == 1)
      {
        sub_19393CAD0();
        if (v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v22 = v5[3];
        v21 = *(v5 + 48);
        v12 = v5[5];
        v13 = *(v5 - 8);
        v14 = *(v5 - 2);
        v15 = sub_19393CAD0();
        v10 = v12;
        v11 = v21;
        v8 = v22;
        v16 = MomentsEventData.EventBundle.Resource.Type.rawValue.getter(v15);
        MEMORY[0x193B18030](v16);
        if (v6)
        {
LABEL_5:
          sub_19393CAD0();
          goto LABEL_8;
        }
      }

      v17 = sub_19393CAD0();
      v18 = MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.rawValue.getter(v17);
      MEMORY[0x193B18030](v18);
LABEL_8:
      if (v25)
      {
        sub_19393CAD0();
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_19393CAD0();
        sub_19393CAE0();
        if (v9)
        {
LABEL_10:
          sub_19393CAD0();
          if (!v11)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }
      }

      sub_19393CAD0();
      if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v8;
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x193B18060](v19);
      if (!v11)
      {
LABEL_17:
        sub_19393CAD0();
        if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v20 = v10;
        }

        else
        {
          v20 = 0;
        }

        result = MEMORY[0x193B18060](v20);
        goto LABEL_21;
      }

LABEL_11:
      result = sub_19393CAD0();
LABEL_21:
      v5 += 9;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937D0CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v7 = *(v5 + 1);
      v6 = *(v5 + 2);
      v8 = *(v5 + 6);
      v9 = v5[28];
      if (v5[1] == 1)
      {
        sub_19393CAD0();

        if (!v6)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = *v5;
        v11 = *(v5 - 1);
        sub_19393CAD0();

        v13 = MomentsEventData.ActionType.rawValue.getter(v12);
        MEMORY[0x193B18030](v13);
        if (!v6)
        {
LABEL_5:
          sub_19393CAD0();
          if (v9)
          {
            goto LABEL_9;
          }

          goto LABEL_6;
        }
      }

      sub_19393CAD0();
      sub_19393C640();
      if (v9)
      {
LABEL_9:
        sub_19393CAD0();
        goto LABEL_10;
      }

LABEL_6:
      sub_19393CAD0();
      sub_19393CAE0();
LABEL_10:

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1937D0E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x193B18060](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1937D0E7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_325(a1, a2);
  if (v3)
  {
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      v10 = v2(v5, v6);
      v5 = MEMORY[0x193B18030](v10);
      --v3;
    }

    while (v3);
  }
}

void sub_1937D0EE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_325(a1, a2);
  if (v3)
  {
    v5 = (v4 + 41);
    do
    {
      if (*v5 == 1)
      {
        OUTLINED_FUNCTION_95_8();
      }

      else
      {
        v6 = *(v5 - 1);
        v7 = *(v5 - 9);
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_179_0();
        v9 = v2(v8);
        MEMORY[0x193B18030](v9);
      }

      v5 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1937D0FD0()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1937D1024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

unint64_t sub_1937D10B4()
{
  result = qword_1EAE42F98;
  if (!qword_1EAE42F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42F98);
  }

  return result;
}

unint64_t sub_1937D113C()
{
  result = qword_1EAE42FB0;
  if (!qword_1EAE42FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42FB0);
  }

  return result;
}

unint64_t sub_1937D11C4()
{
  result = qword_1EAE42FC8;
  if (!qword_1EAE42FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42FC8);
  }

  return result;
}

unint64_t sub_1937D124C()
{
  result = qword_1EAE42FE0;
  if (!qword_1EAE42FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42FE0);
  }

  return result;
}

unint64_t sub_1937D12D4()
{
  result = qword_1EAE42FF8;
  if (!qword_1EAE42FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42FF8);
  }

  return result;
}

unint64_t sub_1937D135C()
{
  result = qword_1EAE43010;
  if (!qword_1EAE43010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43010);
  }

  return result;
}

unint64_t sub_1937D13E4()
{
  result = qword_1EAE43028;
  if (!qword_1EAE43028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43028);
  }

  return result;
}

unint64_t sub_1937D146C()
{
  result = qword_1EAE43040;
  if (!qword_1EAE43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43040);
  }

  return result;
}

unint64_t sub_1937D14F4()
{
  result = qword_1EAE43058;
  if (!qword_1EAE43058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43058);
  }

  return result;
}

unint64_t sub_1937D157C()
{
  result = qword_1EAE43070;
  if (!qword_1EAE43070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43070);
  }

  return result;
}

unint64_t sub_1937D1604()
{
  result = qword_1EAE43088;
  if (!qword_1EAE43088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43088);
  }

  return result;
}

unint64_t sub_1937D168C()
{
  result = qword_1EAE430A0;
  if (!qword_1EAE430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE430A0);
  }

  return result;
}

unint64_t sub_1937D1714()
{
  result = qword_1EAE430B8;
  if (!qword_1EAE430B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE430B8);
  }

  return result;
}

unint64_t sub_1937D179C()
{
  result = qword_1EAE430D0;
  if (!qword_1EAE430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE430D0);
  }

  return result;
}

unint64_t sub_1937D1824()
{
  result = qword_1EAE430E8;
  if (!qword_1EAE430E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE430E8);
  }

  return result;
}

unint64_t sub_1937D18AC()
{
  result = qword_1EAE43100;
  if (!qword_1EAE43100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43100);
  }

  return result;
}

unint64_t sub_1937D1934()
{
  result = qword_1EAE43118;
  if (!qword_1EAE43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43118);
  }

  return result;
}

unint64_t sub_1937D19BC()
{
  result = qword_1EAE43130;
  if (!qword_1EAE43130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43130);
  }

  return result;
}

unint64_t sub_1937D1A44()
{
  result = qword_1EAE43148;
  if (!qword_1EAE43148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43148);
  }

  return result;
}

unint64_t sub_1937D1ACC()
{
  result = qword_1EAE43160;
  if (!qword_1EAE43160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43160);
  }

  return result;
}

unint64_t sub_1937D1B54()
{
  result = qword_1EAE43178;
  if (!qword_1EAE43178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43178);
  }

  return result;
}

unint64_t sub_1937D1BDC()
{
  result = qword_1EAE43190;
  if (!qword_1EAE43190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43190);
  }

  return result;
}

unint64_t sub_1937D1C64()
{
  result = qword_1EAE431A8;
  if (!qword_1EAE431A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE431A8);
  }

  return result;
}

unint64_t sub_1937D1CEC()
{
  result = qword_1EAE431C0;
  if (!qword_1EAE431C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE431C0);
  }

  return result;
}

unint64_t sub_1937D1D74()
{
  result = qword_1EAE431D8;
  if (!qword_1EAE431D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE431D8);
  }

  return result;
}

unint64_t sub_1937D1DFC()
{
  result = qword_1EAE431F0;
  if (!qword_1EAE431F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE431F0);
  }

  return result;
}

unint64_t sub_1937D1E84()
{
  result = qword_1EAE43208;
  if (!qword_1EAE43208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43208);
  }

  return result;
}

unint64_t sub_1937D1F0C()
{
  result = qword_1EAE43220;
  if (!qword_1EAE43220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43220);
  }

  return result;
}

unint64_t sub_1937D1F94()
{
  result = qword_1EAE43238;
  if (!qword_1EAE43238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43238);
  }

  return result;
}

unint64_t sub_1937D201C()
{
  result = qword_1EAE43250;
  if (!qword_1EAE43250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43250);
  }

  return result;
}

unint64_t sub_1937D20A4()
{
  result = qword_1EAE43268;
  if (!qword_1EAE43268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43268);
  }

  return result;
}

unint64_t sub_1937D212C()
{
  result = qword_1EAE43280;
  if (!qword_1EAE43280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43280);
  }

  return result;
}

unint64_t sub_1937D21B4()
{
  result = qword_1EAE43298;
  if (!qword_1EAE43298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43298);
  }

  return result;
}

unint64_t sub_1937D223C()
{
  result = qword_1EAE432B0;
  if (!qword_1EAE432B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE432B0);
  }

  return result;
}

unint64_t sub_1937D22C4()
{
  result = qword_1EAE432C8;
  if (!qword_1EAE432C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE432C8);
  }

  return result;
}

unint64_t sub_1937D234C()
{
  result = qword_1EAE432E0;
  if (!qword_1EAE432E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE432E0);
  }

  return result;
}

unint64_t sub_1937D23D4()
{
  result = qword_1EAE432F8;
  if (!qword_1EAE432F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE432F8);
  }

  return result;
}

unint64_t sub_1937D245C()
{
  result = qword_1EAE43310;
  if (!qword_1EAE43310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43310);
  }

  return result;
}

unint64_t sub_1937D24E4()
{
  result = qword_1EAE43328;
  if (!qword_1EAE43328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43328);
  }

  return result;
}

unint64_t sub_1937D256C()
{
  result = qword_1EAE43340;
  if (!qword_1EAE43340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43340);
  }

  return result;
}

unint64_t sub_1937D25F4()
{
  result = qword_1EAE43350;
  if (!qword_1EAE43350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43350);
  }

  return result;
}

unint64_t sub_1937D267C()
{
  result = qword_1EAE43360;
  if (!qword_1EAE43360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43360);
  }

  return result;
}

unint64_t sub_1937D2704()
{
  result = qword_1EAE43370;
  if (!qword_1EAE43370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43370);
  }

  return result;
}

unint64_t sub_1937D278C()
{
  result = qword_1EAE43380;
  if (!qword_1EAE43380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43380);
  }

  return result;
}

unint64_t sub_1937D2814()
{
  result = qword_1EAE43398;
  if (!qword_1EAE43398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43398);
  }

  return result;
}

unint64_t sub_1937D289C()
{
  result = qword_1EAE433B0;
  if (!qword_1EAE433B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE433B0);
  }

  return result;
}

unint64_t sub_1937D28F4()
{
  result = qword_1EAE433B8;
  if (!qword_1EAE433B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE433B8);
  }

  return result;
}

unint64_t sub_1937D294C()
{
  result = qword_1EAE433C0;
  if (!qword_1EAE433C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE433C0);
  }

  return result;
}

unint64_t sub_1937D29A4()
{
  result = qword_1EAE433C8;
  if (!qword_1EAE433C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE433C8);
  }

  return result;
}

unint64_t sub_1937D2A74()
{
  result = qword_1EAE433E8;
  if (!qword_1EAE433E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE433E8);
  }

  return result;
}

unint64_t sub_1937D2AFC()
{
  result = qword_1EAE43400;
  if (!qword_1EAE43400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43400);
  }

  return result;
}

unint64_t sub_1937D2B84()
{
  result = qword_1EAE43418;
  if (!qword_1EAE43418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43418);
  }

  return result;
}

unint64_t sub_1937D2C0C()
{
  result = qword_1EAE43430;
  if (!qword_1EAE43430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43430);
  }

  return result;
}

unint64_t sub_1937D2C94()
{
  result = qword_1EAE43448;
  if (!qword_1EAE43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43448);
  }

  return result;
}

unint64_t sub_1937D2CEC()
{
  result = qword_1EAE43450;
  if (!qword_1EAE43450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43450);
  }

  return result;
}

unint64_t sub_1937D2D44()
{
  result = qword_1EAE43458;
  if (!qword_1EAE43458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43458);
  }

  return result;
}

unint64_t sub_1937D2D9C()
{
  result = qword_1EAE43460;
  if (!qword_1EAE43460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43460);
  }

  return result;
}

unint64_t sub_1937D2DF4()
{
  result = qword_1EAE43468;
  if (!qword_1EAE43468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43468);
  }

  return result;
}

unint64_t sub_1937D2E4C()
{
  result = qword_1EAE43470;
  if (!qword_1EAE43470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43470);
  }

  return result;
}

unint64_t sub_1937D2EEC()
{
  result = qword_1EAE43480;
  if (!qword_1EAE43480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE43480);
  }

  return result;
}

uint64_t sub_1937D2FF8()
{
  sub_1937D3204(319, &qword_1EAE43498, type metadata accessor for MomentsEventData.Event);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_1937D3204(319, &qword_1EAE434A0, type metadata accessor for MomentsEventData.EventBundle);
    OUTLINED_FUNCTION_4_0();
    if (!(!v3 & v2))
    {
      OUTLINED_FUNCTION_1_76(v4, &qword_1ED506698, MEMORY[0x1E69E6370]);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_1_76(v5, &qword_1ED508058, MEMORY[0x1E69E72F0]);
        OUTLINED_FUNCTION_88_17();
        if (!v3 & v2)
        {
          return v1;
        }

        else
        {
          OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434A8, &type metadata for MomentsEventData.AgeRangeType);
          if (v8 > 0x3F)
          {
            return v7;
          }

          OUTLINED_FUNCTION_1_76(v7, &qword_1EAE434B0, &type metadata for MomentsEventData.BiologicalSexType);
          if (v9 > 0x3F)
          {
            return v7;
          }

          OUTLINED_FUNCTION_37_31(v7, &qword_1ED5082C0);
          if (v10 > 0x3F)
          {
            return v7;
          }

          OUTLINED_FUNCTION_1_76(v7, &qword_1ED508290, MEMORY[0x1E69E6158]);
          if (v11 > 0x3F)
          {
            return v7;
          }

          OUTLINED_FUNCTION_1_76(v7, &qword_1EAE434B8, &type metadata for MomentsEventData.OnboardingFlowCompletion);
          if (v12 > 0x3F)
          {
            return v7;
          }

          else
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1937D3204(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1937D3548(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      OUTLINED_FUNCTION_71();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1937D3598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1937D363C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_76(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_37_31(v3, &qword_1ED5082C0);
    if (v7 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434C0, &type metadata for MomentsEventData.EventProviderType);
    if (v8 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434C8, &type metadata for MomentsEventData.EventCategoryType);
    if (v9 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434D0, &type metadata for MomentsEventData.PlaceInferenceUserSpecificPlaceType);
    if (v10 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434D8, &type metadata for MomentsEventData.GeoPOICategoryType);
    if (v11 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434E0, &type metadata for MomentsEventData.PlaceDiscoveryType);
    if (v12 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434E8, &type metadata for MomentsEventData.LocationModeType);
    if (v13 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434F0, &type metadata for MomentsEventData.WorkoutActivityType);
    if (v14 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE434F8, &type metadata for MomentsEventData.GenreType);
    if (v15 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE43500, &type metadata for MomentsEventData.MediaType);
    if (v16 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1ED508058, MEMORY[0x1E69E72F0]);
    OUTLINED_FUNCTION_88_17();
    if (!v5 & v4)
    {
      return v2;
    }

    OUTLINED_FUNCTION_1_76(v17, &qword_1EAE43508, &type metadata for MomentsEventData.SourceAppType);
    if (v18 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1ED506690, MEMORY[0x1E69E63B0]);
    if (v19 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_10_65(v6, qword_1ED507ED8, MEMORY[0x1E69E6158]);
    if (v20 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1ED506698, MEMORY[0x1E69E6370]);
    OUTLINED_FUNCTION_4_0();
    if (!v5 & v4)
    {
      return v1;
    }

    OUTLINED_FUNCTION_1_76(v21, &qword_1EAE43510, &type metadata for MomentsEventData.PhotoMomentSourceType);
    if (v22 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_10_65(v6, &qword_1EAE43518, &type metadata for MomentsEventData.PhotoMomentInference);
    if (v23 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE43520, &type metadata for MomentsEventData.SuggestedEventCategoryType);
    if (v24 > 0x3F)
    {
      return v6;
    }

    OUTLINED_FUNCTION_1_76(v6, &qword_1EAE43528, &type metadata for MomentsEventData.TripModeType);
    if (v25 > 0x3F)
    {
      return v6;
    }

    else
    {
      OUTLINED_FUNCTION_1_76(v6, &qword_1EAE43530, &type metadata for MomentsEventData.PR);
      OUTLINED_FUNCTION_4_0();
      if (!(!v5 & v4))
      {
        OUTLINED_FUNCTION_1_76(v26, &qword_1EAE43538, &type metadata for MomentsEventData.MapItemSourceType);
        OUTLINED_FUNCTION_4_0();
        if (!(!v5 & v4))
        {
          OUTLINED_FUNCTION_1_76(v27, &qword_1EAE43540, &type metadata for MomentsEventData.VisitPlaceTypes);
          OUTLINED_FUNCTION_4_0();
          if (!(!v5 & v4))
          {
            OUTLINED_FUNCTION_1_76(v28, &qword_1EAE43548, &type metadata for MomentsEventData.PlaceInferenceGranularityType);
            OUTLINED_FUNCTION_4_0();
            if (!(!v5 & v4))
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1937D3AB0(uint64_t a1)
{
  OUTLINED_FUNCTION_1_76(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_88_17();
  if (!(!v5 & v4))
  {
    OUTLINED_FUNCTION_37_31(v3, &qword_1ED5082C0);
    OUTLINED_FUNCTION_4_0();
    if (!v5 & v4)
    {
      return v1;
    }

    else
    {
      OUTLINED_FUNCTION_1_76(v6, &qword_1EAE43550, &type metadata for MomentsEventData.BundleInterfaceType);
      if (v8 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1ED506698, MEMORY[0x1E69E6370]);
      if (v10 > 0x3F)
      {
        return v9;
      }

      OUTLINED_FUNCTION_1_76(v9, &qword_1EAE43558, &type metadata for MomentsEventData.PlaceInferencePlaceType);
      if (v11 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE434D0, &type metadata for MomentsEventData.PlaceInferenceUserSpecificPlaceType);
      if (v12 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE434C8, &type metadata for MomentsEventData.EventCategoryType);
      if (v13 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_10_65(v7, qword_1ED507ED8, MEMORY[0x1E69E6158]);
      if (v15 > 0x3F)
      {
        return v14;
      }

      OUTLINED_FUNCTION_1_76(v14, &qword_1EAE43560, &type metadata for MomentsEventData.Action);
      if (v16 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_10_65(v7, &qword_1EAE43568, &type metadata for MomentsEventData.Action);
      if (v17 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE43570, &type metadata for MomentsEventData.TimeTagType);
      if (v18 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE43578, &type metadata for MomentsEventData.BundleEngagementType);
      if (v19 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1ED506690, MEMORY[0x1E69E63B0]);
      if (v20 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE43580, &type metadata for MomentsEventData.SuggestionType);
      if (v21 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE3A700, MEMORY[0x1E69E6448]);
      if (v22 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1EAE43588, &type metadata for MomentsEventData.AppEntryEventType);
      if (v23 > 0x3F)
      {
        return v7;
      }

      OUTLINED_FUNCTION_1_76(v7, &qword_1ED508058, MEMORY[0x1E69E72F0]);
      if (v25 > 0x3F)
      {
        return v24;
      }

      OUTLINED_FUNCTION_1_76(v24, &qword_1EAE43590, &type metadata for MomentsEventData.ClientActivityEventType);
      if (v26 > 0x3F)
      {
        return v7;
      }

      else
      {
        OUTLINED_FUNCTION_1_76(v7, &qword_1EAE43598, &type metadata for MomentsEventData.PhotoSourceType);
        OUTLINED_FUNCTION_88_17();
        if (!(!v5 & v4))
        {
          OUTLINED_FUNCTION_1_76(v27, &qword_1EAE435A0, &type metadata for MomentsEventData.PhotoLibraryType);
          OUTLINED_FUNCTION_88_17();
          if (!(!v5 & v4))
          {
            OUTLINED_FUNCTION_10_65(v28, &qword_1EAE435A8, &type metadata for MomentsEventData.PR);
            OUTLINED_FUNCTION_88_17();
            if (!(!v5 & v4))
            {
              OUTLINED_FUNCTION_1_76(v29, &qword_1EAE435B0, &type metadata for MomentsEventData.RankingType);
              OUTLINED_FUNCTION_88_17();
              if (!(!v5 & v4))
              {
                OUTLINED_FUNCTION_1_76(v30, &qword_1EAE435B8, &type metadata for MomentsEventData.LabelConfidenceScoreType);
                OUTLINED_FUNCTION_88_17();
                if (!(!v5 & v4))
                {
                  OUTLINED_FUNCTION_1_76(v31, &qword_1EAE435C0, &type metadata for MomentsEventData.TimeCorrelationScoreType);
                  OUTLINED_FUNCTION_88_17();
                  if (!(!v5 & v4))
                  {
                    OUTLINED_FUNCTION_1_76(v32, &qword_1EAE435C8, &type metadata for MomentsEventData.CallDurationTypes);
                    OUTLINED_FUNCTION_88_17();
                    if (!(!v5 & v4))
                    {
                      OUTLINED_FUNCTION_1_76(v33, &qword_1EAE435D0, &type metadata for MomentsEventData.InteractionCountTypes);
                      OUTLINED_FUNCTION_88_17();
                      if (!(!v5 & v4))
                      {
                        OUTLINED_FUNCTION_1_76(v34, &qword_1EAE435D8, &type metadata for MomentsEventData.BundleInteractionTypes);
                        OUTLINED_FUNCTION_88_17();
                        if (!(!v5 & v4))
                        {
                          OUTLINED_FUNCTION_1_76(v35, &qword_1EAE435E0, &type metadata for MomentsEventData.CallPlaceType);
                          OUTLINED_FUNCTION_88_17();
                          if (!(!v5 & v4))
                          {
                            OUTLINED_FUNCTION_1_76(v36, &qword_1EAE435E8, &type metadata for MomentsEventData.DistanceFromHomeType);
                            OUTLINED_FUNCTION_88_17();
                            if (!(!v5 & v4))
                            {
                              OUTLINED_FUNCTION_1_76(v37, &qword_1EAE435F0, &type metadata for MomentsEventData.AvailabilityType);
                              OUTLINED_FUNCTION_88_17();
                              if (!(!v5 & v4))
                              {
                                OUTLINED_FUNCTION_1_76(v38, &qword_1EAE43538, &type metadata for MomentsEventData.MapItemSourceType);
                                OUTLINED_FUNCTION_88_17();
                                if (!(!v5 & v4))
                                {
                                  OUTLINED_FUNCTION_1_76(v39, &qword_1EAE43540, &type metadata for MomentsEventData.VisitPlaceTypes);
                                  OUTLINED_FUNCTION_88_17();
                                  if (!(!v5 & v4))
                                  {
                                    OUTLINED_FUNCTION_1_76(v40, &qword_1EAE43548, &type metadata for MomentsEventData.PlaceInferenceGranularityType);
                                    OUTLINED_FUNCTION_88_17();
                                    if (!(!v5 & v4))
                                    {
                                      OUTLINED_FUNCTION_1_76(v41, &qword_1EAE435F8, &type metadata for MomentsEventData.AnomalousType);
                                      OUTLINED_FUNCTION_88_17();
                                      if (!(!v5 & v4))
                                      {
                                        OUTLINED_FUNCTION_1_76(v42, &qword_1EAE43600, &type metadata for MomentsEventData.EventBundle.BundleSuperType);
                                        OUTLINED_FUNCTION_88_17();
                                        if (!(!v5 & v4))
                                        {
                                          OUTLINED_FUNCTION_1_76(v43, &qword_1EAE43608, &type metadata for MomentsEventData.EventBundle.BundleSubType);
                                          OUTLINED_FUNCTION_88_17();
                                          if (!(!v5 & v4))
                                          {
                                            OUTLINED_FUNCTION_1_76(v44, &qword_1EAE43610, &type metadata for MomentsEventData.EventBundle.SummarizationGranularity);
                                            OUTLINED_FUNCTION_88_17();
                                            if (!(!v5 & v4))
                                            {
                                              OUTLINED_FUNCTION_10_65(v45, &qword_1EAE43618, &type metadata for MomentsEventData.EventBundle.Resource);
                                              OUTLINED_FUNCTION_88_17();
                                              if (!(!v5 & v4))
                                              {
                                                OUTLINED_FUNCTION_10_65(v46, &qword_1EAE43620, &type metadata for MomentsEventData.EventBundle.Person);
                                                OUTLINED_FUNCTION_88_17();
                                                if (!(!v5 & v4))
                                                {
                                                  OUTLINED_FUNCTION_1_76(v47, &qword_1EAE43628, &type metadata for MomentsEventData.EventBundle.Place);
                                                  OUTLINED_FUNCTION_88_17();
                                                  if (!(!v5 & v4))
                                                  {
                                                    OUTLINED_FUNCTION_10_65(v48, &qword_1EAE43630, &type metadata for MomentsEventData.EventBundle.Place);
                                                    OUTLINED_FUNCTION_88_17();
                                                    if (!(!v5 & v4))
                                                    {
                                                      OUTLINED_FUNCTION_1_76(v49, &qword_1EAE43638, &type metadata for MomentsEventData.EventBundle.ClusterMetadata);
                                                      OUTLINED_FUNCTION_88_17();
                                                      if (!(!v5 & v4))
                                                      {
                                                        sub_1937D3204(319, &qword_1EAE43640, type metadata accessor for MomentsEventData.EventBundle.OutlierMetadata);
                                                        OUTLINED_FUNCTION_88_17();
                                                        if (!(!v5 & v4))
                                                        {
                                                          OUTLINED_FUNCTION_1_76(v50, &qword_1EAE43648, &type metadata for MomentsEventData.EventBundle.MetadataForRank);
                                                          OUTLINED_FUNCTION_88_17();
                                                          if (!(!v5 & v4))
                                                          {
                                                            OUTLINED_FUNCTION_15_2();
                                                            swift_cvw_initStructMetadataWithLayoutString();
                                                            return 0;
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

  return v2;
}

void sub_1937D4290(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1937D4310(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1937D4328(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

uint64_t sub_1937D4398(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1937D43D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1937D443C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1937D4454(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

__n128 __swift_memcpy17_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MomentsEventData.EventBundle.ClusterMetadata(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[17])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      OUTLINED_FUNCTION_112_9();
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

uint64_t storeEnumTagSinglePayload for MomentsEventData.EventBundle.ClusterMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1937D458C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_76(a1, &qword_1ED506698, MEMORY[0x1E69E6370]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_1_76(v1, &qword_1ED506690, MEMORY[0x1E69E63B0]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_37_31(v3, &qword_1ED5082C0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1937D4644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 218))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 176);
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

uint64_t sub_1937D4684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_21_47()
{
  result = *v1;
  *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_14@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *a1;

  return sub_19393CAD0();
}

uint64_t OUTLINED_FUNCTION_63_17()
{
  v7 = *(v0 + 184) + v4;

  return sub_193448804(v7, v5 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_65_23@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + a1);
  v4 = *(*(v2 + 184) + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_24@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

__n128 OUTLINED_FUNCTION_110_10()
{
  v2 = v0->n128_u8[8];
  v3 = v0->n128_u8[9];
  v4 = v0[2].n128_u32[0];
  v5 = v0[2].n128_u8[4];
  *(v1 - 56) = v0->n128_u64[0];
  *(v1 - 48) = v2;
  *(v1 - 47) = v3;
  result = v0[1];
  *(v1 - 40) = result;
  *(v1 - 24) = v4;
  *(v1 - 20) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_118_15(uint64_t a1)
{

  return sub_193448804(a1, v3, v1, v2);
}

void OUTLINED_FUNCTION_123_16()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 - 48) = *v0;
  *(v1 - 40) = v2;
  *(v1 - 32) = v3;
  *(v1 - 24) = v4;
}

uint64_t OUTLINED_FUNCTION_128_13()
{
  result = v1;
  v3 = *(v0 + 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_10()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

BOOL OUTLINED_FUNCTION_140_13@<W0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X4>, char a4@<W8>)
{

  return sub_1937BA4AC(a1, v4 & 1, a2, a4 & 1, a3);
}

uint64_t OUTLINED_FUNCTION_141_11()
{

  return sub_19344E6DC(v0 + v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_142_13(uint64_t a1)
{

  return sub_193448804(a1, v1 + 672, v2, v3);
}

uint64_t OUTLINED_FUNCTION_152_11()
{

  return sub_19344E6DC(v0 + v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_159_11()
{
  if ((v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void *OUTLINED_FUNCTION_173_9(void *a1)
{

  return memcpy(a1, (v1 + 1576), 0xDAuLL);
}

uint64_t OUTLINED_FUNCTION_189_3()
{

  return sub_193448804(v5 + v3, v4 + v2, v0, v1);
}

void *OUTLINED_FUNCTION_191_5(void *a1)
{

  return memcpy(a1, (v2 + v1), 0xDAuLL);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MomentsNotifications.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v29 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for MomentsNotifications(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43650, &qword_19399C880);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  OUTLINED_FUNCTION_11_53();
  sub_1937D7658(v1, v16, v23);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v24, &qword_1EAE43650, &qword_19399C880);
  sub_19393C250();
  (*(v4 + 8))(v9, v29);
  sub_19344E6DC(v22, &qword_1EAE43650, &qword_19399C880);
  OUTLINED_FUNCTION_27();
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

void static MomentsNotifications.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43650, &qword_19399C880);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE43650, &qword_19399C880);
  OUTLINED_FUNCTION_31_40();
  sub_19393C260();
  if (!v20)
  {
    sub_1937D4DF4(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1937D4DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentsNotifications(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static MomentsNotifications.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v3;
  v40 = v2;
  v38 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43650, &qword_19399C880);
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_1();
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  if (*sub_1937DF1B8() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v18 + 16))(v23, v26, v15);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v18 + 8))(v26, v15);
    if (!v0)
    {
      v31 = v39;
      sub_1937D4DF4(v1, v39);
      v32 = type metadata accessor for MomentsNotifications(0);
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v30 = v6;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t MomentsNotifications.serialize()()
{
  v2 = type metadata accessor for MomentsNotifications(0);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43650, &qword_19399C880);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  OUTLINED_FUNCTION_11_53();
  sub_1937D7658(v0, v1, v12);
  sub_1934470C8(v1, v2, v11);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v13, &qword_1EAE43650, &qword_19399C880);
  sub_19393C290();
  sub_19344E6DC(v11, &qword_1EAE43650, &qword_19399C880);
  return OUTLINED_FUNCTION_13_0();
}

id static MomentsNotifications.columns.getter()
{
  v932 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_7_52(0xD000000000000016);
  if (!result)
  {
    __break(1u);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v30);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v31, v32, v33, v34, v35, v36, 2);
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_7_2(result);
  v37 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v46 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v55 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v55);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v56, v57, v58, v59, v60);
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_7_2(result);
  v61 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v70 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v70, v71, v72, v73, v74, v75, v76, v77, v78);
  v79 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v79);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v80, v81, v82, v83, v84);
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_7_2(result);
  v85 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v94 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v103 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v103);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v104, v105, v106, v107, v108);
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_7_2(result);
  v109 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v109, v110, v111, v112, v113, v114, v115, v116, v117);
  v118 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v118, v119, v120, v121, v122, v123, v124, v125, v126);
  v127 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v127);
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v128, v129, v130, v131, v132, v133, 0);
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_7_2(result);
  v134 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v143 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v152);
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v153, v154, v155, v156, v157, v158, 2);
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_7_2(result);
  v159 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v159, v160, v161, v162, v163, v164, v165, v166, v167);
  v168 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v168, v169, v170, v171, v172, v173, v174, v175, v176);
  v177 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v177);
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v178, v179, v180, v181, v182, v183, 2);
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_7_2(result);
  v184 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v184, v185, v186, v187, v188, v189, v190, v191, v192);
  v193 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v193, v194, v195, v196, v197, v198, v199, v200, v201);
  v202 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v202);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_40(v203, v204, v205, v206, v207);
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_7_2(result);
  v208 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v208, v209, v210, v211, v212, v213, v214, v215, v216);
  v217 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v217, v218, v219, v220, v221, v222, v223, v224, v225);
  v226 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v226);
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v227, v228, v229, v230, v231, v232, 2);
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_7_2(result);
  v233 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v233, v234, v235, v236, v237, v238, v239, v240, v241);
  v242 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v242, v243, v244, v245, v246, v247, v248, v249, v250);
  v251 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v251);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v252, v253, v254, v255, v256);
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_7_2(result);
  v257 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v257, v258, v259, v260, v261, v262, v263, v264, v265);
  v266 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v266, v267, v268, v269, v270, v271, v272, v273, v274);
  v275 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v275);
  result = OUTLINED_FUNCTION_7_52(0xD000000000000024);
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_7_2(result);
  v276 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v276, v277, v278, v279, v280, v281, v282, v283, v284);
  v285 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v285, v286, v287, v288, v289, v290, v291, v292, v293);
  v294 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v294);
  result = OUTLINED_FUNCTION_7_52(0xD00000000000001DLL);
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_7_2(result);
  v295 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v295, v296, v297, v298, v299, v300, v301, v302, v303);
  v304 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v304, v305, v306, v307, v308, v309, v310, v311, v312);
  v313 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v313);
  result = OUTLINED_FUNCTION_7_52(0xD000000000000018);
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_7_2(result);
  v314 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v314, v315, v316, v317, v318, v319, v320, v321, v322);
  v323 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v323, v324, v325, v326, v327, v328, v329, v330, v331);
  v332 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v332);
  OUTLINED_FUNCTION_47_30();
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v333, v334, v335, v336, v337, v338, 2);
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_7_2(result);
  v339 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v339, v340, v341, v342, v343, v344, v345, v346, v347);
  v348 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v348, v349, v350, v351, v352, v353, v354, v355, v356);
  v357 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v357);
  result = OUTLINED_FUNCTION_7_52(0xD00000000000001ELL);
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_7_2(result);
  v358 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v358, v359, v360, v361, v362, v363, v364, v365, v366);
  v367 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v367, v368, v369, v370, v371, v372, v373, v374, v375);
  v376 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v376);
  result = OUTLINED_FUNCTION_7_52(0xD000000000000017);
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_7_2(result);
  v377 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v377, v378, v379, v380, v381, v382, v383, v384, v385);
  v386 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v386, v387, v388, v389, v390, v391, v392, v393, v394);
  v395 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v395);
  result = OUTLINED_FUNCTION_7_52(0xD000000000000019);
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_7_2(result);
  v396 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v396, v397, v398, v399, v400, v401, v402, v403, v404);
  v405 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v405, v406, v407, v408, v409, v410, v411, v412, v413);
  v414 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v414);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v415, v416, v417, v418, v419);
  if (!result)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_7_2(result);
  v420 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v420, v421, v422, v423, v424, v425, v426, v427, v428);
  v429 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v429, v430, v431, v432, v433, v434, v435, v436, v437);
  v438 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v438);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v439, v440, v441, v442, v443);
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_7_2(result);
  v444 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v444, v445, v446, v447, v448, v449, v450, v451, v452);
  v453 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v453, v454, v455, v456, v457, v458, v459, v460, v461);
  v462 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v462);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v463, v464, v465, v466, v467);
  if (!result)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_7_2(result);
  v468 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v468, v469, v470, v471, v472, v473, v474, v475, v476);
  v477 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v477, v478, v479, v480, v481, v482, v483, v484, v485);
  v486 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v486);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v487, v488, v489, v490, v491);
  if (!result)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_7_2(result);
  v492 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v492, v493, v494, v495, v496, v497, v498, v499, v500);
  v501 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v501, v502, v503, v504, v505, v506, v507, v508, v509);
  v510 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v510);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v511, v512, v513, v514, v515);
  if (!result)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  OUTLINED_FUNCTION_7_2(result);
  v516 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v516, v517, v518, v519, v520, v521, v522, v523, v524);
  v525 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v525, v526, v527, v528, v529, v530, v531, v532, v533);
  v534 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v534);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v535, v536, v537, v538, v539);
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_7_2(result);
  v540 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v540, v541, v542, v543, v544, v545, v546, v547, v548);
  v549 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v549, v550, v551, v552, v553, v554, v555, v556, v557);
  v558 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v558);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v559, v560, v561, v562, v563);
  if (!result)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_7_2(result);
  v564 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v564, v565, v566, v567, v568, v569, v570, v571, v572);
  v573 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v573, v574, v575, v576, v577, v578, v579, v580, v581);
  v582 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v582);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v583, v584, v585, v586, v587);
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_7_2(result);
  v588 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v588, v589, v590, v591, v592, v593, v594, v595, v596);
  v597 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v597, v598, v599, v600, v601, v602, v603, v604, v605);
  v606 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v606);
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v607, v608, v609, v610, v611);
  if (!result)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_7_2(result);
  v612 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v612, v613, v614, v615, v616, v617, v618, v619, v620);
  v621 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v621, v622, v623, v624, v625, v626, v627, v628, v629);
  v630 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v630);
  OUTLINED_FUNCTION_26_35();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v631, v632, v633, v634, v635, v636, 2);
  if (!result)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  OUTLINED_FUNCTION_7_2(result);
  v637 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v637, v638, v639, v640, v641, v642, v643, v644, v645);
  v646 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v646, v647, v648, v649, v650, v651, v652, v653, v654);
  v655 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v655);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v656, v657, v658, v659, v660);
  if (!result)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_7_2(result);
  v661 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v661, v662, v663, v664, v665, v666, v667, v668, v669);
  v670 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v670, v671, v672, v673, v674, v675, v676, v677, v678);
  v679 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v679);
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v680, v681, v682, v683, v684);
  if (!result)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_7_2(result);
  v685 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v685, v686, v687, v688, v689, v690, v691, v692, v693);
  v694 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v694, v695, v696, v697, v698, v699, v700, v701, v702);
  v703 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v703);
  result = OUTLINED_FUNCTION_7_52(0xD000000000000014);
  if (!result)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_7_2(result);
  v704 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v704, v705, v706, v707, v708, v709, v710, v711, v712);
  v713 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v713, v714, v715, v716, v717, v718, v719, v720, v721);
  v722 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v722);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v723, v724, v725, v726, v727);
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_7_2(result);
  v728 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v728, v729, v730, v731, v732, v733, v734, v735, v736);
  v737 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v737, v738, v739, v740, v741, v742, v743, v744, v745);
  v746 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v746);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_12_54();
  result = sub_19343D150(v747, v748, v749, v750, v751, v752, 0);
  if (!result)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_7_2(result);
  v753 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v753, v754, v755, v756, v757, v758, v759, v760, v761);
  v762 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v762, v763, v764, v765, v766, v767, v768, v769, v770);
  v771 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v771);
  v772 = OUTLINED_FUNCTION_232();
  result = sub_19343D150(v772 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_7_2(result);
  v773 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v773, v774, v775, v776, v777, v778, v779, v780, v781);
  v782 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v782, v783, v784, v785, v786, v787, v788, v789, v790);
  v791 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v791);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v792, v793, v794, v795, v796);
  if (!result)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_7_2(result);
  v797 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v797, v798, v799, v800, v801, v802, v803, v804, v805);
  v806 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v806, v807, v808, v809, v810, v811, v812, v813, v814);
  v815 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v815);
  OUTLINED_FUNCTION_53_27();
  OUTLINED_FUNCTION_51_23();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_35_25(v816, v817, v818, v819, v820);
  if (!result)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_7_2(result);
  v821 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v821, v822, v823, v824, v825, v826, v827, v828, v829);
  v830 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v830, v831, v832, v833, v834, v835, v836, v837, v838);
  v839 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v839);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_35_25(v840, v841, v842, v843, v844);
  if (!result)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_7_2(result);
  v845 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v845, v846, v847, v848, v849, v850, v851, v852, v853);
  v854 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v854, v855, v856, v857, v858, v859, v860, v861, v862);
  v863 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v863);
  OUTLINED_FUNCTION_50_22();
  OUTLINED_FUNCTION_49_24();
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_40(v864, v865, v866, v867, v868);
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_7_2(result);
  v869 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v869, v870, v871, v872, v873, v874, v875, v876, v877);
  v878 = OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_5_10(v878, v879, v880, v881, v882, v883, v884, v885, v886);
  v887 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v887);
  OUTLINED_FUNCTION_0_105();
  result = OUTLINED_FUNCTION_40(v888, v889, v890, v891, v892);
  if (!result)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_7_2(result);
  v893 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v893, v894, v895, v896, v897, v898, v899, v900, v901);
  v902 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v902, v903, v904, v905, v906, v907, v908, v909, v910);
  v911 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v911);
  OUTLINED_FUNCTION_12_29();
  result = OUTLINED_FUNCTION_35_25(v912, v913, v914, v915, v916);
  if (!result)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_7_2(result);
  v917 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v917, v918, v919, v920, v921, v922, v923, v924, v925);
  v926 = OUTLINED_FUNCTION_6_4();
  *(v926 + 16) = xmmword_193950B10;
  *(v926 + 32) = sub_19393C850();
  v927 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_52_23();
  OUTLINED_FUNCTION_11();
  result = OUTLINED_FUNCTION_35_25(v928, v929, v930, v931, v926);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v932;
  }

LABEL_83:
  __break(1u);
  return result;
}

void sub_1937D5F84()
{
  OUTLINED_FUNCTION_26();
  v285 = v2;
  v286 = v1;
  v284 = v0;
  v4 = v3;
  v6 = v5;
  v276 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0) - 8);
  v7 = *(v276 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v277 = &v271 - v9;
  v279 = type metadata accessor for MomentsNotifications.Prediction(0);
  v10 = OUTLINED_FUNCTION_4_1(v279);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v278 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_6();
  v274 = v17 - v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  v272 = &v271 - v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  v275 = &v271 - v22;
  OUTLINED_FUNCTION_47_3();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v271 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v271 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v271 - v30;
  v32 = sub_19393BE00();
  v33 = OUTLINED_FUNCTION_0(v32);
  v280 = v34;
  v281 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6();
  v273 = (v37 - v38);
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v39);
  v271 = &v271 - v40;
  OUTLINED_FUNCTION_47_3();
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = &v271 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v271 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v271 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v271 - v51;
  OUTLINED_FUNCTION_8_22();
  v55 = v54 + 3;
  v282 = v6;
  v283 = v4;
  v56 = v6 == v55 && v53 == v4;
  if (v56 || (v57 = v55, (OUTLINED_FUNCTION_32_35() & 1) != 0))
  {
    v58 = *(type metadata accessor for MomentsNotifications(0) + 28);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_73();
  v64 = v63 == 0xD000000000000013 && v61 == v62;
  if (v64 || (OUTLINED_FUNCTION_24_48() & 1) != 0)
  {
    v65 = type metadata accessor for MomentsNotifications(0);
    v66 = OUTLINED_FUNCTION_37_32(*(v65 + 32));
    sub_193448804(v66, v31, v67, v68);
    v69 = v281;
    if (__swift_getEnumTagSinglePayload(v31, 1, v281) != 1)
    {
      OUTLINED_FUNCTION_29_32();
      v71(v52, v31, v69);
      sub_1934948FC();
      (*(v50 + 1))(v52, v69);
      goto LABEL_27;
    }

    v70 = v31;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v73 = v282 == 0xD00000000000001CLL && v72 == v283;
  if (v73 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
  {
    v74 = *(type metadata accessor for MomentsNotifications(0) + 36);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_9_73();
  v80 = v79 == 0xD00000000000001CLL && v77 == v78;
  if (v80 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
  {
    v74 = *(type metadata accessor for MomentsNotifications(0) + 40);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_38();
  v82 = v282 == 0xD000000000000019 && v81 == v283;
  if (v82 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
  {
    v74 = *(type metadata accessor for MomentsNotifications(0) + 44);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_48_23();
  OUTLINED_FUNCTION_21_48();
  v85 = v56 && v84 == v83;
  if (!v85 && (OUTLINED_FUNCTION_32_35() & 1) == 0)
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_21_48();
    v104 = v56 && v102 == v103;
    if (v104 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v105 = *(type metadata accessor for MomentsNotifications(0) + 52);
      goto LABEL_60;
    }

    v279 = 0xD000000000000019;
    OUTLINED_FUNCTION_38();
    v108 = v282 == 0xD00000000000001ELL && v107 == v283;
    if (v108 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v109 = type metadata accessor for MomentsNotifications(0);
      v110 = OUTLINED_FUNCTION_37_32(*(v109 + 56));
      sub_193448804(v110, v29, v111, v112);
      OUTLINED_FUNCTION_23_46(v29);
      if (!v56)
      {
        v113 = v280;
        v114 = v29;
        v115 = v281;
        (*(v280 + 32))(v50, v114, v281);
        sub_1934948FC();
        (*(v113 + 8))(v50, v115);
        goto LABEL_27;
      }

      v70 = v29;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_21_48();
    v118 = v56 && v116 == v117;
    if (v118 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v119 = type metadata accessor for MomentsNotifications(0);
      v120 = OUTLINED_FUNCTION_37_32(*(v119 + 60));
      sub_193448804(v120, v26, v121, v122);
      OUTLINED_FUNCTION_23_46(v26);
      if (!v56)
      {
        OUTLINED_FUNCTION_29_32();
        v124 = v47;
        v125 = v26;
LABEL_78:
        v126 = v281;
        v123(v124, v125, v281);
        sub_1934948FC();
        (*(v50 + 1))(v47, v126);
        goto LABEL_27;
      }

      v70 = v26;
LABEL_17:
      sub_19344E6DC(v70, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_9_73();
    v130 = v129 == v57 && v127 == v128;
    if (v130 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v131 = type metadata accessor for MomentsNotifications(0);
      OUTLINED_FUNCTION_14_57(*(v131 + 64));
      if (v133)
      {
        goto LABEL_26;
      }

LABEL_278:
      OUTLINED_FUNCTION_5_46(v132);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_8_22();
    v136 = v135 + 10;
    v137 = v282 == v135 + 10 && v134 == v283;
    if (v137 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v138 = type metadata accessor for MomentsNotifications(0);
      v139 = OUTLINED_FUNCTION_37_32(*(v138 + 68));
      v140 = v275;
      sub_193448804(v139, v275, v141, v142);
      OUTLINED_FUNCTION_23_46(v140);
      if (!v56)
      {
        v144 = v280;
        v143 = v281;
        (*(v280 + 32))(v44, v275, v281);
        sub_1934948FC();
        (*(v144 + 8))(v44, v143);
        goto LABEL_27;
      }

      v70 = v275;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_21_48();
    v147 = v56 && v145 == v146;
    if (v147 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 72);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_21_48();
    v150 = v56 && v148 == v149;
    if (v150 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 76);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_9_73();
    v154 = v153 == v136 && v151 == v152;
    if (v154 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 80);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_8_22();
    v157 = v156 + 5;
    v158 = v282 == v156 + 5 && v155 == v283;
    if (v158 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 84);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_46_26();
    OUTLINED_FUNCTION_47_30();
    OUTLINED_FUNCTION_21_48();
    v161 = v56 && v160 == v159;
    if (v161 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v162 = type metadata accessor for MomentsNotifications(0);
      v163 = OUTLINED_FUNCTION_37_32(*(v162 + 88));
      v164 = v272;
      sub_193448804(v163, v272, v165, v166);
      OUTLINED_FUNCTION_23_46(v164);
      if (v56)
      {
        v70 = v272;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_29_32();
      v47 = v271;
      v125 = v272;
LABEL_126:
      v124 = v47;
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_9_73();
    v170 = v169 == 0xD00000000000001ELL && v167 == v168;
    if (v170 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 92);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_8_22();
    v173 = v172 + 4;
    v174 = v282 == v172 + 4 && v171 == v283;
    if (v174 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 96);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_38();
    v176 = v282 == v279 && v175 == v283;
    if (v176 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 100);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_8_22();
    v179 = v178 + 2;
    v180 = v282 == v178 + 2 && v177 == v283;
    if (v180 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 104);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_9_73();
    v184 = v183 == v157 && v181 == v182;
    if (v184 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 108);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_9_73();
    v188 = v187 == 0xD00000000000001CLL && v185 == v186;
    if (v188 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 112);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_9_73();
    v192 = v191 == v57 && v189 == v190;
    if (v192 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 116);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_21_48();
    v195 = v56 && v193 == v194;
    if (v195 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 120);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_9_73();
    v199 = v198 == 0xD00000000000001ELL && v196 == v197;
    if (v199 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 124);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_38();
    v201 = v282 == v279 && v200 == v283;
    if (v201 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 128);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_9_73();
    v205 = v204 == v179 && v202 == v203;
    if (v205 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 132);
      goto LABEL_25;
    }

    v50 = 0xE900000000000065;
    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_21_48();
    v207 = v56 && v206 == 0xE900000000000065;
    if (v207 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v208 = type metadata accessor for MomentsNotifications(0);
      OUTLINED_FUNCTION_14_57(*(v208 + 136));
      if (v209)
      {
        goto LABEL_26;
      }

      goto LABEL_278;
    }

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_21_48();
    v211 = v56 && v210 == 0xE900000000000065;
    if (v211 || (OUTLINED_FUNCTION_59_1(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
    {
      v212 = type metadata accessor for MomentsNotifications(0);
      v213 = OUTLINED_FUNCTION_37_32(*(v212 + 140));
      v214 = v274;
      sub_193448804(v213, v274, v215, v216);
      OUTLINED_FUNCTION_23_46(v214);
      if (v56)
      {
        v70 = v274;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_29_32();
      v47 = v273;
      v125 = v274;
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_21_48();
    v219 = v56 && v217 == v218;
    if (v219 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v74 = *(type metadata accessor for MomentsNotifications(0) + 144);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_21_48();
    v222 = v56 && v221 == v220;
    if (v222 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v223 = type metadata accessor for MomentsNotifications(0);
      OUTLINED_FUNCTION_14_57(*(v223 + 148));
      if (v224)
      {
        goto LABEL_26;
      }

      goto LABEL_278;
    }

    OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_21_48();
    v227 = v56 && v225 == v226;
    if (v227 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
    {
      v58 = *(type metadata accessor for MomentsNotifications(0) + 152);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_28_34();
      v230 = v56 && v228 == v229;
      if (v230 || (OUTLINED_FUNCTION_24_48() & 1) != 0)
      {
        v231 = type metadata accessor for MomentsNotifications(0);
        OUTLINED_FUNCTION_14_57(*(v231 + 156));
        if (v232)
        {
          goto LABEL_26;
        }

        goto LABEL_278;
      }

      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_28_34();
      v235 = v56 && v233 == v234;
      if (v235 || (OUTLINED_FUNCTION_24_48() & 1) != 0)
      {
        v105 = *(type metadata accessor for MomentsNotifications(0) + 160);
LABEL_60:
        v106 = v284 + v105;
        if ((*(v106 + 8) & 1) == 0)
        {
          *&v287 = *v106;
          goto LABEL_9;
        }

        goto LABEL_26;
      }

      v236 = v282 == (OUTLINED_FUNCTION_232() & 0xFFFFFFFFFFFFLL | 0x6449000000000000) && v283 == 0xE800000000000000;
      if (!v236 && (OUTLINED_FUNCTION_32_35() & 1) == 0)
      {
        OUTLINED_FUNCTION_232();
        OUTLINED_FUNCTION_21_48();
        v239 = v56 && v238 == v237;
        if (v239 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
        {
          v240 = type metadata accessor for MomentsNotifications(0);
          OUTLINED_FUNCTION_14_57(*(v240 + 168));
          if (v241)
          {
            goto LABEL_26;
          }

          goto LABEL_278;
        }

        OUTLINED_FUNCTION_51_23();
        OUTLINED_FUNCTION_53_27();
        OUTLINED_FUNCTION_21_48();
        v244 = v56 && v243 == v242;
        if (v244 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
        {
          v74 = *(type metadata accessor for MomentsNotifications(0) + 172);
        }

        else
        {
          OUTLINED_FUNCTION_9_73();
          v248 = v247 == v173 && v245 == v246;
          if (v248 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
          {
            v74 = *(type metadata accessor for MomentsNotifications(0) + 176);
          }

          else
          {
            OUTLINED_FUNCTION_49_24();
            OUTLINED_FUNCTION_50_22();
            OUTLINED_FUNCTION_21_48();
            v251 = v56 && v250 == v249;
            if (v251 || (OUTLINED_FUNCTION_32_35() & 1) != 0)
            {
              v252 = type metadata accessor for MomentsNotifications(0);
              OUTLINED_FUNCTION_14_57(*(v252 + 180));
              if (v253)
              {
                goto LABEL_26;
              }

              goto LABEL_278;
            }

            OUTLINED_FUNCTION_9_73();
            v257 = v256 == v173 && v254 == v255;
            if (v257 || (OUTLINED_FUNCTION_20_48(), (OUTLINED_FUNCTION_32_35() & 1) != 0))
            {
              v258 = type metadata accessor for MomentsNotifications(0);
              OUTLINED_FUNCTION_14_57(*(v258 + 184));
              if (v259)
              {
                goto LABEL_26;
              }

              goto LABEL_278;
            }

            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_28_34();
            v262 = v56 && v260 == v261;
            if (v262 || (OUTLINED_FUNCTION_24_48() & 1) != 0)
            {
              v74 = *(type metadata accessor for MomentsNotifications(0) + 188);
            }

            else
            {
              OUTLINED_FUNCTION_52_23();
              OUTLINED_FUNCTION_21_48();
              v264 = v56 && v263 == 0xEA00000000006465;
              if (!v264 && (OUTLINED_FUNCTION_32_35() & 1) == 0)
              {
                sub_19349AB64();
                OUTLINED_FUNCTION_11();
                v265 = swift_allocError();
                v267 = v266;
                v268 = v283;
                *v266 = v282;
                v266[1] = v268;
                v266[5] = type metadata accessor for MomentsNotifications(0);
                __swift_allocate_boxed_opaque_existential_1Tm(v267 + 2);
                OUTLINED_FUNCTION_11_53();
                sub_1937D7658(v284, v269, v270);
                *(v267 + 48) = 1;
                v286 = v265;
                swift_willThrow();

                goto LABEL_27;
              }

              v74 = *(type metadata accessor for MomentsNotifications(0) + 192);
            }
          }
        }

LABEL_25:
        v75 = *(v284 + v74);
        if (v75 != 2)
        {
          LOBYTE(v287) = v75 & 1;
          goto LABEL_9;
        }

LABEL_26:
        v76 = v285;
        *v285 = 0u;
        *(v76 + 1) = 0u;
        goto LABEL_27;
      }

      v58 = *(type metadata accessor for MomentsNotifications(0) + 164);
    }

LABEL_7:
    v59 = (v284 + v58);
    v60 = *(v284 + v58 + 8);
    if (v60)
    {
      *&v287 = *v59;
      *(&v287 + 1) = v60;
LABEL_9:
      sub_1934948FC();
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v86 = *(v284 + *(type metadata accessor for MomentsNotifications(0) + 48));
  v87 = *(v86 + 16);
  v88 = MEMORY[0x1E69E7CC0];
  if (v87)
  {
    v290 = MEMORY[0x1E69E7CC0];
    sub_1937D7594(v87);
    v89 = v86 + ((*(v276 + 80) + 32) & ~*(v276 + 80));
    v90 = *(v276 + 72);
    v92 = v278;
    v91 = v279;
    do
    {
      v93 = v277;
      v94 = sub_193448804(v89, v277, &qword_1EAE43660, &qword_19399D3C0);
      MEMORY[0x1EEE9AC00](v94);
      *(&v271 - 2) = v93;
      v95 = v286;
      static Buildable.with(_:)(sub_1937D760C, v91, &off_1F07F37B8, v92);
      v286 = v95;
      sub_19344E6DC(v93, &qword_1EAE43660, &qword_19399D3C0);
      v88 = v290;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1937D7638(0, *(v290 + 16) + 1, 1);
        v88 = v290;
      }

      v97 = *(v88 + 16);
      v96 = *(v88 + 24);
      v91 = v279;
      if (v97 >= v96 >> 1)
      {
        sub_1937D7638((v96 > 1), v97 + 1, 1);
        v91 = v279;
        v88 = v290;
      }

      v288 = v91;
      v289 = &off_1F07F3658;
      __swift_allocate_boxed_opaque_existential_1Tm(&v287);
      OUTLINED_FUNCTION_22_40();
      v92 = v278;
      sub_1937D7658(v278, v98, v99);
      *(v88 + 16) = v97 + 1;
      sub_193495F74(&v287, v88 + 40 * v97 + 32);
      sub_1937D76B4(v92);
      v89 += v90;
      --v87;
    }

    while (v87);
  }

  *&v287 = v88;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43668, &qword_19399C888);
  v101 = sub_19344A3FC(&qword_1EAE43670, &qword_1EAE43668, &qword_19399C888);
  sub_193494960(v100, v101, v285);

LABEL_27:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1937D7188(uint64_t a1)
{
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43660, &qword_19399D3C0) - 8);
  v3 = *(*v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  OUTLINED_FUNCTION_36_27();
  v7 = v6[8];
  v8 = v2[18];
  *a1 = *v6;
  *(a1 + 8) = v7;
  sub_19344E6DC(&v6[v8], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_36_27();
  v9 = v6[24];
  v10 = v2[18];
  *(a1 + 16) = *(v6 + 2);
  *(a1 + 24) = v9;
  sub_19344E6DC(&v6[v10], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_36_27();
  v11 = v2[18];
  v12 = type metadata accessor for MomentsNotifications.Prediction(0);
  return sub_19344542C(&v6[v11], a1 + *(v12 + 24), &qword_1EAE3A9E8, &qword_19394F800);
}

void sub_1937D72BC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_1();
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_0(v10);
  v31 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_38();
  v19 = a1 == 0xD000000000000016 && v18 == a2;
  if (v19 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (*(v3 + 8))
    {
LABEL_7:
      *a3 = 0u;
      a3[1] = 0u;
      return;
    }

    v20 = *v3;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v22 = a1 == 0xD000000000000019 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (*(v3 + 24))
    {
      goto LABEL_7;
    }

    v23 = *(v3 + 16);
LABEL_9:
    sub_1934948FC();
    return;
  }

  v25 = a1 == OUTLINED_FUNCTION_48_23() && a2 == v24;
  if (v25 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    v26 = type metadata accessor for MomentsNotifications.Prediction(0);
    sub_193448804(v3 + *(v26 + 24), v4, &qword_1EAE3A9E8, &qword_19394F800);
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
    {
      sub_19344E6DC(v4, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_7;
    }

    (*(v31 + 32))(v17, v4, v10);
    sub_1934948FC();
    (*(v31 + 8))(v17, v10);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v28 = v27;
    *v27 = a1;
    v27[1] = a2;
    v27[5] = type metadata accessor for MomentsNotifications.Prediction(0);
    __swift_allocate_boxed_opaque_existential_1Tm(v28 + 2);
    OUTLINED_FUNCTION_22_40();
    sub_1937D7658(v3, v29, v30);
    *(v28 + 48) = 1;
    swift_willThrow();
  }
}

void *sub_1937D7594(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1937D7638(result, v5, 0);
  }

  return result;
}

void *sub_1937D7638(void *a1, int64_t a2, char a3)
{
  result = sub_1937D7710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1937D7658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_4_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  return a2;
}

uint64_t sub_1937D76B4(uint64_t a1)
{
  v2 = type metadata accessor for MomentsNotifications.Prediction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1937D7710(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43678, &qword_19399C8E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB8, &qword_193950BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_36_27()
{

  return sub_193448804(v0, v3, v1, v2);
}

uint64_t MomentsNotifications.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for MomentsNotifications(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v21 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = v2[8];
  sub_1934E0648();
  v29 = v2[9];
  j__OUTLINED_FUNCTION_7_9();
  v26 = v2[10];
  j__OUTLINED_FUNCTION_7_9();
  v22 = v2[11];
  j__OUTLINED_FUNCTION_7_9();
  v20 = a1 + v2[13];
  j__OUTLINED_FUNCTION_8_11();
  v17 = v2[14];
  sub_1934E0648();
  v25 = v2[15];
  sub_1934E0648();
  v32 = a1 + v2[16];
  j__OUTLINED_FUNCTION_131(v32);
  v30 = v2[17];
  sub_1934E0648();
  v45 = v2[18];
  j__OUTLINED_FUNCTION_7_9();
  v43 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v40 = (a1 + v2[20]);
  j__OUTLINED_FUNCTION_10_1();
  v38 = (a1 + v2[21]);
  j__OUTLINED_FUNCTION_10_1();
  v35 = v2[22];
  sub_1934E0648();
  v46 = (a1 + v2[23]);
  j__OUTLINED_FUNCTION_10_1();
  v44 = (a1 + v2[24]);
  j__OUTLINED_FUNCTION_10_1();
  v42 = (a1 + v2[25]);
  j__OUTLINED_FUNCTION_10_1();
  v41 = v2[26];
  j__OUTLINED_FUNCTION_7_9();
  v39 = v2[27];
  j__OUTLINED_FUNCTION_7_9();
  v37 = v2[28];
  j__OUTLINED_FUNCTION_7_9();
  v36 = v2[29];
  j__OUTLINED_FUNCTION_7_9();
  v34 = v2[30];
  j__OUTLINED_FUNCTION_7_9();
  v31 = v2[31];
  j__OUTLINED_FUNCTION_7_9();
  v28 = v2[32];
  j__OUTLINED_FUNCTION_7_9();
  v23 = v2[33];
  j__OUTLINED_FUNCTION_7_9();
  v16 = a1 + v2[34];
  j__OUTLINED_FUNCTION_131(v16);
  v14 = v2[35];
  sub_1934E0648();
  v33 = v2[36];
  j__OUTLINED_FUNCTION_7_9();
  v27 = a1 + v2[37];
  j__OUTLINED_FUNCTION_131(v27);
  v24 = (a1 + v2[38]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = a1 + v2[39];
  j__OUTLINED_FUNCTION_131(v19);
  v15 = a1 + v2[40];
  j__OUTLINED_FUNCTION_8_11();
  v13 = (a1 + v2[41]);
  j__OUTLINED_FUNCTION_10_1();
  v5 = a1 + v2[42];
  OUTLINED_FUNCTION_131(v5);
  v12 = v2[43];
  j__OUTLINED_FUNCTION_7_9();
  v11 = v2[44];
  j__OUTLINED_FUNCTION_7_9();
  v6 = a1 + v2[45];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[46];
  j__OUTLINED_FUNCTION_131(v7);
  v10 = v2[47];
  j__OUTLINED_FUNCTION_7_9();
  v9 = v2[48];
  j__OUTLINED_FUNCTION_7_9();
  *a1 = *sub_1937DF1B8();
  OUTLINED_FUNCTION_43_23();
  sub_19393BE00();
  OUTLINED_FUNCTION_30_30(a1 + v3);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v21 = 0;
  v21[1] = 0;
  sub_19344E6DC(a1 + v18, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_30_30(a1 + v18);
  *(a1 + v29) = 2;
  *(a1 + v26) = 2;
  *(a1 + v22) = 2;
  *(a1 + v2[12]) = MEMORY[0x1E69E7CC0];
  *v20 = 0;
  v20[8] = 1;
  sub_19344E6DC(a1 + v17, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_30_30(a1 + v17);
  sub_19344E6DC(a1 + v25, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_30_30(a1 + v25);
  *v32 = 0;
  *(v32 + 8) = 256;
  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_30_30(a1 + v30);

  *(a1 + v45) = 2;
  *v43 = 0;
  v43[1] = 0;
  *v40 = 0;
  v40[1] = 0;
  *v38 = 0;
  v38[1] = 0;
  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_30_30(a1 + v35);

  *v46 = 0;
  v46[1] = 0;
  *v44 = 0;
  v44[1] = 0;
  *v42 = 0;
  v42[1] = 0;
  *(a1 + v41) = 2;
  *(a1 + v39) = 2;
  *(a1 + v37) = 2;
  *(a1 + v36) = 2;
  *(a1 + v34) = 2;
  *(a1 + v31) = 2;
  *(a1 + v28) = 2;
  *(a1 + v23) = 2;
  *v16 = 0;
  *(v16 + 8) = 256;
  OUTLINED_FUNCTION_43_23();
  OUTLINED_FUNCTION_30_30(a1 + v14);

  *(a1 + v33) = 2;
  *v27 = 0;
  *(v27 + 8) = 256;
  *v24 = 0;
  v24[1] = 0;
  *v19 = 0;
  *(v19 + 8) = 256;
  *v15 = 0;
  v15[8] = 1;
  *v13 = 0;
  v13[1] = 0;
  *v5 = 0;
  *(v5 + 8) = 256;
  *(a1 + v12) = 2;
  *(a1 + v11) = 2;
  *v6 = 0;
  *(v6 + 8) = 256;
  *v7 = 0;
  *(v7 + 8) = 256;
  *(a1 + v10) = 2;
  *(a1 + v9) = 2;
  return result;
}

BOOL static MomentsNotifications.== infix(_:_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v255 = sub_19393BE00();
  v4 = OUTLINED_FUNCTION_0(v255);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v252 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49();
  v246 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_49();
  v248 = v20;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49();
  v250 = v22;
  OUTLINED_FUNCTION_47_3();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v241 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v241 - v27;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v29 = OUTLINED_FUNCTION_4_1(v254);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v245 = v32 - v33;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_49();
  v247 = v35;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_49();
  v249 = v37;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_49();
  v251 = v39;
  OUTLINED_FUNCTION_47_3();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v241 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v241 - v44;
  v46 = type metadata accessor for MomentsNotifications(0);
  v47 = *(v46 + 28);
  v48 = *(a2 + v47 + 8);
  if (*(a1 + v47 + 8))
  {
    if (!v48)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5((a1 + v47));
    v51 = v51 && v49 == v50;
    if (!v51 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v243 = v46;
  v244 = v6;
  v253 = a2;
  v52 = *(v46 + 32);
  OUTLINED_FUNCTION_59_22();
  v242 = a1;
  sub_193448850();
  v53 = v253;
  sub_193448850();
  v54 = v255;
  OUTLINED_FUNCTION_6_3(v45, 1, v255);
  if (v51)
  {
    OUTLINED_FUNCTION_24_13(a2 + v45);
    if (!v51)
    {
      goto LABEL_18;
    }

    v241 = v16;
    sub_19344E6DC(v45, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    sub_193448850();
    OUTLINED_FUNCTION_24_13(a2 + v45);
    if (v55)
    {
      OUTLINED_FUNCTION_52_24();
      v56(v28, v54);
LABEL_18:
      v57 = v45;
LABEL_19:
      sub_19344E6DC(v57, &qword_1EAE3B968, &qword_193972430);
      return 0;
    }

    v241 = v16;
    OUTLINED_FUNCTION_47_31();
    v59 = OUTLINED_FUNCTION_46_27();
    v60(v59);
    OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
    sub_19393C550();
    v61 = OUTLINED_FUNCTION_20_49();
    v53(v61);
    (v53)(v28, v54);
    v53 = v253;
    sub_19344E6DC(v45, &qword_1EAE3A9E8, &qword_19394F800);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v62 = v242;
  v63 = v243;
  OUTLINED_FUNCTION_45_26(v243[9]);
  if (v51)
  {
    if (v64 != 2)
    {
      return 0;
    }
  }

  else if (v64 == 2 || ((v65 ^ v64) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_26(v63[10]);
  if (v51)
  {
    if (v66 != 2)
    {
      return 0;
    }
  }

  else if (v66 == 2 || ((v67 ^ v66) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_26(v63[11]);
  if (v51)
  {
    if (v68 != 2)
    {
      return 0;
    }
  }

  else if (v68 == 2 || ((v69 ^ v68) & 1) != 0)
  {
    return 0;
  }

  sub_1937D9034(*(v62 + v63[12]));
  sub_1937D9034(*(v53 + v63[12]));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE43680, &qword_19399C8F0);
  sub_1937D926C();
  sub_1937D92E8();
  v70 = sub_1934976C8();

  if (v70)
  {
    return 0;
  }

  v71 = v63[13];
  v72 = *(v62 + v71 + 8);
  v73 = *(v53 + v71 + 8);
  v74 = v63;
  if (v72)
  {
    v75 = v255;
    if (!v73)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_47();
    v75 = v255;
    if (v76)
    {
      return 0;
    }
  }

  v77 = v74[14];
  OUTLINED_FUNCTION_59_22();
  OUTLINED_FUNCTION_67_15();
  OUTLINED_FUNCTION_67_15();
  OUTLINED_FUNCTION_24_13(v43);
  if (v51)
  {
    OUTLINED_FUNCTION_24_13(&v43[v62]);
    if (v51)
    {
      sub_19344E6DC(v43, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_55;
    }

LABEL_53:
    v57 = v43;
    goto LABEL_19;
  }

  sub_193448850();
  OUTLINED_FUNCTION_24_13(&v43[v62]);
  v79 = v244;
  if (v78)
  {
    (*(v244 + 8))(v26, v75);
    goto LABEL_53;
  }

  v80 = *(v244 + 32);
  v81 = OUTLINED_FUNCTION_46_27();
  v82(v81);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  OUTLINED_FUNCTION_5_7();
  sub_19393C550();
  v83 = OUTLINED_FUNCTION_20_49();
  v79(v83);
  (v79)(v26, v75);
  sub_19344E6DC(v43, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v84 = v243[15];
  OUTLINED_FUNCTION_59_22();
  v85 = v251;
  OUTLINED_FUNCTION_67_15();
  v86 = v253;
  OUTLINED_FUNCTION_67_15();
  OUTLINED_FUNCTION_24_13(v85);
  if (v51)
  {
    OUTLINED_FUNCTION_24_13(v85 + v62);
    if (v51)
    {
      sub_19344E6DC(v85, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_65;
    }

LABEL_63:
    v57 = v85;
    goto LABEL_19;
  }

  v87 = v250;
  sub_193448850();
  OUTLINED_FUNCTION_24_13(v85 + v62);
  if (v88)
  {
    OUTLINED_FUNCTION_52_24();
    v89(v87, v75);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_47_31();
  v90 = OUTLINED_FUNCTION_46_27();
  v91(v90);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  sub_19393C550();
  v92 = OUTLINED_FUNCTION_20_49();
  v86(v92);
  (v86)(v87, v75);
  v86 = v253;
  sub_19344E6DC(v85, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v93 = v243;
  v94 = v243[16];
  v95 = *(v62 + v94 + 9);
  v96 = *(v86 + v94 + 9);
  if (v95)
  {
    if ((v96 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v97)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D952C();
    v98 = OUTLINED_FUNCTION_29_33();
    v93 = v243;
    if ((v98 & 1) == 0)
    {
      return 0;
    }
  }

  v99 = v93[17];
  OUTLINED_FUNCTION_59_22();
  v45 = v249;
  sub_193448850();
  sub_193448850();
  OUTLINED_FUNCTION_24_13(v45);
  if (v51)
  {
    OUTLINED_FUNCTION_24_13(&v45[v62]);
    if (v51)
    {
      sub_19344E6DC(v45, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_79;
    }

    goto LABEL_18;
  }

  sub_193448850();
  OUTLINED_FUNCTION_24_13(&v45[v62]);
  if (v100)
  {
    OUTLINED_FUNCTION_52_24();
    v101(v248, v255);
    v45 = v249;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_47_31();
  v102 = v249;
  v103 = v252;
  v104 = v255;
  v105(v252, &v249[v62], v255);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v106 = sub_19393C550();
  MEMORY[0x160005C6C8](v103, v104);
  v107 = OUTLINED_FUNCTION_5_7();
  MEMORY[0x160005C6C8](v107);
  sub_19344E6DC(v102, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_79:
  OUTLINED_FUNCTION_5_74(v243[18]);
  if (v51)
  {
    if (v108 != 2)
    {
      return 0;
    }
  }

  else if (v108 == 2 || ((v109 ^ v108) & 1) != 0)
  {
    return 0;
  }

  v110 = v243[19];
  OUTLINED_FUNCTION_6_65(v242);
  if (v113)
  {
    if (!v111)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v112);
    v116 = v51 && v114 == v115;
    if (!v116 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v111)
  {
    return 0;
  }

  v117 = v243[20];
  OUTLINED_FUNCTION_6_65(v242);
  if (v120)
  {
    if (!v118)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v119);
    v123 = v51 && v121 == v122;
    if (!v123 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v118)
  {
    return 0;
  }

  v124 = v243[21];
  OUTLINED_FUNCTION_6_65(v242);
  if (v127)
  {
    if (!v125)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v126);
    v130 = v51 && v128 == v129;
    if (!v130 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  v131 = v243[22];
  v132 = *(v254 + 48);
  v133 = v247;
  sub_193448850();
  OUTLINED_FUNCTION_54_21();
  OUTLINED_FUNCTION_18_45(v133);
  if (v51)
  {
    OUTLINED_FUNCTION_18_45(v247 + v132);
    if (v51)
    {
      sub_19344E6DC(v247, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_122;
    }

    goto LABEL_120;
  }

  v134 = v247;
  sub_193448850();
  OUTLINED_FUNCTION_18_45(v134 + v132);
  if (v135)
  {
    OUTLINED_FUNCTION_52_24();
    v136(v246, v255);
LABEL_120:
    v57 = v247;
    goto LABEL_19;
  }

  v137 = v244;
  v138 = v247;
  v139 = v255;
  (*(v244 + 32))(v252, v247 + v132, v255);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v140 = v246;
  v141 = sub_19393C550();
  v142 = *(v137 + 8);
  v143 = OUTLINED_FUNCTION_5_7();
  v142(v143);
  (v142)(v140, v139);
  sub_19344E6DC(v138, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_122:
  v144 = v243[23];
  OUTLINED_FUNCTION_6_65(v242);
  if (v147)
  {
    if (!v145)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v146);
    v150 = v51 && v148 == v149;
    if (!v150 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v145)
  {
    return 0;
  }

  v151 = v243[24];
  OUTLINED_FUNCTION_6_65(v242);
  if (v154)
  {
    if (!v152)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v153);
    v157 = v51 && v155 == v156;
    if (!v157 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v152)
  {
    return 0;
  }

  v158 = v243[25];
  OUTLINED_FUNCTION_6_65(v242);
  if (v161)
  {
    if (!v159)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v160);
    v164 = v51 && v162 == v163;
    if (!v164 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[26]);
  if (v51)
  {
    if (v165 != 2)
    {
      return 0;
    }
  }

  else if (v165 == 2 || ((v166 ^ v165) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[27]);
  if (v51)
  {
    if (v167 != 2)
    {
      return 0;
    }
  }

  else if (v167 == 2 || ((v168 ^ v167) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[28]);
  if (v51)
  {
    if (v169 != 2)
    {
      return 0;
    }
  }

  else if (v169 == 2 || ((v170 ^ v169) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[29]);
  if (v51)
  {
    if (v171 != 2)
    {
      return 0;
    }
  }

  else if (v171 == 2 || ((v172 ^ v171) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[30]);
  if (v51)
  {
    if (v173 != 2)
    {
      return 0;
    }
  }

  else if (v173 == 2 || ((v174 ^ v173) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[31]);
  if (v51)
  {
    if (v175 != 2)
    {
      return 0;
    }
  }

  else if (v175 == 2 || ((v176 ^ v175) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[32]);
  if (v51)
  {
    if (v177 != 2)
    {
      return 0;
    }
  }

  else if (v177 == 2 || ((v178 ^ v177) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[33]);
  if (v51)
  {
    if (v179 != 2)
    {
      return 0;
    }
  }

  else if (v179 == 2 || ((v180 ^ v179) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_61(v243[34]);
  if (v182)
  {
    if ((v181 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v183)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D94D8();
    if ((OUTLINED_FUNCTION_29_33() & 1) == 0)
    {
      return 0;
    }
  }

  v184 = v243[35];
  v185 = *(v254 + 48);
  v186 = v245;
  sub_193448850();
  OUTLINED_FUNCTION_54_21();
  OUTLINED_FUNCTION_18_45(v186);
  if (v51)
  {
    OUTLINED_FUNCTION_18_45(v245 + v185);
    if (v51)
    {
      sub_19344E6DC(v245, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_212;
    }

    goto LABEL_210;
  }

  v187 = v245;
  sub_193448850();
  OUTLINED_FUNCTION_18_45(v187 + v185);
  if (v188)
  {
    OUTLINED_FUNCTION_52_24();
    v189(v241, v255);
LABEL_210:
    v57 = v245;
    goto LABEL_19;
  }

  v190 = v244;
  v191 = v245;
  v192 = v245 + v185;
  v193 = v252;
  v194 = v255;
  (*(v244 + 32))(v252, v192, v255);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v195 = v241;
  v196 = sub_19393C550();
  v197 = *(v190 + 8);
  v197(v193, v194);
  v197(v195, v194);
  sub_19344E6DC(v191, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v196 & 1) == 0)
  {
    return 0;
  }

LABEL_212:
  OUTLINED_FUNCTION_5_74(v243[36]);
  if (v51)
  {
    if (v198 != 2)
    {
      return 0;
    }
  }

  else if (v198 == 2 || ((v199 ^ v198) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_61(v243[37]);
  if (v201)
  {
    if ((v200 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v202)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D9484();
    if ((OUTLINED_FUNCTION_29_33() & 1) == 0)
    {
      return 0;
    }
  }

  v203 = v243[38];
  OUTLINED_FUNCTION_6_65(v242);
  if (v206)
  {
    if (!v204)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v205);
    v209 = v51 && v207 == v208;
    if (!v209 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v204)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_61(v243[39]);
  if (v211)
  {
    if ((v210 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v212)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D179C();
    if ((OUTLINED_FUNCTION_29_33() & 1) == 0)
    {
      return 0;
    }
  }

  v213 = v243[40];
  v214 = *(v242 + v213 + 8);
  v215 = *(v253 + v213 + 8);
  if (v214)
  {
    if (!v215)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_47();
    if (v216)
    {
      return 0;
    }
  }

  v217 = v243[41];
  OUTLINED_FUNCTION_6_65(v242);
  if (v220)
  {
    if (!v218)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v219);
    v223 = v51 && v221 == v222;
    if (!v223 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v218)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_61(v243[42]);
  if (v225)
  {
    if ((v224 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v226)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D9430();
    if ((OUTLINED_FUNCTION_29_33() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_5_74(v243[43]);
  if (v51)
  {
    if (v227 != 2)
    {
      return 0;
    }
  }

  else if (v227 == 2 || ((v228 ^ v227) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[44]);
  if (v51)
  {
    if (v229 != 2)
    {
      return 0;
    }
  }

  else if (v229 == 2 || ((v230 ^ v229) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_61(v243[45]);
  if (v232)
  {
    if ((v231 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v233)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D93DC();
    if ((OUTLINED_FUNCTION_29_33() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_8_61(v243[46]);
  if (v235)
  {
    if ((v234 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    if (v236)
    {
      return 0;
    }

    OUTLINED_FUNCTION_12_55();
    sub_1937D9388();
    if ((OUTLINED_FUNCTION_29_33() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_5_74(v243[47]);
  if (v51)
  {
    if (v237 != 2)
    {
      return 0;
    }
  }

  else if (v237 == 2 || ((v238 ^ v237) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_74(v243[48]);
  if (!v51)
  {
    return v239 != 2 && ((v240 ^ v239) & 1) == 0;
  }

  return v239 == 2;
}