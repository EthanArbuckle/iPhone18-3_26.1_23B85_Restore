id sub_1909062E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *&v234 = a1;
  v218 = a3;
  v4 = type metadata accessor for FullAttributionListView(0);
  v206 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v207 = v5;
  v208 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for SingleTapbackSummaryView();
  MEMORY[0x1EEE9AC00](v193);
  v213 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D50);
  MEMORY[0x1EEE9AC00](v194);
  v195 = &v184 - v7;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D40);
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v184 - v8;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D30);
  MEMORY[0x1EEE9AC00](v197);
  v201 = &v184 - v9;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D20);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v184 - v10;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D08);
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v184 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D88);
  v211 = *(v12 - 8);
  v212 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v184 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D00);
  v216 = *(v14 - 8);
  v217 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v210 = &v184 - v15;
  v235 = type metadata accessor for AttributedTapbackItem();
  v231 = *(v235 - 8);
  v16 = MEMORY[0x1EEE9AC00](v235);
  v225 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v222 = &v184 - v18;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56D90);
  v19 = MEMORY[0x1EEE9AC00](v224);
  v209 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v191 = &v184 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v188 = &v184 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v185 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v204 = &v184 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v205 = &v184 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  *&v186 = &v184 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v190 = &v184 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v189 = &v184 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v184 = &v184 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v187 = &v184 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v215 = &v184 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v214 = (&v184 - v44);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v184 - v45;
  v48 = *a2;
  v47 = a2[1];
  v226 = a2;
  v49 = a2[2];
  *v255 = v48;
  *&v255[8] = v47;
  *&v255[16] = v49;
  v230 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  v232 = v50;
  MEMORY[0x193AF1A80](&v250);
  v51 = v250;
  swift_getKeyPath();
  *v255 = v51;
  v52 = sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  v53 = *&v51[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
  sub_190D52690();

  sub_190A4FDB0(v234, v53);
  v55 = v54;
  LOBYTE(v51) = v56;

  if (v51)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  v227 = v57;
  *v255 = v48;
  *&v255[8] = v47;
  *&v255[16] = v49;
  MEMORY[0x193AF1A80](&v250, v50);
  v58 = v250;
  swift_getKeyPath();
  *v255 = v58;
  v229 = v52;
  sub_190D51C20();
  v59 = v48;
  v233 = v48;
  v228 = v47;

  v60 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  sub_19022FD14(v58 + v60, v46, &unk_1EAD5E5C0);

  v61 = *(v231 + 48);
  v223 = v231 + 48;
  v192 = v61(v46, 1, v235);
  sub_19022EEA4(v46, &unk_1EAD5E5C0);
  *v255 = v59;
  *&v255[8] = v47;
  v62 = v230;
  *&v255[16] = v230;
  v63 = v232;
  MEMORY[0x193AF1A80](&v250, v232);
  v64 = v250;
  swift_getKeyPath();
  *v255 = v64;
  sub_190D51C20();

  v65 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v66 = v214;
  sub_19022FD14(v64 + v65, v214, &unk_1EAD5E5C0);

  v67 = v61;
  v68 = v233;
  LODWORD(v65) = v67(v66, 1, v235);
  v69 = v234;
  sub_19022EEA4(v66, &unk_1EAD5E5C0);
  v70 = v225;
  if (v65 != 1)
  {
    *v255 = v68;
    *&v255[8] = v228;
    *&v255[16] = v62;
    MEMORY[0x193AF1A80](&v250, v63, v225);
    v87 = v69;
    v88 = v250;
    swift_getKeyPath();
    *v255 = v88;
    sub_190D51C20();

    v89 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
    swift_beginAccess();
    v90 = v88 + v89;
    v91 = v215;
    sub_19022FD14(v90, v215, &unk_1EAD5E5C0);

    v92 = v187;
    sub_19090AEE4(v87, v187, type metadata accessor for AttributedTapbackItem);
    v93 = v235;
    (*(v231 + 56))(v92, 0, 1, v235);
    v94 = *(v224 + 48);
    v95 = v91;
    v96 = v188;
    sub_19022FD14(v95, v188, &unk_1EAD5E5C0);
    sub_19022FD14(v92, v96 + v94, &unk_1EAD5E5C0);
    v97 = v67(v96, 1, v93);
    v98 = v67;
    v99 = v92;
    if (v97 == 1)
    {
      sub_19022EEA4(v92, &unk_1EAD5E5C0);
      sub_19022EEA4(v215, &unk_1EAD5E5C0);
      if (v98(v96 + v94, 1, v93) == 1)
      {
        sub_19022EEA4(v96, &unk_1EAD5E5C0);
        v62 = v230;
        v67 = v98;
        v63 = v232;
        v68 = v233;
        v70 = v225;
        v69 = v234;
        goto LABEL_5;
      }
    }

    else
    {
      v105 = v184;
      sub_19022FD14(v96, v184, &unk_1EAD5E5C0);
      if (v98(v96 + v94, 1, v93) != 1)
      {
        v182 = v222;
        sub_19090AF4C(v96 + v94, v222, type metadata accessor for AttributedTapbackItem);
        v183 = sub_190AE3DCC(v105, v182);
        sub_19090B450(v182);
        sub_19022EEA4(v99, &unk_1EAD5E5C0);
        sub_19022EEA4(v215, &unk_1EAD5E5C0);
        sub_19090B450(v105);
        sub_19022EEA4(v96, &unk_1EAD5E5C0);
        v62 = v230;
        v67 = v98;
        v63 = v232;
        v68 = v233;
        v70 = v225;
        v69 = v234;
        if (v183)
        {
          goto LABEL_5;
        }

        return (*(v216 + 56))(v218, 1, 1, v217);
      }

      sub_19022EEA4(v99, &unk_1EAD5E5C0);
      sub_19022EEA4(v215, &unk_1EAD5E5C0);
      sub_19090B450(v105);
    }

    sub_19022EEA4(v96, &qword_1EAD56D90);
    return (*(v216 + 56))(v218, 1, 1, v217);
  }

LABEL_5:
  v219 = v67;
  sub_19090AEE4(v69, v70, type metadata accessor for AttributedTapbackItem);
  v71 = v226[3];
  v253 = *(v226 + 2);
  v254 = v226[6];
  v72 = v226[7];
  v73 = *(v226 + 5);
  v250 = *(v226 + 4);
  v251 = v73;
  v252 = v226[12];
  *v255 = v68;
  *&v255[8] = v228;
  *&v255[16] = v62;
  MEMORY[0x193AF1A80](&v238, v63);
  v74 = v238;
  swift_getKeyPath();
  *v255 = v74;
  sub_190D51C20();

  v75 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v76 = v74 + v75;
  v77 = v189;
  sub_19022FD14(v76, v189, &unk_1EAD5E5C0);

  v78 = v190;
  sub_19090AEE4(v69, v190, type metadata accessor for AttributedTapbackItem);
  v79 = v235;
  v214 = *(v231 + 56);
  v215 = v231 + 56;
  (v214)(v78, 0, 1, v235);
  v80 = *(v224 + 48);
  v81 = v191;
  sub_19022FD14(v77, v191, &unk_1EAD5E5C0);
  sub_19022FD14(v78, v81 + v80, &unk_1EAD5E5C0);
  v82 = v219;
  v83 = v81;
  if (v219(v81, 1, v79) == 1)
  {
    sub_19022EEA4(v78, &unk_1EAD5E5C0);
    sub_19022EEA4(v77, &unk_1EAD5E5C0);
    v84 = v82(v81 + v80, 1, v79);
    v85 = v230;
    v86 = v226;
    if (v84 == 1)
    {
      sub_19022EEA4(v81, &unk_1EAD5E5C0);
      LODWORD(v187) = 1;
LABEL_15:
      v103 = v228;
      v104 = v233;
      goto LABEL_21;
    }

LABEL_14:
    sub_19022EEA4(v83, &qword_1EAD56D90);
    LODWORD(v187) = 0;
    goto LABEL_15;
  }

  v100 = v78;
  v101 = v186;
  sub_19022FD14(v83, v186, &unk_1EAD5E5C0);
  v102 = v82(v83 + v80, 1, v79);
  if (v102 == 1)
  {
    sub_19022EEA4(v100, &unk_1EAD5E5C0);
    sub_19022EEA4(v77, &unk_1EAD5E5C0);
    sub_19090B450(v101);
    v85 = v230;
    v86 = v226;
    goto LABEL_14;
  }

  v107 = v222;
  sub_19090AF4C(v83 + v80, v222, type metadata accessor for AttributedTapbackItem);
  LODWORD(v187) = sub_190AE3DCC(v101, v107);
  sub_19090B450(v107);
  sub_19022EEA4(v100, &unk_1EAD5E5C0);
  sub_19022EEA4(v77, &unk_1EAD5E5C0);
  sub_19090B450(v101);
  sub_19022EEA4(v83, &unk_1EAD5E5C0);
  v103 = v228;
  v85 = v230;
  v104 = v233;
  v86 = v226;
LABEL_21:
  *v255 = v104;
  *&v255[8] = v103;
  *&v255[16] = v85;
  MEMORY[0x193AF1A80](&v238, v232);
  v108 = v238;
  swift_getKeyPath();
  *v255 = v108;
  sub_190D51C20();

  v109 = v108[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect];

  if (v109)
  {
    *v255 = v86[13];
    *&v255[8] = *(v86 + 7);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
    MEMORY[0x193AF1A80](&v238, v110);
    v111 = v238;
    swift_getKeyPath();
    *v255 = v111;
    sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C20();

    v112 = v111[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9] << 8;

    v113 = v112 == 768;
  }

  else
  {
    v113 = 0;
  }

  *v255 = v233;
  *&v255[8] = v103;
  *&v255[16] = v85;
  MEMORY[0x193AF1A80](&v238, v232);
  v114 = v238;
  swift_getKeyPath();
  *v255 = v114;
  sub_190D51C20();

  v115 = v114[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState];

  v116 = v86[13];
  v117 = v86[15];
  v189 = v86[14];
  v190 = v116;
  *v255 = v116;
  *&v255[8] = v189;
  v188 = v117;
  *&v255[16] = v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
  sub_190D56220();
  v119 = v238;
  v120 = v239;
  swift_getKeyPath();
  v238 = v119;
  v239 = v120;
  v191 = v118;
  sub_190D56210();

  v186 = *v255;
  v121 = *&v255[16];
  v122 = *&v255[24];
  LOBYTE(v118) = v255[26];

  KeyPath = swift_getKeyPath();
  v124 = v193;
  v125 = v213;
  *&v213[*(v193 + 40)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  *(v125 + v124[11]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  sub_19090AF4C(v225, v125, type metadata accessor for AttributedTapbackItem);
  v126 = v125 + v124[5];
  *(v126 + 8) = v253;
  v127 = v251;
  *(v126 + 40) = v250;
  *v126 = v71;
  *(v126 + 24) = v254;
  *(v126 + 32) = v72;
  *(v126 + 56) = v127;
  *(v126 + 72) = v252;
  *(v125 + v124[6]) = v187 & 1;
  *(v125 + v124[7]) = v113;
  *(v125 + v124[8]) = v115;
  *(v125 + v124[9]) = v227;
  v128 = v125 + v124[12];
  *v128 = v186;
  *(v128 + 16) = v121;
  *(v128 + 26) = v118;
  *(v128 + 24) = v122;
  sub_190D56500();
  sub_190D54430();
  v129 = v195;
  sub_19090AF4C(v125, v195, type metadata accessor for SingleTapbackSummaryView);
  v130 = (v129 + *(v194 + 36));
  v131 = v259;
  v130[4] = v258;
  v130[5] = v131;
  v130[6] = v260;
  v132 = *&v255[16];
  *v130 = *v255;
  v130[1] = v132;
  v133 = v257;
  v130[2] = v256;
  v130[3] = v133;
  sub_190D53C90();
  v134 = v222;
  sub_19090AEE4(v234, v222, type metadata accessor for AttributedTapbackItem);
  v135 = *(v231 + 80);
  v231 = ~v135;
  v136 = swift_allocObject();
  sub_19090AF4C(v134, v136 + ((v135 + 16) & ~v135), type metadata accessor for AttributedTapbackItem);
  *&v238 = sub_19090BC0C;
  *(&v238 + 1) = v136;
  sub_19090BC74();
  v246[1] = 0;
  v246[0] = 0;
  sub_190D53CE0();

  v137 = sub_190D53CD0();

  v138 = v198;
  sub_19081E40C(v129, v198, &qword_1EAD56D50);
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  *(v138 + *(v196 + 36)) = v137;
  if (v192 == 1)
  {
    v142 = v72;
    v141 = 0x4010000000000000;
    v140 = 0x3FE8000000000000;
    v139 = 0x3FF0000000000000;
  }

  v249 = v192 != 1;
  v248 = v192 != 1;
  v247 = 1;
  v143 = v201;
  sub_19081E40C(v138, v201, &qword_1EAD56D40);
  v144 = v143 + *(v197 + 36);
  *v144 = 0;
  *(v144 + 8) = v141;
  *(v144 + 16) = v142;
  *(v144 + 24) = v249;
  *(v144 + 32) = v139;
  *(v144 + 40) = v140;
  *(v144 + 48) = v142;
  *(v144 + 56) = v248;
  *(v144 + 72) = 0;
  *(v144 + 80) = 0;
  *(v144 + 64) = 0;
  *(v144 + 88) = v247;
  v145 = v226;
  v146 = sub_190907F34(v227);
  v147 = v199;
  sub_19081E40C(v143, v199, &qword_1EAD56D30);
  *(v147 + *(v200 + 36)) = v146;
  v148 = v203;
  sub_19081E40C(v147, v203, &qword_1EAD56D20);
  *(v148 + *(v202 + 36)) = 1;
  v149 = v208;
  sub_19090AEE4(v145, v208, type metadata accessor for FullAttributionListView);
  v150 = v234;
  v151 = v222;
  sub_19090AEE4(v234, v222, type metadata accessor for AttributedTapbackItem);
  v152 = (*(v206 + 80) + 16) & ~*(v206 + 80);
  v153 = (v207 + v135 + v152) & v231;
  v154 = swift_allocObject();
  sub_19090AF4C(v149, v154 + v152, type metadata accessor for FullAttributionListView);
  sub_19090AF4C(v151, v154 + v153, type metadata accessor for AttributedTapbackItem);
  sub_19090B804();
  sub_190D557E0();

  sub_19022EEA4(v148, &qword_1EAD56D08);
  v155 = *v150;
  v225 = *(v150 + 8);
  v226 = v155;
  LODWORD(v231) = *(v150 + 16);
  if (v231 == 2)
  {
    v156 = sub_190AE3FCC(v155);
    LODWORD(v220) = v156 != 0;
  }

  else
  {
    LODWORD(v220) = 0;
  }

  v157 = v235;
  v158 = v204;
  *&v238 = v233;
  *(&v238 + 1) = v228;
  v239 = v230;
  MEMORY[0x193AF1A80](v246, v232);
  v159 = v246[0];
  swift_getKeyPath();
  *&v238 = v159;
  sub_190D51C20();

  v160 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v161 = v159 + v160;
  v162 = v205;
  sub_19022FD14(v161, v205, &unk_1EAD5E5C0);

  sub_19090AEE4(v150, v158, type metadata accessor for AttributedTapbackItem);
  (v214)(v158, 0, 1, v157);
  v163 = *(v224 + 48);
  v164 = v209;
  sub_19022FD14(v162, v209, &unk_1EAD5E5C0);
  sub_19022FD14(v158, v164 + v163, &unk_1EAD5E5C0);
  v165 = v219;
  if (v219(v164, 1, v157) != 1)
  {
    v167 = v185;
    sub_19022FD14(v164, v185, &unk_1EAD5E5C0);
    if (v165(v164 + v163, 1, v157) != 1)
    {
      v168 = v222;
      sub_19090AF4C(v164 + v163, v222, type metadata accessor for AttributedTapbackItem);
      v166 = sub_190AE3DCC(v167, v168);
      sub_19090B450(v168);
      sub_19022EEA4(v158, &unk_1EAD5E5C0);
      sub_19022EEA4(v162, &unk_1EAD5E5C0);
      sub_19090B450(v167);
      sub_19022EEA4(v164, &unk_1EAD5E5C0);
      goto LABEL_36;
    }

    sub_19022EEA4(v158, &unk_1EAD5E5C0);
    sub_19022EEA4(v162, &unk_1EAD5E5C0);
    sub_19090B450(v167);
    goto LABEL_34;
  }

  sub_19022EEA4(v158, &unk_1EAD5E5C0);
  sub_19022EEA4(v162, &unk_1EAD5E5C0);
  if (v165(v164 + v163, 1, v157) != 1)
  {
LABEL_34:
    sub_19022EEA4(v164, &qword_1EAD56D90);
    v166 = 0;
    goto LABEL_36;
  }

  sub_19022EEA4(v164, &unk_1EAD5E5C0);
  v166 = 1;
LABEL_36:
  *&v238 = v190;
  *(&v238 + 1) = v189;
  v239 = v188;
  sub_190D56220();
  v169 = v242;
  v170 = v243;
  v171 = v244;
  swift_getKeyPath();
  v242 = v169;
  v243 = v170;
  v244 = v171;
  sub_190D56210();

  v234 = v238;
  v233 = v239;
  LODWORD(v235) = v240;
  LODWORD(v232) = v241;

  v172 = swift_getKeyPath();
  v245 = 0;
  sub_190D55FC0();
  LOBYTE(v171) = v236;
  v173 = v237;
  v236 = 0;
  v174 = v166 & 1;
  v245 = 0;
  v175 = v210;
  (*(v211 + 32))(v210, v221, v212);
  v176 = v217;
  v177 = v175 + *(v217 + 36);
  *v177 = v172;
  *(v177 + 8) = 0;
  *(v177 + 16) = v236;
  *(v177 + 17) = v220;
  v178 = v225;
  v179 = v226;
  *(v177 + 24) = v226;
  *(v177 + 32) = v178;
  v180 = v231;
  *(v177 + 40) = v231;
  *(v177 + 41) = v174;
  *(v177 + 48) = v227;
  *(v177 + 56) = v245;
  *(v177 + 64) = v234;
  *(v177 + 80) = v233;
  *(v177 + 90) = v232;
  *(v177 + 88) = v235;
  *(v177 + 96) = v171;
  *(v177 + 104) = v173;
  v181 = v218;
  sub_19081E40C(v175, v218, &qword_1EAD56D00);
  (*(v216 + 56))(v181, 0, 1, v176);
  return sub_190824730(v179, v178, v180);
}

double sub_190907F34(uint64_t a1)
{
  v34 = a1;
  v2 = sub_190D53A60();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - v5;
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[15];
  v36 = v7;
  v37 = v6;
  v38 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
  MEMORY[0x193AF1A80](&v35);
  v10 = v35;
  swift_getKeyPath();
  v36 = v10;
  sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v11 = *&v10[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay];
  v12 = v10[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9] << 8;
  v13 = v10[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

  v14 = 1.0;
  if (v12 == 768 || (v13 & 1) != 0 || v11 != v34)
  {
    v36 = v7;
    v37 = v6;
    v38 = v8;
    MEMORY[0x193AF1A80](&v35, v9);
    v15 = v35;
    swift_getKeyPath();
    v36 = v15;
    sub_190D51C20();

    v16 = v15[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10];
    v17 = *&v15[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

    v18 = v17 & 0xFF00;
    v36 = v7;
    v37 = v6;
    v38 = v8;
    MEMORY[0x193AF1A80](&v35, v9);
    v19 = v35;
    swift_getKeyPath();
    v36 = v19;
    sub_190D51C20();

    v20 = *&v19[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

    if ((v20 & 0xFF00) == 0x300)
    {
      v21 = 3;
    }

    else
    {
      v21 = HIBYTE(v20);
    }

    if (v18 == 768 || v16 == 3)
    {
      if (v21 == 3)
      {
        return v14;
      }

      goto LABEL_13;
    }

    if (v21 == 3 || v16 != v21)
    {
LABEL_13:
      v22 = v30;
      sub_190904910(v30);
      v24 = v31;
      v23 = v32;
      v25 = v33;
      (*(v32 + 104))(v31, *MEMORY[0x1E697DBB8], v33);
      v26 = sub_190D53A50();
      v27 = *(v23 + 8);
      v27(v24, v25);
      v27(v22, v25);
      if (v26)
      {
        return 0.7;
      }

      else
      {
        return 0.5;
      }
    }
  }

  return v14;
}

uint64_t sub_1909082CC(uint64_t a1)
{
  if (qword_1EAD51D40 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x1EEE9AC00](a1);
  return sub_190D53E40();
}

void sub_190908394(uint64_t a1)
{
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
  MEMORY[0x193AF1A80](&v4, v1);
  v2 = v4;
  swift_getKeyPath();
  v5 = v2;
  sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v3 = v2[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9] << 8;

  if (v3 == 768)
  {
    sub_1909084A4();
  }
}

uint64_t sub_1909084A4()
{
  v6 = *v0;
  v7 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v5, v1);
  v2 = v5;
  if (*(v5 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v2;
    sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
    sub_190D51C10();
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect) = 0;
  }

  if (qword_1EAD51D40 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAD9E1A8);
  return sub_190D53E40();
}

uint64_t sub_190908680()
{
  if ((sub_190D53A90() & 1) != 0 || (v0 = sub_190D53A90(), (v0 & 1) == 0))
  {
    if (qword_1EAD51D40 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EAD9E1A8);
    return sub_190D53E40();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    sub_190D565A0();
    sub_190D53E40();
  }
}

void sub_1909087B4(uint64_t a1)
{
  v3[1] = *(a1 + 104);
  v4 = *(a1 + 112);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
  MEMORY[0x193AF1A80](v3, v1);
  v2 = v3[0];
  sub_1908E91C8();
}

void sub_19090881C(uint64_t a1)
{
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
  MEMORY[0x193AF1A80](&v5, v1);
  v2 = v5;
  v3 = &v5[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay];
  if (v5[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9] << 8 == 768)
  {
    *v3 = 0;
    v3[10] = 0;
    *(v3 + 4) = 768;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v2;
    sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }
}

__n128 sub_190908990@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  *v28 = *a1;
  *&v28[8] = *(a1 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v20, v7);
  v8 = v20;
  swift_getKeyPath();
  *v28 = v8;
  sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  v9 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  sub_19022FD14(v8 + v9, v6, &unk_1EAD5E5C0);

  v10 = type metadata accessor for AttributedTapbackItem();
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v6, 1, v10);
  sub_19022EEA4(v6, &unk_1EAD5E5C0);
  if (v9 == 1 || (*v28 = *(a1 + 104), *&v28[8] = *(a1 + 112), v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8), MEMORY[0x193AF1A80](&v20, v11), v12 = v20, swift_getKeyPath(), *v28 = v12, sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController), sub_190D51C20(), , v13 = v12[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9] << 8, v12, v13 != 768))
  {
    sub_19090B25C(v28);
  }

  else
  {
    sub_190908CC4(v18);
    v26 = v18[6];
    v27[0] = v19[0];
    *(v27 + 9) = *(v19 + 9);
    v22 = v18[2];
    v23 = v18[3];
    v24 = v18[4];
    v25 = v18[5];
    v20 = v18[0];
    v21 = v18[1];
    nullsub_10(&v20);
    v33 = v26;
    v34[0] = v27[0];
    *(v34 + 9) = *(v27 + 9);
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    *v28 = v20;
    *&v28[16] = v21;
  }

  v14 = v34[0];
  *(a2 + 96) = v33;
  *(a2 + 112) = v14;
  *(a2 + 121) = *(v34 + 9);
  v15 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v15;
  v16 = v32;
  *(a2 + 64) = v31;
  *(a2 + 80) = v16;
  result = *&v28[16];
  *a2 = *v28;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_190908CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v68 = &v57 - v5;
  v6 = type metadata accessor for AttributedTapbackItem();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FullAttributionListView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_19090AEE4(v1, &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullAttributionListView);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v67 = swift_allocObject();
  sub_19090AF4C(&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v11, type metadata accessor for FullAttributionListView);
  sub_190D53C90();
  sub_190D53CC0();
  v64 = sub_190D53CD0();

  v13 = v2[13];
  v12 = v2[14];
  v69 = v2;
  v14 = v2[15];
  v71 = v13;
  *&v72 = v12;
  *(&v72 + 1) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC8);
  MEMORY[0x193AF1A80](&v70);
  v16 = v70;
  swift_getKeyPath();
  v71 = v16;
  v17 = sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v18 = *&v16[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

  v62 = v12;
  v63 = v13;
  v71 = v13;
  *&v72 = v12;
  v60 = v15;
  v61 = v14;
  *(&v72 + 1) = v14;
  MEMORY[0x193AF1A80](&v70, v15);
  v19 = v70;
  swift_getKeyPath();
  v71 = v19;
  v59 = v17;
  sub_190D51C20();

  v20 = v19[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10];
  LOWORD(v10) = *&v19[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

  if ((v10 & 0xFF00) == 0x300)
  {
    v21 = 3;
  }

  else
  {
    v21 = v20;
  }

  if ((v18 & 0xFF00) == 0x300 || HIBYTE(v18) == 3)
  {
    v22 = 0.5;
    if (v21 != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0.5;
    if (v21 == 3 || v21 != HIBYTE(v18))
    {
      goto LABEL_11;
    }
  }

  v22 = 1.0;
LABEL_11:
  v23 = v62;
  v24 = v63;
  v71 = v63;
  *&v72 = v62;
  v25 = v60;
  v26 = v61;
  *(&v72 + 1) = v61;
  MEMORY[0x193AF1A80](&v70, v60);
  v27 = v70;
  swift_getKeyPath();
  v71 = v27;
  sub_190D51C20();

  v28 = *&v27[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8] | (v27[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10] << 16);

  v71 = v24;
  *&v72 = v23;
  *(&v72 + 1) = v26;
  MEMORY[0x193AF1A80](&v70, v25);
  v29 = v70;
  swift_getKeyPath();
  v71 = v29;
  sub_190D51C20();

  v30 = v29[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10];
  LOWORD(v24) = *&v29[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

  if ((v24 & 0xFF00) == 0x300)
  {
    v31 = 3;
  }

  else
  {
    v31 = v30;
  }

  if ((v28 & 0xFF00) == 0x300 || (v32 = v28 >> 8, BYTE1(v28) == 3))
  {
    v33 = 8.0;
    v34 = v69;
    if (v31 != 3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v33 = 8.0;
  if (v31 == 3)
  {
    v34 = v69;
    goto LABEL_21;
  }

  v34 = v69;
  if (v31 == v32)
  {
LABEL_20:
    v33 = 0.0;
  }

LABEL_21:
  v35 = sub_190D552E0();
  v71 = *v34;
  v72 = *(v34 + 1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v70, v36);
  v37 = v70;
  swift_getKeyPath();
  v71 = v37;
  sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  v38 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v39 = &v37[v38];
  v40 = v68;
  sub_19022FD14(v39, v68, &unk_1EAD5E5C0);
  if ((*(v65 + 48))(v40, 1, v66) == 1)
  {
    sub_19022EEA4(v40, &unk_1EAD5E5C0);
  }

  else
  {
    v41 = v58;
    sub_19090AF4C(v40, v58, type metadata accessor for AttributedTapbackItem);
    sub_19090B450(v41);
  }

  sub_190D539C0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  LOBYTE(v70) = 0;
  v50 = sub_190D552C0();
  result = sub_190D539C0();
  v52 = v67;
  *a1 = sub_19090B438;
  *(a1 + 8) = v52;
  *(a1 + 16) = v64;
  *(a1 + 24) = v22;
  *(a1 + 32) = v33;
  *(a1 + 40) = 0;
  *(a1 + 48) = v35;
  *(a1 + 56) = v43;
  *(a1 + 64) = v45;
  *(a1 + 72) = v47;
  *(a1 + 80) = v49;
  *(a1 + 88) = 0;
  *(a1 + 96) = v50;
  *(a1 + 104) = v53;
  *(a1 + 112) = v54;
  *(a1 + 120) = v55;
  *(a1 + 128) = v56;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1909093CC(uint64_t a1)
{
  v2 = sub_190D55070();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for FullAttributionListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  if (qword_1EAD51D40 != -1)
  {
    v9 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v9);
  *&v13[-16] = a1;
  sub_19090AEE4(a1, &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FullAttributionListView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_19090AF4C(&v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for FullAttributionListView);
  sub_190D55050();
  sub_190D53E30();

  return (*(v3 + 8))(v5, v2);
}

void sub_190909638(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v6 = a1[1];
  v7 = a1[2];
  v14 = *a1;
  v5 = v14;
  v15 = v6;
  v16 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v17);
  v9 = v17;
  v10 = type metadata accessor for AttributedTapbackItem();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_190B7DA04(v4);

  v14 = v5;
  v15 = v6;
  v16 = v7;
  MEMORY[0x193AF1A80](&v17, v8);
  v11 = v17;
  if (*(v17 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v11;
    *(&v13 - 8) = 0;
    v14 = v11;
    sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
    sub_190D51C10();
  }

  else
  {
  }
}

void sub_190909850(uint64_t a1)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v4, v1);
  v2 = v4;
  if (*(v4 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect) == 1)
  {
    *(v4 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__applyHoverEffect) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v2;
    sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
    sub_190D51C10();
  }
}

void sub_1909099A4(uint64_t a1, uint64_t a2)
{
  sub_190909B0C(a2);
  v7 = *a1;
  v8 = *(a1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v6, v3);
  v4 = v6;
  if (*(v6 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__itemPlatterMaskState) == 1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v4;
    sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
    sub_190D51C10();
  }
}

void sub_190909B0C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v64 - v7;
  v8 = type metadata accessor for AttributedTapbackItem();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v11 = *(v1 + 1);
  v13 = *(v1 + 2);
  v80 = *v1;
  v81 = v11;
  v82 = v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](v79);
  v14 = v79[0];
  swift_getKeyPath();
  v80 = v14;
  v76 = sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  v15 = *&v14[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
  sub_190D52690();

  sub_190A4FDB0(a1, v15);
  v17 = v16;
  v19 = v18;

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v77 = v12;
  v80 = v12;
  v81 = v11;
  v68 = v13;
  v69 = v11;
  v82 = v13;
  v21 = v70;
  MEMORY[0x193AF1A80](v79);
  v22 = v79[0];
  v23 = v2[3];
  v24 = *(*(a1 + 24) + 16);
  v25 = v2[8];
  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 preferredContentSizeCategory];

  v28 = sub_190D579E0();
  v29 = sub_190B7FFC8();

  v72 = v20 + 1;
  v73 = v20;
  if (__OFADD__(v20, 1))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v65 = a1;
  v30 = 20.0;
  if (v28)
  {
    v30 = 28.0;
  }

  v31 = v30 * (v24 - 1);
  if (v23 > v25 * v24 + v31)
  {
    v32 = v23;
  }

  else
  {
    v32 = v25 * v24 + v31;
  }

  v33 = v77;
  v35 = v68;
  v34 = v69;
  v80 = v77;
  v81 = v69;
  v82 = v68;
  MEMORY[0x193AF1A80](v79, v21);
  v36 = v79[0];
  swift_getKeyPath();
  v80 = v36;
  sub_190D51C20();

  v37 = *&v36[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
  sub_190D52690();

  v71 = *(v37 + 16);

  v80 = v33;
  v81 = v34;
  v38 = v34;
  v82 = v35;
  MEMORY[0x193AF1A80](v79, v21);
  v39 = v79[0];
  swift_getKeyPath();
  v80 = v39;
  sub_190D51C20();

  v40 = *&v39[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
  sub_190D52690();

  v41 = *(v40 + 16);

  if (v41)
  {
    v42 = 0;
    v43 = -(v23 * v73 - v23 * 0.5);
    v44 = v29 + v29 + v32 - v23 * v72 - v23 * 0.5;
    while (1)
    {
      v80 = v77;
      v81 = v38;
      v45 = v38;
      v46 = v35;
      v82 = v35;
      v47 = v21;
      MEMORY[0x193AF1A80](v79, v21);
      v48 = v79[0];
      swift_getKeyPath();
      v80 = v48;
      sub_190D51C20();

      v49 = *&v48[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
      sub_190D52690();

      if (v42 >= *(v49 + 16))
      {
        break;
      }

      if (v72 < v71 && v73 < v42)
      {
        v51 = v44;
      }

      else
      {
        v51 = 0.0;
      }

      if (v42 >= v73)
      {
        v52 = v51;
      }

      else
      {
        v52 = v43;
      }

      sub_19090AEE4(v49 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v42, v10, type metadata accessor for AttributedTapbackItem);

      v53 = *&v10[*(v75 + 28)];
      sub_190D50920();
      sub_19090B450(v10);
      *(v53 + 16) = v52;

      ++v42;
      v21 = v47;
      v35 = v46;
      v38 = v45;
      if (v41 == v42)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_23:
  v54 = v77;
  v80 = v77;
  v81 = v38;
  v82 = v35;
  MEMORY[0x193AF1A80](v79, v21);
  v55 = v21;
  v56 = v79[0];
  swift_getKeyPath();
  v80 = v56;
  sub_190D51C20();

  v57 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v58 = &v56[v57];
  v59 = v66;
  sub_19022FD14(v58, v66, &unk_1EAD5E5C0);

  v60 = (*(v74 + 48))(v59, 1, v75);
  sub_19022EEA4(v59, &unk_1EAD5E5C0);
  v79[0] = v54;
  v79[1] = v38;
  v79[2] = v35;
  MEMORY[0x193AF1A80](&v78, v55);
  v61 = v78;
  if (v60 == 1)
  {
    v62 = v67;
    sub_19090AEE4(v65, v67, type metadata accessor for AttributedTapbackItem);
    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v67;
  }

  (*(v74 + 56))(v62, v63, 1, v75);
  sub_190B7DA04(v62);
}

uint64_t sub_19090A21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56DC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for TapbackAttributionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D53A60();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D540E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_19090A484(uint64_t *a1)
{
  type metadata accessor for TapbackAttributionView(0);

  sub_1909045F0(a1);
}

void sub_19090A52C()
{
  sub_19090A6A8(319, &qword_1EAD56B80, type metadata accessor for TapbackAttributionViewModel, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_19090A6A8(319, &qword_1EAD56B88, type metadata accessor for TapbackAttributionAnimationController, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_19090A6A8(319, &qword_1EAD55988, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_19090A6A8(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19090A6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_19090A70C()
{
  result = qword_1EAD56B90;
  if (!qword_1EAD56B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B98);
    sub_190233640(&qword_1EAD56BA0, &qword_1EAD56BA8);
    sub_19090A7C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56B90);
  }

  return result;
}

unint64_t sub_19090A7C4()
{
  result = qword_1EAD56BB0;
  if (!qword_1EAD56BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B00);
    sub_19090A87C();
    sub_190233640(&qword_1EAD56C08, &qword_1EAD56C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BB0);
  }

  return result;
}

unint64_t sub_19090A87C()
{
  result = qword_1EAD56BB8;
  if (!qword_1EAD56BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B60);
    sub_19090A908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BB8);
  }

  return result;
}

unint64_t sub_19090A908()
{
  result = qword_1EAD56BC0;
  if (!qword_1EAD56BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B58);
    sub_19090A994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BC0);
  }

  return result;
}

unint64_t sub_19090A994()
{
  result = qword_1EAD56BC8;
  if (!qword_1EAD56BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B50);
    sub_19090AA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BC8);
  }

  return result;
}

unint64_t sub_19090AA20()
{
  result = qword_1EAD56BD0;
  if (!qword_1EAD56BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B48);
    sub_19090AAAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BD0);
  }

  return result;
}

unint64_t sub_19090AAAC()
{
  result = qword_1EAD56BD8;
  if (!qword_1EAD56BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B40);
    sub_19090AB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BD8);
  }

  return result;
}

unint64_t sub_19090AB38()
{
  result = qword_1EAD56BE0;
  if (!qword_1EAD56BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B38);
    sub_19090ABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BE0);
  }

  return result;
}

unint64_t sub_19090ABC4()
{
  result = qword_1EAD56BE8;
  if (!qword_1EAD56BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56B28);
    sub_190233640(&qword_1EAD56BF0, &qword_1EAD56BF8);
    sub_19090BBC4(&qword_1EAD56C00, type metadata accessor for AttributionViewBackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56BE8);
  }

  return result;
}

unint64_t sub_19090ACD0()
{
  result = qword_1EAD56C50;
  if (!qword_1EAD56C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C48);
    sub_19090AD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56C50);
  }

  return result;
}

unint64_t sub_19090AD5C()
{
  result = qword_1EAD56C58;
  if (!qword_1EAD56C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C60);
    sub_19090ADE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56C58);
  }

  return result;
}

unint64_t sub_19090ADE8()
{
  result = qword_1EAD56C68;
  if (!qword_1EAD56C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C78);
    sub_190233640(&qword_1EAD56C80, &qword_1EAD56C78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56C68);
  }

  return result;
}

uint64_t sub_19090AEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19090AF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19090AFB4()
{
  type metadata accessor for FullAttributionListView(0);

  return sub_190908680();
}

unint64_t sub_19090B03C()
{
  result = qword_1EAD56CA0;
  if (!qword_1EAD56CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C30);
    sub_19090B0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56CA0);
  }

  return result;
}

unint64_t sub_19090B0C8()
{
  result = qword_1EAD56CA8;
  if (!qword_1EAD56CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C18);
    sub_190233640(&qword_1EAD56C88, &qword_1EAD56C18);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_19090B208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56CA8);
  }

  return result;
}

unint64_t sub_19090B208()
{
  result = qword_1EAD56CB0;
  if (!qword_1EAD56CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56CB0);
  }

  return result;
}

double sub_19090B25C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t objectdestroy_66Tm()
{
  v1 = type metadata accessor for FullAttributionListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D53A60();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D540E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19090B450(uint64_t a1)
{
  v2 = type metadata accessor for AttributedTapbackItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19090B4E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FullAttributionListView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_19090B620(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_19090B6B8()
{
  result = qword_1EAD56CF0;
  if (!qword_1EAD56CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56CE0);
    sub_19090B73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56CF0);
  }

  return result;
}

unint64_t sub_19090B73C()
{
  result = qword_1EAD56CF8;
  if (!qword_1EAD56CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D08);
    sub_19090B804();
    swift_getOpaqueTypeConformance2();
    sub_19090BB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56CF8);
  }

  return result;
}

unint64_t sub_19090B804()
{
  result = qword_1EAD56D10;
  if (!qword_1EAD56D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D08);
    sub_19090B890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D10);
  }

  return result;
}

unint64_t sub_19090B890()
{
  result = qword_1EAD56D18;
  if (!qword_1EAD56D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D20);
    sub_19090B91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D18);
  }

  return result;
}

unint64_t sub_19090B91C()
{
  result = qword_1EAD56D28;
  if (!qword_1EAD56D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D30);
    sub_19090B9A8();
    sub_19090BB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D28);
  }

  return result;
}

unint64_t sub_19090B9A8()
{
  result = qword_1EAD56D38;
  if (!qword_1EAD56D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D40);
    sub_19090BA60();
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D38);
  }

  return result;
}

unint64_t sub_19090BA60()
{
  result = qword_1EAD56D48;
  if (!qword_1EAD56D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56D50);
    sub_19090BBC4(&qword_1EAD56D58, type metadata accessor for SingleTapbackSummaryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D48);
  }

  return result;
}

unint64_t sub_19090BB1C()
{
  result = qword_1EAD56D70;
  if (!qword_1EAD56D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D70);
  }

  return result;
}

unint64_t sub_19090BB70()
{
  result = qword_1EAD56D78;
  if (!qword_1EAD56D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D78);
  }

  return result;
}

uint64_t sub_19090BBC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19090BC0C()
{
  type metadata accessor for AttributedTapbackItem();

  return sub_190D50920();
}

unint64_t sub_19090BC74()
{
  result = qword_1EAD56D98;
  if (!qword_1EAD56D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56D98);
  }

  return result;
}

uint64_t sub_19090BCC8()
{
  v1 = *(type metadata accessor for FullAttributionListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for AttributedTapbackItem();

  return sub_1909082CC(v0 + v2);
}

unint64_t sub_19090BDDC()
{
  result = qword_1EAD56DA0;
  if (!qword_1EAD56DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56CC0);
    sub_19090BE94();
    sub_190233640(&qword_1EAD56DB8, &qword_1EAD56DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56DA0);
  }

  return result;
}

unint64_t sub_19090BE94()
{
  result = qword_1EAD56DA8;
  if (!qword_1EAD56DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56C30);
    sub_19090B03C();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD56DB0, &qword_1EAD56CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56DA8);
  }

  return result;
}

uint64_t sub_19090C008()
{
  sub_190D50920();
  sub_190D50820();
}

void (*ConversationListFocusFilterAction.enableFocusFiltering.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_190D50800();
  return sub_19090C0F8;
}

void sub_19090C0F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static ConversationListFocusFilterAction.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EAD56DD8 = a1;
  return result;
}

uint64_t static ConversationListFocusFilterAction.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD45410 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD45418);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ConversationListFocusFilterAction.title.setter(uint64_t a1)
{
  if (qword_1EAD45410 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD45418);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ConversationListFocusFilterAction.title.modify())()
{
  if (qword_1EAD45410 != -1)
  {
    swift_once();
  }

  v0 = sub_190D51460();
  __swift_project_value_buffer(v0, qword_1EAD45418);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_19090C494(uint64_t a1)
{
  if (qword_1EAD45410 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD45418);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ConversationListFocusFilterAction.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v17 = &v16 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_190D51440();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_190D51460();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  sub_190D56E50();
  sub_190D51980();
  (*(v7 + 104))(v9, *MEMORY[0x1E6968DF0], v6);
  sub_190D51470();
  (*(v13 + 56))(v5, 1, 1, v12);
  v14 = sub_190D50B50();
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  return sub_190D50B70();
}

uint64_t sub_19090C8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19082CAEC;

  return MEMORY[0x1EEDB3928](a1, a2, a3);
}

uint64_t sub_19090C978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA4;

  return ConversationListFocusFilterAction.perform()(a1);
}

uint64_t sub_19090CA28(uint64_t a1)
{
  v2 = sub_19022758C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_190D50920();
  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_190D50920();

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationListFocusFilterAction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationListFocusFilterAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19090CCE0(void *a1)
{
  v2 = OBJC_IVAR___CKAcknowledgmentBalloonView_glyphView;
  v3 = *&v1[OBJC_IVAR___CKAcknowledgmentBalloonView_glyphView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = v3;
  [v1 addSubview_];
  [v1 setNeedsPrepareForDisplay];
}

Swift::Void __swiftcall CKAcknowledgmentBalloonView.prepareForReuse()()
{
  v1.super_class = CKAcknowledgmentBalloonView;
  objc_msgSendSuper2(&v1, sel_prepareForReuse);
  [v0 setGlyphView_];
}

unint64_t type metadata accessor for CKAcknowledgmentBalloonView()
{
  result = qword_1EAD56E08;
  if (!qword_1EAD56E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD56E08);
  }

  return result;
}

id sub_19090CED8(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D56C50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a1, v8);
  sub_19090E9D0(a2, v7, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  swift_unknownObjectWeakInit();
  v12(&v2[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape], v11, v8);
  sub_19090E9D0(v7, &v2[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration], type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v13 = type metadata accessor for CKBalloonBaseShapeLayer(0);
  v19.receiver = v2;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  sub_19090EAA0(v7, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = v14;
  v17 = sub_190D56ED0();
  [v16 setName_];

  sub_19090EAA0(a2, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v15(a1, v8);
  return v16;
}

uint64_t sub_19090D168(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_190D56C50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v8, &v2[v11], v4);
  sub_19090EB64();
  LOBYTE(v11) = sub_190D56E30();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

uint64_t sub_19090D34C(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration;
  swift_beginAccess();
  sub_19090E9D0(v1 + v9, v8, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  swift_beginAccess();
  sub_19090EB00(a1, v1 + v9);
  swift_endAccess();
  sub_19090E9D0(v1 + v9, v6, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v10 = _s7ChatKit14CKBalloonLayerC25ColorBalloonConfigurationV2eeoiySbAE_AEtFZ_0(v6, v8);
  sub_19090EAA0(v6, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  if (!v10)
  {
    [v1 setNeedsLayout];
  }

  sub_19090EAA0(a1, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  return sub_19090EAA0(v8, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
}

id sub_19090D4CC(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D56C50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a1, v8);
  sub_19090E9D0(a2, v7, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  swift_unknownObjectWeakInit();
  v12(&v2[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape], v11, v8);
  sub_19090E9D0(v7, &v2[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration], type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v13 = type metadata accessor for CKBalloonBaseShapeLayer(0);
  v19.receiver = v2;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  sub_19090EAA0(v7, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = v14;
  v17 = sub_190D56ED0();
  [v16 setName_];

  sub_19090EAA0(a2, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v15(a1, v8);
  return v16;
}

id sub_19090D73C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  sub_19021834C(v13, v12);
  v6 = a4(0);
  swift_dynamicCast();
  v7 = v11;
  v10.receiver = a1;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v11);

  __swift_destroy_boxed_opaque_existential_0(v13);
  return v8;
}

id sub_19090D814(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19090D87C(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D56C50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a1, v8);
  sub_19090E9D0(a2, v7, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  swift_unknownObjectWeakInit();
  v12(&v2[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape], v11, v8);
  sub_19090E9D0(v7, &v2[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration], type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v13 = type metadata accessor for CKBalloonBaseShapeLayer(0);
  v19.receiver = v2;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  sub_19090EAA0(v7, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = v14;
  v17 = sub_190D56ED0();
  [v16 setName_];

  sub_19090EAA0(a2, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v15(a1, v8);
  return v16;
}

id sub_19090DB64(uint64_t a1)
{
  v3 = sub_190D56C50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_19021834C(a1, v19);
  v10 = type metadata accessor for CKBalloonBaseShapeLayer(0);
  swift_dynamicCast();
  v11 = v18;
  v12 = OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration;
  swift_beginAccess();
  sub_19090E9D0(&v11[v12], v9, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  sub_19090EA38(v9, v1 + OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
  v13 = OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v11[v13], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape, v6, v3);
  v17.receiver = v1;
  v17.super_class = v10;
  v14 = objc_msgSendSuper2(&v17, sel_initWithLayer_, v11);
  [v11 frame];
  [v14 setFrame_];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_19090DE1C()
{
  v1 = v0;
  v46 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D56C50();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D56D20();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CKBalloonBaseShapeLayer(0);
  v50.receiver = v1;
  v50.super_class = v16;
  objc_msgSendSuper2(&v50, sel_layoutSublayers);
  [v1 frame];
  v17 = &v1[OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_configuration];
  swift_beginAccess();
  [v1 setFillColor_];
  v18 = OBJC_IVAR____TtC7ChatKit23CKBalloonBaseShapeLayer_shape;
  swift_beginAccess();
  (*(v10 + 16))(v12, &v1[v18], v9);
  v19 = v6;
  sub_190D56CD0();
  v20 = sub_190D56BD0();
  [v1 setPath_];
  v21 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  sub_19090E8F8(&v17[*(v21 + 20)], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19090E968(v5);
    v22 = *MEMORY[0x1E6979E78];
    v23 = *MEMORY[0x1E6979E98];
    v24 = v22;
    v25 = v23;
    v26 = v24;
    v27 = 0;
    v28 = 0;
    v29 = 0.0;
    v30 = 0.0;
  }

  else
  {
    v31 = v45;
    sub_19090EA38(v5, v45, type metadata accessor for CKBalloonLayer.Stroke);
    v32 = v47;
    sub_19090E9D0(v31, v47, type metadata accessor for CKBalloonLayer.StrokeStyle);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = [objc_opt_self() blackColor];
      v34 = [v33 CGColor];

      sub_19090EAA0(v32, type metadata accessor for CKBalloonLayer.StrokeStyle);
    }

    else
    {
      v34 = *v32;
    }

    v30 = *(v31 + *(v19 + 20));
    v35 = *MEMORY[0x1E6979E98];
    v36 = *MEMORY[0x1E6979E78];
    if (*(v31 + *(v19 + 24)) == 1)
    {
      v37 = v35;
      v38 = v36;
      v25 = v37;
      v26 = v38;
      v27 = v34;
      sub_190D56C80();
      sub_190D56C70();
      v29 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_190DD55F0;
      *(v28 + 32) = sub_190D51C70();
      sub_19090EAA0(v31, type metadata accessor for CKBalloonLayer.Stroke);
    }

    else
    {
      v40 = v35;
      v41 = v36;
      v25 = v40;
      v26 = v41;
      v27 = v34;
      sub_19090EAA0(v31, type metadata accessor for CKBalloonLayer.Stroke);
      v28 = 0;
      v29 = 0.0;
    }
  }

  [v1 setStrokeColor_];

  [v1 setLineWidth_];
  [v1 setLineJoin_];

  [v1 setLineCap_];
  [v1 setLineDashPhase_];
  if (v28)
  {
    sub_19021DC70();
    v42 = sub_190D57160();
  }

  else
  {
    v42 = 0;
  }

  [v1 setLineDashPattern_];

  return (*(v48 + 8))(v15, v49);
}

id sub_19090E4E8(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong shouldAnimatePathChanges];
    swift_unknownObjectRelease();
    if (a1 == 1752457584 && a2 == 0xE400000000000000)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (a1 == 1752457584 && a2 == 0xE400000000000000)
    {
      goto LABEL_10;
    }
  }

  if ((sub_190D58760() & 1) == 0)
  {
LABEL_10:
    v9 = sub_190D56ED0();
    v11.receiver = v2;
    v11.super_class = type metadata accessor for CKBalloonBaseShapeLayer(0);
    v8 = objc_msgSendSuper2(&v11, sel_actionForKey_, v9);

    return v8;
  }

LABEL_8:
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = sub_190D56ED0();
  v8 = [objc_opt_self() animationWithKeyPath_];

  return v8;
}

uint64_t sub_19090E820()
{
  result = sub_190D56C50();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19090E8F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19090E968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19090E9D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19090EA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19090EAA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19090EB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_19090EB64()
{
  result = qword_1EAD46760;
  if (!qword_1EAD46760)
  {
    sub_190D56C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46760);
  }

  return result;
}

uint64_t sub_19090EC08()
{
  v1 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19090ECA0(uint64_t a1)
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19090ED98()
{
  v1 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19090EE30(char a1)
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19090EF28()
{
  v1 = OBJC_IVAR___CKTapbackPileViewModel_useTailOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19090EFC0(char a1)
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_useTailOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19090F0B8()
{
  v1 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19090F150(char a1)
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_19090F32C()
{
  v1 = [*(v0 + OBJC_IVAR___CKTapbackPileViewModel_aggregateAcknowledgmentChatItem) sentTapbackChatItem];
  v2 = [v1 tapback];

  return v2;
}

id TapbackPileViewModel.__allocating_init(aggregateAcknowledgmentChatItem:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_19090FBE0(a1);

  return v4;
}

id TapbackPileViewModel.init(aggregateAcknowledgmentChatItem:)(void *a1)
{
  v2 = sub_19090FBE0(a1);

  return v2;
}

uint64_t sub_19090F434(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 >> 62)
  {
    goto LABEL_28;
  }

  result = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != a4)
  {
    do
    {
      v22 = a5;
      v23 = a1;
      v9 = *a3;
      v21 = a4;
      a1 = *a3 & 0xFFFFFFFFFFFFFF8;
      if (*a3 >> 62)
      {
        v10 = sub_190D581C0();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_190D52690();
      v11 = 0;
      while (1)
      {
        v12 = v11;
        if (v10 == v11)
        {
LABEL_14:

          if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
          {
            goto LABEL_32;
          }

          for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
          {
            v17 = i - v23;
            if (!__OFSUB__(i, v23))
            {
              break;
            }

            __break(1u);
LABEL_32:
            ;
          }

          if (*a3 >> 62)
          {
            result = sub_190D581C0();
          }

          else
          {
            result = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (__OFSUB__(v21, result))
          {
            __break(1u);
          }

          else
          {
            if (v10 != v12 && v21 - result < v17)
            {
              return result;
            }

            v18 = a2;
            MEMORY[0x193AF29E0]();
            if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              return sub_190D571E0();
            }
          }

          sub_190D571A0();
          return sub_190D571E0();
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x193AF3B90](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v13 = *(v9 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v15 = [v13 isEqualToTapback_];

        v11 = v12 + 1;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v19 = a4;
      v20 = a5;
      result = sub_190D581C0();
      a5 = v20;
      a4 = v19;
    }

    while (result != v19);
  }

  return result;
}

id TapbackPileViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackPileViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPileViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19090F768(void *a1)
{
  v1 = [a1 acknowledgments];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    sub_190910034();
    v4 = sub_190D57180();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = [objc_opt_self() sharedManager];
  v6 = v5;
  if (v5 && [v5 isFeatureEnabled])
  {
    v27 = v2;
    if (v4 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v25 = v6;
      v2 = 0;
      v6 = &selRef_systemFontOfSize_weight_design_;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x193AF3B90](v2, v4);
        }

        else
        {
          if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v8 = *(v4 + 8 * v2 + 32);
        }

        v9 = v8;
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v11 = [v8 tapback];
        if (v11)
        {
          v12 = v11;
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = [v13 commSafetySensitivityState];

            if (v14 == 1)
            {

              goto LABEL_11;
            }
          }

          else
          {
          }
        }

        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
LABEL_11:
        ++v2;
        if (v10 == i)
        {
          v6 = v25;
          v15 = v27;
          v2 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_26:

    v4 = v15;
  }

  v28 = v2;
  if (v4 >> 62)
  {
    goto LABEL_46;
  }

  v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_29:
    v26 = v6;
    v17 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AF3B90](v17, v4);
      }

      else
      {
        if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v18 = *(v4 + 8 * v17 + 32);
      }

      v19 = v18;
      v6 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v16 = sub_190D581C0();
        if (!v16)
        {
          break;
        }

        goto LABEL_29;
      }

      v20 = [v18 tapback];
      if (v20)
      {
        v21 = v20;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass() || ([v19 isFromMe] & 1) != 0)
        {
        }

        else
        {
          v22 = sub_190D577B0();

          if ((v22 & 1) == 0)
          {

            goto LABEL_32;
          }
        }
      }

      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
LABEL_32:
      ++v17;
      if (v6 == v16)
      {
        v6 = v26;
        v23 = v28;
        goto LABEL_48;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_48:

  return v23;
}

uint64_t sub_19090FAD0(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_190D581C0();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v3 = 0;
  while (!__OFSUB__(v2--, 1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AF3B90](v2, a1);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 32 + 8 * v2);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    sub_19090F434(v3, v5, &v8, 3, a1);

    ++v3;
    if (!v2)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return v8;
}

id sub_19090FBE0(void *a1)
{
  v2 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  *&v1[OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount] = 0;
  v3 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  v1[OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection] = 0;
  v1[OBJC_IVAR___CKTapbackPileViewModel_useTailOffset] = 0;
  v4 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  v1[OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter] = 0;
  *&v1[OBJC_IVAR___CKTapbackPileViewModel_aggregateAcknowledgmentChatItem] = a1;
  v5 = a1;
  v6 = sub_19090F768(v5);
  *&v1[OBJC_IVAR___CKTapbackPileViewModel_tapbackChatItems] = sub_19090FAD0(v6);
  if (v6 >> 62)
  {
    v7 = sub_190D581C0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v7 > 3;
  if (v7 >= 3)
  {
    v7 = 3;
  }

  swift_beginAccess();
  *&v1[v2] = v7;
  swift_beginAccess();
  v1[v4] = v8;
  v9 = [v5 balloonOrientation] == 0;
  swift_beginAccess();
  v1[v3] = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for TapbackPileViewModel();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_190910034()
{
  result = qword_1EAD5E5E0;
  if (!qword_1EAD5E5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5E5E0);
  }

  return result;
}

id sub_190910284()
{
  sub_1909794D0();
  v2 = v1;
  v3 = [objc_opt_self() generalPasteboard];
  sub_1908B8F40();
  v4 = sub_190D57160();
  [v3 setItemProviders_];

  if (v2 >> 62)
  {
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return [v0 completeUserInteractionTaskWithSuccess:v5 != 0 error:0];
}

id sub_190910418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridCopyAssetActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190910470(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize] == 0.0 && *&v2[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize + 8] == 0.0)
  {
    v5.receiver = v2;
    v5.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v5, sel_sizeThatFits_, a1, a2);
  }
}

unint64_t sub_190910508(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v33 = v3;
    while (1)
    {
      if (v37)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x193AF3B90](v4, v32);
      }

      else
      {
        if (v4 >= *(v36 + 16))
        {
          goto LABEL_46;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v35 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = [isUniquelyReferenced_nonNull_bridgeObject sublayers];
      if (v8)
      {
        v9 = v8;
        sub_1902188FC(0, &qword_1EAD46528);
        v10 = sub_190D57180();

        v11 = sub_190910508(v10);
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      v39[0] = v11;
      v12 = v6;
      MEMORY[0x193AF29E0]();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      v13 = v39[0];

      v14 = v13 >> 62;
      if (v13 >> 62)
      {
        v15 = sub_190D581C0();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_190D581C0();
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
LABEL_44:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
          goto LABEL_44;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v16)
        {
          v18 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

LABEL_24:
        sub_190D581C0();
        goto LABEL_25;
      }

      if (v16)
      {
        goto LABEL_24;
      }

LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_190D58310();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v40 = v5;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v14)
      {
        v22 = v18;
        isUniquelyReferenced_nonNull_bridgeObject = sub_190D581C0();
        v18 = v22;
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v20 >> 1) - v19) < v15)
          {
            goto LABEL_48;
          }

          v23 = v18 + 8 * v19 + 32;
          v38 = v2;
          v34 = v18;
          if (v14)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            sub_190233640(&qword_1EAD56E78, &qword_1EAD56E70);
            for (i = 0; i != v21; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56E70);
              v25 = sub_19082FBA0(v39, i, v13);
              v27 = *v26;
              (v25)(v39, 0);
              *(v23 + 8 * i) = v27;
            }
          }

          else
          {
            sub_1902188FC(0, &qword_1EAD46528);
            swift_arrayInitWithCopy();
          }

          if (v15 < 1)
          {
            v2 = v38;
            v3 = v33;
            v5 = v40;
          }

          else
          {
            v3 = v33;
            v28 = *(v34 + 16);
            v7 = __OFADD__(v28, v15);
            v29 = v28 + v15;
            v2 = v38;
            v5 = v40;
            if (v7)
            {
              goto LABEL_49;
            }

            *(v34 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_30;
        }
      }

      v5 = v40;
      if (v15 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_190D581C0();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_190910954()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer;
  v3 = *&v0[OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer];
  if (v3)
  {
    [v3 removeFromSuperlayer];
  }

  v4 = *&v0[OBJC_IVAR____TtC7ChatKit16DynamicClockView_package];
  if (v4)
  {
    v26 = v4;
    v5 = [v26 rootLayer];
    if (v5)
    {
      v6 = v5;
      [v5 setGeometryFlipped_];
      [v6 setContentsGravity_];
      [v6 setMasksToBounds_];
      v7 = *&v1[v2];
      *&v1[v2] = v6;
      v8 = v6;

      [v8 frame];
      v9 = &v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize];
      *v9 = v10;
      *(v9 + 1) = v11;
      v12 = sub_190910F4C(0x6762206B636F6C63, 0xE800000000000000);
      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = v12;
      v14 = [*&v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_behavior] CGColor];
      [v13 setBackgroundColor_];

      v15 = [v1 layer];
      [v15 setShouldRasterize_];

      v16 = [v1 layer];
      v17 = objc_opt_self();
      v18 = [v17 mainScreen];
      [v18 scale];
      v20 = v19;

      [v16 setContentsScale_];
      v21 = [v1 layer];
      v22 = [v17 mainScreen];
      [v22 scale];
      v24 = v23;

      [v21 setRasterizationScale_];
      v25 = [v1 layer];
      [v25 addSublayer_];

      [v1 layoutIfNeeded];
    }
  }
}

void sub_190910C48(uint64_t a1, int a2)
{
  v24 = a1;
  v23 = a2;
  v2 = sub_190D51AE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51B00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51AC0();
  v10 = *(v3 + 104);
  v10(v5, *MEMORY[0x1E6969A58], v2);
  v22 = sub_190D51AF0();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_190D51AC0();
  v10(v5, *MEMORY[0x1E6969A88], v2);
  v13 = sub_190D51AF0();
  v11(v5, v2);
  v14 = v25;
  v12(v9, v6);
  v15 = OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer;
  v16 = *(v14 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer);
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16;
  v18 = sub_190910F4C(0x68206574756E696DLL, 0xEB00000000646E61);

  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = *(v14 + v15);
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = sub_190910F4C(0x6E61682072756F68, 0xE900000000000064);

  if (v21)
  {
    sub_1909110D8();
    if (!__OFADD__(60 * (v22 % 12), v13))
    {
      sub_1909110D8();

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

void *sub_190910F4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1909126C0(v2);
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 name];
      if (v12)
      {
        v13 = v12;
        v14 = a2;
        v15 = sub_190D56F10();
        v17 = v16;

        if (v15 == a1 && v17 == v14)
        {

LABEL_18:

          return v10;
        }

        a2 = v14;
        v19 = sub_190D58760();

        if (v19)
        {
          goto LABEL_18;
        }
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return 0;
}

void sub_1909110D8()
{
  v1 = sub_190D56ED0();
  v2 = [v0 animationForKey_];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      if ([v3 toValue])
      {
        sub_190D58140();
        swift_unknownObjectRelease();
        sub_190824530(&v4, &v5);
        swift_dynamicCast();
        sub_1909127BC();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_1909127BC();
}

id sub_190911290(void *a1, void *a2)
{
  v3 = v2;
  v31 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_190D51840();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D51B00();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v3[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v3[OBJC_IVAR____TtC7ChatKit16DynamicClockView_package] = 0;
  v14 = [objc_opt_self() currentCalendar];
  sub_190D51A70();

  sub_190D517F0();
  sub_190D519F0();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  *&v3[OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer] = 0;
  v15 = &v3[OBJC_IVAR____TtC7ChatKit16DynamicClockView_behavior];
  v16 = ObjectType;
  v17 = v31;
  *v15 = a1;
  *(v15 + 1) = v17;
  v32.receiver = v3;
  v32.super_class = v16;
  v18 = a1;
  v19 = v17;
  v20 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v20 setUserInteractionEnabled_];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 clearColor];
  [v22 setBackgroundColor_];

  sub_190911618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_190DD1D90;
  v25 = sub_190D53270();
  v26 = MEMORY[0x1E69DC0F8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v16;
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v22;
}

uint64_t sub_190911618()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v23[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23[-v10];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_190D515B0();

    (*(v3 + 32))(v11, v9, v2);
    sub_1902188FC(0, &unk_1EAD44E50);
    (*(v3 + 16))(v6, v11, v2);
    v17 = sub_190D56F10();
    v19 = sub_190AD483C(v6, v17, v18, 0);
    v20 = *(v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_package);
    *(v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_package) = v19;
    v21 = v19;

    sub_190910954();
    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1909118D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_190911618();
  }
}

void sub_190911974()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 disableActions];
    [v3 setDisableActions_];
    [v1 bounds];
    if (v7 / *&v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize + 8] >= v6 / *&v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize])
    {
      v8 = v6 / *&v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize];
    }

    else
    {
      v8 = v7 / *&v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize + 8];
    }

    [v4 setPosition_];
    CATransform3DMakeScale(&v9, v8, v8, 1.0);
    [v4 setTransform_];
    [v3 setDisableActions_];
  }
}

void sub_190911B44()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_190D56770();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D56760();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_190D567F0();
  v64 = *(v69 - 8);
  v11 = MEMORY[0x1EEE9AC00](v69);
  v60 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v50 - v13;
  v14 = sub_190D51840();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  v71.receiver = v1;
  v71.super_class = ObjectType;
  objc_msgSendSuper2(&v71, sel_didMoveToWindow);
  v20 = [v1 window];
  if (v20)
  {
    v56 = v6;
    v57 = v4;
    v58 = v3;

    v21 = OBJC_IVAR____TtC7ChatKit16DynamicClockView_currentDate;
    swift_beginAccess();
    v55 = v15;
    v22 = *(v15 + 16);
    v23 = v19;
    v68 = v14;
    v54 = v22;
    v22(v19, &v1[v21], v14);
    v24 = objc_opt_self();
    [v24 begin];
    v25 = OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer;
    v26 = *&v1[OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer];
    if (v26)
    {
      v27 = v26;
      v28 = sub_190910F4C(0x68206574756E696DLL, 0xEB00000000646E61);

      if (v28)
      {
        v29 = *&v1[v25];
        if (v29)
        {
          v30 = v28;
          v31 = v23;
          v32 = v29;
          v33 = sub_190910F4C(0x6E61682072756F68, 0xE900000000000064);

          v34 = v68;
          if (v33)
          {
            v53 = v30;
            sub_1909110D8();
            sub_1909110D8();
            [v24 commit];
            sub_1902188FC(0, &qword_1EAD46670);
            v51 = sub_190D57870();
            v35 = v60;
            sub_190D567B0();
            *v10 = 200;
            v36 = *MEMORY[0x1E69E7F38];
            v52 = v33;
            v38 = v61;
            v37 = v62;
            (*(v61 + 104))(v10, v36, v62);
            v39 = v63;
            sub_190D567C0();
            (*(v38 + 8))(v10, v37);
            v64 = *(v64 + 8);
            (v64)(v35, v69);
            v40 = v59;
            v54(v59, v31, v34);
            v41 = v55;
            v42 = (*(v55 + 80) + 16) & ~*(v55 + 80);
            v62 = v31;
            v43 = swift_allocObject();
            (*(v41 + 32))(v43 + v42, v40, v34);
            *(v43 + ((v16 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
            aBlock[4] = sub_190912634;
            aBlock[5] = v43;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_190840E6C;
            aBlock[3] = &block_descriptor_34;
            v44 = _Block_copy(aBlock);
            v45 = v1;

            v46 = v65;
            sub_190D56790();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_190840DB0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
            sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
            v47 = v67;
            v48 = v58;
            sub_190D58170();
            v49 = v51;
            MEMORY[0x193AF30E0](v39, v46, v47, v44);
            _Block_release(v44);

            (*(v57 + 8))(v47, v48);
            (*(v66 + 8))(v46, v56);
            (v64)(v39, v69);
            (*(v41 + 8))(v62, v68);
            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_1909122D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_190D51840();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC7ChatKit16DynamicClockView_currentDate;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, a2 + v7, v3);
  v9 = sub_190D517D0();
  v10 = *(v4 + 8);
  result = v10(v6, v3);
  if (v9)
  {
    v8(v6, a2 + v7, v3);
    sub_190910C48(v6, 1);
    return v10(v6, v3);
  }

  return result;
}

uint64_t type metadata accessor for DynamicClockView()
{
  result = qword_1EAD56E60;
  if (!qword_1EAD56E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190912574()
{
  result = sub_190D51840();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190912634()
{
  v1 = *(sub_190D51840() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1909122D0(v0 + v2, v3);
}

unint64_t sub_1909126C0(void *a1)
{
  v2 = [a1 sublayers];
  if (v2)
  {
    v3 = v2;
    sub_1902188FC(0, &qword_1EAD46528);
    v4 = sub_190D57180();

    v5 = sub_190910508(v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  MEMORY[0x193AF29E0]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  return v5;
}

void sub_1909127BC()
{
  v1 = sub_190D56ED0();
  v2 = [objc_opt_self() animationWithKeyPath_];

  v3 = v2;
  [v3 setDuration_];
  [v3 setMass_];
  [v3 setStiffness_];
  [v3 setDamping_];
  [v3 setRepeatCount_];
  [v3 setFillMode_];
  [v3 setRemovedOnCompletion_];

  v4 = v3;
  v5 = sub_190D51C70();
  [v4 setToValue_];

  v6 = sub_190D56ED0();
  v7 = [v0 animationForKey_];

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      if ([v8 toValue])
      {
        sub_190D58140();
        swift_unknownObjectRelease();
        __swift_project_boxed_opaque_existential_1(v11, v11[3]);
        v9 = sub_190D58740();
        __swift_destroy_boxed_opaque_existential_0(v11);
      }

      else
      {
        v9 = 0;
      }

      [v4 setFromValue_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }

  v10 = sub_190D56ED0();
  [v0 addAnimation:v4 forKey:v10];
}

void sub_190912A50(void *a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_behavior;
  v5 = *(v2 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_behavior);
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_behavior + 8);
  *v4 = a1;
  *(v4 + 8) = a2;
  v7 = a1;
  v8 = a2;

  v9 = *(v2 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = sub_190910F4C(0x6762206B636F6C63, 0xE800000000000000);

  if (!v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = [*v4 CGColor];
  [v11 setBackgroundColor_];
}

void sub_190912B38()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51B00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_package) = 0;
  v11 = [objc_opt_self() currentCalendar];
  sub_190D51A70();

  sub_190D517F0();
  sub_190D519F0();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  *(v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer) = 0;
  sub_190D58510();
  __break(1u);
}

void sub_190912D44()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51B00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_originalSize);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_package) = 0;
  v11 = [objc_opt_self() currentCalendar];
  sub_190D51A70();

  sub_190D517F0();
  sub_190D519F0();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  *(v1 + OBJC_IVAR____TtC7ChatKit16DynamicClockView_packageLayer) = 0;
  sub_190D58510();
  __break(1u);
}

id sub_190912F58()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD56E80 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190913000()
{
  v0 = objc_opt_self();

  return [v0 learnMorePressedFromError_];
}

void sub_190913114()
{
  sub_190C162FC(*&v0[OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView_status], *&v0[OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView_handles]);
  v1 = CKFrameworkBundle();
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = sub_190D51210();
  v5 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_190DD1D90;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_19081EA10();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  sub_190D52690();
  sub_190D56EE0();

  v7 = objc_opt_self();
  if (qword_1EAD519F0 != -1)
  {
    swift_once();
  }

  v8 = [qword_1EAD56E80 headerFont];
  v9 = [v7 font:v8 adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC58]];

  if (!v9)
  {
    goto LABEL_14;
  }

  v28 = v0;
  v29 = [objc_opt_self() secondaryLabelColor];
  v10 = [v7 sharedBehaviors];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v10 theme];

  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = [v12 appTintColor];

  if (!v13)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();

  v16 = [v14 rangeOfString_];
  v18 = v17;

  v19 = sub_190D56ED0();
  v20 = [v19 length];

  v21 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v22 = sub_190D56ED0();

  v23 = [v21 initWithString_];

  [v23 addAttribute:*MEMORY[0x1E69DB648] value:v9 range:{0, v20}];
  v24 = *MEMORY[0x1E69DB650];
  [v23 addAttribute:*MEMORY[0x1E69DB650] value:v29 range:{0, v20}];
  v25 = *MEMORY[0x1E69DE720];
  v26 = sub_190D56ED0();
  [v23 addAttribute:v25 value:v26 range:{v16, v18}];

  [v23 addAttribute:v24 value:v13 range:{v16, v18}];
  [v28 setTextColor_];
  v30 = v23;
  [v28 setAttributedText_];
  v27 = [v30 string];

  if (!v27)
  {
    sub_190D56F10();
    v27 = sub_190D56ED0();
  }

  [v28 setAccessibilityLabel_];

  [v28 setDelegate_];
}

id sub_190913664()
{
  v2.receiver = v0;
  v2.super_class = _s14FooterTextViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190913708(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = _s14FooterTextViewCMa();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView_status] = a2;
  *&v8[OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView_conversation] = a3;
  *&v8[OBJC_IVAR____TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView_handles] = a4;
  v17.receiver = v8;
  v17.super_class = v7;
  sub_190D52690();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v17, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
  [v10 setEditable_];
  v11 = v10;
  [v11 _setInteractiveTextSelectionDisabled_];
  [v11 setUserInteractionEnabled_];
  v12 = [v11 textContainer];
  [v12 setLineFragmentPadding_];

  [v11 setTextContainerInset_];
  [v11 setBackgroundColor_];

  v13 = v11;
  v14 = [v13 textColor];
  [v13 setTextColor_];

  [v13 setScrollEnabled_];
  [v13 setDelegate_];
  [v13 setIsAccessibilityElement_];
  v15 = sub_190D56ED0();
  [v13 setAccessibilityIdentifier_];

  sub_190913114();
  return v13;
}

double sub_190913928(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 0.0;
  if (a2)
  {
    *&a1 = 0.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t sub_190913974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190913ACC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1909139D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190913ACC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190913A3C()
{
  sub_190913ACC();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190913A78()
{
  result = qword_1EAD56EA0;
  if (!qword_1EAD56EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56EA0);
  }

  return result;
}

unint64_t sub_190913ACC()
{
  result = qword_1EAD56EA8;
  if (!qword_1EAD56EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56EA8);
  }

  return result;
}

uint64_t sub_190913B20(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v8 = [objc_allocWithZone(swift_getObjectType()) initWithFrame_];
  v8[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesContent] = a1;
  v9 = v6[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground];
  v10 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
  swift_beginAccess();
  v8[v10] = v9;
  v47 = v8;
  [v6 transcriptBackgroundLuminance];
  [v47 setTranscriptBackgroundLuminance_];

  v11 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut;
  v47[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut] = v6[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut];
  v12 = [v47 layer];
  [v12 setAllowsGroupBlending_];

  v45 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
  v13 = *&v47[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v15 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter;
  v16 = *&v47[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v16;
  sub_190D52690();
  v17 = v16;
  sub_190CAA054(inited);
  if (v13 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v19 = 0;
    while ((v13 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x193AF3B90](v19, v13);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v20[OBJC_IVAR___CKTapbackPlatterView_wantsBorderDestOut] = v47[v11];

      ++v19;
      if (v21 == i)
      {
        goto LABEL_14;
      }
    }

    if (v19 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v20 = *(v13 + 8 * v19 + 32);
    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v23 = *&v47[v45];
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_190DD55F0;
  v25 = *&v47[v15];
  *(v24 + 32) = v25;
  sub_190D52690();
  v26 = v25;
  sub_190CAA054(v24);
  if (v23 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_190D581C0())
  {
    v28 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x193AF3B90](v28, v23);
      }

      else
      {
        if (v28 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v29 = *(v23 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v33 = *&v30[OBJC_IVAR___CKTapbackPlatterView_gradientView];
      v34 = swift_unknownObjectWeakLoadStrong();
      [v33 setReferenceView_];

      ++v28;
      if (v31 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v35 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
  swift_beginAccess();
  LODWORD(v35) = *(v46 + v35);
  v36 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
  swift_beginAccess();
  v37 = v47[v36];
  v47[v36] = v35;
  if (v35 != v37)
  {
    [v47 setNeedsPrepareForDisplay];
  }

  v38 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  LOBYTE(v38) = *(v46 + v38);
  v39 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  v47[v39] = v38;
  v40 = *&v47[v45];
  if (v40 >> 62)
  {
    result = sub_190D581C0();
    if (!result)
    {
      goto LABEL_35;
    }
  }

  else
  {
    result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_35;
    }
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    v42 = MEMORY[0x193AF3B90](0, v40);
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v42 = *(v40 + 32);
  }

  v42[OBJC_IVAR___CKTapbackPlatterView_showTail] = (v47[v39] & 1) == 0;
  sub_190C177F4();

LABEL_35:
  [v47 setNeedsPrepareForDisplay];
  v43 = *(v46 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel);
  if (v43)
  {
    v44 = *(v43 + OBJC_IVAR___CKTapbackPileViewModel_aggregateAcknowledgmentChatItem);
  }

  else
  {
    v44 = 0;
  }

  [v47 configureForAggregateAcknowledgmentChatItem_];

  [v47 prepareForDisplay];
  [v47 setNeedsLayout];
  [v47 layoutIfNeeded];
  return v47;
}

id AggregateAcknowledgmentGradientBalloonView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AggregateAcknowledgmentGradientBalloonView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_190914204()
{
  v1 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190914248(char a1)
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1909142F8()
{
  v1 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_19091433C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  v2[v4] = a1;
  v5 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  if (v5 >> 62)
  {
    result = sub_190D581C0();
    if (!result)
    {
      return [v2 setNeedsPrepareForDisplay];
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return [v2 setNeedsPrepareForDisplay];
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    v7 = MEMORY[0x193AF3B90](0, v5);

    goto LABEL_6;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_6:
    v7[OBJC_IVAR___CKTapbackPlatterView_showTail] = (v2[v4] & 1) == 0;
    sub_190C177F4();

    return [v2 setNeedsPrepareForDisplay];
  }

  __break(1u);
  return result;
}

void (*sub_190914448(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1909144D0;
}

void sub_1909144D0(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(v3 + 24) + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    if (v4 >> 62)
    {
      if (sub_190D581C0())
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v4 & 0xC000000000000001) != 0)
      {
        sub_190D52690();
        v5 = MEMORY[0x193AF3B90](0, v4);
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v5 = *(v4 + 32);
      }

      v5[OBJC_IVAR___CKTapbackPlatterView_showTail] = (*(*(v3 + 24) + *(v3 + 32)) & 1) == 0;
      sub_190C177F4();
    }

    [*(v3 + 24) setNeedsPrepareForDisplay];
  }

  free(v3);
}

void sub_190914624(void *a1)
{
  sub_1909197A8();
}

void (*sub_19091465C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientReferenceView;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 64) = swift_unknownObjectWeakLoadStrong();
  return sub_1909146F4;
}

void sub_1909146F4(void **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 8);
  v4 = *v5;
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v6 = v3[9];
    swift_endAccess();

    v7 = *(v6 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v9 = *(v6 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v9;
    sub_190D52690();
    v10 = v9;
    sub_190CAA054(inited);
    v11 = v7;
    if (v7 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x193AF3B90](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = i;
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v19 = *&v15[OBJC_IVAR___CKTapbackPlatterView_gradientView];
        v20 = swift_unknownObjectWeakLoadStrong();
        [v19 setReferenceView_];

        i = v17;
        ++v13;
        if (v16 == v17)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }

  free(v3);
}

uint64_t sub_190914900()
{
  v1 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190914944(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsPrepareForDisplay];
  }

  return result;
}

void (*sub_1909149B4(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190914A48;
}

void sub_190914A48(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsPrepareForDisplay];
  }

  free(v1);
}

uint64_t sub_190914AA4()
{
  v1 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_190914AF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_19091A088;
}

uint64_t sub_190914B88()
{
  v1 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190914BD8(unsigned __int8 a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  v6 = v2[v4];
  v2[v4] = a1;
  if (v6 != a1)
  {
    return [v2 setNeedsPrepareForDisplay];
  }

  return result;
}

uint64_t (*sub_190914C40(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190914CD4;
}

void sub_190914CD8(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsPrepareForDisplay];
  }

  free(v1);
}

void sub_190914D38(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for TapbackPileViewModel());
  v5 = a1;
  v6 = sub_19090FBE0(v5);
  v32 = v5;

  v7 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel];
  *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel] = v6;
  v8 = v6;

  v9 = *&v8[OBJC_IVAR___CKTapbackPileViewModel_tapbackChatItems];
  v35 = 0;
  v34 = v2;
  v31 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
  v10 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  v33 = v8;
  if (v9 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    sub_190D52690();
    sub_190D52690();
    if (!i)
    {
      break;
    }

    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](v12 - 4, v9);
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v14 = *(v9 + 8 * v12);
      }

      v15 = v14;
      v16 = v12 - 3;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v10 >> 62)
      {
        if (v13 == sub_190D581C0())
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      else if (v13 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AF3B90](v12 - 4, v10);
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v17 = *(v10 + 8 * v12);
      }

      v18 = v17;
      sub_190916D38(v15, v17, v2, &v35);

      ++v12;
      if (v16 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_20:

LABEL_22:
  v19 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  if (v8[v19])
  {
    if ([v32 includesFromMe] && (v35 & 1) == 0)
    {
      v20 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
      v21 = &v20[OBJC_IVAR___CKTapbackPlatterView_isSent];
      v24 = v20[OBJC_IVAR___CKTapbackPlatterView_isSent];
      v23 = 1;
      v20[OBJC_IVAR___CKTapbackPlatterView_isSent] = 1;
      if (v24)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
      v21 = &v20[OBJC_IVAR___CKTapbackPlatterView_isSent];
      v22 = v20[OBJC_IVAR___CKTapbackPlatterView_isSent];
      v20[OBJC_IVAR___CKTapbackPlatterView_isSent] = 0;
      if (v22 != 1)
      {
        goto LABEL_29;
      }

      v23 = 0;
    }

    [*&v20[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy] setHidden_];
    [*&v20[OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy] setHidden_];
    [*&v20[OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy] setHidden_];
    [v20 setNeedsLayout];
  }

LABEL_29:
  sub_190915188(v32);
  v25 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
  swift_beginAccess();
  v26 = v2[v25];
  v2[v25] = -1;
  if (v26 != 255)
  {
    [v2 setNeedsPrepareForDisplay];
  }

  v27 = [v32 parentIsOrganicLayout];
  v28 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  v2[v28] = v27;
  v29 = *&v2[v31];
  if (v29 >> 62)
  {
    if (!sub_190D581C0())
    {
      goto LABEL_37;
    }
  }

  else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    [v34 setNeedsPrepareForDisplay];

    return;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    v30 = MEMORY[0x193AF3B90](0, v29);

    goto LABEL_36;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
LABEL_36:
    v30[OBJC_IVAR___CKTapbackPlatterView_showTail] = (*(v34 + v28) & 1) == 0;
    sub_190C177F4();

    goto LABEL_37;
  }

  __break(1u);
}

void sub_190915188(void *a1)
{
  v2 = v1;
  v3 = [a1 sentTapbackChatItem];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 serviceName];
    if (v5)
    {
      v6 = v5;
      v7 = sub_190D56F10();
      v9 = v8;
      v10 = [objc_opt_self() serviceWithName_];

      if (v10)
      {

        v11 = [v10 __ck_displayColor];
        v12 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
        swift_beginAccess();
        v13 = v2[v12];
        v2[v12] = v11;
        if (v13 != v11)
        {
          [v2 setNeedsPrepareForDisplay];
        }

        return;
      }

      if (qword_1EAD52000 != -1)
      {
        swift_once();
      }

      v26 = sub_190D53040();
      __swift_project_value_buffer(v26, qword_1EAD9E5C0);
      sub_190D52690();
      v17 = sub_190D53020();
      v27 = sub_190D576A0();

      if (!os_log_type_enabled(v17, v27))
      {

LABEL_22:

        v33 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
        swift_beginAccess();
        v34 = v2[v33];
        v2[v33] = 1;
        if (v34 != 1)
        {
          [v2 setNeedsPrepareForDisplay];
        }

        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35[0] = v29;
      *v28 = 136315138;
      v30 = sub_19021D9F8(v7, v9, v35);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_19020E000, v17, v27, "Unable to find service with name=%s. Using blue color.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x193AF7A40](v29, -1, -1);
      v31 = v28;
    }

    else
    {
      if (qword_1EAD52000 != -1)
      {
        swift_once();
      }

      v16 = sub_190D53040();
      __swift_project_value_buffer(v16, qword_1EAD9E5C0);
      v4 = v4;
      v17 = sub_190D53020();
      v18 = sub_190D576A0();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_22;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = 136315138;
      v21 = [v4 guid];
      if (v21)
      {
        v22 = v21;
        v23 = sub_190D56F10();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v32 = sub_19021D9F8(v23, v25, v35);

      *(v19 + 4) = v32;
      _os_log_impl(&dword_19020E000, v17, v18, "Chat item missing service guid=%s. Using blue color.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x193AF7A40](v20, -1, -1);
      v31 = v19;
    }

    MEMORY[0x193AF7A40](v31, -1, -1);
    goto LABEL_22;
  }

  v14 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
  swift_beginAccess();
  v15 = v2[v14];
  v2[v14] = 1;
  if (v15 != 1)
  {
    [v2 setNeedsPrepareForDisplay];
  }
}

void sub_19091559C()
{
  v1 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v29 = v0;
  v3 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v3;
  sub_190D52690();
  v4 = v3;
  sub_190CAA054(inited);
  v5 = v1;
  v30 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = &selRef_isCharacterCountHidden;
    v28 = v5;
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x193AF3B90](v7, v5);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v5 + 8 * v7 + 32);
      }

      v12 = v11;
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v11 v10[174]] || (v14 = objc_msgSend(v12, sel_superview)) == 0)
      {
      }

      else
      {
        v15 = v14;
        v16 = i;
        v17 = v8;
        v18 = v10;
        sub_1902188FC(0, &qword_1EAD46530);
        v19 = v29;
        v20 = sub_190D57D90();

        if (v20)
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        else
        {
        }

        v10 = v18;
        v8 = v17;
        i = v16;
        v5 = v28;
      }

      ++v7;
      if (v13 == i)
      {
        v21 = v30;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
    if (sub_190D581C0())
    {
      goto LABEL_25;
    }

LABEL_33:

    return;
  }

  if (!*(v21 + 16))
  {
    goto LABEL_33;
  }

LABEL_25:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x193AF3B90](0, v21);
  }

  else
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      return;
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;

  v24 = *&v23[OBJC_IVAR___CKTapbackPlatterView_tapbackView];
  if (v24)
  {
    v25 = swift_dynamicCastObjCProtocolConditional();
    if (v25)
    {
      v26 = v25;
      v27 = v24;
      [v26 performSendAnimation];
    }
  }
}

uint64_t sub_19091588C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 isTranscriptBackgroundActive];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
    swift_beginAccess();
    v3 = *(v0 + v4);
  }

  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground) = v3;
  return sub_190915D9C();
}

void sub_190915A24(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isTranscriptPortalEnabled];

  if (!v5 || (v6 = [v2 traitCollection], v7 = objc_msgSend(v6, sel_isTranscriptBackgroundActive), v6, !v7))
  {
    v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView__isFadedOut] = v3 & 1;
    return;
  }

  v8 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v10 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v10;
  sub_190D52690();
  v11 = v10;
  sub_190CAA054(inited);
  v12 = v8;
  v35 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v33 = v12;
    v34 = v2;
    v32 = v3;
    v14 = 0;
    v3 = v12 & 0xC000000000000001;
    v15 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v16 = MEMORY[0x193AF3B90](v14, v12);
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_22;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v2 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v16 isHidden] || (v18 = objc_msgSend(v17, sel_superview)) == 0)
      {
      }

      else
      {
        v19 = v18;
        v20 = i;
        v21 = v3;
        sub_1902188FC(0, &qword_1EAD46530);
        v22 = v34;
        v23 = sub_190D57D90();

        if (v23)
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        else
        {
        }

        v3 = v21;
        i = v20;
        v12 = v33;
      }

      ++v14;
      if (v2 == i)
      {
        v24 = v35;
        LOBYTE(v3) = v32;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_25:

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_28;
    }

LABEL_37:

    return;
  }

  v25 = sub_190D581C0();
  if (!v25)
  {
    goto LABEL_37;
  }

LABEL_28:
  if (v25 >= 1)
  {
    v26 = 0;
    if (v3)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 1.0;
    }

    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x193AF3B90](v26, v24);
      }

      else
      {
        v28 = *(v24 + 8 * v26 + 32);
      }

      v29 = v28;
      ++v26;
      v30 = [v28 layer];
      *&v31 = v27;
      [v30 setOpacity_];
    }

    while (v25 != v26);
    goto LABEL_37;
  }

  __break(1u);
}

uint64_t sub_190915D9C()
{
  v1 = v0;
  v46 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
  v2 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v4 = *&v1[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v4;
  sub_190D52690();
  v45 = v4;
  sub_190CAA054(inited);
  v5 = v2;
  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground;
  if (v6)
  {
    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v47 = v6;
    v48 = v5 & 0xFFFFFFFFFFFFFF8;
    v49 = v5 & 0xC000000000000001;
    v50 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground;
    do
    {
      if (v9)
      {
        v11 = MEMORY[0x193AF3B90](v8, v5);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_34;
        }

        v11 = *(v5 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_33;
      }

      v14 = v1[v7];
      v15 = v11[OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground];
      v11[OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground] = v14;
      if (v14 != v15)
      {
        v51 = OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke;
        v16 = *&v11[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke];
        if (v14)
        {
          [v16 setHidden_];
          v17 = OBJC_IVAR___CKTapbackPlatterView_gradientView;
          [*&v12[OBJC_IVAR___CKTapbackPlatterView_gradientView] removeFromSuperview];
          [*&v12[v17] setMaskView_];
          v18 = *&v12[OBJC_IVAR___CKTapbackPlatterView_materialView];
          v19 = [v18 maskView];
          v20 = *&v12[OBJC_IVAR___CKTapbackPlatterView_parentView];
          if (!v19 || (v21 = v19, sub_1902188FC(0, &qword_1EAD46530), v22 = v5, v23 = v1, v24 = v20, v25 = sub_190D57D90(), v21, v24, v1 = v23, v5 = v22, v6 = v47, (v25 & 1) == 0))
          {
            [v20 removeFromSuperview];
            [v18 setMaskView_];
            v26 = *&v12[v51];
            [v12 insertSubview:v18 aboveSubview:v26];
            v27 = *&v12[OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop];
            [v12 insertSubview:v27 aboveSubview:v26];
            [v12 insertSubview:*&v12[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy] aboveSubview:v27];
          }
        }

        else
        {
          [v16 setHidden_];
          [*&v12[OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop] removeFromSuperview];
          [*&v12[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy] removeFromSuperview];
          v28 = OBJC_IVAR___CKTapbackPlatterView_materialView;
          [*&v12[OBJC_IVAR___CKTapbackPlatterView_materialView] removeFromSuperview];
          [*&v12[v28] setMaskView_];
          v29 = OBJC_IVAR___CKTapbackPlatterView_gradientView;
          [*&v12[OBJC_IVAR___CKTapbackPlatterView_gradientView] removeFromSuperview];
          [*&v12[v29] setMaskView_];
          v30 = OBJC_IVAR___CKTapbackPlatterView_parentView;
          v31 = [*&v12[OBJC_IVAR___CKTapbackPlatterView_parentView] superview];
          if (!v31 || (v32 = v31, sub_1902188FC(0, &qword_1EAD46530), v33 = v12, v34 = sub_190D57D90(), v32, v33, (v34 & 1) == 0))
          {
            [v12 insertSubview:*&v12[v30] aboveSubview:*&v12[v51]];
          }
        }

        sub_190C177F4();
        [v12 setNeedsLayout];
        [v12 layoutIfNeeded];
        v9 = v49;
        v7 = v50;
        v10 = v48;
      }

      ++v8;
    }

    while (v13 != v6);
  }

  if (v1[v7] == 1)
  {
    v36 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut;
    v1[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut] = 1;
    v37 = [v1 layer];
    [v37 setAllowsGroupBlending_];

    v38 = *&v1[v46];
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_190DD55F0;
    *(v39 + 32) = v45;
    v40 = v45;
    sub_190D52690();
    sub_190CAA054(v39);
    if (v38 >> 62)
    {
      v41 = sub_190D581C0();
      if (v41)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_24:
        v42 = 0;
        v5 = v38 & 0xC000000000000001;
        do
        {
          if (v5)
          {
            v43 = MEMORY[0x193AF3B90](v42, v38);
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v42 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v43 = *(v38 + 8 * v42 + 32);
            v44 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v6 = sub_190D581C0();
              goto LABEL_3;
            }
          }

          v43[OBJC_IVAR___CKTapbackPlatterView_wantsBorderDestOut] = v1[v36];

          ++v42;
        }

        while (v44 != v41);
      }
    }
  }

  return result;
}

id sub_190916484(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsPrepareForDisplay];
  }

  return result;
}

id sub_19091659C(_BYTE *a1, uint64_t a2, unsigned __int8 a3, uint64_t *a4)
{
  v6 = *a4;
  result = swift_beginAccess();
  v8 = a1[v6];
  a1[v6] = a3;
  if (v8 != a3)
  {
    return [a1 setNeedsPrepareForDisplay];
  }

  return result;
}

id sub_190916608(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = v6[v7];
  v6[v7] = v5;
  if (v5 != v9)
  {
    return [v6 setNeedsPrepareForDisplay];
  }

  return result;
}

uint64_t sub_190916674()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v4 = *&v1[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v4;
  sub_190D52690();
  v5 = v4;
  sub_190CAA054(inited);
  v6 = v2;
  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(v6 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v1 transcriptBackgroundLuminance];
      v13 = v12;
      v14 = &v10[OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance];
      swift_beginAccess();
      *v14 = v13;
      v15 = *&v10[OBJC_IVAR___CKTapbackPlatterView_materialView];
      v16 = *(v15 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance);
      *(v15 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance) = v13;
      if (v16 != v13)
      {
        sub_190C3B124();
      }

      if (v11 == i)
      {
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id AggregateAcknowledgmentBalloonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1909168F0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t AggregateAcknowledgmentBalloonView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground] = 0;
  v10 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter;
  type metadata accessor for TapbackPlatterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v10] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel] = 0;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesContent] = 0;
  v12 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail] = 0;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView__isFadedOut] = 0;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut] = 0;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection] = 0;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor] = -2;
  v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor] = -2;
  v25 = MEMORY[0x1E69E7CC0];
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  MEMORY[0x193AF29E0]();
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();

  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  MEMORY[0x193AF29E0]();
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();

  v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  MEMORY[0x193AF29E0]();
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();

  v16 = v25;
  if (v25 >> 62)
  {
    result = sub_190D581C0();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_13:
      *&v5[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters] = v16;
      v24.receiver = v5;
      v24.super_class = type metadata accessor for AggregateAcknowledgmentBalloonView();
      v20 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_190DD1D90;
      v22 = sub_190919AB4();
      *(v21 + 32) = &type metadata for CKTranscriptBackgroundActiveTrait;
      *(v21 + 40) = v22;
      v23 = v20;
      MEMORY[0x193AF3550](v21, sel_updateForBackgroundState);
      swift_unknownObjectRelease();

      return v23;
    }
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x193AF3B90](0, v25);
    goto LABEL_12;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v25 + 32);
LABEL_12:
    v19 = v18;
    swift_beginAccess();
    v19[OBJC_IVAR___CKTapbackPlatterView_showTail] = (v5[v12] & 1) == 0;
    sub_190C177F4();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_190916D38(void *a1, _BYTE *a2, uint64_t a3, _BYTE *a4)
{
  if ((*(a3 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesContent) & 1) == 0)
  {
    v6 = a1;
    sub_190C191D4(a1);
    a1 = v6;
  }

  result = [a1 isFromMe];
  if (result)
  {
    *a4 = 1;
    v8 = &a2[OBJC_IVAR___CKTapbackPlatterView_isSent];
    v9 = a2[OBJC_IVAR___CKTapbackPlatterView_isSent];
    a2[OBJC_IVAR___CKTapbackPlatterView_isSent] = 1;
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v8 = &a2[OBJC_IVAR___CKTapbackPlatterView_isSent];
    v10 = a2[OBJC_IVAR___CKTapbackPlatterView_isSent];
    a2[OBJC_IVAR___CKTapbackPlatterView_isSent] = 0;
    if (v10 != 1)
    {
      return result;
    }
  }

  [*&a2[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy] setHidden_];
  [*&a2[OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy] setHidden_];
  [*&a2[OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy] setHidden_];

  return [a2 setNeedsLayout];
}

void sub_190916EB4()
{
  v1 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v29 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
  v3 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  if (v3 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v30 = v1;
    sub_190D52690();
    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x193AF3B90](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeFromSuperview];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_13:

    v9 = *&v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
    [v9 removeFromSuperview];
    v10 = [objc_opt_self() sharedBehaviors];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = [v10 usesTapbackRefreshStyling];

    if (v12)
    {
      v13 = [v2 traitCollection];
      v14 = [v13 isTranscriptBackgroundActive];

      if (v14)
      {
        v15 = 1;
      }

      else
      {
        v16 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
        swift_beginAccess();
        v15 = v2[v16];
      }

      v2[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground] = v15;
      sub_190915D9C();
    }

    v17 = *&v2[v29];
    v27 = v9;
    v18 = v17 >> 62 ? sub_190D581C0() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
    v20 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
    v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
    v21 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
    sub_190D52690();
    swift_beginAccess();
    v28 = v20;
    swift_beginAccess();
    v29 = v3;
    swift_beginAccess();
    v1 = v21;
    swift_beginAccess();
    if (!v18)
    {
      break;
    }

    v22 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x193AF3B90](v22, v17);
      }

      else
      {
        if (v22 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v23 = *(v17 + 8 * v22 + 32);
      }

      v3 = v23;
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v22 < *&v30[v19])
      {
        [v2 insertSubview:v23 atIndex:0];
        sub_190C18D04(v2[v28], v2[v29]);
        *(v3 + OBJC_IVAR___CKTapbackPlatterView_useRightTailDirection) = v30[v21];
        [v3 setNeedsLayout];
      }

      ++v22;
      if (v24 == v18)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_31:

  v25 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  if (v30[v25] == 1)
  {
    swift_beginAccess();
    v26 = v2[v28];
    swift_beginAccess();
    sub_190C18D04(v26, v2[v29]);
    [v2 insertSubview:v27 atIndex:0];
  }
}

id sub_190917364()
{
  v51.receiver = v0;
  v51.super_class = type metadata accessor for AggregateAcknowledgmentBalloonView();
  objc_msgSendSuper2(&v51, sel_prepareForReuse);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v48 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
  v1 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v50 = v0;
  v3 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v3;
  sub_190D52690();
  v47 = v3;
  sub_190CAA054(inited);
  v4 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v11 = *&v8[OBJC_IVAR___CKTapbackPlatterView_gradientView];
      v12 = swift_unknownObjectWeakLoadStrong();
      [v11 setReferenceView_];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v13 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  swift_beginAccess();
  v14 = v50[v13];
  v50[v13] = 0;
  if (v14 == 1)
  {
    [v50 setNeedsPrepareForDisplay];
  }

  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v16 = result;
    v17 = [result usesTapbackRefreshStyling];

    if ((v17 & 1) == 0)
    {
      v18 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut;
      v50[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut] = 0;
      v19 = [v50 layer];
      [v19 setAllowsGroupBlending_];

      v20 = *&v50[v48];
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_190DD55F0;
      *(v21 + 32) = v47;
      v22 = v47;
      sub_190D52690();
      sub_190CAA054(v21);
      if (v20 >> 62)
      {
        goto LABEL_30;
      }

      for (j = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_190D581C0())
      {
        v24 = 0;
        while ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x193AF3B90](v24, v20);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_28;
          }

LABEL_24:
          v25[OBJC_IVAR___CKTapbackPlatterView_wantsBorderDestOut] = v50[v18];

          ++v24;
          if (v26 == j)
          {
            goto LABEL_31;
          }
        }

        if (v24 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v25 = *(v20 + 8 * v24 + 32);
        v26 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:
    }

    v27 = *&v50[v48];
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_190DD55F0;
    *(v28 + 32) = v47;
    v29 = v47;
    sub_190D52690();
    sub_190CAA054(v28);
    v49 = v27;
    if (v27 >> 62)
    {
      goto LABEL_45;
    }

    for (k = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_190D581C0())
    {
      v31 = 0;
      v32 = &selRef_refreshComposeSendingServiceForAddresses_context_withCompletionBlock_;
      while (1)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x193AF3B90](v31, v49);
        }

        else
        {
          if (v31 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v36 = *(v49 + 8 * v31 + 32);
        }

        v37 = v36;
        v38 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v39 = OBJC_IVAR___CKTapbackPlatterView_isSent;
        v40 = v36[OBJC_IVAR___CKTapbackPlatterView_isSent];
        v36[OBJC_IVAR___CKTapbackPlatterView_isSent] = 0;
        if (v40 == 1)
        {
          [*&v36[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy] setHidden_];
          [*&v37[OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy] &selRef:v37[v39] setEntryViewButtonType:?];
          v32 = &selRef_refreshComposeSendingServiceForAddresses_context_withCompletionBlock_;
          [*&v37[OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy] &selRef:v37[v39] setEntryViewButtonType:?];
          [v37 setNeedsLayout];
        }

        v33 = OBJC_IVAR___CKTapbackPlatterView_tapbackView;
        [*&v37[OBJC_IVAR___CKTapbackPlatterView_tapbackView] v32[162]];
        v34 = *&v37[v33];
        *&v37[v33] = 0;

        [*&v37[OBJC_IVAR___CKTapbackPlatterView_contentView] setClipsToBounds_];
        v35 = *&v37[OBJC_IVAR___CKTapbackPlatterView_tapback];
        *&v37[OBJC_IVAR___CKTapbackPlatterView_tapback] = 0;

        ++v31;
        if (v38 == k)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

LABEL_46:

    v41 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
    swift_beginAccess();
    v50[v41] = 0;
    v42 = *&v50[v48];
    if (v42 >> 62)
    {
      result = sub_190D581C0();
    }

    else
    {
      result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!result)
    {
      goto LABEL_53;
    }

    if ((v42 & 0xC000000000000001) != 0)
    {
      sub_190D52690();
      v43 = MEMORY[0x193AF3B90](0, v42);

      goto LABEL_52;
    }

    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v42 + 32);
LABEL_52:
      v43[OBJC_IVAR___CKTapbackPlatterView_showTail] = (v50[v41] & 1) == 0;
      sub_190C177F4();

LABEL_53:
      [v50 setNeedsPrepareForDisplay];
      v44 = [v50 layer];
      v45 = sub_190D51C70();
      v46 = sub_190D56ED0();
      [v44 setValue:v45 forKeyPath:v46];

      [v50 setAlpha_];
      [v50 setHidden_];
      return [v50 setNeedsPrepareForDisplay];
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190917BD8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_190917C7C()
{
  v1 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
    swift_beginAccess();
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
    if (v3[v12] == 1)
    {
      MaxX = CGRectGetMaxX(*&v13);
    }

    else
    {
      MaxX = CGRectGetMinX(*&v13);
    }

    v18 = MaxX;
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    MinY = CGRectGetMinY(v42);
    objc_allocWithZone(type metadata accessor for TapbackPileLayout());
    v20 = v3;
    v21 = sub_190CB74C0(v20, v18, MinY);

    v22 = OBJC_IVAR___CKTapbackPileLayout_platterLayouts;
    swift_beginAccess();
    v23 = *&v21[v22];
    v40 = v21;
    if (v23 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
    {
      v41 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters;
      sub_190D52690();
      if (!i)
      {
        break;
      }

      v25 = 4;
      while (1)
      {
        v26 = v25 - 4;
        if ((v23 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x193AF3B90](v25 - 4, v23);
        }

        else
        {
          if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v27 = *(v23 + 8 * v25);
        }

        v28 = v27;
        v29 = v25 - 3;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v30 = v2;
        v2 = *(v2 + v41);
        if ((v2 & 0xC000000000000001) != 0)
        {
          sub_190D52690();
          v31 = MEMORY[0x193AF3B90](v25 - 4, v2);
        }

        else
        {
          if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v31 = *(v2 + 8 * v25);
        }

        [v31 setFrame_];
        sub_190C187E4(v28);

        ++v25;
        v2 = v30;
        if (v29 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_20:

    v32 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
    swift_beginAccess();
    if (v20[v32] == 1)
    {
      v33 = *&v40[OBJC_IVAR___CKTapbackPileLayout_bottomPeekPlatterLayout];
      v34 = *(v2 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
      v35 = *&v33[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame];
      v36 = *&v33[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 8];
      v37 = *&v33[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 16];
      v38 = *&v33[OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 24];
      v39 = v33;
      [v34 setFrame_];
      sub_190C187E4(v39);
    }
  }
}

Swift::Void __swiftcall AggregateAcknowledgmentBalloonView.configureGestureRecognizers()()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AggregateAcknowledgmentBalloonView();
  objc_msgSendSuper2(&v18, sel_configureGestureRecognizers);
  v1 = objc_opt_self();
  v2 = [v1 sharedBehaviors];
  if (!v2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = [v2 disableTranscriptInteractions];

  if (v4)
  {
    return;
  }

  v5 = [v0 doubleTapGestureRecognizer];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  [v5 setEnabled_];

  v7 = CKIsRunningInMacCatalyst();
  v8 = [v0 tapGestureRecognizer];
  v9 = v8;
  if (!v7)
  {
    if (v8)
    {
      v14 = [v1 sharedBehaviors];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 canTapAssociatedAcknowledgment];

        [v9 setEnabled_];
        v17 = [v0 longPressGestureRecognizer];
        if (v17)
        {
          v13 = v17;
          [v17 setEnabled_];
          goto LABEL_13;
        }

LABEL_22:
        __break(1u);
        return;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  [v8 setEnabled_];

  v10 = [v0 longPressGestureRecognizer];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  [v10 setEnabled_];

  v12 = [v0 longPressGestureRecognizer];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  [v12 setMinimumPressDuration_];
LABEL_13:
}

Swift::Void __swiftcall AggregateAcknowledgmentBalloonView.tapGestureRecognized(_:)(UITapGestureRecognizer *a1)
{
  v23 = a1;
  v2 = sub_190D56770();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D567A0();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D567F0();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_190918584();
  sub_190918758();
  sub_1902188FC(0, &qword_1EAD46670);
  v15 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v21 = *(v9 + 8);
  v21(v12, v8);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 16) = v1;
  *(v16 + 24) = v17;
  aBlock[4] = sub_190919B08;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_35;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  v20 = v17;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF30E0](v14, v7, v4, v18);
  _Block_release(v18);

  (*(v26 + 8))(v4, v2);
  (*(v24 + 8))(v7, v25);
  v21(v14, v22);
}

void sub_190918584()
{
  v1 = *&v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel];
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = v1;
    v3 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
    v4 = v1;
    v5 = v0;
    v6 = [v3 initWithMass:1.0 stiffness:675.0 damping:45.0 initialVelocity:{0.0, 0.0}];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.0];
    v8 = swift_allocObject();
    v8[2] = sub_19091A074;
    v8[3] = v2;
    v8[4] = v5;
    v11[4] = sub_19091A08C;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_190840E6C;
    v11[3] = &block_descriptor_106_0;
    v9 = _Block_copy(v11);
    v10 = v5;
    sub_190D50920();

    [v7 addAnimations_];
    _Block_release(v9);
    [v7 startAnimationAfterDelay_];
  }
}

void sub_190918758()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:675.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v1 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_19091A018;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_190840E6C;
  v6[3] = &block_descriptor_95;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 addAnimations_];
  _Block_release(v4);
  [v2 startAnimationAfterDelay_];
}

id sub_1909188B8(void *a1, void *a2)
{
  result = [a1 delegate];
  if (result)
  {
    [result balloonViewTapped:a1 withModifierFlags:objc_msgSend(a2 selectedText:{sel_modifierFlags), 0}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1909189B8(void *a1)
{
  v3 = sub_190D56770();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D567A0();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_190D567F0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = [a1 state];
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v35 = v4;
      sub_190918758();
      sub_1902188FC(0, &qword_1EAD46670);
      v34 = sub_190D57870();
      sub_190D567B0();
      sub_190D56820();
      v29 = *(v12 + 8);
      v29(v15, v11);
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      v42 = sub_190919FFC;
      v43 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_190840E6C;
      v41 = &block_descriptor_80;
      v31 = _Block_copy(&aBlock);
      v32 = v1;

      sub_190D56790();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_190840DB0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
      sub_190840E08();
      sub_190D58170();
      v33 = v34;
      MEMORY[0x193AF30E0](v17, v10, v6, v31);
      _Block_release(v31);

      (*(v35 + 8))(v6, v3);
      (*(v37 + 8))(v10, v36);
      v29(v17, v11);
    }

    else if (v18 == 4)
    {

      sub_190918758();
    }
  }

  else if (v18 == 1)
  {
    v19 = *&v1[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel];
    if (v19)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = v1;
      *(v20 + 24) = v19;
      v21 = objc_allocWithZone(MEMORY[0x1E69DCF88]);
      v22 = v19;
      v23 = v1;
      v24 = [v21 initWithMass:1.0 stiffness:675.0 damping:45.0 initialVelocity:{0.0, 0.0}];
      v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v24 timingParameters:0.0];
      v26 = swift_allocObject();
      v26[2] = sub_19091A004;
      v26[3] = v20;
      v26[4] = v23;
      v42 = sub_19091A00C;
      v43 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_190840E6C;
      v41 = &block_descriptor_89;
      v27 = _Block_copy(&aBlock);
      v28 = v23;
      sub_190D50920();

      [v25 addAnimations_];
      _Block_release(v27);
      [v25 startAnimationAfterDelay_];
    }
  }

  else if (v18 == 2)
  {
    [a1 locationInView_];
    if (([v1 pointInside:0 withEvent:?] & 1) == 0)
    {
      [a1 setEnabled_];

      [a1 setEnabled_];
    }
  }
}

id sub_190918FBC(void *a1)
{
  result = [a1 delegate];
  if (result)
  {
    [result balloonViewLongTouched_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190919090(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v6 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v6;
  v19 = v4;
  sub_190D52690();
  v7 = v6;
  sub_190CAA054(inited);
  v8 = v4;
  v9 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_21:
    v10 = sub_190D581C0();
  }

  else
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  if (!v10)
  {
  }

  v12 = 0;
  v13 = 0.0;
  while (1)
  {
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x193AF3B90](v12, v8);
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_18:
          __break(1u);
        }
      }

      else
      {
        if (v12 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        result = *(v8 + 8 * v12 + 32);
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_18;
        }
      }

      if (v12)
      {
        break;
      }

      v12 = 1;
      if (v15 == v10)
      {
      }
    }

    if (v12 > 3)
    {
      break;
    }

    v13 = v13 + dbl_1F04022B0[v12 + 4] * 0.2;
    v16 = result;
    [v16 center];
    v18 = -v13;
    if (*(a2 + v11))
    {
      v18 = v13;
    }

    [v16 setCenter_];

    v12 = v15;
    if (v15 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_19091927C(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 layer];
  v5 = sub_190D51C70();
  v6 = sub_190D56ED0();
  [v4 setValue:v5 forKeyPath:v6];
}

void sub_190919334(void *a1)
{
  sub_190917C7C();
  v2 = [a1 layer];
  v3 = sub_190D51C70();
  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKeyPath:v4];
}

uint64_t AggregateAcknowledgmentBalloonView.description.getter()
{
  v1 = v0;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0x6F43736564696820, 0xEF203A746E65746ELL);
  if (v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesContent])
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesContent])
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v2, v3);

  MEMORY[0x193AF28B0](0xD00000000000001BLL, 0x8000000190E660F0);
  if (v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground])
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground])
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v4, v5);

  MEMORY[0x193AF28B0](0xD000000000000020, 0x8000000190E66110);
  [v0 transcriptBackgroundLuminance];
  v6 = sub_190D573C0();
  MEMORY[0x193AF28B0](v6);

  MEMORY[0x193AF28B0](0xD000000000000015, 0x8000000190E66140);
  if (v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut])
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v0[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut])
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v7, v8);

  MEMORY[0x193AF28B0](0xD000000000000018, 0x8000000190E66160);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v10 = " hidesFirstTapbackTail: ";
    v11 = 0xD000000000000010;
  }

  else
  {
    v10 = " gradientReferenceView: ";
    v11 = 0xD000000000000014;
  }

  MEMORY[0x193AF28B0](v11, v10 | 0x8000000000000000);

  MEMORY[0x193AF28B0](0x6F4364696C6F7320, 0xED0000203A726F6CLL);
  swift_beginAccess();
  type metadata accessor for CKUIColorType(0);
  sub_190D58450();
  MEMORY[0x193AF28B0](0xD00000000000001DLL, 0x8000000190E661A0);
  [v0 overrideUserInterfaceStyle];
  type metadata accessor for UIUserInterfaceStyle(0);
  sub_190D58450();
  MEMORY[0x193AF28B0](0xD000000000000018, 0x8000000190E661C0);
  v12 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  if (v1[v12])
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v1[v12])
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x193AF28B0](v13, v14);

  return 0;
}

uint64_t sub_1909197A8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v3 = *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v3;
  sub_190D52690();
  v4 = v3;
  sub_190CAA054(inited);
  v5 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v12 = *&v9[OBJC_IVAR___CKTapbackPlatterView_gradientView];
      v13 = swift_unknownObjectWeakLoadStrong();
      [v12 setReferenceView_];

      if (v10 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void _s7ChatKit34AggregateAcknowledgmentBalloonViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground) = 0;
  v1 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter;
  type metadata accessor for TapbackPlatterView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_viewModel) = 0;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesContent) = 0;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail) = 0;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView__isFadedOut) = 0;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsBorderDestOut) = 0;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection) = 0;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor) = -2;
  *(v0 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor) = -2;
  sub_190D58510();
  __break(1u);
}

unint64_t sub_190919AB4()
{
  result = qword_1EAD46820;
  if (!qword_1EAD46820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46820);
  }

  return result;
}

uint64_t objectdestroy_85Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_19091A164(void *a1)
{
  v3 = [a1 currentScrollIntent];
  if (v3 <= 9)
  {
    if (((1 << v3) & 0x1B8) != 0)
    {
      return 0;
    }

    if (((1 << v3) & 0x241) != 0)
    {
      v5 = [a1 currentScrollIntent];
      if ([objc_opt_self() isInHardwareKeyboardMode])
      {
LABEL_6:
        v6 = [objc_opt_self() systemDefaultScrollAnimation];
LABEL_24:
        v31 = v6;
        v32 = [objc_allocWithZone(CKTranscriptScrollIntentUpdateRequest) initWithAnimatedIntent:v5 animationProperties:v31];

        return v32;
      }

      return [objc_allocWithZone(CKTranscriptScrollIntentUpdateRequest) initDeferredScrollIntentEnforcementWithIntent_];
    }

    v7 = objc_opt_self();
    v8 = &selRef_isCharacterCountHidden;
    if ([v7 isInHardwareKeyboardMode])
    {
      v5 = [a1 currentScrollIntent];
      if ([v7 isInHardwareKeyboardMode])
      {
        goto LABEL_6;
      }

      return [objc_allocWithZone(CKTranscriptScrollIntentUpdateRequest) initDeferredScrollIntentEnforcementWithIntent_];
    }

    v9 = OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_hasSendLaterPluginInfo;
    if (v1[OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_hasSendLaterPluginInfo])
    {
      v5 = 6;
    }

    else if (v1[OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_isAppearing])
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }

    if (qword_1EAD46198 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9D688);
    v36 = v1;
    v11 = v1;
    v12 = a1;
    v13 = sub_190D53020();
    v14 = sub_190D576C0();
    if (!os_log_type_enabled(v13, v14))
    {

LABEL_22:
      if ([v7 v8[192]])
      {
        v6 = [objc_opt_self() systemDefaultScrollAnimation];
        goto LABEL_24;
      }

      return [objc_allocWithZone(CKTranscriptScrollIntentUpdateRequest) initDeferredScrollIntentEnforcementWithIntent_];
    }

    v35 = v9;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136315906;
    v17 = CKDebugNameForCKTranscriptScrollIntent([v12 currentScrollIntent]);
    if (v17)
    {
      v18 = v17;

      v19 = sub_190D56F10();
      v21 = v20;

      v22 = sub_19021D9F8(v19, v21, &v37);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      v34 = v5;
      v23 = CKDebugNameForCKTranscriptScrollIntent(v5);
      if (v23)
      {
        v24 = v23;
        v25 = sub_190D56F10();
        v27 = v26;

        v28 = sub_19021D9F8(v25, v27, &v37);

        *(v15 + 14) = v28;
        *(v15 + 22) = 1024;
        v29 = v36[v35];

        *(v15 + 24) = v29;
        *(v15 + 28) = 1024;
        v30 = v11[OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_isAppearing];

        *(v15 + 30) = v30;
        _os_log_impl(&dword_19020E000, v13, v14, "Switching intent from %s to %s because hasSendLaterPluginInfo: %{BOOL}d || isAppearing: %{BOOL}d", v15, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v16, -1, -1);
        MEMORY[0x193AF7A40](v15, -1, -1);

        v5 = v34;
        v8 = &selRef_isCharacterCountHidden;
        goto LABEL_22;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
  }

  v33 = v3;
  type metadata accessor for CKTranscriptScrollIntent(0);
  v37 = v33;
  result = sub_190D58790();
  __break(1u);
  return result;
}

void __swiftcall CKTranscriptScrollIntentEntryViewActiveTrigger.init()(CKTranscriptScrollIntentEntryViewActiveTrigger *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for CKTranscriptScrollIntentEntryViewActiveTrigger()
{
  result = qword_1EAD56F38;
  if (!qword_1EAD56F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD56F38);
  }

  return result;
}

uint64_t sub_19091A710()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D688);
  __swift_project_value_buffer(v0, qword_1EAD9D688);
  sub_190D53010();
  return sub_190D53030();
}

double sub_19091A78C(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_19091A7C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_190D53950();
  return sub_190854AE0;
}

unint64_t sub_19091A850()
{
  result = qword_1EAD56F40;
  if (!qword_1EAD56F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56F40);
  }

  return result;
}

uint64_t sub_19091A8A4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v27 = a1;
  v28 = a3;
  v8 = sub_190D53DD0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25[-v14];
  v16 = sub_190D53ED0();
  (*(*(v16 - 8) + 16))(v15, a5, v16);
  v17 = *(v13 + 44);
  sub_19091AB5C();
  sub_190D574F0();
  sub_190D57530();
  if (*&v15[v17] != v30[0])
  {
    v18 = a4;
    v19 = (v9 + 16);
    v20 = a2;
    v21 = (v9 + 8);
    v22 = v20 & 1;
    v26 = v18 & 1;
    do
    {
      v23 = sub_190D57560();
      (*v19)(v11);
      v23(v30, 0);
      sub_190D57540();
      sub_190D56670();
      LOBYTE(v30[0]) = v22;
      v29 = v26;
      sub_190D53DC0();
      (*v21)(v11, v8);
      sub_190D57530();
    }

    while (*&v15[v17] != v30[0]);
  }

  return sub_190855340(v15);
}

unint64_t sub_19091AB5C()
{
  result = qword_1EAD54818;
  if (!qword_1EAD54818)
  {
    sub_190D53ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD54818);
  }

  return result;
}

Swift::Void __swiftcall CKSuggestedActionsHandler.sendDeviceDetails()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didRequestSendDeviceDetails];
    swift_unknownObjectRelease();
  }
}

uint64_t get_enum_tag_for_layout_string_7ChatKit7GalleryV14TileIdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19091AC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19091AC88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_19091ACE4(void *result, int a2)
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

uint64_t sub_19091AD14(uint64_t a1, int64_t a2)
{
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        v2 = 0x61726F727541;
        goto LABEL_18;
      }

      if (a2 != 7)
      {
LABEL_19:
        v3 = a1;
        goto LABEL_20;
      }

      v3 = 0x5472657474696C47;
    }

    else if (a2 == 4)
    {
      v3 = 0x656C6954796B53;
    }

    else
    {
      v3 = 0x6C69547265746157;
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      v3 = 0x746E656964617247;
    }

    else
    {
      v3 = 0xD000000000000013;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x736F746F6850;
LABEL_18:
        v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v3 = 0x7463656C65536F4ELL;
  }

LABEL_20:
  sub_19091B348(a1, a2);
  return v3;
}

uint64_t sub_19091AE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      return MEMORY[0x193AF4110](v3);
    }

    if (a3 == 6)
    {
      v3 = 6;
      return MEMORY[0x193AF4110](v3);
    }

    if (a3 == 7)
    {
      v3 = 7;
      return MEMORY[0x193AF4110](v3);
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      return MEMORY[0x193AF4110](v3);
    }

    if (!a3)
    {
      v3 = 0;
      return MEMORY[0x193AF4110](v3);
    }

    if (a3 == 1)
    {
      v3 = 1;
      return MEMORY[0x193AF4110](v3);
    }
  }

  MEMORY[0x193AF4110](8);

  return sub_190D56FC0();
}

uint64_t sub_19091AF70(uint64_t a1, uint64_t a2)
{
  sub_190D58870();
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_18;
    }

    if (a2 == 6)
    {
      v3 = 6;
      goto LABEL_18;
    }

    if (a2 == 7)
    {
      v3 = 7;
      goto LABEL_18;
    }

LABEL_20:
    MEMORY[0x193AF4110](8);
    sub_190D56FC0();
    return sub_190D588C0();
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (a2 != 1)
  {
    goto LABEL_20;
  }

  v3 = 1;
LABEL_18:
  MEMORY[0x193AF4110](v3);
  return sub_190D588C0();
}

uint64_t sub_19091B0B0()
{
  v1 = *(v0 + 8);
  sub_190D58870();
  if (v1 > 3)
  {
    if (v1 <= 5)
    {
      if (v1 == 4)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      goto LABEL_18;
    }

    if (v1 == 6)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (v1 == 7)
    {
      v2 = 7;
      goto LABEL_18;
    }

LABEL_20:
    MEMORY[0x193AF4110](8);
    sub_190D56FC0();
    return sub_190D588C0();
  }

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    goto LABEL_18;
  }

  if (!v1)
  {
    v2 = 0;
    goto LABEL_18;
  }

  if (v1 != 1)
  {
    goto LABEL_20;
  }

  v2 = 1;
LABEL_18:
  MEMORY[0x193AF4110](v2);
  return sub_190D588C0();
}

uint64_t sub_19091B1C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19091AD14(*v1, v1[1]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_19091B1F4()
{
  result = qword_1EAD56F48;
  if (!qword_1EAD56F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56F48);
  }

  return result;
}

uint64_t sub_19091B248(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 6)
    {
      return a4 == 6;
    }

    if (a2 == 7)
    {
      return a4 == 7;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  if (a4 < 8)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_190D58760();
  }
}

uint64_t sub_19091B348(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8)
  {
    return sub_190D52690();
  }

  return result;
}

uint64_t sub_19091B35C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_190D58230();
  if (*(a1 + 16) && (v2 = sub_190875C84(&v11), (v3 & 1) != 0))
  {
    sub_19021834C(*(a1 + 56) + 32 * v2, &v13);
    sub_19084CFD0(&v11);
    if (swift_dynamicCast())
    {
      v11 = 0x696669746E656469;
      v12 = 0xEA00000000007265;
      v13 = 0x7364756F6C63;
      v14 = 0xE600000000000000;
      sub_19081E484();
      if (sub_190D58110() & 1) != 0 || (v11 = 0x696669746E656469, v12 = 0xEA00000000007265, v13 = 0x6E6165636FLL, v14 = 0xE500000000000000, (sub_190D58110()) || (v11 = 0x696669746E656469, v12 = 0xEA00000000007265, v13 = 0x61726F727561, v14 = 0xE600000000000000, (sub_190D58110()) || (v11 = 0x696669746E656469, v12 = 0xEA00000000007265, v13 = 0x72657474696C67, v14 = 0xE700000000000000, (sub_190D58110()))
      {
      }

      else
      {
        if (qword_1EAD46218 != -1)
        {
          swift_once();
        }

        v5 = sub_190D53040();
        __swift_project_value_buffer(v5, qword_1EAD9D730);
        sub_190D52690();
        v6 = sub_190D53020();
        v7 = sub_190D576A0();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v11 = v9;
          *v8 = 136315138;
          v10 = sub_19021D9F8(0x696669746E656469, 0xEA00000000007265, &v11);

          *(v8 + 4) = v10;
          _os_log_impl(&dword_19020E000, v6, v7, ">!< Unknown dynamic background identifier: %s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v9);
          MEMORY[0x193AF7A40](v9, -1, -1);
          MEMORY[0x193AF7A40](v8, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_19084CFD0(&v11);
  }

  return 0;
}

uint64_t sub_19091B6B0(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v24[0] = 0;
  v2 = a1;
  sub_190234194(a1);
  v3 = [v2 loadUserInfoWithError_];
  v4 = v24[0];
  if (!v3)
  {
    v13 = v24[0];
    v14 = sub_190D51420();

    swift_willThrow();
    goto LABEL_11;
  }

  v5 = v3;
  v6 = sub_190D56D90();
  v7 = v4;

  if (!v6)
  {
LABEL_11:
    v6 = 0;
LABEL_13:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_14;
  }

  v22 = sub_190D56F10();
  v23 = v8;
  sub_190D52690();
  sub_190D58230();
  if (!*(v6 + 16) || (v9 = sub_190875C84(v24), (v10 & 1) == 0))
  {

    sub_19084CFD0(v24);
    goto LABEL_13;
  }

  sub_19021834C(*(v6 + 56) + 32 * v9, &v25);
  sub_19084CFD0(v24);

  if (!*(&v26 + 1))
  {
LABEL_14:
    sub_19021E7D8(&v25);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v11 = v24[0];
LABEL_16:
  v15 = [v2 providerBundleIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_190D56F10();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = sub_19088A098(v17, v19, v11);

  if (v20 == 2)
  {
    v12 = sub_19091B35C(v6);
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

id sub_19091B9B8()
{
  v0 = [objc_opt_self() detailsSearchControllers];
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FB0);
    sub_190D57180();
    v0 = sub_190D57160();
  }

  v1 = [objc_allocWithZone(CKDetailsSearchViewController) initWithSearchControllerClasses_];

  [v1 setMode_];
  type metadata accessor for DetailsSearchControllerRepresentable(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v2 = *&v11[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  [v1 setConversation_];
  v3 = sub_190D56ED0();
  [v1 searchWithText_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56FB8);
  sub_190D55210();
  [v1 setDetailsDelegate_];

  sub_190D55210();
  v4 = *&v11[OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_searchViewController];
  *&v11[OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_searchViewController] = v1;
  v5 = v1;

  sub_19091BCF0(v5);
  sub_190D56320();
  swift_getKeyPath();
  sub_19091CD18(&qword_1EAD52E50, 255, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector_])
    {
      v7 = objc_allocWithZone(MEMORY[0x1E69DD258]);
      swift_unknownObjectRetain();
      v8 = [v7 init];
      [Strong configureDetailsControllerForSearch:v8 searchViewController:v5];

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  result = [v5 view];
  if (result)
  {
    v10 = result;
    [result layoutIfNeeded];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19091BCF0(void *a1)
{
  result = [a1 searchComplete];
  if (result)
  {
    v3 = [a1 searchControllersWithResults];
    sub_1902188FC(0, &qword_1EAD56FA0);
    v4 = sub_190D57180();

    if (v4 >> 62)
    {
      sub_190D581C0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FA8);
    return sub_190D56200();
  }

  return result;
}

id sub_19091BDE8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_searchViewController] = 0;
  sub_19091CD60(a1, &v1[OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_parent]);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DetailsSearchControllerRepresentable.SearchControllerCoordinator(0);
  v3 = objc_msgSendSuper2(&v11, sel_init);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  if (qword_1EAD520B0 != -1)
  {
    swift_once();
  }

  [v6 addObserver:v5 selector:sel_batchDownloadNotificationFired_ name:qword_1EAD9E6E8 object:0];

  v7 = [v4 defaultCenter];
  v8 = qword_1EAD520B8;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  [v7 addObserver:v9 selector:sel_batchDownloadNotificationFired_ name:qword_1EAD9E6F0 object:0];

  sub_19091CDC4(a1);
  return v9;
}

void sub_19091BF88(void *a1)
{
  v3 = type metadata accessor for DetailsSearchControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 frame];
  v9 = v8;

  [a1 sizeThatFits_];
  [a1 setPreferredContentSize_];
  if ([a1 searchComplete])
  {
    v10 = *(v1 + OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_searchViewController);
    if (v10)
    {
      sub_19091CD60(v1 + OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_parent, v5);
      v11 = v10;
      v12 = [v11 searchControllersWithResults];
      sub_1902188FC(0, &qword_1EAD56FA0);
      v13 = sub_190D57180();

      if (v13 >> 62)
      {
        v14 = sub_190D581C0();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = *(v5 + 1);
      v16 = v5[16];
      v22 = *v5;
      v23 = v15;
      v24 = v16;
      v21[7] = v14 != 0;
      sub_190D50920();
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FA8);
      sub_190D56200();
      sub_19091CDC4(v5);

      v17 = [a1 view];
      if (v17)
      {
        v18 = v17;
        [v17 frame];
        v20 = v19;

        [a1 sizeThatFits_];
        [a1 setPreferredContentSize_];

        return;
      }

LABEL_11:
      __break(1u);
    }
  }
}

id sub_19091C364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsSearchControllerRepresentable.SearchControllerCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19091C410()
{
  result = type metadata accessor for DetailsSearchControllerRepresentable(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_19091C4D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19091CD60(v2, v5);
  v6 = objc_allocWithZone(type metadata accessor for DetailsSearchControllerRepresentable.SearchControllerCoordinator(0));
  result = sub_19091BDE8(v5);
  *a2 = result;
  return result;
}

uint64_t sub_19091C5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19091CD18(&qword_1EAD56FC8, 255, type metadata accessor for DetailsSearchControllerRepresentable);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_19091C63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19091CD18(&qword_1EAD56FC8, 255, type metadata accessor for DetailsSearchControllerRepresentable);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_19091C6D4()
{
  sub_19091CD18(&qword_1EAD56FC8, 255, type metadata accessor for DetailsSearchControllerRepresentable);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_19091C730()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FD0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - v3;
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  type metadata accessor for DetailsViewConfiguration();
  sub_19091CD18(&qword_1EAD52E50, 255, type metadata accessor for DetailsViewConfiguration);
  v7 = v5;
  v8 = v6;
  sub_190D56340();
  *&v4[*(type metadata accessor for ShowAllSearchController() + 20)] = v8;
  v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56FD8) + 36)];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = sub_19091CE20;
  *(v9 + 3) = v1;
  sub_190D50920();
  v10 = sub_190D54240();
  v11 = sub_190D552B0();
  v12 = &v4[*(v2 + 36)];
  *v12 = v10;
  v12[8] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56010);
  sub_190D54410();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD1D90;
  sub_190D54400();
  v14 = sub_19091CE28();
  MEMORY[0x193AF11F0](2, v13, v2, v14);

  return sub_19091CF74(v4);
}

uint64_t sub_19091C964(uint64_t result)
{
  v1 = *(result + 16);
  if (*&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19091CD18(&qword_1EAD52E50, 255, type metadata accessor for DetailsViewConfiguration);
    v3 = v1;
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_19091CA88()
{

  return swift_deallocClassInstance();
}

void sub_19091CB1C()
{
  sub_19091CBA0();
  if (v0 <= 0x3F)
  {
    sub_1908CB130();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19091CBA0()
{
  if (!qword_1EAD56F80)
  {
    v0 = sub_190D56250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD56F80);
    }
  }
}

uint64_t sub_19091CC3C()
{
  v1 = *(*v0 + 24);
  sub_190D52690();
  return v1;
}

uint64_t sub_19091CC94@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;
  return sub_190D52690();
}

uint64_t sub_19091CCC0(uint64_t a1, uint64_t a2)
{
  result = sub_19091CD18(&qword_1EAD56F98, a2, type metadata accessor for SearchSeeAllNavigationDestination);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19091CD18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_19091CD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsSearchControllerRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19091CDC4(uint64_t a1)
{
  v2 = type metadata accessor for DetailsSearchControllerRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19091CE28()
{
  result = qword_1EAD56FE8;
  if (!qword_1EAD56FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56FD0);
    sub_19091CEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56FE8);
  }

  return result;
}

unint64_t sub_19091CEB4()
{
  result = qword_1EAD56FF0;
  if (!qword_1EAD56FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD56FD8);
    sub_19091CD18(&qword_1EAD56FF8, 255, type metadata accessor for ShowAllSearchController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56FF0);
  }

  return result;
}

uint64_t sub_19091CF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19091CFF8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DetailsSearchControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_parent;
  sub_19091CD60(v1 + OBJC_IVAR____TtCV7ChatKit36DetailsSearchControllerRepresentable27SearchControllerCoordinator_parent, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  sub_19091CDC4(v6);
  v8 = v17[0];
  v9 = type metadata accessor for SearchSeeAllNavigationDestination();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  strcpy((v10 + 24), "searchSeeAll");
  *(v10 + 37) = 0;
  *(v10 + 38) = -5120;
  *(v10 + 40) = a1;
  sub_19091CD60(v2 + v7, v6);
  v11 = a1;
  sub_190D56320();
  sub_19091CDC4(v6);
  v12 = v17[0];
  swift_getKeyPath();
  v17[0] = v12;
  sub_19091CD18(&qword_1EAD52E50, 255, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v13 = *&v12[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState];

  v17[3] = v9;
  v17[4] = sub_19091CD18(&unk_1EAD57000, v14, type metadata accessor for SearchSeeAllNavigationDestination);
  v17[0] = v10;
  sub_190865684();

  return sub_19083EC08(v17);
}

uint64_t sub_19091D21C()
{
  v1 = sub_190D56770();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D567A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v9 = sub_190D57870();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_19091D4E4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_36;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19091CD18(&qword_1EAD46770, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19091D530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_19091D578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19091D5DC()
{
  sub_190D57DA0();
  sub_190D57DA0();
  sub_190D56FC0();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  result = MEMORY[0x193AF4110](v2);
  if (v2)
  {
    v4 = v1 + 40;
    do
    {
      sub_190D52690();
      sub_190D56FC0();

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_19091D67C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v8 = a1[4];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_19084A764();
  if ((sub_190D57D90() & 1) == 0 || (sub_190D57D90() & 1) == 0 || (v2 != v4 || v3 != v5) && (sub_190D58760() & 1) == 0)
  {
    return 0;
  }

  return sub_1909A7254(v8, v6);
}

uint64_t sub_19091D770()
{
  sub_190D58870();
  sub_19091D5DC();
  return sub_190D588C0();
}

uint64_t sub_19091D7B4()
{
  sub_190D58870();
  sub_19091D5DC();
  return sub_190D588C0();
}

uint64_t sub_19091D7F0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_19091E0C8(&v5, &v7) & 1;
}

uint64_t sub_19091D83C()
{
  v1 = *(v0 + 40);
  sub_190D58870();
  if (v1)
  {
    MEMORY[0x193AF4110](1);
    sub_19091D5DC();
  }

  else
  {
    MEMORY[0x193AF4110](0);
    sub_190D57DA0();
  }

  return sub_190D588C0();
}

uint64_t sub_19091D8D8()
{
  if (*(v0 + 40))
  {
    MEMORY[0x193AF4110](1);
    return sub_19091D5DC();
  }

  else
  {
    MEMORY[0x193AF4110](0);
    return sub_190D57DA0();
  }
}

uint64_t sub_19091D95C()
{
  v1 = *(v0 + 40);
  sub_190D58870();
  if (v1)
  {
    MEMORY[0x193AF4110](1);
    sub_19091D5DC();
  }

  else
  {
    MEMORY[0x193AF4110](0);
    sub_190D57DA0();
  }

  return sub_190D588C0();
}

id sub_19091D9F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  if ((*(v0 + 72) & 1) == 0)
  {
    v6 = v1;
    v7 = [v6 recipient];
    if (v7)
    {
      v8 = v7;
      sub_19091E32C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
      v9 = sub_190D57160();

      v10 = [v8 cnContactWithKeys_];

      if (v10)
      {
        v11 = sub_19091E3F0(v10);
        v13 = v12;

        if (v13)
        {
          sub_19091E6E0(v1, v2, v3, v4, v5, 0);
          return v11;
        }
      }
    }

    if ([v6 hasDisplayName])
    {
      v14 = [v6 displayName];
      if (v14)
      {
LABEL_9:
        v15 = v14;
        v16 = sub_190D56F10();

        sub_19091E6E0(v1, v2, v3, v4, v5, 0);
        return v16;
      }
    }

    else
    {
      [v6 fetchSuggestedNameIfNecessary];
      v14 = [v6 name];
      if (v14)
      {
        goto LABEL_9;
      }
    }

    sub_19091E6E0(v1, v2, v3, v4, v5, 0);
    return 0;
  }

  sub_19091E678(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), 1);

  return v3;
}

void *sub_19091DBFC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (*(v0 + 72))
  {
    v3 = v1;
    v4 = v2;
  }

  else
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = v1;
    v9 = [v8 chat];
    if (v9)
    {
      v17 = v7;
      v10 = v5;
      v11 = v6;
      v12 = v9;
      v13 = [v9 chatIdentifier];

      if (v13)
      {
        v14 = sub_190D56F10();
      }

      else
      {
        v14 = 0;
      }

      v6 = v11;
      v5 = v10;
      v7 = v17;
    }

    else
    {
      v14 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v15 = sub_190D57160();
    [v8 conversationVisualIdentityWithKeys:v15 requestedNumberOfContactsToFetch:{objc_msgSend(objc_opt_self(), sel_maxContactAvatars)}];
    sub_19091E6E0(v1, v2, v6, v5, v7, 0);

    return v14;
  }

  return v1;
}

uint64_t sub_19091DD88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  sub_190D58870();
  sub_190D56FC0();
  MEMORY[0x193AF4110](v1);
  sub_190D58890();
  if (v2)
  {
    MEMORY[0x193AF4110](1);
    sub_19091D5DC();
  }

  else
  {
    MEMORY[0x193AF4110](0);
    sub_190D57DA0();
  }

  return sub_190D588C0();
}

uint64_t sub_19091DE70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  sub_190D56FC0();
  MEMORY[0x193AF4110](v1);
  sub_190D58890();
  if (v2)
  {
    MEMORY[0x193AF4110](1);
    return sub_19091D5DC();
  }

  else
  {
    MEMORY[0x193AF4110](0);
    return sub_190D57DA0();
  }
}

uint64_t sub_19091DF30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  sub_190D58870();
  sub_190D56FC0();
  MEMORY[0x193AF4110](v1);
  sub_190D58890();
  if (v2)
  {
    MEMORY[0x193AF4110](1);
    sub_19091D5DC();
  }

  else
  {
    MEMORY[0x193AF4110](0);
    sub_190D57DA0();
  }

  return sub_190D588C0();
}

uint64_t sub_19091E014(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_19091E1D8(v7, v9) & 1;
}

unint64_t sub_19091E074()
{
  result = qword_1EAD57010;
  if (!qword_1EAD57010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57010);
  }

  return result;
}

uint64_t sub_19091E0C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      v8 = *(a1 + 32);
      v4 = *(a2 + 16);
      v5 = *(a2 + 24);
      v6 = *(a2 + 32);
      sub_19084A764();
      if (sub_190D57D90() & 1) != 0 && (sub_190D57D90() & 1) != 0 && (v2 == v4 && v3 == v5 || (sub_190D58760()) && (sub_1909A7254(v8, v6))
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  sub_19084A764();
  return sub_190D57D90() & 1;
}

uint64_t sub_19091E1D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_190D58760() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      return 0;
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v11 = *(a1 + 64);
    v8 = *(a2 + 48);
    v10 = *(a2 + 56);
    v9 = *(a2 + 64);
    sub_19084A764();
    if ((sub_190D57D90() & 1) == 0 || (sub_190D57D90() & 1) == 0)
    {
      return 0;
    }

    if ((v6 != v8 || v7 != v10) && (sub_190D58760() & 1) == 0)
    {
      return 0;
    }

    if ((sub_1909A7254(v11, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 72))
    {
      return 0;
    }

    sub_19084A764();
    if ((sub_190D57D90() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_19091E32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DDA780;
  result = [objc_opt_self() descriptorForUsedKeys];
  if (result)
  {
    v2 = *MEMORY[0x1E695C410];
    *(v0 + 32) = result;
    *(v0 + 40) = v2;
    v3 = objc_opt_self();
    v4 = v2;
    *(v0 + 48) = [v3 descriptorForRequiredKeysForStyle_];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19091E3F0(void *a1)
{
  v2 = sub_190D50EF0();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 contactType])
  {
    result = [objc_opt_self() componentsForContact_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = result;
    v18 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

    v19 = sub_190D56F10();
    v21 = v20;

    v22 = v19;
    v27 = v19;
    v28 = v21;
    sub_190D50ED0();
    sub_19081E484();
    v23 = sub_190D580B0();
    v25 = v24;
    (*(v3 + 8))(v6, v2);

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      return v22;
    }
  }

  result = [objc_opt_self() stringFromContact:a1 style:0];
  if (result)
  {
    v8 = result;
    v9 = sub_190D56F10();
    v11 = v10;

    v12 = v9;
    v27 = v9;
    v28 = v11;
    sub_190D50ED0();
    sub_19081E484();
    v13 = sub_190D580B0();
    v15 = v14;
    (*(v3 + 8))(v6, v2);

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_19091E678(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    v8 = a1;
    v9 = a2;
    sub_190D52690();

    return sub_190D52690();
  }

  else
  {

    return a1;
  }
}

void sub_19091E6E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

uint64_t sub_19091E75C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19091E7A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}